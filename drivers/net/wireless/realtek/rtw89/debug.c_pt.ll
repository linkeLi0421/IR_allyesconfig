; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/realtek/rtw89/debug.c_pt.bc'
source_filename = "../drivers/net/wireless/realtek/rtw89/debug.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+rtw89_debug_mask\22, \22a\22\09"
module asm "\09.weak\09__crc_rtw89_debug_mask\09\09\09\09"
module asm "\09.long\09__crc_rtw89_debug_mask\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rtw89_debug_mask:\09\09\09\09\09"
module asm "\09.asciz \09\22rtw89_debug_mask\22\09\09\09\09\09"
module asm "__kstrtabns_rtw89_debug_mask:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__rtw89_debug\22, \22a\22\09"
module asm "\09.weak\09__crc___rtw89_debug\09\09\09\09"
module asm "\09.long\09__crc___rtw89_debug\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___rtw89_debug:\09\09\09\09\09"
module asm "\09.asciz \09\22__rtw89_debug\22\09\09\09\09\09"
module asm "__kstrtabns___rtw89_debug:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.97 }
%union.anon.97 = type { ptr }
%struct.rtw89_debugfs_priv = type { ptr, ptr, ptr, %union.anon.133 }
%union.anon.133 = type { %struct.anon.135 }
%struct.anon.135 = type { i32, i32, i8 }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.txpwr_map = type { ptr, i8, i32, i32 }
%struct.txpwr_ent = type { ptr, i8 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.rtw89_mac_dbg_port_info = type { i32, i8, i32, i32, i32, i32, i8, i32 }
%struct.rtw89_rx_rate_cnt_info = type { i32, i32, ptr }
%struct.ieee80211_hw = type { %struct.ieee80211_conf, ptr, ptr, ptr, [2 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i8, i16, %struct.anon.128, i64, i8, i8, i8, ptr, i8, i8, i8, i32 }
%struct.ieee80211_conf = type { i32, i32, i32, i16, i8, i8, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.anon.128 = type { i32, i16 }
%struct.wiphy = type { %struct.mutex, [6 x i8], [6 x i8], ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i32, i32, [8 x i8], i32, i32, i32, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i8, i8, i32, i32, i8, [32 x i8], i32, ptr, ptr, i16, i8, i32, i32, i32, ptr, ptr, i8, ptr, i32, ptr, [6 x ptr], ptr, ptr, %struct.device, i8, ptr, ptr, ptr, %struct.list_head, %struct.possible_net_t, ptr, ptr, ptr, ptr, i32, i32, i16, i8, i32, i8, i32, i32, i32, i32, i8, ptr, %struct.anon.124, i8, ptr, ptr, i8, i8, [18 x i8], [0 x i8] }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.possible_net_t = type { ptr }
%struct.anon.124 = type { i64, i64, i8 }
%struct.va_format = type { ptr, ptr }
%struct.__va_list = type { ptr }
%struct.rtw89_dev = type { ptr, ptr, i8, ptr, %struct.rtw89_hal, %struct.rtw89_mac_info, %struct.rtw89_fw_info, %struct.rtw89_hci_info, %struct.rtw89_efuse, %struct.rtw89_traffic_stats, %struct.mutex, %struct.list_head, %struct.mutex, ptr, %struct.work_struct, %struct.delayed_work, %struct.spinlock, %struct.list_head, %struct.work_struct, %struct.rtw89_cam_info, %struct.sk_buff_head, %struct.work_struct, %struct.list_head, %struct.rtw89_ser, [1 x i32], [4 x i32], [1 x i32], %struct.rtw89_phy_stat, %struct.rtw89_dack_info, %struct.rtw89_iqk_info, %struct.rtw89_dpk_info, [4 x i8], i8, %struct.rtw89_fem_info, [2 x %struct.rtw89_txpwr_byrate], %struct.rtw89_tssi_info, %struct.rtw89_power_trim_info, %struct.rtw89_cfo_tracking_info, %struct.rtw89_env_monitor_info, %struct.rtw89_dig_info, %struct.rtw89_phy_ch_info, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.rtw89_ppdu_sts_info, i8, i8, ptr, %struct.rtw89_sar_info, %struct.rtw89_btc, i32, i8, [67 x i8], %struct.net_device, %struct.napi_struct, i32, [0 x i8], [28 x i8] }
%struct.rtw89_hal = type { i32, i8, i8, i8, i8, i32, i8, i8, i32, i32, i32, i8, i8 }
%struct.rtw89_mac_info = type { %struct.rtw89_dle_info, %struct.rtw89_hfc_param, i32, i8, i8 }
%struct.rtw89_dle_info = type { i32, i16, i16, i16, i16 }
%struct.rtw89_hfc_param = type { i8, i8, i8, ptr, [13 x %struct.rtw89_hfc_ch_info], %struct.rtw89_hfc_pub_cfg, %struct.rtw89_hfc_pub_info, %struct.rtw89_hfc_prec_cfg }
%struct.rtw89_hfc_ch_info = type { i16, i16 }
%struct.rtw89_hfc_pub_cfg = type { i16, i16, i16, i16 }
%struct.rtw89_hfc_pub_info = type { i16, i16, i16, i16, i16, i16 }
%struct.rtw89_hfc_prec_cfg = type { i16, i16, i16, i16, i8, i8, i8, i8 }
%struct.rtw89_fw_info = type { ptr, ptr, %struct.completion, i8, i8, %struct.rtw89_fw_suit, %struct.rtw89_fw_suit, i8, i8 }
%struct.rtw89_fw_suit = type { ptr, i32, i8, i8, i8, i8, i16, i16, i16, i16, i16, i8 }
%struct.rtw89_hci_info = type { ptr, i32, i32, i32 }
%struct.rtw89_efuse = type { i8, i8, [6 x i8], i8, [2 x i8] }
%struct.rtw89_traffic_stats = type { i64, i64, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, %struct.ewma_tp, %struct.ewma_tp, i16, i16 }
%struct.ewma_tp = type { i32 }
%struct.rtw89_cam_info = type { [4 x i32], [1 x i32], [4 x i32] }
%struct.sk_buff_head = type { %union.anon.64, i32, %struct.spinlock }
%union.anon.64 = type { %struct.anon.65 }
%struct.anon.65 = type { ptr, ptr }
%struct.rtw89_ser = type { i8, i8, %struct.work_struct, %struct.delayed_work, ptr, ptr, %struct.list_head, %struct.spinlock, [1 x i32] }
%struct.rtw89_phy_stat = type { [4 x %struct.ewma_thermal], %struct.rtw89_pkt_stat, %struct.rtw89_pkt_stat }
%struct.ewma_thermal = type { i32 }
%struct.rtw89_pkt_stat = type { i16, [444 x i32] }
%struct.rtw89_dack_info = type { i8, [2 x [2 x [16 x i8]]], [2 x [2 x i8]], [2 x [2 x i16]], [2 x [2 x i16]], i32, [2 x i8], [2 x i8], [2 x i8] }
%struct.rtw89_iqk_info = type { [2 x [4 x i8]], [2 x [4 x i8]], [2 x [4 x i8]], [2 x [4 x i8]], i32, i8, [2 x i32], [4 x i8], [4 x i8], [4 x i8], i8, i8, i8, [4 x i32], [4 x i32], [4 x i32], [4 x i32], [4 x i32], [4 x i8], [4 x i8], i8, i8, i8, i8, i8, [4 x i8], i8, i32, [2 x [4 x i8]], [4 x i8] }
%struct.rtw89_dpk_info = type { i8, i8, [2 x i16], [2 x i16], [2 x i8], [2 x i8], [2 x i8], [2 x [2 x %struct.rtw89_dpk_bkup_para]] }
%struct.rtw89_dpk_bkup_para = type { i32, i32, i8, i8, i8, i8, i8, i16 }
%struct.rtw89_fem_info = type { i8, i8, i8, i8 }
%struct.rtw89_txpwr_byrate = type { [4 x i8], [8 x i8], [4 x [12 x i8]], [2 x [4 x i8]], [5 x i8] }
%struct.rtw89_tssi_info = type { [4 x i8], [4 x [8 x i8]], [4 x [6 x i8]], [4 x [19 x i8]], [4 x i8], [4 x i8], [4 x i8], [4 x i32] }
%struct.rtw89_power_trim_info = type { i8, i8, [4 x i8], [4 x i8] }
%struct.rtw89_cfo_tracking_info = type { i16, i8, i32, i8, i8, i32, i8, i8, i8, i8, i8, i32, [64 x i32], [64 x i16], i32, [64 x i32], [64 x i32], i32, i32, i32, i8, i8 }
%struct.rtw89_env_monitor_info = type { i32, i64, i8, i8, i8, i8, i8, i8, i16, i16, i16, i32, i16, i16, i16, i8, i32, [11 x i8], [4 x i16], [4 x i16], i8, i8, [11 x i8], i16, [12 x i16], [12 x i8], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, [4 x i8], [4 x i16], [4 x i16], [12 x i16], i16, i16, i8, [12 x i8], i8, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i16, i16, [4 x i32], [4 x i32], [12 x i8], i16, i8, i8, i8, i8 }
%struct.rtw89_dig_info = type { %struct.rtw89_agc_gaincode_set, i8, %struct.rtw89_agc_gaincode_set, [5 x i8], [4 x i16], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [7 x i8], [7 x i8], ptr, [2 x i8], [2 x i8], ptr, i8, i8 }
%struct.rtw89_agc_gaincode_set = type { i8, i8, i8 }
%struct.rtw89_phy_ch_info = type { i8, i16, i8, i8, i16, i8, i8, i8, i8, i8, i8 }
%struct.rtw89_ppdu_sts_info = type { [2 x %struct.sk_buff_head], [2 x i8] }
%struct.rtw89_sar_info = type { i32, %union.anon.132 }
%union.anon.132 = type { %struct.rtw89_sar_cfg_common }
%struct.rtw89_sar_cfg_common = type { [5 x i8], [5 x i32] }
%struct.rtw89_btc = type { %struct.rtw89_btc_cx, %struct.rtw89_btc_dm, %struct.rtw89_btc_ctrl, %struct.rtw89_btc_module, %struct.rtw89_btc_btf_fwinfo, %struct.rtw89_btc_dbg, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, i32, [512 x i8], i16, i16, i8, i8, i8 }
%struct.rtw89_btc_cx = type { %struct.rtw89_btc_wl_info, %struct.rtw89_btc_bt_info, %struct.rtw89_btc_3rdcx_info, i32, [20 x i32], [10 x i32] }
%struct.rtw89_btc_wl_info = type { [5 x %struct.rtw89_btc_wl_link_info], %struct.rtw89_btc_wl_rfk_info, %struct.rtw89_btc_wl_ver_info, %struct.rtw89_btc_wl_afh_info, %struct.rtw89_btc_wl_role_info, %struct.rtw89_btc_wl_scan_info, %struct.rtw89_btc_wl_dbcc_info, %struct.rtw89_btc_rf_para, %union.rtw89_btc_wl_state_map, [12 x i8], i8, i32 }
%struct.rtw89_btc_wl_link_info = type { %struct.rtw89_btc_statistic, i32, [4 x i8], [6 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i8 }
%struct.rtw89_btc_statistic = type { i8, %struct.rtw89_traffic_stats }
%struct.rtw89_btc_wl_rfk_info = type { i32 }
%struct.rtw89_btc_wl_ver_info = type { i32, i32, i32, i32, i32 }
%struct.rtw89_btc_wl_afh_info = type { i8, i8, i8, i8 }
%struct.rtw89_btc_wl_role_info = type { i8, i8, %union.rtw89_btc_wl_role_info_map, [5 x %struct.rtw89_btc_wl_active_role] }
%union.rtw89_btc_wl_role_info_map = type { i16 }
%struct.rtw89_btc_wl_active_role = type { i16, i8, i8, i16, i16, i16, i16 }
%struct.rtw89_btc_wl_scan_info = type { [2 x i8], i8, i8 }
%struct.rtw89_btc_wl_dbcc_info = type { [2 x i8], [2 x i8], [2 x i8], [2 x i8] }
%struct.rtw89_btc_rf_para = type { i32, i32, i32, i32 }
%union.rtw89_btc_wl_state_map = type { i32 }
%struct.rtw89_btc_bt_info = type { %struct.rtw89_btc_bt_link_info, [6 x %struct.rtw89_btc_bt_scan_info], %struct.rtw89_btc_bt_ver_info, %struct.rtw89_btc_bool_sta_chg, %struct.rtw89_btc_bool_sta_chg, %struct.rtw89_btc_rf_para, %union.rtw89_btc_bt_rfk_info_map, [8 x i8], i32, i32, i32 }
%struct.rtw89_btc_bt_link_info = type { %struct.rtw89_btc_u8_sta_chg, %struct.rtw89_btc_bool_sta_chg, %struct.rtw89_btc_bool_sta_chg, %struct.rtw89_btc_bt_hfp_desc, %struct.rtw89_btc_bt_hid_desc, %struct.rtw89_btc_bt_a2dp_desc, %struct.rtw89_btc_bt_pan_desc, %union.rtw89_btc_bt_state_map, [4 x i8], [4 x i8], [4 x i8], [12 x i8], i32 }
%struct.rtw89_btc_u8_sta_chg = type { i8, i8, i8, i8 }
%struct.rtw89_btc_bt_hfp_desc = type { i32 }
%struct.rtw89_btc_bt_hid_desc = type { i32 }
%struct.rtw89_btc_bt_a2dp_desc = type { i8, i8, i16, i32, i32 }
%struct.rtw89_btc_bt_pan_desc = type { i32 }
%union.rtw89_btc_bt_state_map = type { i32 }
%struct.rtw89_btc_bt_scan_info = type { i16, i16, i32 }
%struct.rtw89_btc_bt_ver_info = type { i32, i32 }
%struct.rtw89_btc_bool_sta_chg = type { i32 }
%union.rtw89_btc_bt_rfk_info_map = type { i32 }
%struct.rtw89_btc_3rdcx_info = type { i8, i8, i16 }
%struct.rtw89_btc_dm = type { [18 x %struct.rtw89_btc_fbtc_slot], [18 x %struct.rtw89_btc_fbtc_slot], %struct.rtw89_btc_fbtc_tdma, %struct.rtw89_btc_fbtc_tdma, %struct.rtw89_mac_ax_coex_gnt, %struct.rtw89_btc_init_info, %struct.rtw89_btc_rf_trx_para, %struct.rtw89_btc_wl_tx_limit_para, %struct.rtw89_btc_dm_step, %union.rtw89_btc_dm_error_map, [15 x i32], [17 x i32], i32, i32, i32, [18 x i16], i8, i8 }
%struct.rtw89_btc_fbtc_slot = type <{ i16, i32, i16 }>
%struct.rtw89_btc_fbtc_tdma = type { i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.rtw89_mac_ax_coex_gnt = type { [2 x %struct.rtw89_mac_ax_gnt] }
%struct.rtw89_mac_ax_gnt = type { i8, i8, i8, i8 }
%struct.rtw89_btc_init_info = type { %struct.rtw89_btc_module, i8, i8, i16 }
%struct.rtw89_btc_rf_trx_para = type { i32, i32, i8, i8 }
%struct.rtw89_btc_wl_tx_limit_para = type { i16, i32, i16 }
%struct.rtw89_btc_dm_step = type { [30 x i16], i8, i8 }
%union.rtw89_btc_dm_error_map = type { i32 }
%struct.rtw89_btc_ctrl = type { i32 }
%struct.rtw89_btc_module = type { %struct.rtw89_btc_ant_info, i8, i8, i8, i8 }
%struct.rtw89_btc_ant_info = type { i8, i8, i8, i8 }
%struct.rtw89_btc_btf_fwinfo = type { i32, i32, i32, [8 x i32], [3 x i32], i32, i32, i32, %struct.rtw89_btc_report_ctrl_state, %struct.rtw89_btc_rpt_fbtc_tdma, %struct.rtw89_btc_rpt_fbtc_slots, %struct.rtw89_btc_rpt_fbtc_cysta, %struct.rtw89_btc_rpt_fbtc_step, %struct.rtw89_btc_rpt_fbtc_nullsta, %struct.rtw89_btc_rpt_fbtc_mreg, %struct.rtw89_btc_rpt_fbtc_gpio_dbg, %struct.rtw89_btc_rpt_fbtc_btver, %struct.rtw89_btc_rpt_fbtc_btscan, %struct.rtw89_btc_rpt_fbtc_btafh, %struct.rtw89_btc_rpt_fbtc_btdev }
%struct.rtw89_btc_report_ctrl_state = type <{ %struct.rtw89_btc_rpt_cmn_info, %struct.rtw89_btc_fbtc_rpt_ctrl }>
%struct.rtw89_btc_rpt_cmn_info = type <{ i32, i32, i32, i8, i8, i8 }>
%struct.rtw89_btc_fbtc_rpt_ctrl = type { i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [5 x i32], i32, i32 }
%struct.rtw89_btc_rpt_fbtc_tdma = type { %struct.rtw89_btc_rpt_cmn_info, %struct.rtw89_btc_fbtc_tdma }
%struct.rtw89_btc_rpt_fbtc_slots = type <{ %struct.rtw89_btc_rpt_cmn_info, %struct.rtw89_btc_fbtc_slots }>
%struct.rtw89_btc_fbtc_slots = type { i8, i8, i16, i32, [18 x %struct.rtw89_btc_fbtc_slot] }
%struct.rtw89_btc_rpt_fbtc_cysta = type <{ %struct.rtw89_btc_rpt_cmn_info, %struct.rtw89_btc_fbtc_cysta }>
%struct.rtw89_btc_fbtc_cysta = type { i8, i8, i16, [2 x i16], i16, i16, [2 x i16], [2 x i16], [2 x i16], [2 x i16], [2 x i16], i16, i16, i16, i16, [18 x i32], [4 x i32], i32, i32, i32, i32, i32, [48 x i16] }
%struct.rtw89_btc_rpt_fbtc_step = type <{ %struct.rtw89_btc_rpt_cmn_info, %struct.rtw89_btc_fbtc_steps }>
%struct.rtw89_btc_fbtc_steps = type { i8, i8, i16, i16, i16, [255 x %struct.rtw89_btc_fbtc_step] }
%struct.rtw89_btc_fbtc_step = type { i8, i8, i16 }
%struct.rtw89_btc_rpt_fbtc_nullsta = type <{ %struct.rtw89_btc_rpt_cmn_info, %struct.rtw89_btc_fbtc_cynullsta }>
%struct.rtw89_btc_fbtc_cynullsta = type { i8, i8, i16, [2 x i32], [2 x i32], [2 x [4 x i32]] }
%struct.rtw89_btc_rpt_fbtc_mreg = type <{ %struct.rtw89_btc_rpt_cmn_info, %struct.rtw89_btc_fbtc_mreg_val }>
%struct.rtw89_btc_fbtc_mreg_val = type { i8, i8, i16, [30 x i32] }
%struct.rtw89_btc_rpt_fbtc_gpio_dbg = type <{ %struct.rtw89_btc_rpt_cmn_info, %struct.rtw89_btc_fbtc_gpio_dbg }>
%struct.rtw89_btc_fbtc_gpio_dbg = type { i8, i8, i16, i32, i32, [32 x i8] }
%struct.rtw89_btc_rpt_fbtc_btver = type <{ %struct.rtw89_btc_rpt_cmn_info, %struct.rtw89_btc_fbtc_btver }>
%struct.rtw89_btc_fbtc_btver = type { i8, i8, i16, i32, i32, i32 }
%struct.rtw89_btc_rpt_fbtc_btscan = type <{ %struct.rtw89_btc_rpt_cmn_info, %struct.rtw89_btc_fbtc_btscan }>
%struct.rtw89_btc_fbtc_btscan = type { i8, i8, i16, [6 x i8] }
%struct.rtw89_btc_rpt_fbtc_btafh = type <{ %struct.rtw89_btc_rpt_cmn_info, %struct.rtw89_btc_fbtc_btafh }>
%struct.rtw89_btc_fbtc_btafh = type { i8, i8, i16, [4 x i8], [4 x i8], [4 x i8] }
%struct.rtw89_btc_rpt_fbtc_btdev = type <{ %struct.rtw89_btc_rpt_cmn_info, %struct.rtw89_btc_fbtc_btdevinfo }>
%struct.rtw89_btc_fbtc_btdevinfo = type { i8, i8, i16, i32, i32 }
%struct.rtw89_btc_dbg = type { i8, i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.103, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.127, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.103 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%union.anon.127 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.rtw89_hci_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.99, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.100, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.101, ptr, %struct.address_space, %struct.list_head, %union.anon.102, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.99 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.100 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.101 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%union.anon.102 = type { ptr }
%struct.rtw89_chip_info = type { i32, ptr, ptr, i32, i16, i8, ptr, ptr, [2 x i32], i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, ptr, ptr, ptr, [4 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i32, i32, i8, i8, i8, i8, ptr, ptr, i8, i8, ptr, i8, ptr, i8, ptr, i8 }
%struct.rtw89_chip_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rtw89_regulatory = type { [3 x i8], [2 x i8] }
%struct.rtw89_early_h2c = type { %struct.list_head, ptr, i16 }
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
%struct.rate_info = type { i8, i8, i16, i8, i8, i8, i8, i8, i8 }
%struct.rtw89_ra_report = type { %struct.rate_info, i32, i16 }
%struct.rtw89_sta = type { i8, i8, ptr, %struct.rtw89_ra_info, %struct.rtw89_ra_report, i32, i8, %struct.ewma_rssi, [16 x %struct.rtw89_ampdu_params], %struct.ieee80211_rx_status, i16, i32, i8, %struct.cfg80211_bitrate_mask, i8, i8, i8, i8 }
%struct.rtw89_ra_info = type { i8, i8, i16, i64, i8, i8, i8, i8 }
%struct.ewma_rssi = type { i32 }
%struct.rtw89_ampdu_params = type { i16, i8 }
%struct.ieee80211_rx_status = type <{ i64, i64, i32, i32, i32, i16, i8, i16, i8, i8, i8, i8, i8, i8, i8, [4 x i8], i8, i8, [2 x i8] }>
%struct.cfg80211_bitrate_mask = type { [6 x %struct.anon.130] }
%struct.anon.130 = type { i32, [10 x i8], [8 x i16], [8 x i16], i32, i32, i32 }

@rtw89_debug_mask = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@__kstrtab_rtw89_debug_mask = external dso_local constant [0 x i8], align 1
@__kstrtabns_rtw89_debug_mask = external dso_local constant [0 x i8], align 1
@__ksymtab_rtw89_debug_mask = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rtw89_debug_mask to i32), ptr @__kstrtab_rtw89_debug_mask, ptr @__kstrtabns_rtw89_debug_mask }, section "___ksymtab+rtw89_debug_mask", align 4
@__param_str_debug_mask = internal constant [22 x i8] c"rtw89_core.debug_mask\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@__param_debug_mask = internal constant %struct.kernel_param { ptr @__param_str_debug_mask, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.97 { ptr @rtw89_debug_mask } }, section "__param", align 4
@__UNIQUE_ID_debug_masktype406 = internal constant [36 x i8] c"rtw89_core.parmtype=debug_mask:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_debug_mask407 = internal constant [42 x i8] c"rtw89_core.parm=debug_mask:Debugging mask\00", section ".modinfo", align 1
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"rtw89\00", [26 x i8] zeroinitializer }, align 32
@rtw89_debug_priv_read_reg = internal global { %struct.rtw89_debugfs_priv, [40 x i8] } { %struct.rtw89_debugfs_priv { ptr null, ptr @rtw89_debug_priv_read_reg_get, ptr @rtw89_debug_priv_read_reg_select, %union.anon.133 zeroinitializer }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"read_reg\00", [23 x i8] zeroinitializer }, align 32
@file_ops_common_rw = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr @rtw89_debugfs_seq_file_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @rtw89_debugfs_single_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@rtw89_debugfs_init.__UNIQUE_ID_ddebug819 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, i8 2, i8 102, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.2 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rtw89_core\00", [21 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rtw89_debugfs_init\00", [45 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drivers/net/wireless/realtek/rtw89/debug.c\00", [53 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Unable to initialize debugfs:%s\0A\00", [63 x i8] zeroinitializer }, align 32
@rtw89_debug_priv_write_reg = internal global { %struct.rtw89_debugfs_priv, [40 x i8] } { %struct.rtw89_debugfs_priv { ptr null, ptr null, ptr @rtw89_debug_priv_write_reg_set, %union.anon.133 zeroinitializer }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"write_reg\00", [22 x i8] zeroinitializer }, align 32
@file_ops_single_w = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr null, ptr null, ptr @rtw89_debugfs_single_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr @rtw89_debugfs_close, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@rtw89_debugfs_init.__UNIQUE_ID_ddebug820 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, i8 2, i8 102, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@rtw89_debug_priv_read_rf = internal global { %struct.rtw89_debugfs_priv, [40 x i8] } { %struct.rtw89_debugfs_priv { ptr null, ptr @rtw89_debug_priv_read_rf_get, ptr @rtw89_debug_priv_read_rf_select, %union.anon.133 zeroinitializer }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"read_rf\00", [24 x i8] zeroinitializer }, align 32
@rtw89_debugfs_init.__UNIQUE_ID_ddebug821 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, i8 2, i8 103, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@rtw89_debug_priv_write_rf = internal global { %struct.rtw89_debugfs_priv, [40 x i8] } { %struct.rtw89_debugfs_priv { ptr null, ptr null, ptr @rtw89_debug_priv_write_rf_set, %union.anon.133 zeroinitializer }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"write_rf\00", [23 x i8] zeroinitializer }, align 32
@rtw89_debugfs_init.__UNIQUE_ID_ddebug822 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, i8 2, i8 103, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@rtw89_debug_priv_rf_reg_dump = internal global { %struct.rtw89_debugfs_priv, [40 x i8] } { %struct.rtw89_debugfs_priv { ptr null, ptr @rtw89_debug_priv_rf_reg_dump_get, ptr null, %union.anon.133 zeroinitializer }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"rf_reg_dump\00", [20 x i8] zeroinitializer }, align 32
@file_ops_single_r = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @rtw89_debugfs_single_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@rtw89_debugfs_init.__UNIQUE_ID_ddebug823 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, i8 2, i8 103, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@rtw89_debug_priv_txpwr_table = internal global { %struct.rtw89_debugfs_priv, [40 x i8] } { %struct.rtw89_debugfs_priv { ptr null, ptr @rtw89_debug_priv_txpwr_table_get, ptr null, %union.anon.133 zeroinitializer }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"txpwr_table\00", [20 x i8] zeroinitializer }, align 32
@rtw89_debugfs_init.__UNIQUE_ID_ddebug824 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, i8 2, i8 103, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@rtw89_debug_priv_mac_reg_dump = internal global { %struct.rtw89_debugfs_priv, [40 x i8] } { %struct.rtw89_debugfs_priv { ptr null, ptr @rtw89_debug_priv_mac_reg_dump_get, ptr @rtw89_debug_priv_mac_reg_dump_select, %union.anon.133 zeroinitializer }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mac_reg_dump\00", [19 x i8] zeroinitializer }, align 32
@rtw89_debugfs_init.__UNIQUE_ID_ddebug825 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, i8 2, i8 104, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@rtw89_debug_priv_mac_mem_dump = internal global { %struct.rtw89_debugfs_priv, [40 x i8] } { %struct.rtw89_debugfs_priv { ptr null, ptr @rtw89_debug_priv_mac_mem_dump_get, ptr @rtw89_debug_priv_mac_mem_dump_select, %union.anon.133 zeroinitializer }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mac_mem_dump\00", [19 x i8] zeroinitializer }, align 32
@rtw89_debugfs_init.__UNIQUE_ID_ddebug826 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, i8 2, i8 104, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@rtw89_debug_priv_mac_dbg_port_dump = internal global { %struct.rtw89_debugfs_priv, [40 x i8] } { %struct.rtw89_debugfs_priv { ptr null, ptr @rtw89_debug_priv_mac_dbg_port_dump_get, ptr @rtw89_debug_priv_mac_dbg_port_dump_select, %union.anon.133 zeroinitializer }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mac_dbg_port_dump\00", [46 x i8] zeroinitializer }, align 32
@rtw89_debugfs_init.__UNIQUE_ID_ddebug827 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, i8 2, i8 104, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@rtw89_debug_priv_send_h2c = internal global { %struct.rtw89_debugfs_priv, [40 x i8] } { %struct.rtw89_debugfs_priv { ptr null, ptr null, ptr @rtw89_debug_priv_send_h2c_set, %union.anon.133 zeroinitializer }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"send_h2c\00", [23 x i8] zeroinitializer }, align 32
@rtw89_debugfs_init.__UNIQUE_ID_ddebug828 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, i8 2, i8 104, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@rtw89_debug_priv_early_h2c = internal global { %struct.rtw89_debugfs_priv, [40 x i8] } { %struct.rtw89_debugfs_priv { ptr null, ptr @rtw89_debug_priv_early_h2c_get, ptr @rtw89_debug_priv_early_h2c_set, %union.anon.133 zeroinitializer }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"early_h2c\00", [22 x i8] zeroinitializer }, align 32
@rtw89_debugfs_init.__UNIQUE_ID_ddebug829 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, i8 2, i8 105, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@rtw89_debug_priv_btc_info = internal global { %struct.rtw89_debugfs_priv, [40 x i8] } { %struct.rtw89_debugfs_priv { ptr null, ptr @rtw89_debug_priv_btc_info_get, ptr null, %union.anon.133 zeroinitializer }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"btc_info\00", [23 x i8] zeroinitializer }, align 32
@rtw89_debugfs_init.__UNIQUE_ID_ddebug830 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, i8 2, i8 105, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@rtw89_debug_priv_btc_manual = internal global { %struct.rtw89_debugfs_priv, [40 x i8] } { %struct.rtw89_debugfs_priv { ptr null, ptr null, ptr @rtw89_debug_priv_btc_manual_set, %union.anon.133 zeroinitializer }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"btc_manual\00", [21 x i8] zeroinitializer }, align 32
@rtw89_debugfs_init.__UNIQUE_ID_ddebug831 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, i8 2, i8 105, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@rtw89_debug_priv_fw_log_manual = internal global { %struct.rtw89_debugfs_priv, [40 x i8] } { %struct.rtw89_debugfs_priv { ptr null, ptr null, ptr @rtw89_debug_fw_log_btc_manual_set, %union.anon.133 zeroinitializer }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"fw_log_manual\00", [18 x i8] zeroinitializer }, align 32
@rtw89_debugfs_init.__UNIQUE_ID_ddebug832 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, i8 2, i8 105, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@rtw89_debug_priv_phy_info = internal global { %struct.rtw89_debugfs_priv, [40 x i8] } { %struct.rtw89_debugfs_priv { ptr null, ptr @rtw89_debug_priv_phy_info_get, ptr null, %union.anon.133 zeroinitializer }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"phy_info\00", [23 x i8] zeroinitializer }, align 32
@rtw89_debugfs_init.__UNIQUE_ID_ddebug833 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, i8 2, i8 106, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@__rtw89_debug._entry = internal constant %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.4, i32 2491, ptr @.str.22, ptr @.str.23 }, align 1
@.str.20 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%pV\00", [28 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"__rtw89_debug\00", [18 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@__rtw89_debug._entry_ptr = internal global ptr @__rtw89_debug._entry, section ".printk_index", align 4
@__kstrtab___rtw89_debug = external dso_local constant [0 x i8], align 1
@__kstrtabns___rtw89_debug = external dso_local constant [0 x i8], align 1
@__ksymtab___rtw89_debug = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__rtw89_debug to i32), ptr @__kstrtab___rtw89_debug, ptr @__kstrtabns___rtw89_debug }, section "___ksymtab+__rtw89_debug", align 4
@rtw89_debug_priv_read_reg_get._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.4, i32 167, ptr @.str.26, ptr @.str.23 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"invalid read reg len %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"rtw89_debug_priv_read_reg_get\00", [34 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@rtw89_debug_priv_read_reg_get._entry_ptr = internal global ptr @rtw89_debug_priv_read_reg_get._entry, section ".printk_index", align 4
@.str.27 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"get %d bytes at 0x%08x=0x%08x\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%x %x\00", [26 x i8] zeroinitializer }, align 32
@rtw89_debug_priv_read_reg_select._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.4, i32 134, ptr @.str.26, ptr @.str.23 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"invalid format: <addr> <len>\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"rtw89_debug_priv_read_reg_select\00", [63 x i8] zeroinitializer }, align 32
@rtw89_debug_priv_read_reg_select._entry_ptr = internal global ptr @rtw89_debug_priv_read_reg_select._entry, section ".printk_index", align 4
@rtw89_debug_priv_read_reg_select._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.30, ptr @.str.4, i32 141, ptr @.str.26, ptr @.str.23 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"select read %d bytes from 0x%08x\0A\00", [62 x i8] zeroinitializer }, align 32
@rtw89_debug_priv_read_reg_select._entry_ptr.33 = internal global ptr @rtw89_debug_priv_read_reg_select._entry.31, section ".printk_index", align 4
@.str.36 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%x %x %x\00", [23 x i8] zeroinitializer }, align 32
@rtw89_debug_priv_write_reg_set._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.4, i32 194, ptr @.str.26, ptr @.str.23 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"invalid format: <addr> <val> <len>\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"rtw89_debug_priv_write_reg_set\00", [33 x i8] zeroinitializer }, align 32
@rtw89_debug_priv_write_reg_set._entry_ptr = internal global ptr @rtw89_debug_priv_write_reg_set._entry, section ".printk_index", align 4
@rtw89_debug_priv_write_reg_set._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.39, ptr @.str.4, i32 200, ptr @.str.26, ptr @.str.23 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"reg write8 0x%08x: 0x%02x\0A\00", [37 x i8] zeroinitializer }, align 32
@rtw89_debug_priv_write_reg_set._entry_ptr.42 = internal global ptr @rtw89_debug_priv_write_reg_set._entry.40, section ".printk_index", align 4
@rtw89_debug_priv_write_reg_set._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.39, ptr @.str.4, i32 204, ptr @.str.26, ptr @.str.23 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"reg write16 0x%08x: 0x%04x\0A\00", [36 x i8] zeroinitializer }, align 32
@rtw89_debug_priv_write_reg_set._entry_ptr.45 = internal global ptr @rtw89_debug_priv_write_reg_set._entry.43, section ".printk_index", align 4
@rtw89_debug_priv_write_reg_set._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.39, ptr @.str.4, i32 208, ptr @.str.26, ptr @.str.23 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"reg write32 0x%08x: 0x%08x\0A\00", [36 x i8] zeroinitializer }, align 32
@rtw89_debug_priv_write_reg_set._entry_ptr.48 = internal global ptr @rtw89_debug_priv_write_reg_set._entry.46, section ".printk_index", align 4
@rtw89_debug_priv_write_reg_set._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.39, ptr @.str.4, i32 212, ptr @.str.26, ptr @.str.23 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"invalid read write len %d\0A\00", [37 x i8] zeroinitializer }, align 32
@rtw89_debug_priv_write_reg_set._entry_ptr.51 = internal global ptr @rtw89_debug_priv_write_reg_set._entry.49, section ".printk_index", align 4
@.str.52 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"path %d, rf register 0x%08x=0x%08x\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%hhd %x %x\00", [21 x i8] zeroinitializer }, align 32
@rtw89_debug_priv_read_rf_select._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.55, ptr @.str.4, i32 240, ptr @.str.26, ptr @.str.23 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"invalid format: <path> <addr> <mask>\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"rtw89_debug_priv_read_rf_select\00", [32 x i8] zeroinitializer }, align 32
@rtw89_debug_priv_read_rf_select._entry_ptr = internal global ptr @rtw89_debug_priv_read_rf_select._entry, section ".printk_index", align 4
@rtw89_debug_priv_read_rf_select._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.55, ptr @.str.4, i32 245, ptr @.str.26, ptr @.str.23 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"wrong rf path\0A\00", [17 x i8] zeroinitializer }, align 32
@rtw89_debug_priv_read_rf_select._entry_ptr.58 = internal global ptr @rtw89_debug_priv_read_rf_select._entry.56, section ".printk_index", align 4
@rtw89_debug_priv_read_rf_select._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.55, ptr @.str.4, i32 252, ptr @.str.26, ptr @.str.23 }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"select read rf path %d from 0x%08x\0A\00", [60 x i8] zeroinitializer }, align 32
@rtw89_debug_priv_read_rf_select._entry_ptr.61 = internal global ptr @rtw89_debug_priv_read_rf_select._entry.59, section ".printk_index", align 4
@.str.62 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%hhd %x %x %x\00", [18 x i8] zeroinitializer }, align 32
@rtw89_debug_priv_write_rf_set._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.64, ptr @.str.4, i32 294, ptr @.str.26, ptr @.str.23 }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"invalid format: <path> <addr> <mask> <val>\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"rtw89_debug_priv_write_rf_set\00", [34 x i8] zeroinitializer }, align 32
@rtw89_debug_priv_write_rf_set._entry_ptr = internal global ptr @rtw89_debug_priv_write_rf_set._entry, section ".printk_index", align 4
@rtw89_debug_priv_write_rf_set._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.64, ptr @.str.4, i32 299, ptr @.str.26, ptr @.str.23 }, [40 x i8] zeroinitializer }, align 32
@rtw89_debug_priv_write_rf_set._entry_ptr.66 = internal global ptr @rtw89_debug_priv_write_rf_set._entry.65, section ".printk_index", align 4
@rtw89_debug_priv_write_rf_set._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.64, ptr @.str.4, i32 304, ptr @.str.26, ptr @.str.23 }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"path %d, rf register write 0x%08x=0x%08x (mask = 0x%08x)\0A\00", [38 x i8] zeroinitializer }, align 32
@rtw89_debug_priv_write_rf_set._entry_ptr.69 = internal global ptr @rtw89_debug_priv_write_rf_set._entry.67, section ".printk_index", align 4
@.str.70 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"RF path %d:\0A\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"0x%08x: \00", [23 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"0x%05x  \00", [23 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"[Regulatory] \00", [18 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"[SAR]\0A\00", [25 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\0A[TX power byrate]\0A\00", [44 x i8] zeroinitializer }, align 32
@__txpwr_map_byr = internal constant %struct.txpwr_map { ptr @__txpwr_ent_byr, i8 11, i32 53952, i32 53992 }, align 4
@.str.77 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\0A[TX power limit]\0A\00", [45 x i8] zeroinitializer }, align 32
@__txpwr_map_lmt = internal constant %struct.txpwr_map { ptr @__txpwr_ent_lmt, i8 40, i32 53996, i32 54072 }, align 4
@.str.78 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\0A[TX power limit_ru]\0A\00", [42 x i8] zeroinitializer }, align 32
@__txpwr_map_lmt_ru = internal constant %struct.txpwr_map { ptr @__txpwr_ent_lmt_ru, i8 6, i32 54076, i32 54120 }, align 4
@.str.79 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"UNKNOWN: %d\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"WW\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ETSI\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"FCC\0A\00", [27 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"MKK\0A\00", [27 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"NA\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"IC\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"KCC\0A\00", [27 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"NCC\0A\00", [27 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"CHILE\0A\00", [25 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ACMA\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"MEXICO\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"UKRAINE\0A\00", [23 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"CN\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s\09| %3d, %3d,\09dBm\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s\09| %3d, %3d, %3d, %3d,\09dBm\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"%s\09| %3d, %3d, %3d, %3d, %3d, %3d, %3d, %3d,\09dBm\0A\00", [46 x i8] zeroinitializer }, align 32
@__txpwr_ent_byr = internal constant [11 x %struct.txpwr_ent] [%struct.txpwr_ent { ptr @.str.96, i8 4 }, %struct.txpwr_ent { ptr @.str.97, i8 4 }, %struct.txpwr_ent { ptr @.str.98, i8 4 }, %struct.txpwr_ent { ptr @.str.99, i8 4 }, %struct.txpwr_ent { ptr @.str.100, i8 4 }, %struct.txpwr_ent { ptr @.str.101, i8 4 }, %struct.txpwr_ent { ptr @.str.102, i8 4 }, %struct.txpwr_ent { ptr @.str.103, i8 4 }, %struct.txpwr_ent { ptr @.str.104, i8 4 }, %struct.txpwr_ent { ptr @.str.105, i8 4 }, %struct.txpwr_ent { ptr @.str.106, i8 4 }], align 4
@.str.96 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"CCK       \09-  1M     2M     5.5M   11M  \00", [55 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"LEGACY    \09-  6M     9M     12M    18M  \00", [55 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"LEGACY    \09-  24M    36M    48M    54M  \00", [55 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"MCS_1NSS  \09-  MCS0   MCS1   MCS2   MCS3 \00", [55 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"MCS_1NSS  \09-  MCS4   MCS5   MCS6   MCS7 \00", [55 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"MCS_1NSS  \09-  MCS8   MCS9   MCS10  MCS11\00", [55 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"HEDCM_1NSS\09-  MCS0   MCS1   MCS3   MCS4 \00", [55 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"MCS_2NSS  \09-  MCS0   MCS1   MCS2   MCS3 \00", [55 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"MCS_2NSS  \09-  MCS4   MCS5   MCS6   MCS7 \00", [55 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"MCS_2NSS  \09-  MCS8   MCS9   MCS10  MCS11\00", [55 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"HEDCM_2NSS\09-  MCS0   MCS1   MCS3   MCS4 \00", [55 x i8] zeroinitializer }, align 32
@__txpwr_ent_lmt = internal constant [40 x %struct.txpwr_ent] [%struct.txpwr_ent { ptr @.str.107, i8 2 }, %struct.txpwr_ent { ptr @.str.108, i8 2 }, %struct.txpwr_ent { ptr @.str.109, i8 2 }, %struct.txpwr_ent { ptr @.str.110, i8 2 }, %struct.txpwr_ent { ptr @.str.111, i8 2 }, %struct.txpwr_ent { ptr @.str.112, i8 2 }, %struct.txpwr_ent { ptr @.str.113, i8 2 }, %struct.txpwr_ent { ptr @.str.114, i8 2 }, %struct.txpwr_ent { ptr @.str.115, i8 2 }, %struct.txpwr_ent { ptr @.str.116, i8 2 }, %struct.txpwr_ent { ptr @.str.117, i8 2 }, %struct.txpwr_ent { ptr @.str.118, i8 2 }, %struct.txpwr_ent { ptr @.str.119, i8 2 }, %struct.txpwr_ent { ptr @.str.120, i8 2 }, %struct.txpwr_ent { ptr @.str.121, i8 2 }, %struct.txpwr_ent { ptr @.str.122, i8 2 }, %struct.txpwr_ent { ptr @.str.123, i8 2 }, %struct.txpwr_ent { ptr @.str.124, i8 2 }, %struct.txpwr_ent { ptr @.str.125, i8 2 }, %struct.txpwr_ent { ptr @.str.126, i8 2 }, %struct.txpwr_ent { ptr @.str.127, i8 2 }, %struct.txpwr_ent { ptr @.str.128, i8 2 }, %struct.txpwr_ent { ptr @.str.129, i8 2 }, %struct.txpwr_ent { ptr @.str.130, i8 2 }, %struct.txpwr_ent { ptr @.str.131, i8 2 }, %struct.txpwr_ent { ptr @.str.132, i8 2 }, %struct.txpwr_ent { ptr @.str.133, i8 2 }, %struct.txpwr_ent { ptr @.str.134, i8 2 }, %struct.txpwr_ent { ptr @.str.135, i8 2 }, %struct.txpwr_ent { ptr @.str.136, i8 2 }, %struct.txpwr_ent { ptr @.str.137, i8 2 }, %struct.txpwr_ent { ptr @.str.138, i8 2 }, %struct.txpwr_ent { ptr @.str.139, i8 2 }, %struct.txpwr_ent { ptr @.str.140, i8 2 }, %struct.txpwr_ent { ptr @.str.141, i8 2 }, %struct.txpwr_ent { ptr @.str.142, i8 2 }, %struct.txpwr_ent { ptr @.str.143, i8 2 }, %struct.txpwr_ent { ptr @.str.144, i8 2 }, %struct.txpwr_ent { ptr @.str.145, i8 2 }, %struct.txpwr_ent { ptr @.str.146, i8 2 }], align 4
@.str.107 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"CCK_1TX_20M    \09-  NON_BF  BF\00", [34 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"CCK_1TX_40M    \09-  NON_BF  BF\00", [34 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"OFDM_1TX       \09-  NON_BF  BF\00", [34 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"MCS_1TX_20M_0  \09-  NON_BF  BF\00", [34 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"MCS_1TX_20M_1  \09-  NON_BF  BF\00", [34 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"MCS_1TX_20M_2  \09-  NON_BF  BF\00", [34 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"MCS_1TX_20M_3  \09-  NON_BF  BF\00", [34 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"MCS_1TX_20M_4  \09-  NON_BF  BF\00", [34 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"MCS_1TX_20M_5  \09-  NON_BF  BF\00", [34 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"MCS_1TX_20M_6  \09-  NON_BF  BF\00", [34 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"MCS_1TX_20M_7  \09-  NON_BF  BF\00", [34 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"MCS_1TX_40M_0  \09-  NON_BF  BF\00", [34 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"MCS_1TX_40M_1  \09-  NON_BF  BF\00", [34 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"MCS_1TX_40M_2  \09-  NON_BF  BF\00", [34 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"MCS_1TX_40M_3  \09-  NON_BF  BF\00", [34 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"MCS_1TX_80M_0  \09-  NON_BF  BF\00", [34 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"MCS_1TX_80M_1  \09-  NON_BF  BF\00", [34 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"MCS_1TX_160M   \09-  NON_BF  BF\00", [34 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"MCS_1TX_40M_0p5\09-  NON_BF  BF\00", [34 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"MCS_1TX_40M_2p5\09-  NON_BF  BF\00", [34 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"CCK_2TX_20M    \09-  NON_BF  BF\00", [34 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"CCK_2TX_40M    \09-  NON_BF  BF\00", [34 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"OFDM_2TX       \09-  NON_BF  BF\00", [34 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"MCS_2TX_20M_0  \09-  NON_BF  BF\00", [34 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"MCS_2TX_20M_1  \09-  NON_BF  BF\00", [34 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"MCS_2TX_20M_2  \09-  NON_BF  BF\00", [34 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"MCS_2TX_20M_3  \09-  NON_BF  BF\00", [34 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"MCS_2TX_20M_4  \09-  NON_BF  BF\00", [34 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"MCS_2TX_20M_5  \09-  NON_BF  BF\00", [34 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"MCS_2TX_20M_6  \09-  NON_BF  BF\00", [34 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"MCS_2TX_20M_7  \09-  NON_BF  BF\00", [34 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"MCS_2TX_40M_0  \09-  NON_BF  BF\00", [34 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"MCS_2TX_40M_1  \09-  NON_BF  BF\00", [34 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"MCS_2TX_40M_2  \09-  NON_BF  BF\00", [34 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"MCS_2TX_40M_3  \09-  NON_BF  BF\00", [34 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"MCS_2TX_80M_0  \09-  NON_BF  BF\00", [34 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"MCS_2TX_80M_1  \09-  NON_BF  BF\00", [34 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"MCS_2TX_160M   \09-  NON_BF  BF\00", [34 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"MCS_2TX_40M_0p5\09-  NON_BF  BF\00", [34 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"MCS_2TX_40M_2p5\09-  NON_BF  BF\00", [34 x i8] zeroinitializer }, align 32
@__txpwr_ent_lmt_ru = internal constant [6 x %struct.txpwr_ent] [%struct.txpwr_ent { ptr @.str.147, i8 8 }, %struct.txpwr_ent { ptr @.str.148, i8 8 }, %struct.txpwr_ent { ptr @.str.149, i8 8 }, %struct.txpwr_ent { ptr @.str.150, i8 8 }, %struct.txpwr_ent { ptr @.str.151, i8 8 }, %struct.txpwr_ent { ptr @.str.152, i8 8 }], align 4
@.str.147 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"1TX\09-  RU26__0  RU26__1  RU26__2  RU26__3  RU26__4  RU26__5  RU26__6  RU26__7\00", [50 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"1TX\09-  RU52__0  RU52__1  RU52__2  RU52__3  RU52__4  RU52__5  RU52__6  RU52__7\00", [50 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"1TX\09-  RU106_0  RU106_1  RU106_2  RU106_3  RU106_4  RU106_5  RU106_6  RU106_7\00", [50 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"2TX\09-  RU26__0  RU26__1  RU26__2  RU26__3  RU26__4  RU26__5  RU26__6  RU26__7\00", [50 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"2TX\09-  RU52__0  RU52__1  RU52__2  RU52__3  RU52__4  RU52__5  RU52__6  RU52__7\00", [50 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"2TX\09-  RU106_0  RU106_1  RU106_2  RU106_3  RU106_4  RU106_5  RU106_6  RU106_7\00", [50 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Debug selected MAC page 0x00\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Debug selected MAC page 0x40\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Debug selected MAC page 0x80\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Debug selected MAC page 0xc0\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Debug selected MAC page 0xe0\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Debug selected BB register\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Debug selected IQK register\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Debug selected RFC register\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Selected invalid register page\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%08xh : \00", [23 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%08x \00", [26 x i8] zeroinitializer }, align 32
@rtw89_debug_priv_mac_reg_dump_select._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.164, ptr @.str.165, ptr @.str.4, i32 611, ptr @.str.26, ptr @.str.23 }, [40 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"invalid args: %d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"rtw89_debug_priv_mac_reg_dump_select\00", [59 x i8] zeroinitializer }, align 32
@rtw89_debug_priv_mac_reg_dump_select._entry_ptr = internal global ptr @rtw89_debug_priv_mac_reg_dump_select._entry, section ".printk_index", align 4
@rtw89_debug_priv_mac_reg_dump_select._entry.166 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.167, ptr @.str.165, ptr @.str.4, i32 616, ptr @.str.26, ptr @.str.23 }, [40 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"select mac page dump %d\0A\00", [39 x i8] zeroinitializer }, align 32
@rtw89_debug_priv_mac_reg_dump_select._entry_ptr.168 = internal global ptr @rtw89_debug_priv_mac_reg_dump_select._entry.166, section ".printk_index", align 4
@mac_mem_base_addr_table = internal constant { [17 x i32], [60 x i8] } { [17 x i32] [i32 402677760, i32 409993216, i32 411041792, i32 411043840, i32 411074560, i32 411119616, i32 411123712, i32 411127808, i32 411303936, i32 411369472, i32 411385856, i32 411389952, i32 411697152, i32 411394560, i32 411701376, i32 411394048, i32 411701248], [60 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%08xh:\00", [25 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"  %08x\00", [25 x i8] zeroinitializer }, align 32
@rtw89_debug_priv_mac_mem_dump_select._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.171, ptr @.str.172, ptr @.str.4, i32 713, ptr @.str.26, ptr @.str.23 }, [40 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"invalid format: <sel> <start> <len>\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"rtw89_debug_priv_mac_mem_dump_select\00", [59 x i8] zeroinitializer }, align 32
@rtw89_debug_priv_mac_mem_dump_select._entry_ptr = internal global ptr @rtw89_debug_priv_mac_mem_dump_select._entry, section ".printk_index", align 4
@rtw89_debug_priv_mac_mem_dump_select._entry.173 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.174, ptr @.str.172, ptr @.str.4, i32 722, ptr @.str.26, ptr @.str.23 }, [40 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"select mem %d start %d len %d\0A\00", [33 x i8] zeroinitializer }, align 32
@rtw89_debug_priv_mac_mem_dump_select._entry_ptr.175 = internal global ptr @rtw89_debug_priv_mac_mem_dump_select._entry.173, section ".printk_index", align 4
@.str.176 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"[DLE]  : DMAC not enabled\0A\00", [37 x i8] zeroinitializer }, align 32
@rtw89_debug_mac_dump_dle_dbg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.177, ptr @.str.178, ptr @.str.4, i32 927, ptr @.str.179, ptr @.str.23 }, [40 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to dump DLE %s %s %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"rtw89_debug_mac_dump_dle_dbg\00", [35 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@rtw89_debug_mac_dump_dle_dbg._entry_ptr = internal global ptr @rtw89_debug_mac_dump_dle_dbg._entry, section ".printk_index", align 4
@.str.180 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"WDE\00", [28 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"FREEPG\00", [25 x i8] zeroinitializer }, align 32
@rtw89_debug_mac_dump_dle_dbg._entry.182 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.177, ptr @.str.178, ptr @.str.4, i32 927, ptr @.str.179, ptr @.str.23 }, [40 x i8] zeroinitializer }, align 32
@rtw89_debug_mac_dump_dle_dbg._entry_ptr.183 = internal global ptr @rtw89_debug_mac_dump_dle_dbg._entry.182, section ".printk_index", align 4
@.str.184 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"[%s] freepg head: %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"[%s] freepg tail: %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"[%s] pubpg num  : %d\0A\00", [42 x i8] zeroinitializer }, align 32
@rtw89_debug_mac_dump_dle_dbg._entry.187 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.177, ptr @.str.178, ptr @.str.4, i32 928, ptr @.str.179, ptr @.str.23 }, [40 x i8] zeroinitializer }, align 32
@rtw89_debug_mac_dump_dle_dbg._entry_ptr.188 = internal global ptr @rtw89_debug_mac_dump_dle_dbg._entry.187, section ".printk_index", align 4
@.str.189 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"PLE\00", [28 x i8] zeroinitializer }, align 32
@rtw89_debug_mac_dump_dle_dbg._entry.190 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.177, ptr @.str.178, ptr @.str.4, i32 928, ptr @.str.179, ptr @.str.23 }, [40 x i8] zeroinitializer }, align 32
@rtw89_debug_mac_dump_dle_dbg._entry_ptr.191 = internal global ptr @rtw89_debug_mac_dump_dle_dbg._entry.190, section ".printk_index", align 4
@rtw89_debug_mac_dump_dle_dbg._entry.192 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.177, ptr @.str.178, ptr @.str.4, i32 931, ptr @.str.179, ptr @.str.23 }, [40 x i8] zeroinitializer }, align 32
@rtw89_debug_mac_dump_dle_dbg._entry_ptr.193 = internal global ptr @rtw89_debug_mac_dump_dle_dbg._entry.192, section ".printk_index", align 4
@.str.194 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"QUOTA\00", [26 x i8] zeroinitializer }, align 32
@.str.195 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"[%s][%s] rsv_pgnum: %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.196 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"HOST_IF\00", [24 x i8] zeroinitializer }, align 32
@.str.197 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"[%s][%s] use_pgnum: %d\0A\00", [40 x i8] zeroinitializer }, align 32
@rtw89_debug_mac_dump_dle_dbg._entry.198 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.177, ptr @.str.178, ptr @.str.4, i32 932, ptr @.str.179, ptr @.str.23 }, [40 x i8] zeroinitializer }, align 32
@rtw89_debug_mac_dump_dle_dbg._entry_ptr.199 = internal global ptr @rtw89_debug_mac_dump_dle_dbg._entry.198, section ".printk_index", align 4
@.str.200 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"WLAN_CPU\00", [23 x i8] zeroinitializer }, align 32
@rtw89_debug_mac_dump_dle_dbg._entry.201 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.177, ptr @.str.178, ptr @.str.4, i32 933, ptr @.str.179, ptr @.str.23 }, [40 x i8] zeroinitializer }, align 32
@rtw89_debug_mac_dump_dle_dbg._entry_ptr.202 = internal global ptr @rtw89_debug_mac_dump_dle_dbg._entry.201, section ".printk_index", align 4
@.str.203 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"DATA_CPU\00", [23 x i8] zeroinitializer }, align 32
@rtw89_debug_mac_dump_dle_dbg._entry.204 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.177, ptr @.str.178, ptr @.str.4, i32 934, ptr @.str.179, ptr @.str.23 }, [40 x i8] zeroinitializer }, align 32
@rtw89_debug_mac_dump_dle_dbg._entry_ptr.205 = internal global ptr @rtw89_debug_mac_dump_dle_dbg._entry.204, section ".printk_index", align 4
@.str.206 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"PKTIN\00", [26 x i8] zeroinitializer }, align 32
@rtw89_debug_mac_dump_dle_dbg._entry.207 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.177, ptr @.str.178, ptr @.str.4, i32 935, ptr @.str.179, ptr @.str.23 }, [40 x i8] zeroinitializer }, align 32
@rtw89_debug_mac_dump_dle_dbg._entry_ptr.208 = internal global ptr @rtw89_debug_mac_dump_dle_dbg._entry.207, section ".printk_index", align 4
@.str.209 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"CPUIO\00", [26 x i8] zeroinitializer }, align 32
@rtw89_debug_mac_dump_dle_dbg._entry.210 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.177, ptr @.str.178, ptr @.str.4, i32 940, ptr @.str.179, ptr @.str.23 }, [40 x i8] zeroinitializer }, align 32
@rtw89_debug_mac_dump_dle_dbg._entry_ptr.211 = internal global ptr @rtw89_debug_mac_dump_dle_dbg._entry.210, section ".printk_index", align 4
@.str.212 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"B0_TXPL\00", [24 x i8] zeroinitializer }, align 32
@rtw89_debug_mac_dump_dle_dbg._entry.213 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.177, ptr @.str.178, ptr @.str.4, i32 941, ptr @.str.179, ptr @.str.23 }, [40 x i8] zeroinitializer }, align 32
@rtw89_debug_mac_dump_dle_dbg._entry_ptr.214 = internal global ptr @rtw89_debug_mac_dump_dle_dbg._entry.213, section ".printk_index", align 4
@.str.215 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"B1_TXPL\00", [24 x i8] zeroinitializer }, align 32
@rtw89_debug_mac_dump_dle_dbg._entry.216 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.177, ptr @.str.178, ptr @.str.4, i32 942, ptr @.str.179, ptr @.str.23 }, [40 x i8] zeroinitializer }, align 32
@rtw89_debug_mac_dump_dle_dbg._entry_ptr.217 = internal global ptr @rtw89_debug_mac_dump_dle_dbg._entry.216, section ".printk_index", align 4
@.str.218 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"C2H\00", [28 x i8] zeroinitializer }, align 32
@rtw89_debug_mac_dump_dle_dbg._entry.219 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.177, ptr @.str.178, ptr @.str.4, i32 943, ptr @.str.179, ptr @.str.23 }, [40 x i8] zeroinitializer }, align 32
@rtw89_debug_mac_dump_dle_dbg._entry_ptr.220 = internal global ptr @rtw89_debug_mac_dump_dle_dbg._entry.219, section ".printk_index", align 4
@.str.221 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"H2C\00", [28 x i8] zeroinitializer }, align 32
@rtw89_debug_mac_dump_dle_dbg._entry.222 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.177, ptr @.str.178, ptr @.str.4, i32 944, ptr @.str.179, ptr @.str.23 }, [40 x i8] zeroinitializer }, align 32
@rtw89_debug_mac_dump_dle_dbg._entry_ptr.223 = internal global ptr @rtw89_debug_mac_dump_dle_dbg._entry.222, section ".printk_index", align 4
@rtw89_debug_mac_dump_dle_dbg._entry.224 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.177, ptr @.str.178, ptr @.str.4, i32 945, ptr @.str.179, ptr @.str.23 }, [40 x i8] zeroinitializer }, align 32
@rtw89_debug_mac_dump_dle_dbg._entry_ptr.225 = internal global ptr @rtw89_debug_mac_dump_dle_dbg._entry.224, section ".printk_index", align 4
@.str.226 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"MPDU\00", [27 x i8] zeroinitializer }, align 32
@rtw89_debug_mac_dump_dle_dbg._entry.227 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.177, ptr @.str.178, ptr @.str.4, i32 946, ptr @.str.179, ptr @.str.23 }, [40 x i8] zeroinitializer }, align 32
@rtw89_debug_mac_dump_dle_dbg._entry_ptr.228 = internal global ptr @rtw89_debug_mac_dump_dle_dbg._entry.227, section ".printk_index", align 4
@.str.229 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"CMAC0_RX\00", [23 x i8] zeroinitializer }, align 32
@rtw89_debug_mac_dump_dle_dbg._entry.230 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.177, ptr @.str.178, ptr @.str.4, i32 947, ptr @.str.179, ptr @.str.23 }, [40 x i8] zeroinitializer }, align 32
@rtw89_debug_mac_dump_dle_dbg._entry_ptr.231 = internal global ptr @rtw89_debug_mac_dump_dle_dbg._entry.230, section ".printk_index", align 4
@.str.232 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"CMAC1_RX\00", [23 x i8] zeroinitializer }, align 32
@rtw89_debug_mac_dump_dle_dbg._entry.233 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.177, ptr @.str.178, ptr @.str.4, i32 948, ptr @.str.179, ptr @.str.23 }, [40 x i8] zeroinitializer }, align 32
@rtw89_debug_mac_dump_dle_dbg._entry_ptr.234 = internal global ptr @rtw89_debug_mac_dump_dle_dbg._entry.233, section ".printk_index", align 4
@.str.235 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"CMAC1_BBRPT\00", [20 x i8] zeroinitializer }, align 32
@rtw89_debug_mac_dump_dle_dbg._entry.236 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.177, ptr @.str.178, ptr @.str.4, i32 949, ptr @.str.179, ptr @.str.23 }, [40 x i8] zeroinitializer }, align 32
@rtw89_debug_mac_dump_dle_dbg._entry_ptr.237 = internal global ptr @rtw89_debug_mac_dump_dle_dbg._entry.236, section ".printk_index", align 4
@.str.238 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"WDRLS\00", [26 x i8] zeroinitializer }, align 32
@rtw89_debug_mac_dump_dle_dbg._entry.239 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.177, ptr @.str.178, ptr @.str.4, i32 950, ptr @.str.179, ptr @.str.23 }, [40 x i8] zeroinitializer }, align 32
@rtw89_debug_mac_dump_dle_dbg._entry_ptr.240 = internal global ptr @rtw89_debug_mac_dump_dle_dbg._entry.239, section ".printk_index", align 4
@.str.241 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"[DMAC] : DMAC not enabled\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.242 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"R_AX_DMAC_ERR_ISR=0x%08x\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.243 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"[0]R_AX_WDRLS_ERR_ISR=0x%08x\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.244 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"[1]R_AX_SEC_ERR_IMR_ISR=0x%08x\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.245 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"[2.1]R_AX_MPDU_TX_ERR_ISR=0x%08x\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.246 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"[2.2]R_AX_MPDU_RX_ERR_ISR=0x%08x\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.247 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"[3]R_AX_STA_SCHEDULER_ERR_ISR=0x%08x\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.248 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"[4]R_AX_WDE_ERR_ISR=0x%08x\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.249 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"[5.1]R_AX_TXPKTCTL_ERR_IMR_ISR=0x%08x\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.250 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"[5.2]R_AX_TXPKTCTL_ERR_IMR_ISR_B1=0x%08x\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.251 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"[6]R_AX_PLE_ERR_FLAG_ISR=0x%08x\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.252 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"[7]R_AX_PKTIN_ERR_ISR=0x%08x\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.253 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"[8.1]R_AX_OTHER_DISPATCHER_ERR_ISR=0x%08x\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.254 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"[8.2]R_AX_HOST_DISPATCHER_ERR_ISR=0x%08x\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.255 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"[8.3]R_AX_CPU_DISPATCHER_ERR_ISR=0x%08x\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.256 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"[10]R_AX_CPUIO_ERR_ISR=0x%08x\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.257 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"[11.1]R_AX_BBRPT_COM_ERR_IMR_ISR=0x%08x\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.258 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"[11.2]R_AX_BBRPT_CHINFO_ERR_IMR_ISR=0x%08x\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.259 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"[11.3]R_AX_BBRPT_DFS_ERR_IMR_ISR=0x%08x\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.260 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"[11.4]R_AX_LA_ERRFLAG=0x%08x\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.261 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"[CMAC] : CMAC 0 not enabled\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.262 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"R_AX_CMAC_ERR_ISR=0x%08x\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.263 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"[0]R_AX_SCHEDULE_ERR_ISR=0x%08x\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.264 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"[1]R_AX_PTCL_ISR0=0x%08x\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.265 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"[3]R_AX_DLE_CTRL=0x%08x\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.266 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"[4]R_AX_PHYINFO_ERR_ISR=0x%08x\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.267 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"[5]R_AX_TXPWR_ISR=0x%08x\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.268 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"[6]R_AX_RMAC_ERR_ISR=0x%08x\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.269 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"[7]R_AX_TMAC_ERR_IMR_ISR=0x%08x\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.270 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"[CMAC] : CMAC 1 not enabled\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.271 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"R_AX_CMAC_ERR_ISR_C1=0x%08x\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.272 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"[0]R_AX_SCHEDULE_ERR_ISR_C1=0x%08x\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.273 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"[1]R_AX_PTCL_ISR0_C1=0x%08x\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.274 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"[3]R_AX_DLE_CTRL_C1=0x%08x\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.275 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"[4]R_AX_PHYINFO_ERR_ISR_C1=0x%02x\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.276 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"[5]R_AX_TXPWR_ISR_C1=0x%08x\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.277 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"[6]R_AX_RMAC_ERR_ISR_C1=0x%08x\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.278 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"[7]R_AX_TMAC_ERR_IMR_ISR_C1=0x%08x\0A\00", [60 x i8] zeroinitializer }, align 32
@rtw89_debug_mac_dump_dbg_port._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.279, ptr @.str.280, ptr @.str.4, i32 2074, ptr @.str.179, ptr @.str.23 }, [40 x i8] zeroinitializer }, align 32
@.str.279 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to dump debug port %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.280 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"rtw89_debug_mac_dump_dbg_port\00", [34 x i8] zeroinitializer }, align 32
@rtw89_debug_mac_dump_dbg_port._entry_ptr = internal global ptr @rtw89_debug_mac_dump_dbg_port._entry, section ".printk_index", align 4
@rtw89_debug_mac_dbg_port_dump._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.281, ptr @.str.282, ptr @.str.4, i32 1955, ptr @.str.179, ptr @.str.23 }, [40 x i8] zeroinitializer }, align 32
@.str.281 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to select debug port %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.282 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"rtw89_debug_mac_dbg_port_dump\00", [34 x i8] zeroinitializer }, align 32
@rtw89_debug_mac_dbg_port_dump._entry_ptr = internal global ptr @rtw89_debug_mac_dbg_port_dump._entry, section ".printk_index", align 4
@.str.283 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Dump debug port PTCL_C0:\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.284 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Dump debug port PTCL_C1:\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.285 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Dump debug port SCH_C0:\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.286 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Dump debug port SCH_C1:\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.287 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Dump debug port TMAC_C0:\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.288 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Dump debug port TMAC_C1:\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.289 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Dump debug port RMAC_C0:\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.290 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Dump debug port RMAC_C1:\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.291 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Dump debug port RMACST_C0:\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.292 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Dump debug port RMACST_C1:\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.293 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Dump debug port TRXPTCL_C0:\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.294 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Dump debug port TRXPTCL_C1:\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.295 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Dump debug port TX_INFOL_C0:\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.296 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Dump debug port TX_INFOH_C0:\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.297 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Dump debug port TX_INFOL_C1:\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.298 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Dump debug port TX_INFOH_C1:\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.299 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Dump debug port TXTF_INFOL_C0:\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.300 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Dump debug port TXTF_INFOH_C0:\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.301 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Dump debug port TXTF_INFOL_C1:\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.302 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Dump debug port TXTF_INFOH_C1:\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.303 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Dump debug port WDE_BUFMGN_FREEPG:\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.304 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Dump debug port WDE_BUFMGN_QUOTA:\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.305 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Dump debug port WDE_BUFMGN_PAGELLT:\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.306 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Dump debug port WDE_BUFMGN_PKTINFO:\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.307 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Dump debug port WDE_QUEMGN_PREPKT:\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.308 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Dump debug port WDE_QUEMGN_NXTPKT:\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.309 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Dump debug port WDE_QUEMGN_QLNKTBL:\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.310 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Dump debug port WDE_QUEMGN_QEMPTY:\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.311 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Dump debug port PLE_BUFMGN_FREEPG:\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.312 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Dump debug port PLE_BUFMGN_QUOTA:\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.313 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Dump debug port PLE_BUFMGN_PAGELLT:\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.314 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Dump debug port PLE_BUFMGN_PKTINFO:\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.315 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Dump debug port PLE_QUEMGN_PREPKT:\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.316 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Dump debug port PLE_QUEMGN_NXTPKT:\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.317 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Dump debug port PLE_QUEMGN_QLNKTBL:\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.318 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Dump debug port PLE_QUEMGN_QEMPTY:\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.319 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Dump debug port PKTINFO:\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.320 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Dump debug port PCIE_TXDMA:\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.321 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Dump debug port PCIE_RXDMA:\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.322 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Dump debug port PCIE_CVT:\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.323 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Dump debug port PCIE_CXPL:\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.324 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Dump debug port PCIE_IO:\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.325 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Dump debug port PCIE_MISC:\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.326 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Dump debug port PCIE_MISC2:\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.327 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Sel addr = 0x%X\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.328 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Read addr = 0x%X\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.329 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"0x%02X: \00", [23 x i8] zeroinitializer }, align 32
@.str.330 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"0x%04X: \00", [23 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.331 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"0x%02X\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.332 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"0x%04X\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.333 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"0x%08X\0A\00", [24 x i8] zeroinitializer }, align 32
@dbg_port_ptcl_c0 = internal constant { %struct.rtw89_mac_dbg_port_info, [32 x i8] } { %struct.rtw89_mac_dbg_port_info { i32 50932, i8 1, i32 255, i32 0, i32 63, i32 50928, i8 4, i32 -1 }, [32 x i8] zeroinitializer }, align 32
@.str.334 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Enable PTCL C0 dbgport.\0A\00", [39 x i8] zeroinitializer }, align 32
@dbg_port_ptcl_c1 = internal constant { %struct.rtw89_mac_dbg_port_info, [32 x i8] } { %struct.rtw89_mac_dbg_port_info { i32 59124, i8 1, i32 255, i32 0, i32 63, i32 59120, i8 4, i32 -1 }, [32 x i8] zeroinitializer }, align 32
@.str.335 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Enable PTCL C1 dbgport.\0A\00", [39 x i8] zeroinitializer }, align 32
@dbg_port_sch_c0 = internal constant { %struct.rtw89_mac_dbg_port_info, [32 x i8] } { %struct.rtw89_mac_dbg_port_info { i32 50164, i8 1, i32 255, i32 0, i32 47, i32 50168, i8 4, i32 -1 }, [32 x i8] zeroinitializer }, align 32
@.str.336 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Enable SCH C0 dbgport.\0A\00", [40 x i8] zeroinitializer }, align 32
@dbg_port_sch_c1 = internal constant { %struct.rtw89_mac_dbg_port_info, [32 x i8] } { %struct.rtw89_mac_dbg_port_info { i32 58356, i8 1, i32 255, i32 0, i32 47, i32 58360, i8 4, i32 -1 }, [32 x i8] zeroinitializer }, align 32
@.str.337 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Enable SCH C1 dbgport.\0A\00", [40 x i8] zeroinitializer }, align 32
@dbg_port_tmac_c0 = internal constant { %struct.rtw89_mac_dbg_port_info, [32 x i8] } { %struct.rtw89_mac_dbg_port_info { i32 51744, i8 1, i32 63, i32 0, i32 25, i32 192, i8 4, i32 -1 }, [32 x i8] zeroinitializer }, align 32
@.str.338 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Enable TMAC C0 dbgport.\0A\00", [39 x i8] zeroinitializer }, align 32
@dbg_port_tmac_c1 = internal constant { %struct.rtw89_mac_dbg_port_info, [32 x i8] } { %struct.rtw89_mac_dbg_port_info { i32 59936, i8 1, i32 63, i32 0, i32 25, i32 192, i8 4, i32 -1 }, [32 x i8] zeroinitializer }, align 32
@.str.339 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Enable TMAC C1 dbgport.\0A\00", [39 x i8] zeroinitializer }, align 32
@dbg_port_rmac_c0 = internal constant { %struct.rtw89_mac_dbg_port_info, [32 x i8] } { %struct.rtw89_mac_dbg_port_info { i32 52988, i8 1, i32 255, i32 0, i32 88, i32 192, i8 4, i32 -1 }, [32 x i8] zeroinitializer }, align 32
@.str.340 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Enable RMAC C0 dbgport.\0A\00", [39 x i8] zeroinitializer }, align 32
@dbg_port_rmac_c1 = internal constant { %struct.rtw89_mac_dbg_port_info, [32 x i8] } { %struct.rtw89_mac_dbg_port_info { i32 61180, i8 1, i32 255, i32 0, i32 88, i32 192, i8 4, i32 -1 }, [32 x i8] zeroinitializer }, align 32
@.str.341 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Enable RMAC C1 dbgport.\0A\00", [39 x i8] zeroinitializer }, align 32
@dbg_port_rmacst_c0 = internal constant { %struct.rtw89_mac_dbg_port_info, [32 x i8] } { %struct.rtw89_mac_dbg_port_info { i32 52976, i8 1, i32 31, i32 0, i32 23, i32 52976, i8 4, i32 -1 }, [32 x i8] zeroinitializer }, align 32
@.str.342 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Enable RMAC state C0 dbgport.\0A\00", [33 x i8] zeroinitializer }, align 32
@dbg_port_rmacst_c1 = internal constant { %struct.rtw89_mac_dbg_port_info, [32 x i8] } { %struct.rtw89_mac_dbg_port_info { i32 61168, i8 1, i32 31, i32 0, i32 23, i32 61168, i8 4, i32 -1 }, [32 x i8] zeroinitializer }, align 32
@.str.343 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Enable RMAC state C1 dbgport.\0A\00", [33 x i8] zeroinitializer }, align 32
@dbg_port_rmac_plcp_c0 = internal constant { %struct.rtw89_mac_dbg_port_info, [32 x i8] } { %struct.rtw89_mac_dbg_port_info { i32 52984, i8 4, i32 -268435456, i32 0, i32 15, i32 52984, i8 4, i32 -1 }, [32 x i8] zeroinitializer }, align 32
@.str.344 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Enable RMAC PLCP C0 dbgport.\0A\00", [34 x i8] zeroinitializer }, align 32
@dbg_port_rmac_plcp_c1 = internal constant { %struct.rtw89_mac_dbg_port_info, [32 x i8] } { %struct.rtw89_mac_dbg_port_info { i32 61176, i8 4, i32 -268435456, i32 0, i32 15, i32 61176, i8 4, i32 -1 }, [32 x i8] zeroinitializer }, align 32
@.str.345 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Enable RMAC PLCP C1 dbgport.\0A\00", [34 x i8] zeroinitializer }, align 32
@dbg_port_trxptcl_c0 = internal constant { %struct.rtw89_mac_dbg_port_info, [32 x i8] } { %struct.rtw89_mac_dbg_port_info { i32 52468, i8 1, i32 255, i32 8, i32 16, i32 192, i8 4, i32 -1 }, [32 x i8] zeroinitializer }, align 32
@.str.346 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Enable TRXPTCL C0 dbgport.\0A\00", [36 x i8] zeroinitializer }, align 32
@dbg_port_trxptcl_c1 = internal constant { %struct.rtw89_mac_dbg_port_info, [32 x i8] } { %struct.rtw89_mac_dbg_port_info { i32 60660, i8 1, i32 255, i32 8, i32 16, i32 192, i8 4, i32 -1 }, [32 x i8] zeroinitializer }, align 32
@.str.347 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Enable TRXPTCL C1 dbgport.\0A\00", [36 x i8] zeroinitializer }, align 32
@dbg_port_tx_infol_c0 = internal constant { %struct.rtw89_mac_dbg_port_info, [32 x i8] } { %struct.rtw89_mac_dbg_port_info { i32 51940, i8 1, i32 15, i32 0, i32 7, i32 51944, i8 4, i32 -1 }, [32 x i8] zeroinitializer }, align 32
@.str.348 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Enable tx infol dump.\0A\00", [41 x i8] zeroinitializer }, align 32
@dbg_port_tx_infoh_c0 = internal constant { %struct.rtw89_mac_dbg_port_info, [32 x i8] } { %struct.rtw89_mac_dbg_port_info { i32 51940, i8 1, i32 15, i32 0, i32 7, i32 51948, i8 4, i32 -1 }, [32 x i8] zeroinitializer }, align 32
@.str.349 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Enable tx infoh dump.\0A\00", [41 x i8] zeroinitializer }, align 32
@dbg_port_tx_infol_c1 = internal constant { %struct.rtw89_mac_dbg_port_info, [32 x i8] } { %struct.rtw89_mac_dbg_port_info { i32 60132, i8 1, i32 15, i32 0, i32 7, i32 60136, i8 4, i32 -1 }, [32 x i8] zeroinitializer }, align 32
@dbg_port_tx_infoh_c1 = internal constant { %struct.rtw89_mac_dbg_port_info, [32 x i8] } { %struct.rtw89_mac_dbg_port_info { i32 60132, i8 1, i32 15, i32 0, i32 7, i32 60140, i8 4, i32 -1 }, [32 x i8] zeroinitializer }, align 32
@dbg_port_txtf_infol_c0 = internal constant { %struct.rtw89_mac_dbg_port_info, [32 x i8] } { %struct.rtw89_mac_dbg_port_info { i32 52432, i8 1, i32 7, i32 0, i32 4, i32 52436, i8 4, i32 -1 }, [32 x i8] zeroinitializer }, align 32
@.str.350 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Enable tx tf infol dump.\0A\00", [38 x i8] zeroinitializer }, align 32
@dbg_port_txtf_infoh_c0 = internal constant { %struct.rtw89_mac_dbg_port_info, [32 x i8] } { %struct.rtw89_mac_dbg_port_info { i32 52432, i8 1, i32 7, i32 0, i32 4, i32 52440, i8 4, i32 -1 }, [32 x i8] zeroinitializer }, align 32
@.str.351 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Enable tx tf infoh dump.\0A\00", [38 x i8] zeroinitializer }, align 32
@dbg_port_txtf_infol_c1 = internal constant { %struct.rtw89_mac_dbg_port_info, [32 x i8] } { %struct.rtw89_mac_dbg_port_info { i32 60624, i8 1, i32 7, i32 0, i32 4, i32 60628, i8 4, i32 -1 }, [32 x i8] zeroinitializer }, align 32
@dbg_port_txtf_infoh_c1 = internal constant { %struct.rtw89_mac_dbg_port_info, [32 x i8] } { %struct.rtw89_mac_dbg_port_info { i32 60624, i8 1, i32 7, i32 0, i32 4, i32 60632, i8 4, i32 -1 }, [32 x i8] zeroinitializer }, align 32
@dbg_port_wde_bufmgn_freepg = internal constant { %struct.rtw89_mac_dbg_port_info, [32 x i8] } { %struct.rtw89_mac_dbg_port_info { i32 36112, i8 4, i32 -1, i32 -2147483648, i32 -2147483647, i32 36116, i8 4, i32 -1 }, [32 x i8] zeroinitializer }, align 32
@.str.352 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Enable wde bufmgn freepg dump.\0A\00", [32 x i8] zeroinitializer }, align 32
@dbg_port_wde_bufmgn_quota = internal constant { %struct.rtw89_mac_dbg_port_info, [32 x i8] } { %struct.rtw89_mac_dbg_port_info { i32 36112, i8 4, i32 -1, i32 -2147418112, i32 -2147418108, i32 36116, i8 4, i32 -1 }, [32 x i8] zeroinitializer }, align 32
@.str.353 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Enable wde bufmgn quota dump.\0A\00", [33 x i8] zeroinitializer }, align 32
@dbg_port_wde_bufmgn_pagellt = internal constant { %struct.rtw89_mac_dbg_port_info, [32 x i8] } { %struct.rtw89_mac_dbg_port_info { i32 36112, i8 4, i32 -1, i32 -2147352576, i32 -2147348481, i32 36116, i8 4, i32 -1 }, [32 x i8] zeroinitializer }, align 32
@.str.354 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Enable wde bufmgn pagellt dump.\0A\00", [63 x i8] zeroinitializer }, align 32
@dbg_port_wde_bufmgn_pktinfo = internal constant { %struct.rtw89_mac_dbg_port_info, [32 x i8] } { %struct.rtw89_mac_dbg_port_info { i32 36112, i8 4, i32 -1, i32 -2147287040, i32 -2147282945, i32 36116, i8 4, i32 -1 }, [32 x i8] zeroinitializer }, align 32
@.str.355 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Enable wde bufmgn pktinfo dump.\0A\00", [63 x i8] zeroinitializer }, align 32
@dbg_port_wde_quemgn_prepkt = internal constant { %struct.rtw89_mac_dbg_port_info, [32 x i8] } { %struct.rtw89_mac_dbg_port_info { i32 36112, i8 4, i32 -1, i32 -2147221504, i32 -2147217409, i32 36116, i8 4, i32 -1 }, [32 x i8] zeroinitializer }, align 32
@.str.356 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Enable wde quemgn prepkt dump.\0A\00", [32 x i8] zeroinitializer }, align 32
@dbg_port_wde_quemgn_nxtpkt = internal constant { %struct.rtw89_mac_dbg_port_info, [32 x i8] } { %struct.rtw89_mac_dbg_port_info { i32 36112, i8 4, i32 -1, i32 -2147155968, i32 -2147151873, i32 36116, i8 4, i32 -1 }, [32 x i8] zeroinitializer }, align 32
@.str.357 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Enable wde quemgn nxtpkt dump.\0A\00", [32 x i8] zeroinitializer }, align 32
@dbg_port_wde_quemgn_qlnktbl = internal constant { %struct.rtw89_mac_dbg_port_info, [32 x i8] } { %struct.rtw89_mac_dbg_port_info { i32 36112, i8 4, i32 -1, i32 -2147090432, i32 -2147089325, i32 36116, i8 4, i32 -1 }, [32 x i8] zeroinitializer }, align 32
@.str.358 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Enable wde quemgn qlnktbl dump.\0A\00", [63 x i8] zeroinitializer }, align 32
@dbg_port_wde_quemgn_qempty = internal constant { %struct.rtw89_mac_dbg_port_info, [32 x i8] } { %struct.rtw89_mac_dbg_port_info { i32 36112, i8 4, i32 -1, i32 -2147024896, i32 -2147024879, i32 36116, i8 4, i32 -1 }, [32 x i8] zeroinitializer }, align 32
@.str.359 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Enable wde quemgn qempty dump.\0A\00", [32 x i8] zeroinitializer }, align 32
@dbg_port_ple_bufmgn_freepg = internal constant { %struct.rtw89_mac_dbg_port_info, [32 x i8] } { %struct.rtw89_mac_dbg_port_info { i32 37136, i8 4, i32 -1, i32 -2147483648, i32 -2147483647, i32 37140, i8 4, i32 -1 }, [32 x i8] zeroinitializer }, align 32
@.str.360 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Enable ple bufmgn freepg dump.\0A\00", [32 x i8] zeroinitializer }, align 32
@dbg_port_ple_bufmgn_quota = internal constant { %struct.rtw89_mac_dbg_port_info, [32 x i8] } { %struct.rtw89_mac_dbg_port_info { i32 37136, i8 4, i32 -1, i32 -2147418112, i32 -2147418102, i32 37140, i8 4, i32 -1 }, [32 x i8] zeroinitializer }, align 32
@.str.361 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Enable ple bufmgn quota dump.\0A\00", [33 x i8] zeroinitializer }, align 32
@dbg_port_ple_bufmgn_pagellt = internal constant { %struct.rtw89_mac_dbg_port_info, [32 x i8] } { %struct.rtw89_mac_dbg_port_info { i32 37136, i8 4, i32 -1, i32 -2147352576, i32 -2147349057, i32 37140, i8 4, i32 -1 }, [32 x i8] zeroinitializer }, align 32
@.str.362 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Enable ple bufmgn pagellt dump.\0A\00", [63 x i8] zeroinitializer }, align 32
@dbg_port_ple_bufmgn_pktinfo = internal constant { %struct.rtw89_mac_dbg_port_info, [32 x i8] } { %struct.rtw89_mac_dbg_port_info { i32 37136, i8 4, i32 -1, i32 -2147287040, i32 -2147283521, i32 37140, i8 4, i32 -1 }, [32 x i8] zeroinitializer }, align 32
@.str.363 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Enable ple bufmgn pktinfo dump.\0A\00", [63 x i8] zeroinitializer }, align 32
@dbg_port_ple_quemgn_prepkt = internal constant { %struct.rtw89_mac_dbg_port_info, [32 x i8] } { %struct.rtw89_mac_dbg_port_info { i32 37136, i8 4, i32 -1, i32 -2147221504, i32 -2147217985, i32 37140, i8 4, i32 -1 }, [32 x i8] zeroinitializer }, align 32
@.str.364 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Enable ple quemgn prepkt dump.\0A\00", [32 x i8] zeroinitializer }, align 32
@dbg_port_ple_quemgn_nxtpkt = internal constant { %struct.rtw89_mac_dbg_port_info, [32 x i8] } { %struct.rtw89_mac_dbg_port_info { i32 37136, i8 4, i32 -1, i32 -2147155968, i32 -2147152449, i32 37140, i8 4, i32 -1 }, [32 x i8] zeroinitializer }, align 32
@.str.365 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Enable ple quemgn nxtpkt dump.\0A\00", [32 x i8] zeroinitializer }, align 32
@dbg_port_ple_quemgn_qlnktbl = internal constant { %struct.rtw89_mac_dbg_port_info, [32 x i8] } { %struct.rtw89_mac_dbg_port_info { i32 37136, i8 4, i32 -1, i32 -2147090432, i32 -2147090367, i32 37140, i8 4, i32 -1 }, [32 x i8] zeroinitializer }, align 32
@.str.366 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Enable ple quemgn qlnktbl dump.\0A\00", [63 x i8] zeroinitializer }, align 32
@dbg_port_ple_quemgn_qempty = internal constant { %struct.rtw89_mac_dbg_port_info, [32 x i8] } { %struct.rtw89_mac_dbg_port_info { i32 37136, i8 4, i32 -1, i32 -2147024896, i32 -2147024895, i32 37140, i8 4, i32 -1 }, [32 x i8] zeroinitializer }, align 32
@.str.367 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Enable ple quemgn qempty dump.\0A\00", [32 x i8] zeroinitializer }, align 32
@dbg_port_pktinfo = internal constant { %struct.rtw89_mac_dbg_port_info, [32 x i8] } { %struct.rtw89_mac_dbg_port_info { i32 40752, i8 4, i32 -1, i32 -2147483648, i32 -2147483265, i32 40756, i8 4, i32 -1 }, [32 x i8] zeroinitializer }, align 32
@.str.368 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Enable pktinfo dump.\0A\00", [42 x i8] zeroinitializer }, align 32
@dbg_port_pcie_txdma = internal constant { %struct.rtw89_mac_dbg_port_info, [32 x i8] } { %struct.rtw89_mac_dbg_port_info { i32 4544, i8 2, i32 57344, i32 0, i32 3, i32 192, i8 4, i32 -1 }, [32 x i8] zeroinitializer }, align 32
@.str.369 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Enable pcie txdma dump.\0A\00", [39 x i8] zeroinitializer }, align 32
@dbg_port_pcie_rxdma = internal constant { %struct.rtw89_mac_dbg_port_info, [32 x i8] } { %struct.rtw89_mac_dbg_port_info { i32 4544, i8 2, i32 57344, i32 0, i32 4, i32 192, i8 4, i32 -1 }, [32 x i8] zeroinitializer }, align 32
@.str.370 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Enable pcie rxdma dump.\0A\00", [39 x i8] zeroinitializer }, align 32
@dbg_port_pcie_cvt = internal constant { %struct.rtw89_mac_dbg_port_info, [32 x i8] } { %struct.rtw89_mac_dbg_port_info { i32 4544, i8 2, i32 57344, i32 0, i32 1, i32 192, i8 4, i32 -1 }, [32 x i8] zeroinitializer }, align 32
@.str.371 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Enable pcie cvt dump.\0A\00", [41 x i8] zeroinitializer }, align 32
@dbg_port_pcie_cxpl = internal constant { %struct.rtw89_mac_dbg_port_info, [32 x i8] } { %struct.rtw89_mac_dbg_port_info { i32 4544, i8 2, i32 57344, i32 0, i32 5, i32 192, i8 4, i32 -1 }, [32 x i8] zeroinitializer }, align 32
@.str.372 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Enable pcie cxpl dump.\0A\00", [40 x i8] zeroinitializer }, align 32
@dbg_port_pcie_io = internal constant { %struct.rtw89_mac_dbg_port_info, [32 x i8] } { %struct.rtw89_mac_dbg_port_info { i32 4544, i8 2, i32 57344, i32 0, i32 5, i32 192, i8 4, i32 -1 }, [32 x i8] zeroinitializer }, align 32
@.str.373 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Enable pcie io dump.\0A\00", [42 x i8] zeroinitializer }, align 32
@dbg_port_pcie_misc = internal constant { %struct.rtw89_mac_dbg_port_info, [32 x i8] } { %struct.rtw89_mac_dbg_port_info { i32 4544, i8 2, i32 57344, i32 0, i32 6, i32 192, i8 4, i32 -1 }, [32 x i8] zeroinitializer }, align 32
@.str.374 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Enable pcie misc dump.\0A\00", [40 x i8] zeroinitializer }, align 32
@dbg_port_pcie_misc2 = internal constant { %struct.rtw89_mac_dbg_port_info, [32 x i8] } { %struct.rtw89_mac_dbg_port_info { i32 88, i8 1, i32 255, i32 52, i32 60, i32 192, i8 4, i32 -1 }, [32 x i8] zeroinitializer }, align 32
@.str.375 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Enable pcie misc2 dump.\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.376 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Dbg port select err\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.377 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"drivers/net/wireless/realtek/rtw89/core.h\00", [54 x i8] zeroinitializer }, align 32
@.str.378 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"should be 4-byte aligned, addr = 0x%08x\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.379 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%d %d\00", [26 x i8] zeroinitializer }, align 32
@rtw89_debug_priv_mac_dbg_port_dump_select._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.380, ptr @.str.381, ptr @.str.4, i32 820, ptr @.str.26, ptr @.str.23 }, [40 x i8] zeroinitializer }, align 32
@.str.380 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"invalid format: <sel> <set>\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.381 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rtw89_debug_priv_mac_dbg_port_dump_select\00", [54 x i8] zeroinitializer }, align 32
@rtw89_debug_priv_mac_dbg_port_dump_select._entry_ptr = internal global ptr @rtw89_debug_priv_mac_dbg_port_dump_select._entry, section ".printk_index", align 4
@rtw89_debug_priv_mac_dbg_port_dump_select._entry.382 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.383, ptr @.str.381, ptr @.str.4, i32 842, ptr @.str.26, ptr @.str.23 }, [40 x i8] zeroinitializer }, align 32
@.str.383 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"invalid args: sel %d set %d\0A\00", [35 x i8] zeroinitializer }, align 32
@rtw89_debug_priv_mac_dbg_port_dump_select._entry_ptr.384 = internal global ptr @rtw89_debug_priv_mac_dbg_port_dump_select._entry.382, section ".printk_index", align 4
@rtw89_debug_priv_mac_dbg_port_dump_select._entry.385 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.386, ptr @.str.381, ptr @.str.4, i32 847, ptr @.str.26, ptr @.str.23 }, [40 x i8] zeroinitializer }, align 32
@.str.386 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s debug port dump %d\0A\00", [41 x i8] zeroinitializer }, align 32
@rtw89_debug_priv_mac_dbg_port_dump_select._entry_ptr.387 = internal global ptr @rtw89_debug_priv_mac_dbg_port_dump_select._entry.385, section ".printk_index", align 4
@.str.388 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Enable\00", [25 x i8] zeroinitializer }, align 32
@.str.389 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Disable\00", [24 x i8] zeroinitializer }, align 32
@rtw89_hex2bin_user._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.390, ptr @.str.391, ptr @.str.4, i32 2122, ptr @.str.26, ptr @.str.23 }, [40 x i8] zeroinitializer }, align 32
@.str.390 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"valid format: H1H2H3...\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.391 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rtw89_hex2bin_user\00", [45 x i8] zeroinitializer }, align 32
@rtw89_hex2bin_user._entry_ptr = internal global ptr @rtw89_hex2bin_user._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.392 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%d: %*ph\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.393 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"TP TX: %u [%u] Mbps (lv: %d), RX: %u [%u] Mbps (lv: %d)\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.394 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Beacon: %u\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.395 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Avg packet length: TX=%u, RX=%u\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.396 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"RX count:\0A\00", [21 x i8] zeroinitializer }, align 32
@rtw89_rx_rate_cnt_infos = internal constant { [8 x %struct.rtw89_rx_rate_cnt_info], [32 x i8] } { [8 x %struct.rtw89_rx_rate_cnt_info] [%struct.rtw89_rx_rate_cnt_info { i32 0, i32 4, ptr @.str.399 }, %struct.rtw89_rx_rate_cnt_info { i32 4, i32 8, ptr @.str.400 }, %struct.rtw89_rx_rate_cnt_info { i32 128, i32 8, ptr @.str.401 }, %struct.rtw89_rx_rate_cnt_info { i32 136, i32 8, ptr @.str.402 }, %struct.rtw89_rx_rate_cnt_info { i32 256, i32 10, ptr @.str.403 }, %struct.rtw89_rx_rate_cnt_info { i32 272, i32 10, ptr @.str.404 }, %struct.rtw89_rx_rate_cnt_info { i32 384, i32 12, ptr @.str.405 }, %struct.rtw89_rx_rate_cnt_info { i32 400, i32 12, ptr @.str.406 }], [32 x i8] zeroinitializer }, align 32
@.str.397 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%10s [\00", [25 x i8] zeroinitializer }, align 32
@.str.398 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"]\0A\00", [29 x i8] zeroinitializer }, align 32
@.str.399 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Legacy:\00", [24 x i8] zeroinitializer }, align 32
@.str.400 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"OFDM:\00", [26 x i8] zeroinitializer }, align 32
@.str.401 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"HT 0:\00", [26 x i8] zeroinitializer }, align 32
@.str.402 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"HT 1:\00", [26 x i8] zeroinitializer }, align 32
@.str.403 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"VHT 1SS:\00", [23 x i8] zeroinitializer }, align 32
@.str.404 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"VHT 2SS:\00", [23 x i8] zeroinitializer }, align 32
@.str.405 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"HE 1SS:\00", [24 x i8] zeroinitializer }, align 32
@.str.406 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"HE 2ss:\00", [24 x i8] zeroinitializer }, align 32
@.str.407 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%s%u\00", [27 x i8] zeroinitializer }, align 32
@.str.408 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.409 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c", \00", [29 x i8] zeroinitializer }, align 32
@rtw89_sta_info_get_iter.he_gi_str = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.410, ptr @.str.411, ptr @.str.412], [20 x i8] zeroinitializer }, align 32
@.str.410 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"0.8\00", [28 x i8] zeroinitializer }, align 32
@.str.411 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"1.6\00", [28 x i8] zeroinitializer }, align 32
@.str.412 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"3.2\00", [28 x i8] zeroinitializer }, align 32
@.str.413 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"TX rate [%d]: \00", [17 x i8] zeroinitializer }, align 32
@.str.414 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"HT MCS-%d%s\00", [20 x i8] zeroinitializer }, align 32
@.str.415 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c" SGI\00", [27 x i8] zeroinitializer }, align 32
@.str.416 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"VHT %dSS MCS-%d%s\00", [46 x i8] zeroinitializer }, align 32
@.str.417 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"HE %dSS MCS-%d GI:%s\00", [43 x i8] zeroinitializer }, align 32
@.str.418 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"N/A\00", [28 x i8] zeroinitializer }, align 32
@.str.419 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Legacy %d\00", [22 x i8] zeroinitializer }, align 32
@.str.420 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\09(hw_rate=0x%x)\00", [16 x i8] zeroinitializer }, align 32
@.str.421 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\09==> agg_wait=%d (%d)\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.422 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"RX rate [%d]: \00", [17 x i8] zeroinitializer }, align 32
@.str.423 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\09(hw_rate=0x%x)\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.424 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"RSSI: %d dBm (raw=%d, prev=%d)\0A\00", [32 x i8] zeroinitializer }, align 32
@switch.table.rtw89_debug_priv_mac_reg_dump_get = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160], [32 x i8] zeroinitializer }, align 32
@switch.table.rtw89_debug_priv_mac_reg_dump_get.425 = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 0, i32 64, i32 128, i32 192, i32 224, i32 256, i32 384, i32 448], [32 x i8] zeroinitializer }, align 32
@switch.table.rtw89_debug_priv_mac_reg_dump_get.426 = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 20, i32 127, i32 159, i32 223, i32 255, i32 383, i32 447, i32 511], [32 x i8] zeroinitializer }, align 32
@switch.table.rtw89_debug_priv_mac_dbg_port_dump_select = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\80@ \10\08", [27 x i8] zeroinitializer }, align 32
@switch.table.rtw89_debug_priv_mac_dbg_port_dump_select.427 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\7F\BF\DF\EF\F7", [27 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.428 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.429 = internal global [15 x i64] [i64 13, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12]
@__sancov_gen_cov_switch_values.430 = internal global [5 x i64] [i64 3, i64 8, i64 2, i64 4, i64 8]
@__sancov_gen_cov_switch_values.431 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.432 = internal global [13 x i64] [i64 11, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10]
@__sancov_gen_cov_switch_values.433 = internal global [48 x i64] [i64 46, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23, i64 24, i64 25, i64 26, i64 27, i64 28, i64 29, i64 30, i64 31, i64 32, i64 33, i64 34, i64 35, i64 36, i64 37, i64 38, i64 39, i64 40, i64 41, i64 42, i64 43, i64 44, i64 45]
@__sancov_gen_cov_switch_values.434 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 4]
@__sancov_gen_cov_switch_values.435 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 4]
@__sancov_gen_cov_switch_values.436 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@___asan_gen_.437 = private unnamed_addr constant [17 x i8] c"rtw89_debug_mask\00", align 1
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 16, i32 14 }
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 2455, i32 38 }
@___asan_gen_.443 = private unnamed_addr constant [26 x i8] c"rtw89_debug_priv_read_reg\00", align 1
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 2369, i32 34 }
@___asan_gen_.449 = private unnamed_addr constant [19 x i8] c"file_ops_common_rw\00", align 1
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 98, i32 37 }
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 2458, i32 2 }
@___asan_gen_.464 = private unnamed_addr constant [27 x i8] c"rtw89_debug_priv_write_reg\00", align 1
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 2374, i32 34 }
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 2459, i32 2 }
@___asan_gen_.470 = private unnamed_addr constant [18 x i8] c"file_ops_single_w\00", align 1
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 107, i32 37 }
@___asan_gen_.473 = private unnamed_addr constant [25 x i8] c"rtw89_debug_priv_read_rf\00", align 1
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 2378, i32 34 }
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 2460, i32 2 }
@___asan_gen_.479 = private unnamed_addr constant [26 x i8] c"rtw89_debug_priv_write_rf\00", align 1
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 2383, i32 34 }
@___asan_gen_.484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 2461, i32 2 }
@___asan_gen_.485 = private unnamed_addr constant [29 x i8] c"rtw89_debug_priv_rf_reg_dump\00", align 1
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 2387, i32 34 }
@___asan_gen_.490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 2462, i32 2 }
@___asan_gen_.491 = private unnamed_addr constant [18 x i8] c"file_ops_single_r\00", align 1
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 90, i32 37 }
@___asan_gen_.494 = private unnamed_addr constant [29 x i8] c"rtw89_debug_priv_txpwr_table\00", align 1
@___asan_gen_.496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 2391, i32 34 }
@___asan_gen_.499 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 2463, i32 2 }
@___asan_gen_.500 = private unnamed_addr constant [30 x i8] c"rtw89_debug_priv_mac_reg_dump\00", align 1
@___asan_gen_.502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 2395, i32 34 }
@___asan_gen_.505 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 2464, i32 2 }
@___asan_gen_.506 = private unnamed_addr constant [30 x i8] c"rtw89_debug_priv_mac_mem_dump\00", align 1
@___asan_gen_.508 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 2400, i32 34 }
@___asan_gen_.511 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 2465, i32 2 }
@___asan_gen_.512 = private unnamed_addr constant [35 x i8] c"rtw89_debug_priv_mac_dbg_port_dump\00", align 1
@___asan_gen_.514 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 2405, i32 34 }
@___asan_gen_.517 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 2466, i32 2 }
@___asan_gen_.518 = private unnamed_addr constant [26 x i8] c"rtw89_debug_priv_send_h2c\00", align 1
@___asan_gen_.520 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 2410, i32 34 }
@___asan_gen_.523 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 2467, i32 2 }
@___asan_gen_.524 = private unnamed_addr constant [27 x i8] c"rtw89_debug_priv_early_h2c\00", align 1
@___asan_gen_.526 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 2414, i32 34 }
@___asan_gen_.529 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 2468, i32 2 }
@___asan_gen_.530 = private unnamed_addr constant [26 x i8] c"rtw89_debug_priv_btc_info\00", align 1
@___asan_gen_.532 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 2419, i32 34 }
@___asan_gen_.535 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 2469, i32 2 }
@___asan_gen_.536 = private unnamed_addr constant [28 x i8] c"rtw89_debug_priv_btc_manual\00", align 1
@___asan_gen_.538 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 2423, i32 34 }
@___asan_gen_.541 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 2470, i32 2 }
@___asan_gen_.542 = private unnamed_addr constant [31 x i8] c"rtw89_debug_priv_fw_log_manual\00", align 1
@___asan_gen_.544 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 2427, i32 34 }
@___asan_gen_.547 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 2471, i32 2 }
@___asan_gen_.548 = private unnamed_addr constant [26 x i8] c"rtw89_debug_priv_phy_info\00", align 1
@___asan_gen_.550 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 2431, i32 34 }
@___asan_gen_.553 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 2472, i32 2 }
@___asan_gen_.565 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 2491, i32 3 }
@___asan_gen_.577 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 167, i32 3 }
@___asan_gen_.580 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 171, i32 16 }
@___asan_gen_.583 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 132, i32 20 }
@___asan_gen_.592 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 134, i32 3 }
@___asan_gen_.598 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 141, i32 2 }
@___asan_gen_.600 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.601 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 156, i32 2 }
@___asan_gen_.604 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 192, i32 20 }
@___asan_gen_.613 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 194, i32 3 }
@___asan_gen_.619 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 200, i32 3 }
@___asan_gen_.625 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 204, i32 3 }
@___asan_gen_.631 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 208, i32 3 }
@___asan_gen_.637 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 212, i32 3 }
@___asan_gen_.640 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 270, i32 16 }
@___asan_gen_.643 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 238, i32 20 }
@___asan_gen_.652 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 240, i32 3 }
@___asan_gen_.658 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 245, i32 3 }
@___asan_gen_.664 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 252, i32 2 }
@___asan_gen_.667 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 292, i32 20 }
@___asan_gen_.676 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 294, i32 3 }
@___asan_gen_.679 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 299, i32 3 }
@___asan_gen_.685 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 303, i32 2 }
@___asan_gen_.688 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 319, i32 17 }
@___asan_gen_.691 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 321, i32 18 }
@___asan_gen_.694 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 325, i32 19 }
@___asan_gen_.697 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 327, i32 16 }
@___asan_gen_.700 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 562, i32 14 }
@___asan_gen_.703 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 565, i32 14 }
@___asan_gen_.706 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 568, i32 14 }
@___asan_gen_.709 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 573, i32 14 }
@___asan_gen_.712 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 578, i32 14 }
@___asan_gen_.715 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 533, i32 17 }
@___asan_gen_.718 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 535, i32 2 }
@___asan_gen_.721 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 536, i32 2 }
@___asan_gen_.724 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 537, i32 2 }
@___asan_gen_.727 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 538, i32 2 }
@___asan_gen_.730 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 539, i32 2 }
@___asan_gen_.733 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 540, i32 2 }
@___asan_gen_.736 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 541, i32 2 }
@___asan_gen_.739 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 542, i32 2 }
@___asan_gen_.742 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 543, i32 2 }
@___asan_gen_.745 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 544, i32 2 }
@___asan_gen_.748 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 545, i32 2 }
@___asan_gen_.751 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 546, i32 2 }
@___asan_gen_.754 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 547, i32 2 }
@___asan_gen_.757 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 473, i32 9 }
@___asan_gen_.760 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 477, i32 9 }
@___asan_gen_.763 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 482, i32 9 }
@___asan_gen_.766 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 359, i32 2 }
@___asan_gen_.769 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 360, i32 2 }
@___asan_gen_.772 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 361, i32 2 }
@___asan_gen_.775 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 363, i32 2 }
@___asan_gen_.778 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 364, i32 2 }
@___asan_gen_.781 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 365, i32 2 }
@___asan_gen_.784 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 366, i32 2 }
@___asan_gen_.787 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 368, i32 2 }
@___asan_gen_.790 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 369, i32 2 }
@___asan_gen_.793 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 370, i32 2 }
@___asan_gen_.796 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 371, i32 2 }
@___asan_gen_.799 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 386, i32 2 }
@___asan_gen_.802 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 387, i32 2 }
@___asan_gen_.805 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 388, i32 2 }
@___asan_gen_.808 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 389, i32 2 }
@___asan_gen_.811 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 390, i32 2 }
@___asan_gen_.814 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 391, i32 2 }
@___asan_gen_.817 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 392, i32 2 }
@___asan_gen_.820 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 393, i32 2 }
@___asan_gen_.823 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 394, i32 2 }
@___asan_gen_.826 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 395, i32 2 }
@___asan_gen_.829 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 396, i32 2 }
@___asan_gen_.832 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 397, i32 2 }
@___asan_gen_.835 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 398, i32 2 }
@___asan_gen_.838 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 399, i32 2 }
@___asan_gen_.841 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 400, i32 2 }
@___asan_gen_.844 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 401, i32 2 }
@___asan_gen_.847 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 402, i32 2 }
@___asan_gen_.850 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 403, i32 2 }
@___asan_gen_.853 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 404, i32 2 }
@___asan_gen_.856 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 405, i32 2 }
@___asan_gen_.859 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 407, i32 2 }
@___asan_gen_.862 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 408, i32 2 }
@___asan_gen_.865 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 409, i32 2 }
@___asan_gen_.868 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 410, i32 2 }
@___asan_gen_.871 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 411, i32 2 }
@___asan_gen_.874 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 412, i32 2 }
@___asan_gen_.877 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 413, i32 2 }
@___asan_gen_.880 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 414, i32 2 }
@___asan_gen_.883 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 415, i32 2 }
@___asan_gen_.886 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 416, i32 2 }
@___asan_gen_.889 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 417, i32 2 }
@___asan_gen_.892 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 418, i32 2 }
@___asan_gen_.895 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 419, i32 2 }
@___asan_gen_.898 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 420, i32 2 }
@___asan_gen_.901 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 421, i32 2 }
@___asan_gen_.904 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 422, i32 2 }
@___asan_gen_.907 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 423, i32 2 }
@___asan_gen_.910 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 424, i32 2 }
@___asan_gen_.913 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 425, i32 2 }
@___asan_gen_.916 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 426, i32 2 }
@___asan_gen_.919 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 441, i32 2 }
@___asan_gen_.922 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 443, i32 2 }
@___asan_gen_.925 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 445, i32 2 }
@___asan_gen_.928 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 448, i32 2 }
@___asan_gen_.931 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 450, i32 2 }
@___asan_gen_.934 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 452, i32 2 }
@___asan_gen_.937 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 634, i32 15 }
@___asan_gen_.940 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 639, i32 15 }
@___asan_gen_.943 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 644, i32 15 }
@___asan_gen_.946 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 649, i32 15 }
@___asan_gen_.949 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 654, i32 15 }
@___asan_gen_.952 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 659, i32 15 }
@___asan_gen_.955 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 664, i32 15 }
@___asan_gen_.958 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 669, i32 15 }
@___asan_gen_.961 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 674, i32 15 }
@___asan_gen_.964 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 681, i32 18 }
@___asan_gen_.967 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 684, i32 19 }
@___asan_gen_.976 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 611, i32 3 }
@___asan_gen_.982 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 616, i32 2 }
@___asan_gen_.983 = private unnamed_addr constant [24 x i8] c"mac_mem_base_addr_table\00", align 1
@___asan_gen_.985 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 727, i32 18 }
@___asan_gen_.988 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 768, i32 18 }
@___asan_gen_.991 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 773, i32 19 }
@___asan_gen_.1000 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 713, i32 3 }
@___asan_gen_.1006 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 721, i32 2 }
@___asan_gen_.1009 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 923, i32 15 }
@___asan_gen_.1039 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 927, i32 2 }
@___asan_gen_.1048 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 928, i32 2 }
@___asan_gen_.1063 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 931, i32 3 }
@___asan_gen_.1069 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 932, i32 3 }
@___asan_gen_.1075 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 933, i32 3 }
@___asan_gen_.1081 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 934, i32 3 }
@___asan_gen_.1087 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 935, i32 3 }
@___asan_gen_.1093 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 940, i32 3 }
@___asan_gen_.1099 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 941, i32 3 }
@___asan_gen_.1105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 942, i32 3 }
@___asan_gen_.1111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 943, i32 3 }
@___asan_gen_.1114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 944, i32 3 }
@___asan_gen_.1120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 945, i32 3 }
@___asan_gen_.1126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 946, i32 3 }
@___asan_gen_.1132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 947, i32 3 }
@___asan_gen_.1138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 948, i32 3 }
@___asan_gen_.1144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 949, i32 3 }
@___asan_gen_.1147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 950, i32 3 }
@___asan_gen_.1150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 968, i32 15 }
@___asan_gen_.1153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 972, i32 16 }
@___asan_gen_.1156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 974, i32 16 }
@___asan_gen_.1159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 976, i32 16 }
@___asan_gen_.1162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 978, i32 16 }
@___asan_gen_.1165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 980, i32 16 }
@___asan_gen_.1168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 982, i32 16 }
@___asan_gen_.1171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 984, i32 16 }
@___asan_gen_.1174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 986, i32 16 }
@___asan_gen_.1177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 988, i32 16 }
@___asan_gen_.1180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 990, i32 16 }
@___asan_gen_.1183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 992, i32 16 }
@___asan_gen_.1186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 994, i32 16 }
@___asan_gen_.1189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 996, i32 16 }
@___asan_gen_.1192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 998, i32 16 }
@___asan_gen_.1195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 1000, i32 16 }
@___asan_gen_.1198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 1002, i32 16 }
@___asan_gen_.1201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 1004, i32 16 }
@___asan_gen_.1204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 1006, i32 16 }
@___asan_gen_.1207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 1008, i32 16 }
@___asan_gen_.1210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 1021, i32 15 }
@___asan_gen_.1213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 1025, i32 16 }
@___asan_gen_.1216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 1027, i32 16 }
@___asan_gen_.1219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 1029, i32 16 }
@___asan_gen_.1222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 1031, i32 16 }
@___asan_gen_.1225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 1033, i32 16 }
@___asan_gen_.1228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 1035, i32 16 }
@___asan_gen_.1231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 1037, i32 16 }
@___asan_gen_.1234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 1039, i32 16 }
@___asan_gen_.1237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 1044, i32 15 }
@___asan_gen_.1240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 1048, i32 16 }
@___asan_gen_.1243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 1050, i32 16 }
@___asan_gen_.1246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 1052, i32 16 }
@___asan_gen_.1249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 1054, i32 16 }
@___asan_gen_.1252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 1056, i32 16 }
@___asan_gen_.1255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 1058, i32 16 }
@___asan_gen_.1258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 1060, i32 16 }
@___asan_gen_.1261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 1062, i32 16 }
@___asan_gen_.1270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 2073, i32 4 }
@___asan_gen_.1279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 1955, i32 3 }
@___asan_gen_.1282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 1965, i32 2 }
@___asan_gen_.1285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 1966, i32 2 }
@___asan_gen_.1288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 1967, i32 2 }
@___asan_gen_.1291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 1968, i32 2 }
@___asan_gen_.1294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 1969, i32 2 }
@___asan_gen_.1297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 1970, i32 2 }
@___asan_gen_.1300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 1971, i32 2 }
@___asan_gen_.1303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 1972, i32 2 }
@___asan_gen_.1306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 1973, i32 2 }
@___asan_gen_.1309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 1974, i32 2 }
@___asan_gen_.1312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 1975, i32 2 }
@___asan_gen_.1315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 1976, i32 2 }
@___asan_gen_.1318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 1977, i32 2 }
@___asan_gen_.1321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 1978, i32 2 }
@___asan_gen_.1324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 1979, i32 2 }
@___asan_gen_.1327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 1980, i32 2 }
@___asan_gen_.1330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 1981, i32 2 }
@___asan_gen_.1333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 1982, i32 2 }
@___asan_gen_.1336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 1983, i32 2 }
@___asan_gen_.1339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 1984, i32 2 }
@___asan_gen_.1342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 1985, i32 2 }
@___asan_gen_.1345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 1986, i32 2 }
@___asan_gen_.1348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 1987, i32 2 }
@___asan_gen_.1351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 1988, i32 2 }
@___asan_gen_.1354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 1989, i32 2 }
@___asan_gen_.1357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 1990, i32 2 }
@___asan_gen_.1360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 1991, i32 2 }
@___asan_gen_.1363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 1992, i32 2 }
@___asan_gen_.1366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 1993, i32 2 }
@___asan_gen_.1369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 1994, i32 2 }
@___asan_gen_.1372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 1995, i32 2 }
@___asan_gen_.1375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 1996, i32 2 }
@___asan_gen_.1378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 1997, i32 2 }
@___asan_gen_.1381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 1998, i32 2 }
@___asan_gen_.1384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 1999, i32 2 }
@___asan_gen_.1387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 2000, i32 2 }
@___asan_gen_.1390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 2001, i32 2 }
@___asan_gen_.1393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 2002, i32 2 }
@___asan_gen_.1396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 2003, i32 2 }
@___asan_gen_.1399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 2004, i32 2 }
@___asan_gen_.1402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 2005, i32 2 }
@___asan_gen_.1405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 2006, i32 2 }
@___asan_gen_.1408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 2007, i32 2 }
@___asan_gen_.1411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 2008, i32 2 }
@___asan_gen_.1414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 2013, i32 16 }
@___asan_gen_.1417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 2014, i32 16 }
@___asan_gen_.1420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 2022, i32 18 }
@___asan_gen_.1423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 2027, i32 18 }
@___asan_gen_.1426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 2043, i32 18 }
@___asan_gen_.1429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 2048, i32 18 }
@___asan_gen_.1432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 2053, i32 18 }
@___asan_gen_.1433 = private unnamed_addr constant [17 x i8] c"dbg_port_ptcl_c0\00", align 1
@___asan_gen_.1435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 1068, i32 45 }
@___asan_gen_.1438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 1589, i32 15 }
@___asan_gen_.1439 = private unnamed_addr constant [17 x i8] c"dbg_port_ptcl_c1\00", align 1
@___asan_gen_.1441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 1079, i32 45 }
@___asan_gen_.1444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 1596, i32 15 }
@___asan_gen_.1445 = private unnamed_addr constant [16 x i8] c"dbg_port_sch_c0\00", align 1
@___asan_gen_.1447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 1090, i32 45 }
@___asan_gen_.1450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 1603, i32 15 }
@___asan_gen_.1451 = private unnamed_addr constant [16 x i8] c"dbg_port_sch_c1\00", align 1
@___asan_gen_.1453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 1101, i32 45 }
@___asan_gen_.1456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 1610, i32 15 }
@___asan_gen_.1457 = private unnamed_addr constant [17 x i8] c"dbg_port_tmac_c0\00", align 1
@___asan_gen_.1459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 1112, i32 45 }
@___asan_gen_.1462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 1627, i32 15 }
@___asan_gen_.1463 = private unnamed_addr constant [17 x i8] c"dbg_port_tmac_c1\00", align 1
@___asan_gen_.1465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 1123, i32 45 }
@___asan_gen_.1468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 1644, i32 15 }
@___asan_gen_.1469 = private unnamed_addr constant [17 x i8] c"dbg_port_rmac_c0\00", align 1
@___asan_gen_.1471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 1134, i32 45 }
@___asan_gen_.1474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 1666, i32 15 }
@___asan_gen_.1475 = private unnamed_addr constant [17 x i8] c"dbg_port_rmac_c1\00", align 1
@___asan_gen_.1477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 1145, i32 45 }
@___asan_gen_.1480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 1688, i32 15 }
@___asan_gen_.1481 = private unnamed_addr constant [19 x i8] c"dbg_port_rmacst_c0\00", align 1
@___asan_gen_.1483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 1156, i32 45 }
@___asan_gen_.1486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 1692, i32 15 }
@___asan_gen_.1487 = private unnamed_addr constant [19 x i8] c"dbg_port_rmacst_c1\00", align 1
@___asan_gen_.1489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 1167, i32 45 }
@___asan_gen_.1492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 1696, i32 15 }
@___asan_gen_.1493 = private unnamed_addr constant [22 x i8] c"dbg_port_rmac_plcp_c0\00", align 1
@___asan_gen_.1495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 1178, i32 45 }
@___asan_gen_.1498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 1700, i32 15 }
@___asan_gen_.1499 = private unnamed_addr constant [22 x i8] c"dbg_port_rmac_plcp_c1\00", align 1
@___asan_gen_.1501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 1189, i32 45 }
@___asan_gen_.1504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 1704, i32 15 }
@___asan_gen_.1505 = private unnamed_addr constant [20 x i8] c"dbg_port_trxptcl_c0\00", align 1
@___asan_gen_.1507 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 1200, i32 45 }
@___asan_gen_.1510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 1716, i32 15 }
@___asan_gen_.1511 = private unnamed_addr constant [20 x i8] c"dbg_port_trxptcl_c1\00", align 1
@___asan_gen_.1513 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 1211, i32 45 }
@___asan_gen_.1516 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 1728, i32 15 }
@___asan_gen_.1517 = private unnamed_addr constant [21 x i8] c"dbg_port_tx_infol_c0\00", align 1
@___asan_gen_.1519 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 1222, i32 45 }
@___asan_gen_.1522 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 1735, i32 15 }
@___asan_gen_.1523 = private unnamed_addr constant [21 x i8] c"dbg_port_tx_infoh_c0\00", align 1
@___asan_gen_.1525 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 1233, i32 45 }
@___asan_gen_.1528 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 1742, i32 15 }
@___asan_gen_.1529 = private unnamed_addr constant [21 x i8] c"dbg_port_tx_infol_c1\00", align 1
@___asan_gen_.1531 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 1244, i32 45 }
@___asan_gen_.1532 = private unnamed_addr constant [21 x i8] c"dbg_port_tx_infoh_c1\00", align 1
@___asan_gen_.1534 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 1255, i32 45 }
@___asan_gen_.1535 = private unnamed_addr constant [23 x i8] c"dbg_port_txtf_infol_c0\00", align 1
@___asan_gen_.1537 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 1266, i32 45 }
@___asan_gen_.1540 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 1763, i32 15 }
@___asan_gen_.1541 = private unnamed_addr constant [23 x i8] c"dbg_port_txtf_infoh_c0\00", align 1
@___asan_gen_.1543 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 1277, i32 45 }
@___asan_gen_.1546 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 1770, i32 15 }
@___asan_gen_.1547 = private unnamed_addr constant [23 x i8] c"dbg_port_txtf_infol_c1\00", align 1
@___asan_gen_.1549 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 1288, i32 45 }
@___asan_gen_.1550 = private unnamed_addr constant [23 x i8] c"dbg_port_txtf_infoh_c1\00", align 1
@___asan_gen_.1552 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 1299, i32 45 }
@___asan_gen_.1553 = private unnamed_addr constant [27 x i8] c"dbg_port_wde_bufmgn_freepg\00", align 1
@___asan_gen_.1555 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 1310, i32 45 }
@___asan_gen_.1558 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 1788, i32 15 }
@___asan_gen_.1559 = private unnamed_addr constant [26 x i8] c"dbg_port_wde_bufmgn_quota\00", align 1
@___asan_gen_.1561 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 1321, i32 45 }
@___asan_gen_.1564 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 1792, i32 15 }
@___asan_gen_.1565 = private unnamed_addr constant [28 x i8] c"dbg_port_wde_bufmgn_pagellt\00", align 1
@___asan_gen_.1567 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 1332, i32 45 }
@___asan_gen_.1570 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 1796, i32 15 }
@___asan_gen_.1571 = private unnamed_addr constant [28 x i8] c"dbg_port_wde_bufmgn_pktinfo\00", align 1
@___asan_gen_.1573 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 1343, i32 45 }
@___asan_gen_.1576 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 1800, i32 15 }
@___asan_gen_.1577 = private unnamed_addr constant [27 x i8] c"dbg_port_wde_quemgn_prepkt\00", align 1
@___asan_gen_.1579 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 1354, i32 45 }
@___asan_gen_.1582 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 1804, i32 15 }
@___asan_gen_.1583 = private unnamed_addr constant [27 x i8] c"dbg_port_wde_quemgn_nxtpkt\00", align 1
@___asan_gen_.1585 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 1365, i32 45 }
@___asan_gen_.1588 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 1808, i32 15 }
@___asan_gen_.1589 = private unnamed_addr constant [28 x i8] c"dbg_port_wde_quemgn_qlnktbl\00", align 1
@___asan_gen_.1591 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 1376, i32 45 }
@___asan_gen_.1594 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 1812, i32 15 }
@___asan_gen_.1595 = private unnamed_addr constant [27 x i8] c"dbg_port_wde_quemgn_qempty\00", align 1
@___asan_gen_.1597 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 1387, i32 45 }
@___asan_gen_.1600 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 1816, i32 15 }
@___asan_gen_.1601 = private unnamed_addr constant [27 x i8] c"dbg_port_ple_bufmgn_freepg\00", align 1
@___asan_gen_.1603 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 1398, i32 45 }
@___asan_gen_.1606 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 1820, i32 15 }
@___asan_gen_.1607 = private unnamed_addr constant [26 x i8] c"dbg_port_ple_bufmgn_quota\00", align 1
@___asan_gen_.1609 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 1409, i32 45 }
@___asan_gen_.1612 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 1824, i32 15 }
@___asan_gen_.1613 = private unnamed_addr constant [28 x i8] c"dbg_port_ple_bufmgn_pagellt\00", align 1
@___asan_gen_.1615 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 1420, i32 45 }
@___asan_gen_.1618 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 1828, i32 15 }
@___asan_gen_.1619 = private unnamed_addr constant [28 x i8] c"dbg_port_ple_bufmgn_pktinfo\00", align 1
@___asan_gen_.1621 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 1431, i32 45 }
@___asan_gen_.1624 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 1832, i32 15 }
@___asan_gen_.1625 = private unnamed_addr constant [27 x i8] c"dbg_port_ple_quemgn_prepkt\00", align 1
@___asan_gen_.1627 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 1442, i32 45 }
@___asan_gen_.1630 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 1836, i32 15 }
@___asan_gen_.1631 = private unnamed_addr constant [27 x i8] c"dbg_port_ple_quemgn_nxtpkt\00", align 1
@___asan_gen_.1633 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 1453, i32 45 }
@___asan_gen_.1636 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 1840, i32 15 }
@___asan_gen_.1637 = private unnamed_addr constant [28 x i8] c"dbg_port_ple_quemgn_qlnktbl\00", align 1
@___asan_gen_.1639 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 1464, i32 45 }
@___asan_gen_.1642 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 1844, i32 15 }
@___asan_gen_.1643 = private unnamed_addr constant [27 x i8] c"dbg_port_ple_quemgn_qempty\00", align 1
@___asan_gen_.1645 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 1475, i32 45 }
@___asan_gen_.1648 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 1848, i32 15 }
@___asan_gen_.1649 = private unnamed_addr constant [17 x i8] c"dbg_port_pktinfo\00", align 1
@___asan_gen_.1651 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 1486, i32 45 }
@___asan_gen_.1654 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 1852, i32 15 }
@___asan_gen_.1655 = private unnamed_addr constant [20 x i8] c"dbg_port_pcie_txdma\00", align 1
@___asan_gen_.1657 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 1497, i32 45 }
@___asan_gen_.1660 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 1860, i32 15 }
@___asan_gen_.1661 = private unnamed_addr constant [20 x i8] c"dbg_port_pcie_rxdma\00", align 1
@___asan_gen_.1663 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 1508, i32 45 }
@___asan_gen_.1666 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 1868, i32 15 }
@___asan_gen_.1667 = private unnamed_addr constant [18 x i8] c"dbg_port_pcie_cvt\00", align 1
@___asan_gen_.1669 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 1519, i32 45 }
@___asan_gen_.1672 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 1876, i32 15 }
@___asan_gen_.1673 = private unnamed_addr constant [19 x i8] c"dbg_port_pcie_cxpl\00", align 1
@___asan_gen_.1675 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 1530, i32 45 }
@___asan_gen_.1678 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 1884, i32 15 }
@___asan_gen_.1679 = private unnamed_addr constant [17 x i8] c"dbg_port_pcie_io\00", align 1
@___asan_gen_.1681 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 1541, i32 45 }
@___asan_gen_.1684 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 1892, i32 15 }
@___asan_gen_.1685 = private unnamed_addr constant [19 x i8] c"dbg_port_pcie_misc\00", align 1
@___asan_gen_.1687 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 1552, i32 45 }
@___asan_gen_.1690 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 1900, i32 15 }
@___asan_gen_.1691 = private unnamed_addr constant [20 x i8] c"dbg_port_pcie_misc2\00", align 1
@___asan_gen_.1693 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 1563, i32 45 }
@___asan_gen_.1696 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 1908, i32 15 }
@___asan_gen_.1699 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 1911, i32 15 }
@___asan_gen_.1704 = private unnamed_addr constant [45 x i8] c"../drivers/net/wireless/realtek/rtw89/core.h\00", align 1
@___asan_gen_.1705 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1704, i32 3031, i32 2 }
@___asan_gen_.1708 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 818, i32 20 }
@___asan_gen_.1717 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 820, i32 3 }
@___asan_gen_.1723 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 842, i32 3 }
@___asan_gen_.1735 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 846, i32 2 }
@___asan_gen_.1736 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.1744 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 2122, i32 3 }
@___asan_gen_.1747 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 2163, i32 17 }
@___asan_gen_.1750 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 2348, i32 16 }
@___asan_gen_.1753 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 2351, i32 16 }
@___asan_gen_.1756 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 2352, i32 16 }
@___asan_gen_.1759 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 2355, i32 14 }
@___asan_gen_.1760 = private unnamed_addr constant [24 x i8] c"rtw89_rx_rate_cnt_infos\00", align 1
@___asan_gen_.1762 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 2328, i32 3 }
@___asan_gen_.1765 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 2358, i32 17 }
@___asan_gen_.1768 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 2361, i32 15 }
@___asan_gen_.1771 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 2329, i32 26 }
@___asan_gen_.1774 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 2330, i32 27 }
@___asan_gen_.1777 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 2331, i32 26 }
@___asan_gen_.1780 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 2332, i32 26 }
@___asan_gen_.1783 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 2333, i32 36 }
@___asan_gen_.1786 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 2334, i32 36 }
@___asan_gen_.1789 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 2335, i32 35 }
@___asan_gen_.1792 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 2336, i32 35 }
@___asan_gen_.1795 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 2320, i32 17 }
@___asan_gen_.1798 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 2320, i32 34 }
@___asan_gen_.1801 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 2320, i32 39 }
@___asan_gen_.1802 = private unnamed_addr constant [10 x i8] c"he_gi_str\00", align 1
@___asan_gen_.1804 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 2256, i32 28 }
@___asan_gen_.1807 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 2257, i32 35 }
@___asan_gen_.1810 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 2258, i32 35 }
@___asan_gen_.1813 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 2259, i32 35 }
@___asan_gen_.1816 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 2267, i32 16 }
@___asan_gen_.1819 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 2270, i32 17 }
@___asan_gen_.1822 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 2271, i32 48 }
@___asan_gen_.1825 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 2273, i32 17 }
@___asan_gen_.1828 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 2276, i32 17 }
@___asan_gen_.1831 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 2278, i32 32 }
@___asan_gen_.1834 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 2280, i32 17 }
@___asan_gen_.1837 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 2281, i32 16 }
@___asan_gen_.1840 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 2282, i32 16 }
@___asan_gen_.1843 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 2285, i32 16 }
@___asan_gen_.1846 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 2306, i32 16 }
@___asan_gen_.1847 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.1848 = private constant [46 x i8] c"../drivers/net/wireless/realtek/rtw89/debug.c\00", align 1
@___asan_gen_.1849 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1848, i32 2309, i32 16 }
@___asan_gen_.1850 = private unnamed_addr constant [47 x i8] c"switch.table.rtw89_debug_priv_mac_reg_dump_get\00", align 1
@___asan_gen_.1851 = private unnamed_addr constant [51 x i8] c"switch.table.rtw89_debug_priv_mac_reg_dump_get.425\00", align 1
@___asan_gen_.1852 = private unnamed_addr constant [51 x i8] c"switch.table.rtw89_debug_priv_mac_reg_dump_get.426\00", align 1
@___asan_gen_.1853 = private unnamed_addr constant [55 x i8] c"switch.table.rtw89_debug_priv_mac_dbg_port_dump_select\00", align 1
@___asan_gen_.1854 = private unnamed_addr constant [59 x i8] c"switch.table.rtw89_debug_priv_mac_dbg_port_dump_select.427\00", align 1
@llvm.compiler.used = appending global [527 x ptr] [ptr @__UNIQUE_ID_debug_mask407, ptr @__UNIQUE_ID_debug_masktype406, ptr @__ksymtab___rtw89_debug, ptr @__ksymtab_rtw89_debug_mask, ptr @__param_debug_mask, ptr @__rtw89_debug._entry, ptr @__rtw89_debug._entry_ptr, ptr @rtw89_debug_mac_dbg_port_dump._entry, ptr @rtw89_debug_mac_dbg_port_dump._entry_ptr, ptr @rtw89_debug_mac_dump_dbg_port._entry, ptr @rtw89_debug_mac_dump_dbg_port._entry_ptr, ptr @rtw89_debug_mac_dump_dle_dbg._entry, ptr @rtw89_debug_mac_dump_dle_dbg._entry.182, ptr @rtw89_debug_mac_dump_dle_dbg._entry.187, ptr @rtw89_debug_mac_dump_dle_dbg._entry.190, ptr @rtw89_debug_mac_dump_dle_dbg._entry.192, ptr @rtw89_debug_mac_dump_dle_dbg._entry.198, ptr @rtw89_debug_mac_dump_dle_dbg._entry.201, ptr @rtw89_debug_mac_dump_dle_dbg._entry.204, ptr @rtw89_debug_mac_dump_dle_dbg._entry.207, ptr @rtw89_debug_mac_dump_dle_dbg._entry.210, ptr @rtw89_debug_mac_dump_dle_dbg._entry.213, ptr @rtw89_debug_mac_dump_dle_dbg._entry.216, ptr @rtw89_debug_mac_dump_dle_dbg._entry.219, ptr @rtw89_debug_mac_dump_dle_dbg._entry.222, ptr @rtw89_debug_mac_dump_dle_dbg._entry.224, ptr @rtw89_debug_mac_dump_dle_dbg._entry.227, ptr @rtw89_debug_mac_dump_dle_dbg._entry.230, ptr @rtw89_debug_mac_dump_dle_dbg._entry.233, ptr @rtw89_debug_mac_dump_dle_dbg._entry.236, ptr @rtw89_debug_mac_dump_dle_dbg._entry.239, ptr @rtw89_debug_mac_dump_dle_dbg._entry_ptr, ptr @rtw89_debug_mac_dump_dle_dbg._entry_ptr.183, ptr @rtw89_debug_mac_dump_dle_dbg._entry_ptr.188, ptr @rtw89_debug_mac_dump_dle_dbg._entry_ptr.191, ptr @rtw89_debug_mac_dump_dle_dbg._entry_ptr.193, ptr @rtw89_debug_mac_dump_dle_dbg._entry_ptr.199, ptr @rtw89_debug_mac_dump_dle_dbg._entry_ptr.202, ptr @rtw89_debug_mac_dump_dle_dbg._entry_ptr.205, ptr @rtw89_debug_mac_dump_dle_dbg._entry_ptr.208, ptr @rtw89_debug_mac_dump_dle_dbg._entry_ptr.211, ptr @rtw89_debug_mac_dump_dle_dbg._entry_ptr.214, ptr @rtw89_debug_mac_dump_dle_dbg._entry_ptr.217, ptr @rtw89_debug_mac_dump_dle_dbg._entry_ptr.220, ptr @rtw89_debug_mac_dump_dle_dbg._entry_ptr.223, ptr @rtw89_debug_mac_dump_dle_dbg._entry_ptr.225, ptr @rtw89_debug_mac_dump_dle_dbg._entry_ptr.228, ptr @rtw89_debug_mac_dump_dle_dbg._entry_ptr.231, ptr @rtw89_debug_mac_dump_dle_dbg._entry_ptr.234, ptr @rtw89_debug_mac_dump_dle_dbg._entry_ptr.237, ptr @rtw89_debug_mac_dump_dle_dbg._entry_ptr.240, ptr @rtw89_debug_priv_mac_dbg_port_dump_select._entry, ptr @rtw89_debug_priv_mac_dbg_port_dump_select._entry.382, ptr @rtw89_debug_priv_mac_dbg_port_dump_select._entry.385, ptr @rtw89_debug_priv_mac_dbg_port_dump_select._entry_ptr, ptr @rtw89_debug_priv_mac_dbg_port_dump_select._entry_ptr.384, ptr @rtw89_debug_priv_mac_dbg_port_dump_select._entry_ptr.387, ptr @rtw89_debug_priv_mac_mem_dump_select._entry, ptr @rtw89_debug_priv_mac_mem_dump_select._entry.173, ptr @rtw89_debug_priv_mac_mem_dump_select._entry_ptr, ptr @rtw89_debug_priv_mac_mem_dump_select._entry_ptr.175, ptr @rtw89_debug_priv_mac_reg_dump_select._entry, ptr @rtw89_debug_priv_mac_reg_dump_select._entry.166, ptr @rtw89_debug_priv_mac_reg_dump_select._entry_ptr, ptr @rtw89_debug_priv_mac_reg_dump_select._entry_ptr.168, ptr @rtw89_debug_priv_read_reg_get._entry, ptr @rtw89_debug_priv_read_reg_get._entry_ptr, ptr @rtw89_debug_priv_read_reg_select._entry, ptr @rtw89_debug_priv_read_reg_select._entry.31, ptr @rtw89_debug_priv_read_reg_select._entry_ptr, ptr @rtw89_debug_priv_read_reg_select._entry_ptr.33, ptr @rtw89_debug_priv_read_rf_select._entry, ptr @rtw89_debug_priv_read_rf_select._entry.56, ptr @rtw89_debug_priv_read_rf_select._entry.59, ptr @rtw89_debug_priv_read_rf_select._entry_ptr, ptr @rtw89_debug_priv_read_rf_select._entry_ptr.58, ptr @rtw89_debug_priv_read_rf_select._entry_ptr.61, ptr @rtw89_debug_priv_write_reg_set._entry, ptr @rtw89_debug_priv_write_reg_set._entry.40, ptr @rtw89_debug_priv_write_reg_set._entry.43, ptr @rtw89_debug_priv_write_reg_set._entry.46, ptr @rtw89_debug_priv_write_reg_set._entry.49, ptr @rtw89_debug_priv_write_reg_set._entry_ptr, ptr @rtw89_debug_priv_write_reg_set._entry_ptr.42, ptr @rtw89_debug_priv_write_reg_set._entry_ptr.45, ptr @rtw89_debug_priv_write_reg_set._entry_ptr.48, ptr @rtw89_debug_priv_write_reg_set._entry_ptr.51, ptr @rtw89_debug_priv_write_rf_set._entry, ptr @rtw89_debug_priv_write_rf_set._entry.65, ptr @rtw89_debug_priv_write_rf_set._entry.67, ptr @rtw89_debug_priv_write_rf_set._entry_ptr, ptr @rtw89_debug_priv_write_rf_set._entry_ptr.66, ptr @rtw89_debug_priv_write_rf_set._entry_ptr.69, ptr @rtw89_hex2bin_user._entry, ptr @rtw89_hex2bin_user._entry_ptr, ptr @rtw89_debug_mask, ptr @.str, ptr @rtw89_debug_priv_read_reg, ptr @.str.1, ptr @file_ops_common_rw, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @rtw89_debug_priv_write_reg, ptr @.str.6, ptr @file_ops_single_w, ptr @rtw89_debug_priv_read_rf, ptr @.str.7, ptr @rtw89_debug_priv_write_rf, ptr @.str.8, ptr @rtw89_debug_priv_rf_reg_dump, ptr @.str.9, ptr @file_ops_single_r, ptr @rtw89_debug_priv_txpwr_table, ptr @.str.10, ptr @rtw89_debug_priv_mac_reg_dump, ptr @.str.11, ptr @rtw89_debug_priv_mac_mem_dump, ptr @.str.12, ptr @rtw89_debug_priv_mac_dbg_port_dump, ptr @.str.13, ptr @rtw89_debug_priv_send_h2c, ptr @.str.14, ptr @rtw89_debug_priv_early_h2c, ptr @.str.15, ptr @rtw89_debug_priv_btc_info, ptr @.str.16, ptr @rtw89_debug_priv_btc_manual, ptr @.str.17, ptr @rtw89_debug_priv_fw_log_manual, ptr @.str.18, ptr @rtw89_debug_priv_phy_info, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.32, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.41, ptr @.str.44, ptr @.str.47, ptr @.str.50, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.57, ptr @.str.60, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.68, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @.str.167, ptr @mac_mem_base_addr_table, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.174, ptr @.str.176, ptr @.str.177, ptr @.str.178, ptr @.str.179, ptr @.str.180, ptr @.str.181, ptr @.str.184, ptr @.str.185, ptr @.str.186, ptr @.str.189, ptr @.str.194, ptr @.str.195, ptr @.str.196, ptr @.str.197, ptr @.str.200, ptr @.str.203, ptr @.str.206, ptr @.str.209, ptr @.str.212, ptr @.str.215, ptr @.str.218, ptr @.str.221, ptr @.str.226, ptr @.str.229, ptr @.str.232, ptr @.str.235, ptr @.str.238, ptr @.str.241, ptr @.str.242, ptr @.str.243, ptr @.str.244, ptr @.str.245, ptr @.str.246, ptr @.str.247, ptr @.str.248, ptr @.str.249, ptr @.str.250, ptr @.str.251, ptr @.str.252, ptr @.str.253, ptr @.str.254, ptr @.str.255, ptr @.str.256, ptr @.str.257, ptr @.str.258, ptr @.str.259, ptr @.str.260, ptr @.str.261, ptr @.str.262, ptr @.str.263, ptr @.str.264, ptr @.str.265, ptr @.str.266, ptr @.str.267, ptr @.str.268, ptr @.str.269, ptr @.str.270, ptr @.str.271, ptr @.str.272, ptr @.str.273, ptr @.str.274, ptr @.str.275, ptr @.str.276, ptr @.str.277, ptr @.str.278, ptr @.str.279, ptr @.str.280, ptr @.str.281, ptr @.str.282, ptr @.str.283, ptr @.str.284, ptr @.str.285, ptr @.str.286, ptr @.str.287, ptr @.str.288, ptr @.str.289, ptr @.str.290, ptr @.str.291, ptr @.str.292, ptr @.str.293, ptr @.str.294, ptr @.str.295, ptr @.str.296, ptr @.str.297, ptr @.str.298, ptr @.str.299, ptr @.str.300, ptr @.str.301, ptr @.str.302, ptr @.str.303, ptr @.str.304, ptr @.str.305, ptr @.str.306, ptr @.str.307, ptr @.str.308, ptr @.str.309, ptr @.str.310, ptr @.str.311, ptr @.str.312, ptr @.str.313, ptr @.str.314, ptr @.str.315, ptr @.str.316, ptr @.str.317, ptr @.str.318, ptr @.str.319, ptr @.str.320, ptr @.str.321, ptr @.str.322, ptr @.str.323, ptr @.str.324, ptr @.str.325, ptr @.str.326, ptr @.str.327, ptr @.str.328, ptr @.str.329, ptr @.str.330, ptr @.str.331, ptr @.str.332, ptr @.str.333, ptr @dbg_port_ptcl_c0, ptr @.str.334, ptr @dbg_port_ptcl_c1, ptr @.str.335, ptr @dbg_port_sch_c0, ptr @.str.336, ptr @dbg_port_sch_c1, ptr @.str.337, ptr @dbg_port_tmac_c0, ptr @.str.338, ptr @dbg_port_tmac_c1, ptr @.str.339, ptr @dbg_port_rmac_c0, ptr @.str.340, ptr @dbg_port_rmac_c1, ptr @.str.341, ptr @dbg_port_rmacst_c0, ptr @.str.342, ptr @dbg_port_rmacst_c1, ptr @.str.343, ptr @dbg_port_rmac_plcp_c0, ptr @.str.344, ptr @dbg_port_rmac_plcp_c1, ptr @.str.345, ptr @dbg_port_trxptcl_c0, ptr @.str.346, ptr @dbg_port_trxptcl_c1, ptr @.str.347, ptr @dbg_port_tx_infol_c0, ptr @.str.348, ptr @dbg_port_tx_infoh_c0, ptr @.str.349, ptr @dbg_port_tx_infol_c1, ptr @dbg_port_tx_infoh_c1, ptr @dbg_port_txtf_infol_c0, ptr @.str.350, ptr @dbg_port_txtf_infoh_c0, ptr @.str.351, ptr @dbg_port_txtf_infol_c1, ptr @dbg_port_txtf_infoh_c1, ptr @dbg_port_wde_bufmgn_freepg, ptr @.str.352, ptr @dbg_port_wde_bufmgn_quota, ptr @.str.353, ptr @dbg_port_wde_bufmgn_pagellt, ptr @.str.354, ptr @dbg_port_wde_bufmgn_pktinfo, ptr @.str.355, ptr @dbg_port_wde_quemgn_prepkt, ptr @.str.356, ptr @dbg_port_wde_quemgn_nxtpkt, ptr @.str.357, ptr @dbg_port_wde_quemgn_qlnktbl, ptr @.str.358, ptr @dbg_port_wde_quemgn_qempty, ptr @.str.359, ptr @dbg_port_ple_bufmgn_freepg, ptr @.str.360, ptr @dbg_port_ple_bufmgn_quota, ptr @.str.361, ptr @dbg_port_ple_bufmgn_pagellt, ptr @.str.362, ptr @dbg_port_ple_bufmgn_pktinfo, ptr @.str.363, ptr @dbg_port_ple_quemgn_prepkt, ptr @.str.364, ptr @dbg_port_ple_quemgn_nxtpkt, ptr @.str.365, ptr @dbg_port_ple_quemgn_qlnktbl, ptr @.str.366, ptr @dbg_port_ple_quemgn_qempty, ptr @.str.367, ptr @dbg_port_pktinfo, ptr @.str.368, ptr @dbg_port_pcie_txdma, ptr @.str.369, ptr @dbg_port_pcie_rxdma, ptr @.str.370, ptr @dbg_port_pcie_cvt, ptr @.str.371, ptr @dbg_port_pcie_cxpl, ptr @.str.372, ptr @dbg_port_pcie_io, ptr @.str.373, ptr @dbg_port_pcie_misc, ptr @.str.374, ptr @dbg_port_pcie_misc2, ptr @.str.375, ptr @.str.376, ptr @.str.377, ptr @.str.378, ptr @.str.379, ptr @.str.380, ptr @.str.381, ptr @.str.383, ptr @.str.386, ptr @.str.388, ptr @.str.389, ptr @.str.390, ptr @.str.391, ptr @.str.392, ptr @.str.393, ptr @.str.394, ptr @.str.395, ptr @.str.396, ptr @rtw89_rx_rate_cnt_infos, ptr @.str.397, ptr @.str.398, ptr @.str.399, ptr @.str.400, ptr @.str.401, ptr @.str.402, ptr @.str.403, ptr @.str.404, ptr @.str.405, ptr @.str.406, ptr @.str.407, ptr @.str.408, ptr @.str.409, ptr @rtw89_sta_info_get_iter.he_gi_str, ptr @.str.410, ptr @.str.411, ptr @.str.412, ptr @.str.413, ptr @.str.414, ptr @.str.415, ptr @.str.416, ptr @.str.417, ptr @.str.418, ptr @.str.419, ptr @.str.420, ptr @.str.421, ptr @.str.422, ptr @.str.423, ptr @.str.424, ptr @switch.table.rtw89_debug_priv_mac_reg_dump_get, ptr @switch.table.rtw89_debug_priv_mac_reg_dump_get.425, ptr @switch.table.rtw89_debug_priv_mac_reg_dump_get.426, ptr @switch.table.rtw89_debug_priv_mac_dbg_port_dump_select, ptr @switch.table.rtw89_debug_priv_mac_dbg_port_dump_select.427], section "llvm.metadata"
@0 = internal global [476 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_debug_mask to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_debug_priv_read_reg to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @file_ops_common_rw to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_debug_priv_write_reg to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @file_ops_single_w to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_debug_priv_read_rf to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_debug_priv_write_rf to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_debug_priv_rf_reg_dump to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @file_ops_single_r to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_debug_priv_txpwr_table to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_debug_priv_mac_reg_dump to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_debug_priv_mac_mem_dump to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_debug_priv_mac_dbg_port_dump to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_debug_priv_send_h2c to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_debug_priv_early_h2c to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_debug_priv_btc_info to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_debug_priv_btc_manual to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_debug_priv_fw_log_manual to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_debug_priv_phy_info to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_debug_priv_read_reg_get._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1736 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_debug_priv_read_reg_select._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1736 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_debug_priv_read_reg_select._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1736 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_debug_priv_write_reg_set._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1736 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_debug_priv_write_reg_set._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1736 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_debug_priv_write_reg_set._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1736 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_debug_priv_write_reg_set._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1736 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_debug_priv_write_reg_set._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1736 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_debug_priv_read_rf_select._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1736 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_debug_priv_read_rf_select._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1736 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_debug_priv_read_rf_select._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1736 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_debug_priv_write_rf_set._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1736 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_debug_priv_write_rf_set._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1736 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_debug_priv_write_rf_set._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1736 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.754 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.871 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.922 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.928 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.934 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.940 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.952 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.967 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_debug_priv_mac_reg_dump_select._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1736 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_debug_priv_mac_reg_dump_select._entry.166 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1736 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.982 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.982 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mac_mem_base_addr_table to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.991 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_debug_priv_mac_mem_dump_select._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1736 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_debug_priv_mac_mem_dump_select._entry.173 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1736 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_debug_mac_dump_dle_dbg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1736 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_debug_mac_dump_dle_dbg._entry.182 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1736 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_debug_mac_dump_dle_dbg._entry.187 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1736 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_debug_mac_dump_dle_dbg._entry.190 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1736 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_debug_mac_dump_dle_dbg._entry.192 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1736 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.194 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.195 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.196 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.197 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_debug_mac_dump_dle_dbg._entry.198 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1736 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1069 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.200 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1069 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_debug_mac_dump_dle_dbg._entry.201 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1736 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.203 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_debug_mac_dump_dle_dbg._entry.204 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1736 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1081 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.206 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1081 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_debug_mac_dump_dle_dbg._entry.207 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1736 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1087 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.209 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1087 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_debug_mac_dump_dle_dbg._entry.210 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1736 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.212 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_debug_mac_dump_dle_dbg._entry.213 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1736 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1099 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.215 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1099 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_debug_mac_dump_dle_dbg._entry.216 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1736 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.218 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_debug_mac_dump_dle_dbg._entry.219 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1736 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.221 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_debug_mac_dump_dle_dbg._entry.222 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1736 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_debug_mac_dump_dle_dbg._entry.224 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1736 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.226 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_debug_mac_dump_dle_dbg._entry.227 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1736 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.229 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_debug_mac_dump_dle_dbg._entry.230 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1736 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.232 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_debug_mac_dump_dle_dbg._entry.233 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1736 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.235 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_debug_mac_dump_dle_dbg._entry.236 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1736 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.238 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_debug_mac_dump_dle_dbg._entry.239 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1736 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.241 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.242 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.243 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.244 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.245 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.246 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.247 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.248 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.249 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.250 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.251 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.252 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.253 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.254 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.255 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.256 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.257 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.258 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.259 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.260 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.261 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.262 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.263 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.264 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.265 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.266 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.267 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.268 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.269 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.270 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.271 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.272 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.273 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.274 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.275 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.276 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.277 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.278 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_debug_mac_dump_dbg_port._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1736 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.279 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.280 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_debug_mac_dbg_port_dump._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1736 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.281 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.282 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.283 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.284 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.285 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.286 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.287 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.288 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.289 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.290 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.291 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.292 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.293 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.294 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.295 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.296 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.297 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.298 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.299 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.300 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.301 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.302 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.303 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.304 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.305 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.306 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.307 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.308 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.309 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.310 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.311 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.312 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.313 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.314 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.315 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.316 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.317 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.318 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.319 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.320 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.321 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.322 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.323 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.324 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.325 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.326 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.327 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.328 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.329 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.330 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.331 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.332 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.333 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dbg_port_ptcl_c0 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.334 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dbg_port_ptcl_c1 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1439 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.335 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dbg_port_sch_c0 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1445 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.336 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dbg_port_sch_c1 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.337 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dbg_port_tmac_c0 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1457 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.338 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dbg_port_tmac_c1 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1463 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.339 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dbg_port_rmac_c0 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1469 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.340 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dbg_port_rmac_c1 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1475 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.341 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dbg_port_rmacst_c0 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.342 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dbg_port_rmacst_c1 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1487 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.343 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dbg_port_rmac_plcp_c0 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.344 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dbg_port_rmac_plcp_c1 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1499 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.345 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dbg_port_trxptcl_c0 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1505 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.346 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dbg_port_trxptcl_c1 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1511 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.347 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dbg_port_tx_infol_c0 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1517 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.348 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dbg_port_tx_infoh_c0 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1523 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.349 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dbg_port_tx_infol_c1 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1529 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dbg_port_tx_infoh_c1 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1532 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dbg_port_txtf_infol_c0 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.350 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dbg_port_txtf_infoh_c0 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1541 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.351 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dbg_port_txtf_infol_c1 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dbg_port_txtf_infoh_c1 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1550 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dbg_port_wde_bufmgn_freepg to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1553 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.352 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dbg_port_wde_bufmgn_quota to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1559 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.353 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dbg_port_wde_bufmgn_pagellt to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1565 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.354 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dbg_port_wde_bufmgn_pktinfo to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1571 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.355 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dbg_port_wde_quemgn_prepkt to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1577 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.356 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dbg_port_wde_quemgn_nxtpkt to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1583 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.357 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dbg_port_wde_quemgn_qlnktbl to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1589 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.358 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dbg_port_wde_quemgn_qempty to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1595 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.359 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dbg_port_ple_bufmgn_freepg to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1601 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.360 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dbg_port_ple_bufmgn_quota to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1607 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.361 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dbg_port_ple_bufmgn_pagellt to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.362 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dbg_port_ple_bufmgn_pktinfo to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1619 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1621 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.363 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dbg_port_ple_quemgn_prepkt to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1627 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.364 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dbg_port_ple_quemgn_nxtpkt to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1633 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.365 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dbg_port_ple_quemgn_qlnktbl to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1637 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.366 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1642 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dbg_port_ple_quemgn_qempty to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1645 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.367 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dbg_port_pktinfo to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.368 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dbg_port_pcie_txdma to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1655 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1657 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.369 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dbg_port_pcie_rxdma to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1661 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1663 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.370 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dbg_port_pcie_cvt to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.371 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1672 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dbg_port_pcie_cxpl to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1673 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1675 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.372 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1678 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dbg_port_pcie_io to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1679 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1681 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.373 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1684 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dbg_port_pcie_misc to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1685 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1687 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.374 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1690 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dbg_port_pcie_misc2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1691 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.375 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1696 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.376 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.377 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1705 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.378 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1705 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.379 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1708 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_debug_priv_mac_dbg_port_dump_select._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1736 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1717 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.380 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1717 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.381 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1717 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_debug_priv_mac_dbg_port_dump_select._entry.382 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1736 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1723 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.383 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1723 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_debug_priv_mac_dbg_port_dump_select._entry.385 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1736 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1735 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.386 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1735 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.388 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1735 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.389 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1735 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_hex2bin_user._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1736 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.390 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.391 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.392 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1747 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.393 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1750 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.394 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1753 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.395 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1756 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.396 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1759 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_rx_rate_cnt_infos to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.1760 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1762 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.397 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.398 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1768 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.399 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1771 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.400 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1774 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.401 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1777 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.402 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1780 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.403 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1783 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.404 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1786 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.405 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1789 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.406 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1792 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.407 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1795 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.408 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1798 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.409 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1801 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_sta_info_get_iter.he_gi_str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1802 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1804 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.410 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1807 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.411 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1810 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.412 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1813 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.413 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1816 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.414 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1819 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.415 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1822 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.416 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1825 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.417 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1828 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.418 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1831 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.419 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1834 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.420 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1837 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.421 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1840 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.422 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1843 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.423 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1846 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.424 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1849 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.rtw89_debug_priv_mac_reg_dump_get to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.rtw89_debug_priv_mac_reg_dump_get.425 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1851 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.rtw89_debug_priv_mac_reg_dump_get.426 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1852 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.rtw89_debug_priv_mac_dbg_port_dump_select to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1853 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.rtw89_debug_priv_mac_dbg_port_dump_select.427 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw89_debugfs_init(ptr noundef %rtwdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rtwdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rtwdev, align 128
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wiphy, align 8
  %debugfsdir = getelementptr inbounds %struct.wiphy, ptr %3, i32 0, i32 58
  %4 = ptrtoint ptr %debugfsdir to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %debugfsdir, align 4
  %call = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str, ptr noundef %5) #12
  store ptr %rtwdev, ptr @rtw89_debug_priv_read_reg, align 4
  %call1 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.1, i16 noundef zeroext -32330, ptr noundef %call, ptr noundef nonnull @rtw89_debug_priv_read_reg, ptr noundef nonnull @file_ops_common_rw) #12
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %do.body2, label %entry.do.body11_crit_edge

entry.do.body11_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body11

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtw89_debugfs_init.__UNIQUE_ID_ddebug819, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtw89_debugfs_init, %if.then7)) #12
          to label %do.body11 [label %if.then7], !srcloc !967

if.then7:                                         ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rtw89_debugfs_init.__UNIQUE_ID_ddebug819, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1) #12
  br label %do.body11

do.body11:                                        ; preds = %if.then7, %do.body2, %entry.do.body11_crit_edge
  store ptr %rtwdev, ptr @rtw89_debug_priv_write_reg, align 4
  %call12 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.6, i16 noundef zeroext -32622, ptr noundef %call, ptr noundef nonnull @rtw89_debug_priv_write_reg, ptr noundef nonnull @file_ops_single_w) #12
  %tobool13.not = icmp eq ptr %call12, null
  br i1 %tobool13.not, label %do.body15, label %do.body11.do.body34_crit_edge

do.body11.do.body34_crit_edge:                    ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body34

do.body15:                                        ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtw89_debugfs_init.__UNIQUE_ID_ddebug820, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtw89_debugfs_init, %if.then27)) #12
          to label %do.body34 [label %if.then27], !srcloc !967

if.then27:                                        ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rtw89_debugfs_init.__UNIQUE_ID_ddebug820, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6) #12
  br label %do.body34

do.body34:                                        ; preds = %if.then27, %do.body15, %do.body11.do.body34_crit_edge
  store ptr %rtwdev, ptr @rtw89_debug_priv_read_rf, align 4
  %call35 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.7, i16 noundef zeroext -32330, ptr noundef %call, ptr noundef nonnull @rtw89_debug_priv_read_rf, ptr noundef nonnull @file_ops_common_rw) #12
  %tobool36.not = icmp eq ptr %call35, null
  br i1 %tobool36.not, label %do.body38, label %do.body34.do.body57_crit_edge

do.body34.do.body57_crit_edge:                    ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body57

do.body38:                                        ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtw89_debugfs_init.__UNIQUE_ID_ddebug821, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtw89_debugfs_init, %if.then50)) #12
          to label %do.body57 [label %if.then50], !srcloc !967

if.then50:                                        ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rtw89_debugfs_init.__UNIQUE_ID_ddebug821, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.7) #12
  br label %do.body57

do.body57:                                        ; preds = %if.then50, %do.body38, %do.body34.do.body57_crit_edge
  store ptr %rtwdev, ptr @rtw89_debug_priv_write_rf, align 4
  %call58 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.8, i16 noundef zeroext -32622, ptr noundef %call, ptr noundef nonnull @rtw89_debug_priv_write_rf, ptr noundef nonnull @file_ops_single_w) #12
  %tobool59.not = icmp eq ptr %call58, null
  br i1 %tobool59.not, label %do.body61, label %do.body57.do.body80_crit_edge

do.body57.do.body80_crit_edge:                    ; preds = %do.body57
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body80

do.body61:                                        ; preds = %do.body57
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtw89_debugfs_init.__UNIQUE_ID_ddebug822, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtw89_debugfs_init, %if.then73)) #12
          to label %do.body80 [label %if.then73], !srcloc !967

if.then73:                                        ; preds = %do.body61
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rtw89_debugfs_init.__UNIQUE_ID_ddebug822, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.8) #12
  br label %do.body80

do.body80:                                        ; preds = %if.then73, %do.body61, %do.body57.do.body80_crit_edge
  store ptr %rtwdev, ptr @rtw89_debug_priv_rf_reg_dump, align 4
  %call81 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.9, i16 noundef zeroext -32476, ptr noundef %call, ptr noundef nonnull @rtw89_debug_priv_rf_reg_dump, ptr noundef nonnull @file_ops_single_r) #12
  %tobool82.not = icmp eq ptr %call81, null
  br i1 %tobool82.not, label %do.body84, label %do.body80.do.body103_crit_edge

do.body80.do.body103_crit_edge:                   ; preds = %do.body80
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body103

do.body84:                                        ; preds = %do.body80
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtw89_debugfs_init.__UNIQUE_ID_ddebug823, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtw89_debugfs_init, %if.then96)) #12
          to label %do.body103 [label %if.then96], !srcloc !967

if.then96:                                        ; preds = %do.body84
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rtw89_debugfs_init.__UNIQUE_ID_ddebug823, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.9) #12
  br label %do.body103

do.body103:                                       ; preds = %if.then96, %do.body84, %do.body80.do.body103_crit_edge
  store ptr %rtwdev, ptr @rtw89_debug_priv_txpwr_table, align 4
  %call104 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.10, i16 noundef zeroext -32476, ptr noundef %call, ptr noundef nonnull @rtw89_debug_priv_txpwr_table, ptr noundef nonnull @file_ops_single_r) #12
  %tobool105.not = icmp eq ptr %call104, null
  br i1 %tobool105.not, label %do.body107, label %do.body103.do.body126_crit_edge

do.body103.do.body126_crit_edge:                  ; preds = %do.body103
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body126

do.body107:                                       ; preds = %do.body103
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtw89_debugfs_init.__UNIQUE_ID_ddebug824, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtw89_debugfs_init, %if.then119)) #12
          to label %do.body126 [label %if.then119], !srcloc !967

if.then119:                                       ; preds = %do.body107
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rtw89_debugfs_init.__UNIQUE_ID_ddebug824, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.10) #12
  br label %do.body126

do.body126:                                       ; preds = %if.then119, %do.body107, %do.body103.do.body126_crit_edge
  store ptr %rtwdev, ptr @rtw89_debug_priv_mac_reg_dump, align 4
  %call127 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.11, i16 noundef zeroext -32330, ptr noundef %call, ptr noundef nonnull @rtw89_debug_priv_mac_reg_dump, ptr noundef nonnull @file_ops_common_rw) #12
  %tobool128.not = icmp eq ptr %call127, null
  br i1 %tobool128.not, label %do.body130, label %do.body126.do.body149_crit_edge

do.body126.do.body149_crit_edge:                  ; preds = %do.body126
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body149

do.body130:                                       ; preds = %do.body126
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtw89_debugfs_init.__UNIQUE_ID_ddebug825, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtw89_debugfs_init, %if.then142)) #12
          to label %do.body149 [label %if.then142], !srcloc !967

if.then142:                                       ; preds = %do.body130
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rtw89_debugfs_init.__UNIQUE_ID_ddebug825, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.11) #12
  br label %do.body149

do.body149:                                       ; preds = %if.then142, %do.body130, %do.body126.do.body149_crit_edge
  store ptr %rtwdev, ptr @rtw89_debug_priv_mac_mem_dump, align 4
  %call150 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.12, i16 noundef zeroext -32330, ptr noundef %call, ptr noundef nonnull @rtw89_debug_priv_mac_mem_dump, ptr noundef nonnull @file_ops_common_rw) #12
  %tobool151.not = icmp eq ptr %call150, null
  br i1 %tobool151.not, label %do.body153, label %do.body149.do.body172_crit_edge

do.body149.do.body172_crit_edge:                  ; preds = %do.body149
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body172

do.body153:                                       ; preds = %do.body149
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtw89_debugfs_init.__UNIQUE_ID_ddebug826, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtw89_debugfs_init, %if.then165)) #12
          to label %do.body172 [label %if.then165], !srcloc !967

if.then165:                                       ; preds = %do.body153
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rtw89_debugfs_init.__UNIQUE_ID_ddebug826, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.12) #12
  br label %do.body172

do.body172:                                       ; preds = %if.then165, %do.body153, %do.body149.do.body172_crit_edge
  store ptr %rtwdev, ptr @rtw89_debug_priv_mac_dbg_port_dump, align 4
  %call173 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.13, i16 noundef zeroext -32330, ptr noundef %call, ptr noundef nonnull @rtw89_debug_priv_mac_dbg_port_dump, ptr noundef nonnull @file_ops_common_rw) #12
  %tobool174.not = icmp eq ptr %call173, null
  br i1 %tobool174.not, label %do.body176, label %do.body172.do.body195_crit_edge

do.body172.do.body195_crit_edge:                  ; preds = %do.body172
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body195

do.body176:                                       ; preds = %do.body172
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtw89_debugfs_init.__UNIQUE_ID_ddebug827, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtw89_debugfs_init, %if.then188)) #12
          to label %do.body195 [label %if.then188], !srcloc !967

if.then188:                                       ; preds = %do.body176
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rtw89_debugfs_init.__UNIQUE_ID_ddebug827, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.13) #12
  br label %do.body195

do.body195:                                       ; preds = %if.then188, %do.body176, %do.body172.do.body195_crit_edge
  store ptr %rtwdev, ptr @rtw89_debug_priv_send_h2c, align 4
  %call196 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.14, i16 noundef zeroext -32622, ptr noundef %call, ptr noundef nonnull @rtw89_debug_priv_send_h2c, ptr noundef nonnull @file_ops_single_w) #12
  %tobool197.not = icmp eq ptr %call196, null
  br i1 %tobool197.not, label %do.body199, label %do.body195.do.body218_crit_edge

do.body195.do.body218_crit_edge:                  ; preds = %do.body195
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body218

do.body199:                                       ; preds = %do.body195
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtw89_debugfs_init.__UNIQUE_ID_ddebug828, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtw89_debugfs_init, %if.then211)) #12
          to label %do.body218 [label %if.then211], !srcloc !967

if.then211:                                       ; preds = %do.body199
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rtw89_debugfs_init.__UNIQUE_ID_ddebug828, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.14) #12
  br label %do.body218

do.body218:                                       ; preds = %if.then211, %do.body199, %do.body195.do.body218_crit_edge
  store ptr %rtwdev, ptr @rtw89_debug_priv_early_h2c, align 4
  %call219 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.15, i16 noundef zeroext -32330, ptr noundef %call, ptr noundef nonnull @rtw89_debug_priv_early_h2c, ptr noundef nonnull @file_ops_common_rw) #12
  %tobool220.not = icmp eq ptr %call219, null
  br i1 %tobool220.not, label %do.body222, label %do.body218.do.body241_crit_edge

do.body218.do.body241_crit_edge:                  ; preds = %do.body218
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body241

do.body222:                                       ; preds = %do.body218
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtw89_debugfs_init.__UNIQUE_ID_ddebug829, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtw89_debugfs_init, %if.then234)) #12
          to label %do.body241 [label %if.then234], !srcloc !967

if.then234:                                       ; preds = %do.body222
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rtw89_debugfs_init.__UNIQUE_ID_ddebug829, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.15) #12
  br label %do.body241

do.body241:                                       ; preds = %if.then234, %do.body222, %do.body218.do.body241_crit_edge
  store ptr %rtwdev, ptr @rtw89_debug_priv_btc_info, align 4
  %call242 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.16, i16 noundef zeroext -32476, ptr noundef %call, ptr noundef nonnull @rtw89_debug_priv_btc_info, ptr noundef nonnull @file_ops_single_r) #12
  %tobool243.not = icmp eq ptr %call242, null
  br i1 %tobool243.not, label %do.body245, label %do.body241.do.body264_crit_edge

do.body241.do.body264_crit_edge:                  ; preds = %do.body241
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body264

do.body245:                                       ; preds = %do.body241
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtw89_debugfs_init.__UNIQUE_ID_ddebug830, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtw89_debugfs_init, %if.then257)) #12
          to label %do.body264 [label %if.then257], !srcloc !967

if.then257:                                       ; preds = %do.body245
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rtw89_debugfs_init.__UNIQUE_ID_ddebug830, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.16) #12
  br label %do.body264

do.body264:                                       ; preds = %if.then257, %do.body245, %do.body241.do.body264_crit_edge
  store ptr %rtwdev, ptr @rtw89_debug_priv_btc_manual, align 4
  %call265 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.17, i16 noundef zeroext -32622, ptr noundef %call, ptr noundef nonnull @rtw89_debug_priv_btc_manual, ptr noundef nonnull @file_ops_single_w) #12
  %tobool266.not = icmp eq ptr %call265, null
  br i1 %tobool266.not, label %do.body268, label %do.body264.do.body287_crit_edge

do.body264.do.body287_crit_edge:                  ; preds = %do.body264
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body287

do.body268:                                       ; preds = %do.body264
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtw89_debugfs_init.__UNIQUE_ID_ddebug831, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtw89_debugfs_init, %if.then280)) #12
          to label %do.body287 [label %if.then280], !srcloc !967

if.then280:                                       ; preds = %do.body268
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rtw89_debugfs_init.__UNIQUE_ID_ddebug831, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.17) #12
  br label %do.body287

do.body287:                                       ; preds = %if.then280, %do.body268, %do.body264.do.body287_crit_edge
  store ptr %rtwdev, ptr @rtw89_debug_priv_fw_log_manual, align 4
  %call288 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.18, i16 noundef zeroext -32622, ptr noundef %call, ptr noundef nonnull @rtw89_debug_priv_fw_log_manual, ptr noundef nonnull @file_ops_single_w) #12
  %tobool289.not = icmp eq ptr %call288, null
  br i1 %tobool289.not, label %do.body291, label %do.body287.do.body310_crit_edge

do.body287.do.body310_crit_edge:                  ; preds = %do.body287
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body310

do.body291:                                       ; preds = %do.body287
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtw89_debugfs_init.__UNIQUE_ID_ddebug832, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtw89_debugfs_init, %if.then303)) #12
          to label %do.body310 [label %if.then303], !srcloc !967

if.then303:                                       ; preds = %do.body291
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rtw89_debugfs_init.__UNIQUE_ID_ddebug832, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.18) #12
  br label %do.body310

do.body310:                                       ; preds = %if.then303, %do.body291, %do.body287.do.body310_crit_edge
  store ptr %rtwdev, ptr @rtw89_debug_priv_phy_info, align 4
  %call311 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.19, i16 noundef zeroext -32476, ptr noundef %call, ptr noundef nonnull @rtw89_debug_priv_phy_info, ptr noundef nonnull @file_ops_single_r) #12
  %tobool312.not = icmp eq ptr %call311, null
  br i1 %tobool312.not, label %do.body314, label %do.body310.do.end332_crit_edge

do.body310.do.end332_crit_edge:                   ; preds = %do.body310
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end332

do.body314:                                       ; preds = %do.body310
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtw89_debugfs_init.__UNIQUE_ID_ddebug833, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtw89_debugfs_init, %if.then326)) #12
          to label %do.end332 [label %if.then326], !srcloc !967

if.then326:                                       ; preds = %do.body314
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rtw89_debugfs_init.__UNIQUE_ID_ddebug833, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.19) #12
  br label %do.end332

do.end332:                                        ; preds = %if.then326, %do.body314, %do.body310.do.end332_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__rtw89_debug(ptr nocapture noundef readonly %rtwdev, i32 noundef %mask, ptr noundef %fmt, ...) #0 align 64 {
entry:
  %vaf = alloca %struct.va_format, align 4
  %args = alloca %struct.__va_list, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %vaf) #12
  %0 = getelementptr inbounds %struct.va_format, ptr %vaf, i32 0, i32 1
  %1 = ptrtoint ptr %vaf to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %fmt, ptr %vaf, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %args) #12
  %2 = ptrtoint ptr %args to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %args, align 4, !annotation !968
  call void @llvm.va_start(ptr nonnull %args)
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %args, ptr %0, align 4
  %4 = load i32, ptr @rtw89_debug_mask, align 4
  %and = and i32 %4, %mask
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 1
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.22, ptr noundef %6, ptr noundef nonnull @.str.20, ptr noundef nonnull %vaf) #15
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  call void @llvm.va_end(ptr nonnull %args)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %args) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %vaf) #12
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtw89_debug_priv_read_reg_get(ptr noundef %m, ptr nocapture noundef readnone %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %4 = getelementptr inbounds %struct.rtw89_debugfs_priv, ptr %1, i32 0, i32 3
  %len2 = getelementptr inbounds %struct.rtw89_debugfs_priv, ptr %1, i32 0, i32 3, i32 0, i32 1
  %5 = ptrtoint ptr %len2 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %len2, align 4
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %4, align 4
  %conv = zext i8 %6 to i32
  %9 = zext i8 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values)
  switch i8 %6, label %do.end [
    i8 1, label %sw.bb
    i8 2, label %sw.bb5
    i8 4, label %sw.bb8
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %hci.i = getelementptr inbounds %struct.rtw89_dev, ptr %3, i32 0, i32 7
  %10 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hci.i, align 8
  %read8.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %11, i32 0, i32 7
  %12 = ptrtoint ptr %read8.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %read8.i, align 4
  %call.i = tail call zeroext i8 %13(ptr noundef %3, i32 noundef %8) #12
  %conv4 = zext i8 %call.i to i32
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %hci.i27 = getelementptr inbounds %struct.rtw89_dev, ptr %3, i32 0, i32 7
  %14 = ptrtoint ptr %hci.i27 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hci.i27, align 8
  %read16.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %15, i32 0, i32 8
  %16 = ptrtoint ptr %read16.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %read16.i, align 4
  %call.i28 = tail call zeroext i16 %17(ptr noundef %3, i32 noundef %8) #12
  %conv7 = zext i16 %call.i28 to i32
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %hci.i29 = getelementptr inbounds %struct.rtw89_dev, ptr %3, i32 0, i32 7
  %18 = ptrtoint ptr %hci.i29 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hci.i29, align 8
  %read32.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %19, i32 0, i32 9
  %20 = ptrtoint ptr %read32.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %read32.i, align 4
  %call.i30 = tail call i32 %21(ptr noundef %3, i32 noundef %8) #12
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.rtw89_dev, ptr %3, i32 0, i32 1
  %22 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %23, ptr noundef nonnull @.str.24, i32 noundef %conv) #15
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb8, %sw.bb5, %sw.bb
  %data.0 = phi i32 [ %call.i30, %sw.bb8 ], [ %conv7, %sw.bb5 ], [ %conv4, %sw.bb ]
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.27, i32 noundef %conv, i32 noundef %8, i32 noundef %data.0) #12
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %sw.epilog ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtw89_debug_priv_read_reg_select(ptr nocapture noundef readonly %filp, ptr noundef %user_buf, i32 noundef %count, ptr nocapture noundef readnone %loff) #0 align 64 {
entry:
  %buf = alloca [32 x i8], align 1
  %addr = alloca i32, align 4
  %len = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %private = getelementptr inbounds %struct.seq_file, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %buf) #12
  %6 = call ptr @memset(ptr %buf, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %addr) #12
  %7 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %addr, align 4, !annotation !968
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len) #12
  %8 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %len, align 4, !annotation !968
  %9 = tail call i32 @llvm.umin.i32(i32 %count, i32 31)
  call void @__check_object_size(ptr noundef nonnull %buf, i32 noundef %9, i1 noundef zeroext false) #12
  call void @__might_fault(ptr noundef nonnull @.str.36, i32 noundef 156) #12
  %call.i.i = call zeroext i1 @should_fail_usercopy() #12
  br i1 %call.i.i, label %entry.if.end.i.i_crit_edge, label %land.lhs.true.i.i

entry.if.end.i.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %10 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %user_buf, i32 %9, i32 -1226833920) #16, !srcloc !969
  %asmresult.i.i = extractvalue { i32, i32 } %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !970

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %buf, i32 noundef %9) #12
  %11 = call i32 @llvm.read_register.i32(metadata !957) #12
  %and.i.i.i.i.i.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 4
  %13 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #6, !srcloc !971
  %and.i.i.i.i = and i32 %13, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #12, !srcloc !972
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !973
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %buf, ptr noundef %user_buf, i32 noundef %9) #12
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %13) #12, !srcloc !972
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !973
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %entry.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %9, %entry.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %9, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end, label %if.then11.i.i, !prof !970

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i.i = sub i32 %9, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %buf, i32 %sub.i.i
  %14 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i
  %arrayidx = getelementptr [32 x i8], ptr %buf, i32 0, i32 %9
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %arrayidx, align 1
  %call3 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef nonnull %buf, ptr noundef nonnull @.str.28, ptr noundef nonnull %addr, ptr noundef nonnull %len)
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call3)
  %cmp4.not = icmp eq i32 %call3, 2
  br i1 %cmp4.not, label %if.end6, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.rtw89_dev, ptr %5, i32 0, i32 1
  %16 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %17, ptr noundef nonnull @.str.29) #15
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %18 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %addr, align 4
  %20 = getelementptr inbounds %struct.rtw89_debugfs_priv, ptr %3, i32 0, i32 3
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %19, ptr %20, align 4
  %22 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %len, align 4
  %conv = trunc i32 %23 to i8
  %len8 = getelementptr inbounds %struct.rtw89_debugfs_priv, ptr %3, i32 0, i32 3, i32 0, i32 1
  %24 = ptrtoint ptr %len8 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv, ptr %len8, align 4
  %dev12 = getelementptr inbounds %struct.rtw89_dev, ptr %5, i32 0, i32 1
  %25 = ptrtoint ptr %dev12 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev12, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %26, ptr noundef nonnull @.str.32, i32 noundef %23, i32 noundef %19) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %do.end, %if.then11.i.i
  %retval.0 = phi i32 [ -22, %do.end ], [ %count, %if.end6 ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %addr) #12
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %buf) #12
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtw89_debugfs_seq_file_write(ptr noundef %filp, ptr noundef %buffer, i32 noundef %count, ptr noundef %loff) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %private = getelementptr inbounds %struct.seq_file, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private, align 8
  %cb_write = getelementptr inbounds %struct.rtw89_debugfs_priv, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %cb_write to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cb_write, align 4
  %call = tail call i32 %5(ptr noundef %filp, ptr noundef %buffer, i32 noundef %count, ptr noundef %loff) #12
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtw89_debugfs_single_open(ptr nocapture noundef readonly %inode, ptr noundef %filp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %filp, ptr noundef nonnull @rtw89_debugfs_single_show, ptr noundef %1) #12
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtw89_debugfs_single_show(ptr noundef %m, ptr noundef %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %cb_read = getelementptr inbounds %struct.rtw89_debugfs_priv, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %cb_read to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cb_read, align 4
  %call = tail call i32 %3(ptr noundef %m, ptr noundef %v) #12
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtw89_debug_priv_write_reg_set(ptr nocapture noundef readonly %filp, ptr noundef %user_buf, i32 noundef %count, ptr nocapture noundef readnone %loff) #0 align 64 {
entry:
  %buf = alloca [32 x i8], align 1
  %addr = alloca i32, align 4
  %val = alloca i32, align 4
  %len = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %buf) #12
  %4 = call ptr @memset(ptr %buf, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %addr) #12
  %5 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %addr, align 4, !annotation !968
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #12
  %6 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %val, align 4, !annotation !968
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len) #12
  %7 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %len, align 4, !annotation !968
  %8 = tail call i32 @llvm.umin.i32(i32 %count, i32 31)
  call void @__check_object_size(ptr noundef nonnull %buf, i32 noundef %8, i1 noundef zeroext false) #12
  call void @__might_fault(ptr noundef nonnull @.str.36, i32 noundef 156) #12
  %call.i.i = call zeroext i1 @should_fail_usercopy() #12
  br i1 %call.i.i, label %entry.if.end.i.i_crit_edge, label %land.lhs.true.i.i

entry.if.end.i.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %9 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %user_buf, i32 %8, i32 -1226833920) #16, !srcloc !969
  %asmresult.i.i = extractvalue { i32, i32 } %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !970

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %buf, i32 noundef %8) #12
  %10 = call i32 @llvm.read_register.i32(metadata !957) #12
  %and.i.i.i.i.i.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 4
  %12 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #6, !srcloc !971
  %and.i.i.i.i = and i32 %12, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #12, !srcloc !972
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !973
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %buf, ptr noundef %user_buf, i32 noundef %8) #12
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %12) #12, !srcloc !972
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !973
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %entry.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %8, %entry.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %8, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end, label %if.then11.i.i, !prof !970

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i.i = sub i32 %8, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %buf, i32 %sub.i.i
  %13 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i
  %arrayidx = getelementptr [32 x i8], ptr %buf, i32 0, i32 %8
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %arrayidx, align 1
  %call3 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef nonnull %buf, ptr noundef nonnull @.str.37, ptr noundef nonnull %addr, ptr noundef nonnull %val, ptr noundef nonnull %len)
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call3)
  %cmp4.not = icmp eq i32 %call3, 3
  br i1 %cmp4.not, label %if.end6, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.rtw89_dev, ptr %3, i32 0, i32 1
  %15 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %16, ptr noundef nonnull @.str.38) #15
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %17 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %len, align 4
  %19 = zext i32 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.428)
  switch i32 %18, label %do.end24 [
    i32 1, label %do.end9
    i32 2, label %do.end14
    i32 4, label %do.end20
  ]

do.end9:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  %dev10 = getelementptr inbounds %struct.rtw89_dev, ptr %3, i32 0, i32 1
  %20 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev10, align 4
  %22 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %addr, align 4
  %24 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %val, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %21, ptr noundef nonnull @.str.41, i32 noundef %23, i32 noundef %25) #15
  %26 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %addr, align 4
  %28 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %val, align 4
  %conv = trunc i32 %29 to i8
  %hci.i = getelementptr inbounds %struct.rtw89_dev, ptr %3, i32 0, i32 7
  %30 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %hci.i, align 8
  %write8.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %31, i32 0, i32 10
  %32 = ptrtoint ptr %write8.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %write8.i, align 4
  call void %33(ptr noundef %3, i32 noundef %27, i8 noundef zeroext %conv) #12
  br label %cleanup

do.end14:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  %dev15 = getelementptr inbounds %struct.rtw89_dev, ptr %3, i32 0, i32 1
  %34 = ptrtoint ptr %dev15 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev15, align 4
  %36 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %addr, align 4
  %38 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %val, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %35, ptr noundef nonnull @.str.44, i32 noundef %37, i32 noundef %39) #15
  %40 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %addr, align 4
  %42 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %val, align 4
  %conv16 = trunc i32 %43 to i16
  %hci.i44 = getelementptr inbounds %struct.rtw89_dev, ptr %3, i32 0, i32 7
  %44 = ptrtoint ptr %hci.i44 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %hci.i44, align 8
  %write16.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %45, i32 0, i32 11
  %46 = ptrtoint ptr %write16.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %write16.i, align 4
  call void %47(ptr noundef %3, i32 noundef %41, i16 noundef zeroext %conv16) #12
  br label %cleanup

do.end20:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  %dev21 = getelementptr inbounds %struct.rtw89_dev, ptr %3, i32 0, i32 1
  %48 = ptrtoint ptr %dev21 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev21, align 4
  %50 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %addr, align 4
  %52 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %val, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %49, ptr noundef nonnull @.str.47, i32 noundef %51, i32 noundef %53) #15
  %54 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %addr, align 4
  %56 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %val, align 4
  %hci.i45 = getelementptr inbounds %struct.rtw89_dev, ptr %3, i32 0, i32 7
  %58 = ptrtoint ptr %hci.i45 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %hci.i45, align 8
  %write32.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %59, i32 0, i32 12
  %60 = ptrtoint ptr %write32.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %write32.i, align 4
  call void %61(ptr noundef %3, i32 noundef %55, i32 noundef %57) #12
  br label %cleanup

do.end24:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  %dev25 = getelementptr inbounds %struct.rtw89_dev, ptr %3, i32 0, i32 1
  %62 = ptrtoint ptr %dev25 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dev25, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %63, ptr noundef nonnull @.str.50, i32 noundef %18) #15
  br label %cleanup

cleanup:                                          ; preds = %do.end24, %do.end20, %do.end14, %do.end9, %do.end, %if.then11.i.i
  %retval.0 = phi i32 [ -22, %do.end ], [ %count, %do.end24 ], [ %count, %do.end20 ], [ %count, %do.end14 ], [ %count, %do.end9 ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %addr) #12
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %buf) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtw89_debugfs_single_write(ptr noundef %filp, ptr noundef %buffer, i32 noundef %count, ptr noundef %loff) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %cb_write = getelementptr inbounds %struct.rtw89_debugfs_priv, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %cb_write to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cb_write, align 4
  %call = tail call i32 %3(ptr noundef %filp, ptr noundef %buffer, i32 noundef %count, ptr noundef %loff) #12
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_open(ptr noundef, ptr noundef) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @rtw89_debugfs_close(ptr nocapture noundef readnone %inode, ptr nocapture noundef readnone %filp) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtw89_debug_priv_read_rf_get(ptr noundef %m, ptr nocapture noundef readnone %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %4 = getelementptr inbounds %struct.rtw89_debugfs_priv, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %4, align 4
  %mask3 = getelementptr inbounds %struct.rtw89_debugfs_priv, ptr %1, i32 0, i32 3, i32 0, i32 1
  %7 = ptrtoint ptr %mask3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %mask3, align 4
  %path4 = getelementptr inbounds %struct.rtw89_debugfs_priv, ptr %1, i32 0, i32 3, i32 0, i32 2
  %9 = ptrtoint ptr %path4 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %path4, align 4
  %conv = zext i8 %10 to i32
  %rf_mutex.i = getelementptr inbounds %struct.rtw89_dev, ptr %3, i32 0, i32 12
  tail call void @mutex_lock_nested(ptr noundef %rf_mutex.i, i32 noundef 0) #12
  %chip.i = getelementptr inbounds %struct.rtw89_dev, ptr %3, i32 0, i32 3
  %11 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %chip.i, align 4
  %ops.i = getelementptr inbounds %struct.rtw89_chip_info, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ops.i, align 4
  %read_rf.i = getelementptr inbounds %struct.rtw89_chip_ops, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %read_rf.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %read_rf.i, align 4
  %call.i = tail call i32 %16(ptr noundef %3, i32 noundef %conv, i32 noundef %6, i32 noundef %8) #12
  tail call void @mutex_unlock(ptr noundef %rf_mutex.i) #12
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.52, i32 noundef %conv, i32 noundef %6, i32 noundef %call.i) #12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtw89_debug_priv_read_rf_select(ptr nocapture noundef readonly %filp, ptr noundef %user_buf, i32 noundef %count, ptr nocapture noundef readnone %loff) #0 align 64 {
entry:
  %buf = alloca [32 x i8], align 1
  %addr = alloca i32, align 4
  %mask = alloca i32, align 4
  %path = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %private = getelementptr inbounds %struct.seq_file, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %buf) #12
  %6 = call ptr @memset(ptr %buf, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %addr) #12
  %7 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %addr, align 4, !annotation !968
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mask) #12
  %8 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %mask, align 4, !annotation !968
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %path) #12
  %9 = ptrtoint ptr %path to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 -1, ptr %path, align 1, !annotation !968
  %10 = tail call i32 @llvm.umin.i32(i32 %count, i32 31)
  call void @__check_object_size(ptr noundef nonnull %buf, i32 noundef %10, i1 noundef zeroext false) #12
  call void @__might_fault(ptr noundef nonnull @.str.36, i32 noundef 156) #12
  %call.i.i = call zeroext i1 @should_fail_usercopy() #12
  br i1 %call.i.i, label %entry.if.end.i.i_crit_edge, label %land.lhs.true.i.i

entry.if.end.i.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %11 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %user_buf, i32 %10, i32 -1226833920) #16, !srcloc !969
  %asmresult.i.i = extractvalue { i32, i32 } %11, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !970

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %buf, i32 noundef %10) #12
  %12 = call i32 @llvm.read_register.i32(metadata !957) #12
  %and.i.i.i.i.i.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 4
  %14 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #6, !srcloc !971
  %and.i.i.i.i = and i32 %14, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #12, !srcloc !972
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !973
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %buf, ptr noundef %user_buf, i32 noundef %10) #12
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %14) #12, !srcloc !972
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !973
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %entry.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %10, %entry.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %10, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end, label %if.then11.i.i, !prof !970

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i.i = sub i32 %10, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %buf, i32 %sub.i.i
  %15 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i
  %arrayidx = getelementptr [32 x i8], ptr %buf, i32 0, i32 %10
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %arrayidx, align 1
  %call3 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef nonnull %buf, ptr noundef nonnull @.str.53, ptr noundef nonnull %path, ptr noundef nonnull %addr, ptr noundef nonnull %mask)
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call3)
  %cmp4.not = icmp eq i32 %call3, 3
  br i1 %cmp4.not, label %if.end6, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.rtw89_dev, ptr %5, i32 0, i32 1
  %17 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %18, ptr noundef nonnull @.str.54) #15
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %19 = ptrtoint ptr %path to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %path, align 1
  %chip = getelementptr inbounds %struct.rtw89_dev, ptr %5, i32 0, i32 3
  %21 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %chip, align 4
  %rf_path_num = getelementptr inbounds %struct.rtw89_chip_info, ptr %22, i32 0, i32 9
  %23 = ptrtoint ptr %rf_path_num to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %rf_path_num, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %20, i8 %24)
  %cmp8.not = icmp ult i8 %20, %24
  br i1 %cmp8.not, label %if.end15, label %do.end13

do.end13:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  %dev14 = getelementptr inbounds %struct.rtw89_dev, ptr %5, i32 0, i32 1
  %25 = ptrtoint ptr %dev14 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev14, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %26, ptr noundef nonnull @.str.57) #15
  br label %cleanup

if.end15:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  %27 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %addr, align 4
  %29 = getelementptr inbounds %struct.rtw89_debugfs_priv, ptr %3, i32 0, i32 3
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %28, ptr %29, align 4
  %31 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %mask, align 4
  %mask17 = getelementptr inbounds %struct.rtw89_debugfs_priv, ptr %3, i32 0, i32 3, i32 0, i32 1
  %33 = ptrtoint ptr %mask17 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %mask17, align 4
  %path18 = getelementptr inbounds %struct.rtw89_debugfs_priv, ptr %3, i32 0, i32 3, i32 0, i32 2
  %34 = ptrtoint ptr %path18 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %20, ptr %path18, align 4
  %dev22 = getelementptr inbounds %struct.rtw89_dev, ptr %5, i32 0, i32 1
  %35 = ptrtoint ptr %dev22 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev22, align 4
  %conv23 = zext i8 %20 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %36, ptr noundef nonnull @.str.60, i32 noundef %conv23, i32 noundef %28) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %do.end13, %do.end, %if.then11.i.i
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end13 ], [ %count, %if.end15 ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %path) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mask) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %addr) #12
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %buf) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtw89_debug_priv_write_rf_set(ptr nocapture noundef readonly %filp, ptr noundef %user_buf, i32 noundef %count, ptr nocapture noundef readnone %loff) #0 align 64 {
entry:
  %buf = alloca [32 x i8], align 1
  %addr = alloca i32, align 4
  %val = alloca i32, align 4
  %mask = alloca i32, align 4
  %path = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %buf) #12
  %4 = call ptr @memset(ptr %buf, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %addr) #12
  %5 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %addr, align 4, !annotation !968
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #12
  %6 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %val, align 4, !annotation !968
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mask) #12
  %7 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %mask, align 4, !annotation !968
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %path) #12
  %8 = ptrtoint ptr %path to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -1, ptr %path, align 1, !annotation !968
  %9 = tail call i32 @llvm.umin.i32(i32 %count, i32 31)
  call void @__check_object_size(ptr noundef nonnull %buf, i32 noundef %9, i1 noundef zeroext false) #12
  call void @__might_fault(ptr noundef nonnull @.str.36, i32 noundef 156) #12
  %call.i.i = call zeroext i1 @should_fail_usercopy() #12
  br i1 %call.i.i, label %entry.if.end.i.i_crit_edge, label %land.lhs.true.i.i

entry.if.end.i.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %10 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %user_buf, i32 %9, i32 -1226833920) #16, !srcloc !969
  %asmresult.i.i = extractvalue { i32, i32 } %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !970

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %buf, i32 noundef %9) #12
  %11 = call i32 @llvm.read_register.i32(metadata !957) #12
  %and.i.i.i.i.i.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 4
  %13 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #6, !srcloc !971
  %and.i.i.i.i = and i32 %13, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #12, !srcloc !972
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !973
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %buf, ptr noundef %user_buf, i32 noundef %9) #12
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %13) #12, !srcloc !972
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !973
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %entry.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %9, %entry.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %9, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end, label %if.then11.i.i, !prof !970

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i.i = sub i32 %9, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %buf, i32 %sub.i.i
  %14 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i
  %arrayidx = getelementptr [32 x i8], ptr %buf, i32 0, i32 %9
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %arrayidx, align 1
  %call3 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef nonnull %buf, ptr noundef nonnull @.str.62, ptr noundef nonnull %path, ptr noundef nonnull %addr, ptr noundef nonnull %mask, ptr noundef nonnull %val)
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call3)
  %cmp4.not = icmp eq i32 %call3, 4
  br i1 %cmp4.not, label %if.end6, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.rtw89_dev, ptr %3, i32 0, i32 1
  %16 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %17, ptr noundef nonnull @.str.63) #15
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %18 = ptrtoint ptr %path to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %path, align 1
  %chip = getelementptr inbounds %struct.rtw89_dev, ptr %3, i32 0, i32 3
  %20 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %chip, align 4
  %rf_path_num = getelementptr inbounds %struct.rtw89_chip_info, ptr %21, i32 0, i32 9
  %22 = ptrtoint ptr %rf_path_num to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %rf_path_num, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %19, i8 %23)
  %cmp8.not = icmp ult i8 %19, %23
  br i1 %cmp8.not, label %do.end18, label %do.end13

do.end13:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  %dev14 = getelementptr inbounds %struct.rtw89_dev, ptr %3, i32 0, i32 1
  %24 = ptrtoint ptr %dev14 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev14, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %25, ptr noundef nonnull @.str.57) #15
  br label %cleanup

do.end18:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  %conv = zext i8 %19 to i32
  %dev19 = getelementptr inbounds %struct.rtw89_dev, ptr %3, i32 0, i32 1
  %26 = ptrtoint ptr %dev19 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev19, align 4
  %28 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %addr, align 4
  %30 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %val, align 4
  %32 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %mask, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %27, ptr noundef nonnull @.str.68, i32 noundef %conv, i32 noundef %29, i32 noundef %31, i32 noundef %33) #15
  %34 = ptrtoint ptr %path to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %path, align 1
  %conv21 = zext i8 %35 to i32
  %36 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %addr, align 4
  %38 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %mask, align 4
  %40 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %val, align 4
  call fastcc void @rtw89_write_rf(ptr noundef %3, i32 noundef %conv21, i32 noundef %37, i32 noundef %39, i32 noundef %41)
  br label %cleanup

cleanup:                                          ; preds = %do.end18, %do.end13, %do.end, %if.then11.i.i
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end13 ], [ %count, %do.end18 ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %path) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mask) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %addr) #12
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %buf) #12
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rtw89_write_rf(ptr noundef %rtwdev, i32 noundef %rf_path, i32 noundef %addr, i32 noundef %mask, i32 noundef %data) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %rf_mutex = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 12
  tail call void @mutex_lock_nested(ptr noundef %rf_mutex, i32 noundef 0) #12
  %chip = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 3
  %0 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip, align 4
  %ops = getelementptr inbounds %struct.rtw89_chip_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops, align 4
  %write_rf = getelementptr inbounds %struct.rtw89_chip_ops, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %write_rf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %write_rf, align 4
  %call = tail call zeroext i1 %5(ptr noundef %rtwdev, i32 noundef %rf_path, i32 noundef %addr, i32 noundef %mask, i32 noundef %data) #12
  tail call void @mutex_unlock(ptr noundef %rf_mutex) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtw89_debug_priv_rf_reg_dump_get(ptr noundef %m, ptr nocapture noundef readnone %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %chip2 = getelementptr inbounds %struct.rtw89_dev, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %chip2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %chip2, align 4
  %rf_path_num = getelementptr inbounds %struct.rtw89_chip_info, ptr %5, i32 0, i32 9
  %6 = ptrtoint ptr %rf_path_num to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %rf_path_num, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp37.not = icmp eq i8 %7, 0
  br i1 %cmp37.not, label %entry.for.end20_crit_edge, label %for.body.lr.ph

entry.for.end20_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end20

for.body.lr.ph:                                   ; preds = %entry
  %rf_mutex.i = getelementptr inbounds %struct.rtw89_dev, ptr %3, i32 0, i32 12
  br label %for.body

for.body:                                         ; preds = %for.end17.for.body_crit_edge, %for.body.lr.ph
  %indvars.iv = phi i32 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.end17.for.body_crit_edge ]
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.70, i32 noundef %indvars.iv) #12
  br label %for.body9

for.body9:                                        ; preds = %for.body9.for.body9_crit_edge, %for.body
  %addr.036 = phi i32 [ 0, %for.body ], [ %add16, %for.body9.for.body9_crit_edge ]
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.71, i32 noundef %addr.036) #12
  tail call void @mutex_lock_nested(ptr noundef %rf_mutex.i, i32 noundef 0) #12
  %8 = ptrtoint ptr %chip2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %chip2, align 4
  %ops.i = getelementptr inbounds %struct.rtw89_chip_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ops.i, align 4
  %read_rf.i = getelementptr inbounds %struct.rtw89_chip_ops, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %read_rf.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %read_rf.i, align 4
  %call.i = tail call i32 %13(ptr noundef %3, i32 noundef %indvars.iv, i32 noundef %addr.036, i32 noundef 1048575) #12
  tail call void @mutex_unlock(ptr noundef %rf_mutex.i) #12
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.72, i32 noundef %call.i) #12
  %add.1 = or i32 %addr.036, 1
  tail call void @mutex_lock_nested(ptr noundef %rf_mutex.i, i32 noundef 0) #12
  %14 = ptrtoint ptr %chip2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %chip2, align 4
  %ops.i.1 = getelementptr inbounds %struct.rtw89_chip_info, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %ops.i.1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ops.i.1, align 4
  %read_rf.i.1 = getelementptr inbounds %struct.rtw89_chip_ops, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %read_rf.i.1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %read_rf.i.1, align 4
  %call.i.1 = tail call i32 %19(ptr noundef %3, i32 noundef %indvars.iv, i32 noundef %add.1, i32 noundef 1048575) #12
  tail call void @mutex_unlock(ptr noundef %rf_mutex.i) #12
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.72, i32 noundef %call.i.1) #12
  %add.2 = or i32 %addr.036, 2
  tail call void @mutex_lock_nested(ptr noundef %rf_mutex.i, i32 noundef 0) #12
  %20 = ptrtoint ptr %chip2 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %chip2, align 4
  %ops.i.2 = getelementptr inbounds %struct.rtw89_chip_info, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %ops.i.2 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ops.i.2, align 4
  %read_rf.i.2 = getelementptr inbounds %struct.rtw89_chip_ops, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %read_rf.i.2 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %read_rf.i.2, align 4
  %call.i.2 = tail call i32 %25(ptr noundef %3, i32 noundef %indvars.iv, i32 noundef %add.2, i32 noundef 1048575) #12
  tail call void @mutex_unlock(ptr noundef %rf_mutex.i) #12
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.72, i32 noundef %call.i.2) #12
  %add.3 = or i32 %addr.036, 3
  tail call void @mutex_lock_nested(ptr noundef %rf_mutex.i, i32 noundef 0) #12
  %26 = ptrtoint ptr %chip2 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %chip2, align 4
  %ops.i.3 = getelementptr inbounds %struct.rtw89_chip_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %ops.i.3 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ops.i.3, align 4
  %read_rf.i.3 = getelementptr inbounds %struct.rtw89_chip_ops, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %read_rf.i.3 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %read_rf.i.3, align 4
  %call.i.3 = tail call i32 %31(ptr noundef %3, i32 noundef %indvars.iv, i32 noundef %add.3, i32 noundef 1048575) #12
  tail call void @mutex_unlock(ptr noundef %rf_mutex.i) #12
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.72, i32 noundef %call.i.3) #12
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.73) #12
  %add16 = add nuw nsw i32 %addr.036, 4
  %cmp7 = icmp ult i32 %addr.036, 252
  br i1 %cmp7, label %for.body9.for.body9_crit_edge, label %for.end17

for.body9.for.body9_crit_edge:                    ; preds = %for.body9
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body9

for.end17:                                        ; preds = %for.body9
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.73) #12
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %32 = ptrtoint ptr %rf_path_num to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %rf_path_num, align 4
  %34 = zext i8 %33 to i32
  %cmp = icmp ult i32 %indvars.iv.next, %34
  br i1 %cmp, label %for.end17.for.body_crit_edge, label %for.end17.for.end20_crit_edge

for.end17.for.end20_crit_edge:                    ; preds = %for.end17
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end20

for.end17.for.body_crit_edge:                     ; preds = %for.end17
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end20:                                        ; preds = %for.end17.for.end20_crit_edge, %entry.for.end20_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtw89_debug_priv_txpwr_table_get(ptr noundef %m, ptr nocapture noundef readnone %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %mutex = getelementptr inbounds %struct.rtw89_dev, ptr %3, i32 0, i32 10
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #12
  tail call void @rtw89_leave_ps_mode(ptr noundef %3) #12
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.74) #12
  %current_band_type.i = getelementptr inbounds %struct.rtw89_dev, ptr %3, i32 0, i32 4, i32 7
  %4 = ptrtoint ptr %current_band_type.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %current_band_type.i, align 1
  %regd.i.i = getelementptr inbounds %struct.rtw89_dev, ptr %3, i32 0, i32 49
  %6 = ptrtoint ptr %regd.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regd.i.i, align 8
  %idxprom.i.i = zext i8 %5 to i32
  %arrayidx.i.i = getelementptr %struct.rtw89_regulatory, ptr %7, i32 0, i32 1, i32 %idxprom.i.i
  %8 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx.i.i, align 1
  %10 = zext i8 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.429)
  switch i8 %9, label %sw.default.i [
    i8 0, label %sw.bb.i
    i8 1, label %sw.bb2.i
    i8 2, label %sw.bb3.i
    i8 3, label %sw.bb4.i
    i8 4, label %sw.bb5.i
    i8 5, label %sw.bb6.i
    i8 6, label %sw.bb7.i
    i8 8, label %sw.bb8.i
    i8 10, label %sw.bb9.i
    i8 7, label %sw.bb10.i
    i8 9, label %sw.bb11.i
    i8 11, label %sw.bb12.i
    i8 12, label %sw.bb13.i
  ]

sw.default.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %conv.i = zext i8 %9 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.79, i32 noundef %conv.i) #12
  br label %__print_regd.exit

sw.bb.i:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.80) #12
  br label %__print_regd.exit

sw.bb2.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.81) #12
  br label %__print_regd.exit

sw.bb3.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.82) #12
  br label %__print_regd.exit

sw.bb4.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.83) #12
  br label %__print_regd.exit

sw.bb5.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.84) #12
  br label %__print_regd.exit

sw.bb6.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.85) #12
  br label %__print_regd.exit

sw.bb7.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.86) #12
  br label %__print_regd.exit

sw.bb8.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.87) #12
  br label %__print_regd.exit

sw.bb9.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.88) #12
  br label %__print_regd.exit

sw.bb10.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.89) #12
  br label %__print_regd.exit

sw.bb11.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.90) #12
  br label %__print_regd.exit

sw.bb12.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.91) #12
  br label %__print_regd.exit

sw.bb13.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.92) #12
  br label %__print_regd.exit

__print_regd.exit:                                ; preds = %sw.bb13.i, %sw.bb12.i, %sw.bb11.i, %sw.bb10.i, %sw.bb9.i, %sw.bb8.i, %sw.bb7.i, %sw.bb6.i, %sw.bb5.i, %sw.bb4.i, %sw.bb3.i, %sw.bb2.i, %sw.bb.i, %sw.default.i
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.75) #12
  tail call void @rtw89_print_sar(ptr noundef %m, ptr noundef %3) #12
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.76) #12
  %call = tail call fastcc i32 @__print_txpwr_map(ptr noundef %m, ptr noundef %3, ptr noundef nonnull @__txpwr_map_byr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %__print_regd.exit.err_crit_edge

__print_regd.exit.err_crit_edge:                  ; preds = %__print_regd.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %err

if.end:                                           ; preds = %__print_regd.exit
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.77) #12
  %call2 = tail call fastcc i32 @__print_txpwr_map(ptr noundef %m, ptr noundef %3, ptr noundef nonnull @__txpwr_map_lmt)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.err_crit_edge

if.end.err_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %err

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.78) #12
  %call6 = tail call fastcc i32 @__print_txpwr_map(ptr noundef %m, ptr noundef %3, ptr noundef nonnull @__txpwr_map_lmt_ru)
  br label %err

err:                                              ; preds = %if.end5, %if.end.err_crit_edge, %__print_regd.exit.err_crit_edge
  %ret.0 = phi i32 [ %call, %__print_regd.exit.err_crit_edge ], [ %call2, %if.end.err_crit_edge ], [ %call6, %if.end5 ]
  tail call void @mutex_unlock(ptr noundef %mutex) #12
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw89_leave_ps_mode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw89_print_sar(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__print_txpwr_map(ptr noundef %m, ptr noundef %rtwdev, ptr nocapture noundef readonly %map) unnamed_addr #0 align 64 {
entry:
  %cr.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %chip = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 3
  %0 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip, align 4
  %txpwr_factor_mac = getelementptr inbounds %struct.rtw89_chip_info, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %txpwr_factor_mac to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %txpwr_factor_mac, align 1
  %addr_to = getelementptr inbounds %struct.txpwr_map, ptr %map, i32 0, i32 3
  %4 = ptrtoint ptr %addr_to to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %addr_to, align 4
  %addr_from = getelementptr inbounds %struct.txpwr_map, ptr %map, i32 0, i32 2
  %6 = ptrtoint ptr %addr_from to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %addr_from, align 4
  %sub = add i32 %5, 4
  %add = sub i32 %sub, %7
  %call = tail call noalias ptr @vzalloc(i32 noundef %add) #17
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = ptrtoint ptr %addr_from to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %addr_from, align 4
  %10 = ptrtoint ptr %addr_to to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %addr_to, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %cmp.not84 = icmp ugt i32 %9, %11
  br i1 %cmp.not84, label %if.end.for.cond36.preheader_crit_edge, label %for.body.lr.ph

if.end.for.cond36.preheader_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond36.preheader

for.body.lr.ph:                                   ; preds = %if.end
  %hci.i.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 7
  %conv26 = zext i8 %3 to i32
  br label %for.body

for.cond36.preheader:                             ; preds = %if.end6.for.cond36.preheader_crit_edge, %if.end.for.cond36.preheader_crit_edge
  %size = getelementptr inbounds %struct.txpwr_map, ptr %map, i32 0, i32 1
  %12 = ptrtoint ptr %size to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %cmp3986.not = icmp eq i8 %13, 0
  br i1 %cmp3986.not, label %for.cond36.preheader.for.end50_crit_edge, label %for.cond36.preheader.for.body41_crit_edge

for.cond36.preheader.for.body41_crit_edge:        ; preds = %for.cond36.preheader
  br label %for.body41

for.cond36.preheader.for.end50_crit_edge:         ; preds = %for.cond36.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end50

for.body:                                         ; preds = %if.end6.for.body_crit_edge, %for.body.lr.ph
  %addr.085 = phi i32 [ %9, %for.body.lr.ph ], [ %add34, %if.end6.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cr.i) #12
  %14 = ptrtoint ptr %cr.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -1, ptr %cr.i, align 4, !annotation !968
  %call.i = call zeroext i1 @rtw89_mac_get_txpwr_cr(ptr noundef %rtwdev, i32 noundef 0, i32 noundef %addr.085, ptr noundef nonnull %cr.i) #12
  br i1 %call.i, label %rtw89_mac_txpwr_read32.exit.thread, label %if.then5

rtw89_mac_txpwr_read32.exit.thread:               ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %15 = ptrtoint ptr %cr.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %cr.i, align 4
  %17 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %hci.i.i, align 8
  %read32.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %18, i32 0, i32 9
  %19 = ptrtoint ptr %read32.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %read32.i.i, align 4
  %call.i.i = call i32 %20(ptr noundef %rtwdev, i32 noundef %16) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cr.i) #12
  br label %if.end6

if.then5:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cr.i) #12
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %rtw89_mac_txpwr_read32.exit.thread
  %val.2 = phi i32 [ -1, %if.then5 ], [ %call.i.i, %rtw89_mac_txpwr_read32.exit.thread ]
  %21 = ptrtoint ptr %addr_from to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %addr_from, align 4
  %sub8 = sub i32 %addr.085, %22
  %conv29 = and i32 %sub8, 255
  %and = and i32 %val.2, 255
  %shr27 = lshr i32 %and, %conv26
  %conv28 = trunc i32 %shr27 to i8
  %arrayidx = getelementptr i8, ptr %call, i32 %conv29
  %23 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv28, ptr %arrayidx, align 1
  %shr32 = lshr i32 %val.2, 8
  %and.1 = and i32 %shr32, 255
  %shr27.1 = lshr i32 %and.1, %conv26
  %conv28.1 = trunc i32 %shr27.1 to i8
  %add31.1 = add nuw nsw i32 %conv29, 1
  %arrayidx.1 = getelementptr i8, ptr %call, i32 %add31.1
  %24 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv28.1, ptr %arrayidx.1, align 1
  %shr32.1 = lshr i32 %val.2, 16
  %and.2 = and i32 %shr32.1, 255
  %shr27.2 = lshr i32 %and.2, %conv26
  %conv28.2 = trunc i32 %shr27.2 to i8
  %add31.2 = add nuw nsw i32 %conv29, 2
  %arrayidx.2 = getelementptr i8, ptr %call, i32 %add31.2
  %25 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv28.2, ptr %arrayidx.2, align 1
  %shr32.2 = lshr i32 %val.2, 24
  %shr27.3 = lshr i32 %shr32.2, %conv26
  %conv28.3 = trunc i32 %shr27.3 to i8
  %add31.3 = add nuw nsw i32 %conv29, 3
  %arrayidx.3 = getelementptr i8, ptr %call, i32 %add31.3
  %26 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv28.3, ptr %arrayidx.3, align 1
  %add34 = add i32 %addr.085, 4
  %27 = ptrtoint ptr %addr_to to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %addr_to, align 4
  %cmp.not = icmp ugt i32 %add34, %28
  br i1 %cmp.not, label %if.end6.for.cond36.preheader_crit_edge, label %if.end6.for.body_crit_edge

if.end6.for.body_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

if.end6.for.cond36.preheader_crit_edge:           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond36.preheader

for.body41:                                       ; preds = %__print_txpwr_ent.exit.for.body41_crit_edge, %for.cond36.preheader.for.body41_crit_edge
  %indvars.iv = phi i32 [ %indvars.iv.next, %__print_txpwr_ent.exit.for.body41_crit_edge ], [ 0, %for.cond36.preheader.for.body41_crit_edge ]
  %cur.087 = phi i8 [ %add46, %__print_txpwr_ent.exit.for.body41_crit_edge ], [ 0, %for.cond36.preheader.for.body41_crit_edge ]
  %29 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %map, align 4
  %arrayidx42 = getelementptr %struct.txpwr_ent, ptr %30, i32 %indvars.iv
  %len.i = getelementptr %struct.txpwr_ent, ptr %30, i32 %indvars.iv, i32 1
  %31 = ptrtoint ptr %len.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %len.i, align 4
  %33 = zext i8 %32 to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.430)
  switch i8 %32, label %for.body41.__print_txpwr_ent.exit_crit_edge [
    i8 2, label %sw.bb.i
    i8 4, label %sw.bb5.i
    i8 8, label %sw.bb22.i
  ]

for.body41.__print_txpwr_ent.exit_crit_edge:      ; preds = %for.body41
  call void @__sanitizer_cov_trace_pc() #14
  br label %__print_txpwr_ent.exit

sw.bb.i:                                          ; preds = %for.body41
  call void @__sanitizer_cov_trace_pc() #14
  %34 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx42, align 4
  %idxprom.i = zext i8 %cur.087 to i32
  %arrayidx.i = getelementptr i8, ptr %call, i32 %idxprom.i
  %36 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx.i, align 1
  %conv1.i = zext i8 %37 to i32
  %add.i = or i32 %idxprom.i, 1
  %arrayidx3.i = getelementptr i8, ptr %call, i32 %add.i
  %38 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx3.i, align 1
  %conv4.i = zext i8 %39 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.93, ptr noundef %35, i32 noundef %conv1.i, i32 noundef %conv4.i) #12
  br label %__print_txpwr_ent.exit

sw.bb5.i:                                         ; preds = %for.body41
  call void @__sanitizer_cov_trace_pc() #14
  %40 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx42, align 4
  %idxprom7.i = zext i8 %cur.087 to i32
  %arrayidx8.i = getelementptr i8, ptr %call, i32 %idxprom7.i
  %42 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx8.i, align 1
  %conv9.i = zext i8 %43 to i32
  %add11.i = or i32 %idxprom7.i, 1
  %arrayidx12.i = getelementptr i8, ptr %call, i32 %add11.i
  %44 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx12.i, align 1
  %conv13.i = zext i8 %45 to i32
  %add15.i = add nuw nsw i32 %idxprom7.i, 2
  %arrayidx16.i = getelementptr i8, ptr %call, i32 %add15.i
  %46 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx16.i, align 1
  %conv17.i = zext i8 %47 to i32
  %add19.i = add nuw nsw i32 %idxprom7.i, 3
  %arrayidx20.i = getelementptr i8, ptr %call, i32 %add19.i
  %48 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %arrayidx20.i, align 1
  %conv21.i = zext i8 %49 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.94, ptr noundef %41, i32 noundef %conv9.i, i32 noundef %conv13.i, i32 noundef %conv17.i, i32 noundef %conv21.i) #12
  br label %__print_txpwr_ent.exit

sw.bb22.i:                                        ; preds = %for.body41
  call void @__sanitizer_cov_trace_pc() #14
  %50 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %arrayidx42, align 4
  %idxprom24.i = zext i8 %cur.087 to i32
  %arrayidx25.i = getelementptr i8, ptr %call, i32 %idxprom24.i
  %52 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %arrayidx25.i, align 1
  %conv26.i = zext i8 %53 to i32
  %add28.i = or i32 %idxprom24.i, 1
  %arrayidx29.i = getelementptr i8, ptr %call, i32 %add28.i
  %54 = ptrtoint ptr %arrayidx29.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx29.i, align 1
  %conv30.i = zext i8 %55 to i32
  %add32.i = add nuw nsw i32 %idxprom24.i, 2
  %arrayidx33.i = getelementptr i8, ptr %call, i32 %add32.i
  %56 = ptrtoint ptr %arrayidx33.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %arrayidx33.i, align 1
  %conv34.i = zext i8 %57 to i32
  %add36.i = add nuw nsw i32 %idxprom24.i, 3
  %arrayidx37.i = getelementptr i8, ptr %call, i32 %add36.i
  %58 = ptrtoint ptr %arrayidx37.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %arrayidx37.i, align 1
  %conv38.i = zext i8 %59 to i32
  %add40.i = add nuw nsw i32 %idxprom24.i, 4
  %arrayidx41.i = getelementptr i8, ptr %call, i32 %add40.i
  %60 = ptrtoint ptr %arrayidx41.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %arrayidx41.i, align 1
  %conv42.i = zext i8 %61 to i32
  %add44.i = add nuw nsw i32 %idxprom24.i, 5
  %arrayidx45.i = getelementptr i8, ptr %call, i32 %add44.i
  %62 = ptrtoint ptr %arrayidx45.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %arrayidx45.i, align 1
  %conv46.i = zext i8 %63 to i32
  %add48.i = add nuw nsw i32 %idxprom24.i, 6
  %arrayidx49.i = getelementptr i8, ptr %call, i32 %add48.i
  %64 = ptrtoint ptr %arrayidx49.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %arrayidx49.i, align 1
  %conv50.i = zext i8 %65 to i32
  %add52.i = add nuw nsw i32 %idxprom24.i, 7
  %arrayidx53.i = getelementptr i8, ptr %call, i32 %add52.i
  %66 = ptrtoint ptr %arrayidx53.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %arrayidx53.i, align 1
  %conv54.i = zext i8 %67 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.95, ptr noundef %51, i32 noundef %conv26.i, i32 noundef %conv30.i, i32 noundef %conv34.i, i32 noundef %conv38.i, i32 noundef %conv42.i, i32 noundef %conv46.i, i32 noundef %conv50.i, i32 noundef %conv54.i) #12
  br label %__print_txpwr_ent.exit

__print_txpwr_ent.exit:                           ; preds = %sw.bb22.i, %sw.bb5.i, %sw.bb.i, %for.body41.__print_txpwr_ent.exit_crit_edge
  %retval.0.i77 = phi i8 [ 8, %sw.bb22.i ], [ 4, %sw.bb5.i ], [ 2, %sw.bb.i ], [ 0, %for.body41.__print_txpwr_ent.exit_crit_edge ]
  %add46 = add i8 %retval.0.i77, %cur.087
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %68 = ptrtoint ptr %size to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %size, align 4
  %70 = zext i8 %69 to i32
  %cmp39 = icmp ult i32 %indvars.iv.next, %70
  br i1 %cmp39, label %__print_txpwr_ent.exit.for.body41_crit_edge, label %__print_txpwr_ent.exit.for.end50_crit_edge

__print_txpwr_ent.exit.for.end50_crit_edge:       ; preds = %__print_txpwr_ent.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end50

__print_txpwr_ent.exit.for.body41_crit_edge:      ; preds = %__print_txpwr_ent.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body41

for.end50:                                        ; preds = %__print_txpwr_ent.exit.for.end50_crit_edge, %for.cond36.preheader.for.end50_crit_edge
  call void @vfree(ptr noundef nonnull %call) #12
  br label %cleanup

cleanup:                                          ; preds = %for.end50, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end50 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vzalloc(i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rtw89_mac_get_txpwr_cr(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtw89_debug_priv_mac_reg_dump_get(ptr noundef %m, ptr nocapture noundef readnone %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %4 = getelementptr inbounds %struct.rtw89_debugfs_priv, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %6)
  %7 = icmp ult i32 %6, 8
  br i1 %7, label %switch.lookup, label %sw.default

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.161) #12
  br label %cleanup

switch.lookup:                                    ; preds = %entry
  %switch.gep = getelementptr inbounds [8 x ptr], ptr @switch.table.rtw89_debug_priv_mac_reg_dump_get, i32 0, i32 %6
  %8 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %8)
  %switch.load = load ptr, ptr %switch.gep, align 4
  %switch.gep59 = getelementptr inbounds [8 x i32], ptr @switch.table.rtw89_debug_priv_mac_reg_dump_get.425, i32 0, i32 %6
  %9 = ptrtoint ptr %switch.gep59 to i32
  call void @__asan_load4_noabort(i32 %9)
  %switch.load60 = load i32, ptr %switch.gep59, align 4
  %switch.gep61 = getelementptr inbounds [8 x i32], ptr @switch.table.rtw89_debug_priv_mac_reg_dump_get.426, i32 0, i32 %6
  %10 = ptrtoint ptr %switch.gep61 to i32
  call void @__asan_load4_noabort(i32 %10)
  %switch.load62 = load i32, ptr %switch.gep61, align 4
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull %switch.load) #12
  %hci.i = getelementptr inbounds %struct.rtw89_dev, ptr %3, i32 0, i32 7
  br label %for.body11.preheader

for.body11.preheader:                             ; preds = %for.inc21.for.body11.preheader_crit_edge, %switch.lookup
  %i.058 = phi i32 [ %switch.load60, %switch.lookup ], [ %inc22, %for.inc21.for.body11.preheader_crit_edge ]
  %shl = shl i32 %i.058, 8
  %add = add nuw nsw i32 %shl, 256
  br label %for.body11

for.body11:                                       ; preds = %for.body11.for.body11_crit_edge, %for.body11.preheader
  %j.056 = phi i32 [ %add19, %for.body11.for.body11_crit_edge ], [ %shl, %for.body11.preheader ]
  %add12 = add nuw nsw i32 %j.056, 408944640
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.162, i32 noundef %add12) #12
  %11 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hci.i, align 8
  %read32.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %12, i32 0, i32 9
  %13 = ptrtoint ptr %read32.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %read32.i, align 4
  %call.i = tail call i32 %14(ptr noundef %3, i32 noundef %j.056) #12
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.163, i32 noundef %call.i) #12
  %add17.1 = or i32 %j.056, 4
  %15 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hci.i, align 8
  %read32.i.1 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %16, i32 0, i32 9
  %17 = ptrtoint ptr %read32.i.1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %read32.i.1, align 4
  %call.i.1 = tail call i32 %18(ptr noundef %3, i32 noundef %add17.1) #12
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.163, i32 noundef %call.i.1) #12
  %add17.2 = or i32 %j.056, 8
  %19 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %hci.i, align 8
  %read32.i.2 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %20, i32 0, i32 9
  %21 = ptrtoint ptr %read32.i.2 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %read32.i.2, align 4
  %call.i.2 = tail call i32 %22(ptr noundef %3, i32 noundef %add17.2) #12
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.163, i32 noundef %call.i.2) #12
  %add17.3 = or i32 %j.056, 12
  %23 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %hci.i, align 8
  %read32.i.3 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %24, i32 0, i32 9
  %25 = ptrtoint ptr %read32.i.3 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %read32.i.3, align 4
  %call.i.3 = tail call i32 %26(ptr noundef %3, i32 noundef %add17.3) #12
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.163, i32 noundef %call.i.3) #12
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.73) #12
  %add19 = add nuw nsw i32 %j.056, 16
  %cmp10 = icmp ult i32 %add19, %add
  br i1 %cmp10, label %for.body11.for.body11_crit_edge, label %for.inc21

for.body11.for.body11_crit_edge:                  ; preds = %for.body11
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body11

for.inc21:                                        ; preds = %for.body11
  %inc22 = add nuw nsw i32 %i.058, 1
  %exitcond = icmp eq i32 %i.058, %switch.load62
  br i1 %exitcond, label %for.inc21.cleanup_crit_edge, label %for.inc21.for.body11.preheader_crit_edge

for.inc21.for.body11.preheader_crit_edge:         ; preds = %for.inc21
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body11.preheader

for.inc21.cleanup_crit_edge:                      ; preds = %for.inc21
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup:                                          ; preds = %for.inc21.cleanup_crit_edge, %sw.default
  %retval.0 = phi i32 [ -22, %sw.default ], [ 0, %for.inc21.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtw89_debug_priv_mac_reg_dump_select(ptr nocapture noundef readonly %filp, ptr noundef %user_buf, i32 noundef %count, ptr nocapture noundef readnone %loff) #0 align 64 {
entry:
  %buf = alloca [32 x i8], align 1
  %sel = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %private = getelementptr inbounds %struct.seq_file, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %buf) #12
  %6 = call ptr @memset(ptr %buf, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sel) #12
  %7 = ptrtoint ptr %sel to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %sel, align 4, !annotation !968
  %8 = tail call i32 @llvm.umin.i32(i32 %count, i32 31)
  call void @__check_object_size(ptr noundef nonnull %buf, i32 noundef %8, i1 noundef zeroext false) #12
  call void @__might_fault(ptr noundef nonnull @.str.36, i32 noundef 156) #12
  %call.i.i = call zeroext i1 @should_fail_usercopy() #12
  br i1 %call.i.i, label %entry.if.end.i.i_crit_edge, label %land.lhs.true.i.i

entry.if.end.i.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %9 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %user_buf, i32 %8, i32 -1226833920) #16, !srcloc !969
  %asmresult.i.i = extractvalue { i32, i32 } %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !970

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %buf, i32 noundef %8) #12
  %10 = call i32 @llvm.read_register.i32(metadata !957) #12
  %and.i.i.i.i.i.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 4
  %12 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #6, !srcloc !971
  %and.i.i.i.i = and i32 %12, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #12, !srcloc !972
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !973
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %buf, ptr noundef %user_buf, i32 noundef %8) #12
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %12) #12, !srcloc !972
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !973
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %entry.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %8, %entry.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %8, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end, label %if.then11.i.i, !prof !970

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i.i = sub i32 %8, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %buf, i32 %sub.i.i
  %13 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i
  %arrayidx = getelementptr [32 x i8], ptr %buf, i32 0, i32 %8
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %arrayidx, align 1
  %call3 = call i32 @kstrtoint(ptr noundef nonnull %buf, i32 noundef 0, ptr noundef nonnull %sel) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %15 = ptrtoint ptr %sel to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %sel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %16)
  %17 = icmp ugt i32 %16, 7
  br i1 %17, label %do.end, label %if.end10

do.end:                                           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.rtw89_dev, ptr %5, i32 0, i32 1
  %18 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %19, ptr noundef nonnull @.str.164, i32 noundef %16) #15
  br label %cleanup

if.end10:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  %20 = getelementptr inbounds %struct.rtw89_debugfs_priv, ptr %3, i32 0, i32 3
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %16, ptr %20, align 4
  %dev14 = getelementptr inbounds %struct.rtw89_dev, ptr %5, i32 0, i32 1
  %22 = ptrtoint ptr %dev14 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev14, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %23, ptr noundef nonnull @.str.167, i32 noundef %16) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %do.end, %if.end.cleanup_crit_edge, %if.then11.i.i
  %retval.0 = phi i32 [ -22, %do.end ], [ %count, %if.end10 ], [ %call3, %if.end.cleanup_crit_edge ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sel) #12
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %buf) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtw89_debug_priv_mac_mem_dump_get(ptr noundef %m, ptr nocapture noundef readnone %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %mutex = getelementptr inbounds %struct.rtw89_dev, ptr %3, i32 0, i32 10
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #12
  tail call void @rtw89_leave_ps_mode(ptr noundef %3) #12
  %4 = getelementptr inbounds %struct.rtw89_debugfs_priv, ptr %1, i32 0, i32 3
  %sel = getelementptr inbounds %struct.rtw89_debugfs_priv, ptr %1, i32 0, i32 3, i32 0, i32 2
  %5 = ptrtoint ptr %sel to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %sel, align 4
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %4, align 4
  %len = getelementptr inbounds %struct.rtw89_debugfs_priv, ptr %1, i32 0, i32 3, i32 0, i32 1
  %9 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %len, align 4
  %div37.i = lshr i32 %10, 18
  %div138.i = and i32 %8, -262144
  %rem.i = and i32 %8, 262143
  %idxprom.i = zext i8 %6 to i32
  %arrayidx.i = getelementptr [17 x i32], ptr @mac_mem_base_addr_table, i32 0, i32 %idxprom.i
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.i, align 4
  %add2.i = add i32 %12, %div138.i
  %hci.i.i = getelementptr inbounds %struct.rtw89_dev, ptr %3, i32 0, i32 7
  %add4.i = or i32 %rem.i, 262144
  br label %for.body.i

for.body.i:                                       ; preds = %for.end15.i.for.body.i_crit_edge, %entry
  %base_addr.052.i = phi i32 [ %add2.i, %entry ], [ %add16.i, %for.end15.i.for.body.i_crit_edge ]
  %remain.051.i = phi i32 [ %10, %entry ], [ %remain.1.lcssa.i, %for.end15.i.for.body.i_crit_edge ]
  %p.050.i = phi i32 [ 0, %entry ], [ %inc18.i, %for.end15.i.for.body.i_crit_edge ]
  %13 = tail call i32 @llvm.umin.i32(i32 %remain.051.i, i32 262144) #12
  %14 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hci.i.i, align 8
  %write32.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %15, i32 0, i32 12
  %16 = ptrtoint ptr %write32.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %write32.i.i, align 4
  tail call void %17(ptr noundef %3, i32 noundef 3076, i32 noundef %base_addr.052.i) #12
  %add6.i = add nuw nsw i32 %13, 262144
  call void @__sanitizer_cov_trace_cmp4(i32 %add4.i, i32 %add6.i)
  %cmp746.i = icmp ult i32 %add4.i, %add6.i
  br i1 %cmp746.i, label %for.body.i.for.body8.i_crit_edge, label %for.body.i.for.end15.i_crit_edge

for.body.i.for.end15.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end15.i

for.body.i.for.body8.i_crit_edge:                 ; preds = %for.body.i
  br label %for.body8.i

for.body8.i:                                      ; preds = %for.end.i.for.body8.i_crit_edge, %for.body.i.for.body8.i_crit_edge
  %remain.148.i = phi i32 [ %remain.2.lcssa.i, %for.end.i.for.body8.i_crit_edge ], [ %remain.051.i, %for.body.i.for.body8.i_crit_edge ]
  %i.047.i = phi i32 [ %i.1.lcssa.i, %for.end.i.for.body8.i_crit_edge ], [ %add4.i, %for.body.i.for.body8.i_crit_edge ]
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.169, i32 noundef %i.047.i) #12
  call void @__sanitizer_cov_trace_cmp4(i32 %i.047.i, i32 %add6.i)
  %cmp1240.i = icmp ult i32 %i.047.i, %add6.i
  br i1 %cmp1240.i, label %for.body13.i, label %for.body8.i.for.end.i_crit_edge

for.body8.i.for.end.i_crit_edge:                  ; preds = %for.body8.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

for.body13.i:                                     ; preds = %for.body8.i
  %18 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hci.i.i, align 8
  %read32.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %19, i32 0, i32 9
  %20 = ptrtoint ptr %read32.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %read32.i.i, align 4
  %call.i.i = tail call i32 %21(ptr noundef %3, i32 noundef %i.047.i) #12
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.170, i32 noundef %call.i.i) #12
  %sub.i = add i32 %remain.148.i, -4
  %add14.i = add nuw nsw i32 %i.047.i, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add14.i, i32 %add6.i)
  %cmp12.i = icmp ult i32 %add14.i, %add6.i
  br i1 %cmp12.i, label %for.body13.i.1, label %for.body13.i.for.end.i_crit_edge

for.body13.i.for.end.i_crit_edge:                 ; preds = %for.body13.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

for.body13.i.1:                                   ; preds = %for.body13.i
  %22 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %hci.i.i, align 8
  %read32.i.i.1 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %23, i32 0, i32 9
  %24 = ptrtoint ptr %read32.i.i.1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %read32.i.i.1, align 4
  %call.i.i.1 = tail call i32 %25(ptr noundef %3, i32 noundef %add14.i) #12
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.170, i32 noundef %call.i.i.1) #12
  %sub.i.1 = add i32 %remain.148.i, -8
  %add14.i.1 = add nuw nsw i32 %i.047.i, 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add14.i.1, i32 %add6.i)
  %cmp12.i.1 = icmp ult i32 %add14.i.1, %add6.i
  br i1 %cmp12.i.1, label %for.body13.i.2, label %for.body13.i.1.for.end.i_crit_edge

for.body13.i.1.for.end.i_crit_edge:               ; preds = %for.body13.i.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

for.body13.i.2:                                   ; preds = %for.body13.i.1
  %26 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %hci.i.i, align 8
  %read32.i.i.2 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %27, i32 0, i32 9
  %28 = ptrtoint ptr %read32.i.i.2 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %read32.i.i.2, align 4
  %call.i.i.2 = tail call i32 %29(ptr noundef %3, i32 noundef %add14.i.1) #12
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.170, i32 noundef %call.i.i.2) #12
  %sub.i.2 = add i32 %remain.148.i, -12
  %add14.i.2 = add nuw nsw i32 %i.047.i, 12
  call void @__sanitizer_cov_trace_cmp4(i32 %add14.i.2, i32 %add6.i)
  %cmp12.i.2 = icmp ult i32 %add14.i.2, %add6.i
  br i1 %cmp12.i.2, label %for.body13.i.3, label %for.body13.i.2.for.end.i_crit_edge

for.body13.i.2.for.end.i_crit_edge:               ; preds = %for.body13.i.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

for.body13.i.3:                                   ; preds = %for.body13.i.2
  call void @__sanitizer_cov_trace_pc() #14
  %30 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %hci.i.i, align 8
  %read32.i.i.3 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %31, i32 0, i32 9
  %32 = ptrtoint ptr %read32.i.i.3 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %read32.i.i.3, align 4
  %call.i.i.3 = tail call i32 %33(ptr noundef %3, i32 noundef %add14.i.2) #12
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.170, i32 noundef %call.i.i.3) #12
  %sub.i.3 = add i32 %remain.148.i, -16
  %add14.i.3 = add nuw nsw i32 %i.047.i, 16
  br label %for.end.i

for.end.i:                                        ; preds = %for.body13.i.3, %for.body13.i.2.for.end.i_crit_edge, %for.body13.i.1.for.end.i_crit_edge, %for.body13.i.for.end.i_crit_edge, %for.body8.i.for.end.i_crit_edge
  %i.1.lcssa.i = phi i32 [ %i.047.i, %for.body8.i.for.end.i_crit_edge ], [ %add14.i, %for.body13.i.for.end.i_crit_edge ], [ %add14.i.1, %for.body13.i.1.for.end.i_crit_edge ], [ %add14.i.2, %for.body13.i.2.for.end.i_crit_edge ], [ %add14.i.3, %for.body13.i.3 ]
  %remain.2.lcssa.i = phi i32 [ %remain.148.i, %for.body8.i.for.end.i_crit_edge ], [ %sub.i, %for.body13.i.for.end.i_crit_edge ], [ %sub.i.1, %for.body13.i.1.for.end.i_crit_edge ], [ %sub.i.2, %for.body13.i.2.for.end.i_crit_edge ], [ %sub.i.3, %for.body13.i.3 ]
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.73) #12
  %cmp7.i = icmp ult i32 %i.1.lcssa.i, %add6.i
  br i1 %cmp7.i, label %for.end.i.for.body8.i_crit_edge, label %for.end.i.for.end15.i_crit_edge

for.end.i.for.end15.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end15.i

for.end.i.for.body8.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body8.i

for.end15.i:                                      ; preds = %for.end.i.for.end15.i_crit_edge, %for.body.i.for.end15.i_crit_edge
  %remain.1.lcssa.i = phi i32 [ %remain.051.i, %for.body.i.for.end15.i_crit_edge ], [ %remain.2.lcssa.i, %for.end.i.for.end15.i_crit_edge ]
  %add16.i = add i32 %base_addr.052.i, 262144
  %inc18.i = add nuw nsw i32 %p.050.i, 1
  %exitcond.i = icmp eq i32 %p.050.i, %div37.i
  br i1 %exitcond.i, label %rtw89_debug_dump_mac_mem.exit, label %for.end15.i.for.body.i_crit_edge

for.end15.i.for.body.i_crit_edge:                 ; preds = %for.end15.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

rtw89_debug_dump_mac_mem.exit:                    ; preds = %for.end15.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @mutex_unlock(ptr noundef %mutex) #12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtw89_debug_priv_mac_mem_dump_select(ptr nocapture noundef readonly %filp, ptr noundef %user_buf, i32 noundef %count, ptr nocapture noundef readnone %loff) #0 align 64 {
entry:
  %buf = alloca [32 x i8], align 1
  %sel = alloca i32, align 4
  %start_addr = alloca i32, align 4
  %len = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %private = getelementptr inbounds %struct.seq_file, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %buf) #12
  %6 = call ptr @memset(ptr %buf, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sel) #12
  %7 = ptrtoint ptr %sel to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %sel, align 4, !annotation !968
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %start_addr) #12
  %8 = ptrtoint ptr %start_addr to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %start_addr, align 4, !annotation !968
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len) #12
  %9 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %len, align 4, !annotation !968
  %10 = tail call i32 @llvm.umin.i32(i32 %count, i32 31)
  call void @__check_object_size(ptr noundef nonnull %buf, i32 noundef %10, i1 noundef zeroext false) #12
  call void @__might_fault(ptr noundef nonnull @.str.36, i32 noundef 156) #12
  %call.i.i = call zeroext i1 @should_fail_usercopy() #12
  br i1 %call.i.i, label %entry.if.end.i.i_crit_edge, label %land.lhs.true.i.i

entry.if.end.i.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %11 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %user_buf, i32 %10, i32 -1226833920) #16, !srcloc !969
  %asmresult.i.i = extractvalue { i32, i32 } %11, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !970

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %buf, i32 noundef %10) #12
  %12 = call i32 @llvm.read_register.i32(metadata !957) #12
  %and.i.i.i.i.i.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 4
  %14 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #6, !srcloc !971
  %and.i.i.i.i = and i32 %14, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #12, !srcloc !972
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !973
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %buf, ptr noundef %user_buf, i32 noundef %10) #12
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %14) #12, !srcloc !972
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !973
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %entry.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %10, %entry.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %10, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end, label %if.then11.i.i, !prof !970

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i.i = sub i32 %10, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %buf, i32 %sub.i.i
  %15 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i
  %arrayidx = getelementptr [32 x i8], ptr %buf, i32 0, i32 %10
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %arrayidx, align 1
  %call3 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef nonnull %buf, ptr noundef nonnull @.str.37, ptr noundef nonnull %sel, ptr noundef nonnull %start_addr, ptr noundef nonnull %len)
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call3)
  %cmp4.not = icmp eq i32 %call3, 3
  br i1 %cmp4.not, label %if.end6, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.rtw89_dev, ptr %5, i32 0, i32 1
  %17 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %18, ptr noundef nonnull @.str.171) #15
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %19 = ptrtoint ptr %sel to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %sel, align 4
  %conv = trunc i32 %20 to i8
  %21 = getelementptr inbounds %struct.rtw89_debugfs_priv, ptr %3, i32 0, i32 3
  %sel7 = getelementptr inbounds %struct.rtw89_debugfs_priv, ptr %3, i32 0, i32 3, i32 0, i32 2
  %22 = ptrtoint ptr %sel7 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv, ptr %sel7, align 4
  %23 = ptrtoint ptr %start_addr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %start_addr, align 4
  %25 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %21, align 4
  %26 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %len, align 4
  %len8 = getelementptr inbounds %struct.rtw89_debugfs_priv, ptr %3, i32 0, i32 3, i32 0, i32 1
  %28 = ptrtoint ptr %len8 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %len8, align 4
  %dev12 = getelementptr inbounds %struct.rtw89_dev, ptr %5, i32 0, i32 1
  %29 = ptrtoint ptr %dev12 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev12, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %30, ptr noundef nonnull @.str.174, i32 noundef %20, i32 noundef %24, i32 noundef %27) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %do.end, %if.then11.i.i
  %retval.0 = phi i32 [ -22, %do.end ], [ %count, %if.end6 ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %start_addr) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sel) #12
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %buf) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtw89_debug_priv_mac_dbg_port_dump_get(ptr noundef %m, ptr nocapture noundef readnone %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %4 = getelementptr inbounds %struct.rtw89_debugfs_priv, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %5)
  %bf.load = load i8, ptr %4, align 4
  %6 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool4.not = icmp eq i8 %6, 0
  br i1 %tobool4.not, label %entry.if.end7_crit_edge, label %if.then5

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7

if.then5:                                         ; preds = %entry
  %call.i = tail call i32 @rtw89_mac_check_mac_en(ptr noundef %3, i8 noundef zeroext 0, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.176) #12
  br label %if.end7

if.end.i:                                         ; preds = %if.then5
  %hci.i.i = getelementptr inbounds %struct.rtw89_dev, ptr %3, i32 0, i32 7
  %7 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hci.i.i, align 8
  %write32.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %8, i32 0, i32 12
  %9 = ptrtoint ptr %write32.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %write32.i.i, align 4
  tail call void %10(ptr noundef %3, i32 noundef 36112, i32 noundef -2147483648) #12
  %call30.i = tail call i64 @ktime_get() #12
  %add.i.i = add i64 %call30.i, 50000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 927) #12
  %11 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hci.i.i, align 8
  %read32.i561.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %12, i32 0, i32 9
  %13 = ptrtoint ptr %read32.i561.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %read32.i561.i, align 4
  %call.i562.i = tail call i32 %14(ptr noundef %3, i32 noundef 36112) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i562.i)
  %tobool44.not563.i = icmp sgt i32 %call.i562.i, -1
  br i1 %tobool44.not563.i, label %if.end.i.cleanup.cont.i_crit_edge, label %if.end.i.land.lhs.true.i_crit_edge

if.end.i.land.lhs.true.i_crit_edge:               ; preds = %if.end.i
  br label %land.lhs.true.i

if.end.i.cleanup.cont.i_crit_edge:                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.cont.i

land.lhs.true.i:                                  ; preds = %if.then55.i.land.lhs.true.i_crit_edge, %if.end.i.land.lhs.true.i_crit_edge
  %call48.i = tail call i64 @ktime_get() #12
  call void @__sanitizer_cov_trace_cmp8(i64 %call48.i, i64 %add.i.i)
  %cmp3.i.i = icmp sgt i64 %call48.i, %add.i.i
  br i1 %cmp3.i.i, label %for.end.i, label %if.then55.i

if.then55.i:                                      ; preds = %land.lhs.true.i
  tail call void @usleep_range_state(i32 noundef 251, i32 noundef 1000, i32 noundef 2) #12
  %15 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hci.i.i, align 8
  %read32.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %16, i32 0, i32 9
  %17 = ptrtoint ptr %read32.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %read32.i.i, align 4
  %call.i.i = tail call i32 %18(ptr noundef %3, i32 noundef 36112) #12
  %tobool44.not.i = icmp sgt i32 %call.i.i, -1
  br i1 %tobool44.not.i, label %if.then55.i.cleanup.cont.i_crit_edge, label %if.then55.i.land.lhs.true.i_crit_edge

if.then55.i.land.lhs.true.i_crit_edge:            ; preds = %if.then55.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true.i

if.then55.i.cleanup.cont.i_crit_edge:             ; preds = %if.then55.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.cont.i

for.end.i:                                        ; preds = %land.lhs.true.i
  %19 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %hci.i.i, align 8
  %read32.i3.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %20, i32 0, i32 9
  %21 = ptrtoint ptr %read32.i3.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %read32.i3.i, align 4
  %call.i4.i = tail call i32 %22(ptr noundef %3, i32 noundef 36112) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i4.i)
  %tobool59.not.i = icmp sgt i32 %call.i4.i, -1
  br i1 %tobool59.not.i, label %for.end.i.cleanup.cont.i_crit_edge, label %cleanup.thread.i

for.end.i.cleanup.cont.i_crit_edge:               ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.cont.i

cleanup.thread.i:                                 ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %dev.i = getelementptr inbounds %struct.rtw89_dev, ptr %3, i32 0, i32 1
  %23 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.177, ptr noundef nonnull @.str.180, ptr noundef nonnull @.str.181, i32 noundef 0) #15
  br label %if.end7

cleanup.cont.i:                                   ; preds = %for.end.i.cleanup.cont.i_crit_edge, %if.then55.i.cleanup.cont.i_crit_edge, %if.end.i.cleanup.cont.i_crit_edge
  %25 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %hci.i.i, align 8
  %read32.i6.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %26, i32 0, i32 9
  %27 = ptrtoint ptr %read32.i6.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %read32.i6.i, align 4
  %call.i7.i = tail call i32 %28(ptr noundef %3, i32 noundef 36116) #12
  %29 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %hci.i.i, align 8
  %write32.i9.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %30, i32 0, i32 12
  %31 = ptrtoint ptr %write32.i9.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %write32.i9.i, align 4
  tail call void %32(ptr noundef %3, i32 noundef 36112, i32 noundef -2147483647) #12
  %call116.i = tail call i64 @ktime_get() #12
  %add.i10.i = add i64 %call116.i, 50000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 927) #12
  %33 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %hci.i.i, align 8
  %read32.i12564.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %34, i32 0, i32 9
  %35 = ptrtoint ptr %read32.i12564.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %read32.i12564.i, align 4
  %call.i13565.i = tail call i32 %36(ptr noundef %3, i32 noundef 36112) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i13565.i)
  %tobool133.not566.i = icmp sgt i32 %call.i13565.i, -1
  br i1 %tobool133.not566.i, label %cleanup.cont.i.cleanup.cont232.i_crit_edge, label %cleanup.cont.i.land.lhs.true137.i_crit_edge

cleanup.cont.i.land.lhs.true137.i_crit_edge:      ; preds = %cleanup.cont.i
  br label %land.lhs.true137.i

cleanup.cont.i.cleanup.cont232.i_crit_edge:       ; preds = %cleanup.cont.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.cont232.i

land.lhs.true137.i:                               ; preds = %if.then145.i.land.lhs.true137.i_crit_edge, %cleanup.cont.i.land.lhs.true137.i_crit_edge
  %call138.i = tail call i64 @ktime_get() #12
  call void @__sanitizer_cov_trace_cmp8(i64 %call138.i, i64 %add.i10.i)
  %cmp3.i15.i = icmp sgt i64 %call138.i, %add.i10.i
  br i1 %cmp3.i15.i, label %for.end149.i, label %if.then145.i

if.then145.i:                                     ; preds = %land.lhs.true137.i
  tail call void @usleep_range_state(i32 noundef 251, i32 noundef 1000, i32 noundef 2) #12
  %37 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %hci.i.i, align 8
  %read32.i12.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %38, i32 0, i32 9
  %39 = ptrtoint ptr %read32.i12.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %read32.i12.i, align 4
  %call.i13.i = tail call i32 %40(ptr noundef %3, i32 noundef 36112) #12
  %tobool133.not.i = icmp sgt i32 %call.i13.i, -1
  br i1 %tobool133.not.i, label %if.then145.i.cleanup.cont232.i_crit_edge, label %if.then145.i.land.lhs.true137.i_crit_edge

if.then145.i.land.lhs.true137.i_crit_edge:        ; preds = %if.then145.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true137.i

if.then145.i.cleanup.cont232.i_crit_edge:         ; preds = %if.then145.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.cont232.i

for.end149.i:                                     ; preds = %land.lhs.true137.i
  %41 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %hci.i.i, align 8
  %read32.i19.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %42, i32 0, i32 9
  %43 = ptrtoint ptr %read32.i19.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %read32.i19.i, align 4
  %call.i20.i = tail call i32 %44(ptr noundef %3, i32 noundef 36112) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i20.i)
  %tobool152.not.i = icmp sgt i32 %call.i20.i, -1
  br i1 %tobool152.not.i, label %for.end149.i.cleanup.cont232.i_crit_edge, label %cleanup164.thread.i

for.end149.i.cleanup.cont232.i_crit_edge:         ; preds = %for.end149.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.cont232.i

cleanup164.thread.i:                              ; preds = %for.end149.i
  call void @__sanitizer_cov_trace_pc() #14
  %dev160.i = getelementptr inbounds %struct.rtw89_dev, ptr %3, i32 0, i32 1
  %45 = ptrtoint ptr %dev160.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev160.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %46, ptr noundef nonnull @.str.177, ptr noundef nonnull @.str.180, ptr noundef nonnull @.str.181, i32 noundef 1) #15
  br label %if.end7

cleanup.cont232.i:                                ; preds = %for.end149.i.cleanup.cont232.i_crit_edge, %if.then145.i.cleanup.cont232.i_crit_edge, %cleanup.cont.i.cleanup.cont232.i_crit_edge
  %47 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %hci.i.i, align 8
  %read32.i22.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %48, i32 0, i32 9
  %49 = ptrtoint ptr %read32.i22.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %read32.i22.i, align 4
  %call.i23.i = tail call i32 %50(ptr noundef %3, i32 noundef 36116) #12
  %and188.i = and i32 %call.i7.i, 4095
  %and206.i = lshr i32 %call.i7.i, 16
  %shr207.i = and i32 %and206.i, 4095
  %and224.i = and i32 %call.i23.i, 8191
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.184, ptr noundef nonnull @.str.180, i32 noundef %and188.i) #12
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.185, ptr noundef nonnull @.str.180, i32 noundef %shr207.i) #12
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.186, ptr noundef nonnull @.str.180, i32 noundef %and224.i) #12
  %51 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %hci.i.i, align 8
  %write32.i25.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %52, i32 0, i32 12
  %53 = ptrtoint ptr %write32.i25.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %write32.i25.i, align 4
  tail call void %54(ptr noundef %3, i32 noundef 37136, i32 noundef -2147483648) #12
  %call281.i = tail call i64 @ktime_get() #12
  %add.i26.i = add i64 %call281.i, 50000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 928) #12
  %55 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %hci.i.i, align 8
  %read32.i28567.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %56, i32 0, i32 9
  %57 = ptrtoint ptr %read32.i28567.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %read32.i28567.i, align 4
  %call.i29568.i = tail call i32 %58(ptr noundef %3, i32 noundef 37136) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i29568.i)
  %tobool298.not569.i = icmp sgt i32 %call.i29568.i, -1
  br i1 %tobool298.not569.i, label %cleanup.cont232.i.cleanup.cont336.i_crit_edge, label %cleanup.cont232.i.land.lhs.true302.i_crit_edge

cleanup.cont232.i.land.lhs.true302.i_crit_edge:   ; preds = %cleanup.cont232.i
  br label %land.lhs.true302.i

cleanup.cont232.i.cleanup.cont336.i_crit_edge:    ; preds = %cleanup.cont232.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.cont336.i

land.lhs.true302.i:                               ; preds = %if.then310.i.land.lhs.true302.i_crit_edge, %cleanup.cont232.i.land.lhs.true302.i_crit_edge
  %call303.i = tail call i64 @ktime_get() #12
  call void @__sanitizer_cov_trace_cmp8(i64 %call303.i, i64 %add.i26.i)
  %cmp3.i31.i = icmp sgt i64 %call303.i, %add.i26.i
  br i1 %cmp3.i31.i, label %for.end314.i, label %if.then310.i

if.then310.i:                                     ; preds = %land.lhs.true302.i
  tail call void @usleep_range_state(i32 noundef 251, i32 noundef 1000, i32 noundef 2) #12
  %59 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %hci.i.i, align 8
  %read32.i28.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %60, i32 0, i32 9
  %61 = ptrtoint ptr %read32.i28.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %read32.i28.i, align 4
  %call.i29.i = tail call i32 %62(ptr noundef %3, i32 noundef 37136) #12
  %tobool298.not.i = icmp sgt i32 %call.i29.i, -1
  br i1 %tobool298.not.i, label %if.then310.i.cleanup.cont336.i_crit_edge, label %if.then310.i.land.lhs.true302.i_crit_edge

if.then310.i.land.lhs.true302.i_crit_edge:        ; preds = %if.then310.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true302.i

if.then310.i.cleanup.cont336.i_crit_edge:         ; preds = %if.then310.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.cont336.i

for.end314.i:                                     ; preds = %land.lhs.true302.i
  %63 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %hci.i.i, align 8
  %read32.i35.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %64, i32 0, i32 9
  %65 = ptrtoint ptr %read32.i35.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %read32.i35.i, align 4
  %call.i36.i = tail call i32 %66(ptr noundef %3, i32 noundef 37136) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i36.i)
  %tobool317.not.i = icmp sgt i32 %call.i36.i, -1
  br i1 %tobool317.not.i, label %for.end314.i.cleanup.cont336.i_crit_edge, label %cleanup329.thread.i

for.end314.i.cleanup.cont336.i_crit_edge:         ; preds = %for.end314.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.cont336.i

cleanup329.thread.i:                              ; preds = %for.end314.i
  call void @__sanitizer_cov_trace_pc() #14
  %dev325.i = getelementptr inbounds %struct.rtw89_dev, ptr %3, i32 0, i32 1
  %67 = ptrtoint ptr %dev325.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %dev325.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %68, ptr noundef nonnull @.str.177, ptr noundef nonnull @.str.189, ptr noundef nonnull @.str.181, i32 noundef 0) #15
  br label %if.end7

cleanup.cont336.i:                                ; preds = %for.end314.i.cleanup.cont336.i_crit_edge, %if.then310.i.cleanup.cont336.i_crit_edge, %cleanup.cont232.i.cleanup.cont336.i_crit_edge
  %69 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %hci.i.i, align 8
  %read32.i38.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %70, i32 0, i32 9
  %71 = ptrtoint ptr %read32.i38.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %read32.i38.i, align 4
  %call.i39.i = tail call i32 %72(ptr noundef %3, i32 noundef 37140) #12
  %73 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %hci.i.i, align 8
  %write32.i41.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %74, i32 0, i32 12
  %75 = ptrtoint ptr %write32.i41.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %write32.i41.i, align 4
  tail call void %76(ptr noundef %3, i32 noundef 37136, i32 noundef -2147483647) #12
  %call380.i = tail call i64 @ktime_get() #12
  %add.i42.i = add i64 %call380.i, 50000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 928) #12
  %77 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %hci.i.i, align 8
  %read32.i44570.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %78, i32 0, i32 9
  %79 = ptrtoint ptr %read32.i44570.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %read32.i44570.i, align 4
  %call.i45571.i = tail call i32 %80(ptr noundef %3, i32 noundef 37136) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i45571.i)
  %tobool397.not572.i = icmp sgt i32 %call.i45571.i, -1
  br i1 %tobool397.not572.i, label %cleanup.cont336.i.cleanup490.i_crit_edge, label %cleanup.cont336.i.land.lhs.true401.i_crit_edge

cleanup.cont336.i.land.lhs.true401.i_crit_edge:   ; preds = %cleanup.cont336.i
  br label %land.lhs.true401.i

cleanup.cont336.i.cleanup490.i_crit_edge:         ; preds = %cleanup.cont336.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup490.i

land.lhs.true401.i:                               ; preds = %if.then409.i.land.lhs.true401.i_crit_edge, %cleanup.cont336.i.land.lhs.true401.i_crit_edge
  %call402.i = tail call i64 @ktime_get() #12
  call void @__sanitizer_cov_trace_cmp8(i64 %call402.i, i64 %add.i42.i)
  %cmp3.i47.i = icmp sgt i64 %call402.i, %add.i42.i
  br i1 %cmp3.i47.i, label %for.end413.i, label %if.then409.i

if.then409.i:                                     ; preds = %land.lhs.true401.i
  tail call void @usleep_range_state(i32 noundef 251, i32 noundef 1000, i32 noundef 2) #12
  %81 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %hci.i.i, align 8
  %read32.i44.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %82, i32 0, i32 9
  %83 = ptrtoint ptr %read32.i44.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %read32.i44.i, align 4
  %call.i45.i = tail call i32 %84(ptr noundef %3, i32 noundef 37136) #12
  %tobool397.not.i = icmp sgt i32 %call.i45.i, -1
  br i1 %tobool397.not.i, label %if.then409.i.cleanup490.i_crit_edge, label %if.then409.i.land.lhs.true401.i_crit_edge

if.then409.i.land.lhs.true401.i_crit_edge:        ; preds = %if.then409.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true401.i

if.then409.i.cleanup490.i_crit_edge:              ; preds = %if.then409.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup490.i

for.end413.i:                                     ; preds = %land.lhs.true401.i
  %85 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %hci.i.i, align 8
  %read32.i51.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %86, i32 0, i32 9
  %87 = ptrtoint ptr %read32.i51.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %read32.i51.i, align 4
  %call.i52.i = tail call i32 %88(ptr noundef %3, i32 noundef 37136) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i52.i)
  %tobool416.not.i = icmp sgt i32 %call.i52.i, -1
  br i1 %tobool416.not.i, label %for.end413.i.cleanup490.i_crit_edge, label %cleanup428.thread.i

for.end413.i.cleanup490.i_crit_edge:              ; preds = %for.end413.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup490.i

cleanup428.thread.i:                              ; preds = %for.end413.i
  call void @__sanitizer_cov_trace_pc() #14
  %dev424.i = getelementptr inbounds %struct.rtw89_dev, ptr %3, i32 0, i32 1
  %89 = ptrtoint ptr %dev424.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %dev424.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %90, ptr noundef nonnull @.str.177, ptr noundef nonnull @.str.189, ptr noundef nonnull @.str.181, i32 noundef 1) #15
  br label %if.end7

cleanup490.i:                                     ; preds = %for.end413.i.cleanup490.i_crit_edge, %if.then409.i.cleanup490.i_crit_edge, %cleanup.cont336.i.cleanup490.i_crit_edge
  %91 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %hci.i.i, align 8
  %read32.i54364.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %92, i32 0, i32 9
  %93 = ptrtoint ptr %read32.i54364.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %read32.i54364.i, align 4
  %call.i55365.i = tail call i32 %94(ptr noundef %3, i32 noundef 37140) #12
  %and452.i = and i32 %call.i39.i, 4095
  %and470.i = lshr i32 %call.i39.i, 16
  %shr471.i = and i32 %and470.i, 4095
  %and488.i = and i32 %call.i55365.i, 8191
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.184, ptr noundef nonnull @.str.189, i32 noundef %and452.i) #12
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.185, ptr noundef nonnull @.str.189, i32 noundef %shr471.i) #12
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.186, ptr noundef nonnull @.str.189, i32 noundef %and488.i) #12
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %cleanup490.i
  %quota_id.0593.i = phi i32 [ 0, %cleanup490.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %95 = zext i32 %quota_id.0593.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %95, ptr @__sancov_gen_cov_switch_values.431)
  switch i32 %quota_id.0593.i, label %for.body.i.for.inc.i_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb637.i
    i32 2, label %sw.bb779.i
    i32 3, label %sw.bb921.i
    i32 4, label %sw.bb1063.i
  ]

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

sw.bb.i:                                          ; preds = %for.body.i
  %96 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %hci.i.i, align 8
  %write32.i57.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %97, i32 0, i32 12
  %98 = ptrtoint ptr %write32.i57.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %write32.i57.i, align 4
  tail call void %99(ptr noundef %3, i32 noundef 36112, i32 noundef -2147418112) #12
  %call542.i = tail call i64 @ktime_get() #12
  %add.i58.i = add i64 %call542.i, 50000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 931) #12
  %100 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %hci.i.i, align 8
  %read32.i60585.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %101, i32 0, i32 9
  %102 = ptrtoint ptr %read32.i60585.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %read32.i60585.i, align 4
  %call.i61586.i = tail call i32 %103(ptr noundef %3, i32 noundef 36112) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i61586.i)
  %tobool559.not587.i = icmp sgt i32 %call.i61586.i, -1
  br i1 %tobool559.not587.i, label %sw.bb.i.for.inc.sink.split.i_crit_edge, label %sw.bb.i.land.lhs.true563.i_crit_edge

sw.bb.i.land.lhs.true563.i_crit_edge:             ; preds = %sw.bb.i
  br label %land.lhs.true563.i

sw.bb.i.for.inc.sink.split.i_crit_edge:           ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.sink.split.i

land.lhs.true563.i:                               ; preds = %if.then571.i.land.lhs.true563.i_crit_edge, %sw.bb.i.land.lhs.true563.i_crit_edge
  %call564.i = tail call i64 @ktime_get() #12
  call void @__sanitizer_cov_trace_cmp8(i64 %call564.i, i64 %add.i58.i)
  %cmp3.i63.i = icmp sgt i64 %call564.i, %add.i58.i
  br i1 %cmp3.i63.i, label %for.end575.i, label %if.then571.i

if.then571.i:                                     ; preds = %land.lhs.true563.i
  tail call void @usleep_range_state(i32 noundef 251, i32 noundef 1000, i32 noundef 2) #12
  %104 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %hci.i.i, align 8
  %read32.i60.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %105, i32 0, i32 9
  %106 = ptrtoint ptr %read32.i60.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %read32.i60.i, align 4
  %call.i61.i = tail call i32 %107(ptr noundef %3, i32 noundef 36112) #12
  %tobool559.not.i = icmp sgt i32 %call.i61.i, -1
  br i1 %tobool559.not.i, label %if.then571.i.for.inc.sink.split.i_crit_edge, label %if.then571.i.land.lhs.true563.i_crit_edge

if.then571.i.land.lhs.true563.i_crit_edge:        ; preds = %if.then571.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true563.i

if.then571.i.for.inc.sink.split.i_crit_edge:      ; preds = %if.then571.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.sink.split.i

for.end575.i:                                     ; preds = %land.lhs.true563.i
  %108 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %hci.i.i, align 8
  %read32.i67.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %109, i32 0, i32 9
  %110 = ptrtoint ptr %read32.i67.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %read32.i67.i, align 4
  %call.i68.i = tail call i32 %111(ptr noundef %3, i32 noundef 36112) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i68.i)
  %tobool578.not.i = icmp sgt i32 %call.i68.i, -1
  br i1 %tobool578.not.i, label %for.end575.i.for.inc.sink.split.i_crit_edge, label %cleanup590.thread.i

for.end575.i.for.inc.sink.split.i_crit_edge:      ; preds = %for.end575.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.sink.split.i

cleanup590.thread.i:                              ; preds = %for.end575.i
  call void @__sanitizer_cov_trace_pc() #14
  %dev586.i = getelementptr inbounds %struct.rtw89_dev, ptr %3, i32 0, i32 1
  %112 = ptrtoint ptr %dev586.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %dev586.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %113, ptr noundef nonnull @.str.177, ptr noundef nonnull @.str.180, ptr noundef nonnull @.str.194, i32 noundef 0) #15
  br label %if.end7

sw.bb637.i:                                       ; preds = %for.body.i
  %114 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %hci.i.i, align 8
  %write32.i73.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %115, i32 0, i32 12
  %116 = ptrtoint ptr %write32.i73.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %write32.i73.i, align 4
  tail call void %117(ptr noundef %3, i32 noundef 36112, i32 noundef -2147418111) #12
  %call681.i = tail call i64 @ktime_get() #12
  %add.i74.i = add i64 %call681.i, 50000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 932) #12
  %118 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %hci.i.i, align 8
  %read32.i76582.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %119, i32 0, i32 9
  %120 = ptrtoint ptr %read32.i76582.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %read32.i76582.i, align 4
  %call.i77583.i = tail call i32 %121(ptr noundef %3, i32 noundef 36112) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i77583.i)
  %tobool699.not584.i = icmp sgt i32 %call.i77583.i, -1
  br i1 %tobool699.not584.i, label %sw.bb637.i.for.inc.sink.split.i_crit_edge, label %sw.bb637.i.land.lhs.true703.i_crit_edge

sw.bb637.i.land.lhs.true703.i_crit_edge:          ; preds = %sw.bb637.i
  br label %land.lhs.true703.i

sw.bb637.i.for.inc.sink.split.i_crit_edge:        ; preds = %sw.bb637.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.sink.split.i

land.lhs.true703.i:                               ; preds = %if.then712.i.land.lhs.true703.i_crit_edge, %sw.bb637.i.land.lhs.true703.i_crit_edge
  %call704.i = tail call i64 @ktime_get() #12
  call void @__sanitizer_cov_trace_cmp8(i64 %call704.i, i64 %add.i74.i)
  %cmp3.i79.i = icmp sgt i64 %call704.i, %add.i74.i
  br i1 %cmp3.i79.i, label %for.end716.i, label %if.then712.i

if.then712.i:                                     ; preds = %land.lhs.true703.i
  tail call void @usleep_range_state(i32 noundef 251, i32 noundef 1000, i32 noundef 2) #12
  %122 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %hci.i.i, align 8
  %read32.i76.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %123, i32 0, i32 9
  %124 = ptrtoint ptr %read32.i76.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %read32.i76.i, align 4
  %call.i77.i = tail call i32 %125(ptr noundef %3, i32 noundef 36112) #12
  %tobool699.not.i = icmp sgt i32 %call.i77.i, -1
  br i1 %tobool699.not.i, label %if.then712.i.for.inc.sink.split.i_crit_edge, label %if.then712.i.land.lhs.true703.i_crit_edge

if.then712.i.land.lhs.true703.i_crit_edge:        ; preds = %if.then712.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true703.i

if.then712.i.for.inc.sink.split.i_crit_edge:      ; preds = %if.then712.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.sink.split.i

for.end716.i:                                     ; preds = %land.lhs.true703.i
  %126 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %hci.i.i, align 8
  %read32.i83.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %127, i32 0, i32 9
  %128 = ptrtoint ptr %read32.i83.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %read32.i83.i, align 4
  %call.i84.i = tail call i32 %129(ptr noundef %3, i32 noundef 36112) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i84.i)
  %tobool719.not.i = icmp sgt i32 %call.i84.i, -1
  br i1 %tobool719.not.i, label %for.end716.i.for.inc.sink.split.i_crit_edge, label %cleanup731.thread.i

for.end716.i.for.inc.sink.split.i_crit_edge:      ; preds = %for.end716.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.sink.split.i

cleanup731.thread.i:                              ; preds = %for.end716.i
  call void @__sanitizer_cov_trace_pc() #14
  %dev727.i = getelementptr inbounds %struct.rtw89_dev, ptr %3, i32 0, i32 1
  %130 = ptrtoint ptr %dev727.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %dev727.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %131, ptr noundef nonnull @.str.177, ptr noundef nonnull @.str.180, ptr noundef nonnull @.str.194, i32 noundef 1) #15
  br label %if.end7

sw.bb779.i:                                       ; preds = %for.body.i
  %132 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %hci.i.i, align 8
  %write32.i89.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %133, i32 0, i32 12
  %134 = ptrtoint ptr %write32.i89.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %write32.i89.i, align 4
  tail call void %135(ptr noundef %3, i32 noundef 36112, i32 noundef -2147418110) #12
  %call823.i = tail call i64 @ktime_get() #12
  %add.i90.i = add i64 %call823.i, 50000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 933) #12
  %136 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %hci.i.i, align 8
  %read32.i92579.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %137, i32 0, i32 9
  %138 = ptrtoint ptr %read32.i92579.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %read32.i92579.i, align 4
  %call.i93580.i = tail call i32 %139(ptr noundef %3, i32 noundef 36112) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i93580.i)
  %tobool841.not581.i = icmp sgt i32 %call.i93580.i, -1
  br i1 %tobool841.not581.i, label %sw.bb779.i.for.inc.sink.split.i_crit_edge, label %sw.bb779.i.land.lhs.true845.i_crit_edge

sw.bb779.i.land.lhs.true845.i_crit_edge:          ; preds = %sw.bb779.i
  br label %land.lhs.true845.i

sw.bb779.i.for.inc.sink.split.i_crit_edge:        ; preds = %sw.bb779.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.sink.split.i

land.lhs.true845.i:                               ; preds = %if.then854.i.land.lhs.true845.i_crit_edge, %sw.bb779.i.land.lhs.true845.i_crit_edge
  %call846.i = tail call i64 @ktime_get() #12
  call void @__sanitizer_cov_trace_cmp8(i64 %call846.i, i64 %add.i90.i)
  %cmp3.i95.i = icmp sgt i64 %call846.i, %add.i90.i
  br i1 %cmp3.i95.i, label %for.end858.i, label %if.then854.i

if.then854.i:                                     ; preds = %land.lhs.true845.i
  tail call void @usleep_range_state(i32 noundef 251, i32 noundef 1000, i32 noundef 2) #12
  %140 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %hci.i.i, align 8
  %read32.i92.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %141, i32 0, i32 9
  %142 = ptrtoint ptr %read32.i92.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %read32.i92.i, align 4
  %call.i93.i = tail call i32 %143(ptr noundef %3, i32 noundef 36112) #12
  %tobool841.not.i = icmp sgt i32 %call.i93.i, -1
  br i1 %tobool841.not.i, label %if.then854.i.for.inc.sink.split.i_crit_edge, label %if.then854.i.land.lhs.true845.i_crit_edge

if.then854.i.land.lhs.true845.i_crit_edge:        ; preds = %if.then854.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true845.i

if.then854.i.for.inc.sink.split.i_crit_edge:      ; preds = %if.then854.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.sink.split.i

for.end858.i:                                     ; preds = %land.lhs.true845.i
  %144 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %hci.i.i, align 8
  %read32.i99.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %145, i32 0, i32 9
  %146 = ptrtoint ptr %read32.i99.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %read32.i99.i, align 4
  %call.i100.i = tail call i32 %147(ptr noundef %3, i32 noundef 36112) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i100.i)
  %tobool861.not.i = icmp sgt i32 %call.i100.i, -1
  br i1 %tobool861.not.i, label %for.end858.i.for.inc.sink.split.i_crit_edge, label %cleanup873.thread.i

for.end858.i.for.inc.sink.split.i_crit_edge:      ; preds = %for.end858.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.sink.split.i

cleanup873.thread.i:                              ; preds = %for.end858.i
  call void @__sanitizer_cov_trace_pc() #14
  %dev869.i = getelementptr inbounds %struct.rtw89_dev, ptr %3, i32 0, i32 1
  %148 = ptrtoint ptr %dev869.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %dev869.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %149, ptr noundef nonnull @.str.177, ptr noundef nonnull @.str.180, ptr noundef nonnull @.str.194, i32 noundef 2) #15
  br label %if.end7

sw.bb921.i:                                       ; preds = %for.body.i
  %150 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %hci.i.i, align 8
  %write32.i105.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %151, i32 0, i32 12
  %152 = ptrtoint ptr %write32.i105.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %write32.i105.i, align 4
  tail call void %153(ptr noundef %3, i32 noundef 36112, i32 noundef -2147418109) #12
  %call965.i = tail call i64 @ktime_get() #12
  %add.i106.i = add i64 %call965.i, 50000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 934) #12
  %154 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %hci.i.i, align 8
  %read32.i108576.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %155, i32 0, i32 9
  %156 = ptrtoint ptr %read32.i108576.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %read32.i108576.i, align 4
  %call.i109577.i = tail call i32 %157(ptr noundef %3, i32 noundef 36112) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i109577.i)
  %tobool983.not578.i = icmp sgt i32 %call.i109577.i, -1
  br i1 %tobool983.not578.i, label %sw.bb921.i.for.inc.sink.split.i_crit_edge, label %sw.bb921.i.land.lhs.true987.i_crit_edge

sw.bb921.i.land.lhs.true987.i_crit_edge:          ; preds = %sw.bb921.i
  br label %land.lhs.true987.i

sw.bb921.i.for.inc.sink.split.i_crit_edge:        ; preds = %sw.bb921.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.sink.split.i

land.lhs.true987.i:                               ; preds = %if.then996.i.land.lhs.true987.i_crit_edge, %sw.bb921.i.land.lhs.true987.i_crit_edge
  %call988.i = tail call i64 @ktime_get() #12
  call void @__sanitizer_cov_trace_cmp8(i64 %call988.i, i64 %add.i106.i)
  %cmp3.i111.i = icmp sgt i64 %call988.i, %add.i106.i
  br i1 %cmp3.i111.i, label %for.end1000.i, label %if.then996.i

if.then996.i:                                     ; preds = %land.lhs.true987.i
  tail call void @usleep_range_state(i32 noundef 251, i32 noundef 1000, i32 noundef 2) #12
  %158 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %hci.i.i, align 8
  %read32.i108.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %159, i32 0, i32 9
  %160 = ptrtoint ptr %read32.i108.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %read32.i108.i, align 4
  %call.i109.i = tail call i32 %161(ptr noundef %3, i32 noundef 36112) #12
  %tobool983.not.i = icmp sgt i32 %call.i109.i, -1
  br i1 %tobool983.not.i, label %if.then996.i.for.inc.sink.split.i_crit_edge, label %if.then996.i.land.lhs.true987.i_crit_edge

if.then996.i.land.lhs.true987.i_crit_edge:        ; preds = %if.then996.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true987.i

if.then996.i.for.inc.sink.split.i_crit_edge:      ; preds = %if.then996.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.sink.split.i

for.end1000.i:                                    ; preds = %land.lhs.true987.i
  %162 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %hci.i.i, align 8
  %read32.i115.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %163, i32 0, i32 9
  %164 = ptrtoint ptr %read32.i115.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %read32.i115.i, align 4
  %call.i116.i = tail call i32 %165(ptr noundef %3, i32 noundef 36112) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i116.i)
  %tobool1003.not.i = icmp sgt i32 %call.i116.i, -1
  br i1 %tobool1003.not.i, label %for.end1000.i.for.inc.sink.split.i_crit_edge, label %cleanup1015.thread.i

for.end1000.i.for.inc.sink.split.i_crit_edge:     ; preds = %for.end1000.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.sink.split.i

cleanup1015.thread.i:                             ; preds = %for.end1000.i
  call void @__sanitizer_cov_trace_pc() #14
  %dev1011.i = getelementptr inbounds %struct.rtw89_dev, ptr %3, i32 0, i32 1
  %166 = ptrtoint ptr %dev1011.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %dev1011.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %167, ptr noundef nonnull @.str.177, ptr noundef nonnull @.str.180, ptr noundef nonnull @.str.194, i32 noundef 3) #15
  br label %if.end7

sw.bb1063.i:                                      ; preds = %for.body.i
  %168 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %hci.i.i, align 8
  %write32.i121.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %169, i32 0, i32 12
  %170 = ptrtoint ptr %write32.i121.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %write32.i121.i, align 4
  tail call void %171(ptr noundef %3, i32 noundef 36112, i32 noundef -2147418108) #12
  %call1107.i = tail call i64 @ktime_get() #12
  %add.i122.i = add i64 %call1107.i, 50000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 935) #12
  %172 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %hci.i.i, align 8
  %read32.i124573.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %173, i32 0, i32 9
  %174 = ptrtoint ptr %read32.i124573.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %read32.i124573.i, align 4
  %call.i125574.i = tail call i32 %175(ptr noundef %3, i32 noundef 36112) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i125574.i)
  %tobool1125.not575.i = icmp sgt i32 %call.i125574.i, -1
  br i1 %tobool1125.not575.i, label %sw.bb1063.i.for.inc.sink.split.i_crit_edge, label %sw.bb1063.i.land.lhs.true1129.i_crit_edge

sw.bb1063.i.land.lhs.true1129.i_crit_edge:        ; preds = %sw.bb1063.i
  br label %land.lhs.true1129.i

sw.bb1063.i.for.inc.sink.split.i_crit_edge:       ; preds = %sw.bb1063.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.sink.split.i

land.lhs.true1129.i:                              ; preds = %if.then1138.i.land.lhs.true1129.i_crit_edge, %sw.bb1063.i.land.lhs.true1129.i_crit_edge
  %call1130.i = tail call i64 @ktime_get() #12
  call void @__sanitizer_cov_trace_cmp8(i64 %call1130.i, i64 %add.i122.i)
  %cmp3.i127.i = icmp sgt i64 %call1130.i, %add.i122.i
  br i1 %cmp3.i127.i, label %for.end1142.i, label %if.then1138.i

if.then1138.i:                                    ; preds = %land.lhs.true1129.i
  tail call void @usleep_range_state(i32 noundef 251, i32 noundef 1000, i32 noundef 2) #12
  %176 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %hci.i.i, align 8
  %read32.i124.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %177, i32 0, i32 9
  %178 = ptrtoint ptr %read32.i124.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %read32.i124.i, align 4
  %call.i125.i = tail call i32 %179(ptr noundef %3, i32 noundef 36112) #12
  %tobool1125.not.i = icmp sgt i32 %call.i125.i, -1
  br i1 %tobool1125.not.i, label %if.then1138.i.for.inc.sink.split.i_crit_edge, label %if.then1138.i.land.lhs.true1129.i_crit_edge

if.then1138.i.land.lhs.true1129.i_crit_edge:      ; preds = %if.then1138.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true1129.i

if.then1138.i.for.inc.sink.split.i_crit_edge:     ; preds = %if.then1138.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.sink.split.i

for.end1142.i:                                    ; preds = %land.lhs.true1129.i
  %180 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %hci.i.i, align 8
  %read32.i131.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %181, i32 0, i32 9
  %182 = ptrtoint ptr %read32.i131.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %read32.i131.i, align 4
  %call.i132.i = tail call i32 %183(ptr noundef %3, i32 noundef 36112) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i132.i)
  %tobool1145.not.i = icmp sgt i32 %call.i132.i, -1
  br i1 %tobool1145.not.i, label %for.end1142.i.for.inc.sink.split.i_crit_edge, label %cleanup1157.thread.i

for.end1142.i.for.inc.sink.split.i_crit_edge:     ; preds = %for.end1142.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.sink.split.i

cleanup1157.thread.i:                             ; preds = %for.end1142.i
  call void @__sanitizer_cov_trace_pc() #14
  %dev1153.i = getelementptr inbounds %struct.rtw89_dev, ptr %3, i32 0, i32 1
  %184 = ptrtoint ptr %dev1153.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %dev1153.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %185, ptr noundef nonnull @.str.177, ptr noundef nonnull @.str.180, ptr noundef nonnull @.str.194, i32 noundef 4) #15
  br label %if.end7

for.inc.sink.split.i:                             ; preds = %for.end1142.i.for.inc.sink.split.i_crit_edge, %if.then1138.i.for.inc.sink.split.i_crit_edge, %sw.bb1063.i.for.inc.sink.split.i_crit_edge, %for.end1000.i.for.inc.sink.split.i_crit_edge, %if.then996.i.for.inc.sink.split.i_crit_edge, %sw.bb921.i.for.inc.sink.split.i_crit_edge, %for.end858.i.for.inc.sink.split.i_crit_edge, %if.then854.i.for.inc.sink.split.i_crit_edge, %sw.bb779.i.for.inc.sink.split.i_crit_edge, %for.end716.i.for.inc.sink.split.i_crit_edge, %if.then712.i.for.inc.sink.split.i_crit_edge, %sw.bb637.i.for.inc.sink.split.i_crit_edge, %for.end575.i.for.inc.sink.split.i_crit_edge, %if.then571.i.for.inc.sink.split.i_crit_edge, %sw.bb.i.for.inc.sink.split.i_crit_edge
  %.str.196.sink640.i = phi ptr [ @.str.196, %sw.bb.i.for.inc.sink.split.i_crit_edge ], [ @.str.196, %for.end575.i.for.inc.sink.split.i_crit_edge ], [ @.str.200, %sw.bb637.i.for.inc.sink.split.i_crit_edge ], [ @.str.200, %for.end716.i.for.inc.sink.split.i_crit_edge ], [ @.str.203, %sw.bb779.i.for.inc.sink.split.i_crit_edge ], [ @.str.203, %for.end858.i.for.inc.sink.split.i_crit_edge ], [ @.str.206, %sw.bb921.i.for.inc.sink.split.i_crit_edge ], [ @.str.206, %for.end1000.i.for.inc.sink.split.i_crit_edge ], [ @.str.209, %sw.bb1063.i.for.inc.sink.split.i_crit_edge ], [ @.str.209, %for.end1142.i.for.inc.sink.split.i_crit_edge ], [ @.str.196, %if.then571.i.for.inc.sink.split.i_crit_edge ], [ @.str.200, %if.then712.i.for.inc.sink.split.i_crit_edge ], [ @.str.203, %if.then854.i.for.inc.sink.split.i_crit_edge ], [ @.str.206, %if.then996.i.for.inc.sink.split.i_crit_edge ], [ @.str.209, %if.then1138.i.for.inc.sink.split.i_crit_edge ]
  %186 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %hci.i.i, align 8
  %read32.i134.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %187, i32 0, i32 9
  %188 = ptrtoint ptr %read32.i134.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %read32.i134.i, align 4
  %call.i135.i = tail call i32 %189(ptr noundef %3, i32 noundef 36116) #12
  %conv.i = and i32 %call.i135.i, 4095
  %and632.i = lshr i32 %call.i135.i, 16
  %conv634.i = and i32 %and632.i, 4095
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.195, ptr noundef nonnull @.str.180, ptr noundef nonnull %.str.196.sink640.i, i32 noundef %conv.i) #12
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.197, ptr noundef nonnull @.str.180, ptr noundef nonnull %.str.196.sink640.i, i32 noundef %conv634.i) #12
  br label %for.inc.i

for.inc.i:                                        ; preds = %for.inc.sink.split.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %quota_id.0593.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 5
  br i1 %exitcond.not.i, label %for.inc.i.for.body1209.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.inc.i.for.body1209.i_crit_edge:               ; preds = %for.inc.i
  br label %for.body1209.i

for.body1209.i:                                   ; preds = %for.inc2773.i.for.body1209.i_crit_edge, %for.inc.i.for.body1209.i_crit_edge
  %quota_id.1638.i = phi i32 [ %inc2774.i, %for.inc2773.i.for.body1209.i_crit_edge ], [ 0, %for.inc.i.for.body1209.i_crit_edge ]
  %190 = zext i32 %quota_id.1638.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %190, ptr @__sancov_gen_cov_switch_values.432)
  switch i32 %quota_id.1638.i, label %for.body1209.i.for.inc2773.i_crit_edge [
    i32 0, label %sw.bb1210.i
    i32 1, label %sw.bb1352.i
    i32 2, label %sw.bb1494.i
    i32 3, label %sw.bb1636.i
    i32 4, label %sw.bb1778.i
    i32 5, label %sw.bb1920.i
    i32 6, label %sw.bb2062.i
    i32 7, label %sw.bb2204.i
    i32 8, label %sw.bb2346.i
    i32 9, label %sw.bb2488.i
    i32 10, label %sw.bb2630.i
  ]

for.body1209.i.for.inc2773.i_crit_edge:           ; preds = %for.body1209.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc2773.i

sw.bb1210.i:                                      ; preds = %for.body1209.i
  %191 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %hci.i.i, align 8
  %write32.i137.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %192, i32 0, i32 12
  %193 = ptrtoint ptr %write32.i137.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %write32.i137.i, align 4
  tail call void %194(ptr noundef %3, i32 noundef 37136, i32 noundef -2147418112) #12
  %call1254.i = tail call i64 @ktime_get() #12
  %add.i138.i = add i64 %call1254.i, 50000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 940) #12
  %195 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %hci.i.i, align 8
  %read32.i140624.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %196, i32 0, i32 9
  %197 = ptrtoint ptr %read32.i140624.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %read32.i140624.i, align 4
  %call.i141625.i = tail call i32 %198(ptr noundef %3, i32 noundef 37136) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i141625.i)
  %tobool1272.not626.i = icmp sgt i32 %call.i141625.i, -1
  br i1 %tobool1272.not626.i, label %sw.bb1210.i.for.inc2773.sink.split.i_crit_edge, label %sw.bb1210.i.land.lhs.true1276.i_crit_edge

sw.bb1210.i.land.lhs.true1276.i_crit_edge:        ; preds = %sw.bb1210.i
  br label %land.lhs.true1276.i

sw.bb1210.i.for.inc2773.sink.split.i_crit_edge:   ; preds = %sw.bb1210.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc2773.sink.split.i

land.lhs.true1276.i:                              ; preds = %if.then1285.i.land.lhs.true1276.i_crit_edge, %sw.bb1210.i.land.lhs.true1276.i_crit_edge
  %call1277.i = tail call i64 @ktime_get() #12
  call void @__sanitizer_cov_trace_cmp8(i64 %call1277.i, i64 %add.i138.i)
  %cmp3.i143.i = icmp sgt i64 %call1277.i, %add.i138.i
  br i1 %cmp3.i143.i, label %for.end1289.i, label %if.then1285.i

if.then1285.i:                                    ; preds = %land.lhs.true1276.i
  tail call void @usleep_range_state(i32 noundef 251, i32 noundef 1000, i32 noundef 2) #12
  %199 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %hci.i.i, align 8
  %read32.i140.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %200, i32 0, i32 9
  %201 = ptrtoint ptr %read32.i140.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %read32.i140.i, align 4
  %call.i141.i = tail call i32 %202(ptr noundef %3, i32 noundef 37136) #12
  %tobool1272.not.i = icmp sgt i32 %call.i141.i, -1
  br i1 %tobool1272.not.i, label %if.then1285.i.for.inc2773.sink.split.i_crit_edge, label %if.then1285.i.land.lhs.true1276.i_crit_edge

if.then1285.i.land.lhs.true1276.i_crit_edge:      ; preds = %if.then1285.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true1276.i

if.then1285.i.for.inc2773.sink.split.i_crit_edge: ; preds = %if.then1285.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc2773.sink.split.i

for.end1289.i:                                    ; preds = %land.lhs.true1276.i
  %203 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %hci.i.i, align 8
  %read32.i147.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %204, i32 0, i32 9
  %205 = ptrtoint ptr %read32.i147.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %read32.i147.i, align 4
  %call.i148.i = tail call i32 %206(ptr noundef %3, i32 noundef 37136) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i148.i)
  %tobool1292.not.i = icmp sgt i32 %call.i148.i, -1
  br i1 %tobool1292.not.i, label %for.end1289.i.for.inc2773.sink.split.i_crit_edge, label %cleanup1304.thread.i

for.end1289.i.for.inc2773.sink.split.i_crit_edge: ; preds = %for.end1289.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc2773.sink.split.i

cleanup1304.thread.i:                             ; preds = %for.end1289.i
  call void @__sanitizer_cov_trace_pc() #14
  %dev1300.i = getelementptr inbounds %struct.rtw89_dev, ptr %3, i32 0, i32 1
  %207 = ptrtoint ptr %dev1300.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %dev1300.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %208, ptr noundef nonnull @.str.177, ptr noundef nonnull @.str.189, ptr noundef nonnull @.str.194, i32 noundef 0) #15
  br label %if.end7

sw.bb1352.i:                                      ; preds = %for.body1209.i
  %209 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %hci.i.i, align 8
  %write32.i153.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %210, i32 0, i32 12
  %211 = ptrtoint ptr %write32.i153.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %write32.i153.i, align 4
  tail call void %212(ptr noundef %3, i32 noundef 37136, i32 noundef -2147418111) #12
  %call1396.i = tail call i64 @ktime_get() #12
  %add.i154.i = add i64 %call1396.i, 50000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 941) #12
  %213 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %hci.i.i, align 8
  %read32.i156621.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %214, i32 0, i32 9
  %215 = ptrtoint ptr %read32.i156621.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %read32.i156621.i, align 4
  %call.i157622.i = tail call i32 %216(ptr noundef %3, i32 noundef 37136) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i157622.i)
  %tobool1414.not623.i = icmp sgt i32 %call.i157622.i, -1
  br i1 %tobool1414.not623.i, label %sw.bb1352.i.for.inc2773.sink.split.i_crit_edge, label %sw.bb1352.i.land.lhs.true1418.i_crit_edge

sw.bb1352.i.land.lhs.true1418.i_crit_edge:        ; preds = %sw.bb1352.i
  br label %land.lhs.true1418.i

sw.bb1352.i.for.inc2773.sink.split.i_crit_edge:   ; preds = %sw.bb1352.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc2773.sink.split.i

land.lhs.true1418.i:                              ; preds = %if.then1427.i.land.lhs.true1418.i_crit_edge, %sw.bb1352.i.land.lhs.true1418.i_crit_edge
  %call1419.i = tail call i64 @ktime_get() #12
  call void @__sanitizer_cov_trace_cmp8(i64 %call1419.i, i64 %add.i154.i)
  %cmp3.i159.i = icmp sgt i64 %call1419.i, %add.i154.i
  br i1 %cmp3.i159.i, label %for.end1431.i, label %if.then1427.i

if.then1427.i:                                    ; preds = %land.lhs.true1418.i
  tail call void @usleep_range_state(i32 noundef 251, i32 noundef 1000, i32 noundef 2) #12
  %217 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %hci.i.i, align 8
  %read32.i156.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %218, i32 0, i32 9
  %219 = ptrtoint ptr %read32.i156.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %read32.i156.i, align 4
  %call.i157.i = tail call i32 %220(ptr noundef %3, i32 noundef 37136) #12
  %tobool1414.not.i = icmp sgt i32 %call.i157.i, -1
  br i1 %tobool1414.not.i, label %if.then1427.i.for.inc2773.sink.split.i_crit_edge, label %if.then1427.i.land.lhs.true1418.i_crit_edge

if.then1427.i.land.lhs.true1418.i_crit_edge:      ; preds = %if.then1427.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true1418.i

if.then1427.i.for.inc2773.sink.split.i_crit_edge: ; preds = %if.then1427.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc2773.sink.split.i

for.end1431.i:                                    ; preds = %land.lhs.true1418.i
  %221 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %hci.i.i, align 8
  %read32.i163.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %222, i32 0, i32 9
  %223 = ptrtoint ptr %read32.i163.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %read32.i163.i, align 4
  %call.i164.i = tail call i32 %224(ptr noundef %3, i32 noundef 37136) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i164.i)
  %tobool1434.not.i = icmp sgt i32 %call.i164.i, -1
  br i1 %tobool1434.not.i, label %for.end1431.i.for.inc2773.sink.split.i_crit_edge, label %cleanup1446.thread.i

for.end1431.i.for.inc2773.sink.split.i_crit_edge: ; preds = %for.end1431.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc2773.sink.split.i

cleanup1446.thread.i:                             ; preds = %for.end1431.i
  call void @__sanitizer_cov_trace_pc() #14
  %dev1442.i = getelementptr inbounds %struct.rtw89_dev, ptr %3, i32 0, i32 1
  %225 = ptrtoint ptr %dev1442.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %dev1442.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %226, ptr noundef nonnull @.str.177, ptr noundef nonnull @.str.189, ptr noundef nonnull @.str.194, i32 noundef 1) #15
  br label %if.end7

sw.bb1494.i:                                      ; preds = %for.body1209.i
  %227 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %hci.i.i, align 8
  %write32.i169.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %228, i32 0, i32 12
  %229 = ptrtoint ptr %write32.i169.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %write32.i169.i, align 4
  tail call void %230(ptr noundef %3, i32 noundef 37136, i32 noundef -2147418110) #12
  %call1538.i = tail call i64 @ktime_get() #12
  %add.i170.i = add i64 %call1538.i, 50000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 942) #12
  %231 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %hci.i.i, align 8
  %read32.i172618.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %232, i32 0, i32 9
  %233 = ptrtoint ptr %read32.i172618.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %read32.i172618.i, align 4
  %call.i173619.i = tail call i32 %234(ptr noundef %3, i32 noundef 37136) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i173619.i)
  %tobool1556.not620.i = icmp sgt i32 %call.i173619.i, -1
  br i1 %tobool1556.not620.i, label %sw.bb1494.i.for.inc2773.sink.split.i_crit_edge, label %sw.bb1494.i.land.lhs.true1560.i_crit_edge

sw.bb1494.i.land.lhs.true1560.i_crit_edge:        ; preds = %sw.bb1494.i
  br label %land.lhs.true1560.i

sw.bb1494.i.for.inc2773.sink.split.i_crit_edge:   ; preds = %sw.bb1494.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc2773.sink.split.i

land.lhs.true1560.i:                              ; preds = %if.then1569.i.land.lhs.true1560.i_crit_edge, %sw.bb1494.i.land.lhs.true1560.i_crit_edge
  %call1561.i = tail call i64 @ktime_get() #12
  call void @__sanitizer_cov_trace_cmp8(i64 %call1561.i, i64 %add.i170.i)
  %cmp3.i175.i = icmp sgt i64 %call1561.i, %add.i170.i
  br i1 %cmp3.i175.i, label %for.end1573.i, label %if.then1569.i

if.then1569.i:                                    ; preds = %land.lhs.true1560.i
  tail call void @usleep_range_state(i32 noundef 251, i32 noundef 1000, i32 noundef 2) #12
  %235 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %hci.i.i, align 8
  %read32.i172.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %236, i32 0, i32 9
  %237 = ptrtoint ptr %read32.i172.i to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %read32.i172.i, align 4
  %call.i173.i = tail call i32 %238(ptr noundef %3, i32 noundef 37136) #12
  %tobool1556.not.i = icmp sgt i32 %call.i173.i, -1
  br i1 %tobool1556.not.i, label %if.then1569.i.for.inc2773.sink.split.i_crit_edge, label %if.then1569.i.land.lhs.true1560.i_crit_edge

if.then1569.i.land.lhs.true1560.i_crit_edge:      ; preds = %if.then1569.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true1560.i

if.then1569.i.for.inc2773.sink.split.i_crit_edge: ; preds = %if.then1569.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc2773.sink.split.i

for.end1573.i:                                    ; preds = %land.lhs.true1560.i
  %239 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %hci.i.i, align 8
  %read32.i179.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %240, i32 0, i32 9
  %241 = ptrtoint ptr %read32.i179.i to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %read32.i179.i, align 4
  %call.i180.i = tail call i32 %242(ptr noundef %3, i32 noundef 37136) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i180.i)
  %tobool1576.not.i = icmp sgt i32 %call.i180.i, -1
  br i1 %tobool1576.not.i, label %for.end1573.i.for.inc2773.sink.split.i_crit_edge, label %cleanup1588.thread.i

for.end1573.i.for.inc2773.sink.split.i_crit_edge: ; preds = %for.end1573.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc2773.sink.split.i

cleanup1588.thread.i:                             ; preds = %for.end1573.i
  call void @__sanitizer_cov_trace_pc() #14
  %dev1584.i = getelementptr inbounds %struct.rtw89_dev, ptr %3, i32 0, i32 1
  %243 = ptrtoint ptr %dev1584.i to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %dev1584.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %244, ptr noundef nonnull @.str.177, ptr noundef nonnull @.str.189, ptr noundef nonnull @.str.194, i32 noundef 2) #15
  br label %if.end7

sw.bb1636.i:                                      ; preds = %for.body1209.i
  %245 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %hci.i.i, align 8
  %write32.i185.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %246, i32 0, i32 12
  %247 = ptrtoint ptr %write32.i185.i to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %write32.i185.i, align 4
  tail call void %248(ptr noundef %3, i32 noundef 37136, i32 noundef -2147418109) #12
  %call1680.i = tail call i64 @ktime_get() #12
  %add.i186.i = add i64 %call1680.i, 50000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 943) #12
  %249 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load ptr, ptr %hci.i.i, align 8
  %read32.i188615.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %250, i32 0, i32 9
  %251 = ptrtoint ptr %read32.i188615.i to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %read32.i188615.i, align 4
  %call.i189616.i = tail call i32 %252(ptr noundef %3, i32 noundef 37136) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i189616.i)
  %tobool1698.not617.i = icmp sgt i32 %call.i189616.i, -1
  br i1 %tobool1698.not617.i, label %sw.bb1636.i.for.inc2773.sink.split.i_crit_edge, label %sw.bb1636.i.land.lhs.true1702.i_crit_edge

sw.bb1636.i.land.lhs.true1702.i_crit_edge:        ; preds = %sw.bb1636.i
  br label %land.lhs.true1702.i

sw.bb1636.i.for.inc2773.sink.split.i_crit_edge:   ; preds = %sw.bb1636.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc2773.sink.split.i

land.lhs.true1702.i:                              ; preds = %if.then1711.i.land.lhs.true1702.i_crit_edge, %sw.bb1636.i.land.lhs.true1702.i_crit_edge
  %call1703.i = tail call i64 @ktime_get() #12
  call void @__sanitizer_cov_trace_cmp8(i64 %call1703.i, i64 %add.i186.i)
  %cmp3.i191.i = icmp sgt i64 %call1703.i, %add.i186.i
  br i1 %cmp3.i191.i, label %for.end1715.i, label %if.then1711.i

if.then1711.i:                                    ; preds = %land.lhs.true1702.i
  tail call void @usleep_range_state(i32 noundef 251, i32 noundef 1000, i32 noundef 2) #12
  %253 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %hci.i.i, align 8
  %read32.i188.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %254, i32 0, i32 9
  %255 = ptrtoint ptr %read32.i188.i to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load ptr, ptr %read32.i188.i, align 4
  %call.i189.i = tail call i32 %256(ptr noundef %3, i32 noundef 37136) #12
  %tobool1698.not.i = icmp sgt i32 %call.i189.i, -1
  br i1 %tobool1698.not.i, label %if.then1711.i.for.inc2773.sink.split.i_crit_edge, label %if.then1711.i.land.lhs.true1702.i_crit_edge

if.then1711.i.land.lhs.true1702.i_crit_edge:      ; preds = %if.then1711.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true1702.i

if.then1711.i.for.inc2773.sink.split.i_crit_edge: ; preds = %if.then1711.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc2773.sink.split.i

for.end1715.i:                                    ; preds = %land.lhs.true1702.i
  %257 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load ptr, ptr %hci.i.i, align 8
  %read32.i195.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %258, i32 0, i32 9
  %259 = ptrtoint ptr %read32.i195.i to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load ptr, ptr %read32.i195.i, align 4
  %call.i196.i = tail call i32 %260(ptr noundef %3, i32 noundef 37136) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i196.i)
  %tobool1718.not.i = icmp sgt i32 %call.i196.i, -1
  br i1 %tobool1718.not.i, label %for.end1715.i.for.inc2773.sink.split.i_crit_edge, label %cleanup1730.thread.i

for.end1715.i.for.inc2773.sink.split.i_crit_edge: ; preds = %for.end1715.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc2773.sink.split.i

cleanup1730.thread.i:                             ; preds = %for.end1715.i
  call void @__sanitizer_cov_trace_pc() #14
  %dev1726.i = getelementptr inbounds %struct.rtw89_dev, ptr %3, i32 0, i32 1
  %261 = ptrtoint ptr %dev1726.i to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load ptr, ptr %dev1726.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %262, ptr noundef nonnull @.str.177, ptr noundef nonnull @.str.189, ptr noundef nonnull @.str.194, i32 noundef 3) #15
  br label %if.end7

sw.bb1778.i:                                      ; preds = %for.body1209.i
  %263 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load ptr, ptr %hci.i.i, align 8
  %write32.i201.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %264, i32 0, i32 12
  %265 = ptrtoint ptr %write32.i201.i to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load ptr, ptr %write32.i201.i, align 4
  tail call void %266(ptr noundef %3, i32 noundef 37136, i32 noundef -2147418108) #12
  %call1822.i = tail call i64 @ktime_get() #12
  %add.i202.i = add i64 %call1822.i, 50000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 944) #12
  %267 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load ptr, ptr %hci.i.i, align 8
  %read32.i204612.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %268, i32 0, i32 9
  %269 = ptrtoint ptr %read32.i204612.i to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load ptr, ptr %read32.i204612.i, align 4
  %call.i205613.i = tail call i32 %270(ptr noundef %3, i32 noundef 37136) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i205613.i)
  %tobool1840.not614.i = icmp sgt i32 %call.i205613.i, -1
  br i1 %tobool1840.not614.i, label %sw.bb1778.i.for.inc2773.sink.split.i_crit_edge, label %sw.bb1778.i.land.lhs.true1844.i_crit_edge

sw.bb1778.i.land.lhs.true1844.i_crit_edge:        ; preds = %sw.bb1778.i
  br label %land.lhs.true1844.i

sw.bb1778.i.for.inc2773.sink.split.i_crit_edge:   ; preds = %sw.bb1778.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc2773.sink.split.i

land.lhs.true1844.i:                              ; preds = %if.then1853.i.land.lhs.true1844.i_crit_edge, %sw.bb1778.i.land.lhs.true1844.i_crit_edge
  %call1845.i = tail call i64 @ktime_get() #12
  call void @__sanitizer_cov_trace_cmp8(i64 %call1845.i, i64 %add.i202.i)
  %cmp3.i207.i = icmp sgt i64 %call1845.i, %add.i202.i
  br i1 %cmp3.i207.i, label %for.end1857.i, label %if.then1853.i

if.then1853.i:                                    ; preds = %land.lhs.true1844.i
  tail call void @usleep_range_state(i32 noundef 251, i32 noundef 1000, i32 noundef 2) #12
  %271 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load ptr, ptr %hci.i.i, align 8
  %read32.i204.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %272, i32 0, i32 9
  %273 = ptrtoint ptr %read32.i204.i to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load ptr, ptr %read32.i204.i, align 4
  %call.i205.i = tail call i32 %274(ptr noundef %3, i32 noundef 37136) #12
  %tobool1840.not.i = icmp sgt i32 %call.i205.i, -1
  br i1 %tobool1840.not.i, label %if.then1853.i.for.inc2773.sink.split.i_crit_edge, label %if.then1853.i.land.lhs.true1844.i_crit_edge

if.then1853.i.land.lhs.true1844.i_crit_edge:      ; preds = %if.then1853.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true1844.i

if.then1853.i.for.inc2773.sink.split.i_crit_edge: ; preds = %if.then1853.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc2773.sink.split.i

for.end1857.i:                                    ; preds = %land.lhs.true1844.i
  %275 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load ptr, ptr %hci.i.i, align 8
  %read32.i211.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %276, i32 0, i32 9
  %277 = ptrtoint ptr %read32.i211.i to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load ptr, ptr %read32.i211.i, align 4
  %call.i212.i = tail call i32 %278(ptr noundef %3, i32 noundef 37136) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i212.i)
  %tobool1860.not.i = icmp sgt i32 %call.i212.i, -1
  br i1 %tobool1860.not.i, label %for.end1857.i.for.inc2773.sink.split.i_crit_edge, label %cleanup1872.thread.i

for.end1857.i.for.inc2773.sink.split.i_crit_edge: ; preds = %for.end1857.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc2773.sink.split.i

cleanup1872.thread.i:                             ; preds = %for.end1857.i
  call void @__sanitizer_cov_trace_pc() #14
  %dev1868.i = getelementptr inbounds %struct.rtw89_dev, ptr %3, i32 0, i32 1
  %279 = ptrtoint ptr %dev1868.i to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load ptr, ptr %dev1868.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %280, ptr noundef nonnull @.str.177, ptr noundef nonnull @.str.189, ptr noundef nonnull @.str.194, i32 noundef 4) #15
  br label %if.end7

sw.bb1920.i:                                      ; preds = %for.body1209.i
  %281 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load ptr, ptr %hci.i.i, align 8
  %write32.i217.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %282, i32 0, i32 12
  %283 = ptrtoint ptr %write32.i217.i to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load ptr, ptr %write32.i217.i, align 4
  tail call void %284(ptr noundef %3, i32 noundef 37136, i32 noundef -2147418107) #12
  %call1964.i = tail call i64 @ktime_get() #12
  %add.i218.i = add i64 %call1964.i, 50000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 945) #12
  %285 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load ptr, ptr %hci.i.i, align 8
  %read32.i220609.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %286, i32 0, i32 9
  %287 = ptrtoint ptr %read32.i220609.i to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load ptr, ptr %read32.i220609.i, align 4
  %call.i221610.i = tail call i32 %288(ptr noundef %3, i32 noundef 37136) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i221610.i)
  %tobool1982.not611.i = icmp sgt i32 %call.i221610.i, -1
  br i1 %tobool1982.not611.i, label %sw.bb1920.i.for.inc2773.sink.split.i_crit_edge, label %sw.bb1920.i.land.lhs.true1986.i_crit_edge

sw.bb1920.i.land.lhs.true1986.i_crit_edge:        ; preds = %sw.bb1920.i
  br label %land.lhs.true1986.i

sw.bb1920.i.for.inc2773.sink.split.i_crit_edge:   ; preds = %sw.bb1920.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc2773.sink.split.i

land.lhs.true1986.i:                              ; preds = %if.then1995.i.land.lhs.true1986.i_crit_edge, %sw.bb1920.i.land.lhs.true1986.i_crit_edge
  %call1987.i = tail call i64 @ktime_get() #12
  call void @__sanitizer_cov_trace_cmp8(i64 %call1987.i, i64 %add.i218.i)
  %cmp3.i223.i = icmp sgt i64 %call1987.i, %add.i218.i
  br i1 %cmp3.i223.i, label %for.end1999.i, label %if.then1995.i

if.then1995.i:                                    ; preds = %land.lhs.true1986.i
  tail call void @usleep_range_state(i32 noundef 251, i32 noundef 1000, i32 noundef 2) #12
  %289 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load ptr, ptr %hci.i.i, align 8
  %read32.i220.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %290, i32 0, i32 9
  %291 = ptrtoint ptr %read32.i220.i to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load ptr, ptr %read32.i220.i, align 4
  %call.i221.i = tail call i32 %292(ptr noundef %3, i32 noundef 37136) #12
  %tobool1982.not.i = icmp sgt i32 %call.i221.i, -1
  br i1 %tobool1982.not.i, label %if.then1995.i.for.inc2773.sink.split.i_crit_edge, label %if.then1995.i.land.lhs.true1986.i_crit_edge

if.then1995.i.land.lhs.true1986.i_crit_edge:      ; preds = %if.then1995.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true1986.i

if.then1995.i.for.inc2773.sink.split.i_crit_edge: ; preds = %if.then1995.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc2773.sink.split.i

for.end1999.i:                                    ; preds = %land.lhs.true1986.i
  %293 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load ptr, ptr %hci.i.i, align 8
  %read32.i227.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %294, i32 0, i32 9
  %295 = ptrtoint ptr %read32.i227.i to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load ptr, ptr %read32.i227.i, align 4
  %call.i228.i = tail call i32 %296(ptr noundef %3, i32 noundef 37136) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i228.i)
  %tobool2002.not.i = icmp sgt i32 %call.i228.i, -1
  br i1 %tobool2002.not.i, label %for.end1999.i.for.inc2773.sink.split.i_crit_edge, label %cleanup2014.thread.i

for.end1999.i.for.inc2773.sink.split.i_crit_edge: ; preds = %for.end1999.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc2773.sink.split.i

cleanup2014.thread.i:                             ; preds = %for.end1999.i
  call void @__sanitizer_cov_trace_pc() #14
  %dev2010.i = getelementptr inbounds %struct.rtw89_dev, ptr %3, i32 0, i32 1
  %297 = ptrtoint ptr %dev2010.i to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load ptr, ptr %dev2010.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %298, ptr noundef nonnull @.str.177, ptr noundef nonnull @.str.189, ptr noundef nonnull @.str.194, i32 noundef 5) #15
  br label %if.end7

sw.bb2062.i:                                      ; preds = %for.body1209.i
  %299 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load ptr, ptr %hci.i.i, align 8
  %write32.i233.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %300, i32 0, i32 12
  %301 = ptrtoint ptr %write32.i233.i to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load ptr, ptr %write32.i233.i, align 4
  tail call void %302(ptr noundef %3, i32 noundef 37136, i32 noundef -2147418106) #12
  %call2106.i = tail call i64 @ktime_get() #12
  %add.i234.i = add i64 %call2106.i, 50000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 946) #12
  %303 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load ptr, ptr %hci.i.i, align 8
  %read32.i236606.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %304, i32 0, i32 9
  %305 = ptrtoint ptr %read32.i236606.i to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load ptr, ptr %read32.i236606.i, align 4
  %call.i237607.i = tail call i32 %306(ptr noundef %3, i32 noundef 37136) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i237607.i)
  %tobool2124.not608.i = icmp sgt i32 %call.i237607.i, -1
  br i1 %tobool2124.not608.i, label %sw.bb2062.i.for.inc2773.sink.split.i_crit_edge, label %sw.bb2062.i.land.lhs.true2128.i_crit_edge

sw.bb2062.i.land.lhs.true2128.i_crit_edge:        ; preds = %sw.bb2062.i
  br label %land.lhs.true2128.i

sw.bb2062.i.for.inc2773.sink.split.i_crit_edge:   ; preds = %sw.bb2062.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc2773.sink.split.i

land.lhs.true2128.i:                              ; preds = %if.then2137.i.land.lhs.true2128.i_crit_edge, %sw.bb2062.i.land.lhs.true2128.i_crit_edge
  %call2129.i = tail call i64 @ktime_get() #12
  call void @__sanitizer_cov_trace_cmp8(i64 %call2129.i, i64 %add.i234.i)
  %cmp3.i239.i = icmp sgt i64 %call2129.i, %add.i234.i
  br i1 %cmp3.i239.i, label %for.end2141.i, label %if.then2137.i

if.then2137.i:                                    ; preds = %land.lhs.true2128.i
  tail call void @usleep_range_state(i32 noundef 251, i32 noundef 1000, i32 noundef 2) #12
  %307 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load ptr, ptr %hci.i.i, align 8
  %read32.i236.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %308, i32 0, i32 9
  %309 = ptrtoint ptr %read32.i236.i to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load ptr, ptr %read32.i236.i, align 4
  %call.i237.i = tail call i32 %310(ptr noundef %3, i32 noundef 37136) #12
  %tobool2124.not.i = icmp sgt i32 %call.i237.i, -1
  br i1 %tobool2124.not.i, label %if.then2137.i.for.inc2773.sink.split.i_crit_edge, label %if.then2137.i.land.lhs.true2128.i_crit_edge

if.then2137.i.land.lhs.true2128.i_crit_edge:      ; preds = %if.then2137.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true2128.i

if.then2137.i.for.inc2773.sink.split.i_crit_edge: ; preds = %if.then2137.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc2773.sink.split.i

for.end2141.i:                                    ; preds = %land.lhs.true2128.i
  %311 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load ptr, ptr %hci.i.i, align 8
  %read32.i243.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %312, i32 0, i32 9
  %313 = ptrtoint ptr %read32.i243.i to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load ptr, ptr %read32.i243.i, align 4
  %call.i244.i = tail call i32 %314(ptr noundef %3, i32 noundef 37136) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i244.i)
  %tobool2144.not.i = icmp sgt i32 %call.i244.i, -1
  br i1 %tobool2144.not.i, label %for.end2141.i.for.inc2773.sink.split.i_crit_edge, label %cleanup2156.thread.i

for.end2141.i.for.inc2773.sink.split.i_crit_edge: ; preds = %for.end2141.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc2773.sink.split.i

cleanup2156.thread.i:                             ; preds = %for.end2141.i
  call void @__sanitizer_cov_trace_pc() #14
  %dev2152.i = getelementptr inbounds %struct.rtw89_dev, ptr %3, i32 0, i32 1
  %315 = ptrtoint ptr %dev2152.i to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load ptr, ptr %dev2152.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %316, ptr noundef nonnull @.str.177, ptr noundef nonnull @.str.189, ptr noundef nonnull @.str.194, i32 noundef 6) #15
  br label %if.end7

sw.bb2204.i:                                      ; preds = %for.body1209.i
  %317 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load ptr, ptr %hci.i.i, align 8
  %write32.i249.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %318, i32 0, i32 12
  %319 = ptrtoint ptr %write32.i249.i to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load ptr, ptr %write32.i249.i, align 4
  tail call void %320(ptr noundef %3, i32 noundef 37136, i32 noundef -2147418105) #12
  %call2248.i = tail call i64 @ktime_get() #12
  %add.i250.i = add i64 %call2248.i, 50000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 947) #12
  %321 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load ptr, ptr %hci.i.i, align 8
  %read32.i252603.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %322, i32 0, i32 9
  %323 = ptrtoint ptr %read32.i252603.i to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load ptr, ptr %read32.i252603.i, align 4
  %call.i253604.i = tail call i32 %324(ptr noundef %3, i32 noundef 37136) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i253604.i)
  %tobool2266.not605.i = icmp sgt i32 %call.i253604.i, -1
  br i1 %tobool2266.not605.i, label %sw.bb2204.i.for.inc2773.sink.split.i_crit_edge, label %sw.bb2204.i.land.lhs.true2270.i_crit_edge

sw.bb2204.i.land.lhs.true2270.i_crit_edge:        ; preds = %sw.bb2204.i
  br label %land.lhs.true2270.i

sw.bb2204.i.for.inc2773.sink.split.i_crit_edge:   ; preds = %sw.bb2204.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc2773.sink.split.i

land.lhs.true2270.i:                              ; preds = %if.then2279.i.land.lhs.true2270.i_crit_edge, %sw.bb2204.i.land.lhs.true2270.i_crit_edge
  %call2271.i = tail call i64 @ktime_get() #12
  call void @__sanitizer_cov_trace_cmp8(i64 %call2271.i, i64 %add.i250.i)
  %cmp3.i255.i = icmp sgt i64 %call2271.i, %add.i250.i
  br i1 %cmp3.i255.i, label %for.end2283.i, label %if.then2279.i

if.then2279.i:                                    ; preds = %land.lhs.true2270.i
  tail call void @usleep_range_state(i32 noundef 251, i32 noundef 1000, i32 noundef 2) #12
  %325 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load ptr, ptr %hci.i.i, align 8
  %read32.i252.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %326, i32 0, i32 9
  %327 = ptrtoint ptr %read32.i252.i to i32
  call void @__asan_load4_noabort(i32 %327)
  %328 = load ptr, ptr %read32.i252.i, align 4
  %call.i253.i = tail call i32 %328(ptr noundef %3, i32 noundef 37136) #12
  %tobool2266.not.i = icmp sgt i32 %call.i253.i, -1
  br i1 %tobool2266.not.i, label %if.then2279.i.for.inc2773.sink.split.i_crit_edge, label %if.then2279.i.land.lhs.true2270.i_crit_edge

if.then2279.i.land.lhs.true2270.i_crit_edge:      ; preds = %if.then2279.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true2270.i

if.then2279.i.for.inc2773.sink.split.i_crit_edge: ; preds = %if.then2279.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc2773.sink.split.i

for.end2283.i:                                    ; preds = %land.lhs.true2270.i
  %329 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load ptr, ptr %hci.i.i, align 8
  %read32.i259.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %330, i32 0, i32 9
  %331 = ptrtoint ptr %read32.i259.i to i32
  call void @__asan_load4_noabort(i32 %331)
  %332 = load ptr, ptr %read32.i259.i, align 4
  %call.i260.i = tail call i32 %332(ptr noundef %3, i32 noundef 37136) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i260.i)
  %tobool2286.not.i = icmp sgt i32 %call.i260.i, -1
  br i1 %tobool2286.not.i, label %for.end2283.i.for.inc2773.sink.split.i_crit_edge, label %cleanup2298.thread.i

for.end2283.i.for.inc2773.sink.split.i_crit_edge: ; preds = %for.end2283.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc2773.sink.split.i

cleanup2298.thread.i:                             ; preds = %for.end2283.i
  call void @__sanitizer_cov_trace_pc() #14
  %dev2294.i = getelementptr inbounds %struct.rtw89_dev, ptr %3, i32 0, i32 1
  %333 = ptrtoint ptr %dev2294.i to i32
  call void @__asan_load4_noabort(i32 %333)
  %334 = load ptr, ptr %dev2294.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %334, ptr noundef nonnull @.str.177, ptr noundef nonnull @.str.189, ptr noundef nonnull @.str.194, i32 noundef 7) #15
  br label %if.end7

sw.bb2346.i:                                      ; preds = %for.body1209.i
  %335 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %335)
  %336 = load ptr, ptr %hci.i.i, align 8
  %write32.i265.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %336, i32 0, i32 12
  %337 = ptrtoint ptr %write32.i265.i to i32
  call void @__asan_load4_noabort(i32 %337)
  %338 = load ptr, ptr %write32.i265.i, align 4
  tail call void %338(ptr noundef %3, i32 noundef 37136, i32 noundef -2147418104) #12
  %call2390.i = tail call i64 @ktime_get() #12
  %add.i266.i = add i64 %call2390.i, 50000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 948) #12
  %339 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %339)
  %340 = load ptr, ptr %hci.i.i, align 8
  %read32.i268600.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %340, i32 0, i32 9
  %341 = ptrtoint ptr %read32.i268600.i to i32
  call void @__asan_load4_noabort(i32 %341)
  %342 = load ptr, ptr %read32.i268600.i, align 4
  %call.i269601.i = tail call i32 %342(ptr noundef %3, i32 noundef 37136) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i269601.i)
  %tobool2408.not602.i = icmp sgt i32 %call.i269601.i, -1
  br i1 %tobool2408.not602.i, label %sw.bb2346.i.for.inc2773.sink.split.i_crit_edge, label %sw.bb2346.i.land.lhs.true2412.i_crit_edge

sw.bb2346.i.land.lhs.true2412.i_crit_edge:        ; preds = %sw.bb2346.i
  br label %land.lhs.true2412.i

sw.bb2346.i.for.inc2773.sink.split.i_crit_edge:   ; preds = %sw.bb2346.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc2773.sink.split.i

land.lhs.true2412.i:                              ; preds = %if.then2421.i.land.lhs.true2412.i_crit_edge, %sw.bb2346.i.land.lhs.true2412.i_crit_edge
  %call2413.i = tail call i64 @ktime_get() #12
  call void @__sanitizer_cov_trace_cmp8(i64 %call2413.i, i64 %add.i266.i)
  %cmp3.i271.i = icmp sgt i64 %call2413.i, %add.i266.i
  br i1 %cmp3.i271.i, label %for.end2425.i, label %if.then2421.i

if.then2421.i:                                    ; preds = %land.lhs.true2412.i
  tail call void @usleep_range_state(i32 noundef 251, i32 noundef 1000, i32 noundef 2) #12
  %343 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %343)
  %344 = load ptr, ptr %hci.i.i, align 8
  %read32.i268.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %344, i32 0, i32 9
  %345 = ptrtoint ptr %read32.i268.i to i32
  call void @__asan_load4_noabort(i32 %345)
  %346 = load ptr, ptr %read32.i268.i, align 4
  %call.i269.i = tail call i32 %346(ptr noundef %3, i32 noundef 37136) #12
  %tobool2408.not.i = icmp sgt i32 %call.i269.i, -1
  br i1 %tobool2408.not.i, label %if.then2421.i.for.inc2773.sink.split.i_crit_edge, label %if.then2421.i.land.lhs.true2412.i_crit_edge

if.then2421.i.land.lhs.true2412.i_crit_edge:      ; preds = %if.then2421.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true2412.i

if.then2421.i.for.inc2773.sink.split.i_crit_edge: ; preds = %if.then2421.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc2773.sink.split.i

for.end2425.i:                                    ; preds = %land.lhs.true2412.i
  %347 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %347)
  %348 = load ptr, ptr %hci.i.i, align 8
  %read32.i275.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %348, i32 0, i32 9
  %349 = ptrtoint ptr %read32.i275.i to i32
  call void @__asan_load4_noabort(i32 %349)
  %350 = load ptr, ptr %read32.i275.i, align 4
  %call.i276.i = tail call i32 %350(ptr noundef %3, i32 noundef 37136) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i276.i)
  %tobool2428.not.i = icmp sgt i32 %call.i276.i, -1
  br i1 %tobool2428.not.i, label %for.end2425.i.for.inc2773.sink.split.i_crit_edge, label %cleanup2440.thread.i

for.end2425.i.for.inc2773.sink.split.i_crit_edge: ; preds = %for.end2425.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc2773.sink.split.i

cleanup2440.thread.i:                             ; preds = %for.end2425.i
  call void @__sanitizer_cov_trace_pc() #14
  %dev2436.i = getelementptr inbounds %struct.rtw89_dev, ptr %3, i32 0, i32 1
  %351 = ptrtoint ptr %dev2436.i to i32
  call void @__asan_load4_noabort(i32 %351)
  %352 = load ptr, ptr %dev2436.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %352, ptr noundef nonnull @.str.177, ptr noundef nonnull @.str.189, ptr noundef nonnull @.str.194, i32 noundef 8) #15
  br label %if.end7

sw.bb2488.i:                                      ; preds = %for.body1209.i
  %353 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %353)
  %354 = load ptr, ptr %hci.i.i, align 8
  %write32.i281.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %354, i32 0, i32 12
  %355 = ptrtoint ptr %write32.i281.i to i32
  call void @__asan_load4_noabort(i32 %355)
  %356 = load ptr, ptr %write32.i281.i, align 4
  tail call void %356(ptr noundef %3, i32 noundef 37136, i32 noundef -2147418103) #12
  %call2532.i = tail call i64 @ktime_get() #12
  %add.i282.i = add i64 %call2532.i, 50000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 949) #12
  %357 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %357)
  %358 = load ptr, ptr %hci.i.i, align 8
  %read32.i284597.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %358, i32 0, i32 9
  %359 = ptrtoint ptr %read32.i284597.i to i32
  call void @__asan_load4_noabort(i32 %359)
  %360 = load ptr, ptr %read32.i284597.i, align 4
  %call.i285598.i = tail call i32 %360(ptr noundef %3, i32 noundef 37136) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i285598.i)
  %tobool2550.not599.i = icmp sgt i32 %call.i285598.i, -1
  br i1 %tobool2550.not599.i, label %sw.bb2488.i.for.inc2773.sink.split.i_crit_edge, label %sw.bb2488.i.land.lhs.true2554.i_crit_edge

sw.bb2488.i.land.lhs.true2554.i_crit_edge:        ; preds = %sw.bb2488.i
  br label %land.lhs.true2554.i

sw.bb2488.i.for.inc2773.sink.split.i_crit_edge:   ; preds = %sw.bb2488.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc2773.sink.split.i

land.lhs.true2554.i:                              ; preds = %if.then2563.i.land.lhs.true2554.i_crit_edge, %sw.bb2488.i.land.lhs.true2554.i_crit_edge
  %call2555.i = tail call i64 @ktime_get() #12
  call void @__sanitizer_cov_trace_cmp8(i64 %call2555.i, i64 %add.i282.i)
  %cmp3.i287.i = icmp sgt i64 %call2555.i, %add.i282.i
  br i1 %cmp3.i287.i, label %for.end2567.i, label %if.then2563.i

if.then2563.i:                                    ; preds = %land.lhs.true2554.i
  tail call void @usleep_range_state(i32 noundef 251, i32 noundef 1000, i32 noundef 2) #12
  %361 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %361)
  %362 = load ptr, ptr %hci.i.i, align 8
  %read32.i284.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %362, i32 0, i32 9
  %363 = ptrtoint ptr %read32.i284.i to i32
  call void @__asan_load4_noabort(i32 %363)
  %364 = load ptr, ptr %read32.i284.i, align 4
  %call.i285.i = tail call i32 %364(ptr noundef %3, i32 noundef 37136) #12
  %tobool2550.not.i = icmp sgt i32 %call.i285.i, -1
  br i1 %tobool2550.not.i, label %if.then2563.i.for.inc2773.sink.split.i_crit_edge, label %if.then2563.i.land.lhs.true2554.i_crit_edge

if.then2563.i.land.lhs.true2554.i_crit_edge:      ; preds = %if.then2563.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true2554.i

if.then2563.i.for.inc2773.sink.split.i_crit_edge: ; preds = %if.then2563.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc2773.sink.split.i

for.end2567.i:                                    ; preds = %land.lhs.true2554.i
  %365 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %365)
  %366 = load ptr, ptr %hci.i.i, align 8
  %read32.i291.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %366, i32 0, i32 9
  %367 = ptrtoint ptr %read32.i291.i to i32
  call void @__asan_load4_noabort(i32 %367)
  %368 = load ptr, ptr %read32.i291.i, align 4
  %call.i292.i = tail call i32 %368(ptr noundef %3, i32 noundef 37136) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i292.i)
  %tobool2570.not.i = icmp sgt i32 %call.i292.i, -1
  br i1 %tobool2570.not.i, label %for.end2567.i.for.inc2773.sink.split.i_crit_edge, label %cleanup2582.thread.i

for.end2567.i.for.inc2773.sink.split.i_crit_edge: ; preds = %for.end2567.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc2773.sink.split.i

cleanup2582.thread.i:                             ; preds = %for.end2567.i
  call void @__sanitizer_cov_trace_pc() #14
  %dev2578.i = getelementptr inbounds %struct.rtw89_dev, ptr %3, i32 0, i32 1
  %369 = ptrtoint ptr %dev2578.i to i32
  call void @__asan_load4_noabort(i32 %369)
  %370 = load ptr, ptr %dev2578.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %370, ptr noundef nonnull @.str.177, ptr noundef nonnull @.str.189, ptr noundef nonnull @.str.194, i32 noundef 9) #15
  br label %if.end7

sw.bb2630.i:                                      ; preds = %for.body1209.i
  %371 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %371)
  %372 = load ptr, ptr %hci.i.i, align 8
  %write32.i297.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %372, i32 0, i32 12
  %373 = ptrtoint ptr %write32.i297.i to i32
  call void @__asan_load4_noabort(i32 %373)
  %374 = load ptr, ptr %write32.i297.i, align 4
  tail call void %374(ptr noundef %3, i32 noundef 37136, i32 noundef -2147418102) #12
  %call2674.i = tail call i64 @ktime_get() #12
  %add.i298.i = add i64 %call2674.i, 50000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 950) #12
  %375 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %375)
  %376 = load ptr, ptr %hci.i.i, align 8
  %read32.i300594.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %376, i32 0, i32 9
  %377 = ptrtoint ptr %read32.i300594.i to i32
  call void @__asan_load4_noabort(i32 %377)
  %378 = load ptr, ptr %read32.i300594.i, align 4
  %call.i301595.i = tail call i32 %378(ptr noundef %3, i32 noundef 37136) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i301595.i)
  %tobool2692.not596.i = icmp sgt i32 %call.i301595.i, -1
  br i1 %tobool2692.not596.i, label %sw.bb2630.i.for.inc2773.sink.split.i_crit_edge, label %sw.bb2630.i.land.lhs.true2696.i_crit_edge

sw.bb2630.i.land.lhs.true2696.i_crit_edge:        ; preds = %sw.bb2630.i
  br label %land.lhs.true2696.i

sw.bb2630.i.for.inc2773.sink.split.i_crit_edge:   ; preds = %sw.bb2630.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc2773.sink.split.i

land.lhs.true2696.i:                              ; preds = %if.then2705.i.land.lhs.true2696.i_crit_edge, %sw.bb2630.i.land.lhs.true2696.i_crit_edge
  %call2697.i = tail call i64 @ktime_get() #12
  call void @__sanitizer_cov_trace_cmp8(i64 %call2697.i, i64 %add.i298.i)
  %cmp3.i303.i = icmp sgt i64 %call2697.i, %add.i298.i
  br i1 %cmp3.i303.i, label %for.end2709.i, label %if.then2705.i

if.then2705.i:                                    ; preds = %land.lhs.true2696.i
  tail call void @usleep_range_state(i32 noundef 251, i32 noundef 1000, i32 noundef 2) #12
  %379 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %379)
  %380 = load ptr, ptr %hci.i.i, align 8
  %read32.i300.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %380, i32 0, i32 9
  %381 = ptrtoint ptr %read32.i300.i to i32
  call void @__asan_load4_noabort(i32 %381)
  %382 = load ptr, ptr %read32.i300.i, align 4
  %call.i301.i = tail call i32 %382(ptr noundef %3, i32 noundef 37136) #12
  %tobool2692.not.i = icmp sgt i32 %call.i301.i, -1
  br i1 %tobool2692.not.i, label %if.then2705.i.for.inc2773.sink.split.i_crit_edge, label %if.then2705.i.land.lhs.true2696.i_crit_edge

if.then2705.i.land.lhs.true2696.i_crit_edge:      ; preds = %if.then2705.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true2696.i

if.then2705.i.for.inc2773.sink.split.i_crit_edge: ; preds = %if.then2705.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc2773.sink.split.i

for.end2709.i:                                    ; preds = %land.lhs.true2696.i
  %383 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %383)
  %384 = load ptr, ptr %hci.i.i, align 8
  %read32.i307.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %384, i32 0, i32 9
  %385 = ptrtoint ptr %read32.i307.i to i32
  call void @__asan_load4_noabort(i32 %385)
  %386 = load ptr, ptr %read32.i307.i, align 4
  %call.i308.i = tail call i32 %386(ptr noundef %3, i32 noundef 37136) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i308.i)
  %tobool2712.not.i = icmp sgt i32 %call.i308.i, -1
  br i1 %tobool2712.not.i, label %for.end2709.i.for.inc2773.sink.split.i_crit_edge, label %cleanup2724.thread.i

for.end2709.i.for.inc2773.sink.split.i_crit_edge: ; preds = %for.end2709.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc2773.sink.split.i

cleanup2724.thread.i:                             ; preds = %for.end2709.i
  call void @__sanitizer_cov_trace_pc() #14
  %dev2720.i = getelementptr inbounds %struct.rtw89_dev, ptr %3, i32 0, i32 1
  %387 = ptrtoint ptr %dev2720.i to i32
  call void @__asan_load4_noabort(i32 %387)
  %388 = load ptr, ptr %dev2720.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %388, ptr noundef nonnull @.str.177, ptr noundef nonnull @.str.189, ptr noundef nonnull @.str.194, i32 noundef 10) #15
  br label %if.end7

for.inc2773.sink.split.i:                         ; preds = %for.end2709.i.for.inc2773.sink.split.i_crit_edge, %if.then2705.i.for.inc2773.sink.split.i_crit_edge, %sw.bb2630.i.for.inc2773.sink.split.i_crit_edge, %for.end2567.i.for.inc2773.sink.split.i_crit_edge, %if.then2563.i.for.inc2773.sink.split.i_crit_edge, %sw.bb2488.i.for.inc2773.sink.split.i_crit_edge, %for.end2425.i.for.inc2773.sink.split.i_crit_edge, %if.then2421.i.for.inc2773.sink.split.i_crit_edge, %sw.bb2346.i.for.inc2773.sink.split.i_crit_edge, %for.end2283.i.for.inc2773.sink.split.i_crit_edge, %if.then2279.i.for.inc2773.sink.split.i_crit_edge, %sw.bb2204.i.for.inc2773.sink.split.i_crit_edge, %for.end2141.i.for.inc2773.sink.split.i_crit_edge, %if.then2137.i.for.inc2773.sink.split.i_crit_edge, %sw.bb2062.i.for.inc2773.sink.split.i_crit_edge, %for.end1999.i.for.inc2773.sink.split.i_crit_edge, %if.then1995.i.for.inc2773.sink.split.i_crit_edge, %sw.bb1920.i.for.inc2773.sink.split.i_crit_edge, %for.end1857.i.for.inc2773.sink.split.i_crit_edge, %if.then1853.i.for.inc2773.sink.split.i_crit_edge, %sw.bb1778.i.for.inc2773.sink.split.i_crit_edge, %for.end1715.i.for.inc2773.sink.split.i_crit_edge, %if.then1711.i.for.inc2773.sink.split.i_crit_edge, %sw.bb1636.i.for.inc2773.sink.split.i_crit_edge, %for.end1573.i.for.inc2773.sink.split.i_crit_edge, %if.then1569.i.for.inc2773.sink.split.i_crit_edge, %sw.bb1494.i.for.inc2773.sink.split.i_crit_edge, %for.end1431.i.for.inc2773.sink.split.i_crit_edge, %if.then1427.i.for.inc2773.sink.split.i_crit_edge, %sw.bb1352.i.for.inc2773.sink.split.i_crit_edge, %for.end1289.i.for.inc2773.sink.split.i_crit_edge, %if.then1285.i.for.inc2773.sink.split.i_crit_edge, %sw.bb1210.i.for.inc2773.sink.split.i_crit_edge
  %.str.212.sink642.i = phi ptr [ @.str.212, %sw.bb1210.i.for.inc2773.sink.split.i_crit_edge ], [ @.str.212, %for.end1289.i.for.inc2773.sink.split.i_crit_edge ], [ @.str.215, %sw.bb1352.i.for.inc2773.sink.split.i_crit_edge ], [ @.str.215, %for.end1431.i.for.inc2773.sink.split.i_crit_edge ], [ @.str.218, %sw.bb1494.i.for.inc2773.sink.split.i_crit_edge ], [ @.str.218, %for.end1573.i.for.inc2773.sink.split.i_crit_edge ], [ @.str.221, %sw.bb1636.i.for.inc2773.sink.split.i_crit_edge ], [ @.str.221, %for.end1715.i.for.inc2773.sink.split.i_crit_edge ], [ @.str.200, %sw.bb1778.i.for.inc2773.sink.split.i_crit_edge ], [ @.str.200, %for.end1857.i.for.inc2773.sink.split.i_crit_edge ], [ @.str.226, %sw.bb1920.i.for.inc2773.sink.split.i_crit_edge ], [ @.str.226, %for.end1999.i.for.inc2773.sink.split.i_crit_edge ], [ @.str.229, %sw.bb2062.i.for.inc2773.sink.split.i_crit_edge ], [ @.str.229, %for.end2141.i.for.inc2773.sink.split.i_crit_edge ], [ @.str.232, %sw.bb2204.i.for.inc2773.sink.split.i_crit_edge ], [ @.str.232, %for.end2283.i.for.inc2773.sink.split.i_crit_edge ], [ @.str.235, %sw.bb2346.i.for.inc2773.sink.split.i_crit_edge ], [ @.str.235, %for.end2425.i.for.inc2773.sink.split.i_crit_edge ], [ @.str.238, %sw.bb2488.i.for.inc2773.sink.split.i_crit_edge ], [ @.str.238, %for.end2567.i.for.inc2773.sink.split.i_crit_edge ], [ @.str.209, %sw.bb2630.i.for.inc2773.sink.split.i_crit_edge ], [ @.str.209, %for.end2709.i.for.inc2773.sink.split.i_crit_edge ], [ @.str.212, %if.then1285.i.for.inc2773.sink.split.i_crit_edge ], [ @.str.215, %if.then1427.i.for.inc2773.sink.split.i_crit_edge ], [ @.str.218, %if.then1569.i.for.inc2773.sink.split.i_crit_edge ], [ @.str.221, %if.then1711.i.for.inc2773.sink.split.i_crit_edge ], [ @.str.200, %if.then1853.i.for.inc2773.sink.split.i_crit_edge ], [ @.str.226, %if.then1995.i.for.inc2773.sink.split.i_crit_edge ], [ @.str.229, %if.then2137.i.for.inc2773.sink.split.i_crit_edge ], [ @.str.232, %if.then2279.i.for.inc2773.sink.split.i_crit_edge ], [ @.str.235, %if.then2421.i.for.inc2773.sink.split.i_crit_edge ], [ @.str.238, %if.then2563.i.for.inc2773.sink.split.i_crit_edge ], [ @.str.209, %if.then2705.i.for.inc2773.sink.split.i_crit_edge ]
  %389 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %389)
  %390 = load ptr, ptr %hci.i.i, align 8
  %read32.i310.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %390, i32 0, i32 9
  %391 = ptrtoint ptr %read32.i310.i to i32
  call void @__asan_load4_noabort(i32 %391)
  %392 = load ptr, ptr %read32.i310.i, align 4
  %call.i311.i = tail call i32 %392(ptr noundef %3, i32 noundef 37140) #12
  %conv1330.i = and i32 %call.i311.i, 4095
  %and1347.i = lshr i32 %call.i311.i, 16
  %conv1349.i = and i32 %and1347.i, 4095
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.195, ptr noundef nonnull @.str.189, ptr noundef nonnull %.str.212.sink642.i, i32 noundef %conv1330.i) #12
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.197, ptr noundef nonnull @.str.189, ptr noundef nonnull %.str.212.sink642.i, i32 noundef %conv1349.i) #12
  br label %for.inc2773.i

for.inc2773.i:                                    ; preds = %for.inc2773.sink.split.i, %for.body1209.i.for.inc2773.i_crit_edge
  %inc2774.i = add nuw nsw i32 %quota_id.1638.i, 1
  %exitcond639.not.i = icmp eq i32 %inc2774.i, 11
  br i1 %exitcond639.not.i, label %for.inc2773.i.if.end7_crit_edge, label %for.inc2773.i.for.body1209.i_crit_edge

for.inc2773.i.for.body1209.i_crit_edge:           ; preds = %for.inc2773.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body1209.i

for.inc2773.i.if.end7_crit_edge:                  ; preds = %for.inc2773.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7

if.end7:                                          ; preds = %for.inc2773.i.if.end7_crit_edge, %cleanup2724.thread.i, %cleanup2582.thread.i, %cleanup2440.thread.i, %cleanup2298.thread.i, %cleanup2156.thread.i, %cleanup2014.thread.i, %cleanup1872.thread.i, %cleanup1730.thread.i, %cleanup1588.thread.i, %cleanup1446.thread.i, %cleanup1304.thread.i, %cleanup1157.thread.i, %cleanup1015.thread.i, %cleanup873.thread.i, %cleanup731.thread.i, %cleanup590.thread.i, %cleanup428.thread.i, %cleanup329.thread.i, %cleanup164.thread.i, %cleanup.thread.i, %if.then.i, %entry.if.end7_crit_edge
  %393 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %393)
  %bf.load8 = load i8, ptr %4, align 4
  %394 = and i8 %bf.load8, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %394)
  %tobool11.not = icmp eq i8 %394, 0
  br i1 %tobool11.not, label %if.end7.if.end14_crit_edge, label %if.then12

if.end7.if.end14_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14

if.then12:                                        ; preds = %if.end7
  %call.i43 = tail call i32 @rtw89_mac_check_mac_en(ptr noundef %3, i8 noundef zeroext 0, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i43)
  %tobool.not.i44 = icmp eq i32 %call.i43, 0
  br i1 %tobool.not.i44, label %if.end.i55, label %if.then.i45

if.then.i45:                                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.241) #12
  br label %if.end14

if.end.i55:                                       ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #14
  %hci.i.i46 = getelementptr inbounds %struct.rtw89_dev, ptr %3, i32 0, i32 7
  %395 = ptrtoint ptr %hci.i.i46 to i32
  call void @__asan_load4_noabort(i32 %395)
  %396 = load ptr, ptr %hci.i.i46, align 8
  %read32.i.i47 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %396, i32 0, i32 9
  %397 = ptrtoint ptr %read32.i.i47 to i32
  call void @__asan_load4_noabort(i32 %397)
  %398 = load ptr, ptr %read32.i.i47, align 4
  %call.i.i48 = tail call i32 %398(ptr noundef %3, i32 noundef 34084) #12
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.242, i32 noundef %call.i.i48) #12
  %399 = ptrtoint ptr %hci.i.i46 to i32
  call void @__asan_load4_noabort(i32 %399)
  %400 = load ptr, ptr %hci.i.i46, align 8
  %read32.i2.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %400, i32 0, i32 9
  %401 = ptrtoint ptr %read32.i2.i to i32
  call void @__asan_load4_noabort(i32 %401)
  %402 = load ptr, ptr %read32.i2.i, align 4
  %call.i3.i = tail call i32 %402(ptr noundef %3, i32 noundef 37940) #12
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.243, i32 noundef %call.i3.i) #12
  %403 = ptrtoint ptr %hci.i.i46 to i32
  call void @__asan_load4_noabort(i32 %403)
  %404 = load ptr, ptr %hci.i.i46, align 8
  %read32.i5.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %404, i32 0, i32 9
  %405 = ptrtoint ptr %read32.i5.i to i32
  call void @__asan_load4_noabort(i32 %405)
  %406 = load ptr, ptr %read32.i5.i, align 4
  %call.i6.i = tail call i32 %406(ptr noundef %3, i32 noundef 39196) #12
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.244, i32 noundef %call.i6.i) #12
  %407 = ptrtoint ptr %hci.i.i46 to i32
  call void @__asan_load4_noabort(i32 %407)
  %408 = load ptr, ptr %hci.i.i46, align 8
  %read32.i8.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %408, i32 0, i32 9
  %409 = ptrtoint ptr %read32.i8.i to i32
  call void @__asan_load4_noabort(i32 %409)
  %410 = load ptr, ptr %read32.i8.i, align 4
  %call.i9.i = tail call i32 %410(ptr noundef %3, i32 noundef 39920) #12
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.245, i32 noundef %call.i9.i) #12
  %411 = ptrtoint ptr %hci.i.i46 to i32
  call void @__asan_load4_noabort(i32 %411)
  %412 = load ptr, ptr %hci.i.i46, align 8
  %read32.i11.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %412, i32 0, i32 9
  %413 = ptrtoint ptr %read32.i11.i to i32
  call void @__asan_load4_noabort(i32 %413)
  %414 = load ptr, ptr %read32.i11.i, align 4
  %call.i12.i = tail call i32 %414(ptr noundef %3, i32 noundef 40176) #12
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.246, i32 noundef %call.i12.i) #12
  %415 = ptrtoint ptr %hci.i.i46 to i32
  call void @__asan_load4_noabort(i32 %415)
  %416 = load ptr, ptr %hci.i.i46, align 8
  %read32.i14.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %416, i32 0, i32 9
  %417 = ptrtoint ptr %read32.i14.i to i32
  call void @__asan_load4_noabort(i32 %417)
  %418 = load ptr, ptr %read32.i14.i, align 4
  %call.i15.i = tail call i32 %418(ptr noundef %3, i32 noundef 40692) #12
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.247, i32 noundef %call.i15.i) #12
  %419 = ptrtoint ptr %hci.i.i46 to i32
  call void @__asan_load4_noabort(i32 %419)
  %420 = load ptr, ptr %hci.i.i46, align 8
  %read32.i17.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %420, i32 0, i32 9
  %421 = ptrtoint ptr %read32.i17.i to i32
  call void @__asan_load4_noabort(i32 %421)
  %422 = load ptr, ptr %read32.i17.i, align 4
  %call.i18.i = tail call i32 %422(ptr noundef %3, i32 noundef 35900) #12
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.248, i32 noundef %call.i18.i) #12
  %423 = ptrtoint ptr %hci.i.i46 to i32
  call void @__asan_load4_noabort(i32 %423)
  %424 = load ptr, ptr %hci.i.i46, align 8
  %read32.i20.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %424, i32 0, i32 9
  %425 = ptrtoint ptr %read32.i20.i to i32
  call void @__asan_load4_noabort(i32 %425)
  %426 = load ptr, ptr %read32.i20.i, align 4
  %call.i21.i = tail call i32 %426(ptr noundef %3, i32 noundef 40732) #12
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.249, i32 noundef %call.i21.i) #12
  %427 = ptrtoint ptr %hci.i.i46 to i32
  call void @__asan_load4_noabort(i32 %427)
  %428 = load ptr, ptr %hci.i.i46, align 8
  %read32.i23.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %428, i32 0, i32 9
  %429 = ptrtoint ptr %read32.i23.i to i32
  call void @__asan_load4_noabort(i32 %429)
  %430 = load ptr, ptr %read32.i23.i, align 4
  %call.i24.i = tail call i32 %430(ptr noundef %3, i32 noundef 40748) #12
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.250, i32 noundef %call.i24.i) #12
  %431 = ptrtoint ptr %hci.i.i46 to i32
  call void @__asan_load4_noabort(i32 %431)
  %432 = load ptr, ptr %hci.i.i46, align 8
  %read32.i26.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %432, i32 0, i32 9
  %433 = ptrtoint ptr %read32.i26.i to i32
  call void @__asan_load4_noabort(i32 %433)
  %434 = load ptr, ptr %read32.i26.i, align 4
  %call.i27.i = tail call i32 %434(ptr noundef %3, i32 noundef 36924) #12
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.251, i32 noundef %call.i27.i) #12
  %435 = ptrtoint ptr %hci.i.i46 to i32
  call void @__asan_load4_noabort(i32 %435)
  %436 = load ptr, ptr %hci.i.i46, align 8
  %read32.i29.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %436, i32 0, i32 9
  %437 = ptrtoint ptr %read32.i29.i to i32
  call void @__asan_load4_noabort(i32 %437)
  %438 = load ptr, ptr %read32.i29.i, align 4
  %call.i30.i = tail call i32 %438(ptr noundef %3, i32 noundef 39460) #12
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.252, i32 noundef %call.i30.i) #12
  %439 = ptrtoint ptr %hci.i.i46 to i32
  call void @__asan_load4_noabort(i32 %439)
  %440 = load ptr, ptr %hci.i.i46, align 8
  %read32.i32.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %440, i32 0, i32 9
  %441 = ptrtoint ptr %read32.i32.i to i32
  call void @__asan_load4_noabort(i32 %441)
  %442 = load ptr, ptr %read32.i32.i, align 4
  %call.i33.i = tail call i32 %442(ptr noundef %3, i32 noundef 34820) #12
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.253, i32 noundef %call.i33.i) #12
  %443 = ptrtoint ptr %hci.i.i46 to i32
  call void @__asan_load4_noabort(i32 %443)
  %444 = load ptr, ptr %hci.i.i46, align 8
  %read32.i35.i49 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %444, i32 0, i32 9
  %445 = ptrtoint ptr %read32.i35.i49 to i32
  call void @__asan_load4_noabort(i32 %445)
  %446 = load ptr, ptr %read32.i35.i49, align 4
  %call.i36.i50 = tail call i32 %446(ptr noundef %3, i32 noundef 34824) #12
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.254, i32 noundef %call.i36.i50) #12
  %447 = ptrtoint ptr %hci.i.i46 to i32
  call void @__asan_load4_noabort(i32 %447)
  %448 = load ptr, ptr %hci.i.i46, align 8
  %read32.i38.i51 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %448, i32 0, i32 9
  %449 = ptrtoint ptr %read32.i38.i51 to i32
  call void @__asan_load4_noabort(i32 %449)
  %450 = load ptr, ptr %read32.i38.i51, align 4
  %call.i39.i52 = tail call i32 %450(ptr noundef %3, i32 noundef 34828) #12
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.255, i32 noundef %call.i39.i52) #12
  %451 = ptrtoint ptr %hci.i.i46 to i32
  call void @__asan_load4_noabort(i32 %451)
  %452 = load ptr, ptr %hci.i.i46, align 8
  %read32.i41.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %452, i32 0, i32 9
  %453 = ptrtoint ptr %read32.i41.i to i32
  call void @__asan_load4_noabort(i32 %453)
  %454 = load ptr, ptr %read32.i41.i, align 4
  %call.i42.i = tail call i32 %454(ptr noundef %3, i32 noundef 38980) #12
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.256, i32 noundef %call.i42.i) #12
  %455 = ptrtoint ptr %hci.i.i46 to i32
  call void @__asan_load4_noabort(i32 %455)
  %456 = load ptr, ptr %hci.i.i46, align 8
  %read32.i44.i53 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %456, i32 0, i32 9
  %457 = ptrtoint ptr %read32.i44.i53 to i32
  call void @__asan_load4_noabort(i32 %457)
  %458 = load ptr, ptr %read32.i44.i53, align 4
  %call.i45.i54 = tail call i32 %458(ptr noundef %3, i32 noundef 38412) #12
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.257, i32 noundef %call.i45.i54) #12
  %459 = ptrtoint ptr %hci.i.i46 to i32
  call void @__asan_load4_noabort(i32 %459)
  %460 = load ptr, ptr %hci.i.i46, align 8
  %read32.i47.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %460, i32 0, i32 9
  %461 = ptrtoint ptr %read32.i47.i to i32
  call void @__asan_load4_noabort(i32 %461)
  %462 = load ptr, ptr %read32.i47.i, align 4
  %call.i48.i = tail call i32 %462(ptr noundef %3, i32 noundef 38444) #12
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.258, i32 noundef %call.i48.i) #12
  %463 = ptrtoint ptr %hci.i.i46 to i32
  call void @__asan_load4_noabort(i32 %463)
  %464 = load ptr, ptr %hci.i.i46, align 8
  %read32.i50.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %464, i32 0, i32 9
  %465 = ptrtoint ptr %read32.i50.i to i32
  call void @__asan_load4_noabort(i32 %465)
  %466 = load ptr, ptr %read32.i50.i, align 4
  %call.i51.i = tail call i32 %466(ptr noundef %3, i32 noundef 38460) #12
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.259, i32 noundef %call.i51.i) #12
  %467 = ptrtoint ptr %hci.i.i46 to i32
  call void @__asan_load4_noabort(i32 %467)
  %468 = load ptr, ptr %hci.i.i46, align 8
  %read32.i53.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %468, i32 0, i32 9
  %469 = ptrtoint ptr %read32.i53.i to i32
  call void @__asan_load4_noabort(i32 %469)
  %470 = load ptr, ptr %read32.i53.i, align 4
  %call.i54.i = tail call i32 %470(ptr noundef %3, i32 noundef 38508) #12
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.260, i32 noundef %call.i54.i) #12
  br label %if.end14

if.end14:                                         ; preds = %if.end.i55, %if.then.i45, %if.end7.if.end14_crit_edge
  %471 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %471)
  %bf.load15 = load i8, ptr %4, align 4
  %472 = and i8 %bf.load15, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %472)
  %tobool18.not = icmp eq i8 %472, 0
  br i1 %tobool18.not, label %if.end14.if.end21_crit_edge, label %if.then19

if.end14.if.end21_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end21

if.then19:                                        ; preds = %if.end14
  %call.i56 = tail call i32 @rtw89_mac_check_mac_en(ptr noundef %3, i8 noundef zeroext 0, i32 noundef 1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i56)
  %tobool.not.i57 = icmp eq i32 %call.i56, 0
  br i1 %tobool.not.i57, label %if.end.i76, label %if.then.i58

if.then.i58:                                      ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.261) #12
  br label %if.end21

if.end.i76:                                       ; preds = %if.then19
  %hci.i.i59 = getelementptr inbounds %struct.rtw89_dev, ptr %3, i32 0, i32 7
  %473 = ptrtoint ptr %hci.i.i59 to i32
  call void @__asan_load4_noabort(i32 %473)
  %474 = load ptr, ptr %hci.i.i59, align 8
  %read32.i.i60 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %474, i32 0, i32 9
  %475 = ptrtoint ptr %read32.i.i60 to i32
  call void @__asan_load4_noabort(i32 %475)
  %476 = load ptr, ptr %read32.i.i60, align 4
  %call.i.i61 = tail call i32 %476(ptr noundef %3, i32 noundef 49508) #12
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.262, i32 noundef %call.i.i61) #12
  %477 = ptrtoint ptr %hci.i.i59 to i32
  call void @__asan_load4_noabort(i32 %477)
  %478 = load ptr, ptr %hci.i.i59, align 8
  %read32.i2.i62 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %478, i32 0, i32 9
  %479 = ptrtoint ptr %read32.i2.i62 to i32
  call void @__asan_load4_noabort(i32 %479)
  %480 = load ptr, ptr %read32.i2.i62, align 4
  %call.i3.i63 = tail call i32 %480(ptr noundef %3, i32 noundef 50156) #12
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.263, i32 noundef %call.i3.i63) #12
  %481 = ptrtoint ptr %hci.i.i59 to i32
  call void @__asan_load4_noabort(i32 %481)
  %482 = load ptr, ptr %hci.i.i59, align 8
  %read32.i5.i64 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %482, i32 0, i32 9
  %483 = ptrtoint ptr %read32.i5.i64 to i32
  call void @__asan_load4_noabort(i32 %483)
  %484 = load ptr, ptr %read32.i5.i64, align 4
  %call.i6.i65 = tail call i32 %484(ptr noundef %3, i32 noundef 50884) #12
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.264, i32 noundef %call.i6.i65) #12
  %485 = ptrtoint ptr %hci.i.i59 to i32
  call void @__asan_load4_noabort(i32 %485)
  %486 = load ptr, ptr %hci.i.i59, align 8
  %read32.i8.i66 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %486, i32 0, i32 9
  %487 = ptrtoint ptr %read32.i8.i66 to i32
  call void @__asan_load4_noabort(i32 %487)
  %488 = load ptr, ptr %read32.i8.i66, align 4
  %call.i9.i67 = tail call i32 %488(ptr noundef %3, i32 noundef 51200) #12
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.265, i32 noundef %call.i9.i67) #12
  %489 = ptrtoint ptr %hci.i.i59 to i32
  call void @__asan_load4_noabort(i32 %489)
  %490 = load ptr, ptr %hci.i.i59, align 8
  %read32.i11.i68 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %490, i32 0, i32 9
  %491 = ptrtoint ptr %read32.i11.i68 to i32
  call void @__asan_load4_noabort(i32 %491)
  %492 = load ptr, ptr %read32.i11.i68, align 4
  %call.i12.i69 = tail call i32 %492(ptr noundef %3, i32 noundef 52476) #12
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.266, i32 noundef %call.i12.i69) #12
  %493 = ptrtoint ptr %hci.i.i59 to i32
  call void @__asan_load4_noabort(i32 %493)
  %494 = load ptr, ptr %hci.i.i59, align 8
  %read32.i14.i70 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %494, i32 0, i32 9
  %495 = ptrtoint ptr %read32.i14.i70 to i32
  call void @__asan_load4_noabort(i32 %495)
  %496 = load ptr, ptr %read32.i14.i70, align 4
  %call.i15.i71 = tail call i32 %496(ptr noundef %3, i32 noundef 55780) #12
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.267, i32 noundef %call.i15.i71) #12
  %497 = ptrtoint ptr %hci.i.i59 to i32
  call void @__asan_load4_noabort(i32 %497)
  %498 = load ptr, ptr %hci.i.i59, align 8
  %read32.i17.i72 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %498, i32 0, i32 9
  %499 = ptrtoint ptr %read32.i17.i72 to i32
  call void @__asan_load4_noabort(i32 %499)
  %500 = load ptr, ptr %read32.i17.i72, align 4
  %call.i18.i73 = tail call i32 %500(ptr noundef %3, i32 noundef 52980) #12
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.268, i32 noundef %call.i18.i73) #12
  %501 = ptrtoint ptr %hci.i.i59 to i32
  call void @__asan_load4_noabort(i32 %501)
  %502 = load ptr, ptr %hci.i.i59, align 8
  %read32.i20.i74 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %502, i32 0, i32 9
  %503 = ptrtoint ptr %read32.i20.i74 to i32
  call void @__asan_load4_noabort(i32 %503)
  %504 = load ptr, ptr %read32.i20.i74, align 4
  %call.i21.i75 = tail call i32 %504(ptr noundef %3, i32 noundef 52460) #12
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.269, i32 noundef %call.i21.i75) #12
  %call9.i = tail call i32 @rtw89_mac_check_mac_en(ptr noundef %3, i8 noundef zeroext 1, i32 noundef 1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool10.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool10.not.i, label %if.end12.i, label %if.then11.i

if.then11.i:                                      ; preds = %if.end.i76
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.270) #12
  br label %if.end21

if.end12.i:                                       ; preds = %if.end.i76
  call void @__sanitizer_cov_trace_pc() #14
  %505 = ptrtoint ptr %hci.i.i59 to i32
  call void @__asan_load4_noabort(i32 %505)
  %506 = load ptr, ptr %hci.i.i59, align 8
  %read32.i23.i77 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %506, i32 0, i32 9
  %507 = ptrtoint ptr %read32.i23.i77 to i32
  call void @__asan_load4_noabort(i32 %507)
  %508 = load ptr, ptr %read32.i23.i77, align 4
  %call.i24.i78 = tail call i32 %508(ptr noundef %3, i32 noundef 57700) #12
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.271, i32 noundef %call.i24.i78) #12
  %509 = ptrtoint ptr %hci.i.i59 to i32
  call void @__asan_load4_noabort(i32 %509)
  %510 = load ptr, ptr %hci.i.i59, align 8
  %read32.i26.i79 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %510, i32 0, i32 9
  %511 = ptrtoint ptr %read32.i26.i79 to i32
  call void @__asan_load4_noabort(i32 %511)
  %512 = load ptr, ptr %read32.i26.i79, align 4
  %call.i27.i80 = tail call i32 %512(ptr noundef %3, i32 noundef 58348) #12
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.272, i32 noundef %call.i27.i80) #12
  %513 = ptrtoint ptr %hci.i.i59 to i32
  call void @__asan_load4_noabort(i32 %513)
  %514 = load ptr, ptr %hci.i.i59, align 8
  %read32.i29.i81 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %514, i32 0, i32 9
  %515 = ptrtoint ptr %read32.i29.i81 to i32
  call void @__asan_load4_noabort(i32 %515)
  %516 = load ptr, ptr %read32.i29.i81, align 4
  %call.i30.i82 = tail call i32 %516(ptr noundef %3, i32 noundef 59076) #12
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.273, i32 noundef %call.i30.i82) #12
  %517 = ptrtoint ptr %hci.i.i59 to i32
  call void @__asan_load4_noabort(i32 %517)
  %518 = load ptr, ptr %hci.i.i59, align 8
  %read32.i32.i83 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %518, i32 0, i32 9
  %519 = ptrtoint ptr %read32.i32.i83 to i32
  call void @__asan_load4_noabort(i32 %519)
  %520 = load ptr, ptr %read32.i32.i83, align 4
  %call.i33.i84 = tail call i32 %520(ptr noundef %3, i32 noundef 59392) #12
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.274, i32 noundef %call.i33.i84) #12
  %521 = ptrtoint ptr %hci.i.i59 to i32
  call void @__asan_load4_noabort(i32 %521)
  %522 = load ptr, ptr %hci.i.i59, align 8
  %read32.i35.i85 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %522, i32 0, i32 9
  %523 = ptrtoint ptr %read32.i35.i85 to i32
  call void @__asan_load4_noabort(i32 %523)
  %524 = load ptr, ptr %read32.i35.i85, align 4
  %call.i36.i86 = tail call i32 %524(ptr noundef %3, i32 noundef 60668) #12
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.275, i32 noundef %call.i36.i86) #12
  %525 = ptrtoint ptr %hci.i.i59 to i32
  call void @__asan_load4_noabort(i32 %525)
  %526 = load ptr, ptr %hci.i.i59, align 8
  %read32.i38.i87 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %526, i32 0, i32 9
  %527 = ptrtoint ptr %read32.i38.i87 to i32
  call void @__asan_load4_noabort(i32 %527)
  %528 = load ptr, ptr %read32.i38.i87, align 4
  %call.i39.i88 = tail call i32 %528(ptr noundef %3, i32 noundef 63972) #12
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.276, i32 noundef %call.i39.i88) #12
  %529 = ptrtoint ptr %hci.i.i59 to i32
  call void @__asan_load4_noabort(i32 %529)
  %530 = load ptr, ptr %hci.i.i59, align 8
  %read32.i41.i89 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %530, i32 0, i32 9
  %531 = ptrtoint ptr %read32.i41.i89 to i32
  call void @__asan_load4_noabort(i32 %531)
  %532 = load ptr, ptr %read32.i41.i89, align 4
  %call.i42.i90 = tail call i32 %532(ptr noundef %3, i32 noundef 61172) #12
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.277, i32 noundef %call.i42.i90) #12
  %533 = ptrtoint ptr %hci.i.i59 to i32
  call void @__asan_load4_noabort(i32 %533)
  %534 = load ptr, ptr %hci.i.i59, align 8
  %read32.i44.i91 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %534, i32 0, i32 9
  %535 = ptrtoint ptr %read32.i44.i91 to i32
  call void @__asan_load4_noabort(i32 %535)
  %536 = load ptr, ptr %read32.i44.i91, align 4
  %call.i45.i92 = tail call i32 %536(ptr noundef %3, i32 noundef 60652) #12
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.278, i32 noundef %call.i45.i92) #12
  br label %if.end21

if.end21:                                         ; preds = %if.end12.i, %if.then11.i, %if.then.i58, %if.end14.if.end21_crit_edge
  %537 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %537)
  %bf.load22 = load i8, ptr %4, align 4
  %538 = and i8 %bf.load22, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %538)
  %tobool25.not = icmp eq i8 %538, 0
  br i1 %tobool25.not, label %if.end21.if.end28_crit_edge, label %if.then26

if.end21.if.end28_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end28

if.then26:                                        ; preds = %if.end21
  %type.i.i = getelementptr inbounds %struct.rtw89_dev, ptr %3, i32 0, i32 7, i32 1
  %chip.i.i = getelementptr inbounds %struct.rtw89_dev, ptr %3, i32 0, i32 3
  %hci.i799.i.i.i = getelementptr inbounds %struct.rtw89_dev, ptr %3, i32 0, i32 7
  br label %for.body.i93

for.body.i93:                                     ; preds = %for.inc.i98.for.body.i93_crit_edge, %if.then26
  %sel.07.i = phi i32 [ 0, %if.then26 ], [ %inc.i96, %for.inc.i98.for.body.i93_crit_edge ]
  %539 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %539)
  %540 = load i32, ptr %type.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %540)
  %cmp.not.i.i = icmp ne i32 %540, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 38, i32 %sel.07.i)
  %cmp1.i.i = icmp ugt i32 %sel.07.i, 38
  %or.cond.i.i = and i1 %cmp1.i.i, %cmp.not.i.i
  br i1 %or.cond.i.i, label %for.body.i93.for.inc.i98_crit_edge, label %if.end.i.i

for.body.i93.for.inc.i98_crit_edge:               ; preds = %for.body.i93
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i98

if.end.i.i:                                       ; preds = %for.body.i93
  %541 = ptrtoint ptr %chip.i.i to i32
  call void @__asan_load4_noabort(i32 %541)
  %542 = load ptr, ptr %chip.i.i, align 4
  %543 = ptrtoint ptr %542 to i32
  call void @__asan_load4_noabort(i32 %543)
  %544 = load i32, ptr %542, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %544)
  %cmp4.i.i = icmp eq i32 %544, 1
  %545 = add nsw i32 %sel.07.i, -11
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %545)
  %546 = icmp ult i32 %545, 11
  %547 = and i1 %546, %cmp4.i.i
  br i1 %547, label %if.end.i.i.for.inc.i98_crit_edge, label %if.end10.i.i

if.end.i.i.for.inc.i98_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i98

if.end10.i.i:                                     ; preds = %if.end.i.i
  %call.i.i94 = tail call i32 @rtw89_mac_check_mac_en(ptr noundef %3, i8 noundef zeroext 0, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i94)
  %tobool.not.i.i = icmp ne i32 %call.i.i94, 0
  %548 = add nsw i32 %sel.07.i, -22
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %548)
  %549 = icmp ult i32 %548, 17
  %550 = and i1 %549, %tobool.not.i.i
  br i1 %550, label %if.end10.i.i.for.inc.i98_crit_edge, label %if.end16.i.i

if.end10.i.i.for.inc.i98_crit_edge:               ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i98

if.end16.i.i:                                     ; preds = %if.end10.i.i
  %call17.i.i = tail call i32 @rtw89_mac_check_mac_en(ptr noundef %3, i8 noundef zeroext 0, i32 noundef 1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i.i)
  %tobool18.not.i.i = icmp ne i32 %call17.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %sel.07.i)
  %cmp22.i.i = icmp ult i32 %sel.07.i, 11
  %or.cond50.i.i = and i1 %cmp22.i.i, %tobool18.not.i.i
  br i1 %or.cond50.i.i, label %if.end16.i.i.for.inc.i98_crit_edge, label %is_dbg_port_valid.exit.i

if.end16.i.i.for.inc.i98_crit_edge:               ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i98

is_dbg_port_valid.exit.i:                         ; preds = %if.end16.i.i
  %call25.i.i = tail call i32 @rtw89_mac_check_mac_en(ptr noundef %3, i8 noundef zeroext 1, i32 noundef 1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i.i)
  %tobool26.not.i.i = icmp eq i32 %call25.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %548)
  %551 = icmp ult i32 %548, -11
  %not..i.i = or i1 %551, %tobool26.not.i.i
  br i1 %not..i.i, label %if.end.i95, label %is_dbg_port_valid.exit.i.for.inc.i98_crit_edge

is_dbg_port_valid.exit.i.for.inc.i98_crit_edge:   ; preds = %is_dbg_port_valid.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i98

if.end.i95:                                       ; preds = %is_dbg_port_valid.exit.i
  %552 = zext i32 %sel.07.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %552, ptr @__sancov_gen_cov_switch_values.433)
  switch i32 %sel.07.i, label %do.end.i [
    i32 0, label %sw.bb.i.i
    i32 11, label %sw.bb1.i.i
    i32 1, label %sw.bb2.i.i
    i32 12, label %sw.bb3.i.i
    i32 2, label %sw.bb4.i.i
    i32 13, label %sw.bb5.i.i
    i32 3, label %sw.bb6.i.i
    i32 14, label %sw.bb7.i.i
    i32 4, label %sw.bb8.i.i
    i32 15, label %sw.bb9.i.i
    i32 5, label %if.end.i95.sw.epilog.i.i_crit_edge
    i32 16, label %sw.bb52.i.i.i
    i32 6, label %sw.bb10.i.i
    i32 17, label %sw.bb11.i.i
    i32 7, label %sw.bb12.i.i
    i32 8, label %sw.bb13.i.i
    i32 18, label %sw.bb14.i.i
    i32 19, label %sw.bb15.i.i
    i32 9, label %sw.bb16.i.i
    i32 10, label %sw.bb17.i.i
    i32 20, label %sw.bb18.i.i
    i32 21, label %sw.bb19.i.i
    i32 22, label %sw.bb20.i.i
    i32 23, label %sw.bb21.i.i
    i32 24, label %sw.bb22.i.i
    i32 25, label %sw.bb23.i.i
    i32 26, label %sw.bb24.i.i
    i32 27, label %sw.bb25.i.i
    i32 28, label %sw.bb26.i.i
    i32 29, label %sw.bb27.i.i
    i32 30, label %sw.bb28.i.i
    i32 31, label %sw.bb29.i.i
    i32 32, label %sw.bb30.i.i
    i32 33, label %sw.bb31.i.i
    i32 34, label %sw.bb32.i.i
    i32 35, label %sw.bb33.i.i
    i32 36, label %sw.bb34.i.i
    i32 37, label %sw.bb35.i.i
    i32 38, label %sw.bb36.i.i
    i32 39, label %sw.bb37.i.i
    i32 40, label %sw.bb38.i.i
    i32 41, label %sw.bb39.i.i
    i32 42, label %sw.bb40.i.i
    i32 43, label %sw.bb41.i.i
    i32 44, label %sw.bb42.i.i
    i32 45, label %sw.bb43.i.i
  ]

if.end.i95.sw.epilog.i.i_crit_edge:               ; preds = %if.end.i95
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i.i

sw.bb52.i.i.i:                                    ; preds = %if.end.i95
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i.i

sw.bb.i.i:                                        ; preds = %if.end.i95
  call void @__sanitizer_cov_trace_pc() #14
  %553 = ptrtoint ptr %hci.i799.i.i.i to i32
  call void @__asan_load4_noabort(i32 %553)
  %554 = load ptr, ptr %hci.i799.i.i.i, align 8
  %read16.i.i.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %554, i32 0, i32 8
  %555 = ptrtoint ptr %read16.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %555)
  %556 = load ptr, ptr %read16.i.i.i.i, align 4
  %call.i.i.i.i = tail call zeroext i16 %556(ptr noundef %3, i32 noundef 50932) #12
  %557 = or i16 %call.i.i.i.i, 256
  %558 = ptrtoint ptr %hci.i799.i.i.i to i32
  call void @__asan_load4_noabort(i32 %558)
  %559 = load ptr, ptr %hci.i799.i.i.i, align 8
  %write16.i.i.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %559, i32 0, i32 11
  %560 = ptrtoint ptr %write16.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %560)
  %561 = load ptr, ptr %write16.i.i.i.i, align 4
  tail call void %561(ptr noundef %3, i32 noundef 50932, i16 noundef zeroext %557) #12
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.334) #12
  br label %sw.epilog.i.i

sw.bb1.i.i:                                       ; preds = %if.end.i95
  call void @__sanitizer_cov_trace_pc() #14
  %562 = ptrtoint ptr %hci.i799.i.i.i to i32
  call void @__asan_load4_noabort(i32 %562)
  %563 = load ptr, ptr %hci.i799.i.i.i, align 8
  %read16.i629.i.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %563, i32 0, i32 8
  %564 = ptrtoint ptr %read16.i629.i.i.i to i32
  call void @__asan_load4_noabort(i32 %564)
  %565 = load ptr, ptr %read16.i629.i.i.i, align 4
  %call.i630.i.i.i = tail call zeroext i16 %565(ptr noundef %3, i32 noundef 59124) #12
  %566 = or i16 %call.i630.i.i.i, 256
  %567 = ptrtoint ptr %hci.i799.i.i.i to i32
  call void @__asan_load4_noabort(i32 %567)
  %568 = load ptr, ptr %hci.i799.i.i.i, align 8
  %write16.i632.i.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %568, i32 0, i32 11
  %569 = ptrtoint ptr %write16.i632.i.i.i to i32
  call void @__asan_load4_noabort(i32 %569)
  %570 = load ptr, ptr %write16.i632.i.i.i, align 4
  tail call void %570(ptr noundef %3, i32 noundef 59124, i16 noundef zeroext %566) #12
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.335) #12
  br label %sw.epilog.i.i

sw.bb2.i.i:                                       ; preds = %if.end.i95
  call void @__sanitizer_cov_trace_pc() #14
  %571 = ptrtoint ptr %hci.i799.i.i.i to i32
  call void @__asan_load4_noabort(i32 %571)
  %572 = load ptr, ptr %hci.i799.i.i.i, align 8
  %read32.i.i.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %572, i32 0, i32 9
  %573 = ptrtoint ptr %read32.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %573)
  %574 = load ptr, ptr %read32.i.i.i.i, align 4
  %call.i634.i.i.i = tail call i32 %574(ptr noundef %3, i32 noundef 50164) #12
  %or9.i.i.i = or i32 %call.i634.i.i.i, 65536
  %575 = ptrtoint ptr %hci.i799.i.i.i to i32
  call void @__asan_load4_noabort(i32 %575)
  %576 = load ptr, ptr %hci.i799.i.i.i, align 8
  %write32.i.i.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %576, i32 0, i32 12
  %577 = ptrtoint ptr %write32.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %577)
  %578 = load ptr, ptr %write32.i.i.i.i, align 4
  tail call void %578(ptr noundef %3, i32 noundef 50164, i32 noundef %or9.i.i.i) #12
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.336) #12
  br label %sw.epilog.i.i

sw.bb3.i.i:                                       ; preds = %if.end.i95
  call void @__sanitizer_cov_trace_pc() #14
  %579 = ptrtoint ptr %hci.i799.i.i.i to i32
  call void @__asan_load4_noabort(i32 %579)
  %580 = load ptr, ptr %hci.i799.i.i.i, align 8
  %read32.i637.i.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %580, i32 0, i32 9
  %581 = ptrtoint ptr %read32.i637.i.i.i to i32
  call void @__asan_load4_noabort(i32 %581)
  %582 = load ptr, ptr %read32.i637.i.i.i, align 4
  %call.i638.i.i.i = tail call i32 %582(ptr noundef %3, i32 noundef 58356) #12
  %or12.i.i.i = or i32 %call.i638.i.i.i, 65536
  %583 = ptrtoint ptr %hci.i799.i.i.i to i32
  call void @__asan_load4_noabort(i32 %583)
  %584 = load ptr, ptr %hci.i799.i.i.i, align 8
  %write32.i640.i.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %584, i32 0, i32 12
  %585 = ptrtoint ptr %write32.i640.i.i.i to i32
  call void @__asan_load4_noabort(i32 %585)
  %586 = load ptr, ptr %write32.i640.i.i.i, align 4
  tail call void %586(ptr noundef %3, i32 noundef 58356, i32 noundef %or12.i.i.i) #12
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.337) #12
  br label %sw.epilog.i.i

sw.bb4.i.i:                                       ; preds = %if.end.i95
  call void @__sanitizer_cov_trace_pc() #14
  %587 = ptrtoint ptr %hci.i799.i.i.i to i32
  call void @__asan_load4_noabort(i32 %587)
  %588 = load ptr, ptr %hci.i799.i.i.i, align 8
  %read32.i642.i.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %588, i32 0, i32 9
  %589 = ptrtoint ptr %read32.i642.i.i.i to i32
  call void @__asan_load4_noabort(i32 %589)
  %590 = load ptr, ptr %read32.i642.i.i.i, align 4
  %call.i643.i.i.i = tail call i32 %590(ptr noundef %3, i32 noundef 52468) #12
  %and.i.i.i.i = and i32 %call.i643.i.i.i, -256
  %591 = ptrtoint ptr %hci.i799.i.i.i to i32
  call void @__asan_load4_noabort(i32 %591)
  %592 = load ptr, ptr %hci.i799.i.i.i, align 8
  %write32.i645.i.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %592, i32 0, i32 12
  %593 = ptrtoint ptr %write32.i645.i.i.i to i32
  call void @__asan_load4_noabort(i32 %593)
  %594 = load ptr, ptr %write32.i645.i.i.i, align 4
  tail call void %594(ptr noundef %3, i32 noundef 52468, i32 noundef %and.i.i.i.i) #12
  %595 = ptrtoint ptr %hci.i799.i.i.i to i32
  call void @__asan_load4_noabort(i32 %595)
  %596 = load ptr, ptr %hci.i799.i.i.i, align 8
  %read32.i647.i.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %596, i32 0, i32 9
  %597 = ptrtoint ptr %read32.i647.i.i.i to i32
  call void @__asan_load4_noabort(i32 %597)
  %598 = load ptr, ptr %read32.i647.i.i.i, align 4
  %call.i648.i.i.i = tail call i32 %598(ptr noundef %3, i32 noundef 88) #12
  %and.i342.i.i.i = and i32 %call.i648.i.i.i, -16711936
  %or.i351.i.i.i = or i32 %and.i342.i.i.i, 10813605
  %599 = ptrtoint ptr %hci.i799.i.i.i to i32
  call void @__asan_load4_noabort(i32 %599)
  %600 = load ptr, ptr %hci.i799.i.i.i, align 8
  %write32.i650.i.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %600, i32 0, i32 12
  %601 = ptrtoint ptr %write32.i650.i.i.i to i32
  call void @__asan_load4_noabort(i32 %601)
  %602 = load ptr, ptr %write32.i650.i.i.i, align 4
  tail call void %602(ptr noundef %3, i32 noundef 88, i32 noundef %or.i351.i.i.i) #12
  %603 = ptrtoint ptr %hci.i799.i.i.i to i32
  call void @__asan_load4_noabort(i32 %603)
  %604 = load ptr, ptr %hci.i799.i.i.i, align 8
  %read32.i652.i.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %604, i32 0, i32 9
  %605 = ptrtoint ptr %read32.i652.i.i.i to i32
  call void @__asan_load4_noabort(i32 %605)
  %606 = load ptr, ptr %read32.i652.i.i.i, align 4
  %call.i653.i.i.i = tail call i32 %606(ptr noundef %3, i32 noundef 244) #12
  %and.i356.i.i.i = and i32 %call.i653.i.i.i, -196609
  %or.i360.i.i.i = or i32 %and.i356.i.i.i, 65536
  %607 = ptrtoint ptr %hci.i799.i.i.i to i32
  call void @__asan_load4_noabort(i32 %607)
  %608 = load ptr, ptr %hci.i799.i.i.i, align 8
  %write32.i655.i.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %608, i32 0, i32 12
  %609 = ptrtoint ptr %write32.i655.i.i.i to i32
  call void @__asan_load4_noabort(i32 %609)
  %610 = load ptr, ptr %write32.i655.i.i.i, align 4
  tail call void %610(ptr noundef %3, i32 noundef 244, i32 noundef %or.i360.i.i.i) #12
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.338) #12
  br label %sw.epilog.i.i

sw.bb5.i.i:                                       ; preds = %if.end.i95
  call void @__sanitizer_cov_trace_pc() #14
  %611 = ptrtoint ptr %hci.i799.i.i.i to i32
  call void @__asan_load4_noabort(i32 %611)
  %612 = load ptr, ptr %hci.i799.i.i.i, align 8
  %read32.i657.i.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %612, i32 0, i32 9
  %613 = ptrtoint ptr %read32.i657.i.i.i to i32
  call void @__asan_load4_noabort(i32 %613)
  %614 = load ptr, ptr %read32.i657.i.i.i, align 4
  %call.i658.i.i.i = tail call i32 %614(ptr noundef %3, i32 noundef 60660) #12
  %and.i365.i.i.i = and i32 %call.i658.i.i.i, -256
  %615 = ptrtoint ptr %hci.i799.i.i.i to i32
  call void @__asan_load4_noabort(i32 %615)
  %616 = load ptr, ptr %hci.i799.i.i.i, align 8
  %write32.i660.i.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %616, i32 0, i32 12
  %617 = ptrtoint ptr %write32.i660.i.i.i to i32
  call void @__asan_load4_noabort(i32 %617)
  %618 = load ptr, ptr %write32.i660.i.i.i, align 4
  tail call void %618(ptr noundef %3, i32 noundef 60660, i32 noundef %and.i365.i.i.i) #12
  %619 = ptrtoint ptr %hci.i799.i.i.i to i32
  call void @__asan_load4_noabort(i32 %619)
  %620 = load ptr, ptr %hci.i799.i.i.i, align 8
  %read32.i662.i.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %620, i32 0, i32 9
  %621 = ptrtoint ptr %read32.i662.i.i.i to i32
  call void @__asan_load4_noabort(i32 %621)
  %622 = load ptr, ptr %read32.i662.i.i.i, align 4
  %call.i663.i.i.i = tail call i32 %622(ptr noundef %3, i32 noundef 88) #12
  %and.i370.i.i.i = and i32 %call.i663.i.i.i, -16711936
  %or.i383.i.i.i = or i32 %and.i370.i.i.i, 11862197
  %623 = ptrtoint ptr %hci.i799.i.i.i to i32
  call void @__asan_load4_noabort(i32 %623)
  %624 = load ptr, ptr %hci.i799.i.i.i, align 8
  %write32.i665.i.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %624, i32 0, i32 12
  %625 = ptrtoint ptr %write32.i665.i.i.i to i32
  call void @__asan_load4_noabort(i32 %625)
  %626 = load ptr, ptr %write32.i665.i.i.i, align 4
  tail call void %626(ptr noundef %3, i32 noundef 88, i32 noundef %or.i383.i.i.i) #12
  %627 = ptrtoint ptr %hci.i799.i.i.i to i32
  call void @__asan_load4_noabort(i32 %627)
  %628 = load ptr, ptr %hci.i799.i.i.i, align 8
  %read32.i667.i.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %628, i32 0, i32 9
  %629 = ptrtoint ptr %read32.i667.i.i.i to i32
  call void @__asan_load4_noabort(i32 %629)
  %630 = load ptr, ptr %read32.i667.i.i.i, align 4
  %call.i668.i.i.i = tail call i32 %630(ptr noundef %3, i32 noundef 244) #12
  %and.i388.i.i.i = and i32 %call.i668.i.i.i, -196609
  %or.i392.i.i.i = or i32 %and.i388.i.i.i, 65536
  %631 = ptrtoint ptr %hci.i799.i.i.i to i32
  call void @__asan_load4_noabort(i32 %631)
  %632 = load ptr, ptr %hci.i799.i.i.i, align 8
  %write32.i670.i.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %632, i32 0, i32 12
  %633 = ptrtoint ptr %write32.i670.i.i.i to i32
  call void @__asan_load4_noabort(i32 %633)
  %634 = load ptr, ptr %write32.i670.i.i.i, align 4
  tail call void %634(ptr noundef %3, i32 noundef 244, i32 noundef %or.i392.i.i.i) #12
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.339) #12
  br label %sw.epilog.i.i

sw.bb6.i.i:                                       ; preds = %if.end.i95
  call void @__sanitizer_cov_trace_pc() #14
  %635 = ptrtoint ptr %hci.i799.i.i.i to i32
  call void @__asan_load4_noabort(i32 %635)
  %636 = load ptr, ptr %hci.i799.i.i.i, align 8
  %read32.i672.i.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %636, i32 0, i32 9
  %637 = ptrtoint ptr %read32.i672.i.i.i to i32
  call void @__asan_load4_noabort(i32 %637)
  %638 = load ptr, ptr %read32.i672.i.i.i, align 4
  %call.i673.i.i.i = tail call i32 %638(ptr noundef %3, i32 noundef 52468) #12
  %and.i397.i.i.i = and i32 %call.i673.i.i.i, -256
  %or.i401.i.i.i = or i32 %and.i397.i.i.i, 1
  %639 = ptrtoint ptr %hci.i799.i.i.i to i32
  call void @__asan_load4_noabort(i32 %639)
  %640 = load ptr, ptr %hci.i799.i.i.i, align 8
  %write32.i675.i.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %640, i32 0, i32 12
  %641 = ptrtoint ptr %write32.i675.i.i.i to i32
  call void @__asan_load4_noabort(i32 %641)
  %642 = load ptr, ptr %write32.i675.i.i.i, align 4
  tail call void %642(ptr noundef %3, i32 noundef 52468, i32 noundef %or.i401.i.i.i) #12
  %643 = ptrtoint ptr %hci.i799.i.i.i to i32
  call void @__asan_load4_noabort(i32 %643)
  %644 = load ptr, ptr %hci.i799.i.i.i, align 8
  %read32.i677.i.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %644, i32 0, i32 9
  %645 = ptrtoint ptr %read32.i677.i.i.i to i32
  call void @__asan_load4_noabort(i32 %645)
  %646 = load ptr, ptr %read32.i677.i.i.i, align 4
  %call.i678.i.i.i = tail call i32 %646(ptr noundef %3, i32 noundef 88) #12
  %and.i406.i.i.i = and i32 %call.i678.i.i.i, -16711936
  %or.i419.i.i.i = or i32 %and.i406.i.i.i, 10879142
  %647 = ptrtoint ptr %hci.i799.i.i.i to i32
  call void @__asan_load4_noabort(i32 %647)
  %648 = load ptr, ptr %hci.i799.i.i.i, align 8
  %write32.i680.i.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %648, i32 0, i32 12
  %649 = ptrtoint ptr %write32.i680.i.i.i to i32
  call void @__asan_load4_noabort(i32 %649)
  %650 = load ptr, ptr %write32.i680.i.i.i, align 4
  tail call void %650(ptr noundef %3, i32 noundef 88, i32 noundef %or.i419.i.i.i) #12
  %651 = ptrtoint ptr %hci.i799.i.i.i to i32
  call void @__asan_load4_noabort(i32 %651)
  %652 = load ptr, ptr %hci.i799.i.i.i, align 8
  %read32.i682.i.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %652, i32 0, i32 9
  %653 = ptrtoint ptr %read32.i682.i.i.i to i32
  call void @__asan_load4_noabort(i32 %653)
  %654 = load ptr, ptr %read32.i682.i.i.i, align 4
  %call.i683.i.i.i = tail call i32 %654(ptr noundef %3, i32 noundef 244) #12
  %and.i424.i.i.i = and i32 %call.i683.i.i.i, -196609
  %or.i428.i.i.i = or i32 %and.i424.i.i.i, 65536
  %655 = ptrtoint ptr %hci.i799.i.i.i to i32
  call void @__asan_load4_noabort(i32 %655)
  %656 = load ptr, ptr %hci.i799.i.i.i, align 8
  %write32.i685.i.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %656, i32 0, i32 12
  %657 = ptrtoint ptr %write32.i685.i.i.i to i32
  call void @__asan_load4_noabort(i32 %657)
  %658 = load ptr, ptr %write32.i685.i.i.i, align 4
  tail call void %658(ptr noundef %3, i32 noundef 244, i32 noundef %or.i428.i.i.i) #12
  %659 = ptrtoint ptr %hci.i799.i.i.i to i32
  call void @__asan_load4_noabort(i32 %659)
  %660 = load ptr, ptr %hci.i799.i.i.i, align 8
  %read8.i.i.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %660, i32 0, i32 7
  %661 = ptrtoint ptr %read8.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %661)
  %662 = load ptr, ptr %read8.i.i.i.i, align 4
  %call.i687.i.i.i = tail call zeroext i8 %662(ptr noundef %3, i32 noundef 52468) #12
  %663 = ptrtoint ptr %hci.i799.i.i.i to i32
  call void @__asan_load4_noabort(i32 %663)
  %664 = load ptr, ptr %hci.i799.i.i.i, align 8
  %write8.i.i.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %664, i32 0, i32 10
  %665 = ptrtoint ptr %write8.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %665)
  %666 = load ptr, ptr %write8.i.i.i.i, align 4
  tail call void %666(ptr noundef %3, i32 noundef 52468, i8 noundef zeroext 1) #12
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.340) #12
  br label %sw.epilog.i.i

sw.bb7.i.i:                                       ; preds = %if.end.i95
  call void @__sanitizer_cov_trace_pc() #14
  %667 = ptrtoint ptr %hci.i799.i.i.i to i32
  call void @__asan_load4_noabort(i32 %667)
  %668 = load ptr, ptr %hci.i799.i.i.i, align 8
  %read32.i690.i.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %668, i32 0, i32 9
  %669 = ptrtoint ptr %read32.i690.i.i.i to i32
  call void @__asan_load4_noabort(i32 %669)
  %670 = load ptr, ptr %read32.i690.i.i.i, align 4
  %call.i691.i.i.i = tail call i32 %670(ptr noundef %3, i32 noundef 60660) #12
  %and.i433.i.i.i = and i32 %call.i691.i.i.i, -256
  %or.i437.i.i.i = or i32 %and.i433.i.i.i, 1
  %671 = ptrtoint ptr %hci.i799.i.i.i to i32
  call void @__asan_load4_noabort(i32 %671)
  %672 = load ptr, ptr %hci.i799.i.i.i, align 8
  %write32.i693.i.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %672, i32 0, i32 12
  %673 = ptrtoint ptr %write32.i693.i.i.i to i32
  call void @__asan_load4_noabort(i32 %673)
  %674 = load ptr, ptr %write32.i693.i.i.i, align 4
  tail call void %674(ptr noundef %3, i32 noundef 60660, i32 noundef %or.i437.i.i.i) #12
  %675 = ptrtoint ptr %hci.i799.i.i.i to i32
  call void @__asan_load4_noabort(i32 %675)
  %676 = load ptr, ptr %hci.i799.i.i.i, align 8
  %read32.i695.i.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %676, i32 0, i32 9
  %677 = ptrtoint ptr %read32.i695.i.i.i to i32
  call void @__asan_load4_noabort(i32 %677)
  %678 = load ptr, ptr %read32.i695.i.i.i, align 4
  %call.i696.i.i.i = tail call i32 %678(ptr noundef %3, i32 noundef 88) #12
  %and.i442.i.i.i = and i32 %call.i696.i.i.i, -16711936
  %or.i455.i.i.i = or i32 %and.i442.i.i.i, 11927734
  %679 = ptrtoint ptr %hci.i799.i.i.i to i32
  call void @__asan_load4_noabort(i32 %679)
  %680 = load ptr, ptr %hci.i799.i.i.i, align 8
  %write32.i698.i.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %680, i32 0, i32 12
  %681 = ptrtoint ptr %write32.i698.i.i.i to i32
  call void @__asan_load4_noabort(i32 %681)
  %682 = load ptr, ptr %write32.i698.i.i.i, align 4
  tail call void %682(ptr noundef %3, i32 noundef 88, i32 noundef %or.i455.i.i.i) #12
  %683 = ptrtoint ptr %hci.i799.i.i.i to i32
  call void @__asan_load4_noabort(i32 %683)
  %684 = load ptr, ptr %hci.i799.i.i.i, align 8
  %read32.i700.i.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %684, i32 0, i32 9
  %685 = ptrtoint ptr %read32.i700.i.i.i to i32
  call void @__asan_load4_noabort(i32 %685)
  %686 = load ptr, ptr %read32.i700.i.i.i, align 4
  %call.i701.i.i.i = tail call i32 %686(ptr noundef %3, i32 noundef 244) #12
  %and.i460.i.i.i = and i32 %call.i701.i.i.i, -196609
  %or.i464.i.i.i = or i32 %and.i460.i.i.i, 65536
  %687 = ptrtoint ptr %hci.i799.i.i.i to i32
  call void @__asan_load4_noabort(i32 %687)
  %688 = load ptr, ptr %hci.i799.i.i.i, align 8
  %write32.i703.i.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %688, i32 0, i32 12
  %689 = ptrtoint ptr %write32.i703.i.i.i to i32
  call void @__asan_load4_noabort(i32 %689)
  %690 = load ptr, ptr %write32.i703.i.i.i, align 4
  tail call void %690(ptr noundef %3, i32 noundef 244, i32 noundef %or.i464.i.i.i) #12
  %691 = ptrtoint ptr %hci.i799.i.i.i to i32
  call void @__asan_load4_noabort(i32 %691)
  %692 = load ptr, ptr %hci.i799.i.i.i, align 8
  %read8.i705.i.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %692, i32 0, i32 7
  %693 = ptrtoint ptr %read8.i705.i.i.i to i32
  call void @__asan_load4_noabort(i32 %693)
  %694 = load ptr, ptr %read8.i705.i.i.i, align 4
  %call.i706.i.i.i = tail call zeroext i8 %694(ptr noundef %3, i32 noundef 60660) #12
  %695 = ptrtoint ptr %hci.i799.i.i.i to i32
  call void @__asan_load4_noabort(i32 %695)
  %696 = load ptr, ptr %hci.i799.i.i.i, align 8
  %write8.i708.i.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %696, i32 0, i32 10
  %697 = ptrtoint ptr %write8.i708.i.i.i to i32
  call void @__asan_load4_noabort(i32 %697)
  %698 = load ptr, ptr %write8.i708.i.i.i, align 4
  tail call void %698(ptr noundef %3, i32 noundef 60660, i8 noundef zeroext 1) #12
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.341) #12
  br label %sw.epilog.i.i

sw.bb8.i.i:                                       ; preds = %if.end.i95
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.342) #12
  br label %sw.epilog.i.i

sw.bb9.i.i:                                       ; preds = %if.end.i95
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.343) #12
  br label %sw.epilog.i.i

sw.bb10.i.i:                                      ; preds = %if.end.i95
  call void @__sanitizer_cov_trace_pc() #14
  %699 = ptrtoint ptr %hci.i799.i.i.i to i32
  call void @__asan_load4_noabort(i32 %699)
  %700 = load ptr, ptr %hci.i799.i.i.i, align 8
  %read32.i710.i.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %700, i32 0, i32 9
  %701 = ptrtoint ptr %read32.i710.i.i.i to i32
  call void @__asan_load4_noabort(i32 %701)
  %702 = load ptr, ptr %read32.i710.i.i.i, align 4
  %call.i711.i.i.i = tail call i32 %702(ptr noundef %3, i32 noundef 88) #12
  %and.i469.i.i.i = and i32 %call.i711.i.i.i, -16711936
  %or.i482.i.i.i = or i32 %and.i469.i.i.i, 10944679
  %703 = ptrtoint ptr %hci.i799.i.i.i to i32
  call void @__asan_load4_noabort(i32 %703)
  %704 = load ptr, ptr %hci.i799.i.i.i, align 8
  %write32.i713.i.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %704, i32 0, i32 12
  %705 = ptrtoint ptr %write32.i713.i.i.i to i32
  call void @__asan_load4_noabort(i32 %705)
  %706 = load ptr, ptr %write32.i713.i.i.i, align 4
  tail call void %706(ptr noundef %3, i32 noundef 88, i32 noundef %or.i482.i.i.i) #12
  %707 = ptrtoint ptr %hci.i799.i.i.i to i32
  call void @__asan_load4_noabort(i32 %707)
  %708 = load ptr, ptr %hci.i799.i.i.i, align 8
  %read32.i715.i.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %708, i32 0, i32 9
  %709 = ptrtoint ptr %read32.i715.i.i.i to i32
  call void @__asan_load4_noabort(i32 %709)
  %710 = load ptr, ptr %read32.i715.i.i.i, align 4
  %call.i716.i.i.i = tail call i32 %710(ptr noundef %3, i32 noundef 244) #12
  %and.i487.i.i.i = and i32 %call.i716.i.i.i, -196609
  %or.i491.i.i.i = or i32 %and.i487.i.i.i, 65536
  %711 = ptrtoint ptr %hci.i799.i.i.i to i32
  call void @__asan_load4_noabort(i32 %711)
  %712 = load ptr, ptr %hci.i799.i.i.i, align 8
  %write32.i718.i.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %712, i32 0, i32 12
  %713 = ptrtoint ptr %write32.i718.i.i.i to i32
  call void @__asan_load4_noabort(i32 %713)
  %714 = load ptr, ptr %write32.i718.i.i.i, align 4
  tail call void %714(ptr noundef %3, i32 noundef 244, i32 noundef %or.i491.i.i.i) #12
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.346) #12
  br label %sw.epilog.i.i

sw.bb11.i.i:                                      ; preds = %if.end.i95
  call void @__sanitizer_cov_trace_pc() #14
  %715 = ptrtoint ptr %hci.i799.i.i.i to i32
  call void @__asan_load4_noabort(i32 %715)
  %716 = load ptr, ptr %hci.i799.i.i.i, align 8
  %read32.i720.i.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %716, i32 0, i32 9
  %717 = ptrtoint ptr %read32.i720.i.i.i to i32
  call void @__asan_load4_noabort(i32 %717)
  %718 = load ptr, ptr %read32.i720.i.i.i, align 4
  %call.i721.i.i.i = tail call i32 %718(ptr noundef %3, i32 noundef 88) #12
  %and.i496.i.i.i = and i32 %call.i721.i.i.i, -16711936
  %or.i509.i.i.i = or i32 %and.i496.i.i.i, 11993271
  %719 = ptrtoint ptr %hci.i799.i.i.i to i32
  call void @__asan_load4_noabort(i32 %719)
  %720 = load ptr, ptr %hci.i799.i.i.i, align 8
  %write32.i723.i.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %720, i32 0, i32 12
  %721 = ptrtoint ptr %write32.i723.i.i.i to i32
  call void @__asan_load4_noabort(i32 %721)
  %722 = load ptr, ptr %write32.i723.i.i.i, align 4
  tail call void %722(ptr noundef %3, i32 noundef 88, i32 noundef %or.i509.i.i.i) #12
  %723 = ptrtoint ptr %hci.i799.i.i.i to i32
  call void @__asan_load4_noabort(i32 %723)
  %724 = load ptr, ptr %hci.i799.i.i.i, align 8
  %read32.i725.i.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %724, i32 0, i32 9
  %725 = ptrtoint ptr %read32.i725.i.i.i to i32
  call void @__asan_load4_noabort(i32 %725)
  %726 = load ptr, ptr %read32.i725.i.i.i, align 4
  %call.i726.i.i.i = tail call i32 %726(ptr noundef %3, i32 noundef 244) #12
  %and.i514.i.i.i = and i32 %call.i726.i.i.i, -196609
  %or.i518.i.i.i = or i32 %and.i514.i.i.i, 65536
  %727 = ptrtoint ptr %hci.i799.i.i.i to i32
  call void @__asan_load4_noabort(i32 %727)
  %728 = load ptr, ptr %hci.i799.i.i.i, align 8
  %write32.i728.i.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %728, i32 0, i32 12
  %729 = ptrtoint ptr %write32.i728.i.i.i to i32
  call void @__asan_load4_noabort(i32 %729)
  %730 = load ptr, ptr %write32.i728.i.i.i, align 4
  tail call void %730(ptr noundef %3, i32 noundef 244, i32 noundef %or.i518.i.i.i) #12
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.347) #12
  br label %sw.epilog.i.i

sw.bb12.i.i:                                      ; preds = %if.end.i95
  call void @__sanitizer_cov_trace_pc() #14
  %731 = ptrtoint ptr %hci.i799.i.i.i to i32
  call void @__asan_load4_noabort(i32 %731)
  %732 = load ptr, ptr %hci.i799.i.i.i, align 8
  %read32.i730.i.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %732, i32 0, i32 9
  %733 = ptrtoint ptr %read32.i730.i.i.i to i32
  call void @__asan_load4_noabort(i32 %733)
  %734 = load ptr, ptr %read32.i730.i.i.i, align 4
  %call.i731.i.i.i = tail call i32 %734(ptr noundef %3, i32 noundef 51716) #12
  %or67.i.i.i = or i32 %call.i731.i.i.i, 67108864
  %735 = ptrtoint ptr %hci.i799.i.i.i to i32
  call void @__asan_load4_noabort(i32 %735)
  %736 = load ptr, ptr %hci.i799.i.i.i, align 8
  %write32.i733.i.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %736, i32 0, i32 12
  %737 = ptrtoint ptr %write32.i733.i.i.i to i32
  call void @__asan_load4_noabort(i32 %737)
  %738 = load ptr, ptr %write32.i733.i.i.i, align 4
  tail call void %738(ptr noundef %3, i32 noundef 51716, i32 noundef %or67.i.i.i) #12
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.348) #12
  br label %sw.epilog.i.i

sw.bb13.i.i:                                      ; preds = %if.end.i95
  call void @__sanitizer_cov_trace_pc() #14
  %739 = ptrtoint ptr %hci.i799.i.i.i to i32
  call void @__asan_load4_noabort(i32 %739)
  %740 = load ptr, ptr %hci.i799.i.i.i, align 8
  %read32.i735.i.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %740, i32 0, i32 9
  %741 = ptrtoint ptr %read32.i735.i.i.i to i32
  call void @__asan_load4_noabort(i32 %741)
  %742 = load ptr, ptr %read32.i735.i.i.i, align 4
  %call.i736.i.i.i = tail call i32 %742(ptr noundef %3, i32 noundef 51716) #12
  %or70.i.i.i = or i32 %call.i736.i.i.i, 67108864
  %743 = ptrtoint ptr %hci.i799.i.i.i to i32
  call void @__asan_load4_noabort(i32 %743)
  %744 = load ptr, ptr %hci.i799.i.i.i, align 8
  %write32.i738.i.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %744, i32 0, i32 12
  %745 = ptrtoint ptr %write32.i738.i.i.i to i32
  call void @__asan_load4_noabort(i32 %745)
  %746 = load ptr, ptr %write32.i738.i.i.i, align 4
  tail call void %746(ptr noundef %3, i32 noundef 51716, i32 noundef %or70.i.i.i) #12
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.349) #12
  br label %sw.epilog.i.i

sw.bb14.i.i:                                      ; preds = %if.end.i95
  call void @__sanitizer_cov_trace_pc() #14
  %747 = ptrtoint ptr %hci.i799.i.i.i to i32
  call void @__asan_load4_noabort(i32 %747)
  %748 = load ptr, ptr %hci.i799.i.i.i, align 8
  %read32.i740.i.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %748, i32 0, i32 9
  %749 = ptrtoint ptr %read32.i740.i.i.i to i32
  call void @__asan_load4_noabort(i32 %749)
  %750 = load ptr, ptr %read32.i740.i.i.i, align 4
  %call.i741.i.i.i = tail call i32 %750(ptr noundef %3, i32 noundef 59908) #12
  %or73.i.i.i = or i32 %call.i741.i.i.i, 67108864
  %751 = ptrtoint ptr %hci.i799.i.i.i to i32
  call void @__asan_load4_noabort(i32 %751)
  %752 = load ptr, ptr %hci.i799.i.i.i, align 8
  %write32.i743.i.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %752, i32 0, i32 12
  %753 = ptrtoint ptr %write32.i743.i.i.i to i32
  call void @__asan_load4_noabort(i32 %753)
  %754 = load ptr, ptr %write32.i743.i.i.i, align 4
  tail call void %754(ptr noundef %3, i32 noundef 59908, i32 noundef %or73.i.i.i) #12
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.348) #12
  br label %sw.epilog.i.i

sw.bb15.i.i:                                      ; preds = %if.end.i95
  call void @__sanitizer_cov_trace_pc() #14
  %755 = ptrtoint ptr %hci.i799.i.i.i to i32
  call void @__asan_load4_noabort(i32 %755)
  %756 = load ptr, ptr %hci.i799.i.i.i, align 8
  %read32.i745.i.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %756, i32 0, i32 9
  %757 = ptrtoint ptr %read32.i745.i.i.i to i32
  call void @__asan_load4_noabort(i32 %757)
  %758 = load ptr, ptr %read32.i745.i.i.i, align 4
  %call.i746.i.i.i = tail call i32 %758(ptr noundef %3, i32 noundef 59908) #12
  %or76.i.i.i = or i32 %call.i746.i.i.i, 67108864
  %759 = ptrtoint ptr %hci.i799.i.i.i to i32
  call void @__asan_load4_noabort(i32 %759)
  %760 = load ptr, ptr %hci.i799.i.i.i, align 8
  %write32.i748.i.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %760, i32 0, i32 12
  %761 = ptrtoint ptr %write32.i748.i.i.i to i32
  call void @__asan_load4_noabort(i32 %761)
  %762 = load ptr, ptr %write32.i748.i.i.i, align 4
  tail call void %762(ptr noundef %3, i32 noundef 59908, i32 noundef %or76.i.i.i) #12
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.349) #12
  br label %sw.epilog.i.i

sw.bb16.i.i:                                      ; preds = %if.end.i95
  call void @__sanitizer_cov_trace_pc() #14
  %763 = ptrtoint ptr %hci.i799.i.i.i to i32
  call void @__asan_load4_noabort(i32 %763)
  %764 = load ptr, ptr %hci.i799.i.i.i, align 8
  %read32.i750.i.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %764, i32 0, i32 9
  %765 = ptrtoint ptr %read32.i750.i.i.i to i32
  call void @__asan_load4_noabort(i32 %765)
  %766 = load ptr, ptr %read32.i750.i.i.i, align 4
  %call.i751.i.i.i = tail call i32 %766(ptr noundef %3, i32 noundef 51716) #12
  %or79.i.i.i = or i32 %call.i751.i.i.i, 67108864
  %767 = ptrtoint ptr %hci.i799.i.i.i to i32
  call void @__asan_load4_noabort(i32 %767)
  %768 = load ptr, ptr %hci.i799.i.i.i, align 8
  %write32.i753.i.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %768, i32 0, i32 12
  %769 = ptrtoint ptr %write32.i753.i.i.i to i32
  call void @__asan_load4_noabort(i32 %769)
  %770 = load ptr, ptr %write32.i753.i.i.i, align 4
  tail call void %770(ptr noundef %3, i32 noundef 51716, i32 noundef %or79.i.i.i) #12
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.350) #12
  br label %sw.epilog.i.i

sw.bb17.i.i:                                      ; preds = %if.end.i95
  call void @__sanitizer_cov_trace_pc() #14
  %771 = ptrtoint ptr %hci.i799.i.i.i to i32
  call void @__asan_load4_noabort(i32 %771)
  %772 = load ptr, ptr %hci.i799.i.i.i, align 8
  %read32.i755.i.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %772, i32 0, i32 9
  %773 = ptrtoint ptr %read32.i755.i.i.i to i32
  call void @__asan_load4_noabort(i32 %773)
  %774 = load ptr, ptr %read32.i755.i.i.i, align 4
  %call.i756.i.i.i = tail call i32 %774(ptr noundef %3, i32 noundef 51716) #12
  %or82.i.i.i = or i32 %call.i756.i.i.i, 67108864
  %775 = ptrtoint ptr %hci.i799.i.i.i to i32
  call void @__asan_load4_noabort(i32 %775)
  %776 = load ptr, ptr %hci.i799.i.i.i, align 8
  %write32.i758.i.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %776, i32 0, i32 12
  %777 = ptrtoint ptr %write32.i758.i.i.i to i32
  call void @__asan_load4_noabort(i32 %777)
  %778 = load ptr, ptr %write32.i758.i.i.i, align 4
  tail call void %778(ptr noundef %3, i32 noundef 51716, i32 noundef %or82.i.i.i) #12
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.351) #12
  br label %sw.epilog.i.i

sw.bb18.i.i:                                      ; preds = %if.end.i95
  call void @__sanitizer_cov_trace_pc() #14
  %779 = ptrtoint ptr %hci.i799.i.i.i to i32
  call void @__asan_load4_noabort(i32 %779)
  %780 = load ptr, ptr %hci.i799.i.i.i, align 8
  %read32.i760.i.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %780, i32 0, i32 9
  %781 = ptrtoint ptr %read32.i760.i.i.i to i32
  call void @__asan_load4_noabort(i32 %781)
  %782 = load ptr, ptr %read32.i760.i.i.i, align 4
  %call.i761.i.i.i = tail call i32 %782(ptr noundef %3, i32 noundef 59908) #12
  %or85.i.i.i = or i32 %call.i761.i.i.i, 67108864
  %783 = ptrtoint ptr %hci.i799.i.i.i to i32
  call void @__asan_load4_noabort(i32 %783)
  %784 = load ptr, ptr %hci.i799.i.i.i, align 8
  %write32.i763.i.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %784, i32 0, i32 12
  %785 = ptrtoint ptr %write32.i763.i.i.i to i32
  call void @__asan_load4_noabort(i32 %785)
  %786 = load ptr, ptr %write32.i763.i.i.i, align 4
  tail call void %786(ptr noundef %3, i32 noundef 59908, i32 noundef %or85.i.i.i) #12
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.350) #12
  br label %sw.epilog.i.i

sw.bb19.i.i:                                      ; preds = %if.end.i95
  call void @__sanitizer_cov_trace_pc() #14
  %787 = ptrtoint ptr %hci.i799.i.i.i to i32
  call void @__asan_load4_noabort(i32 %787)
  %788 = load ptr, ptr %hci.i799.i.i.i, align 8
  %read32.i765.i.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %788, i32 0, i32 9
  %789 = ptrtoint ptr %read32.i765.i.i.i to i32
  call void @__asan_load4_noabort(i32 %789)
  %790 = load ptr, ptr %read32.i765.i.i.i, align 4
  %call.i766.i.i.i = tail call i32 %790(ptr noundef %3, i32 noundef 59908) #12
  %or88.i.i.i = or i32 %call.i766.i.i.i, 67108864
  %791 = ptrtoint ptr %hci.i799.i.i.i to i32
  call void @__asan_load4_noabort(i32 %791)
  %792 = load ptr, ptr %hci.i799.i.i.i, align 8
  %write32.i768.i.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %792, i32 0, i32 12
  %793 = ptrtoint ptr %write32.i768.i.i.i to i32
  call void @__asan_load4_noabort(i32 %793)
  %794 = load ptr, ptr %write32.i768.i.i.i, align 4
  tail call void %794(ptr noundef %3, i32 noundef 59908, i32 noundef %or88.i.i.i) #12
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.351) #12
  br label %sw.epilog.i.i

sw.bb20.i.i:                                      ; preds = %if.end.i95
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.352) #12
  br label %sw.epilog.i.i

sw.bb21.i.i:                                      ; preds = %if.end.i95
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.353) #12
  br label %sw.epilog.i.i

sw.bb22.i.i:                                      ; preds = %if.end.i95
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.354) #12
  br label %sw.epilog.i.i

sw.bb23.i.i:                                      ; preds = %if.end.i95
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.355) #12
  br label %sw.epilog.i.i

sw.bb24.i.i:                                      ; preds = %if.end.i95
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.356) #12
  br label %sw.epilog.i.i

sw.bb25.i.i:                                      ; preds = %if.end.i95
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.357) #12
  br label %sw.epilog.i.i

sw.bb26.i.i:                                      ; preds = %if.end.i95
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.358) #12
  br label %sw.epilog.i.i

sw.bb27.i.i:                                      ; preds = %if.end.i95
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.359) #12
  br label %sw.epilog.i.i

sw.bb28.i.i:                                      ; preds = %if.end.i95
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.360) #12
  br label %sw.epilog.i.i

sw.bb29.i.i:                                      ; preds = %if.end.i95
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.361) #12
  br label %sw.epilog.i.i

sw.bb30.i.i:                                      ; preds = %if.end.i95
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.362) #12
  br label %sw.epilog.i.i

sw.bb31.i.i:                                      ; preds = %if.end.i95
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.363) #12
  br label %sw.epilog.i.i

sw.bb32.i.i:                                      ; preds = %if.end.i95
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.364) #12
  br label %sw.epilog.i.i

sw.bb33.i.i:                                      ; preds = %if.end.i95
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.365) #12
  br label %sw.epilog.i.i

sw.bb34.i.i:                                      ; preds = %if.end.i95
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.366) #12
  br label %sw.epilog.i.i

sw.bb35.i.i:                                      ; preds = %if.end.i95
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.367) #12
  br label %sw.epilog.i.i

sw.bb36.i.i:                                      ; preds = %if.end.i95
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.368) #12
  br label %sw.epilog.i.i

sw.bb37.i.i:                                      ; preds = %if.end.i95
  call void @__sanitizer_cov_trace_pc() #14
  %795 = ptrtoint ptr %hci.i799.i.i.i to i32
  call void @__asan_load4_noabort(i32 %795)
  %796 = load ptr, ptr %hci.i799.i.i.i, align 8
  %read32.i770.i.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %796, i32 0, i32 9
  %797 = ptrtoint ptr %read32.i770.i.i.i to i32
  call void @__asan_load4_noabort(i32 %797)
  %798 = load ptr, ptr %read32.i770.i.i.i, align 4
  %call.i771.i.i.i = tail call i32 %798(ptr noundef %3, i32 noundef 88) #12
  %and.i523.i.i.i = and i32 %call.i771.i.i.i, -16711936
  %or.i536.i.i.i = or i32 %and.i523.i.i.i, 3145776
  %799 = ptrtoint ptr %hci.i799.i.i.i to i32
  call void @__asan_load4_noabort(i32 %799)
  %800 = load ptr, ptr %hci.i799.i.i.i, align 8
  %write32.i773.i.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %800, i32 0, i32 12
  %801 = ptrtoint ptr %write32.i773.i.i.i to i32
  call void @__asan_load4_noabort(i32 %801)
  %802 = load ptr, ptr %write32.i773.i.i.i, align 4
  tail call void %802(ptr noundef %3, i32 noundef 88, i32 noundef %or.i536.i.i.i) #12
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.369) #12
  br label %sw.epilog.i.i

sw.bb38.i.i:                                      ; preds = %if.end.i95
  call void @__sanitizer_cov_trace_pc() #14
  %803 = ptrtoint ptr %hci.i799.i.i.i to i32
  call void @__asan_load4_noabort(i32 %803)
  %804 = load ptr, ptr %hci.i799.i.i.i, align 8
  %read32.i775.i.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %804, i32 0, i32 9
  %805 = ptrtoint ptr %read32.i775.i.i.i to i32
  call void @__asan_load4_noabort(i32 %805)
  %806 = load ptr, ptr %read32.i775.i.i.i, align 4
  %call.i776.i.i.i = tail call i32 %806(ptr noundef %3, i32 noundef 88) #12
  %and.i541.i.i.i = and i32 %call.i776.i.i.i, -16711936
  %or.i554.i.i.i = or i32 %and.i541.i.i.i, 3211313
  %807 = ptrtoint ptr %hci.i799.i.i.i to i32
  call void @__asan_load4_noabort(i32 %807)
  %808 = load ptr, ptr %hci.i799.i.i.i, align 8
  %write32.i778.i.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %808, i32 0, i32 12
  %809 = ptrtoint ptr %write32.i778.i.i.i to i32
  call void @__asan_load4_noabort(i32 %809)
  %810 = load ptr, ptr %write32.i778.i.i.i, align 4
  tail call void %810(ptr noundef %3, i32 noundef 88, i32 noundef %or.i554.i.i.i) #12
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.370) #12
  br label %sw.epilog.i.i

sw.bb39.i.i:                                      ; preds = %if.end.i95
  call void @__sanitizer_cov_trace_pc() #14
  %811 = ptrtoint ptr %hci.i799.i.i.i to i32
  call void @__asan_load4_noabort(i32 %811)
  %812 = load ptr, ptr %hci.i799.i.i.i, align 8
  %read32.i780.i.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %812, i32 0, i32 9
  %813 = ptrtoint ptr %read32.i780.i.i.i to i32
  call void @__asan_load4_noabort(i32 %813)
  %814 = load ptr, ptr %read32.i780.i.i.i, align 4
  %call.i781.i.i.i = tail call i32 %814(ptr noundef %3, i32 noundef 88) #12
  %and.i559.i.i.i = and i32 %call.i781.i.i.i, -16711936
  %or.i572.i.i.i = or i32 %and.i559.i.i.i, 3276850
  %815 = ptrtoint ptr %hci.i799.i.i.i to i32
  call void @__asan_load4_noabort(i32 %815)
  %816 = load ptr, ptr %hci.i799.i.i.i, align 8
  %write32.i783.i.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %816, i32 0, i32 12
  %817 = ptrtoint ptr %write32.i783.i.i.i to i32
  call void @__asan_load4_noabort(i32 %817)
  %818 = load ptr, ptr %write32.i783.i.i.i, align 4
  tail call void %818(ptr noundef %3, i32 noundef 88, i32 noundef %or.i572.i.i.i) #12
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.371) #12
  br label %sw.epilog.i.i

sw.bb40.i.i:                                      ; preds = %if.end.i95
  call void @__sanitizer_cov_trace_pc() #14
  %819 = ptrtoint ptr %hci.i799.i.i.i to i32
  call void @__asan_load4_noabort(i32 %819)
  %820 = load ptr, ptr %hci.i799.i.i.i, align 8
  %read32.i785.i.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %820, i32 0, i32 9
  %821 = ptrtoint ptr %read32.i785.i.i.i to i32
  call void @__asan_load4_noabort(i32 %821)
  %822 = load ptr, ptr %read32.i785.i.i.i, align 4
  %call.i786.i.i.i = tail call i32 %822(ptr noundef %3, i32 noundef 88) #12
  %and.i577.i.i.i = and i32 %call.i786.i.i.i, -16711936
  %or.i590.i.i.i = or i32 %and.i577.i.i.i, 3342387
  %823 = ptrtoint ptr %hci.i799.i.i.i to i32
  call void @__asan_load4_noabort(i32 %823)
  %824 = load ptr, ptr %hci.i799.i.i.i, align 8
  %write32.i788.i.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %824, i32 0, i32 12
  %825 = ptrtoint ptr %write32.i788.i.i.i to i32
  call void @__asan_load4_noabort(i32 %825)
  %826 = load ptr, ptr %write32.i788.i.i.i, align 4
  tail call void %826(ptr noundef %3, i32 noundef 88, i32 noundef %or.i590.i.i.i) #12
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.372) #12
  br label %sw.epilog.i.i

sw.bb41.i.i:                                      ; preds = %if.end.i95
  call void @__sanitizer_cov_trace_pc() #14
  %827 = ptrtoint ptr %hci.i799.i.i.i to i32
  call void @__asan_load4_noabort(i32 %827)
  %828 = load ptr, ptr %hci.i799.i.i.i, align 8
  %read32.i790.i.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %828, i32 0, i32 9
  %829 = ptrtoint ptr %read32.i790.i.i.i to i32
  call void @__asan_load4_noabort(i32 %829)
  %830 = load ptr, ptr %read32.i790.i.i.i, align 4
  %call.i791.i.i.i = tail call i32 %830(ptr noundef %3, i32 noundef 88) #12
  %and.i595.i.i.i = and i32 %call.i791.i.i.i, -16711936
  %or.i608.i.i.i = or i32 %and.i595.i.i.i, 3604535
  %831 = ptrtoint ptr %hci.i799.i.i.i to i32
  call void @__asan_load4_noabort(i32 %831)
  %832 = load ptr, ptr %hci.i799.i.i.i, align 8
  %write32.i793.i.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %832, i32 0, i32 12
  %833 = ptrtoint ptr %write32.i793.i.i.i to i32
  call void @__asan_load4_noabort(i32 %833)
  %834 = load ptr, ptr %write32.i793.i.i.i, align 4
  tail call void %834(ptr noundef %3, i32 noundef 88, i32 noundef %or.i608.i.i.i) #12
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.373) #12
  br label %sw.epilog.i.i

sw.bb42.i.i:                                      ; preds = %if.end.i95
  call void @__sanitizer_cov_trace_pc() #14
  %835 = ptrtoint ptr %hci.i799.i.i.i to i32
  call void @__asan_load4_noabort(i32 %835)
  %836 = load ptr, ptr %hci.i799.i.i.i, align 8
  %read32.i795.i.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %836, i32 0, i32 9
  %837 = ptrtoint ptr %read32.i795.i.i.i to i32
  call void @__asan_load4_noabort(i32 %837)
  %838 = load ptr, ptr %read32.i795.i.i.i, align 4
  %call.i796.i.i.i = tail call i32 %838(ptr noundef %3, i32 noundef 88) #12
  %and.i613.i.i.i = and i32 %call.i796.i.i.i, -16711936
  %or.i626.i.i.i = or i32 %and.i613.i.i.i, 3670072
  %839 = ptrtoint ptr %hci.i799.i.i.i to i32
  call void @__asan_load4_noabort(i32 %839)
  %840 = load ptr, ptr %hci.i799.i.i.i, align 8
  %write32.i798.i.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %840, i32 0, i32 12
  %841 = ptrtoint ptr %write32.i798.i.i.i to i32
  call void @__asan_load4_noabort(i32 %841)
  %842 = load ptr, ptr %write32.i798.i.i.i, align 4
  tail call void %842(ptr noundef %3, i32 noundef 88, i32 noundef %or.i626.i.i.i) #12
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.374) #12
  br label %sw.epilog.i.i

sw.bb43.i.i:                                      ; preds = %if.end.i95
  call void @__sanitizer_cov_trace_pc() #14
  %843 = ptrtoint ptr %hci.i799.i.i.i to i32
  call void @__asan_load4_noabort(i32 %843)
  %844 = load ptr, ptr %hci.i799.i.i.i, align 8
  %read16.i800.i.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %844, i32 0, i32 8
  %845 = ptrtoint ptr %read16.i800.i.i.i to i32
  call void @__asan_load4_noabort(i32 %845)
  %846 = load ptr, ptr %read16.i800.i.i.i, align 4
  %call.i801.i.i.i = tail call zeroext i16 %846(ptr noundef %3, i32 noundef 4544) #12
  %847 = and i16 %call.i801.i.i.i, 8191
  %848 = ptrtoint ptr %hci.i799.i.i.i to i32
  call void @__asan_load4_noabort(i32 %848)
  %849 = load ptr, ptr %hci.i799.i.i.i, align 8
  %write16.i803.i.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %849, i32 0, i32 11
  %850 = ptrtoint ptr %write16.i803.i.i.i to i32
  call void @__asan_load4_noabort(i32 %850)
  %851 = load ptr, ptr %write16.i803.i.i.i, align 4
  tail call void %851(ptr noundef %3, i32 noundef 4544, i16 noundef zeroext %847) #12
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.375) #12
  br label %sw.epilog.i.i

sw.epilog.i.i:                                    ; preds = %sw.bb43.i.i, %sw.bb42.i.i, %sw.bb41.i.i, %sw.bb40.i.i, %sw.bb39.i.i, %sw.bb38.i.i, %sw.bb37.i.i, %sw.bb36.i.i, %sw.bb35.i.i, %sw.bb34.i.i, %sw.bb33.i.i, %sw.bb32.i.i, %sw.bb31.i.i, %sw.bb30.i.i, %sw.bb29.i.i, %sw.bb28.i.i, %sw.bb27.i.i, %sw.bb26.i.i, %sw.bb25.i.i, %sw.bb24.i.i, %sw.bb23.i.i, %sw.bb22.i.i, %sw.bb21.i.i, %sw.bb20.i.i, %sw.bb19.i.i, %sw.bb18.i.i, %sw.bb17.i.i, %sw.bb16.i.i, %sw.bb15.i.i, %sw.bb14.i.i, %sw.bb13.i.i, %sw.bb12.i.i, %sw.bb11.i.i, %sw.bb10.i.i, %sw.bb9.i.i, %sw.bb8.i.i, %sw.bb7.i.i, %sw.bb6.i.i, %sw.bb5.i.i, %sw.bb4.i.i, %sw.bb3.i.i, %sw.bb2.i.i, %sw.bb1.i.i, %sw.bb.i.i, %sw.bb52.i.i.i, %if.end.i95.sw.epilog.i.i_crit_edge
  %.str.334.sink.i.ph.ph.sink.i.i = phi ptr [ @.str.326, %sw.bb43.i.i ], [ @.str.325, %sw.bb42.i.i ], [ @.str.324, %sw.bb41.i.i ], [ @.str.323, %sw.bb40.i.i ], [ @.str.322, %sw.bb39.i.i ], [ @.str.321, %sw.bb38.i.i ], [ @.str.320, %sw.bb37.i.i ], [ @.str.319, %sw.bb36.i.i ], [ @.str.318, %sw.bb35.i.i ], [ @.str.317, %sw.bb34.i.i ], [ @.str.316, %sw.bb33.i.i ], [ @.str.315, %sw.bb32.i.i ], [ @.str.314, %sw.bb31.i.i ], [ @.str.313, %sw.bb30.i.i ], [ @.str.312, %sw.bb29.i.i ], [ @.str.311, %sw.bb28.i.i ], [ @.str.310, %sw.bb27.i.i ], [ @.str.309, %sw.bb26.i.i ], [ @.str.308, %sw.bb25.i.i ], [ @.str.307, %sw.bb24.i.i ], [ @.str.306, %sw.bb23.i.i ], [ @.str.305, %sw.bb22.i.i ], [ @.str.304, %sw.bb21.i.i ], [ @.str.303, %sw.bb20.i.i ], [ @.str.302, %sw.bb19.i.i ], [ @.str.301, %sw.bb18.i.i ], [ @.str.300, %sw.bb17.i.i ], [ @.str.299, %sw.bb16.i.i ], [ @.str.298, %sw.bb15.i.i ], [ @.str.297, %sw.bb14.i.i ], [ @.str.296, %sw.bb13.i.i ], [ @.str.295, %sw.bb12.i.i ], [ @.str.294, %sw.bb11.i.i ], [ @.str.293, %sw.bb10.i.i ], [ @.str.292, %sw.bb9.i.i ], [ @.str.291, %sw.bb8.i.i ], [ @.str.290, %sw.bb7.i.i ], [ @.str.289, %sw.bb6.i.i ], [ @.str.288, %sw.bb5.i.i ], [ @.str.287, %sw.bb4.i.i ], [ @.str.286, %sw.bb3.i.i ], [ @.str.285, %sw.bb2.i.i ], [ @.str.284, %sw.bb1.i.i ], [ @.str.283, %sw.bb.i.i ], [ @.str.345, %sw.bb52.i.i.i ], [ @.str.344, %if.end.i95.sw.epilog.i.i_crit_edge ]
  %retval.0.i.ph209.i.i = phi ptr [ @dbg_port_pcie_misc2, %sw.bb43.i.i ], [ @dbg_port_pcie_misc, %sw.bb42.i.i ], [ @dbg_port_pcie_io, %sw.bb41.i.i ], [ @dbg_port_pcie_cxpl, %sw.bb40.i.i ], [ @dbg_port_pcie_cvt, %sw.bb39.i.i ], [ @dbg_port_pcie_rxdma, %sw.bb38.i.i ], [ @dbg_port_pcie_txdma, %sw.bb37.i.i ], [ @dbg_port_pktinfo, %sw.bb36.i.i ], [ @dbg_port_ple_quemgn_qempty, %sw.bb35.i.i ], [ @dbg_port_ple_quemgn_qlnktbl, %sw.bb34.i.i ], [ @dbg_port_ple_quemgn_nxtpkt, %sw.bb33.i.i ], [ @dbg_port_ple_quemgn_prepkt, %sw.bb32.i.i ], [ @dbg_port_ple_bufmgn_pktinfo, %sw.bb31.i.i ], [ @dbg_port_ple_bufmgn_pagellt, %sw.bb30.i.i ], [ @dbg_port_ple_bufmgn_quota, %sw.bb29.i.i ], [ @dbg_port_ple_bufmgn_freepg, %sw.bb28.i.i ], [ @dbg_port_wde_quemgn_qempty, %sw.bb27.i.i ], [ @dbg_port_wde_quemgn_qlnktbl, %sw.bb26.i.i ], [ @dbg_port_wde_quemgn_nxtpkt, %sw.bb25.i.i ], [ @dbg_port_wde_quemgn_prepkt, %sw.bb24.i.i ], [ @dbg_port_wde_bufmgn_pktinfo, %sw.bb23.i.i ], [ @dbg_port_wde_bufmgn_pagellt, %sw.bb22.i.i ], [ @dbg_port_wde_bufmgn_quota, %sw.bb21.i.i ], [ @dbg_port_wde_bufmgn_freepg, %sw.bb20.i.i ], [ @dbg_port_txtf_infoh_c1, %sw.bb19.i.i ], [ @dbg_port_txtf_infol_c1, %sw.bb18.i.i ], [ @dbg_port_txtf_infoh_c0, %sw.bb17.i.i ], [ @dbg_port_txtf_infol_c0, %sw.bb16.i.i ], [ @dbg_port_tx_infoh_c1, %sw.bb15.i.i ], [ @dbg_port_tx_infol_c1, %sw.bb14.i.i ], [ @dbg_port_tx_infoh_c0, %sw.bb13.i.i ], [ @dbg_port_tx_infol_c0, %sw.bb12.i.i ], [ @dbg_port_trxptcl_c1, %sw.bb11.i.i ], [ @dbg_port_trxptcl_c0, %sw.bb10.i.i ], [ @dbg_port_rmacst_c1, %sw.bb9.i.i ], [ @dbg_port_rmacst_c0, %sw.bb8.i.i ], [ @dbg_port_rmac_c1, %sw.bb7.i.i ], [ @dbg_port_rmac_c0, %sw.bb6.i.i ], [ @dbg_port_tmac_c1, %sw.bb5.i.i ], [ @dbg_port_tmac_c0, %sw.bb4.i.i ], [ @dbg_port_sch_c1, %sw.bb3.i.i ], [ @dbg_port_sch_c0, %sw.bb2.i.i ], [ @dbg_port_ptcl_c1, %sw.bb1.i.i ], [ @dbg_port_ptcl_c0, %sw.bb.i.i ], [ @dbg_port_rmac_plcp_c1, %sw.bb52.i.i.i ], [ @dbg_port_rmac_plcp_c0, %if.end.i95.sw.epilog.i.i_crit_edge ]
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull %.str.334.sink.i.ph.ph.sink.i.i) #12
  %852 = ptrtoint ptr %retval.0.i.ph209.i.i to i32
  call void @__asan_load4_noabort(i32 %852)
  %853 = load i32, ptr %retval.0.i.ph209.i.i, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.327, i32 noundef %853) #12
  %rd_addr.i.i = getelementptr inbounds %struct.rtw89_mac_dbg_port_info, ptr %retval.0.i.ph209.i.i, i32 0, i32 5
  %854 = ptrtoint ptr %rd_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %854)
  %855 = load i32, ptr %rd_addr.i.i, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.328, i32 noundef %855) #12
  %srt.i.i = getelementptr inbounds %struct.rtw89_mac_dbg_port_info, ptr %retval.0.i.ph209.i.i, i32 0, i32 3
  %856 = ptrtoint ptr %srt.i.i to i32
  call void @__asan_load4_noabort(i32 %856)
  %857 = load i32, ptr %srt.i.i, align 4
  %end.i.i = getelementptr inbounds %struct.rtw89_mac_dbg_port_info, ptr %retval.0.i.ph209.i.i, i32 0, i32 4
  %858 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %858)
  %859 = load i32, ptr %end.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %857, i32 %859)
  %cmp.not382.i.i = icmp ugt i32 %857, %859
  br i1 %cmp.not382.i.i, label %sw.epilog.i.i.for.inc.i98_crit_edge, label %for.body.lr.ph.i.i

sw.epilog.i.i.for.inc.i98_crit_edge:              ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i98

for.body.lr.ph.i.i:                               ; preds = %sw.epilog.i.i
  %sel_byte.i.i = getelementptr inbounds %struct.rtw89_mac_dbg_port_info, ptr %retval.0.i.ph209.i.i, i32 0, i32 1
  %sel_msk49.i.i = getelementptr inbounds %struct.rtw89_mac_dbg_port_info, ptr %retval.0.i.ph209.i.i, i32 0, i32 2
  %rd_byte.i.i = getelementptr inbounds %struct.rtw89_mac_dbg_port_info, ptr %retval.0.i.ph209.i.i, i32 0, i32 6
  %rd_msk63.i.i = getelementptr inbounds %struct.rtw89_mac_dbg_port_info, ptr %retval.0.i.ph209.i.i, i32 0, i32 7
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.0383.i.i = phi i32 [ %857, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %860 = ptrtoint ptr %sel_byte.i.i to i32
  call void @__asan_load1_noabort(i32 %860)
  %861 = load i8, ptr %sel_byte.i.i, align 4
  %862 = zext i8 %861 to i64
  call void @__sanitizer_cov_trace_switch(i64 %862, ptr @__sancov_gen_cov_switch_values.434)
  switch i8 %861, label %sw.default.i.i [
    i8 4, label %sw.bb51.i.i
    i8 2, label %sw.bb47.i.i
  ]

sw.default.i.i:                                   ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %863 = ptrtoint ptr %retval.0.i.ph209.i.i to i32
  call void @__asan_load4_noabort(i32 %863)
  %864 = load i32, ptr %retval.0.i.ph209.i.i, align 4
  %865 = ptrtoint ptr %sel_msk49.i.i to i32
  call void @__asan_load4_noabort(i32 %865)
  %866 = load i32, ptr %sel_msk49.i.i, align 4
  %and.i.i.i = and i32 %866, 255
  %867 = tail call i32 @llvm.cttz.i32(i32 %and.i.i.i, i1 false) #12, !range !974
  %868 = ptrtoint ptr %hci.i799.i.i.i to i32
  call void @__asan_load4_noabort(i32 %868)
  %869 = load ptr, ptr %hci.i799.i.i.i, align 8
  %read8.i.i162.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %869, i32 0, i32 7
  %870 = ptrtoint ptr %read8.i.i162.i.i to i32
  call void @__asan_load4_noabort(i32 %870)
  %871 = load ptr, ptr %read8.i.i162.i.i, align 4
  %call.i.i163.i.i = tail call zeroext i8 %871(ptr noundef %3, i32 noundef %864) #12
  %conv.i.i.i = zext i8 %call.i.i163.i.i to i32
  %neg.i.i.i = xor i32 %866, -1
  %and2.i.i.i = and i32 %conv.i.i.i, %neg.i.i.i
  %shl.i.i.i = shl i32 %i.0383.i.i, %867
  %and4.i.i.i = and i32 %shl.i.i.i, %866
  %or.i.i.i = or i32 %and2.i.i.i, %and4.i.i.i
  %conv5.i.i.i = trunc i32 %or.i.i.i to i8
  %872 = ptrtoint ptr %hci.i799.i.i.i to i32
  call void @__asan_load4_noabort(i32 %872)
  %873 = load ptr, ptr %hci.i799.i.i.i, align 8
  %write8.i.i164.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %873, i32 0, i32 10
  %874 = ptrtoint ptr %write8.i.i164.i.i to i32
  call void @__asan_load4_noabort(i32 %874)
  %875 = load ptr, ptr %write8.i.i164.i.i, align 4
  tail call void %875(ptr noundef %3, i32 noundef %864, i8 noundef zeroext %conv5.i.i.i) #12
  br label %sw.epilog54.i.i

sw.bb47.i.i:                                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %876 = ptrtoint ptr %retval.0.i.ph209.i.i to i32
  call void @__asan_load4_noabort(i32 %876)
  %877 = load i32, ptr %retval.0.i.ph209.i.i, align 4
  %878 = ptrtoint ptr %sel_msk49.i.i to i32
  call void @__asan_load4_noabort(i32 %878)
  %879 = load i32, ptr %sel_msk49.i.i, align 4
  %and.i165.i.i = and i32 %879, 65535
  %880 = tail call i32 @llvm.cttz.i32(i32 %and.i165.i.i, i1 false) #12, !range !974
  %881 = ptrtoint ptr %hci.i799.i.i.i to i32
  call void @__asan_load4_noabort(i32 %881)
  %882 = load ptr, ptr %hci.i799.i.i.i, align 8
  %read16.i.i167.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %882, i32 0, i32 8
  %883 = ptrtoint ptr %read16.i.i167.i.i to i32
  call void @__asan_load4_noabort(i32 %883)
  %884 = load ptr, ptr %read16.i.i167.i.i, align 4
  %call.i.i168.i.i = tail call zeroext i16 %884(ptr noundef %3, i32 noundef %877) #12
  %conv.i169.i.i = zext i16 %call.i.i168.i.i to i32
  %neg.i170.i.i = xor i32 %879, -1
  %and2.i171.i.i = and i32 %conv.i169.i.i, %neg.i170.i.i
  %shl.i173.i.i = shl i32 %i.0383.i.i, %880
  %and4.i174.i.i = and i32 %shl.i173.i.i, %879
  %or.i175.i.i = or i32 %and2.i171.i.i, %and4.i174.i.i
  %conv5.i176.i.i = trunc i32 %or.i175.i.i to i16
  %885 = ptrtoint ptr %hci.i799.i.i.i to i32
  call void @__asan_load4_noabort(i32 %885)
  %886 = load ptr, ptr %hci.i799.i.i.i, align 8
  %write16.i.i177.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %886, i32 0, i32 11
  %887 = ptrtoint ptr %write16.i.i177.i.i to i32
  call void @__asan_load4_noabort(i32 %887)
  %888 = load ptr, ptr %write16.i.i177.i.i, align 4
  tail call void %888(ptr noundef %3, i32 noundef %877, i16 noundef zeroext %conv5.i176.i.i) #12
  br label %sw.epilog54.i.i

sw.bb51.i.i:                                      ; preds = %for.body.i.i
  %889 = ptrtoint ptr %retval.0.i.ph209.i.i to i32
  call void @__asan_load4_noabort(i32 %889)
  %890 = load i32, ptr %retval.0.i.ph209.i.i, align 4
  %891 = ptrtoint ptr %sel_msk49.i.i to i32
  call void @__asan_load4_noabort(i32 %891)
  %892 = load i32, ptr %sel_msk49.i.i, align 4
  %and.i178.i.i = and i32 %890, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i178.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i178.i.i, 0
  br i1 %tobool.not.i.i.i, label %sw.bb51.i.i.rtw89_write32_mask.exit.i.i_crit_edge, label %do.end.i.i.i, !prof !970

sw.bb51.i.i.rtw89_write32_mask.exit.i.i_crit_edge: ; preds = %sw.bb51.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rtw89_write32_mask.exit.i.i

do.end.i.i.i:                                     ; preds = %sw.bb51.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.377, i32 noundef 3031, i32 noundef 9, ptr noundef nonnull @.str.378, i32 noundef %890) #12
  br label %rtw89_write32_mask.exit.i.i

rtw89_write32_mask.exit.i.i:                      ; preds = %do.end.i.i.i, %sw.bb51.i.i.rtw89_write32_mask.exit.i.i_crit_edge
  %893 = tail call i32 @llvm.cttz.i32(i32 %892, i1 false) #12, !range !974
  %894 = ptrtoint ptr %hci.i799.i.i.i to i32
  call void @__asan_load4_noabort(i32 %894)
  %895 = load ptr, ptr %hci.i799.i.i.i, align 8
  %read32.i.i180.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %895, i32 0, i32 9
  %896 = ptrtoint ptr %read32.i.i180.i.i to i32
  call void @__asan_load4_noabort(i32 %896)
  %897 = load ptr, ptr %read32.i.i180.i.i, align 4
  %call.i.i181.i.i = tail call i32 %897(ptr noundef %3, i32 noundef %890) #12
  %neg.i182.i.i = xor i32 %892, -1
  %and21.i.i.i = and i32 %call.i.i181.i.i, %neg.i182.i.i
  %shl.i183.i.i = shl i32 %i.0383.i.i, %893
  %and22.i.i.i = and i32 %shl.i183.i.i, %892
  %or.i184.i.i = or i32 %and21.i.i.i, %and22.i.i.i
  %898 = ptrtoint ptr %hci.i799.i.i.i to i32
  call void @__asan_load4_noabort(i32 %898)
  %899 = load ptr, ptr %hci.i799.i.i.i, align 8
  %write32.i.i185.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %899, i32 0, i32 12
  %900 = ptrtoint ptr %write32.i.i185.i.i to i32
  call void @__asan_load4_noabort(i32 %900)
  %901 = load ptr, ptr %write32.i.i185.i.i, align 4
  tail call void %901(ptr noundef %3, i32 noundef %890, i32 noundef %or.i184.i.i) #12
  br label %sw.epilog54.i.i

sw.epilog54.i.i:                                  ; preds = %rtw89_write32_mask.exit.i.i, %sw.bb47.i.i, %sw.default.i.i
  %.str.330.sink.i.i = phi ptr [ @.str.330, %rtw89_write32_mask.exit.i.i ], [ @.str.330, %sw.bb47.i.i ], [ @.str.329, %sw.default.i.i ]
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull %.str.330.sink.i.i, i32 noundef %i.0383.i.i) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %902 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %902(i32 noundef 2147480) #12
  %903 = ptrtoint ptr %rd_byte.i.i to i32
  call void @__asan_load1_noabort(i32 %903)
  %904 = load i8, ptr %rd_byte.i.i, align 4
  %905 = zext i8 %904 to i64
  call void @__sanitizer_cov_trace_switch(i64 %905, ptr @__sancov_gen_cov_switch_values.435)
  switch i8 %904, label %sw.default57.i.i [
    i8 4, label %sw.bb66.i.i
    i8 2, label %sw.bb61.i.i
  ]

sw.default57.i.i:                                 ; preds = %sw.epilog54.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %906 = ptrtoint ptr %rd_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %906)
  %907 = load i32, ptr %rd_addr.i.i, align 4
  %908 = ptrtoint ptr %rd_msk63.i.i to i32
  call void @__asan_load4_noabort(i32 %908)
  %909 = load i32, ptr %rd_msk63.i.i, align 4
  %910 = tail call i32 @llvm.cttz.i32(i32 %909, i1 false) #12, !range !974
  %911 = ptrtoint ptr %hci.i799.i.i.i to i32
  call void @__asan_load4_noabort(i32 %911)
  %912 = load ptr, ptr %hci.i799.i.i.i, align 8
  %read8.i.i187.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %912, i32 0, i32 7
  %913 = ptrtoint ptr %read8.i.i187.i.i to i32
  call void @__asan_load4_noabort(i32 %913)
  %914 = load ptr, ptr %read8.i.i187.i.i, align 4
  %call.i.i188.i.i = tail call zeroext i8 %914(ptr noundef %3, i32 noundef %907) #12
  %conv.i189.i.i = zext i8 %call.i.i188.i.i to i32
  %and.i190.i.i = and i32 %909, %conv.i189.i.i
  %shr.i.i.i = lshr i32 %and.i190.i.i, %910
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.331, i32 noundef %shr.i.i.i) #12
  br label %for.inc.i.i

sw.bb61.i.i:                                      ; preds = %sw.epilog54.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %915 = ptrtoint ptr %rd_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %915)
  %916 = load i32, ptr %rd_addr.i.i, align 4
  %917 = ptrtoint ptr %rd_msk63.i.i to i32
  call void @__asan_load4_noabort(i32 %917)
  %918 = load i32, ptr %rd_msk63.i.i, align 4
  %919 = tail call i32 @llvm.cttz.i32(i32 %918, i1 false) #12, !range !974
  %920 = ptrtoint ptr %hci.i799.i.i.i to i32
  call void @__asan_load4_noabort(i32 %920)
  %921 = load ptr, ptr %hci.i799.i.i.i, align 8
  %read16.i.i192.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %921, i32 0, i32 8
  %922 = ptrtoint ptr %read16.i.i192.i.i to i32
  call void @__asan_load4_noabort(i32 %922)
  %923 = load ptr, ptr %read16.i.i192.i.i, align 4
  %call.i.i193.i.i = tail call zeroext i16 %923(ptr noundef %3, i32 noundef %916) #12
  %conv.i194.i.i = zext i16 %call.i.i193.i.i to i32
  %and.i195.i.i = and i32 %918, %conv.i194.i.i
  %shr.i196.i.i = lshr i32 %and.i195.i.i, %919
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.332, i32 noundef %shr.i196.i.i) #12
  br label %for.inc.i.i

sw.bb66.i.i:                                      ; preds = %sw.epilog54.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %924 = ptrtoint ptr %rd_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %924)
  %925 = load i32, ptr %rd_addr.i.i, align 4
  %926 = ptrtoint ptr %rd_msk63.i.i to i32
  call void @__asan_load4_noabort(i32 %926)
  %927 = load i32, ptr %rd_msk63.i.i, align 4
  %928 = tail call i32 @llvm.cttz.i32(i32 %927, i1 false) #12, !range !974
  %929 = ptrtoint ptr %hci.i799.i.i.i to i32
  call void @__asan_load4_noabort(i32 %929)
  %930 = load ptr, ptr %hci.i799.i.i.i, align 8
  %read32.i.i199.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %930, i32 0, i32 9
  %931 = ptrtoint ptr %read32.i.i199.i.i to i32
  call void @__asan_load4_noabort(i32 %931)
  %932 = load ptr, ptr %read32.i.i199.i.i, align 4
  %call.i.i200.i.i = tail call i32 %932(ptr noundef %3, i32 noundef %925) #12
  %and.i201.i.i = and i32 %call.i.i200.i.i, %927
  %shr.i202.i.i = lshr i32 %and.i201.i.i, %928
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.333, i32 noundef %shr.i202.i.i) #12
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %sw.bb66.i.i, %sw.bb61.i.i, %sw.default57.i.i
  %inc.i.i = add i32 %i.0383.i.i, 1
  %933 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %933)
  %934 = load i32, ptr %end.i.i, align 4
  %cmp.not.i1.i = icmp ugt i32 %inc.i.i, %934
  br i1 %cmp.not.i1.i, label %for.inc.i.i.for.inc.i98_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i

for.inc.i.i.for.inc.i98_crit_edge:                ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i98

do.end.i:                                         ; preds = %if.end.i95
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.376) #12
  %dev.i.i = getelementptr inbounds %struct.rtw89_dev, ptr %3, i32 0, i32 1
  %935 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %935)
  %936 = load ptr, ptr %dev.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %936, ptr noundef nonnull @.str.281, i32 noundef %sel.07.i) #15
  %937 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %937)
  %938 = load ptr, ptr %dev.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %938, ptr noundef nonnull @.str.279, i32 noundef %sel.07.i) #15
  br label %if.end28

for.inc.i98:                                      ; preds = %for.inc.i.i.for.inc.i98_crit_edge, %sw.epilog.i.i.for.inc.i98_crit_edge, %is_dbg_port_valid.exit.i.for.inc.i98_crit_edge, %if.end16.i.i.for.inc.i98_crit_edge, %if.end10.i.i.for.inc.i98_crit_edge, %if.end.i.i.for.inc.i98_crit_edge, %for.body.i93.for.inc.i98_crit_edge
  %inc.i96 = add nuw nsw i32 %sel.07.i, 1
  %exitcond.not.i97 = icmp eq i32 %inc.i96, 46
  br i1 %exitcond.not.i97, label %for.inc.i98.if.end28_crit_edge, label %for.inc.i98.for.body.i93_crit_edge

for.inc.i98.for.body.i93_crit_edge:               ; preds = %for.inc.i98
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i93

for.inc.i98.if.end28_crit_edge:                   ; preds = %for.inc.i98
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end28

if.end28:                                         ; preds = %for.inc.i98.if.end28_crit_edge, %do.end.i, %if.end21.if.end28_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtw89_debug_priv_mac_dbg_port_dump_select(ptr nocapture noundef readonly %filp, ptr noundef %user_buf, i32 noundef %count, ptr nocapture noundef readnone %loff) #0 align 64 {
entry:
  %buf = alloca [32 x i8], align 1
  %sel = alloca i32, align 4
  %set = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %private = getelementptr inbounds %struct.seq_file, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %buf) #12
  %6 = call ptr @memset(ptr %buf, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sel) #12
  %7 = ptrtoint ptr %sel to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %sel, align 4, !annotation !968
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %set) #12
  %8 = ptrtoint ptr %set to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %set, align 4, !annotation !968
  %9 = tail call i32 @llvm.umin.i32(i32 %count, i32 31)
  call void @__check_object_size(ptr noundef nonnull %buf, i32 noundef %9, i1 noundef zeroext false) #12
  call void @__might_fault(ptr noundef nonnull @.str.36, i32 noundef 156) #12
  %call.i.i = call zeroext i1 @should_fail_usercopy() #12
  br i1 %call.i.i, label %entry.if.end.i.i_crit_edge, label %land.lhs.true.i.i

entry.if.end.i.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %10 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %user_buf, i32 %9, i32 -1226833920) #16, !srcloc !969
  %asmresult.i.i = extractvalue { i32, i32 } %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !970

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %buf, i32 noundef %9) #12
  %11 = call i32 @llvm.read_register.i32(metadata !957) #12
  %and.i.i.i.i.i.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 4
  %13 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #6, !srcloc !971
  %and.i.i.i.i = and i32 %13, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #12, !srcloc !972
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !973
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %buf, ptr noundef %user_buf, i32 noundef %9) #12
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %13) #12, !srcloc !972
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !973
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %entry.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %9, %entry.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %9, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end, label %if.then11.i.i, !prof !970

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i.i = sub i32 %9, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %buf, i32 %sub.i.i
  %14 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i
  %arrayidx = getelementptr [32 x i8], ptr %buf, i32 0, i32 %9
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %arrayidx, align 1
  %call3 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef nonnull %buf, ptr noundef nonnull @.str.379, ptr noundef nonnull %sel, ptr noundef nonnull %set)
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call3)
  %cmp4.not = icmp eq i32 %call3, 2
  br i1 %cmp4.not, label %if.end6, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.rtw89_dev, ptr %5, i32 0, i32 1
  %16 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %17, ptr noundef nonnull @.str.380) #15
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %18 = ptrtoint ptr %set to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %set, align 4
  %20 = ptrtoint ptr %sel to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %sel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %21)
  %22 = icmp ult i32 %21, 5
  br i1 %22, label %switch.lookup, label %do.end43

do.end43:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  %dev44 = getelementptr inbounds %struct.rtw89_dev, ptr %5, i32 0, i32 1
  %23 = ptrtoint ptr %dev44 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev44, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %24, ptr noundef nonnull @.str.383, i32 noundef %21, i32 noundef %19) #15
  br label %cleanup

switch.lookup:                                    ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp7.not = icmp eq i32 %19, 0
  %switch.gep = getelementptr inbounds [5 x i8], ptr @switch.table.rtw89_debug_priv_mac_dbg_port_dump_select, i32 0, i32 %21
  %25 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load1_noabort(i32 %25)
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.gep81 = getelementptr inbounds [5 x i8], ptr @switch.table.rtw89_debug_priv_mac_dbg_port_dump_select.427, i32 0, i32 %21
  %26 = ptrtoint ptr %switch.gep81 to i32
  call void @__asan_load1_noabort(i32 %26)
  %switch.load82 = load i8, ptr %switch.gep81, align 1
  %27 = getelementptr inbounds %struct.rtw89_debugfs_priv, ptr %3, i32 0, i32 3
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load1_noabort(i32 %28)
  %bf.load = load i8, ptr %27, align 4
  %bf.shl = select i1 %cmp7.not, i8 0, i8 %switch.load
  %bf.clear = and i8 %bf.load, %switch.load82
  %bf.set = or i8 %bf.clear, %bf.shl
  store i8 %bf.set, ptr %27, align 4
  %dev48 = getelementptr inbounds %struct.rtw89_dev, ptr %5, i32 0, i32 1
  %29 = ptrtoint ptr %dev48 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev48, align 4
  %cond51 = select i1 %cmp7.not, ptr @.str.389, ptr @.str.388
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %30, ptr noundef nonnull @.str.386, ptr noundef nonnull %cond51, i32 noundef %21) #15
  br label %cleanup

cleanup:                                          ; preds = %switch.lookup, %do.end43, %do.end, %if.then11.i.i
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end43 ], [ %count, %switch.lookup ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %set) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sel) #12
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %buf) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw89_mac_check_mac_en(ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #10

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtw89_debug_priv_send_h2c_set(ptr nocapture noundef readonly %filp, ptr noundef %user_buf, i32 noundef %count, ptr nocapture noundef readnone %loff) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call = tail call fastcc ptr @rtw89_hex2bin_user(ptr noundef %3, ptr noundef %user_buf, i32 noundef %count)
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %div12 = lshr i32 %count, 1
  %conv = trunc i32 %div12 to i16
  %call3 = tail call i32 @rtw89_fw_h2c_raw(ptr noundef %3, ptr noundef %call, i16 noundef zeroext %conv) #12
  tail call void @kfree(ptr noundef %call) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end ], [ -14, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @rtw89_hex2bin_user(ptr nocapture noundef readonly %rtwdev, ptr noundef %user_buf, i32 noundef %count) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @memdup_user(ptr noundef %user_buf, i32 noundef %count) #12
  %cmp.i24 = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i24, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %div23 = lshr i32 %count, 1
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %div23, i32 noundef 3264) #17
  %tobool.not = icmp eq ptr %call9.i, null
  br i1 %tobool.not, label %if.end.cleanup.sink.split_crit_edge, label %if.end4

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

if.end4:                                          ; preds = %if.end
  %call5 = tail call i32 @hex2bin(ptr noundef nonnull %call9.i, ptr noundef %call, i32 noundef %div23) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end4.cleanup.sink.split_crit_edge, label %do.end

if.end4.cleanup.sink.split_crit_edge:             ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

do.end:                                           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1, ptr noundef nonnull @.str.390) #15
  tail call void @kfree(ptr noundef nonnull %call9.i) #12
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %do.end, %if.end4.cleanup.sink.split_crit_edge, %if.end.cleanup.sink.split_crit_edge
  %retval.0.ph = phi ptr [ %call9.i, %if.end4.cleanup.sink.split_crit_edge ], [ inttoptr (i32 -14 to ptr), %if.end.cleanup.sink.split_crit_edge ], [ inttoptr (i32 -22 to ptr), %do.end ]
  tail call void @kfree(ptr noundef %call) #12
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw89_fw_h2c_raw(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @memdup_user(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hex2bin(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtw89_debug_priv_early_h2c_get(ptr noundef %m, ptr nocapture noundef readnone %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %mutex = getelementptr inbounds %struct.rtw89_dev, ptr %3, i32 0, i32 10
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #12
  %early_h2c_list = getelementptr inbounds %struct.rtw89_dev, ptr %3, i32 0, i32 22
  %4 = ptrtoint ptr %early_h2c_list to i32
  call void @__asan_load4_noabort(i32 %4)
  %early_h2c.016 = load ptr, ptr %early_h2c_list, align 4
  %cmp.not17 = icmp eq ptr %early_h2c.016, %early_h2c_list
  br i1 %cmp.not17, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %early_h2c.019 = phi ptr [ %early_h2c.0, %for.body.for.body_crit_edge ], [ %early_h2c.016, %entry.for.body_crit_edge ]
  %seq.018 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %inc = add i32 %seq.018, 1
  %h2c_len = getelementptr inbounds %struct.rtw89_early_h2c, ptr %early_h2c.019, i32 0, i32 2
  %5 = ptrtoint ptr %h2c_len to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %h2c_len, align 4
  %conv = zext i16 %6 to i32
  %h2c = getelementptr inbounds %struct.rtw89_early_h2c, ptr %early_h2c.019, i32 0, i32 1
  %7 = ptrtoint ptr %h2c to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %h2c, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.392, i32 noundef %inc, i32 noundef %conv, ptr noundef %8) #12
  %9 = ptrtoint ptr %early_h2c.019 to i32
  call void @__asan_load4_noabort(i32 %9)
  %early_h2c.0 = load ptr, ptr %early_h2c.019, align 4
  %cmp.not = icmp eq ptr %early_h2c.0, %early_h2c_list
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtw89_debug_priv_early_h2c_set(ptr nocapture noundef readonly %filp, ptr noundef %user_buf, i32 noundef %count, ptr nocapture noundef readnone %loff) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %private = getelementptr inbounds %struct.seq_file, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %div41 = lshr i32 %count, 1
  %conv = trunc i32 %div41 to i16
  %call = tail call fastcc ptr @rtw89_hex2bin_user(ptr noundef %5, ptr noundef %user_buf, i32 noundef %count)
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = and i32 %count, 131068
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp.not = icmp eq i32 %6, 0
  br i1 %cmp.not, label %if.end.if.end14_crit_edge, label %land.lhs.true

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14

land.lhs.true:                                    ; preds = %if.end
  %7 = ptrtoint ptr %call to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %call, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %cmp6 = icmp eq i8 %8, 0
  br i1 %cmp6, label %land.lhs.true8, label %land.lhs.true.if.end14_crit_edge

land.lhs.true.if.end14_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14

land.lhs.true8:                                   ; preds = %land.lhs.true
  %arrayidx9 = getelementptr i8, ptr %call, i32 1
  %9 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx9, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %cmp11 = icmp eq i8 %10, 0
  br i1 %cmp11, label %if.then13, label %land.lhs.true8.if.end14_crit_edge

land.lhs.true8.if.end14_crit_edge:                ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14

if.then13:                                        ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @kfree(ptr noundef %call) #12
  tail call void @rtw89_fw_free_all_early_h2c(ptr noundef %5) #12
  br label %cleanup

if.end14:                                         ; preds = %land.lhs.true8.if.end14_crit_edge, %land.lhs.true.if.end14_crit_edge, %if.end.if.end14_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %11 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %11, i32 noundef 3264, i32 noundef 16) #18
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %if.then16, label %if.end17

if.then16:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @kfree(ptr noundef %call) #12
  br label %cleanup

if.end17:                                         ; preds = %if.end14
  %h2c18 = getelementptr inbounds %struct.rtw89_early_h2c, ptr %call7.i, i32 0, i32 1
  %12 = ptrtoint ptr %h2c18 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call, ptr %h2c18, align 8
  %h2c_len19 = getelementptr inbounds %struct.rtw89_early_h2c, ptr %call7.i, i32 0, i32 2
  %13 = ptrtoint ptr %h2c_len19 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %conv, ptr %h2c_len19, align 4
  %mutex = getelementptr inbounds %struct.rtw89_dev, ptr %5, i32 0, i32 10
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #12
  %early_h2c_list = getelementptr inbounds %struct.rtw89_dev, ptr %5, i32 0, i32 22
  %prev.i = getelementptr inbounds %struct.rtw89_dev, ptr %5, i32 0, i32 22, i32 1
  %14 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i, ptr noundef %15, ptr noundef %early_h2c_list) #12
  br i1 %call.i.i, label %if.end.i.i, label %if.end17.list_add_tail.exit_crit_edge

if.end17.list_add_tail.exit_crit_edge:            ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  %16 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call7.i, ptr %prev.i, align 4
  %17 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %early_h2c_list, ptr %call7.i, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i, i32 0, i32 1
  %18 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %15, ptr %prev3.i.i, align 4
  %19 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %call7.i, ptr %15, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end17.list_add_tail.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #12
  br label %cleanup

cleanup:                                          ; preds = %list_add_tail.exit, %if.then16, %if.then13, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -14, %if.then16 ], [ -14, %entry.cleanup_crit_edge ], [ %count, %list_add_tail.exit ], [ %count, %if.then13 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw89_fw_free_all_early_h2c(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtw89_debug_priv_btc_info_get(ptr noundef %m, ptr nocapture noundef readnone %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void @rtw89_btc_dump_info(ptr noundef %3, ptr noundef %m) #12
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw89_btc_dump_info(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtw89_debug_priv_btc_manual_set(ptr nocapture noundef readonly %filp, ptr noundef %user_buf, i32 noundef returned %count, ptr nocapture noundef readnone %loff) #0 align 64 {
entry:
  %btc_manual = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %btc_manual) #12
  %4 = ptrtoint ptr %btc_manual to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %btc_manual, align 1, !annotation !968
  %call = call i32 @kstrtobool_from_user(ptr noundef %user_buf, i32 noundef %count, ptr noundef nonnull %btc_manual) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %5 = ptrtoint ptr %btc_manual to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %btc_manual, align 1, !range !975
  %7 = zext i8 %6 to i32
  %ctrl = getelementptr inbounds %struct.rtw89_dev, ptr %3, i32 0, i32 51, i32 2
  %8 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %8)
  %bf.load = load i32, ptr %ctrl, align 4
  %bf.shl = shl nuw i32 %7, 31
  %bf.clear = and i32 %bf.load, 2147483647
  %bf.set = or i32 %bf.clear, %bf.shl
  store i32 %bf.set, ptr %ctrl, align 4
  br label %out

out:                                              ; preds = %if.end, %entry.out_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %btc_manual) #12
  ret i32 %count
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtobool_from_user(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtw89_debug_fw_log_btc_manual_set(ptr nocapture noundef readonly %filp, ptr noundef %user_buf, i32 noundef returned %count, ptr nocapture noundef readnone %loff) #0 align 64 {
entry:
  %fw_log_manual = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %fw_log_manual) #12
  %4 = ptrtoint ptr %fw_log_manual to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %fw_log_manual, align 1, !annotation !968
  %call = call i32 @kstrtobool_from_user(ptr noundef %user_buf, i32 noundef %count, ptr noundef nonnull %fw_log_manual) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %mutex = getelementptr inbounds %struct.rtw89_dev, ptr %3, i32 0, i32 10
  call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #12
  %5 = ptrtoint ptr %fw_log_manual to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %fw_log_manual, align 1, !range !975
  %fw_log_enable = getelementptr inbounds %struct.rtw89_dev, ptr %3, i32 0, i32 6, i32 7
  %7 = ptrtoint ptr %fw_log_enable to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %6, ptr %fw_log_enable, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool3 = icmp ne i8 %6, 0
  %call4 = call i32 @rtw89_fw_h2c_fw_log(ptr noundef %3, i1 noundef zeroext %tobool3) #12
  call void @mutex_unlock(ptr noundef %mutex) #12
  br label %out

out:                                              ; preds = %if.end, %entry.out_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %fw_log_manual) #12
  ret i32 %count
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw89_fw_h2c_fw_log(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtw89_debug_priv_phy_info_get(ptr noundef %m, ptr nocapture noundef readnone %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %last_pkt_stat = getelementptr inbounds %struct.rtw89_dev, ptr %3, i32 0, i32 27, i32 2
  %tx_throughput = getelementptr inbounds %struct.rtw89_dev, ptr %3, i32 0, i32 9, i32 6
  %4 = ptrtoint ptr %tx_throughput to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tx_throughput, align 8
  %tx_throughput_raw = getelementptr inbounds %struct.rtw89_dev, ptr %3, i32 0, i32 9, i32 8
  %6 = ptrtoint ptr %tx_throughput_raw to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tx_throughput_raw, align 8
  %tx_tfc_lv = getelementptr inbounds %struct.rtw89_dev, ptr %3, i32 0, i32 9, i32 10
  %8 = ptrtoint ptr %tx_tfc_lv to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tx_tfc_lv, align 8
  %rx_throughput = getelementptr inbounds %struct.rtw89_dev, ptr %3, i32 0, i32 9, i32 7
  %10 = ptrtoint ptr %rx_throughput to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rx_throughput, align 4
  %rx_throughput_raw = getelementptr inbounds %struct.rtw89_dev, ptr %3, i32 0, i32 9, i32 9
  %12 = ptrtoint ptr %rx_throughput_raw to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rx_throughput_raw, align 4
  %rx_tfc_lv = getelementptr inbounds %struct.rtw89_dev, ptr %3, i32 0, i32 9, i32 11
  %14 = ptrtoint ptr %rx_tfc_lv to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %rx_tfc_lv, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.393, i32 noundef %5, i32 noundef %7, i32 noundef %9, i32 noundef %11, i32 noundef %13, i32 noundef %15) #12
  %16 = ptrtoint ptr %last_pkt_stat to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %last_pkt_stat, align 4
  %conv = zext i16 %17 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.394, i32 noundef %conv) #12
  %tx_avg_len = getelementptr inbounds %struct.rtw89_dev, ptr %3, i32 0, i32 9, i32 2
  %18 = ptrtoint ptr %tx_avg_len to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %tx_avg_len, align 8
  %rx_avg_len = getelementptr inbounds %struct.rtw89_dev, ptr %3, i32 0, i32 9, i32 3
  %20 = ptrtoint ptr %rx_avg_len to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %rx_avg_len, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.395, i32 noundef %19, i32 noundef %21) #12
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.396) #12
  br label %for.body

for.body:                                         ; preds = %rtw89_debug_append_rx_rate.exit.for.body_crit_edge, %entry
  %i.026 = phi i32 [ 0, %entry ], [ %inc, %rtw89_debug_append_rx_rate.exit.for.body_crit_edge ]
  %arrayidx = getelementptr [8 x %struct.rtw89_rx_rate_cnt_info], ptr @rtw89_rx_rate_cnt_infos, i32 0, i32 %i.026
  %rate_mode = getelementptr [8 x %struct.rtw89_rx_rate_cnt_info], ptr @rtw89_rx_rate_cnt_infos, i32 0, i32 %i.026, i32 2
  %22 = ptrtoint ptr %rate_mode to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %rate_mode, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.397, ptr noundef %23) #12
  %24 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx, align 4
  %len = getelementptr [8 x %struct.rtw89_rx_rate_cnt_info], ptr @rtw89_rx_rate_cnt_infos, i32 0, i32 %i.026, i32 1
  %26 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %len, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body
  %i.06.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.body ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.06.i)
  %cmp1.i = icmp eq i32 %i.06.i, 0
  %cond.i = select i1 %cmp1.i, ptr @.str.408, ptr @.str.409
  %add.i = add i32 %i.06.i, %25
  %arrayidx.i = getelementptr %struct.rtw89_dev, ptr %3, i32 0, i32 27, i32 2, i32 1, i32 %add.i
  %28 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx.i, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.407, ptr noundef nonnull %cond.i, i32 noundef %29) #12
  %inc.i = add nuw nsw i32 %i.06.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %27
  br i1 %exitcond.not.i, label %rtw89_debug_append_rx_rate.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

rtw89_debug_append_rx_rate.exit:                  ; preds = %for.body.i
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.398) #12
  %inc = add nuw nsw i32 %i.026, 1
  %exitcond.not = icmp eq i32 %inc, 8
  br i1 %exitcond.not, label %for.end, label %rtw89_debug_append_rx_rate.exit.for.body_crit_edge

rtw89_debug_append_rx_rate.exit.for.body_crit_edge: ; preds = %rtw89_debug_append_rx_rate.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %rtw89_debug_append_rx_rate.exit
  call void @__sanitizer_cov_trace_pc() #14
  %30 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %3, align 128
  tail call void @ieee80211_iterate_stations_atomic(ptr noundef %31, ptr noundef nonnull @rtw89_sta_info_get_iter, ptr noundef %m) #12
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_iterate_stations_atomic(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtw89_sta_info_get_iter(ptr noundef %data, ptr nocapture noundef readonly %sta) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 29
  %ra_report = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 1, i32 3
  %0 = ptrtoint ptr %drv_priv to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %drv_priv, align 8
  %conv = zext i8 %1 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %data, ptr noundef nonnull @.str.413, i32 noundef %conv) #12
  %2 = ptrtoint ptr %ra_report to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %ra_report, align 2
  %conv1 = zext i8 %3 to i32
  %and = and i32 %conv1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %mcs = getelementptr inbounds %struct.rate_info, ptr %ra_report, i32 0, i32 1
  %4 = ptrtoint ptr %mcs to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %mcs, align 1
  %conv2 = zext i8 %5 to i32
  %and5 = and i32 %conv1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  %cond = select i1 %tobool6.not, ptr @.str.408, ptr @.str.415
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %data, ptr noundef nonnull @.str.414, i32 noundef %conv2, ptr noundef nonnull %cond) #12
  br label %if.end37

if.else:                                          ; preds = %entry
  %and9 = and i32 %conv1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.else20, label %if.then11

if.then11:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %nss = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 1, i32 3, i32 3
  %6 = ptrtoint ptr %nss to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %nss, align 2
  %conv12 = zext i8 %7 to i32
  %mcs13 = getelementptr inbounds %struct.rate_info, ptr %ra_report, i32 0, i32 1
  %8 = ptrtoint ptr %mcs13 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %mcs13, align 1
  %conv14 = zext i8 %9 to i32
  %and17 = and i32 %conv1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  %cond19 = select i1 %tobool18.not, ptr @.str.408, ptr @.str.415
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %data, ptr noundef nonnull @.str.416, i32 noundef %conv12, i32 noundef %conv14, ptr noundef nonnull %cond19) #12
  br label %if.end37

if.else20:                                        ; preds = %if.else
  %and23 = and i32 %conv1, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  br i1 %tobool24.not, label %if.else34, label %if.then25

if.then25:                                        ; preds = %if.else20
  %nss26 = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 1, i32 3, i32 3
  %10 = ptrtoint ptr %nss26 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %nss26, align 2
  %conv27 = zext i8 %11 to i32
  %mcs28 = getelementptr inbounds %struct.rate_info, ptr %ra_report, i32 0, i32 1
  %12 = ptrtoint ptr %mcs28 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %mcs28, align 1
  %conv29 = zext i8 %13 to i32
  %he_gi = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 1, i32 3, i32 4, i32 0, i32 1
  %14 = ptrtoint ptr %he_gi to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %he_gi, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %15)
  %cmp = icmp ult i8 %15, 3
  br i1 %cmp, label %cond.true, label %if.then25.cond.end_crit_edge

if.then25.cond.end_crit_edge:                     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

cond.true:                                        ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #14
  %conv30 = zext i8 %15 to i32
  %arrayidx = getelementptr [3 x ptr], ptr @rtw89_sta_info_get_iter.he_gi_str, i32 0, i32 %conv30
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.then25.cond.end_crit_edge
  %cond33 = phi ptr [ %17, %cond.true ], [ @.str.418, %if.then25.cond.end_crit_edge ]
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %data, ptr noundef nonnull @.str.417, i32 noundef %conv27, i32 noundef %conv29, ptr noundef %cond33) #12
  br label %if.end37

if.else34:                                        ; preds = %if.else20
  call void @__sanitizer_cov_trace_pc() #14
  %legacy = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 1, i32 3, i32 1
  %18 = ptrtoint ptr %legacy to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %legacy, align 2
  %conv35 = zext i16 %19 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %data, ptr noundef nonnull @.str.419, i32 noundef %conv35) #12
  br label %if.end37

if.end37:                                         ; preds = %if.else34, %cond.end, %if.then11, %if.then
  %hw_rate = getelementptr inbounds %struct.rtw89_ra_report, ptr %ra_report, i32 0, i32 2
  %20 = ptrtoint ptr %hw_rate to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %hw_rate, align 8
  %conv39 = zext i16 %21 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %data, ptr noundef nonnull @.str.420, i32 noundef %conv39) #12
  %max_agg_wait = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 1, i32 3, i32 4, i32 3, i32 2
  %22 = ptrtoint ptr %max_agg_wait to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %max_agg_wait, align 4
  %max_rc_amsdu_len = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 24
  %24 = ptrtoint ptr %max_rc_amsdu_len to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %max_rc_amsdu_len, align 4
  %conv40 = zext i16 %25 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %data, ptr noundef nonnull @.str.421, i32 noundef %23, i32 noundef %conv40) #12
  %26 = ptrtoint ptr %drv_priv to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %drv_priv, align 8
  %conv42 = zext i8 %27 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %data, ptr noundef nonnull @.str.422, i32 noundef %conv42) #12
  %encoding = getelementptr inbounds %struct.rtw89_sta, ptr %drv_priv, i32 0, i32 9, i32 7
  %28 = ptrtoint ptr %encoding to i32
  call void @__asan_loadN_noabort(i32 %28, i32 2)
  %bf.load = load i16, ptr %encoding, align 1
  %bf.lshr = lshr i16 %bf.load, 14
  %bf.cast = zext i16 %bf.lshr to i32
  %29 = zext i32 %bf.cast to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.436)
  switch i32 %bf.cast, label %if.end37.unreachabledefault [
    i32 0, label %sw.bb
    i32 1, label %sw.bb49
    i32 2, label %sw.bb56
    i32 3, label %sw.bb66
  ]

sw.bb:                                            ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #14
  %rate_idx = getelementptr inbounds %struct.rtw89_sta, ptr %drv_priv, i32 0, i32 9, i32 8
  %30 = ptrtoint ptr %rate_idx to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %rate_idx, align 1
  %conv44 = zext i8 %31 to i32
  %band = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 1, i32 25, i32 3
  %32 = ptrtoint ptr %band to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %band, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %cmp46.not = icmp eq i8 %33, 0
  %cond48 = select i1 %cmp46.not, i32 0, i32 4
  %add = add nuw nsw i32 %cond48, %conv44
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %data, ptr noundef nonnull @.str.419, i32 noundef %add) #12
  br label %sw.epilog

sw.bb49:                                          ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #14
  %rate_idx50 = getelementptr inbounds %struct.rtw89_sta, ptr %drv_priv, i32 0, i32 9, i32 8
  %34 = ptrtoint ptr %rate_idx50 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %rate_idx50, align 1
  %conv51 = zext i8 %35 to i32
  %enc_flags = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 1, i32 25
  %36 = ptrtoint ptr %enc_flags to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %enc_flags, align 2
  %38 = and i8 %37, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool54.not = icmp eq i8 %38, 0
  %cond55 = select i1 %tobool54.not, ptr @.str.408, ptr @.str.415
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %data, ptr noundef nonnull @.str.414, i32 noundef %conv51, ptr noundef nonnull %cond55) #12
  br label %sw.epilog

sw.bb56:                                          ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #14
  %nss57 = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 1, i32 25, i32 2
  %39 = ptrtoint ptr %nss57 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %nss57, align 2
  %conv58 = zext i8 %40 to i32
  %rate_idx59 = getelementptr inbounds %struct.rtw89_sta, ptr %drv_priv, i32 0, i32 9, i32 8
  %41 = ptrtoint ptr %rate_idx59 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %rate_idx59, align 1
  %conv60 = zext i8 %42 to i32
  %enc_flags61 = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 1, i32 25
  %43 = ptrtoint ptr %enc_flags61 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %enc_flags61, align 2
  %45 = and i8 %44, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool64.not = icmp eq i8 %45, 0
  %cond65 = select i1 %tobool64.not, ptr @.str.408, ptr @.str.415
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %data, ptr noundef nonnull @.str.416, i32 noundef %conv58, i32 noundef %conv60, ptr noundef nonnull %cond65) #12
  br label %sw.epilog

sw.bb66:                                          ; preds = %if.end37
  %nss67 = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 1, i32 25, i32 2
  %46 = ptrtoint ptr %nss67 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %nss67, align 2
  %conv68 = zext i8 %47 to i32
  %rate_idx69 = getelementptr inbounds %struct.rtw89_sta, ptr %drv_priv, i32 0, i32 9, i32 8
  %48 = ptrtoint ptr %rate_idx69 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %rate_idx69, align 1
  %conv70 = zext i8 %49 to i32
  %50 = and i16 %bf.load, 192
  call void @__sanitizer_cov_trace_const_cmp2(i16 192, i16 %50)
  %cmp76.not = icmp eq i16 %50, 192
  br i1 %cmp76.not, label %sw.bb66.cond.end83_crit_edge, label %cond.true78

sw.bb66.cond.end83_crit_edge:                     ; preds = %sw.bb66
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end83

cond.true78:                                      ; preds = %sw.bb66
  call void @__sanitizer_cov_trace_pc() #14
  %he_gi79 = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 1, i32 3, i32 4, i32 0, i32 1
  %51 = ptrtoint ptr %he_gi79 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %he_gi79, align 2
  %idxprom80 = zext i8 %52 to i32
  %arrayidx81 = getelementptr [3 x ptr], ptr @rtw89_sta_info_get_iter.he_gi_str, i32 0, i32 %idxprom80
  %53 = ptrtoint ptr %arrayidx81 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %arrayidx81, align 4
  br label %cond.end83

cond.end83:                                       ; preds = %cond.true78, %sw.bb66.cond.end83_crit_edge
  %cond84 = phi ptr [ %54, %cond.true78 ], [ @.str.418, %sw.bb66.cond.end83_crit_edge ]
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %data, ptr noundef nonnull @.str.417, i32 noundef %conv68, i32 noundef %conv70, ptr noundef %cond84) #12
  br label %sw.epilog

if.end37.unreachabledefault:                      ; preds = %if.end37
  unreachable

sw.epilog:                                        ; preds = %cond.end83, %sw.bb56, %sw.bb49, %sw.bb
  %rx_hw_rate = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 1, i32 25, i32 9
  %55 = ptrtoint ptr %rx_hw_rate to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %rx_hw_rate, align 8
  %conv85 = zext i16 %56 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %data, ptr noundef nonnull @.str.423, i32 noundef %conv85) #12
  %avg_rssi = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 1, i32 5, i32 1
  %57 = ptrtoint ptr %avg_rssi to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %avg_rssi, align 4
  %shr.i = lshr i32 %58, 10
  %conv87 = and i32 %shr.i, 255
  %59 = lshr i32 %conv87, 1
  %sub = add nsw i32 %59, -110
  %prev_rssi = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 1, i32 5
  %60 = ptrtoint ptr %prev_rssi to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %prev_rssi, align 8
  %conv91 = zext i8 %61 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %data, ptr noundef nonnull @.str.424, i32 noundef %sub, i32 noundef %conv87, i32 noundef %conv91) #12
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 476)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 476)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind readonly }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind readnone }
attributes #17 = { nounwind allocsize(0) }
attributes #18 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !11, !12, !13, !14, !15, !16, !18, !19, !21, !22, !24, !25, !27, !28, !30, !31, !33, !34, !36, !37, !39, !40, !42, !43, !45, !46, !48, !49, !51, !52, !54, !55, !57, !58, !60, !61, !62, !63, !64, !65, !67, !69, !70, !72, !74, !75, !76, !77, !78, !80, !82, !84, !85, !86, !87, !89, !90, !91, !93, !94, !96, !98, !100, !102, !104, !106, !107, !108, !109, !111, !112, !113, !115, !116, !117, !119, !120, !121, !123, !124, !125, !127, !129, !131, !133, !135, !136, !137, !138, !140, !141, !142, !144, !145, !146, !148, !150, !152, !153, !154, !155, !157, !158, !160, !161, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !196, !198, !200, !202, !204, !206, !208, !210, !212, !214, !216, !218, !220, !222, !224, !226, !228, !230, !232, !234, !236, !238, !240, !242, !244, !246, !248, !250, !252, !254, !256, !258, !260, !262, !264, !266, !268, !270, !272, !274, !276, !278, !280, !282, !284, !286, !288, !290, !292, !294, !296, !298, !300, !302, !304, !306, !308, !310, !312, !314, !316, !318, !320, !322, !324, !326, !328, !330, !332, !334, !336, !338, !340, !342, !344, !346, !348, !350, !352, !354, !356, !358, !360, !362, !364, !366, !368, !370, !372, !373, !374, !375, !377, !378, !379, !381, !383, !385, !387, !389, !390, !391, !392, !394, !395, !396, !398, !400, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !415, !416, !417, !418, !419, !421, !422, !423, !424, !425, !426, !428, !429, !430, !432, !433, !434, !436, !437, !438, !440, !441, !442, !444, !445, !446, !448, !449, !450, !452, !453, !454, !456, !457, !458, !460, !461, !463, !464, !465, !467, !468, !469, !471, !472, !473, !475, !476, !477, !479, !480, !481, !483, !484, !486, !488, !490, !492, !494, !496, !498, !500, !502, !504, !506, !508, !510, !512, !514, !516, !518, !520, !522, !524, !526, !528, !530, !532, !534, !536, !538, !540, !542, !544, !546, !548, !550, !552, !554, !556, !558, !560, !562, !563, !564, !565, !567, !568, !569, !570, !572, !574, !576, !578, !580, !582, !584, !586, !588, !590, !592, !594, !596, !598, !600, !602, !604, !606, !608, !610, !612, !614, !616, !618, !620, !622, !624, !626, !628, !630, !632, !634, !636, !638, !640, !642, !644, !646, !648, !650, !652, !654, !656, !658, !660, !662, !664, !666, !668, !670, !672, !674, !676, !678, !680, !682, !684, !686, !688, !690, !692, !694, !696, !698, !700, !702, !704, !706, !708, !710, !712, !714, !716, !718, !720, !722, !724, !726, !728, !730, !732, !734, !736, !738, !740, !742, !744, !746, !748, !750, !752, !754, !756, !758, !760, !762, !764, !766, !768, !770, !772, !774, !776, !778, !780, !782, !784, !786, !788, !790, !792, !794, !796, !798, !800, !802, !804, !806, !808, !810, !812, !814, !816, !818, !820, !822, !824, !826, !828, !830, !832, !834, !836, !838, !840, !842, !844, !846, !848, !850, !852, !853, !855, !857, !858, !859, !860, !862, !863, !864, !866, !867, !868, !869, !870, !872, !874, !875, !876, !877, !879, !881, !883, !885, !887, !889, !891, !893, !895, !897, !899, !901, !903, !905, !907, !909, !911, !913, !915, !917, !919, !921, !923, !925, !927, !929, !931, !933, !935, !937, !939, !941, !943, !945, !947, !949, !951, !953, !955}
!llvm.named.register.sp = !{!957}
!llvm.module.flags = !{!958, !959, !960, !961, !962, !963, !964, !965}
!llvm.ident = !{!966}

!0 = !{ptr @__ksymtab_rtw89_debug_mask, !1, !"__ksymtab_rtw89_debug_mask", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 17, i32 1}
!2 = !{ptr @__param_debug_mask, !3, !"__param_debug_mask", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 18, i32 1}
!4 = !{ptr @__UNIQUE_ID_debug_masktype406, !3, !"__UNIQUE_ID_debug_masktype406", i1 false, i1 false}
!5 = !{ptr @__UNIQUE_ID_debug_mask407, !6, !"__UNIQUE_ID_debug_mask407", i1 false, i1 false}
!6 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 19, i32 1}
!7 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 2455, i32 38}
!9 = !{ptr @.str.1, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 2458, i32 2}
!11 = !{ptr @.str.2, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.3, !10, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.4, !10, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @rtw89_debugfs_init.__UNIQUE_ID_ddebug819, !10, !"__UNIQUE_ID_ddebug819", i1 false, i1 false}
!16 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 2459, i32 2}
!18 = !{ptr @rtw89_debugfs_init.__UNIQUE_ID_ddebug820, !17, !"__UNIQUE_ID_ddebug820", i1 false, i1 false}
!19 = !{ptr @.str.7, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 2460, i32 2}
!21 = !{ptr @rtw89_debugfs_init.__UNIQUE_ID_ddebug821, !20, !"__UNIQUE_ID_ddebug821", i1 false, i1 false}
!22 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 2461, i32 2}
!24 = !{ptr @rtw89_debugfs_init.__UNIQUE_ID_ddebug822, !23, !"__UNIQUE_ID_ddebug822", i1 false, i1 false}
!25 = !{ptr @.str.9, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 2462, i32 2}
!27 = !{ptr @rtw89_debugfs_init.__UNIQUE_ID_ddebug823, !26, !"__UNIQUE_ID_ddebug823", i1 false, i1 false}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 2463, i32 2}
!30 = !{ptr @rtw89_debugfs_init.__UNIQUE_ID_ddebug824, !29, !"__UNIQUE_ID_ddebug824", i1 false, i1 false}
!31 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 2464, i32 2}
!33 = !{ptr @rtw89_debugfs_init.__UNIQUE_ID_ddebug825, !32, !"__UNIQUE_ID_ddebug825", i1 false, i1 false}
!34 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 2465, i32 2}
!36 = !{ptr @rtw89_debugfs_init.__UNIQUE_ID_ddebug826, !35, !"__UNIQUE_ID_ddebug826", i1 false, i1 false}
!37 = !{ptr @.str.13, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 2466, i32 2}
!39 = !{ptr @rtw89_debugfs_init.__UNIQUE_ID_ddebug827, !38, !"__UNIQUE_ID_ddebug827", i1 false, i1 false}
!40 = !{ptr @.str.14, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 2467, i32 2}
!42 = !{ptr @rtw89_debugfs_init.__UNIQUE_ID_ddebug828, !41, !"__UNIQUE_ID_ddebug828", i1 false, i1 false}
!43 = !{ptr @.str.15, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 2468, i32 2}
!45 = !{ptr @rtw89_debugfs_init.__UNIQUE_ID_ddebug829, !44, !"__UNIQUE_ID_ddebug829", i1 false, i1 false}
!46 = !{ptr @.str.16, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 2469, i32 2}
!48 = !{ptr @rtw89_debugfs_init.__UNIQUE_ID_ddebug830, !47, !"__UNIQUE_ID_ddebug830", i1 false, i1 false}
!49 = !{ptr @.str.17, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 2470, i32 2}
!51 = !{ptr @rtw89_debugfs_init.__UNIQUE_ID_ddebug831, !50, !"__UNIQUE_ID_ddebug831", i1 false, i1 false}
!52 = !{ptr @.str.18, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 2471, i32 2}
!54 = !{ptr @rtw89_debugfs_init.__UNIQUE_ID_ddebug832, !53, !"__UNIQUE_ID_ddebug832", i1 false, i1 false}
!55 = !{ptr @.str.19, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 2472, i32 2}
!57 = !{ptr @rtw89_debugfs_init.__UNIQUE_ID_ddebug833, !56, !"__UNIQUE_ID_ddebug833", i1 false, i1 false}
!58 = !{ptr @.str.20, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 2491, i32 3}
!60 = !{ptr @.str.21, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @.str.22, !59, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @.str.23, !59, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @__rtw89_debug._entry, !59, !"_entry", i1 false, i1 false}
!64 = !{ptr @__rtw89_debug._entry_ptr, !59, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @__ksymtab___rtw89_debug, !66, !"__ksymtab___rtw89_debug", i1 false, i1 false}
!66 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 2495, i32 1}
!67 = !{ptr @rtw89_debug_mask, !68, !"rtw89_debug_mask", i1 false, i1 false}
!68 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 16, i32 14}
!69 = !{ptr @__param_str_debug_mask, !3, !"__param_str_debug_mask", i1 false, i1 false}
!70 = !{ptr @rtw89_debug_priv_read_reg, !71, !"rtw89_debug_priv_read_reg", i1 false, i1 false}
!71 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 2369, i32 34}
!72 = !{ptr @.str.24, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 167, i32 3}
!74 = !{ptr @.str.25, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @.str.26, !73, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @rtw89_debug_priv_read_reg_get._entry, !73, !"_entry", i1 false, i1 false}
!77 = !{ptr @rtw89_debug_priv_read_reg_get._entry_ptr, !73, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.27, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 171, i32 16}
!80 = !{ptr @.str.28, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 132, i32 20}
!82 = !{ptr @.str.29, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 134, i32 3}
!84 = !{ptr @.str.30, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @rtw89_debug_priv_read_reg_select._entry, !83, !"_entry", i1 false, i1 false}
!86 = !{ptr @rtw89_debug_priv_read_reg_select._entry_ptr, !83, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.32, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 141, i32 2}
!89 = !{ptr @rtw89_debug_priv_read_reg_select._entry.31, !88, !"_entry", i1 false, i1 false}
!90 = !{ptr @rtw89_debug_priv_read_reg_select._entry_ptr.33, !88, !"_entry_ptr", i1 false, i1 false}
!91 = distinct !{null, !92, !"__already_done", i1 false, i1 false}
!92 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!93 = distinct !{null, !92, !"<string literal>", i1 false, i1 false}
!94 = distinct !{null, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!96 = !{ptr @.str.36, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!98 = !{ptr @file_ops_common_rw, !99, !"file_ops_common_rw", i1 false, i1 false}
!99 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 98, i32 37}
!100 = !{ptr @rtw89_debug_priv_write_reg, !101, !"rtw89_debug_priv_write_reg", i1 false, i1 false}
!101 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 2374, i32 34}
!102 = !{ptr @.str.37, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 192, i32 20}
!104 = !{ptr @.str.38, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 194, i32 3}
!106 = !{ptr @.str.39, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @rtw89_debug_priv_write_reg_set._entry, !105, !"_entry", i1 false, i1 false}
!108 = !{ptr @rtw89_debug_priv_write_reg_set._entry_ptr, !105, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.41, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 200, i32 3}
!111 = !{ptr @rtw89_debug_priv_write_reg_set._entry.40, !110, !"_entry", i1 false, i1 false}
!112 = !{ptr @rtw89_debug_priv_write_reg_set._entry_ptr.42, !110, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.44, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 204, i32 3}
!115 = !{ptr @rtw89_debug_priv_write_reg_set._entry.43, !114, !"_entry", i1 false, i1 false}
!116 = !{ptr @rtw89_debug_priv_write_reg_set._entry_ptr.45, !114, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.47, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 208, i32 3}
!119 = !{ptr @rtw89_debug_priv_write_reg_set._entry.46, !118, !"_entry", i1 false, i1 false}
!120 = !{ptr @rtw89_debug_priv_write_reg_set._entry_ptr.48, !118, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @.str.50, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 212, i32 3}
!123 = !{ptr @rtw89_debug_priv_write_reg_set._entry.49, !122, !"_entry", i1 false, i1 false}
!124 = !{ptr @rtw89_debug_priv_write_reg_set._entry_ptr.51, !122, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @file_ops_single_w, !126, !"file_ops_single_w", i1 false, i1 false}
!126 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 107, i32 37}
!127 = !{ptr @rtw89_debug_priv_read_rf, !128, !"rtw89_debug_priv_read_rf", i1 false, i1 false}
!128 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 2378, i32 34}
!129 = !{ptr @.str.52, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 270, i32 16}
!131 = !{ptr @.str.53, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 238, i32 20}
!133 = !{ptr @.str.54, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 240, i32 3}
!135 = !{ptr @.str.55, !134, !"<string literal>", i1 false, i1 false}
!136 = !{ptr @rtw89_debug_priv_read_rf_select._entry, !134, !"_entry", i1 false, i1 false}
!137 = !{ptr @rtw89_debug_priv_read_rf_select._entry_ptr, !134, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @.str.57, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 245, i32 3}
!140 = !{ptr @rtw89_debug_priv_read_rf_select._entry.56, !139, !"_entry", i1 false, i1 false}
!141 = !{ptr @rtw89_debug_priv_read_rf_select._entry_ptr.58, !139, !"_entry_ptr", i1 false, i1 false}
!142 = !{ptr @.str.60, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 252, i32 2}
!144 = !{ptr @rtw89_debug_priv_read_rf_select._entry.59, !143, !"_entry", i1 false, i1 false}
!145 = !{ptr @rtw89_debug_priv_read_rf_select._entry_ptr.61, !143, !"_entry_ptr", i1 false, i1 false}
!146 = !{ptr @rtw89_debug_priv_write_rf, !147, !"rtw89_debug_priv_write_rf", i1 false, i1 false}
!147 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 2383, i32 34}
!148 = !{ptr @.str.62, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 292, i32 20}
!150 = !{ptr @.str.63, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 294, i32 3}
!152 = !{ptr @.str.64, !151, !"<string literal>", i1 false, i1 false}
!153 = !{ptr @rtw89_debug_priv_write_rf_set._entry, !151, !"_entry", i1 false, i1 false}
!154 = !{ptr @rtw89_debug_priv_write_rf_set._entry_ptr, !151, !"_entry_ptr", i1 false, i1 false}
!155 = !{ptr @rtw89_debug_priv_write_rf_set._entry.65, !156, !"_entry", i1 false, i1 false}
!156 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 299, i32 3}
!157 = !{ptr @rtw89_debug_priv_write_rf_set._entry_ptr.66, !156, !"_entry_ptr", i1 false, i1 false}
!158 = !{ptr @.str.68, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 303, i32 2}
!160 = !{ptr @rtw89_debug_priv_write_rf_set._entry.67, !159, !"_entry", i1 false, i1 false}
!161 = !{ptr @rtw89_debug_priv_write_rf_set._entry_ptr.69, !159, !"_entry_ptr", i1 false, i1 false}
!162 = !{ptr @rtw89_debug_priv_rf_reg_dump, !163, !"rtw89_debug_priv_rf_reg_dump", i1 false, i1 false}
!163 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 2387, i32 34}
!164 = !{ptr @.str.70, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 319, i32 17}
!166 = !{ptr @.str.71, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 321, i32 18}
!168 = !{ptr @.str.72, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 325, i32 19}
!170 = !{ptr @.str.73, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 327, i32 16}
!172 = !{ptr @file_ops_single_r, !173, !"file_ops_single_r", i1 false, i1 false}
!173 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 90, i32 37}
!174 = !{ptr @rtw89_debug_priv_txpwr_table, !175, !"rtw89_debug_priv_txpwr_table", i1 false, i1 false}
!175 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 2391, i32 34}
!176 = !{ptr @.str.74, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 562, i32 14}
!178 = !{ptr @.str.75, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 565, i32 14}
!180 = !{ptr @.str.76, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 568, i32 14}
!182 = !{ptr @.str.77, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 573, i32 14}
!184 = !{ptr @.str.78, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 578, i32 14}
!186 = !{ptr @.str.79, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 533, i32 17}
!188 = !{ptr @.str.80, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 535, i32 2}
!190 = !{ptr @.str.81, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 536, i32 2}
!192 = !{ptr @.str.82, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 537, i32 2}
!194 = !{ptr @.str.83, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 538, i32 2}
!196 = !{ptr @.str.84, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 539, i32 2}
!198 = !{ptr @.str.85, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 540, i32 2}
!200 = !{ptr @.str.86, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 541, i32 2}
!202 = !{ptr @.str.87, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 542, i32 2}
!204 = !{ptr @.str.88, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 543, i32 2}
!206 = !{ptr @.str.89, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 544, i32 2}
!208 = !{ptr @.str.90, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 545, i32 2}
!210 = !{ptr @.str.91, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 546, i32 2}
!212 = !{ptr @.str.92, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 547, i32 2}
!214 = !{ptr @.str.93, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 473, i32 9}
!216 = !{ptr @.str.94, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 477, i32 9}
!218 = !{ptr @.str.95, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 482, i32 9}
!220 = !{ptr @__txpwr_map_byr, !221, !"__txpwr_map_byr", i1 false, i1 false}
!221 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 377, i32 31}
!222 = !{ptr @.str.96, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 359, i32 2}
!224 = !{ptr @.str.97, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 360, i32 2}
!226 = !{ptr @.str.98, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 361, i32 2}
!228 = !{ptr @.str.99, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 363, i32 2}
!230 = !{ptr @.str.100, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 364, i32 2}
!232 = !{ptr @.str.101, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 365, i32 2}
!234 = !{ptr @.str.102, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 366, i32 2}
!236 = !{ptr @.str.103, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 368, i32 2}
!238 = !{ptr @.str.104, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 369, i32 2}
!240 = !{ptr @.str.105, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 370, i32 2}
!242 = !{ptr @.str.106, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 371, i32 2}
!244 = !{ptr @__txpwr_ent_byr, !245, !"__txpwr_ent_byr", i1 false, i1 false}
!245 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 358, i32 31}
!246 = !{ptr @__txpwr_map_lmt, !247, !"__txpwr_map_lmt", i1 false, i1 false}
!247 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 432, i32 31}
!248 = !{ptr @.str.107, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 386, i32 2}
!250 = !{ptr @.str.108, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 387, i32 2}
!252 = !{ptr @.str.109, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 388, i32 2}
!254 = !{ptr @.str.110, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 389, i32 2}
!256 = !{ptr @.str.111, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 390, i32 2}
!258 = !{ptr @.str.112, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 391, i32 2}
!260 = !{ptr @.str.113, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 392, i32 2}
!262 = !{ptr @.str.114, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 393, i32 2}
!264 = !{ptr @.str.115, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 394, i32 2}
!266 = !{ptr @.str.116, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 395, i32 2}
!268 = !{ptr @.str.117, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 396, i32 2}
!270 = !{ptr @.str.118, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 397, i32 2}
!272 = !{ptr @.str.119, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 398, i32 2}
!274 = !{ptr @.str.120, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 399, i32 2}
!276 = !{ptr @.str.121, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 400, i32 2}
!278 = !{ptr @.str.122, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 401, i32 2}
!280 = !{ptr @.str.123, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 402, i32 2}
!282 = !{ptr @.str.124, !283, !"<string literal>", i1 false, i1 false}
!283 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 403, i32 2}
!284 = !{ptr @.str.125, !285, !"<string literal>", i1 false, i1 false}
!285 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 404, i32 2}
!286 = !{ptr @.str.126, !287, !"<string literal>", i1 false, i1 false}
!287 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 405, i32 2}
!288 = !{ptr @.str.127, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 407, i32 2}
!290 = !{ptr @.str.128, !291, !"<string literal>", i1 false, i1 false}
!291 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 408, i32 2}
!292 = !{ptr @.str.129, !293, !"<string literal>", i1 false, i1 false}
!293 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 409, i32 2}
!294 = !{ptr @.str.130, !295, !"<string literal>", i1 false, i1 false}
!295 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 410, i32 2}
!296 = !{ptr @.str.131, !297, !"<string literal>", i1 false, i1 false}
!297 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 411, i32 2}
!298 = !{ptr @.str.132, !299, !"<string literal>", i1 false, i1 false}
!299 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 412, i32 2}
!300 = !{ptr @.str.133, !301, !"<string literal>", i1 false, i1 false}
!301 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 413, i32 2}
!302 = !{ptr @.str.134, !303, !"<string literal>", i1 false, i1 false}
!303 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 414, i32 2}
!304 = !{ptr @.str.135, !305, !"<string literal>", i1 false, i1 false}
!305 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 415, i32 2}
!306 = !{ptr @.str.136, !307, !"<string literal>", i1 false, i1 false}
!307 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 416, i32 2}
!308 = !{ptr @.str.137, !309, !"<string literal>", i1 false, i1 false}
!309 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 417, i32 2}
!310 = !{ptr @.str.138, !311, !"<string literal>", i1 false, i1 false}
!311 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 418, i32 2}
!312 = !{ptr @.str.139, !313, !"<string literal>", i1 false, i1 false}
!313 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 419, i32 2}
!314 = !{ptr @.str.140, !315, !"<string literal>", i1 false, i1 false}
!315 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 420, i32 2}
!316 = !{ptr @.str.141, !317, !"<string literal>", i1 false, i1 false}
!317 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 421, i32 2}
!318 = !{ptr @.str.142, !319, !"<string literal>", i1 false, i1 false}
!319 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 422, i32 2}
!320 = !{ptr @.str.143, !321, !"<string literal>", i1 false, i1 false}
!321 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 423, i32 2}
!322 = !{ptr @.str.144, !323, !"<string literal>", i1 false, i1 false}
!323 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 424, i32 2}
!324 = !{ptr @.str.145, !325, !"<string literal>", i1 false, i1 false}
!325 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 425, i32 2}
!326 = !{ptr @.str.146, !327, !"<string literal>", i1 false, i1 false}
!327 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 426, i32 2}
!328 = !{ptr @__txpwr_ent_lmt, !329, !"__txpwr_ent_lmt", i1 false, i1 false}
!329 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 384, i32 31}
!330 = !{ptr @__txpwr_map_lmt_ru, !331, !"__txpwr_map_lmt_ru", i1 false, i1 false}
!331 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 459, i32 31}
!332 = !{ptr @.str.147, !333, !"<string literal>", i1 false, i1 false}
!333 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 441, i32 2}
!334 = !{ptr @.str.148, !335, !"<string literal>", i1 false, i1 false}
!335 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 443, i32 2}
!336 = !{ptr @.str.149, !337, !"<string literal>", i1 false, i1 false}
!337 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 445, i32 2}
!338 = !{ptr @.str.150, !339, !"<string literal>", i1 false, i1 false}
!339 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 448, i32 2}
!340 = !{ptr @.str.151, !341, !"<string literal>", i1 false, i1 false}
!341 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 450, i32 2}
!342 = !{ptr @.str.152, !343, !"<string literal>", i1 false, i1 false}
!343 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 452, i32 2}
!344 = !{ptr @__txpwr_ent_lmt_ru, !345, !"__txpwr_ent_lmt_ru", i1 false, i1 false}
!345 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 439, i32 31}
!346 = !{ptr @rtw89_debug_priv_mac_reg_dump, !347, !"rtw89_debug_priv_mac_reg_dump", i1 false, i1 false}
!347 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 2395, i32 34}
!348 = !{ptr @.str.153, !349, !"<string literal>", i1 false, i1 false}
!349 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 634, i32 15}
!350 = !{ptr @.str.154, !351, !"<string literal>", i1 false, i1 false}
!351 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 639, i32 15}
!352 = !{ptr @.str.155, !353, !"<string literal>", i1 false, i1 false}
!353 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 644, i32 15}
!354 = !{ptr @.str.156, !355, !"<string literal>", i1 false, i1 false}
!355 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 649, i32 15}
!356 = !{ptr @.str.157, !357, !"<string literal>", i1 false, i1 false}
!357 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 654, i32 15}
!358 = !{ptr @.str.158, !359, !"<string literal>", i1 false, i1 false}
!359 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 659, i32 15}
!360 = !{ptr @.str.159, !361, !"<string literal>", i1 false, i1 false}
!361 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 664, i32 15}
!362 = !{ptr @.str.160, !363, !"<string literal>", i1 false, i1 false}
!363 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 669, i32 15}
!364 = !{ptr @.str.161, !365, !"<string literal>", i1 false, i1 false}
!365 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 674, i32 15}
!366 = !{ptr @.str.162, !367, !"<string literal>", i1 false, i1 false}
!367 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 681, i32 18}
!368 = !{ptr @.str.163, !369, !"<string literal>", i1 false, i1 false}
!369 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 684, i32 19}
!370 = !{ptr @.str.164, !371, !"<string literal>", i1 false, i1 false}
!371 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 611, i32 3}
!372 = !{ptr @.str.165, !371, !"<string literal>", i1 false, i1 false}
!373 = !{ptr @rtw89_debug_priv_mac_reg_dump_select._entry, !371, !"_entry", i1 false, i1 false}
!374 = !{ptr @rtw89_debug_priv_mac_reg_dump_select._entry_ptr, !371, !"_entry_ptr", i1 false, i1 false}
!375 = !{ptr @.str.167, !376, !"<string literal>", i1 false, i1 false}
!376 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 616, i32 2}
!377 = !{ptr @rtw89_debug_priv_mac_reg_dump_select._entry.166, !376, !"_entry", i1 false, i1 false}
!378 = !{ptr @rtw89_debug_priv_mac_reg_dump_select._entry_ptr.168, !376, !"_entry_ptr", i1 false, i1 false}
!379 = !{ptr @rtw89_debug_priv_mac_mem_dump, !380, !"rtw89_debug_priv_mac_mem_dump", i1 false, i1 false}
!380 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 2400, i32 34}
!381 = !{ptr @.str.169, !382, !"<string literal>", i1 false, i1 false}
!382 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 768, i32 18}
!383 = !{ptr @.str.170, !384, !"<string literal>", i1 false, i1 false}
!384 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 773, i32 19}
!385 = !{ptr @mac_mem_base_addr_table, !386, !"mac_mem_base_addr_table", i1 false, i1 false}
!386 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 727, i32 18}
!387 = !{ptr @.str.171, !388, !"<string literal>", i1 false, i1 false}
!388 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 713, i32 3}
!389 = !{ptr @.str.172, !388, !"<string literal>", i1 false, i1 false}
!390 = !{ptr @rtw89_debug_priv_mac_mem_dump_select._entry, !388, !"_entry", i1 false, i1 false}
!391 = !{ptr @rtw89_debug_priv_mac_mem_dump_select._entry_ptr, !388, !"_entry_ptr", i1 false, i1 false}
!392 = !{ptr @.str.174, !393, !"<string literal>", i1 false, i1 false}
!393 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 721, i32 2}
!394 = !{ptr @rtw89_debug_priv_mac_mem_dump_select._entry.173, !393, !"_entry", i1 false, i1 false}
!395 = !{ptr @rtw89_debug_priv_mac_mem_dump_select._entry_ptr.175, !393, !"_entry_ptr", i1 false, i1 false}
!396 = !{ptr @rtw89_debug_priv_mac_dbg_port_dump, !397, !"rtw89_debug_priv_mac_dbg_port_dump", i1 false, i1 false}
!397 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 2405, i32 34}
!398 = !{ptr @.str.176, !399, !"<string literal>", i1 false, i1 false}
!399 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 923, i32 15}
!400 = !{ptr @.str.177, !401, !"<string literal>", i1 false, i1 false}
!401 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 927, i32 2}
!402 = !{ptr @.str.178, !401, !"<string literal>", i1 false, i1 false}
!403 = !{ptr @.str.179, !401, !"<string literal>", i1 false, i1 false}
!404 = !{ptr @rtw89_debug_mac_dump_dle_dbg._entry, !401, !"_entry", i1 false, i1 false}
!405 = !{ptr @rtw89_debug_mac_dump_dle_dbg._entry_ptr, !401, !"_entry_ptr", i1 false, i1 false}
!406 = !{ptr @.str.180, !401, !"<string literal>", i1 false, i1 false}
!407 = !{ptr @.str.181, !401, !"<string literal>", i1 false, i1 false}
!408 = !{ptr @rtw89_debug_mac_dump_dle_dbg._entry.182, !401, !"_entry", i1 false, i1 false}
!409 = !{ptr @rtw89_debug_mac_dump_dle_dbg._entry_ptr.183, !401, !"_entry_ptr", i1 false, i1 false}
!410 = !{ptr @.str.184, !401, !"<string literal>", i1 false, i1 false}
!411 = !{ptr @.str.185, !401, !"<string literal>", i1 false, i1 false}
!412 = !{ptr @.str.186, !401, !"<string literal>", i1 false, i1 false}
!413 = !{ptr @rtw89_debug_mac_dump_dle_dbg._entry.187, !414, !"_entry", i1 false, i1 false}
!414 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 928, i32 2}
!415 = !{ptr @rtw89_debug_mac_dump_dle_dbg._entry_ptr.188, !414, !"_entry_ptr", i1 false, i1 false}
!416 = !{ptr @.str.189, !414, !"<string literal>", i1 false, i1 false}
!417 = !{ptr @rtw89_debug_mac_dump_dle_dbg._entry.190, !414, !"_entry", i1 false, i1 false}
!418 = !{ptr @rtw89_debug_mac_dump_dle_dbg._entry_ptr.191, !414, !"_entry_ptr", i1 false, i1 false}
!419 = !{ptr @rtw89_debug_mac_dump_dle_dbg._entry.192, !420, !"_entry", i1 false, i1 false}
!420 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 931, i32 3}
!421 = !{ptr @rtw89_debug_mac_dump_dle_dbg._entry_ptr.193, !420, !"_entry_ptr", i1 false, i1 false}
!422 = !{ptr @.str.194, !420, !"<string literal>", i1 false, i1 false}
!423 = !{ptr @.str.195, !420, !"<string literal>", i1 false, i1 false}
!424 = !{ptr @.str.196, !420, !"<string literal>", i1 false, i1 false}
!425 = !{ptr @.str.197, !420, !"<string literal>", i1 false, i1 false}
!426 = !{ptr @rtw89_debug_mac_dump_dle_dbg._entry.198, !427, !"_entry", i1 false, i1 false}
!427 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 932, i32 3}
!428 = !{ptr @rtw89_debug_mac_dump_dle_dbg._entry_ptr.199, !427, !"_entry_ptr", i1 false, i1 false}
!429 = !{ptr @.str.200, !427, !"<string literal>", i1 false, i1 false}
!430 = !{ptr @rtw89_debug_mac_dump_dle_dbg._entry.201, !431, !"_entry", i1 false, i1 false}
!431 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 933, i32 3}
!432 = !{ptr @rtw89_debug_mac_dump_dle_dbg._entry_ptr.202, !431, !"_entry_ptr", i1 false, i1 false}
!433 = !{ptr @.str.203, !431, !"<string literal>", i1 false, i1 false}
!434 = !{ptr @rtw89_debug_mac_dump_dle_dbg._entry.204, !435, !"_entry", i1 false, i1 false}
!435 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 934, i32 3}
!436 = !{ptr @rtw89_debug_mac_dump_dle_dbg._entry_ptr.205, !435, !"_entry_ptr", i1 false, i1 false}
!437 = !{ptr @.str.206, !435, !"<string literal>", i1 false, i1 false}
!438 = !{ptr @rtw89_debug_mac_dump_dle_dbg._entry.207, !439, !"_entry", i1 false, i1 false}
!439 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 935, i32 3}
!440 = !{ptr @rtw89_debug_mac_dump_dle_dbg._entry_ptr.208, !439, !"_entry_ptr", i1 false, i1 false}
!441 = !{ptr @.str.209, !439, !"<string literal>", i1 false, i1 false}
!442 = !{ptr @rtw89_debug_mac_dump_dle_dbg._entry.210, !443, !"_entry", i1 false, i1 false}
!443 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 940, i32 3}
!444 = !{ptr @rtw89_debug_mac_dump_dle_dbg._entry_ptr.211, !443, !"_entry_ptr", i1 false, i1 false}
!445 = !{ptr @.str.212, !443, !"<string literal>", i1 false, i1 false}
!446 = !{ptr @rtw89_debug_mac_dump_dle_dbg._entry.213, !447, !"_entry", i1 false, i1 false}
!447 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 941, i32 3}
!448 = !{ptr @rtw89_debug_mac_dump_dle_dbg._entry_ptr.214, !447, !"_entry_ptr", i1 false, i1 false}
!449 = !{ptr @.str.215, !447, !"<string literal>", i1 false, i1 false}
!450 = !{ptr @rtw89_debug_mac_dump_dle_dbg._entry.216, !451, !"_entry", i1 false, i1 false}
!451 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 942, i32 3}
!452 = !{ptr @rtw89_debug_mac_dump_dle_dbg._entry_ptr.217, !451, !"_entry_ptr", i1 false, i1 false}
!453 = !{ptr @.str.218, !451, !"<string literal>", i1 false, i1 false}
!454 = !{ptr @rtw89_debug_mac_dump_dle_dbg._entry.219, !455, !"_entry", i1 false, i1 false}
!455 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 943, i32 3}
!456 = !{ptr @rtw89_debug_mac_dump_dle_dbg._entry_ptr.220, !455, !"_entry_ptr", i1 false, i1 false}
!457 = !{ptr @.str.221, !455, !"<string literal>", i1 false, i1 false}
!458 = !{ptr @rtw89_debug_mac_dump_dle_dbg._entry.222, !459, !"_entry", i1 false, i1 false}
!459 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 944, i32 3}
!460 = !{ptr @rtw89_debug_mac_dump_dle_dbg._entry_ptr.223, !459, !"_entry_ptr", i1 false, i1 false}
!461 = !{ptr @rtw89_debug_mac_dump_dle_dbg._entry.224, !462, !"_entry", i1 false, i1 false}
!462 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 945, i32 3}
!463 = !{ptr @rtw89_debug_mac_dump_dle_dbg._entry_ptr.225, !462, !"_entry_ptr", i1 false, i1 false}
!464 = !{ptr @.str.226, !462, !"<string literal>", i1 false, i1 false}
!465 = !{ptr @rtw89_debug_mac_dump_dle_dbg._entry.227, !466, !"_entry", i1 false, i1 false}
!466 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 946, i32 3}
!467 = !{ptr @rtw89_debug_mac_dump_dle_dbg._entry_ptr.228, !466, !"_entry_ptr", i1 false, i1 false}
!468 = !{ptr @.str.229, !466, !"<string literal>", i1 false, i1 false}
!469 = !{ptr @rtw89_debug_mac_dump_dle_dbg._entry.230, !470, !"_entry", i1 false, i1 false}
!470 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 947, i32 3}
!471 = !{ptr @rtw89_debug_mac_dump_dle_dbg._entry_ptr.231, !470, !"_entry_ptr", i1 false, i1 false}
!472 = !{ptr @.str.232, !470, !"<string literal>", i1 false, i1 false}
!473 = !{ptr @rtw89_debug_mac_dump_dle_dbg._entry.233, !474, !"_entry", i1 false, i1 false}
!474 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 948, i32 3}
!475 = !{ptr @rtw89_debug_mac_dump_dle_dbg._entry_ptr.234, !474, !"_entry_ptr", i1 false, i1 false}
!476 = !{ptr @.str.235, !474, !"<string literal>", i1 false, i1 false}
!477 = !{ptr @rtw89_debug_mac_dump_dle_dbg._entry.236, !478, !"_entry", i1 false, i1 false}
!478 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 949, i32 3}
!479 = !{ptr @rtw89_debug_mac_dump_dle_dbg._entry_ptr.237, !478, !"_entry_ptr", i1 false, i1 false}
!480 = !{ptr @.str.238, !478, !"<string literal>", i1 false, i1 false}
!481 = !{ptr @rtw89_debug_mac_dump_dle_dbg._entry.239, !482, !"_entry", i1 false, i1 false}
!482 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 950, i32 3}
!483 = !{ptr @rtw89_debug_mac_dump_dle_dbg._entry_ptr.240, !482, !"_entry_ptr", i1 false, i1 false}
!484 = !{ptr @.str.241, !485, !"<string literal>", i1 false, i1 false}
!485 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 968, i32 15}
!486 = !{ptr @.str.242, !487, !"<string literal>", i1 false, i1 false}
!487 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 972, i32 16}
!488 = !{ptr @.str.243, !489, !"<string literal>", i1 false, i1 false}
!489 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 974, i32 16}
!490 = !{ptr @.str.244, !491, !"<string literal>", i1 false, i1 false}
!491 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 976, i32 16}
!492 = !{ptr @.str.245, !493, !"<string literal>", i1 false, i1 false}
!493 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 978, i32 16}
!494 = !{ptr @.str.246, !495, !"<string literal>", i1 false, i1 false}
!495 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 980, i32 16}
!496 = !{ptr @.str.247, !497, !"<string literal>", i1 false, i1 false}
!497 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 982, i32 16}
!498 = !{ptr @.str.248, !499, !"<string literal>", i1 false, i1 false}
!499 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 984, i32 16}
!500 = !{ptr @.str.249, !501, !"<string literal>", i1 false, i1 false}
!501 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 986, i32 16}
!502 = !{ptr @.str.250, !503, !"<string literal>", i1 false, i1 false}
!503 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 988, i32 16}
!504 = !{ptr @.str.251, !505, !"<string literal>", i1 false, i1 false}
!505 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 990, i32 16}
!506 = !{ptr @.str.252, !507, !"<string literal>", i1 false, i1 false}
!507 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 992, i32 16}
!508 = !{ptr @.str.253, !509, !"<string literal>", i1 false, i1 false}
!509 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 994, i32 16}
!510 = !{ptr @.str.254, !511, !"<string literal>", i1 false, i1 false}
!511 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 996, i32 16}
!512 = !{ptr @.str.255, !513, !"<string literal>", i1 false, i1 false}
!513 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 998, i32 16}
!514 = !{ptr @.str.256, !515, !"<string literal>", i1 false, i1 false}
!515 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 1000, i32 16}
!516 = !{ptr @.str.257, !517, !"<string literal>", i1 false, i1 false}
!517 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 1002, i32 16}
!518 = !{ptr @.str.258, !519, !"<string literal>", i1 false, i1 false}
!519 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 1004, i32 16}
!520 = !{ptr @.str.259, !521, !"<string literal>", i1 false, i1 false}
!521 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 1006, i32 16}
!522 = !{ptr @.str.260, !523, !"<string literal>", i1 false, i1 false}
!523 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 1008, i32 16}
!524 = !{ptr @.str.261, !525, !"<string literal>", i1 false, i1 false}
!525 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 1021, i32 15}
!526 = !{ptr @.str.262, !527, !"<string literal>", i1 false, i1 false}
!527 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 1025, i32 16}
!528 = !{ptr @.str.263, !529, !"<string literal>", i1 false, i1 false}
!529 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 1027, i32 16}
!530 = !{ptr @.str.264, !531, !"<string literal>", i1 false, i1 false}
!531 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 1029, i32 16}
!532 = !{ptr @.str.265, !533, !"<string literal>", i1 false, i1 false}
!533 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 1031, i32 16}
!534 = !{ptr @.str.266, !535, !"<string literal>", i1 false, i1 false}
!535 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 1033, i32 16}
!536 = !{ptr @.str.267, !537, !"<string literal>", i1 false, i1 false}
!537 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 1035, i32 16}
!538 = !{ptr @.str.268, !539, !"<string literal>", i1 false, i1 false}
!539 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 1037, i32 16}
!540 = !{ptr @.str.269, !541, !"<string literal>", i1 false, i1 false}
!541 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 1039, i32 16}
!542 = !{ptr @.str.270, !543, !"<string literal>", i1 false, i1 false}
!543 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 1044, i32 15}
!544 = !{ptr @.str.271, !545, !"<string literal>", i1 false, i1 false}
!545 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 1048, i32 16}
!546 = !{ptr @.str.272, !547, !"<string literal>", i1 false, i1 false}
!547 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 1050, i32 16}
!548 = !{ptr @.str.273, !549, !"<string literal>", i1 false, i1 false}
!549 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 1052, i32 16}
!550 = !{ptr @.str.274, !551, !"<string literal>", i1 false, i1 false}
!551 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 1054, i32 16}
!552 = !{ptr @.str.275, !553, !"<string literal>", i1 false, i1 false}
!553 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 1056, i32 16}
!554 = !{ptr @.str.276, !555, !"<string literal>", i1 false, i1 false}
!555 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 1058, i32 16}
!556 = !{ptr @.str.277, !557, !"<string literal>", i1 false, i1 false}
!557 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 1060, i32 16}
!558 = !{ptr @.str.278, !559, !"<string literal>", i1 false, i1 false}
!559 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 1062, i32 16}
!560 = !{ptr @.str.279, !561, !"<string literal>", i1 false, i1 false}
!561 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 2073, i32 4}
!562 = !{ptr @.str.280, !561, !"<string literal>", i1 false, i1 false}
!563 = !{ptr @rtw89_debug_mac_dump_dbg_port._entry, !561, !"_entry", i1 false, i1 false}
!564 = !{ptr @rtw89_debug_mac_dump_dbg_port._entry_ptr, !561, !"_entry_ptr", i1 false, i1 false}
!565 = !{ptr @.str.281, !566, !"<string literal>", i1 false, i1 false}
!566 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 1955, i32 3}
!567 = !{ptr @.str.282, !566, !"<string literal>", i1 false, i1 false}
!568 = !{ptr @rtw89_debug_mac_dbg_port_dump._entry, !566, !"_entry", i1 false, i1 false}
!569 = !{ptr @rtw89_debug_mac_dbg_port_dump._entry_ptr, !566, !"_entry_ptr", i1 false, i1 false}
!570 = !{ptr @.str.283, !571, !"<string literal>", i1 false, i1 false}
!571 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 1965, i32 2}
!572 = !{ptr @.str.284, !573, !"<string literal>", i1 false, i1 false}
!573 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 1966, i32 2}
!574 = !{ptr @.str.285, !575, !"<string literal>", i1 false, i1 false}
!575 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 1967, i32 2}
!576 = !{ptr @.str.286, !577, !"<string literal>", i1 false, i1 false}
!577 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 1968, i32 2}
!578 = !{ptr @.str.287, !579, !"<string literal>", i1 false, i1 false}
!579 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 1969, i32 2}
!580 = !{ptr @.str.288, !581, !"<string literal>", i1 false, i1 false}
!581 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 1970, i32 2}
!582 = !{ptr @.str.289, !583, !"<string literal>", i1 false, i1 false}
!583 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 1971, i32 2}
!584 = !{ptr @.str.290, !585, !"<string literal>", i1 false, i1 false}
!585 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 1972, i32 2}
!586 = !{ptr @.str.291, !587, !"<string literal>", i1 false, i1 false}
!587 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 1973, i32 2}
!588 = !{ptr @.str.292, !589, !"<string literal>", i1 false, i1 false}
!589 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 1974, i32 2}
!590 = !{ptr @.str.293, !591, !"<string literal>", i1 false, i1 false}
!591 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 1975, i32 2}
!592 = !{ptr @.str.294, !593, !"<string literal>", i1 false, i1 false}
!593 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 1976, i32 2}
!594 = !{ptr @.str.295, !595, !"<string literal>", i1 false, i1 false}
!595 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 1977, i32 2}
!596 = !{ptr @.str.296, !597, !"<string literal>", i1 false, i1 false}
!597 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 1978, i32 2}
!598 = !{ptr @.str.297, !599, !"<string literal>", i1 false, i1 false}
!599 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 1979, i32 2}
!600 = !{ptr @.str.298, !601, !"<string literal>", i1 false, i1 false}
!601 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 1980, i32 2}
!602 = !{ptr @.str.299, !603, !"<string literal>", i1 false, i1 false}
!603 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 1981, i32 2}
!604 = !{ptr @.str.300, !605, !"<string literal>", i1 false, i1 false}
!605 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 1982, i32 2}
!606 = !{ptr @.str.301, !607, !"<string literal>", i1 false, i1 false}
!607 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 1983, i32 2}
!608 = !{ptr @.str.302, !609, !"<string literal>", i1 false, i1 false}
!609 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 1984, i32 2}
!610 = !{ptr @.str.303, !611, !"<string literal>", i1 false, i1 false}
!611 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 1985, i32 2}
!612 = !{ptr @.str.304, !613, !"<string literal>", i1 false, i1 false}
!613 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 1986, i32 2}
!614 = !{ptr @.str.305, !615, !"<string literal>", i1 false, i1 false}
!615 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 1987, i32 2}
!616 = !{ptr @.str.306, !617, !"<string literal>", i1 false, i1 false}
!617 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 1988, i32 2}
!618 = !{ptr @.str.307, !619, !"<string literal>", i1 false, i1 false}
!619 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 1989, i32 2}
!620 = !{ptr @.str.308, !621, !"<string literal>", i1 false, i1 false}
!621 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 1990, i32 2}
!622 = !{ptr @.str.309, !623, !"<string literal>", i1 false, i1 false}
!623 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 1991, i32 2}
!624 = !{ptr @.str.310, !625, !"<string literal>", i1 false, i1 false}
!625 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 1992, i32 2}
!626 = !{ptr @.str.311, !627, !"<string literal>", i1 false, i1 false}
!627 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 1993, i32 2}
!628 = !{ptr @.str.312, !629, !"<string literal>", i1 false, i1 false}
!629 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 1994, i32 2}
!630 = !{ptr @.str.313, !631, !"<string literal>", i1 false, i1 false}
!631 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 1995, i32 2}
!632 = !{ptr @.str.314, !633, !"<string literal>", i1 false, i1 false}
!633 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 1996, i32 2}
!634 = !{ptr @.str.315, !635, !"<string literal>", i1 false, i1 false}
!635 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 1997, i32 2}
!636 = !{ptr @.str.316, !637, !"<string literal>", i1 false, i1 false}
!637 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 1998, i32 2}
!638 = !{ptr @.str.317, !639, !"<string literal>", i1 false, i1 false}
!639 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 1999, i32 2}
!640 = !{ptr @.str.318, !641, !"<string literal>", i1 false, i1 false}
!641 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 2000, i32 2}
!642 = !{ptr @.str.319, !643, !"<string literal>", i1 false, i1 false}
!643 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 2001, i32 2}
!644 = !{ptr @.str.320, !645, !"<string literal>", i1 false, i1 false}
!645 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 2002, i32 2}
!646 = !{ptr @.str.321, !647, !"<string literal>", i1 false, i1 false}
!647 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 2003, i32 2}
!648 = !{ptr @.str.322, !649, !"<string literal>", i1 false, i1 false}
!649 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 2004, i32 2}
!650 = !{ptr @.str.323, !651, !"<string literal>", i1 false, i1 false}
!651 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 2005, i32 2}
!652 = !{ptr @.str.324, !653, !"<string literal>", i1 false, i1 false}
!653 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 2006, i32 2}
!654 = !{ptr @.str.325, !655, !"<string literal>", i1 false, i1 false}
!655 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 2007, i32 2}
!656 = !{ptr @.str.326, !657, !"<string literal>", i1 false, i1 false}
!657 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 2008, i32 2}
!658 = !{ptr @.str.327, !659, !"<string literal>", i1 false, i1 false}
!659 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 2013, i32 16}
!660 = !{ptr @.str.328, !661, !"<string literal>", i1 false, i1 false}
!661 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 2014, i32 16}
!662 = !{ptr @.str.329, !663, !"<string literal>", i1 false, i1 false}
!663 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 2022, i32 18}
!664 = !{ptr @.str.330, !665, !"<string literal>", i1 false, i1 false}
!665 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 2027, i32 18}
!666 = !{ptr @.str.331, !667, !"<string literal>", i1 false, i1 false}
!667 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 2043, i32 18}
!668 = !{ptr @.str.332, !669, !"<string literal>", i1 false, i1 false}
!669 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 2048, i32 18}
!670 = !{ptr @.str.333, !671, !"<string literal>", i1 false, i1 false}
!671 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 2053, i32 18}
!672 = !{ptr @.str.334, !673, !"<string literal>", i1 false, i1 false}
!673 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 1589, i32 15}
!674 = !{ptr @.str.335, !675, !"<string literal>", i1 false, i1 false}
!675 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 1596, i32 15}
!676 = !{ptr @.str.336, !677, !"<string literal>", i1 false, i1 false}
!677 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 1603, i32 15}
!678 = !{ptr @.str.337, !679, !"<string literal>", i1 false, i1 false}
!679 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 1610, i32 15}
!680 = !{ptr @.str.338, !681, !"<string literal>", i1 false, i1 false}
!681 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 1627, i32 15}
!682 = !{ptr @.str.339, !683, !"<string literal>", i1 false, i1 false}
!683 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 1644, i32 15}
!684 = !{ptr @.str.340, !685, !"<string literal>", i1 false, i1 false}
!685 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 1666, i32 15}
!686 = !{ptr @.str.341, !687, !"<string literal>", i1 false, i1 false}
!687 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 1688, i32 15}
!688 = !{ptr @.str.342, !689, !"<string literal>", i1 false, i1 false}
!689 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 1692, i32 15}
!690 = !{ptr @.str.343, !691, !"<string literal>", i1 false, i1 false}
!691 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 1696, i32 15}
!692 = !{ptr @.str.344, !693, !"<string literal>", i1 false, i1 false}
!693 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 1700, i32 15}
!694 = !{ptr @.str.345, !695, !"<string literal>", i1 false, i1 false}
!695 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 1704, i32 15}
!696 = !{ptr @.str.346, !697, !"<string literal>", i1 false, i1 false}
!697 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 1716, i32 15}
!698 = !{ptr @.str.347, !699, !"<string literal>", i1 false, i1 false}
!699 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 1728, i32 15}
!700 = !{ptr @.str.348, !701, !"<string literal>", i1 false, i1 false}
!701 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 1735, i32 15}
!702 = !{ptr @.str.349, !703, !"<string literal>", i1 false, i1 false}
!703 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 1742, i32 15}
!704 = !{ptr @.str.350, !705, !"<string literal>", i1 false, i1 false}
!705 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 1763, i32 15}
!706 = !{ptr @.str.351, !707, !"<string literal>", i1 false, i1 false}
!707 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 1770, i32 15}
!708 = !{ptr @.str.352, !709, !"<string literal>", i1 false, i1 false}
!709 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 1788, i32 15}
!710 = !{ptr @.str.353, !711, !"<string literal>", i1 false, i1 false}
!711 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 1792, i32 15}
!712 = !{ptr @.str.354, !713, !"<string literal>", i1 false, i1 false}
!713 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 1796, i32 15}
!714 = !{ptr @.str.355, !715, !"<string literal>", i1 false, i1 false}
!715 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 1800, i32 15}
!716 = !{ptr @.str.356, !717, !"<string literal>", i1 false, i1 false}
!717 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 1804, i32 15}
!718 = !{ptr @.str.357, !719, !"<string literal>", i1 false, i1 false}
!719 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 1808, i32 15}
!720 = !{ptr @.str.358, !721, !"<string literal>", i1 false, i1 false}
!721 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 1812, i32 15}
!722 = !{ptr @.str.359, !723, !"<string literal>", i1 false, i1 false}
!723 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 1816, i32 15}
!724 = !{ptr @.str.360, !725, !"<string literal>", i1 false, i1 false}
!725 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 1820, i32 15}
!726 = !{ptr @.str.361, !727, !"<string literal>", i1 false, i1 false}
!727 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 1824, i32 15}
!728 = !{ptr @.str.362, !729, !"<string literal>", i1 false, i1 false}
!729 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 1828, i32 15}
!730 = !{ptr @.str.363, !731, !"<string literal>", i1 false, i1 false}
!731 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 1832, i32 15}
!732 = !{ptr @.str.364, !733, !"<string literal>", i1 false, i1 false}
!733 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 1836, i32 15}
!734 = !{ptr @.str.365, !735, !"<string literal>", i1 false, i1 false}
!735 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 1840, i32 15}
!736 = !{ptr @.str.366, !737, !"<string literal>", i1 false, i1 false}
!737 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 1844, i32 15}
!738 = !{ptr @.str.367, !739, !"<string literal>", i1 false, i1 false}
!739 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 1848, i32 15}
!740 = !{ptr @.str.368, !741, !"<string literal>", i1 false, i1 false}
!741 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 1852, i32 15}
!742 = !{ptr @.str.369, !743, !"<string literal>", i1 false, i1 false}
!743 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 1860, i32 15}
!744 = !{ptr @.str.370, !745, !"<string literal>", i1 false, i1 false}
!745 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 1868, i32 15}
!746 = !{ptr @.str.371, !747, !"<string literal>", i1 false, i1 false}
!747 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 1876, i32 15}
!748 = !{ptr @.str.372, !749, !"<string literal>", i1 false, i1 false}
!749 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 1884, i32 15}
!750 = !{ptr @.str.373, !751, !"<string literal>", i1 false, i1 false}
!751 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 1892, i32 15}
!752 = !{ptr @.str.374, !753, !"<string literal>", i1 false, i1 false}
!753 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 1900, i32 15}
!754 = !{ptr @.str.375, !755, !"<string literal>", i1 false, i1 false}
!755 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 1908, i32 15}
!756 = !{ptr @.str.376, !757, !"<string literal>", i1 false, i1 false}
!757 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 1911, i32 15}
!758 = !{ptr @dbg_port_ptcl_c0, !759, !"dbg_port_ptcl_c0", i1 false, i1 false}
!759 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 1068, i32 45}
!760 = !{ptr @dbg_port_ptcl_c1, !761, !"dbg_port_ptcl_c1", i1 false, i1 false}
!761 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 1079, i32 45}
!762 = !{ptr @dbg_port_sch_c0, !763, !"dbg_port_sch_c0", i1 false, i1 false}
!763 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 1090, i32 45}
!764 = !{ptr @dbg_port_sch_c1, !765, !"dbg_port_sch_c1", i1 false, i1 false}
!765 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 1101, i32 45}
!766 = !{ptr @dbg_port_tmac_c0, !767, !"dbg_port_tmac_c0", i1 false, i1 false}
!767 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 1112, i32 45}
!768 = !{ptr @dbg_port_tmac_c1, !769, !"dbg_port_tmac_c1", i1 false, i1 false}
!769 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 1123, i32 45}
!770 = !{ptr @dbg_port_rmac_c0, !771, !"dbg_port_rmac_c0", i1 false, i1 false}
!771 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 1134, i32 45}
!772 = !{ptr @dbg_port_rmac_c1, !773, !"dbg_port_rmac_c1", i1 false, i1 false}
!773 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 1145, i32 45}
!774 = !{ptr @dbg_port_rmacst_c0, !775, !"dbg_port_rmacst_c0", i1 false, i1 false}
!775 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 1156, i32 45}
!776 = !{ptr @dbg_port_rmacst_c1, !777, !"dbg_port_rmacst_c1", i1 false, i1 false}
!777 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 1167, i32 45}
!778 = !{ptr @dbg_port_rmac_plcp_c0, !779, !"dbg_port_rmac_plcp_c0", i1 false, i1 false}
!779 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 1178, i32 45}
!780 = !{ptr @dbg_port_rmac_plcp_c1, !781, !"dbg_port_rmac_plcp_c1", i1 false, i1 false}
!781 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 1189, i32 45}
!782 = !{ptr @dbg_port_trxptcl_c0, !783, !"dbg_port_trxptcl_c0", i1 false, i1 false}
!783 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 1200, i32 45}
!784 = !{ptr @dbg_port_trxptcl_c1, !785, !"dbg_port_trxptcl_c1", i1 false, i1 false}
!785 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 1211, i32 45}
!786 = !{ptr @dbg_port_tx_infol_c0, !787, !"dbg_port_tx_infol_c0", i1 false, i1 false}
!787 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 1222, i32 45}
!788 = !{ptr @dbg_port_tx_infoh_c0, !789, !"dbg_port_tx_infoh_c0", i1 false, i1 false}
!789 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 1233, i32 45}
!790 = !{ptr @dbg_port_tx_infol_c1, !791, !"dbg_port_tx_infol_c1", i1 false, i1 false}
!791 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 1244, i32 45}
!792 = !{ptr @dbg_port_tx_infoh_c1, !793, !"dbg_port_tx_infoh_c1", i1 false, i1 false}
!793 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 1255, i32 45}
!794 = !{ptr @dbg_port_txtf_infol_c0, !795, !"dbg_port_txtf_infol_c0", i1 false, i1 false}
!795 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 1266, i32 45}
!796 = !{ptr @dbg_port_txtf_infoh_c0, !797, !"dbg_port_txtf_infoh_c0", i1 false, i1 false}
!797 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 1277, i32 45}
!798 = !{ptr @dbg_port_txtf_infol_c1, !799, !"dbg_port_txtf_infol_c1", i1 false, i1 false}
!799 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 1288, i32 45}
!800 = !{ptr @dbg_port_txtf_infoh_c1, !801, !"dbg_port_txtf_infoh_c1", i1 false, i1 false}
!801 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 1299, i32 45}
!802 = !{ptr @dbg_port_wde_bufmgn_freepg, !803, !"dbg_port_wde_bufmgn_freepg", i1 false, i1 false}
!803 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 1310, i32 45}
!804 = !{ptr @dbg_port_wde_bufmgn_quota, !805, !"dbg_port_wde_bufmgn_quota", i1 false, i1 false}
!805 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 1321, i32 45}
!806 = !{ptr @dbg_port_wde_bufmgn_pagellt, !807, !"dbg_port_wde_bufmgn_pagellt", i1 false, i1 false}
!807 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 1332, i32 45}
!808 = !{ptr @dbg_port_wde_bufmgn_pktinfo, !809, !"dbg_port_wde_bufmgn_pktinfo", i1 false, i1 false}
!809 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 1343, i32 45}
!810 = !{ptr @dbg_port_wde_quemgn_prepkt, !811, !"dbg_port_wde_quemgn_prepkt", i1 false, i1 false}
!811 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 1354, i32 45}
!812 = !{ptr @dbg_port_wde_quemgn_nxtpkt, !813, !"dbg_port_wde_quemgn_nxtpkt", i1 false, i1 false}
!813 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 1365, i32 45}
!814 = !{ptr @dbg_port_wde_quemgn_qlnktbl, !815, !"dbg_port_wde_quemgn_qlnktbl", i1 false, i1 false}
!815 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 1376, i32 45}
!816 = !{ptr @dbg_port_wde_quemgn_qempty, !817, !"dbg_port_wde_quemgn_qempty", i1 false, i1 false}
!817 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 1387, i32 45}
!818 = !{ptr @dbg_port_ple_bufmgn_freepg, !819, !"dbg_port_ple_bufmgn_freepg", i1 false, i1 false}
!819 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 1398, i32 45}
!820 = !{ptr @dbg_port_ple_bufmgn_quota, !821, !"dbg_port_ple_bufmgn_quota", i1 false, i1 false}
!821 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 1409, i32 45}
!822 = !{ptr @dbg_port_ple_bufmgn_pagellt, !823, !"dbg_port_ple_bufmgn_pagellt", i1 false, i1 false}
!823 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 1420, i32 45}
!824 = !{ptr @dbg_port_ple_bufmgn_pktinfo, !825, !"dbg_port_ple_bufmgn_pktinfo", i1 false, i1 false}
!825 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 1431, i32 45}
!826 = !{ptr @dbg_port_ple_quemgn_prepkt, !827, !"dbg_port_ple_quemgn_prepkt", i1 false, i1 false}
!827 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 1442, i32 45}
!828 = !{ptr @dbg_port_ple_quemgn_nxtpkt, !829, !"dbg_port_ple_quemgn_nxtpkt", i1 false, i1 false}
!829 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 1453, i32 45}
!830 = !{ptr @dbg_port_ple_quemgn_qlnktbl, !831, !"dbg_port_ple_quemgn_qlnktbl", i1 false, i1 false}
!831 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 1464, i32 45}
!832 = !{ptr @dbg_port_ple_quemgn_qempty, !833, !"dbg_port_ple_quemgn_qempty", i1 false, i1 false}
!833 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 1475, i32 45}
!834 = !{ptr @dbg_port_pktinfo, !835, !"dbg_port_pktinfo", i1 false, i1 false}
!835 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 1486, i32 45}
!836 = !{ptr @dbg_port_pcie_txdma, !837, !"dbg_port_pcie_txdma", i1 false, i1 false}
!837 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 1497, i32 45}
!838 = !{ptr @dbg_port_pcie_rxdma, !839, !"dbg_port_pcie_rxdma", i1 false, i1 false}
!839 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 1508, i32 45}
!840 = !{ptr @dbg_port_pcie_cvt, !841, !"dbg_port_pcie_cvt", i1 false, i1 false}
!841 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 1519, i32 45}
!842 = !{ptr @dbg_port_pcie_cxpl, !843, !"dbg_port_pcie_cxpl", i1 false, i1 false}
!843 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 1530, i32 45}
!844 = !{ptr @dbg_port_pcie_io, !845, !"dbg_port_pcie_io", i1 false, i1 false}
!845 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 1541, i32 45}
!846 = !{ptr @dbg_port_pcie_misc, !847, !"dbg_port_pcie_misc", i1 false, i1 false}
!847 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 1552, i32 45}
!848 = !{ptr @dbg_port_pcie_misc2, !849, !"dbg_port_pcie_misc2", i1 false, i1 false}
!849 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 1563, i32 45}
!850 = !{ptr @.str.377, !851, !"<string literal>", i1 false, i1 false}
!851 = !{!"../drivers/net/wireless/realtek/rtw89/core.h", i32 3031, i32 2}
!852 = !{ptr @.str.378, !851, !"<string literal>", i1 false, i1 false}
!853 = !{ptr @.str.379, !854, !"<string literal>", i1 false, i1 false}
!854 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 818, i32 20}
!855 = !{ptr @.str.380, !856, !"<string literal>", i1 false, i1 false}
!856 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 820, i32 3}
!857 = !{ptr @.str.381, !856, !"<string literal>", i1 false, i1 false}
!858 = !{ptr @rtw89_debug_priv_mac_dbg_port_dump_select._entry, !856, !"_entry", i1 false, i1 false}
!859 = !{ptr @rtw89_debug_priv_mac_dbg_port_dump_select._entry_ptr, !856, !"_entry_ptr", i1 false, i1 false}
!860 = !{ptr @.str.383, !861, !"<string literal>", i1 false, i1 false}
!861 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 842, i32 3}
!862 = !{ptr @rtw89_debug_priv_mac_dbg_port_dump_select._entry.382, !861, !"_entry", i1 false, i1 false}
!863 = !{ptr @rtw89_debug_priv_mac_dbg_port_dump_select._entry_ptr.384, !861, !"_entry_ptr", i1 false, i1 false}
!864 = !{ptr @.str.386, !865, !"<string literal>", i1 false, i1 false}
!865 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 846, i32 2}
!866 = !{ptr @rtw89_debug_priv_mac_dbg_port_dump_select._entry.385, !865, !"_entry", i1 false, i1 false}
!867 = !{ptr @rtw89_debug_priv_mac_dbg_port_dump_select._entry_ptr.387, !865, !"_entry_ptr", i1 false, i1 false}
!868 = !{ptr @.str.388, !865, !"<string literal>", i1 false, i1 false}
!869 = !{ptr @.str.389, !865, !"<string literal>", i1 false, i1 false}
!870 = !{ptr @rtw89_debug_priv_send_h2c, !871, !"rtw89_debug_priv_send_h2c", i1 false, i1 false}
!871 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 2410, i32 34}
!872 = !{ptr @.str.390, !873, !"<string literal>", i1 false, i1 false}
!873 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 2122, i32 3}
!874 = !{ptr @.str.391, !873, !"<string literal>", i1 false, i1 false}
!875 = !{ptr @rtw89_hex2bin_user._entry, !873, !"_entry", i1 false, i1 false}
!876 = !{ptr @rtw89_hex2bin_user._entry_ptr, !873, !"_entry_ptr", i1 false, i1 false}
!877 = !{ptr @rtw89_debug_priv_early_h2c, !878, !"rtw89_debug_priv_early_h2c", i1 false, i1 false}
!878 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 2414, i32 34}
!879 = !{ptr @.str.392, !880, !"<string literal>", i1 false, i1 false}
!880 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 2163, i32 17}
!881 = !{ptr @rtw89_debug_priv_btc_info, !882, !"rtw89_debug_priv_btc_info", i1 false, i1 false}
!882 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 2419, i32 34}
!883 = !{ptr @rtw89_debug_priv_btc_manual, !884, !"rtw89_debug_priv_btc_manual", i1 false, i1 false}
!884 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 2423, i32 34}
!885 = !{ptr @rtw89_debug_priv_fw_log_manual, !886, !"rtw89_debug_priv_fw_log_manual", i1 false, i1 false}
!886 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 2427, i32 34}
!887 = !{ptr @rtw89_debug_priv_phy_info, !888, !"rtw89_debug_priv_phy_info", i1 false, i1 false}
!888 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 2431, i32 34}
!889 = !{ptr @.str.393, !890, !"<string literal>", i1 false, i1 false}
!890 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 2348, i32 16}
!891 = !{ptr @.str.394, !892, !"<string literal>", i1 false, i1 false}
!892 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 2351, i32 16}
!893 = !{ptr @.str.395, !894, !"<string literal>", i1 false, i1 false}
!894 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 2352, i32 16}
!895 = !{ptr @.str.396, !896, !"<string literal>", i1 false, i1 false}
!896 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 2355, i32 14}
!897 = !{ptr @.str.397, !898, !"<string literal>", i1 false, i1 false}
!898 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 2358, i32 17}
!899 = !{ptr @.str.398, !900, !"<string literal>", i1 false, i1 false}
!900 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 2361, i32 15}
!901 = !{ptr @.str.399, !902, !"<string literal>", i1 false, i1 false}
!902 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 2329, i32 26}
!903 = !{ptr @.str.400, !904, !"<string literal>", i1 false, i1 false}
!904 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 2330, i32 27}
!905 = !{ptr @.str.401, !906, !"<string literal>", i1 false, i1 false}
!906 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 2331, i32 26}
!907 = !{ptr @.str.402, !908, !"<string literal>", i1 false, i1 false}
!908 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 2332, i32 26}
!909 = !{ptr @.str.403, !910, !"<string literal>", i1 false, i1 false}
!910 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 2333, i32 36}
!911 = !{ptr @.str.404, !912, !"<string literal>", i1 false, i1 false}
!912 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 2334, i32 36}
!913 = !{ptr @.str.405, !914, !"<string literal>", i1 false, i1 false}
!914 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 2335, i32 35}
!915 = !{ptr @.str.406, !916, !"<string literal>", i1 false, i1 false}
!916 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 2336, i32 35}
!917 = !{ptr @rtw89_rx_rate_cnt_infos, !918, !"rtw89_rx_rate_cnt_infos", i1 false, i1 false}
!918 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 2328, i32 3}
!919 = !{ptr @.str.407, !920, !"<string literal>", i1 false, i1 false}
!920 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 2320, i32 17}
!921 = !{ptr @.str.408, !922, !"<string literal>", i1 false, i1 false}
!922 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 2320, i32 34}
!923 = !{ptr @.str.409, !924, !"<string literal>", i1 false, i1 false}
!924 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 2320, i32 39}
!925 = !{ptr @.str.410, !926, !"<string literal>", i1 false, i1 false}
!926 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 2257, i32 35}
!927 = !{ptr @.str.411, !928, !"<string literal>", i1 false, i1 false}
!928 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 2258, i32 35}
!929 = !{ptr @.str.412, !930, !"<string literal>", i1 false, i1 false}
!930 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 2259, i32 35}
!931 = !{ptr @rtw89_sta_info_get_iter.he_gi_str, !932, !"he_gi_str", i1 false, i1 false}
!932 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 2256, i32 28}
!933 = !{ptr @.str.413, !934, !"<string literal>", i1 false, i1 false}
!934 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 2267, i32 16}
!935 = !{ptr @.str.414, !936, !"<string literal>", i1 false, i1 false}
!936 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 2270, i32 17}
!937 = !{ptr @.str.415, !938, !"<string literal>", i1 false, i1 false}
!938 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 2271, i32 48}
!939 = !{ptr @.str.416, !940, !"<string literal>", i1 false, i1 false}
!940 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 2273, i32 17}
!941 = !{ptr @.str.417, !942, !"<string literal>", i1 false, i1 false}
!942 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 2276, i32 17}
!943 = !{ptr @.str.418, !944, !"<string literal>", i1 false, i1 false}
!944 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 2278, i32 32}
!945 = !{ptr @.str.419, !946, !"<string literal>", i1 false, i1 false}
!946 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 2280, i32 17}
!947 = !{ptr @.str.420, !948, !"<string literal>", i1 false, i1 false}
!948 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 2281, i32 16}
!949 = !{ptr @.str.421, !950, !"<string literal>", i1 false, i1 false}
!950 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 2282, i32 16}
!951 = !{ptr @.str.422, !952, !"<string literal>", i1 false, i1 false}
!952 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 2285, i32 16}
!953 = !{ptr @.str.423, !954, !"<string literal>", i1 false, i1 false}
!954 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 2306, i32 16}
!955 = !{ptr @.str.424, !956, !"<string literal>", i1 false, i1 false}
!956 = !{!"../drivers/net/wireless/realtek/rtw89/debug.c", i32 2309, i32 16}
!957 = !{!"sp"}
!958 = !{i32 1, !"wchar_size", i32 2}
!959 = !{i32 1, !"min_enum_size", i32 4}
!960 = !{i32 8, !"branch-target-enforcement", i32 0}
!961 = !{i32 8, !"sign-return-address", i32 0}
!962 = !{i32 8, !"sign-return-address-all", i32 0}
!963 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!964 = !{i32 7, !"uwtable", i32 1}
!965 = !{i32 7, !"frame-pointer", i32 2}
!966 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!967 = !{i64 2148381341, i64 2148381346, i64 2148381359, i64 2148381403, i64 2148381437, i64 2148381458}
!968 = !{!"auto-init"}
!969 = !{i64 2152889870, i64 2152889895}
!970 = !{!"branch_weights", i32 2000, i32 1}
!971 = !{i64 5385425}
!972 = !{i64 5385622}
!973 = !{i64 2152870855}
!974 = !{i32 0, i32 33}
!975 = !{i8 0, i8 2}
