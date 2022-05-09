; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/realtek/rtw89/mac80211.c_pt.bc'
source_filename = "../drivers/net/wireless/realtek/rtw89/mac80211.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+rtw89_ops\22, \22a\22\09"
module asm "\09.weak\09__crc_rtw89_ops\09\09\09\09"
module asm "\09.long\09__crc_rtw89_ops\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rtw89_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22rtw89_ops\22\09\09\09\09\09"
module asm "__kstrtabns_rtw89_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.ieee80211_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ieee80211_hw = type { %struct.ieee80211_conf, ptr, ptr, ptr, [2 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i8, i16, %struct.anon.128, i64, i8, i8, i8, ptr, i8, i8, i8, i32 }
%struct.ieee80211_conf = type { i32, i32, i32, i16, i8, i8, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.anon.128 = type { i32, i16 }
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
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.rtw89_fw_suit = type { ptr, i32, i8, i8, i8, i8, i16, i16, i16, i16, i16, i8 }
%struct.rtw89_hci_info = type { ptr, i32, i32, i32 }
%struct.rtw89_efuse = type { i8, i8, [6 x i8], i8, [2 x i8] }
%struct.rtw89_traffic_stats = type { i64, i64, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, %struct.ewma_tp, %struct.ewma_tp, i16, i16 }
%struct.ewma_tp = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.rtw89_cam_info = type { [4 x i32], [1 x i32], [4 x i32] }
%struct.sk_buff_head = type { %union.anon.61, i32, %struct.spinlock }
%union.anon.61 = type { %struct.anon.62 }
%struct.anon.62 = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.list_head = type { ptr, ptr }
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
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.rtw89_ppdu_sts_info = type { [2 x %struct.sk_buff_head], [2 x i8] }
%struct.rtw89_sar_info = type { i32, %union.anon.140 }
%union.anon.140 = type { %struct.rtw89_sar_cfg_common }
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
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.105, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.124, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.105 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.124 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.ieee80211_vif = type { i32, %struct.ieee80211_bss_conf, [6 x i8], i8, i8, i8, i8, [4 x i8], ptr, ptr, i32, i32, ptr, i8, i8, [4 x i8], i8, i8, ptr, [0 x i8] }
%struct.ieee80211_bss_conf = type { ptr, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i8, i8, i8, i16, i16, i64, i32, i8, i32, ptr, [6 x i32], i16, i32, i32, i32, i32, %struct.cfg80211_chan_def, %struct.ieee80211_mu_group_data, [4 x i32], i32, i8, i8, i8, [32 x i8], i32, i8, i32, i32, %struct.ieee80211_p2p_noa_attr, i8, i16, i8, i8, ptr, i8, [6 x i8], i8, i8, i8, i8, %struct.anon.130, %struct.ieee80211_he_obss_pd, %struct.cfg80211_he_bss_color, %struct.ieee80211_fils_discovery, i32, i8, %struct.cfg80211_bitrate_mask, i32, [8 x %struct.ieee80211_tx_pwr_env], i8, i8 }
%struct.ieee80211_mu_group_data = type { [8 x i8], [16 x i8] }
%struct.ieee80211_p2p_noa_attr = type { i8, i8, [4 x %struct.ieee80211_p2p_noa_desc] }
%struct.ieee80211_p2p_noa_desc = type <{ i8, i32, i32, i32 }>
%struct.anon.130 = type { i32, i16 }
%struct.ieee80211_he_obss_pd = type { i8, i8, i8, i8, i8, [8 x i8], [8 x i8] }
%struct.cfg80211_he_bss_color = type { i8, i8, i8 }
%struct.ieee80211_fils_discovery = type { i32, i32 }
%struct.cfg80211_bitrate_mask = type { [6 x %struct.anon.131] }
%struct.anon.131 = type { i32, [10 x i8], [8 x i16], [8 x i16], i32, i32, i32 }
%struct.ieee80211_tx_pwr_env = type { i8, [8 x i8] }
%struct.rtw89_vif = type { %struct.list_head, i8, i8, [6 x i8], [6 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.rtw89_addr_cam_entry, %struct.rtw89_bssid_cam_entry, [4 x %struct.ieee80211_tx_queue_params], %struct.rtw89_traffic_stats, %struct.rtw89_phy_rate_pattern }
%struct.rtw89_addr_cam_entry = type <{ i8, i8, i8, i16, [6 x i8], i8, [1 x i32], [7 x i8], [7 x i8], [2 x i8], [7 x ptr] }>
%struct.rtw89_bssid_cam_entry = type { [6 x i8], i8, i8, i8, i8, i8, i8 }
%struct.ieee80211_tx_queue_params = type { i16, i16, i16, i8, i8, i8, i8, %struct.ieee80211_he_mu_edca_param_ac_rec }
%struct.ieee80211_he_mu_edca_param_ac_rec = type { i8, i8, i8 }
%struct.rtw89_phy_rate_pattern = type { i64, i16, i8, i8 }
%struct.ieee80211_txq = type { ptr, ptr, i8, i8, [2 x i8], [0 x i8] }
%struct.rtw89_chip_info = type { i32, ptr, ptr, i32, i16, i8, ptr, ptr, [2 x i32], i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, ptr, ptr, ptr, [4 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i32, i32, i8, i8, i8, i8, ptr, ptr, i8, i8, ptr, i8, ptr, i8, ptr, i8 }
%struct.rtw89_chip_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rtw89_hci_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.station_info = type { i64, i32, i32, i64, i64, i64, i16, i16, i8, i8, i8, i8, [4 x i8], [4 x i8], %struct.rate_info, %struct.rate_info, i32, i32, i32, i32, i32, %struct.sta_bss_parameters, %struct.nl80211_sta_flag_update, i32, ptr, i32, i32, i64, i32, i32, i32, i32, i64, i64, i64, i8, i8, ptr, i8, i8, i16, i32, i32, i32, i8 }
%struct.rate_info = type { i8, i8, i16, i8, i8, i8, i8, i8, i8 }
%struct.sta_bss_parameters = type { i8, i8, i16 }
%struct.nl80211_sta_flag_update = type { i32, i32 }
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
%struct.ieee80211_ampdu_params = type { i32, ptr, i16, i16, i16, i8, i16 }
%struct.rtw89_ampdu_params = type { i16, i8 }
%struct.wiphy = type { %struct.mutex, [6 x i8], [6 x i8], ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i32, i32, [8 x i8], i32, i32, i32, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i8, i8, i32, i32, i8, [32 x i8], i32, ptr, ptr, i16, i8, i32, i32, i32, ptr, ptr, i8, ptr, i32, ptr, [6 x ptr], ptr, ptr, %struct.device, i8, ptr, ptr, ptr, %struct.list_head, %struct.possible_net_t, ptr, ptr, ptr, ptr, i32, i32, i16, i8, i32, i8, i32, i32, i32, i32, i8, ptr, %struct.anon.127, i8, ptr, ptr, i8, i8, [18 x i8], [0 x i8] }
%struct.anon.127 = type { i64, i64, i8 }
%struct.rtw89_iter_bitrate_mask_data = type { ptr, ptr, ptr }

@rtw89_ops = dso_local constant { %struct.ieee80211_ops, [124 x i8] } { %struct.ieee80211_ops { ptr @rtw89_ops_tx, ptr @rtw89_ops_start, ptr @rtw89_ops_stop, ptr null, ptr null, ptr null, ptr @rtw89_ops_add_interface, ptr null, ptr @rtw89_ops_remove_interface, ptr @rtw89_ops_config, ptr @rtw89_ops_bss_info_changed, ptr null, ptr null, ptr null, ptr @rtw89_ops_configure_filter, ptr null, ptr null, ptr @rtw89_ops_set_key, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rtw89_ops_sw_scan_start, ptr @rtw89_ops_sw_scan_complete, ptr null, ptr null, ptr null, ptr @rtw89_ops_set_rts_threshold, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rtw89_ops_sta_state, ptr null, ptr null, ptr null, ptr @rtw89_ops_sta_statistics, ptr @rtw89_ops_conf_tx, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rtw89_ops_ampdu_action, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rtw89_ops_flush, ptr null, ptr @rtw89_ops_set_antenna, ptr @rtw89_ops_get_antenna, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rtw89_ops_set_bitrate_mask, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rtw89_ops_reconfig_complete, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rtw89_ops_wake_tx_queue, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rtw89_ops_set_sar_specs, ptr null, ptr null, ptr null, ptr null, ptr null }, [124 x i8] zeroinitializer }, align 32
@__kstrtab_rtw89_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_rtw89_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_rtw89_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rtw89_ops to i32), ptr @__kstrtab_rtw89_ops, ptr @__kstrtabns_rtw89_ops }, section "___ksymtab+rtw89_ops", align 4
@rtw89_ops_tx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 28, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to transmit skb: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rtw89_ops_tx\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"drivers/net/wireless/realtek/rtw89/mac80211.c\00", [50 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rtw89_ops_tx._entry_ptr = internal global ptr @rtw89_ops_tx._entry, section ".printk_index", align 4
@rtw89_station_mode_sta_assoc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 311, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"can't find sta to set sta_assoc state\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"rtw89_station_mode_sta_assoc\00", [35 x i8] zeroinitializer }, align 32
@rtw89_station_mode_sta_assoc._entry_ptr = internal global ptr @rtw89_station_mode_sta_assoc._entry, section ".printk_index", align 4
@ac_to_fw_idx = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\03\02\00\01", [28 x i8] zeroinitializer }, align 32
@ac_to_mu_edca_param = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 50012, i32 50008, i32 50000, i32 50004], [16 x i8] zeroinitializer }, align 32
@rtw89_ops_set_key._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.2, i32 438, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to add key to sec cam\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rtw89_ops_set_key\00", [46 x i8] zeroinitializer }, align 32
@rtw89_ops_set_key._entry_ptr = internal global ptr @rtw89_ops_set_key._entry, section ".printk_index", align 4
@rtw89_ops_set_key._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.10, ptr @.str.2, i32 448, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"failed to remove key from sec cam\0A\00", [61 x i8] zeroinitializer }, align 32
@rtw89_ops_set_key._entry_ptr.13 = internal global ptr @rtw89_ops_set_key._entry.11, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.14 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967201]
@__sancov_gen_cov_switch_values.15 = internal global [9 x i64] [i64 7, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6]
@___asan_gen_.16 = private unnamed_addr constant [10 x i8] c"rtw89_ops\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 656, i32 28 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 28, i32 3 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 311, i32 3 }
@___asan_gen_.46 = private unnamed_addr constant [13 x i8] c"ac_to_fw_idx\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 211, i32 17 }
@___asan_gen_.49 = private unnamed_addr constant [20 x i8] c"ac_to_mu_edca_param\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 250, i32 18 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 438, i32 4 }
@___asan_gen_.61 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.64 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.65 = private constant [49 x i8] c"../drivers/net/wireless/realtek/rtw89/mac80211.c\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 448, i32 4 }
@llvm.compiler.used = appending global [22 x ptr] [ptr @__ksymtab_rtw89_ops, ptr @rtw89_ops_set_key._entry, ptr @rtw89_ops_set_key._entry.11, ptr @rtw89_ops_set_key._entry_ptr, ptr @rtw89_ops_set_key._entry_ptr.13, ptr @rtw89_ops_tx._entry, ptr @rtw89_ops_tx._entry_ptr, ptr @rtw89_station_mode_sta_assoc._entry, ptr @rtw89_station_mode_sta_assoc._entry_ptr, ptr @rtw89_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @ac_to_fw_idx, ptr @ac_to_mu_edca_param, ptr @.str.9, ptr @.str.10, ptr @.str.12], section "llvm.metadata"
@0 = internal global [17 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_ops to i32), i32 452, i32 576, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_ops_tx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_station_mode_sta_assoc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ac_to_fw_idx to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ac_to_mu_edca_param to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_ops_set_key._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_ops_set_key._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtw89_ops_tx(ptr noundef %hw, ptr nocapture noundef readonly %control, ptr noundef %skb) #0 align 64 {
entry:
  %qsel = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %vif1 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 24
  %2 = ptrtoint ptr %vif1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vif1, align 8
  %4 = ptrtoint ptr %control to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %control, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %qsel) #7
  %6 = ptrtoint ptr %qsel to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %qsel, align 4, !annotation !42
  %call3 = call i32 @rtw89_core_tx_write(ptr noundef %1, ptr noundef %3, ptr noundef %5, ptr noundef %skb, ptr noundef nonnull %qsel) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.rtw89_dev, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str, i32 noundef %call3) #10
  call void @ieee80211_free_txskb(ptr noundef %hw, ptr noundef %skb) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %qsel to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %qsel, align 4
  %conv = trunc i32 %10 to i8
  call void @rtw89_core_tx_kick_off(ptr noundef %1, i8 noundef zeroext %conv) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %qsel) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtw89_ops_start(ptr nocapture noundef readonly %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %mutex = getelementptr inbounds %struct.rtw89_dev, ptr %1, i32 0, i32 10
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #7
  %call = tail call i32 @rtw89_core_start(ptr noundef %1) #7
  tail call void @mutex_unlock(ptr noundef %mutex) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtw89_ops_stop(ptr nocapture noundef readonly %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %mutex = getelementptr inbounds %struct.rtw89_dev, ptr %1, i32 0, i32 10
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #7
  tail call void @rtw89_core_stop(ptr noundef %1) #7
  tail call void @mutex_unlock(ptr noundef %mutex) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtw89_ops_add_interface(ptr nocapture noundef readonly %hw, ptr noundef %vif) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %drv_priv = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 19
  %mutex = getelementptr inbounds %struct.rtw89_dev, ptr %1, i32 0, i32 10
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #7
  %rtwvifs_list = getelementptr inbounds %struct.rtw89_dev, ptr %1, i32 0, i32 11
  %prev.i = getelementptr inbounds %struct.rtw89_dev, ptr %1, i32 0, i32 11, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %drv_priv, ptr noundef %3, ptr noundef %rtwvifs_list) #7
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_add_tail.exit_crit_edge

entry.list_add_tail.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %drv_priv, ptr %prev.i, align 4
  %5 = ptrtoint ptr %drv_priv to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %rtwvifs_list, ptr %drv_priv, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %drv_priv, i32 0, i32 1
  %6 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev3.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %drv_priv, ptr %3, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %entry.list_add_tail.exit_crit_edge
  tail call void @rtw89_leave_ps_mode(ptr noundef %1) #7
  %stats = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 34, i32 2
  tail call void @rtw89_traffic_stats_init(ptr noundef %1, ptr noundef %stats) #7
  tail call void @rtw89_vif_type_mapping(ptr noundef %vif, i1 noundef zeroext false) #7
  %hw_port = getelementptr inbounds %struct.rtw89_dev, ptr %1, i32 0, i32 24
  %call = tail call zeroext i8 @rtw89_core_acquire_bit_map(ptr noundef %hw_port, i32 noundef 5) #7
  %port = getelementptr inbounds %struct.rtw89_vif, ptr %drv_priv, i32 0, i32 2
  %8 = ptrtoint ptr %port to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %call, ptr %port, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %call)
  %cmp = icmp eq i8 %call, 5
  br i1 %cmp, label %list_add_tail.exit.out_crit_edge, label %if.end

