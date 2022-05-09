; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/realtek/rtw89/regd.c_pt.bc'
source_filename = "../drivers/net/wireless/realtek/rtw89/regd.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.rtw89_regulatory = type { [3 x i8], [2 x i8] }
%struct.ieee80211_hw = type { %struct.ieee80211_conf, ptr, ptr, ptr, [2 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i8, i16, %struct.anon.128, i64, i8, i8, i8, ptr, i8, i8, i8, i32 }
%struct.ieee80211_conf = type { i32, i32, i32, i16, i8, i8, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.anon.128 = type { i32, i16 }
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
%struct.atomic_t = type { i32 }
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
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.105, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.124, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.105 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.wiphy = type { %struct.mutex, [6 x i8], [6 x i8], ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i32, i32, [8 x i8], i32, i32, i32, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i8, i8, i32, i32, i8, [32 x i8], i32, ptr, ptr, i16, i8, i32, i32, i32, ptr, ptr, i8, ptr, i32, ptr, [6 x ptr], ptr, ptr, %struct.device, i8, ptr, ptr, ptr, %struct.list_head, %struct.possible_net_t, ptr, ptr, ptr, ptr, i32, i32, i16, i8, i32, i8, i32, i32, i32, i32, i8, ptr, %struct.anon.127, i8, ptr, ptr, i8, i8, [18 x i8], [0 x i8] }
%struct.anon.127 = type { i64, i64, i8 }
%struct.regulatory_request = type { %struct.callback_head, i32, i32, i32, [3 x i8], i32, i8, i8, i32, %struct.list_head }
%struct.callback_head = type { ptr, ptr }
%struct.rtw89_chip_info = type { i32, ptr, ptr, i32, i16, i8, ptr, ptr, [2 x i32], i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, ptr, ptr, ptr, [4 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i32, i32, i8, i8, i8, i8, ptr, ptr, i8, i8, ptr, i8, ptr, i8, ptr, i8 }
%struct.rtw89_chip_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@rtw89_regd_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 295, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to hint regulatory:%d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rtw89_regd_init\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"drivers/net/wireless/realtek/rtw89/regd.c\00", [54 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rtw89_regd_init._entry_ptr = internal global ptr @rtw89_regd_init._entry, section ".printk_index", align 4
@.str.5 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"efuse country code %c%c, mapping to 2g txregd %d, 5g txregd %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [98 x i8], [62 x i8] } { [98 x i8] c"worldwide roaming chip, follow the setting of stack(%c%c), mapping to 2g txregd %d, 5g txregd %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"There is a country domain programmed in chip, ignore notifications\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"get alpha2 %c%c from initiator %d, mapping to 2g txregd %d, 5g txregd %d\0A\00", [54 x i8] zeroinitializer }, align 32
@rtw89_regd_map = internal constant { [238 x %struct.rtw89_regulatory], [314 x i8] } { [238 x %struct.rtw89_regulatory] [%struct.rtw89_regulatory { [3 x i8] c"AR\00", [2 x i8] c"\09\09" }, %struct.rtw89_regulatory { [3 x i8] c"BO\00", [2 x i8] c"\02\02" }, %struct.rtw89_regulatory { [3 x i8] c"BR\00", [2 x i8] c"\02\02" }, %struct.rtw89_regulatory { [3 x i8] c"CL\00", [2 x i8] c"\0A\0A" }, %struct.rtw89_regulatory { [3 x i8] c"CO\00", [2 x i8] c"\02\02" }, %struct.rtw89_regulatory { [3 x i8] c"CR\00", [2 x i8] c"\02\02" }, %struct.rtw89_regulatory { [3 x i8] c"EC\00", [2 x i8] c"\02\02" }, %struct.rtw89_regulatory { [3 x i8] c"SV\00", [2 x i8] c"\02\02" }, %struct.rtw89_regulatory { [3 x i8] c"GT\00", [2 x i8] c"\02\02" }, %struct.rtw89_regulatory { [3 x i8] c"HN\00", [2 x i8] c"\02\02" }, %struct.rtw89_regulatory { [3 x i8] c"MX\00", [2 x i8] c"\09\09" }, %struct.rtw89_regulatory { [3 x i8] c"NI\00", [2 x i8] c"\02\02" }, %struct.rtw89_regulatory { [3 x i8] c"PA\00", [2 x i8] c"\02\02" }, %struct.rtw89_regulatory { [3 x i8] c"PY\00", [2 x i8] c"\02\02" }, %struct.rtw89_regulatory { [3 x i8] c"PE\00", [2 x i8] c"\02\02" }, %struct.rtw89_regulatory { [3 x i8] c"US\00", [2 x i8] c"\02\02" }, %struct.rtw89_regulatory { [3 x i8] c"UY\00", [2 x i8] c"\02\02" }, %struct.rtw89_regulatory { [3 x i8] c"VE\00", [2 x i8] c"\02\02" }, %struct.rtw89_regulatory { [3 x i8] c"PR\00", [2 x i8] c"\02\02" }, %struct.rtw89_regulatory { [3 x i8] c"DO\00", [2 x i8] c"\02\02" }, %struct.rtw89_regulatory { [3 x i8] c"AT\00", [2 x i8] c"\01\01" }, %struct.rtw89_regulatory { [3 x i8] c"BE\00", [2 x i8] c"\01\01" }, %struct.rtw89_regulatory { [3 x i8] c"CY\00", [2 x i8] c"\01\01" }, %struct.rtw89_regulatory { [3 x i8] c"CZ\00", [2 x i8] c"\01\01" }, %struct.rtw89_regulatory { [3 x i8] c"DK\00", [2 x i8] c"\01\01" }, %struct.rtw89_regulatory { [3 x i8] c"EE\00", [2 x i8] c"\01\01" }, %struct.rtw89_regulatory { [3 x i8] c"FI\00", [2 x i8] c"\01\01" }, %struct.rtw89_regulatory { [3 x i8] c"FR\00", [2 x i8] c"\01\01" }, %struct.rtw89_regulatory { [3 x i8] c"DE\00", [2 x i8] c"\01\01" }, %struct.rtw89_regulatory { [3 x i8] c"GR\00", [2 x i8] c"\01\01" }, %struct.rtw89_regulatory { [3 x i8] c"HU\00", [2 x i8] c"\01\01" }, %struct.rtw89_regulatory { [3 x i8] c"IS\00", [2 x i8] c"\01\01" }, %struct.rtw89_regulatory { [3 x i8] c"IE\00", [2 x i8] c"\01\01" }, %struct.rtw89_regulatory { [3 x i8] c"IT\00", [2 x i8] c"\01\01" }, %struct.rtw89_regulatory { [3 x i8] c"LV\00", [2 x i8] c"\01\01" }, %struct.rtw89_regulatory { [3 x i8] c"LI\00", [2 x i8] c"\01\01" }, %struct.rtw89_regulatory { [3 x i8] c"LT\00", [2 x i8] c"\01\01" }, %struct.rtw89_regulatory { [3 x i8] c"LU\00", [2 x i8] c"\01\01" }, %struct.rtw89_regulatory { [3 x i8] c"MT\00", [2 x i8] c"\01\01" }, %struct.rtw89_regulatory { [3 x i8] c"MC\00", [2 x i8] c"\01\01" }, %struct.rtw89_regulatory { [3 x i8] c"NL\00", [2 x i8] c"\01\01" }, %struct.rtw89_regulatory { [3 x i8] c"NO\00", [2 x i8] c"\01\01" }, %struct.rtw89_regulatory { [3 x i8] c"PL\00", [2 x i8] c"\01\01" }, %struct.rtw89_regulatory { [3 x i8] c"PT\00", [2 x i8] c"\01\01" }, %struct.rtw89_regulatory { [3 x i8] c"SK\00", [2 x i8] c"\01\01" }, %struct.rtw89_regulatory { [3 x i8] c"SI\00", [2 x i8] c"\01\01" }, %struct.rtw89_regulatory { [3 x i8] c"ES\00", [2 x i8] c"\01\01" }, %struct.rtw89_regulatory { [3 x i8] c"SE\00", [2 x i8] c"\01\01" }, %struct.rtw89_regulatory { [3 x i8] c"CH\00", [2 x i8] c"\01\01" }, %struct.rtw89_regulatory { [3 x i8] c"GB\00", [2 x i8] c"\01\01" }, %struct.rtw89_regulatory { [3 x i8] c"AL\00", [2 x i8] c"\01\01" }, %struct.rtw89_regulatory { [3 x i8] c"AZ\00", [2 x i8] c"\01\01" }, %struct.rtw89_regulatory { [3 x i8] c"BH\00", [2 x i8] c"\01\01" }, %struct.rtw89_regulatory { [3 x i8] c"BA\00", [2 x i8] c"\01\01" }, %struct.rtw89_regulatory { [3 x i8] c"BG\00", [2 x i8] c"\01\01" }, %struct.rtw89_regulatory { [3 x i8] c"HR\00", [2 x i8] c"\01\01" }, %struct.rtw89_regulatory { [3 x i8] c"EG\00", [2 x i8] c"\01\01" }, %struct.rtw89_regulatory { [3 x i8] c"GH\00", [2 x i8] c"\01\01" }, %struct.rtw89_regulatory { [3 x i8] c"IQ\00", [2 x i8] c"\01\01" }, %struct.rtw89_regulatory { [3 x i8] c"IL\00", [2 x i8] c"\01\01" }, %struct.rtw89_regulatory { [3 x i8] c"JO\00", [2 x i8] c"\01\01" }, %struct.rtw89_regulatory { [3 x i8] c"KZ\00", [2 x i8] c"\01\01" }, %struct.rtw89_regulatory { [3 x i8] c"KE\00", [2 x i8] c"\01\01" }, %struct.rtw89_regulatory { [3 x i8] c"KW\00", [2 x i8] c"\01\01" }, %struct.rtw89_regulatory { [3 x i8] c"KG\00", [2 x i8] c"\01\01" }, %struct.rtw89_regulatory { [3 x i8] c"LB\00", [2 x i8] c"\01\01" }, %struct.rtw89_regulatory { [3 x i8] c"LS\00", [2 x i8] c"\01\01" }, %struct.rtw89_regulatory { [3 x i8] c"MK\00", [2 x i8] c"\01\01" }, %struct.rtw89_regulatory { [3 x i8] c"MA\00", [2 x i8] c"\01\01" }, %struct.rtw89_regulatory { [3 x i8] c"MZ\00", [2 x i8] c"\01\01" }, %struct.rtw89_regulatory { [3 x i8] c"NA\00", [2 x i8] c"\01\01" }, %struct.rtw89_regulatory { [3 x i8] c"NG\00", [2 x i8] c"\01\01" }, %struct.rtw89_regulatory { [3 x i8] c"OM\00", [2 x i8] c"\01\01" }, %struct.rtw89_regulatory { [3 x i8] c"QA\00", [2 x i8] c"\0D\0D" }, %struct.rtw89_regulatory { [3 x i8] c"RO\00", [2 x i8] c"\01\01" }, %struct.rtw89_regulatory { [3 x i8] c"RU\00", [2 x i8] c"\01\01" }, %struct.rtw89_regulatory { [3 x i8] c"SA\00", [2 x i8] c"\01\01" }, %struct.rtw89_regulatory { [3 x i8] c"SN\00", [2 x i8] c"\01\01" }, %struct.rtw89_regulatory { [3 x i8] c"RS\00", [2 x i8] c"\01\01" }, %struct.rtw89_regulatory { [3 x i8] c"ME\00", [2 x i8] c"\01\01" }, %struct.rtw89_regulatory { [3 x i8] c"ZA\00", [2 x i8] c"\01\01" }, %struct.rtw89_regulatory { [3 x i8] c"TR\00", [2 x i8] c"\01\01" }, %struct.rtw89_regulatory { [3 x i8] c"UA\00", [2 x i8] c"\0B\0B" }, %struct.rtw89_regulatory { [3 x i8] c"AE\00", [2 x i8] c"\01\01" }, %struct.rtw89_regulatory { [3 x i8] c"YE\00", [2 x i8] c"\01\01" }, %struct.rtw89_regulatory { [3 x i8] c"ZW\00", [2 x i8] c"\01\01" }, %struct.rtw89_regulatory { [3 x i8] c"BD\00", [2 x i8] c"\01\01" }, %struct.rtw89_regulatory { [3 x i8] c"KH\00", [2 x i8] c"\01\01" }, %struct.rtw89_regulatory { [3 x i8] c"CN\00", [2 x i8] c"\0C\0C" }, %struct.rtw89_regulatory { [3 x i8] c"HK\00", [2 x i8] c"\01\01" }, %struct.rtw89_regulatory { [3 x i8] c"IN\00", [2 x i8] c"\01\01" }, %struct.rtw89_regulatory { [3 x i8] c"ID\00", [2 x i8] c"\01\01" }, %struct.rtw89_regulatory { [3 x i8] c"KR\00", [2 x i8] c"\06\06" }, %struct.rtw89_regulatory { [3 x i8] c"MY\00", [2 x i8] c"\01\01" }, %struct.rtw89_regulatory { [3 x i8] c"PK\00", [2 x i8] c"\01\01" }, %struct.rtw89_regulatory { [3 x i8] c"PH\00", [2 x i8] c"\01\01" }, %struct.rtw89_regulatory { [3 x i8] c"SG\00", [2 x i8] c"\01\01" }, %struct.rtw89_regulatory { [3 x i8] c"LK\00", [2 x i8] c"\01\01" }, %struct.rtw89_regulatory { [3 x i8] c"TW\00", [2 x i8] c"\02\02" }, %struct.rtw89_regulatory { [3 x i8] c"TH\00", [2 x i8] c"\01\01" }, %struct.rtw89_regulatory { [3 x i8] c"VN\00", [2 x i8] c"\01\01" }, %struct.rtw89_regulatory { [3 x i8] c"AU\00", [2 x i8] c"\07\07" }, %struct.rtw89_regulatory { [3 x i8] c"NZ\00", [2 x i8] c"\07\07" }, %struct.rtw89_regulatory { [3 x i8] c"PG\00", [2 x i8] c"\01\01" }, %struct.rtw89_regulatory { [3 x i8] c"CA\00", [2 x i8] c"\05\05" }, %struct.rtw89_regulatory { [3 x i8] c"JP\00", [2 x i8] c"\03\03" }, %struct.rtw89_regulatory { [3 x i8] c"JM\00", [2 x i8] c"\02\02" }, %struct.rtw89_regulatory { [3 x i8] c"AN\00", [2 x i8] c"\02\02" }, %struct.rtw89_regulatory { [3 x i8] c"TT\00", [2 x i8] c"\02\02" }, %struct.rtw89_regulatory { [3 x i8] c"TN\00", [2 x i8] c"\01\01" }, %struct.rtw89_regulatory { [3 x i8] c"AF\00", [2 x i8] c"\01\01" }, %struct.rtw89_regulatory { [3 x i8] c"DZ\00", [2 x i8] c"\01\01" }, %struct.rtw89_regulatory { [3 x i8] c"AS\00", [2 x i8] c"\02\02" }, %struct.rtw89_regulatory { [3 x i8] c"AD\00", [2 x i8] c"\01\01" }, %struct.rtw89_regulatory { [3 x i8] c"AO\00", [2 x i8] c"\01\01" }, %struct.rtw89_regulatory { [3 x i8] c"AI\00", [2 x i8] c"\01\01" }, %struct.rtw89_regulatory { [3 x i8] c"AQ\00", [2 x i8] c"\01\01" }, %struct.rtw89_regulatory { [3 x i8] c"AG\00", [2 x i8] c"\02\02" }, %struct.rtw89_regulatory { [3 x i8] c"AM\00", [2 x i8] c"\01\01" }, %struct.rtw89_regulatory { [3 x i8] c"AW\00", [2 x i8] c"\02\02" }, %struct.rtw89_regulatory { [3 x i8] c"BS\00", [2 x i8] c"\02\02" }, %struct.rtw89_regulatory { [3 x i8] c"BB\00", [2 x i8] c"\02\02" }, %struct.rtw89_regulatory { [3 x i8] c"BY\00", [2 x i8] c"\01\01" }, %struct.rtw89_regulatory { [3 x i8] c"BZ\00", [2 x i8] c"\02\02" }, %struct.rtw89_regulatory { [3 x i8] c"BJ\00", [2 x i8] c"\01\01" }, %struct.rtw89_regulatory { [3 x i8] c"BM\00", [2 x i8] c"\02\02" }, %struct.rtw89_regulatory { [3 x i8] c"BT\00", [2 x i8] c"\01\01" }, %struct.rtw89_regulatory { [3 x i8] c"BW\00", [2 x i8] c"\01\01" }, %struct.rtw89_regulatory { [3 x i8] c"BV\00", [2 x i8] c"\01\01" }, %struct.rtw89_regulatory { [3 x i8] c"IO\00", [2 x i8] c"\01\01" }, %struct.rtw89_regulatory { [3 x i8] c"VG\00", [2 x i8] c"\02\02" }, %struct.rtw89_regulatory { [3 x i8] c"BN\00", [2 x i8] c"\01\01" }, %struct.rtw89_regulatory { [3 x i8] c"BF\00", [2 x i8] c"\01\01" }, %struct.rtw89_regulatory { [3 x i8] c"MM\00", [2 x i8] c"\01\01" }, %struct.rtw89_regulatory { [3 x i8] c"BI\00", [2 x i8] c"\01\01" }, %struct.rtw89_regulatory { [3 x i8] c"CM\00", [2 x i8] c"\01\01" }, %struct.rtw89_regulatory { [3 x i8] c"CV\00", [2 x i8] c"\01\01" }, %struct.rtw89_regulatory { [3 x i8] c"KY\00", [2 x i8] c"\02\02" }, %struct.rtw89_regulatory { [3 x i8] c"CF\00", [2 x i8] c"\01\01" }, %struct.rtw89_regulatory { [3 x i8] c"TD\00", [2 x i8] c"\01\01" }, %struct.rtw89_regulatory { [3 x i8] c"CX\00", [2 x i8] c"\07\07" }, %struct.rtw89_regulatory { [3 x i8] c"CC\00", [2 x i8] c"\01\01" }, %struct.rtw89_regulatory { [3 x i8] c"KM\00", [2 x i8] c"\01\01" }, %struct.rtw89_regulatory { [3 x i8] c"CG\00", [2 x i8] c"\01\01" }, %struct.rtw89_regulatory { [3 x i8] c"CD\00", [2 x i8] c"\01\01" }, %struct.rtw89_regulatory { [3 x i8] c"CK\00", [2 x i8] c"\01\01" }, %struct.rtw89_regulatory { [3 x i8] c"CI\00", [2 x i8] c"\01\01" }, %struct.rtw89_regulatory { [3 x i8] c"DJ\00", [2 x i8] c"\01\01" }, %struct.rtw89_regulatory { [3 x i8] c"DM\00", [2 x i8] c"\02\02" }, %struct.rtw89_regulatory { [3 x i8] c"GQ\00", [2 x i8] c"\01\01" }, %struct.rtw89_regulatory { [3 x i8] c"ER\00", [2 x i8] c"\01\01" }, %struct.rtw89_regulatory { [3 x i8] c"ET\00", [2 x i8] c"\01\01" }, %struct.rtw89_regulatory { [3 x i8] c"FK\00", [2 x i8] c"\01\01" }, %struct.rtw89_regulatory { [3 x i8] c"FO\00", [2 x i8] c"\01\01" }, %struct.rtw89_regulatory { [3 x i8] c"FJ\00", [2 x i8] c"\02\02" }, %struct.rtw89_regulatory { [3 x i8] c"GF\00", [2 x i8] c"\01\01" }, %struct.rtw89_regulatory { [3 x i8] c"PF\00", [2 x i8] c"\01\01" }, %struct.rtw89_regulatory { [3 x i8] c"TF\00", [2 x i8] c"\01\01" }, %struct.rtw89_regulatory { [3 x i8] c"GA\00", [2 x i8] c"\01\01" }, %struct.rtw89_regulatory { [3 x i8] c"GM\00", [2 x i8] c"\01\01" }, %struct.rtw89_regulatory { [3 x i8] c"GE\00", [2 x i8] c"\01\01" }, %struct.rtw89_regulatory { [3 x i8] c"GI\00", [2 x i8] c"\01\01" }, %struct.rtw89_regulatory { [3 x i8] c"GL\00", [2 x i8] c"\01\01" }, %struct.rtw89_regulatory { [3 x i8] c"GD\00", [2 x i8] c"\02\02" }, %struct.rtw89_regulatory { [3 x i8] c"GP\00", [2 x i8] c"\01\01" }, %struct.rtw89_regulatory { [3 x i8] c"GU\00", [2 x i8] c"\02\02" }, %struct.rtw89_regulatory { [3 x i8] c"GG\00", [2 x i8] c"\01\01" }, %struct.rtw89_regulatory { [3 x i8] c"GN\00", [2 x i8] c"\01\01" }, %struct.rtw89_regulatory { [3 x i8] c"GW\00", [2 x i8] c"\01\01" }, %struct.rtw89_regulatory { [3 x i8] c"GY\00", [2 x i8] c"\08\08" }, %struct.rtw89_regulatory { [3 x i8] c"HT\00", [2 x i8] c"\02\02" }, %struct.rtw89_regulatory { [3 x i8] c"HM\00", [2 x i8] c"\07\07" }, %struct.rtw89_regulatory { [3 x i8] c"VA\00", [2 x i8] c"\01\01" }, %struct.rtw89_regulatory { [3 x i8] c"IM\00", [2 x i8] c"\01\01" }, %struct.rtw89_regulatory { [3 x i8] c"JE\00", [2 x i8] c"\01\01" }, %struct.rtw89_regulatory { [3 x i8] c"KI\00", [2 x i8] c"\01\01" }, %struct.rtw89_regulatory { [3 x i8] c"LA\00", [2 x i8] c"\01\01" }, %struct.rtw89_regulatory { [3 x i8] c"LR\00", [2 x i8] c"\01\01" }, %struct.rtw89_regulatory { [3 x i8] c"LY\00", [2 x i8] c"\01\01" }, %struct.rtw89_regulatory { [3 x i8] c"MO\00", [2 x i8] c"\01\01" }, %struct.rtw89_regulatory { [3 x i8] c"MG\00", [2 x i8] c"\01\01" }, %struct.rtw89_regulatory { [3 x i8] c"MW\00", [2 x i8] c"\01\01" }, %struct.rtw89_regulatory { [3 x i8] c"MV\00", [2 x i8] c"\01\01" }, %struct.rtw89_regulatory { [3 x i8] c"ML\00", [2 x i8] c"\01\01" }, %struct.rtw89_regulatory { [3 x i8] c"MH\00", [2 x i8] c"\02\02" }, %struct.rtw89_regulatory { [3 x i8] c"MQ\00", [2 x i8] c"\01\01" }, %struct.rtw89_regulatory { [3 x i8] c"MR\00", [2 x i8] c"\01\01" }, %struct.rtw89_regulatory { [3 x i8] c"MU\00", [2 x i8] c"\01\01" }, %struct.rtw89_regulatory { [3 x i8] c"YT\00", [2 x i8] c"\01\01" }, %struct.rtw89_regulatory { [3 x i8] c"FM\00", [2 x i8] c"\02\02" }, %struct.rtw89_regulatory { [3 x i8] c"MD\00", [2 x i8] c"\01\01" }, %struct.rtw89_regulatory { [3 x i8] c"MN\00", [2 x i8] c"\01\01" }, %struct.rtw89_regulatory { [3 x i8] c"MS\00", [2 x i8] c"\01\01" }, %struct.rtw89_regulatory { [3 x i8] c"NR\00", [2 x i8] c"\01\01" }, %struct.rtw89_regulatory { [3 x i8] c"NP\00", [2 x i8] c"\01\01" }, %struct.rtw89_regulatory { [3 x i8] c"NC\00", [2 x i8] c"\01\01" }, %struct.rtw89_regulatory { [3 x i8] c"NE\00", [2 x i8] c"\01\01" }, %struct.rtw89_regulatory { [3 x i8] c"NU\00", [2 x i8] c"\07\07" }, %struct.rtw89_regulatory { [3 x i8] c"NF\00", [2 x i8] c"\07\07" }, %struct.rtw89_regulatory { [3 x i8] c"MP\00", [2 x i8] c"\02\02" }, %struct.rtw89_regulatory { [3 x i8] c"PW\00", [2 x i8] c"\02\02" }, %struct.rtw89_regulatory { [3 x i8] c"RE\00", [2 x i8] c"\01\01" }, %struct.rtw89_regulatory { [3 x i8] c"RW\00", [2 x i8] c"\01\01" }, %struct.rtw89_regulatory { [3 x i8] c"SH\00", [2 x i8] c"\01\01" }, %struct.rtw89_regulatory { [3 x i8] c"KN\00", [2 x i8] c"\02\02" }, %struct.rtw89_regulatory { [3 x i8] c"LC\00", [2 x i8] c"\02\02" }, %struct.rtw89_regulatory { [3 x i8] c"MF\00", [2 x i8] c"\02\02" }, %struct.rtw89_regulatory { [3 x i8] c"SX\00", [2 x i8] c"\02\02" }, %struct.rtw89_regulatory { [3 x i8] c"PM\00", [2 x i8] c"\01\01" }, %struct.rtw89_regulatory { [3 x i8] c"VC\00", [2 x i8] c"\02\02" }, %struct.rtw89_regulatory { [3 x i8] c"WS\00", [2 x i8] c"\02\02" }, %struct.rtw89_regulatory { [3 x i8] c"SM\00", [2 x i8] c"\01\01" }, %struct.rtw89_regulatory { [3 x i8] c"ST\00", [2 x i8] c"\02\02" }, %struct.rtw89_regulatory { [3 x i8] c"SC\00", [2 x i8] c"\02\02" }, %struct.rtw89_regulatory { [3 x i8] c"SL\00", [2 x i8] c"\01\01" }, %struct.rtw89_regulatory { [3 x i8] c"SB\00", [2 x i8] c"\01\01" }, %struct.rtw89_regulatory { [3 x i8] c"SO\00", [2 x i8] c"\01\01" }, %struct.rtw89_regulatory { [3 x i8] c"GS\00", [2 x i8] c"\01\01" }, %struct.rtw89_regulatory { [3 x i8] c"SR\00", [2 x i8] c"\02\02" }, %struct.rtw89_regulatory { [3 x i8] c"SJ\00", [2 x i8] c"\01\01" }, %struct.rtw89_regulatory { [3 x i8] c"SZ\00", [2 x i8] c"\01\01" }, %struct.rtw89_regulatory { [3 x i8] c"TJ\00", [2 x i8] c"\01\01" }, %struct.rtw89_regulatory { [3 x i8] c"TZ\00", [2 x i8] c"\01\01" }, %struct.rtw89_regulatory { [3 x i8] c"TG\00", [2 x i8] c"\01\01" }, %struct.rtw89_regulatory { [3 x i8] c"TK\00", [2 x i8] c"\07\07" }, %struct.rtw89_regulatory { [3 x i8] c"TO\00", [2 x i8] c"\01\01" }, %struct.rtw89_regulatory { [3 x i8] c"TM\00", [2 x i8] c"\01\01" }, %struct.rtw89_regulatory { [3 x i8] c"TC\00", [2 x i8] c"\01\01" }, %struct.rtw89_regulatory { [3 x i8] c"TV\00", [2 x i8] c"\01\04" }, %struct.rtw89_regulatory { [3 x i8] c"UG\00", [2 x i8] c"\01\01" }, %struct.rtw89_regulatory { [3 x i8] c"VI\00", [2 x i8] c"\02\02" }, %struct.rtw89_regulatory { [3 x i8] c"UZ\00", [2 x i8] c"\01\01" }, %struct.rtw89_regulatory { [3 x i8] c"VU\00", [2 x i8] c"\01\01" }, %struct.rtw89_regulatory { [3 x i8] c"WF\00", [2 x i8] c"\01\01" }, %struct.rtw89_regulatory { [3 x i8] c"EH\00", [2 x i8] c"\01\01" }, %struct.rtw89_regulatory { [3 x i8] c"ZM\00", [2 x i8] c"\01\01" }, %struct.rtw89_regulatory { [3 x i8] c"IR\00", [2 x i8] c"\01\01" }, %struct.rtw89_regulatory { [3 x i8] c"PS\00", [2 x i8] c"\01\01" }], [314 x i8] zeroinitializer }, align 32
@rtw89_ww_regd = internal constant { %struct.rtw89_regulatory, [27 x i8] } { %struct.rtw89_regulatory { [3 x i8] c"00\00", [2 x i8] zeroinitializer }, [27 x i8] zeroinitializer }, align 32
@___asan_gen_.9 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 295, i32 4 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 297, i32 3 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 305, i32 2 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 339, i32 3 }
@___asan_gen_.36 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 344, i32 2 }
@___asan_gen_.39 = private unnamed_addr constant [15 x i8] c"rtw89_regd_map\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 17, i32 38 }
@___asan_gen_.42 = private unnamed_addr constant [14 x i8] c"rtw89_ww_regd\00", align 1
@___asan_gen_.43 = private constant [45 x i8] c"../drivers/net/wireless/realtek/rtw89/regd.c\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 14, i32 38 }
@llvm.compiler.used = appending global [13 x ptr] [ptr @rtw89_regd_init._entry, ptr @rtw89_regd_init._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @rtw89_regd_map, ptr @rtw89_ww_regd], section "llvm.metadata"
@0 = internal global [12 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_regd_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 98, i32 160, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_regd_map to i32), i32 1190, i32 1504, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_ww_regd to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtw89_regd_init(ptr noundef %rtwdev, ptr nocapture noundef readnone %reg_notifier) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rtwdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rtwdev, align 128
  %wiphy1 = getelementptr inbounds %struct.ieee80211_hw, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %wiphy1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wiphy1, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %country_code = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 8, i32 4
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.06.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 238
  br i1 %exitcond.not.i, label %for.cond.i.if.end27_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

for.cond.i.if.end27_crit_edge:                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end27

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %if.end
  %i.06.i = phi i32 [ 0, %if.end ], [ %inc.i, %for.cond.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [238 x %struct.rtw89_regulatory], ptr @rtw89_regd_map, i32 0, i32 %i.06.i
  %bcmp.i = tail call i32 @bcmp(ptr noundef dereferenceable(2) %arrayidx.i, ptr noundef dereferenceable(2) %country_code, i32 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool.not.i, label %rtw89_regd_find_reg_by_name.exit, label %for.cond.i

rtw89_regd_find_reg_by_name.exit:                 ; preds = %for.body.i
  %cmp.i = icmp eq ptr %arrayidx.i, @rtw89_ww_regd
  br i1 %cmp.i, label %rtw89_regd_find_reg_by_name.exit.if.end27_crit_edge, label %if.then3

rtw89_regd_find_reg_by_name.exit.if.end27_crit_edge: ; preds = %rtw89_regd_find_reg_by_name.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end27

if.then3:                                         ; preds = %rtw89_regd_find_reg_by_name.exit
  %regd = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 49
  %4 = ptrtoint ptr %regd to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %arrayidx.i, ptr %regd, align 8
  %regulatory_flags = getelementptr inbounds %struct.wiphy, ptr %3, i32 0, i32 12
  %5 = ptrtoint ptr %regulatory_flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %regulatory_flags, align 4
  %or5 = or i32 %6, 18
  store i32 %or5, ptr %regulatory_flags, align 4
  %7 = ptrtoint ptr %rtwdev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rtwdev, align 128
  %wiphy7 = getelementptr inbounds %struct.ieee80211_hw, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %wiphy7 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %wiphy7, align 8
  %11 = load ptr, ptr %regd, align 8
  %call10 = tail call i32 @regulatory_hint(ptr noundef %10, ptr noundef %11) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.then3.if.end13_crit_edge, label %do.end

if.then3.if.end13_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end13

do.end:                                           ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #6
  %dev = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 1
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %13, ptr noundef nonnull @.str, i32 noundef %call10) #8
  br label %if.end13

if.end13:                                         ; preds = %do.end, %if.then3.if.end13_crit_edge
  %14 = ptrtoint ptr %country_code to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %country_code, align 1
  %conv = zext i8 %15 to i32
  %arrayidx18 = getelementptr %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 8, i32 4, i32 1
  %16 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx18, align 1
  %conv19 = zext i8 %17 to i32
  %18 = ptrtoint ptr %regd to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regd, align 8
  %txpwr_regd = getelementptr inbounds %struct.rtw89_regulatory, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %txpwr_regd to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %txpwr_regd, align 1
  %conv22 = zext i8 %21 to i32
  %arrayidx25 = getelementptr %struct.rtw89_regulatory, ptr %19, i32 0, i32 1, i32 1
  %22 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx25, align 1
  %conv26 = zext i8 %23 to i32
  tail call void (ptr, i32, ptr, ...) @__rtw89_debug(ptr noundef %rtwdev, i32 noundef 256, ptr noundef nonnull @.str.5, i32 noundef %conv, i32 noundef %conv19, i32 noundef %conv22, i32 noundef %conv26) #4
  br label %cleanup

if.end27:                                         ; preds = %rtw89_regd_find_reg_by_name.exit.if.end27_crit_edge, %for.cond.i.if.end27_crit_edge
  %regd28 = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 49
  %24 = ptrtoint ptr %regd28 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regd28, align 8
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %25, align 1
  %conv31 = zext i8 %27 to i32
  %arrayidx34 = getelementptr [3 x i8], ptr %25, i32 0, i32 1
  %28 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx34, align 1
  %conv35 = zext i8 %29 to i32
  %txpwr_regd37 = getelementptr inbounds %struct.rtw89_regulatory, ptr %25, i32 0, i32 1
  %30 = ptrtoint ptr %txpwr_regd37 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %txpwr_regd37, align 1
  %conv39 = zext i8 %31 to i32
  %arrayidx42 = getelementptr %struct.rtw89_regulatory, ptr %25, i32 0, i32 1, i32 1
  %32 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx42, align 1
  %conv43 = zext i8 %33 to i32
  tail call void (ptr, i32, ptr, ...) @__rtw89_debug(ptr noundef %rtwdev, i32 noundef 256, ptr noundef nonnull @.str.6, i32 noundef %conv31, i32 noundef %conv35, i32 noundef %conv39, i32 noundef %conv43) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end27, %if.end13, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end27 ], [ 0, %if.end13 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulatory_hint(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__rtw89_debug(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw89_regd_notifier(ptr noundef %wiphy, ptr nocapture noundef readonly %request) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @wiphy_to_ieee80211_hw(ptr noundef %wiphy) #4
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %call, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %mutex = getelementptr inbounds %struct.rtw89_dev, ptr %1, i32 0, i32 10
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #4
  tail call void @rtw89_leave_ps_mode(ptr noundef %1) #4
  %regd = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 0, i32 55
  %2 = ptrtoint ptr %regd to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regd, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, ptr, ...) @__rtw89_debug(ptr noundef %1, i32 noundef 256, ptr noundef nonnull @.str.7) #4
  br label %exit

if.end:                                           ; preds = %entry
  %alpha2.i = getelementptr inbounds %struct.regulatory_request, ptr %request, i32 0, i32 4
  br label %for.body.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i
  %inc.i.i = add nuw nsw i32 %i.06.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 238
  br i1 %exitcond.not.i.i, label %rtw89_regd_find_reg_by_name.exit.thread.i, label %for.cond.i.i.for.body.i.i_crit_edge

for.cond.i.i.for.body.i.i_crit_edge:              ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.cond.i.i.for.body.i.i_crit_edge, %if.end
  %i.06.i.i = phi i32 [ 0, %if.end ], [ %inc.i.i, %for.cond.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr [238 x %struct.rtw89_regulatory], ptr @rtw89_regd_map, i32 0, i32 %i.06.i.i
  %bcmp.i.i = tail call i32 @bcmp(ptr noundef dereferenceable(2) %arrayidx.i.i, ptr noundef dereferenceable(2) %alpha2.i, i32 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i)
  %tobool.not.i.i = icmp eq i32 %bcmp.i.i, 0
  br i1 %tobool.not.i.i, label %rtw89_regd_find_reg_by_name.exit.i, label %for.cond.i.i

rtw89_regd_find_reg_by_name.exit.i:               ; preds = %for.body.i.i
  %regd.i = getelementptr inbounds %struct.rtw89_dev, ptr %1, i32 0, i32 49
  %4 = ptrtoint ptr %regd.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %arrayidx.i.i, ptr %regd.i, align 8
  %initiator.i = getelementptr inbounds %struct.regulatory_request, ptr %request, i32 0, i32 2
  %5 = ptrtoint ptr %initiator.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %initiator.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp.i = icmp ne i32 %6, 1
  %cmp.i.i = icmp eq ptr %arrayidx.i.i, @rtw89_ww_regd
  %or.cond.i = or i1 %cmp.i.i, %cmp.i
  br i1 %or.cond.i, label %rtw89_regd_find_reg_by_name.exit.i.if.else.i_crit_edge, label %if.then.i

rtw89_regd_find_reg_by_name.exit.i.if.else.i_crit_edge: ; preds = %rtw89_regd_find_reg_by_name.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else.i

rtw89_regd_find_reg_by_name.exit.thread.i:        ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %regd8.i = getelementptr inbounds %struct.rtw89_dev, ptr %1, i32 0, i32 49
  %7 = ptrtoint ptr %regd8.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @rtw89_ww_regd, ptr %regd8.i, align 8
  br label %if.else.i

if.then.i:                                        ; preds = %rtw89_regd_find_reg_by_name.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  %regulatory_flags.i = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 0, i32 12
  %8 = ptrtoint ptr %regulatory_flags.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %regulatory_flags.i, align 4
  %or.i = or i32 %9, 16
  store i32 %or.i, ptr %regulatory_flags.i, align 4
  br label %rtw89_regd_notifier_apply.exit

if.else.i:                                        ; preds = %rtw89_regd_find_reg_by_name.exit.thread.i, %rtw89_regd_find_reg_by_name.exit.i.if.else.i_crit_edge
  %regulatory_flags3.i = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 0, i32 12
  %10 = ptrtoint ptr %regulatory_flags3.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %regulatory_flags3.i, align 4
  %and.i = and i32 %11, -17
  store i32 %and.i, ptr %regulatory_flags3.i, align 4
  br label %rtw89_regd_notifier_apply.exit

rtw89_regd_notifier_apply.exit:                   ; preds = %if.else.i, %if.then.i
  %12 = ptrtoint ptr %alpha2.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %alpha2.i, align 4
  %conv = zext i8 %13 to i32
  %arrayidx2 = getelementptr %struct.regulatory_request, ptr %request, i32 0, i32 4, i32 1
  %14 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx2, align 1
  %conv3 = zext i8 %15 to i32
  %initiator = getelementptr inbounds %struct.regulatory_request, ptr %request, i32 0, i32 2
  %16 = ptrtoint ptr %initiator to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %initiator, align 4
  %regd4 = getelementptr inbounds %struct.rtw89_dev, ptr %1, i32 0, i32 49
  %18 = ptrtoint ptr %regd4 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regd4, align 8
  %txpwr_regd = getelementptr inbounds %struct.rtw89_regulatory, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %txpwr_regd to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %txpwr_regd, align 1
  %conv6 = zext i8 %21 to i32
  %arrayidx9 = getelementptr %struct.rtw89_regulatory, ptr %19, i32 0, i32 1, i32 1
  %22 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx9, align 1
  %conv10 = zext i8 %23 to i32
  tail call void (ptr, i32, ptr, ...) @__rtw89_debug(ptr noundef %1, i32 noundef 256, ptr noundef nonnull @.str.8, i32 noundef %conv, i32 noundef %conv3, i32 noundef %17, i32 noundef %conv6, i32 noundef %conv10) #4
  %current_channel.i = getelementptr inbounds %struct.rtw89_dev, ptr %1, i32 0, i32 4, i32 2
  %24 = ptrtoint ptr %current_channel.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %current_channel.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool.not.i = icmp eq i8 %25, 0
  br i1 %tobool.not.i, label %rtw89_regd_notifier_apply.exit.exit_crit_edge, label %if.end.i

rtw89_regd_notifier_apply.exit.exit_crit_edge:    ; preds = %rtw89_regd_notifier_apply.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %exit

if.end.i:                                         ; preds = %rtw89_regd_notifier_apply.exit
  %chip1.i = getelementptr inbounds %struct.rtw89_dev, ptr %1, i32 0, i32 3
  %26 = ptrtoint ptr %chip1.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %chip1.i, align 4
  %ops.i = getelementptr inbounds %struct.rtw89_chip_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ops.i, align 4
  %set_txpwr.i = getelementptr inbounds %struct.rtw89_chip_ops, ptr %29, i32 0, i32 15
  %30 = ptrtoint ptr %set_txpwr.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %set_txpwr.i, align 4
  %tobool2.not.i = icmp eq ptr %31, null
  br i1 %tobool2.not.i, label %if.end.i.exit_crit_edge, label %if.then3.i

if.end.i.exit_crit_edge:                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void %31(ptr noundef %1) #4
  br label %exit

exit:                                             ; preds = %if.then3.i, %if.end.i.exit_crit_edge, %rtw89_regd_notifier_apply.exit.exit_crit_edge, %if.then
  tail call void @mutex_unlock(ptr noundef %mutex) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @wiphy_to_ieee80211_hw(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw89_leave_ps_mode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind readonly willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { nobuiltin nounwind }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !12, !14, !16, !18}
!llvm.module.flags = !{!20, !21, !22, !23, !24, !25, !26, !27}
!llvm.ident = !{!28}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/realtek/rtw89/regd.c", i32 295, i32 4}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @rtw89_regd_init._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @rtw89_regd_init._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/realtek/rtw89/regd.c", i32 297, i32 3}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/realtek/rtw89/regd.c", i32 305, i32 2}
!12 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/realtek/rtw89/regd.c", i32 339, i32 3}
!14 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/realtek/rtw89/regd.c", i32 344, i32 2}
!16 = !{ptr @rtw89_regd_map, !17, !"rtw89_regd_map", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/realtek/rtw89/regd.c", i32 17, i32 38}
!18 = !{ptr @rtw89_ww_regd, !19, !"rtw89_ww_regd", i1 false, i1 false}
!19 = !{!"../drivers/net/wireless/realtek/rtw89/regd.c", i32 14, i32 38}
!20 = !{i32 1, !"wchar_size", i32 2}
!21 = !{i32 1, !"min_enum_size", i32 4}
!22 = !{i32 8, !"branch-target-enforcement", i32 0}
!23 = !{i32 8, !"sign-return-address", i32 0}
!24 = !{i32 8, !"sign-return-address-all", i32 0}
!25 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!26 = !{i32 7, !"uwtable", i32 1}
!27 = !{i32 7, !"frame-pointer", i32 2}
!28 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