list_add_tail.exit.out_crit_edge:                 ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end:                                           ; preds = %list_add_tail.exit
  %bcn_hit_cond = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 14
  %9 = ptrtoint ptr %bcn_hit_cond to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %bcn_hit_cond, align 4
  %mac_idx = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 10
  %10 = ptrtoint ptr %mac_idx to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %mac_idx, align 1
  %phy_idx = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 9
  %11 = ptrtoint ptr %phy_idx to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %phy_idx, align 2
  %hit_rule = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 15
  %12 = ptrtoint ptr %hit_rule to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %hit_rule, align 1
  %mac_addr = getelementptr inbounds %struct.rtw89_vif, ptr %drv_priv, i32 0, i32 3
  %addr = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 2
  %13 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %addr, align 4
  %15 = ptrtoint ptr %mac_addr to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %mac_addr, align 4
  %add.ptr.i = getelementptr %struct.ieee80211_vif, ptr %vif, i32 0, i32 2, i32 4
  %16 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %add.ptr.i, align 2
  %add.ptr1.i = getelementptr %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 3
  %18 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %17, ptr %add.ptr1.i, align 2
  %call6 = tail call i32 @rtw89_mac_add_vif(ptr noundef %1, ptr noundef %drv_priv) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %if.end11, label %if.then7

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %port to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %port, align 1
  tail call void @rtw89_core_release_bit_map(ptr noundef %hw_port, i8 noundef zeroext %20) #7
  br label %out

if.end11:                                         ; preds = %if.end
  %txq = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 8
  %21 = ptrtoint ptr %txq to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %txq, align 8
  %tobool.not.i = icmp eq ptr %22, null
  br i1 %tobool.not.i, label %if.end11.rtw89_core_txq_init.exit_crit_edge, label %if.end.i

if.end11.rtw89_core_txq_init.exit_crit_edge:      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtw89_core_txq_init.exit

if.end.i:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  %drv_priv.i = getelementptr inbounds %struct.ieee80211_txq, ptr %22, i32 0, i32 5
  %23 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %drv_priv.i, ptr %drv_priv.i, align 4
  %prev.i.i = getelementptr inbounds %struct.ieee80211_txq, ptr %22, i32 1, i32 1
  %24 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %drv_priv.i, ptr %prev.i.i, align 4
  br label %rtw89_core_txq_init.exit

rtw89_core_txq_init.exit:                         ; preds = %if.end.i, %if.end11.rtw89_core_txq_init.exit_crit_edge
  tail call void @rtw89_btc_ntfy_role_info(ptr noundef %1, ptr noundef %drv_priv, ptr noundef null, i32 noundef 0) #7
  br label %out

out:                                              ; preds = %rtw89_core_txq_init.exit, %if.then7, %list_add_tail.exit.out_crit_edge
  %ret.0 = phi i32 [ %call6, %if.then7 ], [ 0, %rtw89_core_txq_init.exit ], [ -28, %list_add_tail.exit.out_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex) #7
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtw89_ops_remove_interface(ptr nocapture noundef readonly %hw, ptr noundef %vif) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %drv_priv = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 19
  %mutex = getelementptr inbounds %struct.rtw89_dev, ptr %1, i32 0, i32 10
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #7
  tail call void @rtw89_leave_ps_mode(ptr noundef %1) #7
  tail call void @rtw89_btc_ntfy_role_info(ptr noundef %1, ptr noundef %drv_priv, ptr noundef null, i32 noundef 1) #7
  %call = tail call i32 @rtw89_mac_remove_vif(ptr noundef %1, ptr noundef %drv_priv) #7
  %hw_port = getelementptr inbounds %struct.rtw89_dev, ptr %1, i32 0, i32 24
  %port = getelementptr inbounds %struct.rtw89_vif, ptr %drv_priv, i32 0, i32 2
  %2 = ptrtoint ptr %port to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %port, align 1
  tail call void @rtw89_core_release_bit_map(ptr noundef %hw_port, i8 noundef zeroext %3) #7
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %drv_priv) #7
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del_init.exit_crit_edge

entry.list_del_init.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %drv_priv, i32 0, i32 1
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i, align 4
  %6 = ptrtoint ptr %drv_priv to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %drv_priv, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev1.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %5, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %entry.list_del_init.exit_crit_edge
  %10 = ptrtoint ptr %drv_priv to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %drv_priv, ptr %drv_priv, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %drv_priv, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %drv_priv, ptr %prev.i3.i, align 4
  tail call void @mutex_unlock(ptr noundef %mutex) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtw89_ops_config(ptr nocapture noundef readonly %hw, i32 noundef %changed) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %mutex = getelementptr inbounds %struct.rtw89_dev, ptr %1, i32 0, i32 10
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #7
  tail call void @rtw89_leave_ps_mode(ptr noundef %1) #7
  %and = and i32 %changed, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hw, align 8
  %and1 = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  br i1 %tobool2.not, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @rtw89_leave_ips(ptr noundef %1) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %and3 = and i32 %changed, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %if.end.if.end13_crit_edge, label %if.then5

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

if.then5:                                         ; preds = %if.end
  %4 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %hw, align 8
  %and8 = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %if.else, label %if.then5.if.end13.sink.split_crit_edge

if.then5.if.end13.sink.split_crit_edge:           ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13.sink.split

if.else:                                          ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @rtw89_leave_lps(ptr noundef %1) #7
  br label %if.end13.sink.split

if.end13.sink.split:                              ; preds = %if.else, %if.then5.if.end13.sink.split_crit_edge
  %.sink = phi i8 [ 0, %if.else ], [ 1, %if.then5.if.end13.sink.split_crit_edge ]
  %lps_enabled = getelementptr inbounds %struct.rtw89_dev, ptr %1, i32 0, i32 53
  %6 = ptrtoint ptr %lps_enabled to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %.sink, ptr %lps_enabled, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.end13.sink.split, %if.end.if.end13_crit_edge
  %and14 = and i32 %changed, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %if.end13.if.end17_crit_edge, label %if.then16

if.end13.if.end17_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17

if.then16:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @rtw89_set_channel(ptr noundef %1) #7
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %if.end13.if.end17_crit_edge
  br i1 %tobool.not, label %if.end17.if.end26_crit_edge, label %land.lhs.true20

if.end17.if.end26_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26

land.lhs.true20:                                  ; preds = %if.end17
  %7 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %hw, align 8
  %and23 = and i32 %8, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  br i1 %tobool24.not, label %land.lhs.true20.if.end26_crit_edge, label %if.then25

land.lhs.true20.if.end26_crit_edge:               ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26

if.then25:                                        ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @rtw89_enter_ips(ptr noundef %1) #7
  br label %if.end26

if.end26:                                         ; preds = %if.then25, %land.lhs.true20.if.end26_crit_edge, %if.end17.if.end26_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtw89_ops_bss_info_changed(ptr nocapture noundef readonly %hw, ptr noundef %vif, ptr noundef %conf, i32 noundef %changed) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %drv_priv = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 19
  %mutex = getelementptr inbounds %struct.rtw89_dev, ptr %1, i32 0, i32 10
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #7
  tail call void @rtw89_leave_ps_mode(ptr noundef %1) #7
  %and = and i32 %changed, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end3_crit_edge, label %if.then

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3

if.then:                                          ; preds = %entry
  %assoc = getelementptr inbounds %struct.ieee80211_bss_conf, ptr %conf, i32 0, i32 10
  %2 = ptrtoint ptr %assoc to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %assoc, align 1, !range !43
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool1.not = icmp eq i8 %3, 0
  br i1 %tobool1.not, label %if.then.if.end3_crit_edge, label %if.then2

if.then.if.end3_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3

if.then2:                                         ; preds = %if.then
  %4 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vif, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp.not.i = icmp eq i32 %5, 2
  br i1 %cmp.not.i, label %if.end.i, label %if.then2.rtw89_station_mode_sta_assoc.exit_crit_edge

if.then2.rtw89_station_mode_sta_assoc.exit_crit_edge: ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtw89_station_mode_sta_assoc.exit

if.end.i:                                         ; preds = %if.then2
  %6 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %conf, align 8
  %call.i = tail call ptr @ieee80211_find_sta(ptr noundef %vif, ptr noundef %7) #7
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %do.end.i, label %if.end2.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.rtw89_dev, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.5) #10
  br label %rtw89_station_mode_sta_assoc.exit

if.end2.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %call3.i = tail call i32 @rtw89_core_sta_assoc(ptr noundef %1, ptr noundef %vif, ptr noundef nonnull %call.i) #7
  br label %rtw89_station_mode_sta_assoc.exit

rtw89_station_mode_sta_assoc.exit:                ; preds = %if.end2.i, %do.end.i, %if.then2.rtw89_station_mode_sta_assoc.exit_crit_edge
  tail call void @rtw89_phy_set_bss_color(ptr noundef %1, ptr noundef %vif) #7
  %chip1.i = getelementptr inbounds %struct.rtw89_dev, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %chip1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %chip1.i, align 4
  %he_support.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 1, i32 5
  %12 = ptrtoint ptr %he_support.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %he_support.i, align 2, !range !43
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not.i51 = icmp eq i8 %13, 0
  br i1 %tobool.not.i51, label %rtw89_station_mode_sta_assoc.exit.rtw89_chip_cfg_txpwr_ul_tb_offset.exit_crit_edge, label %lor.lhs.false.i

rtw89_station_mode_sta_assoc.exit.rtw89_chip_cfg_txpwr_ul_tb_offset.exit_crit_edge: ; preds = %rtw89_station_mode_sta_assoc.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtw89_chip_cfg_txpwr_ul_tb_offset.exit

lor.lhs.false.i:                                  ; preds = %rtw89_station_mode_sta_assoc.exit
  %assoc.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 1, i32 10
  %14 = ptrtoint ptr %assoc.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %assoc.i, align 1, !range !43
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool3.not.i = icmp eq i8 %15, 0
  br i1 %tobool3.not.i, label %lor.lhs.false.i.rtw89_chip_cfg_txpwr_ul_tb_offset.exit_crit_edge, label %if.end.i52

lor.lhs.false.i.rtw89_chip_cfg_txpwr_ul_tb_offset.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtw89_chip_cfg_txpwr_ul_tb_offset.exit

if.end.i52:                                       ; preds = %lor.lhs.false.i
  %ops.i = getelementptr inbounds %struct.rtw89_chip_info, ptr %11, i32 0, i32 1
  %16 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ops.i, align 4
  %set_txpwr_ul_tb_offset.i = getelementptr inbounds %struct.rtw89_chip_ops, ptr %17, i32 0, i32 22
  %18 = ptrtoint ptr %set_txpwr_ul_tb_offset.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %set_txpwr_ul_tb_offset.i, align 4
  %tobool4.not.i = icmp eq ptr %19, null
  br i1 %tobool4.not.i, label %if.end.i52.rtw89_chip_cfg_txpwr_ul_tb_offset.exit_crit_edge, label %if.then5.i

if.end.i52.rtw89_chip_cfg_txpwr_ul_tb_offset.exit_crit_edge: ; preds = %if.end.i52
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtw89_chip_cfg_txpwr_ul_tb_offset.exit

if.then5.i:                                       ; preds = %if.end.i52
  call void @__sanitizer_cov_trace_pc() #9
  %mac_idx.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 10
  %20 = ptrtoint ptr %mac_idx.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %mac_idx.i, align 1
  %conv.i = zext i8 %21 to i32
  tail call void %19(ptr noundef %1, i16 noundef signext 0, i32 noundef %conv.i) #7
  br label %rtw89_chip_cfg_txpwr_ul_tb_offset.exit

rtw89_chip_cfg_txpwr_ul_tb_offset.exit:           ; preds = %if.then5.i, %if.end.i52.rtw89_chip_cfg_txpwr_ul_tb_offset.exit_crit_edge, %lor.lhs.false.i.rtw89_chip_cfg_txpwr_ul_tb_offset.exit_crit_edge, %rtw89_station_mode_sta_assoc.exit.rtw89_chip_cfg_txpwr_ul_tb_offset.exit_crit_edge
  %call = tail call i32 @rtw89_mac_port_update(ptr noundef %1, ptr noundef %drv_priv) #7
  br label %if.end3

if.end3:                                          ; preds = %rtw89_chip_cfg_txpwr_ul_tb_offset.exit, %if.then.if.end3_crit_edge, %entry.if.end3_crit_edge
  %and4 = and i32 %changed, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.end3.if.end10_crit_edge, label %if.then6

if.end3.if.end10_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

if.then6:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  %bssid = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 4
  %22 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %conf, align 8
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %23, align 4
  %26 = ptrtoint ptr %bssid to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %bssid, align 4
  %add.ptr.i = getelementptr i8, ptr %23, i32 4
  %27 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %add.ptr.i, align 2
  %add.ptr1.i = getelementptr %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 7
  %29 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %28, ptr %add.ptr1.i, align 2
  tail call void @rtw89_cam_bssid_changed(ptr noundef %1, ptr noundef %drv_priv) #7
  %call9 = tail call i32 @rtw89_fw_h2c_cam(ptr noundef %1, ptr noundef %drv_priv, ptr noundef null, ptr noundef null) #7
  br label %if.end10

if.end10:                                         ; preds = %if.then6, %if.end3.if.end10_crit_edge
  %and11 = and i32 %changed, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %if.end10.if.end14_crit_edge, label %if.then13

if.end10.if.end14_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

if.then13:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @__rtw89_conf_tx(ptr noundef %1, ptr noundef %drv_priv, i16 noundef zeroext 0) #7
  tail call fastcc void @__rtw89_conf_tx(ptr noundef %1, ptr noundef %drv_priv, i16 noundef zeroext 1) #7
  tail call fastcc void @__rtw89_conf_tx(ptr noundef %1, ptr noundef %drv_priv, i16 noundef zeroext 2) #7
  tail call fastcc void @__rtw89_conf_tx(ptr noundef %1, ptr noundef %drv_priv, i16 noundef zeroext 3) #7
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %if.end10.if.end14_crit_edge
  %and15 = and i32 %changed, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %if.end14.if.end18_crit_edge, label %if.then17

if.end14.if.end18_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18

if.then17:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @rtw89_phy_set_bss_color(ptr noundef %1, ptr noundef %vif) #7
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %if.end14.if.end18_crit_edge
  %and19 = and i32 %changed, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %if.end18.if.end22_crit_edge, label %if.then21

if.end18.if.end22_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22

if.then21:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @rtw89_mac_bf_set_gid_table(ptr noundef %1, ptr noundef %vif, ptr noundef %conf) #7
  br label %if.end22

if.end22:                                         ; preds = %if.then21, %if.end18.if.end22_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtw89_ops_configure_filter(ptr nocapture noundef readonly %hw, i32 noundef %changed_flags, ptr nocapture noundef %new_flags, i64 noundef %multicast) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %mutex = getelementptr inbounds %struct.rtw89_dev, ptr %1, i32 0, i32 10
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #7
  tail call void @rtw89_leave_ps_mode(ptr noundef %1) #7
  %2 = ptrtoint ptr %new_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %new_flags, align 4
  %and = and i32 %3, 86
  store i32 %and, ptr %new_flags, align 4
  %and1 = and i32 %changed_flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool.not = icmp eq i32 %and1, 0
  br i1 %tobool.not, label %entry.if.end8_crit_edge, label %if.then

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %hal6 = getelementptr inbounds %struct.rtw89_dev, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %hal6 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %hal6, align 16
  %and5 = and i32 %5, -9
  %and2 = shl i32 %3, 2
  %6 = and i32 %and2, 8
  %7 = or i32 %6, %and5
  %and5.sink = xor i32 %7, 8
  store i32 %and5.sink, ptr %hal6, align 16
  br label %if.end8

if.end8:                                          ; preds = %if.then, %entry.if.end8_crit_edge
  %and9 = and i32 %changed_flags, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.end8.if.end23_crit_edge, label %if.then11

if.end8.if.end23_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23

if.then11:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %new_flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %new_flags, align 4
  %hal19 = getelementptr inbounds %struct.rtw89_dev, ptr %1, i32 0, i32 4
  %10 = ptrtoint ptr %hal19 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %hal19, align 16
  %and21 = and i32 %11, -2049
  %and12 = shl i32 %9, 9
  %12 = and i32 %and12, 2048
  %or17.sink = or i32 %and21, %12
  store i32 %or17.sink, ptr %hal19, align 16
  br label %if.end23

if.end23:                                         ; preds = %if.then11, %if.end8.if.end23_crit_edge
  %and24 = and i32 %changed_flags, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %if.end23.if.end38_crit_edge, label %if.then26

if.end23.if.end38_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end38

if.then26:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %new_flags to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %new_flags, align 4
  %hal34 = getelementptr inbounds %struct.rtw89_dev, ptr %1, i32 0, i32 4
  %15 = ptrtoint ptr %hal34 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %hal34, align 16
  %and32 = and i32 %16, -3
  %and27 = lshr i32 %14, 5
  %17 = and i32 %and27, 2
  %18 = or i32 %17, %and32
  %and32.sink = xor i32 %18, 2
  store i32 %and32.sink, ptr %hal34, align 16
  br label %if.end38

if.end38:                                         ; preds = %if.then26, %if.end23.if.end38_crit_edge
  %and39 = and i32 %changed_flags, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39)
  %tobool40.not = icmp eq i32 %and39, 0
  br i1 %tobool40.not, label %if.end38.if.end65_crit_edge, label %if.then41

if.end38.if.end65_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end65

if.then41:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %new_flags to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %new_flags, align 4
  %and42 = and i32 %20, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42)
  %tobool43.not = icmp eq i32 %and42, 0
  %hal55 = getelementptr inbounds %struct.rtw89_dev, ptr %1, i32 0, i32 4
  %21 = ptrtoint ptr %hal55 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %hal55, align 16
  %and53 = and i32 %22, -135
  %masksel = select i1 %tobool43.not, i32 134, i32 0
  %and53.sink = or i32 %and53, %masksel
  store i32 %and53.sink, ptr %hal55, align 16
  br label %if.end65

if.end65:                                         ; preds = %if.then41, %if.end38.if.end65_crit_edge
  %hal66 = getelementptr inbounds %struct.rtw89_dev, ptr %1, i32 0, i32 4
  %23 = ptrtoint ptr %hal66 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %hal66, align 16
  %hci.i.i = getelementptr inbounds %struct.rtw89_dev, ptr %1, i32 0, i32 7
  %25 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %hci.i.i, align 8
  %read32.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %26, i32 0, i32 9
  %27 = ptrtoint ptr %read32.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %read32.i.i, align 4
  %call.i.i = tail call i32 %28(ptr noundef %1, i32 noundef 52768) #7
  %and21.i = and i32 %call.i.i, 4128768
  %and22.i = and i32 %24, -4128769
  %or.i = or i32 %and21.i, %and22.i
  %29 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %hci.i.i, align 8
  %write32.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %30, i32 0, i32 12
  %31 = ptrtoint ptr %write32.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %write32.i.i, align 4
  tail call void %32(ptr noundef %1, i32 noundef 52768, i32 noundef %or.i) #7
  %dbcc_en = getelementptr inbounds %struct.rtw89_dev, ptr %1, i32 0, i32 2
  %33 = ptrtoint ptr %dbcc_en to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %dbcc_en, align 8, !range !43
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool68.not = icmp eq i8 %34, 0
  br i1 %tobool68.not, label %if.end65.out_crit_edge, label %if.end70

if.end65.out_crit_edge:                           ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end70:                                         ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #9
  %35 = ptrtoint ptr %hal66 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %hal66, align 16
  %37 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %hci.i.i, align 8
  %read32.i.i102 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %38, i32 0, i32 9
  %39 = ptrtoint ptr %read32.i.i102 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %read32.i.i102, align 4
  %call.i.i103 = tail call i32 %40(ptr noundef %1, i32 noundef 60960) #7
  %and21.i104 = and i32 %call.i.i103, 4128768
  %and22.i105 = and i32 %36, -4128769
  %or.i106 = or i32 %and21.i104, %and22.i105
  %41 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %hci.i.i, align 8
  %write32.i.i107 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %42, i32 0, i32 12
  %43 = ptrtoint ptr %write32.i.i107 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %write32.i.i107, align 4
  tail call void %44(ptr noundef %1, i32 noundef 60960, i32 noundef %or.i106) #7
  br label %out

out:                                              ; preds = %if.end70, %if.end65.out_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtw89_ops_set_key(ptr nocapture noundef readonly %hw, i32 noundef %cmd, ptr noundef %vif, ptr noundef %sta, ptr noundef %key) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %mutex = getelementptr inbounds %struct.rtw89_dev, ptr %1, i32 0, i32 10
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #7
  tail call void @rtw89_leave_ps_mode(ptr noundef %1) #7
  %2 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %cmd, label %entry.out_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
  ]

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

sw.bb:                                            ; preds = %entry
  tail call void @rtw89_btc_ntfy_specific_packet(ptr noundef %1, i32 noundef 3) #7
  %call = tail call i32 @rtw89_cam_sec_key_add(ptr noundef %1, ptr noundef %vif, ptr noundef %sta, ptr noundef %key) #7
  %3 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.14)
  switch i32 %call, label %do.end [
    i32 0, label %sw.bb.out_crit_edge
    i32 -95, label %out.fold.split
  ]

sw.bb.out_crit_edge:                              ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

do.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.rtw89_dev, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.9) #10
  br label %out

sw.bb1:                                           ; preds = %entry
  %hci.i = getelementptr inbounds %struct.rtw89_dev, ptr %1, i32 0, i32 7
  %6 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hci.i, align 8
  %flush_queues.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %flush_queues.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %flush_queues.i, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %sw.bb1.rtw89_hci_flush_queues.exit_crit_edge, label %if.then.i

sw.bb1.rtw89_hci_flush_queues.exit_crit_edge:     ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtw89_hci_flush_queues.exit

if.then.i:                                        ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 128
  %queues = getelementptr inbounds %struct.ieee80211_hw, ptr %11, i32 0, i32 11
  %12 = ptrtoint ptr %queues to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %queues, align 4
  %conv = zext i16 %13 to i32
  %notmask = shl nsw i32 -1, %conv
  %sub = xor i32 %notmask, -1
  tail call void %9(ptr noundef %1, i32 noundef %sub, i1 noundef zeroext false) #7
  br label %rtw89_hci_flush_queues.exit

rtw89_hci_flush_queues.exit:                      ; preds = %if.then.i, %sw.bb1.rtw89_hci_flush_queues.exit_crit_edge
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 128
  %queues4 = getelementptr inbounds %struct.ieee80211_hw, ptr %15, i32 0, i32 11
  %16 = ptrtoint ptr %queues4 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %queues4, align 4
  %conv5 = zext i16 %17 to i32
  %notmask34 = shl nsw i32 -1, %conv5
  %sub7 = xor i32 %notmask34, -1
  tail call void @rtw89_mac_flush_txq(ptr noundef %1, i32 noundef %sub7, i1 noundef zeroext false) #7
  %call8 = tail call i32 @rtw89_cam_sec_key_del(ptr noundef %1, ptr noundef %vif, ptr noundef %sta, ptr noundef %key, i1 noundef zeroext true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %rtw89_hci_flush_queues.exit.out_crit_edge, label %do.end13

rtw89_hci_flush_queues.exit.out_crit_edge:        ; preds = %rtw89_hci_flush_queues.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

do.end13:                                         ; preds = %rtw89_hci_flush_queues.exit
  call void @__sanitizer_cov_trace_pc() #9
  %dev14 = getelementptr inbounds %struct.rtw89_dev, ptr %1, i32 0, i32 1
  %18 = ptrtoint ptr %dev14 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev14, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.12) #10
  br label %out

out.fold.split:                                   ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

out:                                              ; preds = %out.fold.split, %do.end13, %rtw89_hci_flush_queues.exit.out_crit_edge, %do.end, %sw.bb.out_crit_edge, %entry.out_crit_edge
  %ret.0 = phi i32 [ 0, %entry.out_crit_edge ], [ %call8, %do.end13 ], [ 0, %rtw89_hci_flush_queues.exit.out_crit_edge ], [ %call, %do.end ], [ %call, %sw.bb.out_crit_edge ], [ -95, %out.fold.split ]
  tail call void @mutex_unlock(ptr noundef %mutex) #7
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtw89_ops_sw_scan_start(ptr nocapture noundef readonly %hw, ptr noundef %vif, ptr noundef %mac_addr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %mutex = getelementptr inbounds %struct.rtw89_dev, ptr %1, i32 0, i32 10
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #7
  %scanning = getelementptr inbounds %struct.rtw89_dev, ptr %1, i32 0, i32 48
  %2 = ptrtoint ptr %scanning to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %scanning, align 1
  tail call void @rtw89_leave_lps(ptr noundef %1) #7
  %current_band_type = getelementptr inbounds %struct.rtw89_dev, ptr %1, i32 0, i32 4, i32 7
  %3 = ptrtoint ptr %current_band_type to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %current_band_type, align 1
  tail call void @rtw89_btc_ntfy_scan_start(ptr noundef %1, i8 noundef zeroext 0, i8 noundef zeroext %4) #7
  %chip1.i = getelementptr inbounds %struct.rtw89_dev, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %chip1.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %chip1.i, align 4
  %ops.i = getelementptr inbounds %struct.rtw89_chip_info, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ops.i, align 4
  %rfk_scan.i = getelementptr inbounds %struct.rtw89_chip_ops, ptr %8, i32 0, i32 12
  %9 = ptrtoint ptr %rfk_scan.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rfk_scan.i, align 4
  %tobool.not.i = icmp eq ptr %10, null
  br i1 %tobool.not.i, label %entry.rtw89_chip_rfk_scan.exit_crit_edge, label %if.then.i

entry.rtw89_chip_rfk_scan.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtw89_chip_rfk_scan.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %10(ptr noundef %1, i1 noundef zeroext true) #7
  br label %rtw89_chip_rfk_scan.exit

rtw89_chip_rfk_scan.exit:                         ; preds = %if.then.i, %entry.rtw89_chip_rfk_scan.exit_crit_edge
  %drv_priv = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 19
  %hci.i = getelementptr inbounds %struct.rtw89_dev, ptr %1, i32 0, i32 7
  %11 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hci.i, align 8
  %recalc_int_mit.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %12, i32 0, i32 6
  %13 = ptrtoint ptr %recalc_int_mit.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %recalc_int_mit.i, align 4
  tail call void %14(ptr noundef %1) #7
  %call = tail call i32 @rtw89_fw_h2c_cam(ptr noundef %1, ptr noundef %drv_priv, ptr noundef null, ptr noundef %mac_addr) #7
  tail call void @mutex_unlock(ptr noundef %mutex) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtw89_ops_sw_scan_complete(ptr nocapture noundef readonly %hw, ptr noundef %vif) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %drv_priv = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 19
  %mutex = getelementptr inbounds %struct.rtw89_dev, ptr %1, i32 0, i32 10
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #7
  %call = tail call i32 @rtw89_fw_h2c_cam(ptr noundef %1, ptr noundef %drv_priv, ptr noundef null, ptr noundef null) #7
  %chip1.i = getelementptr inbounds %struct.rtw89_dev, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %chip1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chip1.i, align 4
  %ops.i = getelementptr inbounds %struct.rtw89_chip_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops.i, align 4
  %rfk_scan.i = getelementptr inbounds %struct.rtw89_chip_ops, ptr %5, i32 0, i32 12
  %6 = ptrtoint ptr %rfk_scan.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rfk_scan.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %entry.rtw89_chip_rfk_scan.exit_crit_edge, label %if.then.i

entry.rtw89_chip_rfk_scan.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtw89_chip_rfk_scan.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %7(ptr noundef %1, i1 noundef zeroext false) #7
  br label %rtw89_chip_rfk_scan.exit

rtw89_chip_rfk_scan.exit:                         ; preds = %if.then.i, %entry.rtw89_chip_rfk_scan.exit_crit_edge
  tail call void @rtw89_btc_ntfy_scan_finish(ptr noundef %1, i8 noundef zeroext 0) #7
  %scanning = getelementptr inbounds %struct.rtw89_dev, ptr %1, i32 0, i32 48
  %8 = ptrtoint ptr %scanning to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %scanning, align 1
  %bypass_dig = getelementptr inbounds %struct.rtw89_dev, ptr %1, i32 0, i32 39, i32 22
  %9 = ptrtoint ptr %bypass_dig to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %bypass_dig, align 1
  tail call void @mutex_unlock(ptr noundef %mutex) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtw89_ops_set_rts_threshold(ptr nocapture noundef readonly %hw, i32 noundef %value) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %mutex = getelementptr inbounds %struct.rtw89_dev, ptr %1, i32 0, i32 10
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #7
  tail call void @rtw89_leave_ps_mode(ptr noundef %1) #7
  %flags = getelementptr inbounds %struct.rtw89_dev, ptr %1, i32 0, i32 26
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %flags, align 4
  %and1.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @rtw89_mac_update_rts_threshold(ptr noundef %1, i8 noundef zeroext 0) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtw89_ops_sta_state(ptr nocapture noundef readonly %hw, ptr noundef %vif, ptr noundef %sta, i32 noundef %old_state, i32 noundef %new_state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %mutex = getelementptr inbounds %struct.rtw89_dev, ptr %1, i32 0, i32 10
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #7
  tail call void @rtw89_leave_ps_mode(ptr noundef %1) #7
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %old_state)
  %cmp.i = icmp eq i32 %old_state, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %new_state)
  %cmp1.i = icmp eq i32 %new_state, 1
  %or.cond.i = and i1 %cmp.i, %cmp1.i
  br i1 %or.cond.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call i32 @rtw89_core_sta_add(ptr noundef %3, ptr noundef %vif, ptr noundef %sta) #7
  br label %__rtw89_ops_sta_state.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %old_state)
  %cmp2.i = icmp eq i32 %old_state, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %new_state)
  %cmp4.i = icmp eq i32 %new_state, 3
  %or.cond50.i = and i1 %cmp2.i, %cmp4.i
  br i1 %or.cond50.i, label %if.then5.i, label %if.end10.i

if.then5.i:                                       ; preds = %if.end.i
  %4 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vif, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp6.i = icmp eq i32 %5, 2
  br i1 %cmp6.i, label %if.then5.i.__rtw89_ops_sta_state.exit_crit_edge, label %if.end8.i

if.then5.i.__rtw89_ops_sta_state.exit_crit_edge:  ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__rtw89_ops_sta_state.exit

if.end8.i:                                        ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #9
  %call9.i = tail call i32 @rtw89_core_sta_assoc(ptr noundef %3, ptr noundef %vif, ptr noundef %sta) #7
  br label %__rtw89_ops_sta_state.exit

if.end10.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %old_state)
  %cmp11.i = icmp eq i32 %old_state, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %new_state)
  %cmp13.i = icmp eq i32 %new_state, 2
  %or.cond51.i = and i1 %cmp11.i, %cmp13.i
  br i1 %or.cond51.i, label %if.then14.i, label %if.end16.i

if.then14.i:                                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #9
  %call15.i = tail call i32 @rtw89_core_sta_disassoc(ptr noundef %3, ptr noundef %vif, ptr noundef %sta) #7
  br label %__rtw89_ops_sta_state.exit

if.end16.i:                                       ; preds = %if.end10.i
  %or.cond52.i = and i1 %cmp2.i, %cmp1.i
  br i1 %or.cond52.i, label %if.then20.i, label %if.end22.i

if.then20.i:                                      ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #9
  %call21.i = tail call i32 @rtw89_core_sta_disconnect(ptr noundef %3, ptr noundef %vif, ptr noundef %sta) #7
  br label %__rtw89_ops_sta_state.exit

if.end22.i:                                       ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %old_state)
  %cmp23.i = icmp eq i32 %old_state, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %new_state)
  %cmp25.i = icmp eq i32 %new_state, 0
  %or.cond53.i = and i1 %cmp23.i, %cmp25.i
  br i1 %or.cond53.i, label %if.then26.i, label %if.end22.i.__rtw89_ops_sta_state.exit_crit_edge

if.end22.i.__rtw89_ops_sta_state.exit_crit_edge:  ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__rtw89_ops_sta_state.exit

if.then26.i:                                      ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #9
  %call27.i = tail call i32 @rtw89_core_sta_remove(ptr noundef %3, ptr noundef %vif, ptr noundef %sta) #7
  br label %__rtw89_ops_sta_state.exit

__rtw89_ops_sta_state.exit:                       ; preds = %if.then26.i, %if.end22.i.__rtw89_ops_sta_state.exit_crit_edge, %if.then20.i, %if.then14.i, %if.end8.i, %if.then5.i.__rtw89_ops_sta_state.exit_crit_edge, %if.then.i
  %retval.0.i = phi i32 [ %call.i, %if.then.i ], [ %call9.i, %if.end8.i ], [ %call15.i, %if.then14.i ], [ %call21.i, %if.then20.i ], [ %call27.i, %if.then26.i ], [ 0, %if.then5.i.__rtw89_ops_sta_state.exit_crit_edge ], [ 0, %if.end22.i.__rtw89_ops_sta_state.exit_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex) #7
  ret i32 %retval.0.i
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @rtw89_ops_sta_statistics(ptr nocapture noundef readnone %hw, ptr nocapture noundef readnone %vif, ptr nocapture noundef readonly %sta, ptr nocapture noundef %sinfo) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %txrate = getelementptr inbounds %struct.station_info, ptr %sinfo, i32 0, i32 14
  %ra_report = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 1, i32 3
  %0 = call ptr @memcpy(ptr %txrate, ptr %ra_report, i32 10)
  %1 = ptrtoint ptr %sinfo to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %sinfo, align 8
  %or = or i64 %2, 256
  store i64 %or, ptr %sinfo, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtw89_ops_conf_tx(ptr nocapture noundef readonly %hw, ptr noundef %vif, i16 noundef zeroext %ac, ptr nocapture noundef readonly %params) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %drv_priv = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 19
  %mutex = getelementptr inbounds %struct.rtw89_dev, ptr %1, i32 0, i32 10
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #7
  tail call void @rtw89_leave_ps_mode(ptr noundef %1) #7
  %tx_params = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 32, i32 1
  %idxprom = zext i16 %ac to i32
  %arrayidx = getelementptr [4 x %struct.ieee80211_tx_queue_params], ptr %tx_params, i32 0, i32 %idxprom
  %2 = call ptr @memcpy(ptr %arrayidx, ptr %params, i32 14)
  tail call fastcc void @__rtw89_conf_tx(ptr noundef %1, ptr noundef %drv_priv, i16 noundef zeroext %ac)
  tail call void @mutex_unlock(ptr noundef %mutex) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtw89_ops_ampdu_action(ptr nocapture noundef readonly %hw, ptr noundef %vif, ptr noundef %params) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %sta1 = getelementptr inbounds %struct.ieee80211_ampdu_params, ptr %params, i32 0, i32 1
  %2 = ptrtoint ptr %sta1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sta1, align 4
  %drv_priv = getelementptr inbounds %struct.ieee80211_sta, ptr %3, i32 0, i32 29
  %tid2 = getelementptr inbounds %struct.ieee80211_ampdu_params, ptr %params, i32 0, i32 2
  %4 = ptrtoint ptr %tid2 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %tid2, align 4
  %idxprom = zext i16 %5 to i32
  %arrayidx = getelementptr %struct.ieee80211_sta, ptr %3, i32 0, i32 28, i32 %idxprom
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %8 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %params, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.15)
  switch i32 %9, label %do.end [
    i32 2, label %entry.cleanup_crit_edge
    i32 3, label %entry.sw.bb6_crit_edge
    i32 4, label %entry.sw.bb6_crit_edge64
    i32 5, label %entry.sw.bb6_crit_edge65
    i32 6, label %sw.bb9
    i32 0, label %entry.sw.epilog_crit_edge
    i32 1, label %entry.sw.epilog_crit_edge66
  ]

entry.sw.epilog_crit_edge66:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

entry.sw.bb6_crit_edge65:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb6

entry.sw.bb6_crit_edge64:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb6

entry.sw.bb6_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb6

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb6:                                           ; preds = %entry.sw.bb6_crit_edge, %entry.sw.bb6_crit_edge64, %entry.sw.bb6_crit_edge65
  %mutex = getelementptr inbounds %struct.rtw89_dev, ptr %1, i32 0, i32 10
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #7
  %flags = getelementptr inbounds %struct.ieee80211_txq, ptr %7, i32 1, i32 2
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %flags) #7
  %11 = ptrtoint ptr %drv_priv to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %drv_priv, align 8
  %call = tail call i32 @rtw89_fw_h2c_ba_cam(ptr noundef %1, i1 noundef zeroext false, i8 noundef zeroext %12, ptr noundef %params) #7
  tail call void @mutex_unlock(ptr noundef %mutex) #7
  %addr = getelementptr inbounds %struct.ieee80211_sta, ptr %3, i32 0, i32 1
  tail call void @ieee80211_stop_tx_ba_cb_irqsafe(ptr noundef %vif, ptr noundef %addr, i16 noundef zeroext %5) #7
  br label %sw.epilog

sw.bb9:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %mutex10 = getelementptr inbounds %struct.rtw89_dev, ptr %1, i32 0, i32 10
  tail call void @mutex_lock_nested(ptr noundef %mutex10, i32 noundef 0) #7
  %flags11 = getelementptr inbounds %struct.ieee80211_txq, ptr %7, i32 1, i32 2
  tail call void @_set_bit(i32 noundef 0, ptr noundef %flags11) #7
  %buf_size = getelementptr inbounds %struct.ieee80211_ampdu_params, ptr %params, i32 0, i32 4
  %13 = ptrtoint ptr %buf_size to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %buf_size, align 4
  %ampdu_params = getelementptr inbounds %struct.ieee80211_sta, ptr %3, i32 1, i32 5, i32 2
  %arrayidx13 = getelementptr [16 x %struct.rtw89_ampdu_params], ptr %ampdu_params, i32 0, i32 %idxprom
  %15 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %14, ptr %arrayidx13, align 4
  %amsdu = getelementptr inbounds %struct.ieee80211_ampdu_params, ptr %params, i32 0, i32 5
  %16 = ptrtoint ptr %amsdu to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %amsdu, align 2, !range !43
  %amsdu17 = getelementptr [16 x %struct.rtw89_ampdu_params], ptr %ampdu_params, i32 0, i32 %idxprom, i32 1
  %18 = ptrtoint ptr %amsdu17 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %17, ptr %amsdu17, align 2
  tail call void @rtw89_leave_ps_mode(ptr noundef %1) #7
  %19 = ptrtoint ptr %drv_priv to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %drv_priv, align 8
  %call19 = tail call i32 @rtw89_fw_h2c_ba_cam(ptr noundef %1, i1 noundef zeroext true, i8 noundef zeroext %20, ptr noundef %params) #7
  tail call void @mutex_unlock(ptr noundef %mutex10) #7
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 496, i32 noundef 9, ptr noundef null) #7
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb9, %sw.bb6, %entry.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge66
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -524, %do.end ], [ 0, %sw.epilog ], [ 1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtw89_ops_flush(ptr nocapture noundef readonly %hw, ptr nocapture noundef readnone %vif, i32 noundef %queues, i1 noundef zeroext %drop) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %mutex = getelementptr inbounds %struct.rtw89_dev, ptr %1, i32 0, i32 10
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #7
  tail call void @rtw89_leave_lps(ptr noundef %1) #7
  %hci.i = getelementptr inbounds %struct.rtw89_dev, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hci.i, align 8
  %flush_queues.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %flush_queues.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %flush_queues.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %entry.rtw89_hci_flush_queues.exit_crit_edge, label %if.then.i

entry.rtw89_hci_flush_queues.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtw89_hci_flush_queues.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %5(ptr noundef %1, i32 noundef %queues, i1 noundef zeroext %drop) #7
  br label %rtw89_hci_flush_queues.exit

rtw89_hci_flush_queues.exit:                      ; preds = %if.then.i, %entry.rtw89_hci_flush_queues.exit_crit_edge
  tail call void @rtw89_mac_flush_txq(ptr noundef %1, i32 noundef %queues, i1 noundef zeroext %drop) #7
  tail call void @mutex_unlock(ptr noundef %mutex) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtw89_ops_set_antenna(ptr nocapture noundef readonly %hw, i32 noundef %tx_ant, i32 noundef %rx_ant) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wiphy, align 8
  %available_antennas_rx = getelementptr inbounds %struct.wiphy, ptr %1, i32 0, i32 45
  %2 = ptrtoint ptr %available_antennas_rx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %available_antennas_rx, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %rx_ant)
  %cmp.not = icmp eq i32 %3, %rx_ant
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %4 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv, align 8
  %mutex = getelementptr inbounds %struct.rtw89_dev, ptr %5, i32 0, i32 10
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #7
  %antenna_tx = getelementptr inbounds %struct.rtw89_dev, ptr %5, i32 0, i32 4, i32 9
  %6 = ptrtoint ptr %antenna_tx to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %tx_ant, ptr %antenna_tx, align 4
  %antenna_rx = getelementptr inbounds %struct.rtw89_dev, ptr %5, i32 0, i32 4, i32 10
  %7 = ptrtoint ptr %antenna_rx to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %rx_ant, ptr %antenna_rx, align 4
  tail call void @mutex_unlock(ptr noundef %mutex) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @rtw89_ops_get_antenna(ptr nocapture noundef readonly %hw, ptr nocapture noundef writeonly %tx_ant, ptr nocapture noundef writeonly %rx_ant) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %antenna_tx = getelementptr inbounds %struct.rtw89_dev, ptr %1, i32 0, i32 4, i32 9
  %2 = ptrtoint ptr %antenna_tx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %antenna_tx, align 4
  %4 = ptrtoint ptr %tx_ant to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %tx_ant, align 4
  %antenna_rx = getelementptr inbounds %struct.rtw89_dev, ptr %1, i32 0, i32 4, i32 10
  %5 = ptrtoint ptr %antenna_rx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %antenna_rx, align 4
  %7 = ptrtoint ptr %rx_ant to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %rx_ant, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtw89_ops_set_bitrate_mask(ptr nocapture noundef readonly %hw, ptr noundef %vif, ptr noundef %mask) #0 align 64 {
entry:
  %br_data.i = alloca %struct.rtw89_iter_bitrate_mask_data, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %mutex = getelementptr inbounds %struct.rtw89_dev, ptr %1, i32 0, i32 10
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #7
  tail call void @rtw89_phy_rate_pattern_vif(ptr noundef %1, ptr noundef %vif, ptr noundef %mask) #7
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %br_data.i) #7
  %2 = getelementptr inbounds %struct.rtw89_iter_bitrate_mask_data, ptr %br_data.i, i32 0, i32 1
  %3 = getelementptr inbounds %struct.rtw89_iter_bitrate_mask_data, ptr %br_data.i, i32 0, i32 2
  %4 = ptrtoint ptr %br_data.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %br_data.i, align 4
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %vif, ptr %2, align 4
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %mask, ptr %3, align 4
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 128
  call void @ieee80211_iterate_stations_atomic(ptr noundef %8, ptr noundef nonnull @rtw89_ra_mask_info_update_iter, ptr noundef nonnull %br_data.i) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %br_data.i) #7
  call void @mutex_unlock(ptr noundef %mutex) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtw89_ops_reconfig_complete(ptr nocapture noundef readonly %hw, i32 noundef %reconfig_type) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %reconfig_type)
  %cmp = icmp eq i32 %reconfig_type, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  tail call void @rtw89_ser_recfg_done(ptr noundef %1) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtw89_ops_wake_tx_queue(ptr noundef %hw, ptr noundef %txq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  tail call void @ieee80211_schedule_txq(ptr noundef %hw, ptr noundef %txq) #7
  %txq_wq = getelementptr inbounds %struct.rtw89_dev, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %txq_wq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %txq_wq, align 8
  %txq_work = getelementptr inbounds %struct.rtw89_dev, ptr %1, i32 0, i32 14
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %3, ptr noundef %txq_work) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw89_ops_set_sar_specs(ptr noundef, ptr noundef) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw89_core_tx_write(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_free_txskb(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw89_core_tx_kick_off(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw89_core_start(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw89_core_stop(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw89_leave_ps_mode(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw89_traffic_stats_init(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw89_vif_type_mapping(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @rtw89_core_acquire_bit_map(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw89_mac_add_vif(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw89_core_release_bit_map(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw89_btc_ntfy_role_info(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw89_mac_remove_vif(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw89_leave_ips(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw89_leave_lps(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw89_set_channel(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw89_enter_ips(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw89_phy_set_bss_color(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw89_mac_port_update(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw89_cam_bssid_changed(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw89_fw_h2c_cam(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw89_mac_bf_set_gid_table(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ieee80211_find_sta(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw89_core_sta_assoc(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__rtw89_conf_tx(ptr noundef %rtwdev, ptr noundef %rtwvif, i16 noundef zeroext %ac) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %idxprom.i = zext i16 %ac to i32
  %arrayidx.i = getelementptr %struct.rtw89_vif, ptr %rtwvif, i32 0, i32 25, i32 %idxprom.i
  %cw_max.i = getelementptr %struct.rtw89_vif, ptr %rtwvif, i32 0, i32 25, i32 %idxprom.i, i32 2
  %0 = ptrtoint ptr %cw_max.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %cw_max.i, align 2
  %conv.i = zext i16 %1 to i32
  %add.i = add nuw nsw i32 %conv.i, 1
  %2 = tail call i32 @llvm.ctlz.i32(i32 %add.i, i1 true) #7, !range !44
  %cw_min.i = getelementptr %struct.rtw89_vif, ptr %rtwvif, i32 0, i32 25, i32 %idxprom.i, i32 1
  %3 = ptrtoint ptr %cw_min.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %cw_min.i, align 2
  %conv17.i = zext i16 %4 to i32
  %add18.i = add nuw nsw i32 %conv17.i, 1
  %5 = tail call i32 @llvm.ctlz.i32(i32 %add18.i, i1 true) #7, !range !44
  %aifs43.i = getelementptr %struct.rtw89_vif, ptr %rtwvif, i32 0, i32 25, i32 %idxprom.i, i32 3
  %6 = ptrtoint ptr %aifs43.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %aifs43.i, align 2
  %use_short_slot.i.i = getelementptr i8, ptr %rtwvif, i32 -818
  %8 = ptrtoint ptr %use_short_slot.i.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %use_short_slot.i.i, align 2, !range !43
  %current_band_type.i.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 4, i32 7
  %10 = ptrtoint ptr %current_band_type.i.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %current_band_type.i.i, align 1
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %arrayidx.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not.i.i = icmp eq i8 %9, 0
  %conv.i.i = select i1 %tobool.not.i.i, i8 20, i8 9
  %mul.i.i = mul i8 %conv.i.i, %7
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %11)
  %cmp.i.i = icmp eq i8 %11, 1
  %conv4.i.i = select i1 %cmp.i.i, i8 16, i8 10
  %add.i.i = add i8 %mul.i.i, %conv4.i.i
  %conv62.i = zext i16 %13 to i32
  %shl.i = shl nuw i32 %conv62.i, 16
  %and63.i = and i32 %shl.i, 134152192
  %sub.i.i = shl nuw nsw i32 %2, 12
  %conv87.i = and i32 %sub.i.i, 61440
  %sub.i172.i = shl nuw nsw i32 %5, 8
  %conv113.i = and i32 %sub.i172.i, 3840
  %conv140.i = zext i8 %add.i.i to i32
  %14 = or i32 %conv87.i, %conv113.i
  %15 = or i32 %14, %and63.i
  %16 = or i32 %15, %conv140.i
  %or143.i = xor i32 %16, 65280
  %arrayidx145.i = getelementptr [4 x i8], ptr @ac_to_fw_idx, i32 0, i32 %idxprom.i
  %17 = ptrtoint ptr %arrayidx145.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx145.i, align 1
  %call146.i = tail call i32 @rtw89_fw_h2c_set_edca(ptr noundef %rtwdev, ptr noundef %rtwvif, i8 noundef zeroext %18, i32 noundef %or143.i) #7
  %mu_edca1.i = getelementptr %struct.rtw89_vif, ptr %rtwvif, i32 0, i32 25, i32 %idxprom.i, i32 6
  %19 = ptrtoint ptr %mu_edca1.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %mu_edca1.i, align 1, !range !43
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool.not.i5 = icmp eq i8 %20, 0
  br i1 %tobool.not.i5, label %entry.____rtw89_conf_tx_mu_edca.exit_crit_edge, label %if.end.i

entry.____rtw89_conf_tx_mu_edca.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %____rtw89_conf_tx_mu_edca.exit

if.end.i:                                         ; preds = %entry
  %mu_edca_param_rec.i = getelementptr %struct.rtw89_vif, ptr %rtwvif, i32 0, i32 25, i32 %idxprom.i, i32 7
  %21 = ptrtoint ptr %mu_edca_param_rec.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %mu_edca_param_rec.i, align 1
  %23 = and i8 %22, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool17.not.i = icmp eq i8 %23, 0
  br i1 %tobool17.not.i, label %if.end.i.cond.end.i_crit_edge, label %cond.true.i14

if.end.i.cond.end.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end.i

cond.true.i14:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %24 = ptrtoint ptr %use_short_slot.i.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %use_short_slot.i.i, align 2, !range !43
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool.not.i.i7 = icmp eq i8 %25, 0
  %conv.i.i8 = select i1 %tobool.not.i.i7, i8 20, i8 9
  %26 = ptrtoint ptr %current_band_type.i.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %current_band_type.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %27)
  %cmp.i.i10 = icmp eq i8 %27, 1
  %conv4.i.i11 = select i1 %cmp.i.i10, i8 16, i8 10
  %mul.i.i12 = mul i8 %conv.i.i8, %23
  %add.i.i13 = add i8 %mul.i.i12, %conv4.i.i11
  %phi.cast.i = zext i8 %add.i.i13 to i32
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i14, %if.end.i.cond.end.i_crit_edge
  %cond.i = phi i32 [ %phi.cast.i, %cond.true.i14 ], [ 0, %if.end.i.cond.end.i_crit_edge ]
  %mu_edca_timer.i = getelementptr %struct.rtw89_vif, ptr %rtwvif, i32 0, i32 25, i32 %idxprom.i, i32 7, i32 2
  %28 = ptrtoint ptr %mu_edca_timer.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %mu_edca_timer.i, align 1
  %conv20.i = zext i8 %29 to i32
  %shl.i15 = shl nuw i32 %conv20.i, 24
  %ecw_min_max.i = getelementptr %struct.rtw89_vif, ptr %rtwvif, i32 0, i32 25, i32 %idxprom.i, i32 7, i32 1
  %30 = ptrtoint ptr %ecw_min_max.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %ecw_min_max.i, align 1
  %conv73.i = zext i8 %31 to i32
  %shl74.i = shl nuw nsw i32 %conv73.i, 8
  %or.i16 = or i32 %shl.i15, %cond.i
  %or102.i = or i32 %or.i16, %shl74.i
  %arrayidx104.i = getelementptr [4 x i32], ptr @ac_to_mu_edca_param, i32 0, i32 %idxprom.i
  %32 = ptrtoint ptr %arrayidx104.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx104.i, align 4
  %mac_idx.i = getelementptr inbounds %struct.rtw89_vif, ptr %rtwvif, i32 0, i32 6
  %34 = ptrtoint ptr %mac_idx.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %mac_idx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %cmp.i129.i = icmp eq i8 %35, 0
  %add.i130.i = add i32 %33, 8192
  %cond.i.i = select i1 %cmp.i129.i, i32 %33, i32 %add.i130.i
  %hci.i.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 7
  %36 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %hci.i.i, align 8
  %write32.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %37, i32 0, i32 12
  %38 = ptrtoint ptr %write32.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %write32.i.i, align 4
  tail call void %39(ptr noundef %rtwdev, i32 noundef %cond.i.i, i32 noundef %or102.i) #7
  %call106.i = tail call i32 @rtw89_mac_set_hw_muedca_ctrl(ptr noundef %rtwdev, ptr noundef %rtwvif, i1 noundef zeroext true) #7
  br label %____rtw89_conf_tx_mu_edca.exit

____rtw89_conf_tx_mu_edca.exit:                   ; preds = %cond.end.i, %entry.____rtw89_conf_tx_mu_edca.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw89_fw_h2c_set_edca(ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw89_mac_set_hw_muedca_ctrl(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw89_btc_ntfy_specific_packet(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw89_cam_sec_key_add(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw89_mac_flush_txq(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw89_cam_sec_key_del(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw89_btc_ntfy_scan_start(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw89_btc_ntfy_scan_finish(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw89_mac_update_rts_threshold(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw89_core_sta_add(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw89_core_sta_disassoc(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw89_core_sta_disconnect(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw89_core_sta_remove(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw89_fw_h2c_ba_cam(ptr noundef, i1 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_stop_tx_ba_cb_irqsafe(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw89_phy_rate_pattern_vif(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_iterate_stations_atomic(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtw89_ra_mask_info_update_iter(ptr nocapture noundef readonly %data, ptr noundef %sta) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %rtwvif = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 1, i32 0, i32 1
  %0 = ptrtoint ptr %rtwvif to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rtwvif, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -848
  %vif1 = getelementptr inbounds %struct.rtw89_iter_bitrate_mask_data, ptr %data, i32 0, i32 1
  %2 = ptrtoint ptr %vif1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vif1, align 4
  %cmp.not = icmp eq ptr %add.ptr.i, %3
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %use_cfg_mask = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 1, i32 25, i32 13
  %4 = ptrtoint ptr %use_cfg_mask to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %use_cfg_mask, align 8
  %mask = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 1, i32 25, i32 15
  %mask2 = getelementptr inbounds %struct.rtw89_iter_bitrate_mask_data, ptr %data, i32 0, i32 2
  %5 = ptrtoint ptr %mask2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mask2, align 4
  %7 = call ptr @memcpy(ptr %mask, ptr %6, i32 360)
  %8 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data, align 4
  tail call void @rtw89_phy_ra_updata_sta(ptr noundef %9, ptr noundef %sta) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw89_phy_ra_updata_sta(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw89_ser_recfg_done(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_schedule_txq(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !11, !12, !14, !15, !16, !17, !19, !21, !23, !24, !26, !27, !28, !29, !31, !32}
!llvm.module.flags = !{!33, !34, !35, !36, !37, !38, !39, !40}
!llvm.ident = !{!41}

!0 = !{ptr @rtw89_ops, !1, !"rtw89_ops", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/realtek/rtw89/mac80211.c", i32 656, i32 28}
!2 = !{ptr @__ksymtab_rtw89_ops, !3, !"__ksymtab_rtw89_ops", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/realtek/rtw89/mac80211.c", i32 681, i32 1}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/realtek/rtw89/mac80211.c", i32 28, i32 3}
!6 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.4, !5, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @rtw89_ops_tx._entry, !5, !"_entry", i1 false, i1 false}
!11 = !{ptr @rtw89_ops_tx._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/realtek/rtw89/mac80211.c", i32 311, i32 3}
!14 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @rtw89_station_mode_sta_assoc._entry, !13, !"_entry", i1 false, i1 false}
!16 = !{ptr @rtw89_station_mode_sta_assoc._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @ac_to_fw_idx, !18, !"ac_to_fw_idx", i1 false, i1 false}
!18 = !{!"../drivers/net/wireless/realtek/rtw89/mac80211.c", i32 211, i32 17}
!19 = !{ptr @ac_to_mu_edca_param, !20, !"ac_to_mu_edca_param", i1 false, i1 false}
!20 = !{!"../drivers/net/wireless/realtek/rtw89/mac80211.c", i32 250, i32 18}
!21 = distinct !{null, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/net/wireless/realtek/rtw89/core.h", i32 3031, i32 2}
!23 = distinct !{null, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.9, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/wireless/realtek/rtw89/mac80211.c", i32 438, i32 4}
!26 = !{ptr @.str.10, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @rtw89_ops_set_key._entry, !25, !"_entry", i1 false, i1 false}
!28 = !{ptr @rtw89_ops_set_key._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.12, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/net/wireless/realtek/rtw89/mac80211.c", i32 448, i32 4}
!31 = !{ptr @rtw89_ops_set_key._entry.11, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @rtw89_ops_set_key._entry_ptr.13, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{i32 1, !"wchar_size", i32 2}
!34 = !{i32 1, !"min_enum_size", i32 4}
!35 = !{i32 8, !"branch-target-enforcement", i32 0}
!36 = !{i32 8, !"sign-return-address", i32 0}
!37 = !{i32 8, !"sign-return-address-all", i32 0}
!38 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!39 = !{i32 7, !"uwtable", i32 1}
!40 = !{i32 7, !"frame-pointer", i32 2}
!41 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!42 = !{!"auto-init"}
!43 = !{i8 0, i8 2}
!44 = !{i32 0, i32 33}
