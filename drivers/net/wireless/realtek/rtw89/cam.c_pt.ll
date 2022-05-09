; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/realtek/rtw89/cam.c_pt.bc'
source_filename = "../drivers/net/wireless/realtek/rtw89/cam.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.ieee80211_key_conf = type { %struct.atomic64_t, i32, i8, i8, i8, i8, i16, i8, [0 x i8] }
%struct.atomic64_t = type { i64 }
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
%struct.rtw89_chip_info = type { i32, ptr, ptr, i32, i16, i8, ptr, ptr, [2 x i32], i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, ptr, ptr, ptr, [4 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i32, i32, i8, i8, i8, i8, ptr, ptr, i8, i8, ptr, i8, ptr, i8, ptr, i8 }
%struct.rtw89_sec_cam_entry = type { i8, i8, i8, i8, [32 x i8] }
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
%struct.ieee80211_vif = type { i32, %struct.ieee80211_bss_conf, [6 x i8], i8, i8, i8, i8, [4 x i8], ptr, ptr, i32, i32, ptr, i8, i8, [4 x i8], i8, i8, ptr, [0 x i8] }
%struct.ieee80211_bss_conf = type { ptr, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i8, i8, i8, i16, i16, i64, i32, i8, i32, ptr, [6 x i32], i16, i32, i32, i32, i32, %struct.cfg80211_chan_def, %struct.ieee80211_mu_group_data, [4 x i32], i32, i8, i8, i8, [32 x i8], i32, i8, i32, i32, %struct.ieee80211_p2p_noa_attr, i8, i16, i8, i8, ptr, i8, [6 x i8], i8, i8, i8, i8, %struct.anon.129, %struct.ieee80211_he_obss_pd, %struct.cfg80211_he_bss_color, %struct.ieee80211_fils_discovery, i32, i8, %struct.cfg80211_bitrate_mask, i32, [8 x %struct.ieee80211_tx_pwr_env], i8, i8 }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.ieee80211_mu_group_data = type { [8 x i8], [16 x i8] }
%struct.ieee80211_p2p_noa_attr = type { i8, i8, [4 x %struct.ieee80211_p2p_noa_desc] }
%struct.ieee80211_p2p_noa_desc = type <{ i8, i32, i32, i32 }>
%struct.anon.129 = type { i32, i16 }
%struct.ieee80211_he_obss_pd = type { i8, i8, i8, i8, i8, [8 x i8], [8 x i8] }
%struct.cfg80211_he_bss_color = type { i8, i8, i8 }
%struct.ieee80211_fils_discovery = type { i32, i32 }
%struct.cfg80211_bitrate_mask = type { [6 x %struct.anon.130] }
%struct.anon.130 = type { i32, [10 x i8], [8 x i16], [8 x i16], i32, i32, i32 }
%struct.ieee80211_tx_pwr_env = type { i8, [8 x i8] }
%struct.rtw89_addr_cam_entry = type <{ i8, i8, i8, i16, [6 x i8], i8, [1 x i32], [7 x i8], [7 x i8], [2 x i8], [7 x ptr] }>
%struct.rtw89_vif = type { %struct.list_head, i8, i8, [6 x i8], [6 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.rtw89_addr_cam_entry, %struct.rtw89_bssid_cam_entry, [4 x %struct.ieee80211_tx_queue_params], %struct.rtw89_traffic_stats, %struct.rtw89_phy_rate_pattern }
%struct.rtw89_bssid_cam_entry = type { [6 x i8], i8, i8, i8, i8, i8, i8 }
%struct.ieee80211_tx_queue_params = type { i16, i16, i16, i8, i8, i8, i8, %struct.ieee80211_he_mu_edca_param_ac_rec }
%struct.ieee80211_he_mu_edca_param_ac_rec = type { i8, i8, i8 }
%struct.rtw89_phy_rate_pattern = type { i64, i16, i8, i8 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
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

@rtw89_cam_sec_key_add._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 362, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"failed to install key type %d ext %d: %d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rtw89_cam_sec_key_add\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/net/wireless/realtek/rtw89/cam.c\00", [55 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rtw89_cam_sec_key_add._entry_ptr = internal global ptr @rtw89_cam_sec_key_add._entry, section ".printk_index", align 4
@rtw89_cam_sec_key_del._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 385, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"No iface for deleting sec cam\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rtw89_cam_sec_key_del\00", [42 x i8] zeroinitializer }, align 32
@rtw89_cam_sec_key_del._entry_ptr = internal global ptr @rtw89_cam_sec_key_del._entry, section ".printk_index", align 4
@rtw89_cam_sec_key_del._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.6, ptr @.str.2, i32 401, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to update cam del key: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@rtw89_cam_sec_key_del._entry_ptr.9 = internal global ptr @rtw89_cam_sec_key_del._entry.7, section ".printk_index", align 4
@rtw89_cam_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.2, i32 554, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed to init addr cam\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rtw89_cam_init\00", [17 x i8] zeroinitializer }, align 32
@rtw89_cam_init._entry_ptr = internal global ptr @rtw89_cam_init._entry, section ".printk_index", align 4
@rtw89_cam_init._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.11, ptr @.str.2, i32 560, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to init bssid cam\0A\00", [38 x i8] zeroinitializer }, align 32
@rtw89_cam_init._entry_ptr.14 = internal global ptr @rtw89_cam_init._entry.12, section ".printk_index", align 4
@rtw89_cam_sec_key_install._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.2, i32 272, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"invalid sec key length %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"rtw89_cam_sec_key_install\00", [38 x i8] zeroinitializer }, align 32
@rtw89_cam_sec_key_install._entry_ptr = internal global ptr @rtw89_cam_sec_key_install._entry, section ".printk_index", align 4
@rtw89_cam_sec_key_install._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.16, ptr @.str.2, i32 279, ptr @.str.19, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"no available sec cam: %d ext: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@rtw89_cam_sec_key_install._entry_ptr.20 = internal global ptr @rtw89_cam_sec_key_install._entry.17, section ".printk_index", align 4
@rtw89_cam_sec_key_install._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.16, ptr @.str.2, i32 296, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to send sec key cmd: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@rtw89_cam_sec_key_install._entry_ptr.23 = internal global ptr @rtw89_cam_sec_key_install._entry.21, section ".printk_index", align 4
@rtw89_cam_sec_key_install._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.16, ptr @.str.2, i32 303, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to attach sec cam: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@rtw89_cam_sec_key_install._entry_ptr.26 = internal global ptr @rtw89_cam_sec_key_install._entry.24, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@rtw89_cam_send_sec_key_cmd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.2, i32 59, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to get sec key command\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"rtw89_cam_send_sec_key_cmd\00", [37 x i8] zeroinitializer }, align 32
@rtw89_cam_send_sec_key_cmd._entry_ptr = internal global ptr @rtw89_cam_send_sec_key_cmd._entry, section ".printk_index", align 4
@rtw89_cam_send_sec_key_cmd._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.28, ptr @.str.2, i32 71, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to send sec key h2c: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@rtw89_cam_send_sec_key_cmd._entry_ptr.31 = internal global ptr @rtw89_cam_send_sec_key_cmd._entry.29, section ".printk_index", align 4
@rtw89_cam_send_sec_key_cmd._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.28, ptr @.str.2, i32 81, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"failed to get ext sec key command\0A\00", [61 x i8] zeroinitializer }, align 32
@rtw89_cam_send_sec_key_cmd._entry_ptr.34 = internal global ptr @rtw89_cam_send_sec_key_cmd._entry.32, section ".printk_index", align 4
@rtw89_cam_send_sec_key_cmd._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.28, ptr @.str.2, i32 93, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to send ext sec key h2c: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@rtw89_cam_send_sec_key_cmd._entry_ptr.37 = internal global ptr @rtw89_cam_send_sec_key_cmd._entry.35, section ".printk_index", align 4
@rtw89_cam_attach_sec_cam._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.2, i32 229, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"No iface for adding sec cam\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"rtw89_cam_attach_sec_cam\00", [39 x i8] zeroinitializer }, align 32
@rtw89_cam_attach_sec_cam._entry_ptr = internal global ptr @rtw89_cam_attach_sec_cam._entry, section ".printk_index", align 4
@rtw89_cam_attach_sec_cam._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.39, ptr @.str.2, i32 238, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"failed to get addr cam key idx %d, %d\0A\00", [57 x i8] zeroinitializer }, align 32
@rtw89_cam_attach_sec_cam._entry_ptr.42 = internal global ptr @rtw89_cam_attach_sec_cam._entry.40, section ".printk_index", align 4
@rtw89_cam_attach_sec_cam._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.39, ptr @.str.2, i32 250, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"failed to update addr cam sec entry: %d\0A\00", [55 x i8] zeroinitializer }, align 32
@rtw89_cam_attach_sec_cam._entry_ptr.45 = internal global ptr @rtw89_cam_attach_sec_cam._entry.43, section ".printk_index", align 4
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.46 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.48 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@rtw89_cam_init_addr_cam._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.50, ptr @.str.2, i32 477, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to get available addr cam\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"rtw89_cam_init_addr_cam\00", [40 x i8] zeroinitializer }, align 32
@rtw89_cam_init_addr_cam._entry_ptr = internal global ptr @rtw89_cam_init_addr_cam._entry, section ".printk_index", align 4
@rtw89_cam_init_bssid_cam._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.52, ptr @.str.2, i32 525, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"failed to get available bssid cam\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"rtw89_cam_init_bssid_cam\00", [39 x i8] zeroinitializer }, align 32
@rtw89_cam_init_bssid_cam._entry_ptr = internal global ptr @rtw89_cam_init_bssid_cam._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 32, i64 1027073, i64 1027076, i64 1027077, i64 1027080, i64 1027081, i64 1027082]
@__sancov_gen_cov_switch_values.53 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.54 = internal global [4 x i64] [i64 2, i64 2, i64 1, i64 2]
@__sancov_gen_cov_switch_values.55 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 3]
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 361, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 385, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 401, i32 4 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 554, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 560, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 272, i32 3 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 278, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 296, i32 3 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 303, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 59, i32 3 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 71, i32 3 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 81, i32 3 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 93, i32 3 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 229, i32 3 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 237, i32 3 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 249, i32 3 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 695, i32 2 }
@___asan_gen_.189 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 723, i32 2 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 477, i32 3 }
@___asan_gen_.200 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.206 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.207 = private constant [44 x i8] c"../drivers/net/wireless/realtek/rtw89/cam.c\00", align 1
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 525, i32 3 }
@llvm.compiler.used = appending global [69 x ptr] [ptr @rtw89_cam_attach_sec_cam._entry, ptr @rtw89_cam_attach_sec_cam._entry.40, ptr @rtw89_cam_attach_sec_cam._entry.43, ptr @rtw89_cam_attach_sec_cam._entry_ptr, ptr @rtw89_cam_attach_sec_cam._entry_ptr.42, ptr @rtw89_cam_attach_sec_cam._entry_ptr.45, ptr @rtw89_cam_init._entry, ptr @rtw89_cam_init._entry.12, ptr @rtw89_cam_init._entry_ptr, ptr @rtw89_cam_init._entry_ptr.14, ptr @rtw89_cam_init_addr_cam._entry, ptr @rtw89_cam_init_addr_cam._entry_ptr, ptr @rtw89_cam_init_bssid_cam._entry, ptr @rtw89_cam_init_bssid_cam._entry_ptr, ptr @rtw89_cam_sec_key_add._entry, ptr @rtw89_cam_sec_key_add._entry_ptr, ptr @rtw89_cam_sec_key_del._entry, ptr @rtw89_cam_sec_key_del._entry.7, ptr @rtw89_cam_sec_key_del._entry_ptr, ptr @rtw89_cam_sec_key_del._entry_ptr.9, ptr @rtw89_cam_sec_key_install._entry, ptr @rtw89_cam_sec_key_install._entry.17, ptr @rtw89_cam_sec_key_install._entry.21, ptr @rtw89_cam_sec_key_install._entry.24, ptr @rtw89_cam_sec_key_install._entry_ptr, ptr @rtw89_cam_sec_key_install._entry_ptr.20, ptr @rtw89_cam_sec_key_install._entry_ptr.23, ptr @rtw89_cam_sec_key_install._entry_ptr.26, ptr @rtw89_cam_send_sec_key_cmd._entry, ptr @rtw89_cam_send_sec_key_cmd._entry.29, ptr @rtw89_cam_send_sec_key_cmd._entry.32, ptr @rtw89_cam_send_sec_key_cmd._entry.35, ptr @rtw89_cam_send_sec_key_cmd._entry_ptr, ptr @rtw89_cam_send_sec_key_cmd._entry_ptr.31, ptr @rtw89_cam_send_sec_key_cmd._entry_ptr.34, ptr @rtw89_cam_send_sec_key_cmd._entry_ptr.37, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.19, ptr @.str.22, ptr @.str.25, ptr @.str.27, ptr @.str.28, ptr @.str.30, ptr @.str.33, ptr @.str.36, ptr @.str.38, ptr @.str.39, ptr @.str.41, ptr @.str.44, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52], section "llvm.metadata"
@0 = internal global [51 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_cam_sec_key_add._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_cam_sec_key_del._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_cam_sec_key_del._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_cam_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_cam_init._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_cam_sec_key_install._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_cam_sec_key_install._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_cam_sec_key_install._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_cam_sec_key_install._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_cam_send_sec_key_cmd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_cam_send_sec_key_cmd._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_cam_send_sec_key_cmd._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_cam_send_sec_key_cmd._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_cam_attach_sec_cam._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_cam_attach_sec_cam._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_cam_attach_sec_cam._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_cam_init_addr_cam._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_cam_init_bssid_cam._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtw89_cam_sec_key_add(ptr noundef %rtwdev, ptr noundef %vif, ptr noundef %sta, ptr nocapture noundef %key) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cipher = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 1
  %0 = ptrtoint ptr %cipher to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cipher, align 8
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %entry.cleanup_crit_edge [
    i32 1027073, label %entry.sw.epilog_crit_edge
    i32 1027077, label %sw.bb1
    i32 1027076, label %sw.bb2
    i32 1027082, label %sw.bb4
    i32 1027080, label %sw.bb9
    i32 1027081, label %sw.bb14
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %flags = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 6
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %flags, align 8
  %5 = or i16 %4, 16
  store i16 %5, ptr %flags, align 8
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %flags5 = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 6
  %6 = ptrtoint ptr %flags5 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %flags5, align 8
  %8 = or i16 %7, 16
  store i16 %8, ptr %flags5, align 8
  br label %sw.epilog

sw.bb9:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %flags10 = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 6
  %9 = ptrtoint ptr %flags10 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %flags10, align 8
  %11 = or i16 %10, 16
  store i16 %11, ptr %flags10, align 8
  br label %sw.epilog

sw.bb14:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %flags15 = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 6
  %12 = ptrtoint ptr %flags15 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %flags15, align 8
  %14 = or i16 %13, 16
  store i16 %14, ptr %flags15, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb14, %sw.bb9, %sw.bb4, %sw.bb2, %sw.bb1, %entry.sw.epilog_crit_edge
  %hw_key_type.0 = phi i8 [ 9, %sw.bb14 ], [ 8, %sw.bb9 ], [ 7, %sw.bb4 ], [ 6, %sw.bb2 ], [ 2, %sw.bb1 ], [ 1, %entry.sw.epilog_crit_edge ]
  %ext_key.0.off0 = phi i1 [ true, %sw.bb14 ], [ false, %sw.bb9 ], [ true, %sw.bb4 ], [ false, %sw.bb2 ], [ false, %sw.bb1 ], [ false, %entry.sw.epilog_crit_edge ]
  %flags19 = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 6
  %15 = ptrtoint ptr %flags19 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %flags19, align 8
  %17 = or i16 %16, 2
  store i16 %17, ptr %flags19, align 8
  %keylen.i = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 7
  %18 = ptrtoint ptr %keylen.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %keylen.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %19)
  %cmp.i = icmp ugt i8 %19, 32
  br i1 %cmp.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i = zext i8 %19 to i32
  %dev.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 1
  %20 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.15, i32 noundef %conv.i) #11
  br label %do.end

if.end.i:                                         ; preds = %sw.epilog
  %chip1.i.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 3
  %22 = ptrtoint ptr %chip1.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %chip1.i.i, align 4
  %scam_num.i.i = getelementptr inbounds %struct.rtw89_chip_info, ptr %23, i32 0, i32 14
  %24 = ptrtoint ptr %scam_num.i.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %scam_num.i.i, align 1
  %sec_cam_map12.i.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 19, i32 2
  %conv14.i.i = zext i8 %25 to i32
  br i1 %ext_key.0.off0, label %again.preheader.i.i, label %if.then.i.i

again.preheader.i.i:                              ; preds = %if.end.i
  %call1663.i.i = tail call i32 @_find_next_zero_bit_be(ptr noundef %sec_cam_map12.i.i, i32 noundef %conv14.i.i, i32 noundef 0) #8
  %conv1864.i.i = and i32 %call1663.i.i, 255
  %sub.i.i = add nsw i32 %conv14.i.i, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %conv1864.i.i, i32 %sub.i.i)
  %cmp20.not65.i.i = icmp slt i32 %conv1864.i.i, %sub.i.i
  br i1 %cmp20.not65.i.i, label %again.preheader.i.i.if.end23.i.i_crit_edge, label %again.preheader.i.i.do.end9.i_crit_edge

again.preheader.i.i.do.end9.i_crit_edge:          ; preds = %again.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end9.i

again.preheader.i.i.if.end23.i.i_crit_edge:       ; preds = %again.preheader.i.i
  br label %if.end23.i.i

if.then.i.i:                                      ; preds = %if.end.i
  %call.i.i = tail call i32 @_find_first_zero_bit_be(ptr noundef %sec_cam_map12.i.i, i32 noundef %conv14.i.i) #8
  %conv4.i.i = and i32 %call.i.i, 255
  call void @__sanitizer_cov_trace_cmp4(i32 %conv4.i.i, i32 %conv14.i.i)
  %cmp.not.i.i = icmp ult i32 %conv4.i.i, %conv14.i.i
  br i1 %cmp.not.i.i, label %if.then.i.i.if.end13.i_crit_edge, label %if.then.i.i.do.end9.i_crit_edge

if.then.i.i.do.end9.i_crit_edge:                  ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end9.i

if.then.i.i.if.end13.i_crit_edge:                 ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13.i

if.end23.i.i:                                     ; preds = %if.then29.i.i.if.end23.i.i_crit_edge, %again.preheader.i.i.if.end23.i.i_crit_edge
  %conv1867.i.i = phi i32 [ %conv18.i.i, %if.then29.i.i.if.end23.i.i_crit_edge ], [ %conv1864.i.i, %again.preheader.i.i.if.end23.i.i_crit_edge ]
  %call1666.i.i = phi i32 [ %call16.i.i, %if.then29.i.i.if.end23.i.i_crit_edge ], [ %call1663.i.i, %again.preheader.i.i.if.end23.i.i_crit_edge ]
  %add.i.i = add nuw nsw i32 %conv1867.i.i, 1
  %div3.i.i.i = lshr i32 %add.i.i, 5
  %arrayidx.i.i.i = getelementptr i32, ptr %sec_cam_map12.i.i, i32 %div3.i.i.i
  %26 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i = and i32 %add.i.i, 31
  %28 = shl nuw i32 1, %and.i.i.i
  %29 = and i32 %28, %27
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool28.not.i.i = icmp eq i32 %29, 0
  br i1 %tobool28.not.i.i, label %if.end30.i.i, label %if.then29.i.i

if.then29.i.i:                                    ; preds = %if.end23.i.i
  %inc.i.i = add i32 %call1666.i.i, 1
  %conv15.i.i = and i32 %inc.i.i, 255
  %call16.i.i = tail call i32 @_find_next_zero_bit_be(ptr noundef %sec_cam_map12.i.i, i32 noundef %conv14.i.i, i32 noundef %conv15.i.i) #8
  %conv18.i.i = and i32 %call16.i.i, 255
  %cmp20.not.i.i = icmp slt i32 %conv18.i.i, %sub.i.i
  br i1 %cmp20.not.i.i, label %if.then29.i.i.if.end23.i.i_crit_edge, label %if.then29.i.i.do.end9.i_crit_edge

if.then29.i.i.do.end9.i_crit_edge:                ; preds = %if.then29.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end9.i

if.then29.i.i.if.end23.i.i_crit_edge:             ; preds = %if.then29.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23.i.i

if.end30.i.i:                                     ; preds = %if.end23.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_set_bit(i32 noundef %conv1867.i.i, ptr noundef %sec_cam_map12.i.i) #8
  br label %if.end13.i

do.end9.i:                                        ; preds = %if.then29.i.i.do.end9.i_crit_edge, %if.then.i.i.do.end9.i_crit_edge, %again.preheader.i.i.do.end9.i_crit_edge
  %dev10.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 1
  %30 = ptrtoint ptr %dev10.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev10.i, align 4
  %conv12.i = zext i1 %ext_key.0.off0 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %31, ptr noundef nonnull @.str.18, i32 noundef -16, i32 noundef %conv12.i) #11
  br label %do.end

if.end13.i:                                       ; preds = %if.end30.i.i, %if.then.i.i.if.end13.i_crit_edge
  %add.lcssa.sink.i.i = phi i32 [ %add.i.i, %if.end30.i.i ], [ %conv4.i.i, %if.then.i.i.if.end13.i_crit_edge ]
  %conv17.le.sink.in.i.i = phi i32 [ %call1666.i.i, %if.end30.i.i ], [ %call.i.i, %if.then.i.i.if.end13.i_crit_edge ]
  tail call void @_set_bit(i32 noundef %add.lcssa.sink.i.i, ptr noundef %sec_cam_map12.i.i) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %32 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %32, i32 noundef 3520, i32 noundef 36) #12
  %tobool15.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool15.not.i, label %if.end13.i.err_release_cam.i_crit_edge, label %if.end17.i

if.end13.i.err_release_cam.i_crit_edge:           ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_release_cam.i

if.end17.i:                                       ; preds = %if.end13.i
  %conv17.le.sink.i.i = trunc i32 %conv17.le.sink.in.i.i to i8
  %33 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %conv17.le.sink.i.i, ptr %call7.i.i.i, align 8
  %type.i = getelementptr inbounds %struct.rtw89_sec_cam_entry, ptr %call7.i.i.i, i32 0, i32 3
  %34 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %bf.load.i = load i8, ptr %type.i, align 1
  %bf.shl.i = shl nuw i8 %hw_key_type.0, 4
  %bf.clear.i = and i8 %bf.load.i, 7
  %bf.set.i = or i8 %bf.clear.i, %bf.shl.i
  %len.i = getelementptr inbounds %struct.rtw89_sec_cam_entry, ptr %call7.i.i.i, i32 0, i32 2
  %35 = ptrtoint ptr %len.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 20, ptr %len.i, align 2
  %bf.shl24.i = select i1 %ext_key.0.off0, i8 8, i8 0
  %bf.set26.i = or i8 %bf.set.i, %bf.shl24.i
  store i8 %bf.set26.i, ptr %type.i, align 1
  %key27.i = getelementptr inbounds %struct.rtw89_sec_cam_entry, ptr %call7.i.i.i, i32 0, i32 4
  %key28.i = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 8
  %36 = ptrtoint ptr %keylen.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %keylen.i, align 2
  %conv31.i = zext i8 %37 to i32
  %38 = call ptr @memcpy(ptr %key27.i, ptr %key28.i, i32 %conv31.i)
  %call.i89.i = tail call fastcc ptr @rtw89_cam_get_sec_key_cmd(ptr noundef nonnull %call7.i.i.i, i1 noundef zeroext false) #8
  %tobool.not.i.i = icmp eq ptr %call.i89.i, null
  br i1 %tobool.not.i.i, label %do.end.i.i, label %if.end.i90.i

do.end.i.i:                                       ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 1
  %39 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %40, ptr noundef nonnull @.str.27) #11
  br label %do.end37.i

if.end.i90.i:                                     ; preds = %if.end17.i
  tail call void @rtw89_h2c_pkt_set_hdr(ptr noundef %rtwdev, ptr noundef nonnull %call.i89.i, i8 noundef zeroext 0, i8 noundef zeroext 1, i8 noundef zeroext 10, i8 noundef zeroext 1, i1 noundef zeroext true, i1 noundef zeroext false, i32 noundef 24) #8
  %call1.i.i = tail call i32 @rtw89_h2c_tx(ptr noundef %rtwdev, ptr noundef nonnull %call.i89.i, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end8.i.i, label %do.end6.i.i

do.end6.i.i:                                      ; preds = %if.end.i90.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev7.i.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 1
  %41 = ptrtoint ptr %dev7.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev7.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %42, ptr noundef nonnull @.str.30, i32 noundef %call1.i.i) #11
  tail call void @consume_skb(ptr noundef nonnull %call.i89.i) #8
  br label %do.end37.i

if.end8.i.i:                                      ; preds = %if.end.i90.i
  %43 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %bf.load.i.i = load i8, ptr %type.i, align 1
  %44 = and i8 %bf.load.i.i, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool9.not.i.i = icmp eq i8 %44, 0
  br i1 %tobool9.not.i.i, label %if.end8.i.i.if.end39.i_crit_edge, label %if.end11.i.i

if.end8.i.i.if.end39.i_crit_edge:                 ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end39.i

if.end11.i.i:                                     ; preds = %if.end8.i.i
  %call12.i.i = tail call fastcc ptr @rtw89_cam_get_sec_key_cmd(ptr noundef nonnull %call7.i.i.i, i1 noundef zeroext true) #8
  %tobool13.not.i.i = icmp eq ptr %call12.i.i, null
  br i1 %tobool13.not.i.i, label %do.end17.i.i, label %if.end19.i.i

do.end17.i.i:                                     ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev18.i.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 1
  %45 = ptrtoint ptr %dev18.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev18.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %46, ptr noundef nonnull @.str.33) #11
  br label %do.end37.i

if.end19.i.i:                                     ; preds = %if.end11.i.i
  tail call void @rtw89_h2c_pkt_set_hdr(ptr noundef %rtwdev, ptr noundef nonnull %call12.i.i, i8 noundef zeroext 0, i8 noundef zeroext 1, i8 noundef zeroext 10, i8 noundef zeroext 1, i1 noundef zeroext true, i1 noundef zeroext false, i32 noundef 24) #8
  %call20.i.i = tail call i32 @rtw89_h2c_tx(ptr noundef %rtwdev, ptr noundef nonnull %call12.i.i, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i.i)
  %tobool21.not.i.i = icmp eq i32 %call20.i.i, 0
  br i1 %tobool21.not.i.i, label %if.end19.i.i.if.end39.i_crit_edge, label %do.end25.i.i

if.end19.i.i.if.end39.i_crit_edge:                ; preds = %if.end19.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end39.i

do.end25.i.i:                                     ; preds = %if.end19.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev26.i.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 1
  %47 = ptrtoint ptr %dev26.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev26.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %48, ptr noundef nonnull @.str.36, i32 noundef %call20.i.i) #11
  tail call void @consume_skb(ptr noundef nonnull %call12.i.i) #8
  br label %do.end37.i

do.end37.i:                                       ; preds = %do.end25.i.i, %do.end17.i.i, %do.end6.i.i, %do.end.i.i
  %retval.0.i91.ph.i = phi i32 [ -12, %do.end.i.i ], [ -12, %do.end17.i.i ], [ %call20.i.i, %do.end25.i.i ], [ %call1.i.i, %do.end6.i.i ]
  %dev38.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 1
  %49 = ptrtoint ptr %dev38.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev38.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %50, ptr noundef nonnull @.str.22, i32 noundef %retval.0.i91.ph.i) #11
  br label %err_release_cam.i

if.end39.i:                                       ; preds = %if.end19.i.i.if.end39.i_crit_edge, %if.end8.i.i.if.end39.i_crit_edge
  %tobool.not.i.i.i = icmp eq ptr %sta, null
  %drv_priv.i.i.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 29
  %spec.select.i.i.i = select i1 %tobool.not.i.i.i, ptr null, ptr %drv_priv.i.i.i
  %tobool.not.i92.i = icmp eq ptr %vif, null
  br i1 %tobool.not.i92.i, label %do.end.i94.i, label %if.end.i95.i

do.end.i94.i:                                     ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i93.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 1
  %51 = ptrtoint ptr %dev.i93.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dev.i93.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %52, ptr noundef nonnull @.str.38) #11
  br label %do.end45.i

if.end.i95.i:                                     ; preds = %if.end39.i
  %addr_cam1.i.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 21
  %sec_ent_mode.i.i.i = getelementptr inbounds %struct.rtw89_addr_cam_entry, ptr %addr_cam1.i.i, i32 0, i32 5
  %53 = ptrtoint ptr %sec_ent_mode.i.i.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %sec_ent_mode.i.i.i, align 1
  %55 = zext i8 %54 to i64
  call void @__sanitizer_cov_trace_switch(i64 %55, ptr @__sancov_gen_cov_switch_values.53)
  switch i8 %54, label %if.end.i95.i.if.end10.i.i_crit_edge [
    i8 0, label %if.end.i95.i.do.end7.i.i_crit_edge
    i8 1, label %sw.bb1.i.i.i
    i8 2, label %sw.bb8.i.i.i
    i8 3, label %sw.bb47.i.i.i
  ]

if.end.i95.i.do.end7.i.i_crit_edge:               ; preds = %if.end.i95.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end7.i.i

if.end.i95.i.if.end10.i.i_crit_edge:              ; preds = %if.end.i95.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10.i.i

sw.bb1.i.i.i:                                     ; preds = %if.end.i95.i
  %56 = ptrtoint ptr %flags19 to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %flags19, align 8
  %58 = and i16 %57, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %58)
  %tobool.not.i56.i.i = icmp eq i16 %58, 0
  br i1 %tobool.not.i56.i.i, label %sw.bb1.i.i.i.do.end7.i.i_crit_edge, label %if.end.i.i.i

sw.bb1.i.i.i.do.end7.i.i_crit_edge:               ; preds = %sw.bb1.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end7.i.i

if.end.i.i.i:                                     ; preds = %sw.bb1.i.i.i
  %sec_cam_map.i.i.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 23
  %call.i.i.i = tail call i32 @_find_first_zero_bit_be(ptr noundef %sec_cam_map.i.i.i, i32 noundef 7) #8
  %conv4.i.i.i = and i32 %call.i.i.i, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %conv4.i.i.i)
  %cmp.i.i.i = icmp ugt i32 %conv4.i.i.i, 6
  br i1 %cmp.i.i.i, label %if.end.i.i.i.do.end7.i.i_crit_edge, label %if.end7.i.i.i

if.end.i.i.i.do.end7.i.i_crit_edge:               ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end7.i.i

if.end7.i.i.i:                                    ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv3.i.i.i = trunc i32 %call.i.i.i to i8
  br label %if.end10.i.i

sw.bb8.i.i.i:                                     ; preds = %if.end.i95.i
  %59 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %bf.load.i.i.i = load i8, ptr %type.i, align 1
  %bf.lshr.mask.i.i.i = and i8 %bf.load.i.i.i, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 -96, i8 %bf.lshr.mask.i.i.i)
  %cmp10.i.i.i = icmp eq i8 %bf.lshr.mask.i.i.i, -96
  br i1 %cmp10.i.i.i, label %if.then12.i.i.i, label %if.end22.i.i.i

if.then12.i.i.i:                                  ; preds = %sw.bb8.i.i.i
  %sec_cam_map13.i.i.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 23
  %call15.i.i.i = tail call i32 @_find_next_zero_bit_be(ptr noundef %sec_cam_map13.i.i.i, i32 noundef 7, i32 noundef 5) #8
  %conv17.i.i.i = and i32 %call15.i.i.i, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %conv17.i.i.i)
  %cmp18.i.i.i = icmp ugt i32 %conv17.i.i.i, 6
  br i1 %cmp18.i.i.i, label %if.then12.i.i.i.do.end7.i.i_crit_edge, label %if.end21.i.i.i

if.then12.i.i.i.do.end7.i.i_crit_edge:            ; preds = %if.then12.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end7.i.i

if.end21.i.i.i:                                   ; preds = %if.then12.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv16.i.i.i = trunc i32 %call15.i.i.i to i8
  br label %if.end10.i.i

if.end22.i.i.i:                                   ; preds = %sw.bb8.i.i.i
  %60 = ptrtoint ptr %flags19 to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %flags19, align 8
  %62 = and i16 %61, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %62)
  %tobool26.not.i.i.i = icmp eq i16 %62, 0
  %sec_cam_map38.i.i.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 23
  br i1 %tobool26.not.i.i.i, label %if.end37.i.i.i, label %if.then27.i.i.i

if.then27.i.i.i:                                  ; preds = %if.end22.i.i.i
  %call30.i.i.i = tail call i32 @_find_next_zero_bit_be(ptr noundef %sec_cam_map38.i.i.i, i32 noundef 7, i32 noundef 0) #8
  %conv32.i.i.i = and i32 %call30.i.i.i, 254
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv32.i.i.i)
  %cmp33.not.i.i.i = icmp eq i32 %conv32.i.i.i, 0
  br i1 %cmp33.not.i.i.i, label %if.end36.i.i.i, label %if.then27.i.i.i.do.end7.i.i_crit_edge

if.then27.i.i.i.do.end7.i.i_crit_edge:            ; preds = %if.then27.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end7.i.i

if.end36.i.i.i:                                   ; preds = %if.then27.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv31.i.i.i = trunc i32 %call30.i.i.i to i8
  br label %if.end10.i.i

if.end37.i.i.i:                                   ; preds = %if.end22.i.i.i
  %call40.i.i.i = tail call i32 @_find_next_zero_bit_be(ptr noundef %sec_cam_map38.i.i.i, i32 noundef 7, i32 noundef 2) #8
  %conv42.i.i.i = and i32 %call40.i.i.i, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %conv42.i.i.i)
  %cmp43.i.i.i = icmp ugt i32 %conv42.i.i.i, 4
  br i1 %cmp43.i.i.i, label %if.end37.i.i.i.do.end7.i.i_crit_edge, label %if.end46.i.i.i

if.end37.i.i.i.do.end7.i.i_crit_edge:             ; preds = %if.end37.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end7.i.i

if.end46.i.i.i:                                   ; preds = %if.end37.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv41.i.i.i = trunc i32 %call40.i.i.i to i8
  br label %if.end10.i.i

sw.bb47.i.i.i:                                    ; preds = %if.end.i95.i
  %63 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %bf.load49.i.i.i = load i8, ptr %type.i, align 1
  %bf.lshr50.mask.i.i.i = and i8 %bf.load49.i.i.i, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 -96, i8 %bf.lshr50.mask.i.i.i)
  %cmp52.i.i.i = icmp eq i8 %bf.lshr50.mask.i.i.i, -96
  br i1 %cmp52.i.i.i, label %if.then54.i.i.i, label %if.end61.i.i.i

if.then54.i.i.i:                                  ; preds = %sw.bb47.i.i.i
  %sec_cam_map55.i.i.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 23
  %64 = ptrtoint ptr %sec_cam_map55.i.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load volatile i32, ptr %sec_cam_map55.i.i.i, align 4
  %66 = and i32 %65, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %tobool58.not.i.i.i = icmp eq i32 %66, 0
  br i1 %tobool58.not.i.i.i, label %if.then54.i.i.i.if.end10.i.i_crit_edge, label %if.then54.i.i.i.do.end7.i.i_crit_edge

if.then54.i.i.i.do.end7.i.i_crit_edge:            ; preds = %if.then54.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end7.i.i

if.then54.i.i.i.if.end10.i.i_crit_edge:           ; preds = %if.then54.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10.i.i

if.end61.i.i.i:                                   ; preds = %sw.bb47.i.i.i
  %67 = ptrtoint ptr %flags19 to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %flags19, align 8
  %69 = and i16 %68, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %69)
  %tobool65.not.i.i.i = icmp eq i16 %69, 0
  %sec_cam_map77.i.i.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 23
  br i1 %tobool65.not.i.i.i, label %if.end76.i.i.i, label %if.then66.i.i.i

if.then66.i.i.i:                                  ; preds = %if.end61.i.i.i
  %call69.i.i.i = tail call i32 @_find_next_zero_bit_be(ptr noundef %sec_cam_map77.i.i.i, i32 noundef 7, i32 noundef 0) #8
  %conv71.i.i.i = and i32 %call69.i.i.i, 254
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv71.i.i.i)
  %cmp72.not.i.i.i = icmp eq i32 %conv71.i.i.i, 0
  br i1 %cmp72.not.i.i.i, label %if.end75.i.i.i, label %if.then66.i.i.i.do.end7.i.i_crit_edge

if.then66.i.i.i.do.end7.i.i_crit_edge:            ; preds = %if.then66.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end7.i.i

if.end75.i.i.i:                                   ; preds = %if.then66.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv70.i.i.i = trunc i32 %call69.i.i.i to i8
  br label %if.end10.i.i

if.end76.i.i.i:                                   ; preds = %if.end61.i.i.i
  %call79.i.i.i = tail call i32 @_find_next_zero_bit_be(ptr noundef %sec_cam_map77.i.i.i, i32 noundef 7, i32 noundef 2) #8
  %conv81.i.i.i = and i32 %call79.i.i.i, 254
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %conv81.i.i.i)
  %cmp82.i.i.i = icmp ugt i32 %conv81.i.i.i, 5
  br i1 %cmp82.i.i.i, label %if.end76.i.i.i.do.end7.i.i_crit_edge, label %if.end85.i.i.i

if.end76.i.i.i.do.end7.i.i_crit_edge:             ; preds = %if.end76.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end7.i.i

if.end85.i.i.i:                                   ; preds = %if.end76.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv80.i.i.i = trunc i32 %call79.i.i.i to i8
  br label %if.end10.i.i

do.end7.i.i:                                      ; preds = %if.end76.i.i.i.do.end7.i.i_crit_edge, %if.then66.i.i.i.do.end7.i.i_crit_edge, %if.then54.i.i.i.do.end7.i.i_crit_edge, %if.end37.i.i.i.do.end7.i.i_crit_edge, %if.then27.i.i.i.do.end7.i.i_crit_edge, %if.then12.i.i.i.do.end7.i.i_crit_edge, %if.end.i.i.i.do.end7.i.i_crit_edge, %sw.bb1.i.i.i.do.end7.i.i_crit_edge, %if.end.i95.i.do.end7.i.i_crit_edge
  %retval.0.i.ph.i.i = phi i32 [ -16, %if.end76.i.i.i.do.end7.i.i_crit_edge ], [ -16, %if.then66.i.i.i.do.end7.i.i_crit_edge ], [ -22, %if.then54.i.i.i.do.end7.i.i_crit_edge ], [ -16, %if.end37.i.i.i.do.end7.i.i_crit_edge ], [ -16, %if.then27.i.i.i.do.end7.i.i_crit_edge ], [ -16, %if.then12.i.i.i.do.end7.i.i_crit_edge ], [ -16, %if.end.i.i.i.do.end7.i.i_crit_edge ], [ -22, %sw.bb1.i.i.i.do.end7.i.i_crit_edge ], [ -22, %if.end.i95.i.do.end7.i.i_crit_edge ]
  %dev8.i.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 1
  %70 = ptrtoint ptr %dev8.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %dev8.i.i, align 4
  %72 = ptrtoint ptr %sec_ent_mode.i.i.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %sec_ent_mode.i.i.i, align 1
  %conv.i.i = zext i8 %73 to i32
  %74 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %bf.load.i96.i = load i8, ptr %type.i, align 1
  %bf.lshr.i.i = lshr i8 %bf.load.i96.i, 4
  %conv9.i.i = zext i8 %bf.lshr.i.i to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %71, ptr noundef nonnull @.str.41, i32 noundef %conv.i.i, i32 noundef %conv9.i.i) #11
  br label %do.end45.i

if.end10.i.i:                                     ; preds = %if.end85.i.i.i, %if.end75.i.i.i, %if.then54.i.i.i.if.end10.i.i_crit_edge, %if.end46.i.i.i, %if.end36.i.i.i, %if.end21.i.i.i, %if.end7.i.i.i, %if.end.i95.i.if.end10.i.i_crit_edge
  %key_idx.0.i.i = phi i8 [ 0, %if.end.i95.i.if.end10.i.i_crit_edge ], [ %conv80.i.i.i, %if.end85.i.i.i ], [ %conv70.i.i.i, %if.end75.i.i.i ], [ %conv41.i.i.i, %if.end46.i.i.i ], [ %conv31.i.i.i, %if.end36.i.i.i ], [ %conv16.i.i.i, %if.end21.i.i.i ], [ %conv3.i.i.i, %if.end7.i.i.i ], [ 6, %if.then54.i.i.i.if.end10.i.i_crit_edge ]
  %drv_priv.i.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 19
  %hw_key_idx.i.i = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 4
  %75 = ptrtoint ptr %hw_key_idx.i.i to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 %key_idx.0.i.i, ptr %hw_key_idx.i.i, align 2
  %keyidx.i.i = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 5
  %76 = ptrtoint ptr %keyidx.i.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %keyidx.i.i, align 1
  %sec_ent_keyid.i.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 24
  %idxprom.i.i = zext i8 %key_idx.0.i.i to i32
  %arrayidx.i.i = getelementptr [7 x i8], ptr %sec_ent_keyid.i.i, i32 0, i32 %idxprom.i.i
  %78 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 %77, ptr %arrayidx.i.i, align 1
  %79 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %call7.i.i.i, align 8
  %arrayidx12.i.i = getelementptr %struct.rtw89_addr_cam_entry, ptr %addr_cam1.i.i, i32 0, i32 8, i32 %idxprom.i.i
  %81 = ptrtoint ptr %arrayidx12.i.i to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 %80, ptr %arrayidx12.i.i, align 1
  %sec_entries.i.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 26, i32 2
  %arrayidx14.i.i = getelementptr [7 x ptr], ptr %sec_entries.i.i, i32 0, i32 %idxprom.i.i
  %82 = ptrtoint ptr %arrayidx14.i.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %call7.i.i.i, ptr %arrayidx14.i.i, align 4
  %sec_cam_map.i.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 23
  tail call void @_set_bit(i32 noundef %idxprom.i.i, ptr noundef %sec_cam_map.i.i) #8
  %call17.i.i = tail call i32 @rtw89_fw_h2c_cam(ptr noundef %rtwdev, ptr noundef %drv_priv.i.i, ptr noundef %spec.select.i.i.i, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i.i)
  %tobool18.not.i.i = icmp eq i32 %call17.i.i, 0
  br i1 %tobool18.not.i.i, label %if.end10.i.i.cleanup_crit_edge, label %do.end22.i.i

if.end10.i.i.cleanup_crit_edge:                   ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end22.i.i:                                     ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev23.i.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 1
  %83 = ptrtoint ptr %dev23.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %dev23.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %84, ptr noundef nonnull @.str.44, i32 noundef %call17.i.i) #11
  tail call void @_clear_bit(i32 noundef %idxprom.i.i, ptr noundef %sec_cam_map.i.i) #8
  %85 = ptrtoint ptr %arrayidx14.i.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr null, ptr %arrayidx14.i.i, align 4
  br label %do.end45.i

do.end45.i:                                       ; preds = %do.end22.i.i, %do.end7.i.i, %do.end.i94.i
  %retval.0.i97.ph.i = phi i32 [ -22, %do.end.i94.i ], [ %call17.i.i, %do.end22.i.i ], [ %retval.0.i.ph.i.i, %do.end7.i.i ]
  %dev46.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 1
  %86 = ptrtoint ptr %dev46.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %dev46.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %87, ptr noundef nonnull @.str.25, i32 noundef %retval.0.i97.ph.i) #11
  br label %err_release_cam.i

err_release_cam.i:                                ; preds = %do.end45.i, %do.end37.i, %if.end13.i.err_release_cam.i_crit_edge
  %ret.0.i = phi i32 [ %retval.0.i91.ph.i, %do.end37.i ], [ %retval.0.i97.ph.i, %do.end45.i ], [ -12, %if.end13.i.err_release_cam.i_crit_edge ]
  tail call void @kfree(ptr noundef %call7.i.i.i) #8
  %conv48.i = and i32 %conv17.le.sink.in.i.i, 255
  tail call void @_clear_bit(i32 noundef %conv48.i, ptr noundef %sec_cam_map12.i.i) #8
  br i1 %ext_key.0.off0, label %if.then51.i, label %err_release_cam.i.do.end_crit_edge

err_release_cam.i.do.end_crit_edge:               ; preds = %err_release_cam.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.then51.i:                                      ; preds = %err_release_cam.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.i = add nuw nsw i32 %conv48.i, 1
  tail call void @_clear_bit(i32 noundef %add.i, ptr noundef %sec_cam_map12.i.i) #8
  br label %do.end

do.end:                                           ; preds = %if.then51.i, %err_release_cam.i.do.end_crit_edge, %do.end9.i, %do.end.i
  %retval.0.i.ph = phi i32 [ %ret.0.i, %err_release_cam.i.do.end_crit_edge ], [ %ret.0.i, %if.then51.i ], [ -16, %do.end9.i ], [ -22, %do.end.i ]
  %dev = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 1
  %88 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %dev, align 4
  %conv24 = zext i8 %hw_key_type.0 to i32
  %conv26 = zext i1 %ext_key.0.off0 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %89, ptr noundef nonnull @.str, i32 noundef %conv24, i32 noundef %conv26, i32 noundef %retval.0.i.ph) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end10.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i.ph, %do.end ], [ -95, %entry.cleanup_crit_edge ], [ 0, %if.end10.i.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtw89_cam_sec_key_del(ptr noundef %rtwdev, ptr noundef %vif, ptr noundef %sta, ptr nocapture noundef readonly %key, i1 noundef zeroext %inform_fw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %sta, null
  %drv_priv.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 29
  %spec.select.i = select i1 %tobool.not.i, ptr null, ptr %drv_priv.i
  %tobool.not = icmp eq ptr %vif, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.5) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %hw_key_idx = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 4
  %2 = ptrtoint ptr %hw_key_idx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %hw_key_idx, align 2
  %drv_priv = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 19
  %sec_entries = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 26, i32 2
  %idxprom = zext i8 %3 to i32
  %arrayidx = getelementptr [7 x ptr], ptr %sec_entries, i32 0, i32 %idxprom
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %tobool3.not = icmp eq ptr %5, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %sec_cam_map = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 23
  tail call void @_clear_bit(i32 noundef %idxprom, ptr noundef %sec_cam_map) #8
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %arrayidx, align 4
  br i1 %inform_fw, label %if.then11, label %if.end5.if.end20_crit_edge

if.end5.if.end20_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

if.then11:                                        ; preds = %if.end5
  %call12 = tail call i32 @rtw89_fw_h2c_cam(ptr noundef %rtwdev, ptr noundef %drv_priv, ptr noundef %spec.select.i, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.then11.if.end20_crit_edge, label %do.end17

if.then11.if.end20_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

do.end17:                                         ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #10
  %dev18 = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 1
  %7 = ptrtoint ptr %dev18 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev18, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.8, i32 noundef %call12) #11
  br label %if.end20

if.end20:                                         ; preds = %do.end17, %if.then11.if.end20_crit_edge, %if.end5.if.end20_crit_edge
  %ret.0 = phi i32 [ %call12, %do.end17 ], [ 0, %if.then11.if.end20_crit_edge ], [ 0, %if.end5.if.end20_crit_edge ]
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %5, align 1
  %conv22 = zext i8 %10 to i32
  %sec_cam_map23 = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 19, i32 2
  tail call void @_clear_bit(i32 noundef %conv22, ptr noundef %sec_cam_map23) #8
  %ext_key = getelementptr inbounds %struct.rtw89_sec_cam_entry, ptr %5, i32 0, i32 3
  %11 = ptrtoint ptr %ext_key to i32
  call void @__asan_load1_noabort(i32 %11)
  %bf.load = load i8, ptr %ext_key, align 1
  %12 = and i8 %bf.load, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool25.not = icmp eq i8 %12, 0
  br i1 %tobool25.not, label %if.end20.if.end30_crit_edge, label %if.then26

if.end20.if.end30_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30

if.then26:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  %add = add nuw nsw i32 %conv22, 1
  tail call void @_clear_bit(i32 noundef %add, ptr noundef %sec_cam_map23) #8
  br label %if.end30

if.end30:                                         ; preds = %if.then26, %if.end20.if.end30_crit_edge
  tail call void @kfree(ptr noundef nonnull %5) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end30, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %ret.0, %if.end30 ], [ -22, %do.end ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw89_fw_h2c_cam(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw89_cam_deinit(ptr noundef %rtwdev, ptr nocapture noundef %rtwvif) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cam_info1 = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 19
  %addr_cam2 = getelementptr inbounds %struct.rtw89_vif, ptr %rtwvif, i32 0, i32 23
  %valid = getelementptr inbounds %struct.rtw89_vif, ptr %rtwvif, i32 0, i32 23, i32 3
  %0 = ptrtoint ptr %valid to i32
  call void @__asan_loadN_noabort(i32 %0, i32 2)
  %bf.load = load i16, ptr %valid, align 1
  %bf.clear = and i16 %bf.load, 32767
  store i16 %bf.clear, ptr %valid, align 1
  %valid4 = getelementptr inbounds %struct.rtw89_vif, ptr %rtwvif, i32 0, i32 24, i32 5
  %1 = ptrtoint ptr %valid4 to i32
  call void @__asan_load1_noabort(i32 %1)
  %bf.load5 = load i8, ptr %valid4, align 1
  %bf.clear6 = and i8 %bf.load5, 127
  store i8 %bf.clear6, ptr %valid4, align 1
  %2 = ptrtoint ptr %addr_cam2 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %addr_cam2, align 4
  %conv = zext i8 %3 to i32
  tail call void @_clear_bit(i32 noundef %conv, ptr noundef %cam_info1) #8
  %bssid_cam_idx = getelementptr inbounds %struct.rtw89_vif, ptr %rtwvif, i32 0, i32 24, i32 2
  %4 = ptrtoint ptr %bssid_cam_idx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %bssid_cam_idx, align 1
  %conv8 = zext i8 %5 to i32
  %bssid_cam_map = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 19, i32 1
  tail call void @_clear_bit(i32 noundef %conv8, ptr noundef %bssid_cam_map) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw89_cam_reset_keys(ptr noundef %rtwdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !91) #8
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !101
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #8
  %call.i = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.46, i32 noundef 696, ptr noundef nonnull @.str.47) #8
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %4 = ptrtoint ptr %rtwdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rtwdev, align 128
  tail call void @ieee80211_iter_keys_rcu(ptr noundef %5, ptr noundef null, ptr noundef nonnull @rtw89_cam_reset_key_iter, ptr noundef %rtwdev) #8
  %call.i2 = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i2, label %rcu_read_lock.exit.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i5

rcu_read_lock.exit.rcu_read_unlock.exit_crit_edge: ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true.i5:                                 ; preds = %rcu_read_lock.exit
  %call1.i3 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i3)
  %tobool.not.i4 = icmp eq i32 %call1.i3, 0
  br i1 %tobool.not.i4, label %land.lhs.true.i5.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i7

land.lhs.true.i5.rcu_read_unlock.exit_crit_edge:  ; preds = %land.lhs.true.i5
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true2.i7:                                ; preds = %land.lhs.true.i5
  %.b4.i6 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i6, label %land.lhs.true2.i7.rcu_read_unlock.exit_crit_edge, label %if.then.i8

land.lhs.true2.i7.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i7
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

if.then.i8:                                       ; preds = %land.lhs.true2.i7
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.46, i32 noundef 724, ptr noundef nonnull @.str.48) #8
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i8, %land.lhs.true2.i7.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i5.rcu_read_unlock.exit_crit_edge, %rcu_read_lock.exit.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !102
  %6 = tail call i32 @llvm.read_register.i32(metadata !91) #8
  %and.i.i.i.i.i9 = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i.i.i9 to ptr
  %preempt_count.i.i.i.i10 = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %preempt_count.i.i.i.i10 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %preempt_count.i.i.i.i10, align 4
  %sub.i.i.i = add i32 %9, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i10, align 4
  tail call void @rcu_read_unlock_strict() #8
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_iter_keys_rcu(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtw89_cam_reset_key_iter(ptr nocapture noundef readnone %hw, ptr noundef %vif, ptr noundef readnone %sta, ptr nocapture noundef readonly %key, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %vif, null
  br i1 %tobool.not.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.rtw89_dev, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.5) #11
  br label %rtw89_cam_sec_key_del.exit

if.end.i:                                         ; preds = %entry
  %hw_key_idx.i = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 4
  %2 = ptrtoint ptr %hw_key_idx.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %hw_key_idx.i, align 2
  %sec_entries.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 26, i32 2
  %idxprom.i = zext i8 %3 to i32
  %arrayidx.i = getelementptr [7 x ptr], ptr %sec_entries.i, i32 0, i32 %idxprom.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i, align 4
  %tobool3.not.i = icmp eq ptr %5, null
  br i1 %tobool3.not.i, label %if.end.i.rtw89_cam_sec_key_del.exit_crit_edge, label %if.end5.i

if.end.i.rtw89_cam_sec_key_del.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtw89_cam_sec_key_del.exit

if.end5.i:                                        ; preds = %if.end.i
  %sec_cam_map.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 23
  tail call void @_clear_bit(i32 noundef %idxprom.i, ptr noundef %sec_cam_map.i) #8
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %arrayidx.i, align 4
  %7 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %5, align 1
  %conv22.i = zext i8 %8 to i32
  %sec_cam_map23.i = getelementptr inbounds %struct.rtw89_dev, ptr %data, i32 0, i32 19, i32 2
  tail call void @_clear_bit(i32 noundef %conv22.i, ptr noundef %sec_cam_map23.i) #8
  %ext_key.i = getelementptr inbounds %struct.rtw89_sec_cam_entry, ptr %5, i32 0, i32 3
  %9 = ptrtoint ptr %ext_key.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %bf.load.i = load i8, ptr %ext_key.i, align 1
  %10 = and i8 %bf.load.i, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool25.not.i = icmp eq i8 %10, 0
  br i1 %tobool25.not.i, label %if.end5.i.if.end30.i_crit_edge, label %if.then26.i

if.end5.i.if.end30.i_crit_edge:                   ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30.i

if.then26.i:                                      ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.i = add nuw nsw i32 %conv22.i, 1
  tail call void @_clear_bit(i32 noundef %add.i, ptr noundef %sec_cam_map23.i) #8
  br label %if.end30.i

if.end30.i:                                       ; preds = %if.then26.i, %if.end5.i.if.end30.i_crit_edge
  tail call void @kfree(ptr noundef nonnull %5) #8
  br label %rtw89_cam_sec_key_del.exit

rtw89_cam_sec_key_del.exit:                       ; preds = %if.end30.i, %if.end.i.rtw89_cam_sec_key_del.exit_crit_edge, %do.end.i
  %drv_priv = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 19
  %cam_info1.i = getelementptr inbounds %struct.rtw89_dev, ptr %data, i32 0, i32 19
  %addr_cam2.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 21
  %valid.i = getelementptr inbounds %struct.rtw89_vif, ptr %drv_priv, i32 0, i32 23, i32 3
  %11 = ptrtoint ptr %valid.i to i32
  call void @__asan_loadN_noabort(i32 %11, i32 2)
  %bf.load.i3 = load i16, ptr %valid.i, align 1
  %bf.clear.i = and i16 %bf.load.i3, 32767
  store i16 %bf.clear.i, ptr %valid.i, align 1
  %valid4.i = getelementptr inbounds %struct.rtw89_vif, ptr %drv_priv, i32 0, i32 24, i32 5
  %12 = ptrtoint ptr %valid4.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %bf.load5.i = load i8, ptr %valid4.i, align 1
  %bf.clear6.i = and i8 %bf.load5.i, 127
  store i8 %bf.clear6.i, ptr %valid4.i, align 1
  %13 = ptrtoint ptr %addr_cam2.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %addr_cam2.i, align 4
  %conv.i = zext i8 %14 to i32
  tail call void @_clear_bit(i32 noundef %conv.i, ptr noundef %cam_info1.i) #8
  %bssid_cam_idx.i = getelementptr inbounds %struct.rtw89_vif, ptr %drv_priv, i32 0, i32 24, i32 2
  %15 = ptrtoint ptr %bssid_cam_idx.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %bssid_cam_idx.i, align 1
  %conv8.i = zext i8 %16 to i32
  %bssid_cam_map.i = getelementptr inbounds %struct.rtw89_dev, ptr %data, i32 0, i32 19, i32 1
  tail call void @_clear_bit(i32 noundef %conv8.i, ptr noundef %bssid_cam_map.i) #8
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @rtw89_cam_bssid_changed(ptr nocapture noundef readnone %rtwdev, ptr nocapture noundef %rtwvif) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %bssid_cam1 = getelementptr inbounds %struct.rtw89_vif, ptr %rtwvif, i32 0, i32 24
  %bssid2 = getelementptr inbounds %struct.rtw89_vif, ptr %rtwvif, i32 0, i32 4
  %0 = ptrtoint ptr %bssid2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bssid2, align 4
  %2 = ptrtoint ptr %bssid_cam1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %bssid_cam1, align 4
  %add.ptr.i = getelementptr %struct.rtw89_vif, ptr %rtwvif, i32 0, i32 4, i32 4
  %3 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %add.ptr.i, align 2
  %add.ptr1.i = getelementptr %struct.rtw89_vif, ptr %rtwvif, i32 0, i32 24, i32 0, i32 4
  %5 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %4, ptr %add.ptr1.i, align 2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtw89_cam_init(ptr noundef %rtwdev, ptr noundef %rtwvif) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %chip1.i.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 3
  %0 = ptrtoint ptr %chip1.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip1.i.i, align 4
  %cam_info2.i.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 19
  %acam_num.i.i = getelementptr inbounds %struct.rtw89_chip_info, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %acam_num.i.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %acam_num.i.i, align 1
  %conv.i.i = zext i8 %3 to i32
  %call.i.i = tail call i32 @_find_first_zero_bit_be(ptr noundef %cam_info2.i.i, i32 noundef %conv.i.i) #8
  %conv4.i.i = and i32 %call.i.i, 255
  call void @__sanitizer_cov_trace_cmp4(i32 %conv4.i.i, i32 %conv.i.i)
  %cmp.not.i.i = icmp ult i32 %conv4.i.i, %conv.i.i
  br i1 %cmp.not.i.i, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 1
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.49) #11
  %6 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.10) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv3.i.i = trunc i32 %call.i.i to i8
  tail call void @_set_bit(i32 noundef %conv4.i.i, ptr noundef %cam_info2.i.i) #8
  %addr_cam1.i = getelementptr inbounds %struct.rtw89_vif, ptr %rtwvif, i32 0, i32 23
  %8 = ptrtoint ptr %addr_cam1.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv3.i.i, ptr %addr_cam1.i, align 4
  %len.i = getelementptr inbounds %struct.rtw89_vif, ptr %rtwvif, i32 0, i32 23, i32 2
  %9 = ptrtoint ptr %len.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 64, ptr %len.i, align 2
  %offset.i = getelementptr inbounds %struct.rtw89_vif, ptr %rtwvif, i32 0, i32 23, i32 1
  %10 = ptrtoint ptr %offset.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %offset.i, align 1
  %valid.i = getelementptr inbounds %struct.rtw89_vif, ptr %rtwvif, i32 0, i32 23, i32 3
  %11 = ptrtoint ptr %valid.i to i32
  call void @__asan_loadN_noabort(i32 %11, i32 2)
  %bf.load.i = load i16, ptr %valid.i, align 1
  %bf.set.i = and i16 %bf.load.i, 319
  %bf.clear4.i = or i16 %bf.set.i, -32768
  store i16 %bf.clear4.i, ptr %valid.i, align 1
  %sec_cam_map.i = getelementptr inbounds %struct.rtw89_vif, ptr %rtwvif, i32 0, i32 23, i32 6
  %12 = ptrtoint ptr %sec_cam_map.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %sec_cam_map.i, align 4
  %sma.i = getelementptr inbounds %struct.rtw89_vif, ptr %rtwvif, i32 0, i32 23, i32 4
  %mac_addr.i = getelementptr inbounds %struct.rtw89_vif, ptr %rtwvif, i32 0, i32 3
  %13 = ptrtoint ptr %mac_addr.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %mac_addr.i, align 4
  %15 = ptrtoint ptr %sma.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %sma.i, align 4
  %add.ptr.i.i = getelementptr %struct.rtw89_vif, ptr %rtwvif, i32 0, i32 3, i32 4
  %16 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %add.ptr.i.i, align 2
  %add.ptr1.i.i = getelementptr %struct.rtw89_vif, ptr %rtwvif, i32 0, i32 23, i32 4, i32 4
  %18 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %17, ptr %add.ptr1.i.i, align 2
  %uglygep.i = getelementptr i8, ptr %rtwvif, i32 56
  %19 = call ptr @memset(ptr %uglygep.i, i32 0, i32 14)
  %20 = ptrtoint ptr %chip1.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %chip1.i.i, align 4
  %bcam_num.i.i = getelementptr inbounds %struct.rtw89_chip_info, ptr %21, i32 0, i32 13
  %22 = ptrtoint ptr %bcam_num.i.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %bcam_num.i.i, align 4
  %bssid_cam_map.i.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 19, i32 1
  %conv.i.i24 = zext i8 %23 to i32
  %call.i.i25 = tail call i32 @_find_first_zero_bit_be(ptr noundef %bssid_cam_map.i.i, i32 noundef %conv.i.i24) #8
  %conv4.i.i26 = and i32 %call.i.i25, 255
  call void @__sanitizer_cov_trace_cmp4(i32 %conv4.i.i26, i32 %conv.i.i24)
  %cmp.not.i.i27 = icmp ult i32 %conv4.i.i26, %conv.i.i24
  br i1 %cmp.not.i.i27, label %if.end10, label %do.end8

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i28 = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 1
  %24 = ptrtoint ptr %dev.i28 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev.i28, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.51) #11
  %26 = ptrtoint ptr %dev.i28 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev.i28, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.13) #11
  br label %cleanup

if.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %conv3.i.i30 = trunc i32 %call.i.i25 to i8
  tail call void @_set_bit(i32 noundef %conv4.i.i26, ptr noundef %bssid_cam_map.i.i) #8
  %bssid_cam1.i = getelementptr inbounds %struct.rtw89_vif, ptr %rtwvif, i32 0, i32 24
  %bssid_cam_idx2.i = getelementptr inbounds %struct.rtw89_vif, ptr %rtwvif, i32 0, i32 24, i32 2
  %28 = ptrtoint ptr %bssid_cam_idx2.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv3.i.i30, ptr %bssid_cam_idx2.i, align 1
  %phy_idx.i = getelementptr inbounds %struct.rtw89_vif, ptr %rtwvif, i32 0, i32 5
  %29 = ptrtoint ptr %phy_idx.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %phy_idx.i, align 2
  %phy_idx3.i = getelementptr inbounds %struct.rtw89_vif, ptr %rtwvif, i32 0, i32 24, i32 1
  %31 = ptrtoint ptr %phy_idx3.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %30, ptr %phy_idx3.i, align 1
  %len.i31 = getelementptr inbounds %struct.rtw89_vif, ptr %rtwvif, i32 0, i32 24, i32 4
  %32 = ptrtoint ptr %len.i31 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 8, ptr %len.i31, align 1
  %offset.i32 = getelementptr inbounds %struct.rtw89_vif, ptr %rtwvif, i32 0, i32 24, i32 3
  %33 = ptrtoint ptr %offset.i32 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 0, ptr %offset.i32, align 1
  %valid.i33 = getelementptr inbounds %struct.rtw89_vif, ptr %rtwvif, i32 0, i32 24, i32 5
  %34 = ptrtoint ptr %valid.i33 to i32
  call void @__asan_load1_noabort(i32 %34)
  %bf.load.i34 = load i8, ptr %valid.i33, align 1
  %bf.set.i35 = or i8 %bf.load.i34, -128
  store i8 %bf.set.i35, ptr %valid.i33, align 1
  %bssid4.i = getelementptr inbounds %struct.rtw89_vif, ptr %rtwvif, i32 0, i32 4
  %35 = ptrtoint ptr %bssid4.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %bssid4.i, align 4
  %37 = ptrtoint ptr %bssid_cam1.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %bssid_cam1.i, align 4
  %add.ptr.i.i36 = getelementptr %struct.rtw89_vif, ptr %rtwvif, i32 0, i32 4, i32 4
  %38 = ptrtoint ptr %add.ptr.i.i36 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %add.ptr.i.i36, align 2
  %add.ptr1.i.i37 = getelementptr %struct.rtw89_vif, ptr %rtwvif, i32 0, i32 24, i32 0, i32 4
  %40 = ptrtoint ptr %add.ptr1.i.i37 to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %39, ptr %add.ptr1.i.i37, align 2
  %41 = ptrtoint ptr %valid.i to i32
  call void @__asan_loadN_noabort(i32 %41, i32 2)
  %bf.load = load i16, ptr %valid.i, align 1
  %42 = and i8 %conv3.i.i30, 63
  %bf.value = zext i8 %42 to i16
  %bf.clear = and i16 %bf.load, -64
  %bf.set = or i16 %bf.clear, %bf.value
  store i16 %bf.set, ptr %valid.i, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %do.end8, %do.end
  %retval.0 = phi i32 [ -16, %do.end ], [ -16, %do.end8 ], [ 0, %if.end10 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtw89_cam_fill_bssid_cam_info(ptr nocapture noundef readnone %rtwdev, ptr nocapture noundef readonly %rtwvif, ptr nocapture noundef %cmd) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %he_bss_color = getelementptr i8, ptr %rtwvif, i32 -511
  %0 = ptrtoint ptr %he_bss_color to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %he_bss_color, align 1
  %bssid_cam_idx = getelementptr inbounds %struct.rtw89_vif, ptr %rtwvif, i32 0, i32 24, i32 2
  %2 = ptrtoint ptr %bssid_cam_idx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %bssid_cam_idx, align 1
  %conv = zext i8 %3 to i32
  %add.ptr.i45 = getelementptr i32, ptr %cmd, i32 12
  %4 = ptrtoint ptr %add.ptr.i45 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr.i45, align 4
  %and.i.i = and i32 %5, 16777215
  %6 = shl nuw i32 %conv, 24
  %or.i.i = or i32 %and.i.i, %6
  store i32 %or.i.i, ptr %add.ptr.i45, align 4
  %offset = getelementptr inbounds %struct.rtw89_vif, ptr %rtwvif, i32 0, i32 24, i32 3
  %7 = ptrtoint ptr %offset to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %offset, align 1
  %conv2 = zext i8 %8 to i32
  %and.i.i47 = and i32 %or.i.i, -16711681
  %9 = shl nuw nsw i32 %conv2, 16
  %or.i.i48 = or i32 %9, %and.i.i47
  store i32 %or.i.i48, ptr %add.ptr.i45, align 4
  %len = getelementptr inbounds %struct.rtw89_vif, ptr %rtwvif, i32 0, i32 24, i32 4
  %10 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %len, align 1
  %conv3 = zext i8 %11 to i32
  %and.i.i50 = and i32 %or.i.i48, -65281
  %12 = shl nuw nsw i32 %conv3, 8
  %or.i.i51 = or i32 %and.i.i50, %12
  store i32 %or.i.i51, ptr %add.ptr.i45, align 4
  %valid = getelementptr inbounds %struct.rtw89_vif, ptr %rtwvif, i32 0, i32 24, i32 5
  %13 = ptrtoint ptr %valid to i32
  call void @__asan_load1_noabort(i32 %13)
  %bf.load = load i8, ptr %valid, align 1
  %bf.lshr = lshr i8 %bf.load, 7
  %conv4 = zext i8 %bf.lshr to i32
  %add.ptr.i52 = getelementptr i32, ptr %cmd, i32 13
  %14 = ptrtoint ptr %add.ptr.i52 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %add.ptr.i52, align 4
  %and.i.i53 = and i32 %15, -16777217
  %16 = shl nuw nsw i32 %conv4, 24
  %or.i.i54 = or i32 %16, %and.i.i53
  store i32 %or.i.i54, ptr %add.ptr.i52, align 4
  %phy_idx = getelementptr inbounds %struct.rtw89_vif, ptr %rtwvif, i32 0, i32 24, i32 1
  %17 = ptrtoint ptr %phy_idx to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %phy_idx, align 1
  %conv5 = zext i8 %18 to i32
  %and.i.i56 = and i32 %or.i.i54, -33554433
  %19 = shl i32 %conv5, 25
  %20 = and i32 %19, 33554432
  %or.i.i57 = or i32 %20, %and.i.i56
  store i32 %or.i.i57, ptr %add.ptr.i52, align 4
  %conv6 = zext i8 %1 to i32
  %bssid_cam1 = getelementptr inbounds %struct.rtw89_vif, ptr %rtwvif, i32 0, i32 24
  %and.i.i61 = and i32 %or.i.i57, -4128769
  %21 = shl nuw nsw i32 %conv6, 16
  %22 = and i32 %21, 4128768
  %or.i.i62 = or i32 %and.i.i61, %22
  store i32 %or.i.i62, ptr %add.ptr.i52, align 4
  %23 = ptrtoint ptr %bssid_cam1 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %bssid_cam1, align 1
  %conv7 = zext i8 %24 to i32
  %and.i.i64 = and i32 %or.i.i62, -65281
  %25 = shl nuw nsw i32 %conv7, 8
  %or.i.i65 = or i32 %25, %and.i.i64
  store i32 %or.i.i65, ptr %add.ptr.i52, align 4
  %arrayidx9 = getelementptr %struct.rtw89_vif, ptr %rtwvif, i32 0, i32 24, i32 0, i32 1
  %26 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx9, align 1
  %conv10 = zext i8 %27 to i32
  %and.i.i67 = and i32 %or.i.i65, -256
  %or.i.i68 = or i32 %and.i.i67, %conv10
  store i32 %or.i.i68, ptr %add.ptr.i52, align 4
  %arrayidx12 = getelementptr %struct.rtw89_vif, ptr %rtwvif, i32 0, i32 24, i32 0, i32 2
  %28 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx12, align 1
  %conv13 = zext i8 %29 to i32
  %add.ptr.i69 = getelementptr i32, ptr %cmd, i32 14
  %30 = ptrtoint ptr %add.ptr.i69 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %add.ptr.i69, align 4
  %and.i.i70 = and i32 %31, 16777215
  %32 = shl nuw i32 %conv13, 24
  %or.i.i71 = or i32 %and.i.i70, %32
  store i32 %or.i.i71, ptr %add.ptr.i69, align 4
  %arrayidx15 = getelementptr %struct.rtw89_vif, ptr %rtwvif, i32 0, i32 24, i32 0, i32 3
  %33 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx15, align 1
  %conv16 = zext i8 %34 to i32
  %and.i.i73 = and i32 %or.i.i71, -16711681
  %35 = shl nuw nsw i32 %conv16, 16
  %or.i.i74 = or i32 %35, %and.i.i73
  store i32 %or.i.i74, ptr %add.ptr.i69, align 4
  %arrayidx18 = getelementptr %struct.rtw89_vif, ptr %rtwvif, i32 0, i32 24, i32 0, i32 4
  %36 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx18, align 1
  %conv19 = zext i8 %37 to i32
  %and.i.i76 = and i32 %or.i.i74, -65281
  %38 = shl nuw nsw i32 %conv19, 8
  %or.i.i77 = or i32 %and.i.i76, %38
  store i32 %or.i.i77, ptr %add.ptr.i69, align 4
  %arrayidx21 = getelementptr %struct.rtw89_vif, ptr %rtwvif, i32 0, i32 24, i32 0, i32 5
  %39 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx21, align 1
  %conv22 = zext i8 %40 to i32
  %and.i.i79 = and i32 %or.i.i77, -256
  %or.i.i80 = or i32 %and.i.i79, %conv22
  store i32 %or.i.i80, ptr %add.ptr.i69, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw89_cam_fill_addr_cam_info(ptr nocapture noundef readnone %rtwdev, ptr noundef readonly %rtwvif, ptr noundef readonly %rtwsta, ptr noundef readonly %scan_mac_addr, ptr noundef %cmd) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %addr_cam1 = getelementptr inbounds %struct.rtw89_vif, ptr %rtwvif, i32 0, i32 23
  %tobool.not.i = icmp eq ptr %rtwsta, null
  %add.ptr.i.i = getelementptr i8, ptr %rtwsta, i32 -268
  %spec.select.i = select i1 %tobool.not.i, ptr null, ptr %add.ptr.i.i
  %tobool.not = icmp eq ptr %scan_mac_addr, null
  %mac_addr = getelementptr inbounds %struct.rtw89_vif, ptr %rtwvif, i32 0, i32 3
  %cond = select i1 %tobool.not, ptr %mac_addr, ptr %scan_mac_addr
  %tobool3.not = icmp eq ptr %spec.select.i, null
  %addr = getelementptr inbounds %struct.ieee80211_sta, ptr %spec.select.i, i32 0, i32 1
  %bssid = getelementptr inbounds %struct.rtw89_vif, ptr %rtwvif, i32 0, i32 4
  %cond9 = select i1 %tobool3.not, ptr %bssid, ptr %addr
  %addr_mask = getelementptr inbounds %struct.rtw89_vif, ptr %rtwvif, i32 0, i32 23, i32 3
  %0 = ptrtoint ptr %addr_mask to i32
  call void @__asan_loadN_noabort(i32 %0, i32 2)
  %bf.load = load i16, ptr %addr_mask, align 1
  %bf.lshr = lshr i16 %bf.load, 9
  %1 = and i16 %bf.lshr, 63
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %cmp.not = icmp eq i16 %1, 0
  br i1 %cmp.not, label %entry.for.body.preheader.i_crit_edge, label %if.then

entry.for.body.preheader.i_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.preheader.i

if.then:                                          ; preds = %entry
  %2 = tail call i16 @llvm.cttz.i16(i16 %1, i1 true), !range !103
  %conv18 = trunc i16 %2 to i8
  %3 = lshr i16 %bf.load, 6
  %trunc = trunc i16 %3 to i2
  %4 = zext i2 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.54)
  switch i2 %trunc, label %if.end37.fold.split [
    i2 1, label %if.end37
    i2 -2, label %if.then.for.body.preheader.i_crit_edge
  ]

if.then.for.body.preheader.i_crit_edge:           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.preheader.i

if.end37.fold.split:                              ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.preheader.i

if.end37:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %conv18)
  %cmp9.i = icmp ult i8 %conv18, 6
  br i1 %cmp9.i, label %if.end37.for.body.preheader.i_crit_edge, label %if.end37.for.body.preheader.i304_crit_edge

if.end37.for.body.preheader.i304_crit_edge:       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.preheader.i304

if.end37.for.body.preheader.i_crit_edge:          ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.preheader.i

for.body.preheader.i:                             ; preds = %if.end37.for.body.preheader.i_crit_edge, %if.end37.fold.split, %if.then.for.body.preheader.i_crit_edge, %entry.for.body.preheader.i_crit_edge
  %tma_start.0510 = phi i8 [ 0, %if.end37.for.body.preheader.i_crit_edge ], [ 0, %if.end37.fold.split ], [ 0, %entry.for.body.preheader.i_crit_edge ], [ %conv18, %if.then.for.body.preheader.i_crit_edge ]
  %sma_start.0508 = phi i8 [ %conv18, %if.end37.for.body.preheader.i_crit_edge ], [ 0, %if.end37.fold.split ], [ 0, %entry.for.body.preheader.i_crit_edge ], [ 0, %if.then.for.body.preheader.i_crit_edge ]
  %5 = zext i8 %sma_start.0508 to i32
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.preheader.i
  %indvars.iv.i = phi i32 [ %5, %for.body.preheader.i ], [ %indvars.iv.next.i, %for.body.i.for.body.i_crit_edge ]
  %hash.010.i = phi i8 [ 0, %for.body.preheader.i ], [ %xor8.i, %for.body.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr i8, ptr %cond, i32 %indvars.iv.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx.i, align 1
  %xor8.i = xor i8 %7, %hash.010.i
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  %lftr.wideiv.i = trunc i32 %indvars.iv.next.i to i8
  %exitcond.not.i = icmp eq i8 %lftr.wideiv.i, 6
  br i1 %exitcond.not.i, label %rtw89_cam_addr_hash.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

rtw89_cam_addr_hash.exit:                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %tma_start.0510)
  %cmp9.i303 = icmp ult i8 %tma_start.0510, 6
  br i1 %cmp9.i303, label %rtw89_cam_addr_hash.exit.for.body.preheader.i304_crit_edge, label %rtw89_cam_addr_hash.exit.rtw89_cam_addr_hash.exit314_crit_edge

rtw89_cam_addr_hash.exit.rtw89_cam_addr_hash.exit314_crit_edge: ; preds = %rtw89_cam_addr_hash.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtw89_cam_addr_hash.exit314

rtw89_cam_addr_hash.exit.for.body.preheader.i304_crit_edge: ; preds = %rtw89_cam_addr_hash.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.preheader.i304

for.body.preheader.i304:                          ; preds = %rtw89_cam_addr_hash.exit.for.body.preheader.i304_crit_edge, %if.end37.for.body.preheader.i304_crit_edge
  %hash.0.lcssa.i516 = phi i8 [ %xor8.i, %rtw89_cam_addr_hash.exit.for.body.preheader.i304_crit_edge ], [ 0, %if.end37.for.body.preheader.i304_crit_edge ]
  %tma_start.0509514 = phi i8 [ %tma_start.0510, %rtw89_cam_addr_hash.exit.for.body.preheader.i304_crit_edge ], [ 0, %if.end37.for.body.preheader.i304_crit_edge ]
  %8 = zext i8 %tma_start.0509514 to i32
  br label %for.body.i312

for.body.i312:                                    ; preds = %for.body.i312.for.body.i312_crit_edge, %for.body.preheader.i304
  %indvars.iv.i305 = phi i32 [ %8, %for.body.preheader.i304 ], [ %indvars.iv.next.i309, %for.body.i312.for.body.i312_crit_edge ]
  %hash.010.i306 = phi i8 [ 0, %for.body.preheader.i304 ], [ %xor8.i308, %for.body.i312.for.body.i312_crit_edge ]
  %arrayidx.i307 = getelementptr i8, ptr %cond9, i32 %indvars.iv.i305
  %9 = ptrtoint ptr %arrayidx.i307 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx.i307, align 1
  %xor8.i308 = xor i8 %10, %hash.010.i306
  %indvars.iv.next.i309 = add nuw nsw i32 %indvars.iv.i305, 1
  %lftr.wideiv.i310 = trunc i32 %indvars.iv.next.i309 to i8
  %exitcond.not.i311 = icmp eq i8 %lftr.wideiv.i310, 6
  br i1 %exitcond.not.i311, label %rtw89_cam_addr_hash.exit314.loopexit, label %for.body.i312.for.body.i312_crit_edge

for.body.i312.for.body.i312_crit_edge:            ; preds = %for.body.i312
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i312

rtw89_cam_addr_hash.exit314.loopexit:             ; preds = %for.body.i312
  call void @__sanitizer_cov_trace_pc() #10
  %phi.cast = zext i8 %xor8.i308 to i32
  br label %rtw89_cam_addr_hash.exit314

rtw89_cam_addr_hash.exit314:                      ; preds = %rtw89_cam_addr_hash.exit314.loopexit, %rtw89_cam_addr_hash.exit.rtw89_cam_addr_hash.exit314_crit_edge
  %hash.0.lcssa.i515 = phi i8 [ %xor8.i, %rtw89_cam_addr_hash.exit.rtw89_cam_addr_hash.exit314_crit_edge ], [ %hash.0.lcssa.i516, %rtw89_cam_addr_hash.exit314.loopexit ]
  %hash.0.lcssa.i313 = phi i32 [ 0, %rtw89_cam_addr_hash.exit.rtw89_cam_addr_hash.exit314_crit_edge ], [ %phi.cast, %rtw89_cam_addr_hash.exit314.loopexit ]
  %11 = ptrtoint ptr %addr_cam1 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %addr_cam1, align 4
  %conv40 = zext i8 %12 to i32
  %add.ptr.i315 = getelementptr i32, ptr %cmd, i32 1
  %13 = ptrtoint ptr %add.ptr.i315 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %add.ptr.i315, align 4
  %and.i.i = and i32 %14, 16777215
  %15 = shl nuw i32 %conv40, 24
  %or.i.i = or i32 %and.i.i, %15
  store i32 %or.i.i, ptr %add.ptr.i315, align 4
  %offset = getelementptr inbounds %struct.rtw89_vif, ptr %rtwvif, i32 0, i32 23, i32 1
  %16 = ptrtoint ptr %offset to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %offset, align 1
  %conv41 = zext i8 %17 to i32
  %and.i.i317 = and i32 %or.i.i, -16711681
  %18 = shl nuw nsw i32 %conv41, 16
  %or.i.i318 = or i32 %18, %and.i.i317
  store i32 %or.i.i318, ptr %add.ptr.i315, align 4
  %len = getelementptr inbounds %struct.rtw89_vif, ptr %rtwvif, i32 0, i32 23, i32 2
  %19 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %len, align 2
  %conv42 = zext i8 %20 to i32
  %and.i.i320 = and i32 %or.i.i318, -65281
  %21 = shl nuw nsw i32 %conv42, 8
  %or.i.i321 = or i32 %and.i.i320, %21
  store i32 %or.i.i321, ptr %add.ptr.i315, align 4
  %22 = ptrtoint ptr %addr_mask to i32
  call void @__asan_loadN_noabort(i32 %22, i32 2)
  %bf.load43 = load i16, ptr %addr_mask, align 1
  %bf.lshr44 = lshr i16 %bf.load43, 15
  %bf.cast45 = zext i16 %bf.lshr44 to i32
  %add.ptr.i322 = getelementptr i32, ptr %cmd, i32 2
  %23 = ptrtoint ptr %add.ptr.i322 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %add.ptr.i322, align 4
  %and.i.i323 = and i32 %24, -16777217
  %25 = shl nuw nsw i32 %bf.cast45, 24
  %or.i.i324 = or i32 %25, %and.i.i323
  store i32 %or.i.i324, ptr %add.ptr.i322, align 4
  %net_type = getelementptr inbounds %struct.rtw89_vif, ptr %rtwvif, i32 0, i32 7
  %26 = ptrtoint ptr %net_type to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %net_type, align 8
  %conv47 = zext i8 %27 to i32
  %and.i.i326 = and i32 %or.i.i324, -100663297
  %28 = shl i32 %conv47, 25
  %29 = and i32 %28, 100663296
  %or.i.i327 = or i32 %29, %and.i.i326
  store i32 %or.i.i327, ptr %add.ptr.i322, align 4
  %bcn_hit_cond = getelementptr inbounds %struct.rtw89_vif, ptr %rtwvif, i32 0, i32 11
  %30 = ptrtoint ptr %bcn_hit_cond to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %bcn_hit_cond, align 4
  %conv48 = zext i8 %31 to i32
  %and.i.i331 = and i32 %or.i.i327, -402653185
  %32 = shl i32 %conv48, 27
  %33 = and i32 %32, 402653184
  %or.i.i332 = or i32 %33, %and.i.i331
  store i32 %or.i.i332, ptr %add.ptr.i322, align 4
  %hit_rule = getelementptr inbounds %struct.rtw89_vif, ptr %rtwvif, i32 0, i32 12
  %34 = ptrtoint ptr %hit_rule to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %hit_rule, align 1
  %conv49 = zext i8 %35 to i32
  %and.i.i336 = and i32 %or.i.i332, -1610612737
  %36 = shl i32 %conv49, 29
  %37 = and i32 %36, 1610612736
  %or.i.i337 = or i32 %37, %and.i.i336
  store i32 %or.i.i337, ptr %add.ptr.i322, align 4
  %phy_idx = getelementptr inbounds %struct.rtw89_vif, ptr %rtwvif, i32 0, i32 5
  %38 = ptrtoint ptr %phy_idx to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %phy_idx, align 2
  %conv50 = zext i8 %39 to i32
  %and.i.i341 = and i32 %or.i.i337, 2147483647
  %40 = shl i32 %conv50, 31
  %or.i.i342 = or i32 %40, %and.i.i341
  store i32 %or.i.i342, ptr %add.ptr.i322, align 4
  %bf.load52 = load i16, ptr %addr_mask, align 1
  %bf.lshr53 = lshr i16 %bf.load52, 9
  %bf.cast55 = zext i16 %bf.lshr53 to i32
  %and.i.i344 = and i32 %or.i.i342, -4128769
  %41 = shl nuw nsw i32 %bf.cast55, 16
  %42 = and i32 %41, 4128768
  %or.i.i345 = or i32 %42, %and.i.i344
  store i32 %or.i.i345, ptr %add.ptr.i322, align 4
  %bf.load58 = load i16, ptr %addr_mask, align 1
  %43 = lshr i16 %bf.load58, 6
  %44 = and i16 %43, 3
  %conv62 = zext i16 %44 to i32
  %and.i.i347 = and i32 %or.i.i345, -12648448
  %45 = shl nuw nsw i32 %conv62, 22
  %or.i.i348 = or i32 %and.i.i347, %45
  %conv63 = zext i8 %hash.0.lcssa.i515 to i32
  %46 = shl nuw nsw i32 %conv63, 8
  %or.i.i351 = or i32 %or.i.i348, %46
  %or.i.i354 = or i32 %or.i.i351, %hash.0.lcssa.i313
  store i32 %or.i.i354, ptr %add.ptr.i322, align 4
  %bf.load65 = load i16, ptr %addr_mask, align 1
  %47 = and i16 %bf.load65, 63
  %bf.cast67 = zext i16 %47 to i32
  %add.ptr.i355 = getelementptr i32, ptr %cmd, i32 3
  %48 = ptrtoint ptr %add.ptr.i355 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %add.ptr.i355, align 4
  %and.i.i356 = and i32 %49, -1056964609
  %50 = shl nuw nsw i32 %bf.cast67, 24
  %or.i.i357 = or i32 %50, %and.i.i356
  store i32 %or.i.i357, ptr %add.ptr.i355, align 4
  %51 = ptrtoint ptr %cond to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %cond, align 1
  %conv69 = zext i8 %52 to i32
  %add.ptr.i358 = getelementptr i32, ptr %cmd, i32 4
  %53 = ptrtoint ptr %add.ptr.i358 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %add.ptr.i358, align 4
  %and.i.i359 = and i32 %54, 16777215
  %55 = shl nuw i32 %conv69, 24
  %or.i.i360 = or i32 %and.i.i359, %55
  store i32 %or.i.i360, ptr %add.ptr.i358, align 4
  %arrayidx70 = getelementptr i8, ptr %cond, i32 1
  %56 = ptrtoint ptr %arrayidx70 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %arrayidx70, align 1
  %conv71 = zext i8 %57 to i32
  %and.i.i362 = and i32 %or.i.i360, -16711681
  %58 = shl nuw nsw i32 %conv71, 16
  %or.i.i363 = or i32 %58, %and.i.i362
  store i32 %or.i.i363, ptr %add.ptr.i358, align 4
  %arrayidx72 = getelementptr i8, ptr %cond, i32 2
  %59 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %arrayidx72, align 1
  %conv73 = zext i8 %60 to i32
  %and.i.i365 = and i32 %or.i.i363, -65281
  %61 = shl nuw nsw i32 %conv73, 8
  %or.i.i366 = or i32 %and.i.i365, %61
  store i32 %or.i.i366, ptr %add.ptr.i358, align 4
  %arrayidx74 = getelementptr i8, ptr %cond, i32 3
  %62 = ptrtoint ptr %arrayidx74 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %arrayidx74, align 1
  %conv75 = zext i8 %63 to i32
  %and.i.i368 = and i32 %or.i.i366, -256
  %or.i.i369 = or i32 %and.i.i368, %conv75
  store i32 %or.i.i369, ptr %add.ptr.i358, align 4
  %arrayidx76 = getelementptr i8, ptr %cond, i32 4
  %64 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %arrayidx76, align 1
  %conv77 = zext i8 %65 to i32
  %add.ptr.i370 = getelementptr i32, ptr %cmd, i32 5
  %66 = ptrtoint ptr %add.ptr.i370 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %add.ptr.i370, align 4
  %and.i.i371 = and i32 %67, 16777215
  %68 = shl nuw i32 %conv77, 24
  %or.i.i372 = or i32 %and.i.i371, %68
  store i32 %or.i.i372, ptr %add.ptr.i370, align 4
  %arrayidx78 = getelementptr i8, ptr %cond, i32 5
  %69 = ptrtoint ptr %arrayidx78 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %arrayidx78, align 1
  %conv79 = zext i8 %70 to i32
  %and.i.i374 = and i32 %or.i.i372, -16711681
  %71 = shl nuw nsw i32 %conv79, 16
  %or.i.i375 = or i32 %71, %and.i.i374
  store i32 %or.i.i375, ptr %add.ptr.i370, align 4
  %72 = ptrtoint ptr %cond9 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %cond9, align 1
  %conv81 = zext i8 %73 to i32
  %and.i.i377 = and i32 %or.i.i375, -65281
  %74 = shl nuw nsw i32 %conv81, 8
  %or.i.i378 = or i32 %and.i.i377, %74
  store i32 %or.i.i378, ptr %add.ptr.i370, align 4
  %arrayidx82 = getelementptr i8, ptr %cond9, i32 1
  %75 = ptrtoint ptr %arrayidx82 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %arrayidx82, align 1
  %conv83 = zext i8 %76 to i32
  %and.i.i380 = and i32 %or.i.i378, -256
  %or.i.i381 = or i32 %and.i.i380, %conv83
  store i32 %or.i.i381, ptr %add.ptr.i370, align 4
  %arrayidx84 = getelementptr i8, ptr %cond9, i32 2
  %77 = ptrtoint ptr %arrayidx84 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %arrayidx84, align 1
  %conv85 = zext i8 %78 to i32
  %add.ptr.i382 = getelementptr i32, ptr %cmd, i32 6
  %79 = ptrtoint ptr %add.ptr.i382 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %add.ptr.i382, align 4
  %and.i.i383 = and i32 %80, 16777215
  %81 = shl nuw i32 %conv85, 24
  %or.i.i384 = or i32 %and.i.i383, %81
  store i32 %or.i.i384, ptr %add.ptr.i382, align 4
  %arrayidx86 = getelementptr i8, ptr %cond9, i32 3
  %82 = ptrtoint ptr %arrayidx86 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %arrayidx86, align 1
  %conv87 = zext i8 %83 to i32
  %and.i.i386 = and i32 %or.i.i384, -16711681
  %84 = shl nuw nsw i32 %conv87, 16
  %or.i.i387 = or i32 %84, %and.i.i386
  store i32 %or.i.i387, ptr %add.ptr.i382, align 4
  %arrayidx88 = getelementptr i8, ptr %cond9, i32 4
  %85 = ptrtoint ptr %arrayidx88 to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %arrayidx88, align 1
  %conv89 = zext i8 %86 to i32
  %and.i.i389 = and i32 %or.i.i387, -65281
  %87 = shl nuw nsw i32 %conv89, 8
  %or.i.i390 = or i32 %and.i.i389, %87
  store i32 %or.i.i390, ptr %add.ptr.i382, align 4
  %arrayidx90 = getelementptr i8, ptr %cond9, i32 5
  %88 = ptrtoint ptr %arrayidx90 to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %arrayidx90, align 1
  %conv91 = zext i8 %89 to i32
  %and.i.i392 = and i32 %or.i.i390, -256
  %or.i.i393 = or i32 %and.i.i392, %conv91
  store i32 %or.i.i393, ptr %add.ptr.i382, align 4
  %add.ptr.i394 = getelementptr i32, ptr %cmd, i32 8
  %90 = ptrtoint ptr %add.ptr.i394 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %add.ptr.i394, align 4
  %port = getelementptr inbounds %struct.rtw89_vif, ptr %rtwvif, i32 0, i32 2
  %92 = ptrtoint ptr %port to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %port, align 1
  %conv92 = zext i8 %93 to i32
  %and.i.i397 = and i32 %91, -458753
  %94 = shl nuw nsw i32 %conv92, 16
  %95 = and i32 %94, 458752
  %or.i.i398 = or i32 %95, %and.i.i397
  store i32 %or.i.i398, ptr %add.ptr.i394, align 4
  %96 = load i8, ptr %port, align 1
  %conv94 = zext i8 %96 to i32
  %and.i.i402 = and i32 %or.i.i398, -3670017
  %97 = shl nuw nsw i32 %conv94, 19
  %98 = and i32 %97, 3670016
  %or.i.i403 = or i32 %98, %and.i.i402
  store i32 %or.i.i403, ptr %add.ptr.i394, align 4
  %trigger = getelementptr inbounds %struct.rtw89_vif, ptr %rtwvif, i32 0, i32 13
  %99 = ptrtoint ptr %trigger to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %trigger, align 2, !range !104
  %101 = zext i8 %100 to i32
  %and.i.i405 = and i32 %or.i.i403, -4194305
  %102 = shl nuw nsw i32 %101, 22
  %or.i.i406 = or i32 %102, %and.i.i405
  store i32 %or.i.i406, ptr %add.ptr.i394, align 4
  %lsig_txop = getelementptr inbounds %struct.rtw89_vif, ptr %rtwvif, i32 0, i32 14
  %103 = ptrtoint ptr %lsig_txop to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %lsig_txop, align 1, !range !104
  %105 = zext i8 %104 to i32
  %and.i.i408 = and i32 %or.i.i406, -8388609
  %106 = shl nuw nsw i32 %105, 23
  %or.i.i409 = or i32 %and.i.i408, %106
  store i32 %or.i.i409, ptr %add.ptr.i394, align 4
  %tgt_ind = getelementptr inbounds %struct.rtw89_vif, ptr %rtwvif, i32 0, i32 15
  %107 = ptrtoint ptr %tgt_ind to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %tgt_ind, align 8
  %and.i.i413 = and i32 %or.i.i409, -8
  %109 = and i8 %108, 7
  %110 = zext i8 %109 to i32
  %or.i.i414 = or i32 %and.i.i413, %110
  store i32 %or.i.i414, ptr %add.ptr.i394, align 4
  %frm_tgt_ind = getelementptr inbounds %struct.rtw89_vif, ptr %rtwvif, i32 0, i32 16
  %111 = ptrtoint ptr %frm_tgt_ind to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %frm_tgt_ind, align 1
  %conv100 = zext i8 %112 to i32
  %and.i.i418 = and i32 %or.i.i414, -57
  %113 = shl nuw nsw i32 %conv100, 3
  %114 = and i32 %113, 56
  %or.i.i419 = or i32 %114, %and.i.i418
  store i32 %or.i.i419, ptr %add.ptr.i394, align 4
  %mac_id105 = getelementptr inbounds %struct.rtw89_vif, ptr %rtwvif, i32 0, i32 1
  %cond108.in.in = select i1 %tobool.not.i, ptr %mac_id105, ptr %rtwsta
  %115 = ptrtoint ptr %cond108.in.in to i32
  call void @__asan_load1_noabort(i32 %115)
  %cond108.in = load i8, ptr %cond108.in.in, align 8
  %cond108 = zext i8 %cond108.in to i32
  %and.i.i421 = and i32 %or.i.i419, 16777215
  %116 = shl nuw i32 %cond108, 24
  %or.i.i422 = or i32 %116, %and.i.i421
  store i32 %or.i.i422, ptr %add.ptr.i394, align 4
  %117 = load i8, ptr %net_type, align 8
  %118 = zext i8 %117 to i64
  call void @__sanitizer_cov_trace_switch(i64 %118, ptr @__sancov_gen_cov_switch_values.55)
  switch i8 %117, label %rtw89_cam_addr_hash.exit314.if.end130_crit_edge [
    i8 2, label %if.then113
    i8 3, label %if.then120
  ]

rtw89_cam_addr_hash.exit314.if.end130_crit_edge:  ; preds = %rtw89_cam_addr_hash.exit314
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end130

if.then113:                                       ; preds = %rtw89_cam_addr_hash.exit314
  call void @__sanitizer_cov_trace_pc() #10
  %aid = getelementptr i8, ptr %rtwvif, i32 -822
  %119 = ptrtoint ptr %aid to i32
  call void @__asan_load2_noabort(i32 %119)
  %120 = load i16, ptr %aid, align 2
  %121 = and i16 %120, 4095
  %and = zext i16 %121 to i32
  %add.ptr.i423 = getelementptr i32, ptr %cmd, i32 9
  %122 = ptrtoint ptr %add.ptr.i423 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %add.ptr.i423, align 4
  %and.i.i424 = and i32 %123, 15794175
  %124 = tail call i32 @llvm.bswap.i32(i32 %and) #8
  br label %if.end130.sink.split

if.then120:                                       ; preds = %rtw89_cam_addr_hash.exit314
  br i1 %tobool3.not, label %if.then120.cond.end127_crit_edge, label %cond.true122

if.then120.cond.end127_crit_edge:                 ; preds = %if.then120
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end127

cond.true122:                                     ; preds = %if.then120
  call void @__sanitizer_cov_trace_pc() #10
  %aid123 = getelementptr inbounds %struct.ieee80211_sta, ptr %spec.select.i, i32 0, i32 2
  %125 = ptrtoint ptr %aid123 to i32
  call void @__asan_load2_noabort(i32 %125)
  %126 = load i16, ptr %aid123, align 2
  %127 = and i16 %126, 4095
  %and125 = zext i16 %127 to i32
  br label %cond.end127

cond.end127:                                      ; preds = %cond.true122, %if.then120.cond.end127_crit_edge
  %cond128 = phi i32 [ %and125, %cond.true122 ], [ 0, %if.then120.cond.end127_crit_edge ]
  %add.ptr.i426 = getelementptr i32, ptr %cmd, i32 9
  %128 = ptrtoint ptr %add.ptr.i426 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %add.ptr.i426, align 4
  %and.i.i427 = and i32 %129, 15794175
  %130 = tail call i32 @llvm.bswap.i32(i32 %cond128) #8
  br label %if.end130.sink.split

if.end130.sink.split:                             ; preds = %cond.end127, %if.then113
  %.sink = phi i32 [ %130, %cond.end127 ], [ %and.i.i424, %if.then113 ]
  %and.i.i427.sink = phi i32 [ %and.i.i427, %cond.end127 ], [ %124, %if.then113 ]
  %add.ptr.i426.sink = phi ptr [ %add.ptr.i426, %cond.end127 ], [ %add.ptr.i423, %if.then113 ]
  %or.i.i428 = or i32 %and.i.i427.sink, %.sink
  %131 = ptrtoint ptr %add.ptr.i426.sink to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 %or.i.i428, ptr %add.ptr.i426.sink, align 4
  br label %if.end130

if.end130:                                        ; preds = %if.end130.sink.split, %rtw89_cam_addr_hash.exit314.if.end130_crit_edge
  %wowlan_pattern = getelementptr inbounds %struct.rtw89_vif, ptr %rtwvif, i32 0, i32 17
  %132 = ptrtoint ptr %wowlan_pattern to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %wowlan_pattern, align 2, !range !104
  %134 = zext i8 %133 to i32
  %add.ptr.i429 = getelementptr i32, ptr %cmd, i32 9
  %135 = ptrtoint ptr %add.ptr.i429 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %add.ptr.i429, align 4
  %and.i.i430 = and i32 %136, -1048577
  %137 = shl nuw nsw i32 %134, 20
  %or.i.i431 = or i32 %and.i.i430, %137
  store i32 %or.i.i431, ptr %add.ptr.i429, align 4
  %wowlan_uc = getelementptr inbounds %struct.rtw89_vif, ptr %rtwvif, i32 0, i32 18
  %138 = ptrtoint ptr %wowlan_uc to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %wowlan_uc, align 1, !range !104
  %140 = zext i8 %139 to i32
  %and.i.i433 = and i32 %or.i.i431, -2097153
  %141 = shl nuw nsw i32 %140, 21
  %or.i.i434 = or i32 %141, %and.i.i433
  store i32 %or.i.i434, ptr %add.ptr.i429, align 4
  %wowlan_magic = getelementptr inbounds %struct.rtw89_vif, ptr %rtwvif, i32 0, i32 19
  %142 = ptrtoint ptr %wowlan_magic to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %wowlan_magic, align 4, !range !104
  %144 = zext i8 %143 to i32
  %and.i.i436 = and i32 %or.i.i434, -4194305
  %145 = shl nuw nsw i32 %144, 22
  %or.i.i437 = or i32 %and.i.i436, %145
  store i32 %or.i.i437, ptr %add.ptr.i429, align 4
  %146 = ptrtoint ptr %addr_mask to i32
  call void @__asan_loadN_noabort(i32 %146, i32 2)
  %bf.load137 = load i16, ptr %addr_mask, align 1
  %bf.lshr138 = lshr i16 %bf.load137, 8
  %bf.cast140 = zext i16 %bf.lshr138 to i32
  %and.i.i439 = and i32 %or.i.i437, -8388609
  %147 = shl nuw nsw i32 %bf.cast140, 23
  %148 = and i32 %147, 8388608
  %or.i.i440 = or i32 %148, %and.i.i439
  store i32 %or.i.i440, ptr %add.ptr.i429, align 4
  %sec_ent_mode = getelementptr inbounds %struct.rtw89_vif, ptr %rtwvif, i32 0, i32 23, i32 5
  %149 = ptrtoint ptr %sec_ent_mode to i32
  call void @__asan_load1_noabort(i32 %149)
  %150 = load i8, ptr %sec_ent_mode, align 1
  %conv142 = zext i8 %150 to i32
  %and.i.i444 = and i32 %or.i.i440, -769
  %151 = shl nuw nsw i32 %conv142, 8
  %152 = and i32 %151, 768
  %or.i.i445 = or i32 %and.i.i444, %152
  store i32 %or.i.i445, ptr %add.ptr.i429, align 4
  %sec_ent_keyid = getelementptr inbounds %struct.rtw89_vif, ptr %rtwvif, i32 0, i32 23, i32 7
  %153 = ptrtoint ptr %sec_ent_keyid to i32
  call void @__asan_load1_noabort(i32 %153)
  %154 = load i8, ptr %sec_ent_keyid, align 4
  %conv144 = zext i8 %154 to i32
  %and.i.i449 = and i32 %or.i.i445, -3073
  %155 = shl nuw nsw i32 %conv144, 10
  %156 = and i32 %155, 3072
  %or.i.i450 = or i32 %156, %and.i.i449
  store i32 %or.i.i450, ptr %add.ptr.i429, align 4
  %arrayidx146 = getelementptr %struct.rtw89_vif, ptr %rtwvif, i32 0, i32 23, i32 7, i32 1
  %157 = ptrtoint ptr %arrayidx146 to i32
  call void @__asan_load1_noabort(i32 %157)
  %158 = load i8, ptr %arrayidx146, align 1
  %conv147 = zext i8 %158 to i32
  %and.i.i454 = and i32 %or.i.i450, -12289
  %159 = shl nuw nsw i32 %conv147, 12
  %160 = and i32 %159, 12288
  %or.i.i455 = or i32 %160, %and.i.i454
  store i32 %or.i.i455, ptr %add.ptr.i429, align 4
  %arrayidx149 = getelementptr %struct.rtw89_vif, ptr %rtwvif, i32 0, i32 23, i32 7, i32 2
  %161 = ptrtoint ptr %arrayidx149 to i32
  call void @__asan_load1_noabort(i32 %161)
  %162 = load i8, ptr %arrayidx149, align 2
  %conv150 = zext i8 %162 to i32
  %and.i.i459 = and i32 %or.i.i455, -49153
  %163 = shl nuw nsw i32 %conv150, 14
  %164 = and i32 %163, 49152
  %or.i.i460 = or i32 %164, %and.i.i459
  store i32 %or.i.i460, ptr %add.ptr.i429, align 4
  %arrayidx152 = getelementptr %struct.rtw89_vif, ptr %rtwvif, i32 0, i32 23, i32 7, i32 3
  %165 = ptrtoint ptr %arrayidx152 to i32
  call void @__asan_load1_noabort(i32 %165)
  %166 = load i8, ptr %arrayidx152, align 1
  %and.i.i464 = and i32 %or.i.i460, -4
  %167 = and i8 %166, 3
  %168 = zext i8 %167 to i32
  %or.i.i465 = or i32 %and.i.i464, %168
  store i32 %or.i.i465, ptr %add.ptr.i429, align 4
  %arrayidx155 = getelementptr %struct.rtw89_vif, ptr %rtwvif, i32 0, i32 23, i32 7, i32 4
  %169 = ptrtoint ptr %arrayidx155 to i32
  call void @__asan_load1_noabort(i32 %169)
  %170 = load i8, ptr %arrayidx155, align 4
  %conv156 = zext i8 %170 to i32
  %and.i.i469 = and i32 %or.i.i465, -13
  %171 = shl nuw nsw i32 %conv156, 2
  %172 = and i32 %171, 12
  %or.i.i470 = or i32 %172, %and.i.i469
  store i32 %or.i.i470, ptr %add.ptr.i429, align 4
  %arrayidx158 = getelementptr %struct.rtw89_vif, ptr %rtwvif, i32 0, i32 23, i32 7, i32 5
  %173 = ptrtoint ptr %arrayidx158 to i32
  call void @__asan_load1_noabort(i32 %173)
  %174 = load i8, ptr %arrayidx158, align 1
  %conv159 = zext i8 %174 to i32
  %and.i.i474 = and i32 %or.i.i470, -49
  %175 = shl nuw nsw i32 %conv159, 4
  %176 = and i32 %175, 48
  %or.i.i475 = or i32 %176, %and.i.i474
  store i32 %or.i.i475, ptr %add.ptr.i429, align 4
  %arrayidx161 = getelementptr %struct.rtw89_vif, ptr %rtwvif, i32 0, i32 23, i32 7, i32 6
  %177 = ptrtoint ptr %arrayidx161 to i32
  call void @__asan_load1_noabort(i32 %177)
  %178 = load i8, ptr %arrayidx161, align 2
  %conv162 = zext i8 %178 to i32
  %and.i.i479 = and i32 %or.i.i475, -193
  %179 = shl nuw nsw i32 %conv162, 6
  %180 = and i32 %179, 192
  %or.i.i480 = or i32 %180, %and.i.i479
  store i32 %or.i.i480, ptr %add.ptr.i429, align 4
  %sec_cam_map = getelementptr inbounds %struct.rtw89_vif, ptr %rtwvif, i32 0, i32 23, i32 6
  %181 = ptrtoint ptr %sec_cam_map to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %sec_cam_map, align 4
  %add.ptr.i481 = getelementptr i32, ptr %cmd, i32 10
  %183 = ptrtoint ptr %add.ptr.i481 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %add.ptr.i481, align 4
  %and.i.i482 = and i32 %184, 16777215
  %and164 = shl i32 %182, 24
  %or.i.i483 = or i32 %and.i.i482, %and164
  store i32 %or.i.i483, ptr %add.ptr.i481, align 4
  %sec_ent = getelementptr inbounds %struct.rtw89_vif, ptr %rtwvif, i32 0, i32 23, i32 8
  %185 = ptrtoint ptr %sec_ent to i32
  call void @__asan_load1_noabort(i32 %185)
  %186 = load i8, ptr %sec_ent, align 1
  %conv166 = zext i8 %186 to i32
  %and.i.i485 = and i32 %or.i.i483, -16711681
  %187 = shl nuw nsw i32 %conv166, 16
  %or.i.i486 = or i32 %187, %and.i.i485
  store i32 %or.i.i486, ptr %add.ptr.i481, align 4
  %arrayidx168 = getelementptr %struct.rtw89_vif, ptr %rtwvif, i32 0, i32 23, i32 8, i32 1
  %188 = ptrtoint ptr %arrayidx168 to i32
  call void @__asan_load1_noabort(i32 %188)
  %189 = load i8, ptr %arrayidx168, align 1
  %conv169 = zext i8 %189 to i32
  %and.i.i488 = and i32 %or.i.i486, -65281
  %190 = shl nuw nsw i32 %conv169, 8
  %or.i.i489 = or i32 %and.i.i488, %190
  store i32 %or.i.i489, ptr %add.ptr.i481, align 4
  %arrayidx171 = getelementptr %struct.rtw89_vif, ptr %rtwvif, i32 0, i32 23, i32 8, i32 2
  %191 = ptrtoint ptr %arrayidx171 to i32
  call void @__asan_load1_noabort(i32 %191)
  %192 = load i8, ptr %arrayidx171, align 1
  %conv172 = zext i8 %192 to i32
  %and.i.i491 = and i32 %or.i.i489, -256
  %or.i.i492 = or i32 %and.i.i491, %conv172
  store i32 %or.i.i492, ptr %add.ptr.i481, align 4
  %arrayidx174 = getelementptr %struct.rtw89_vif, ptr %rtwvif, i32 0, i32 23, i32 8, i32 3
  %193 = ptrtoint ptr %arrayidx174 to i32
  call void @__asan_load1_noabort(i32 %193)
  %194 = load i8, ptr %arrayidx174, align 1
  %conv175 = zext i8 %194 to i32
  %add.ptr.i493 = getelementptr i32, ptr %cmd, i32 11
  %195 = ptrtoint ptr %add.ptr.i493 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %add.ptr.i493, align 4
  %and.i.i494 = and i32 %196, 16777215
  %197 = shl nuw i32 %conv175, 24
  %or.i.i495 = or i32 %and.i.i494, %197
  store i32 %or.i.i495, ptr %add.ptr.i493, align 4
  %arrayidx177 = getelementptr %struct.rtw89_vif, ptr %rtwvif, i32 0, i32 23, i32 8, i32 4
  %198 = ptrtoint ptr %arrayidx177 to i32
  call void @__asan_load1_noabort(i32 %198)
  %199 = load i8, ptr %arrayidx177, align 1
  %conv178 = zext i8 %199 to i32
  %and.i.i497 = and i32 %or.i.i495, -16711681
  %200 = shl nuw nsw i32 %conv178, 16
  %or.i.i498 = or i32 %200, %and.i.i497
  store i32 %or.i.i498, ptr %add.ptr.i493, align 4
  %arrayidx180 = getelementptr %struct.rtw89_vif, ptr %rtwvif, i32 0, i32 23, i32 8, i32 5
  %201 = ptrtoint ptr %arrayidx180 to i32
  call void @__asan_load1_noabort(i32 %201)
  %202 = load i8, ptr %arrayidx180, align 1
  %conv181 = zext i8 %202 to i32
  %and.i.i500 = and i32 %or.i.i498, -65281
  %203 = shl nuw nsw i32 %conv181, 8
  %or.i.i501 = or i32 %and.i.i500, %203
  store i32 %or.i.i501, ptr %add.ptr.i493, align 4
  %arrayidx183 = getelementptr %struct.rtw89_vif, ptr %rtwvif, i32 0, i32 23, i32 8, i32 6
  %204 = ptrtoint ptr %arrayidx183 to i32
  call void @__asan_load1_noabort(i32 %204)
  %205 = load i8, ptr %arrayidx183, align 1
  %conv184 = zext i8 %205 to i32
  %and.i.i503 = and i32 %or.i.i501, -256
  %or.i.i504 = or i32 %and.i.i503, %conv184
  store i32 %or.i.i504, ptr %add.ptr.i493, align 4
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_zero_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_zero_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @rtw89_cam_get_sec_key_cmd(ptr nocapture noundef readonly %sec_cam, i1 noundef zeroext %ext_key) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rtw89_fw_h2c_alloc_skb_with_hdr(i32 noundef 24) #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = tail call ptr @skb_put(ptr noundef nonnull %call, i32 noundef 24) #8
  %0 = call ptr @memset(ptr %call.i, i32 0, i32 24)
  %data = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 19
  %1 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %data, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %2, align 4
  %5 = ptrtoint ptr %sec_cam to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %sec_cam, align 1
  %conv135 = zext i8 %6 to i32
  %cond138 = zext i1 %ext_key to i32
  %add139 = add nuw nsw i32 %conv135, %cond138
  %cond = select i1 %ext_key, i32 16, i32 0
  %add35.3 = or i32 %cond, 13
  %arrayidx36.3 = getelementptr %struct.rtw89_sec_cam_entry, ptr %sec_cam, i32 0, i32 4, i32 %add35.3
  %7 = ptrtoint ptr %arrayidx36.3 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx36.3, align 1
  %conv59.3 = zext i8 %8 to i32
  %shl60.3 = shl nuw nsw i32 %conv59.3, 8
  %add.3 = or i32 %cond, 12
  %arrayidx.3 = getelementptr %struct.rtw89_sec_cam_entry, ptr %sec_cam, i32 0, i32 4, i32 %add.3
  %9 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx.3, align 1
  %conv25.3 = zext i8 %10 to i32
  %or.3 = or i32 %shl60.3, %conv25.3
  %add70.3 = or i32 %cond, 14
  %arrayidx71.3 = getelementptr %struct.rtw89_sec_cam_entry, ptr %sec_cam, i32 0, i32 4, i32 %add70.3
  %11 = ptrtoint ptr %arrayidx71.3 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx71.3, align 1
  %conv94.3 = zext i8 %12 to i32
  %shl95.3 = shl nuw nsw i32 %conv94.3, 16
  %or97.3 = or i32 %or.3, %shl95.3
  %add106.3 = or i32 %cond, 15
  %arrayidx107.3 = getelementptr %struct.rtw89_sec_cam_entry, ptr %sec_cam, i32 0, i32 4, i32 %add106.3
  %13 = ptrtoint ptr %arrayidx107.3 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx107.3, align 1
  %conv130.3 = zext i8 %14 to i32
  %shl131.3 = shl nuw i32 %conv130.3, 24
  %or133.3 = or i32 %or97.3, %shl131.3
  %add35.2 = or i32 %cond, 9
  %arrayidx36.2 = getelementptr %struct.rtw89_sec_cam_entry, ptr %sec_cam, i32 0, i32 4, i32 %add35.2
  %15 = ptrtoint ptr %arrayidx36.2 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx36.2, align 1
  %conv59.2 = zext i8 %16 to i32
  %shl60.2 = shl nuw nsw i32 %conv59.2, 8
  %add.2 = or i32 %cond, 8
  %arrayidx.2 = getelementptr %struct.rtw89_sec_cam_entry, ptr %sec_cam, i32 0, i32 4, i32 %add.2
  %17 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx.2, align 1
  %conv25.2 = zext i8 %18 to i32
  %or.2 = or i32 %shl60.2, %conv25.2
  %add70.2 = or i32 %cond, 10
  %arrayidx71.2 = getelementptr %struct.rtw89_sec_cam_entry, ptr %sec_cam, i32 0, i32 4, i32 %add70.2
  %19 = ptrtoint ptr %arrayidx71.2 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx71.2, align 1
  %conv94.2 = zext i8 %20 to i32
  %shl95.2 = shl nuw nsw i32 %conv94.2, 16
  %or97.2 = or i32 %or.2, %shl95.2
  %add106.2 = or i32 %cond, 11
  %arrayidx107.2 = getelementptr %struct.rtw89_sec_cam_entry, ptr %sec_cam, i32 0, i32 4, i32 %add106.2
  %21 = ptrtoint ptr %arrayidx107.2 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx107.2, align 1
  %conv130.2 = zext i8 %22 to i32
  %shl131.2 = shl nuw i32 %conv130.2, 24
  %or133.2 = or i32 %or97.2, %shl131.2
  %add35.1 = or i32 %cond, 5
  %arrayidx36.1 = getelementptr %struct.rtw89_sec_cam_entry, ptr %sec_cam, i32 0, i32 4, i32 %add35.1
  %23 = ptrtoint ptr %arrayidx36.1 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx36.1, align 1
  %conv59.1 = zext i8 %24 to i32
  %shl60.1 = shl nuw nsw i32 %conv59.1, 8
  %add.1 = or i32 %cond, 4
  %arrayidx.1 = getelementptr %struct.rtw89_sec_cam_entry, ptr %sec_cam, i32 0, i32 4, i32 %add.1
  %25 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx.1, align 1
  %conv25.1 = zext i8 %26 to i32
  %or.1 = or i32 %shl60.1, %conv25.1
  %add70.1 = or i32 %cond, 6
  %arrayidx71.1 = getelementptr %struct.rtw89_sec_cam_entry, ptr %sec_cam, i32 0, i32 4, i32 %add70.1
  %27 = ptrtoint ptr %arrayidx71.1 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx71.1, align 1
  %conv94.1 = zext i8 %28 to i32
  %shl95.1 = shl nuw nsw i32 %conv94.1, 16
  %or97.1 = or i32 %or.1, %shl95.1
  %add106.1 = or i32 %cond, 7
  %arrayidx107.1 = getelementptr %struct.rtw89_sec_cam_entry, ptr %sec_cam, i32 0, i32 4, i32 %add106.1
  %29 = ptrtoint ptr %arrayidx107.1 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx107.1, align 1
  %conv130.1 = zext i8 %30 to i32
  %shl131.1 = shl nuw i32 %conv130.1, 24
  %or133.1 = or i32 %or97.1, %shl131.1
  %add35 = or i32 %cond, 1
  %arrayidx36 = getelementptr %struct.rtw89_sec_cam_entry, ptr %sec_cam, i32 0, i32 4, i32 %add35
  %31 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx36, align 1
  %conv59 = zext i8 %32 to i32
  %shl60 = shl nuw nsw i32 %conv59, 8
  %arrayidx = getelementptr %struct.rtw89_sec_cam_entry, ptr %sec_cam, i32 0, i32 4, i32 %cond
  %33 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx, align 1
  %conv25 = zext i8 %34 to i32
  %or = or i32 %shl60, %conv25
  %add70 = or i32 %cond, 2
  %arrayidx71 = getelementptr %struct.rtw89_sec_cam_entry, ptr %sec_cam, i32 0, i32 4, i32 %add70
  %35 = ptrtoint ptr %arrayidx71 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx71, align 1
  %conv94 = zext i8 %36 to i32
  %shl95 = shl nuw nsw i32 %conv94, 16
  %or97 = or i32 %or, %shl95
  %add106 = or i32 %cond, 3
  %arrayidx107 = getelementptr %struct.rtw89_sec_cam_entry, ptr %sec_cam, i32 0, i32 4, i32 %add106
  %37 = ptrtoint ptr %arrayidx107 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx107, align 1
  %conv130 = zext i8 %38 to i32
  %shl131 = shl nuw i32 %conv130, 24
  %or133 = or i32 %or97, %shl131
  %and.i.i = and i32 %4, 16777215
  %39 = shl i32 %add139, 24
  %or.i.i = or i32 %39, %and.i.i
  store i32 %or.i.i, ptr %2, align 4
  %offset = getelementptr inbounds %struct.rtw89_sec_cam_entry, ptr %sec_cam, i32 0, i32 1
  %40 = ptrtoint ptr %offset to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %offset, align 1
  %conv140 = zext i8 %41 to i32
  %and.i.i1 = and i32 %or.i.i, -16711681
  %42 = shl nuw nsw i32 %conv140, 16
  %or.i.i2 = or i32 %42, %and.i.i1
  store i32 %or.i.i2, ptr %2, align 4
  %len = getelementptr inbounds %struct.rtw89_sec_cam_entry, ptr %sec_cam, i32 0, i32 2
  %43 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %len, align 1
  %conv141 = zext i8 %44 to i32
  %and.i.i3 = and i32 %or.i.i2, -65281
  %45 = shl nuw nsw i32 %conv141, 8
  %or.i.i4 = or i32 %and.i.i3, %45
  store i32 %or.i.i4, ptr %2, align 4
  %type = getelementptr inbounds %struct.rtw89_sec_cam_entry, ptr %sec_cam, i32 0, i32 3
  %46 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %46)
  %bf.load = load i8, ptr %type, align 1
  %bf.lshr = lshr i8 %bf.load, 4
  %conv142 = zext i8 %bf.lshr to i32
  %add.ptr.i = getelementptr i32, ptr %2, i32 1
  %47 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %add.ptr.i, align 4
  %and.i.i5 = and i32 %48, -520093697
  %49 = shl nuw nsw i32 %conv142, 24
  %or.i.i6 = or i32 %49, %and.i.i5
  %50 = select i1 %ext_key, i32 268435456, i32 0
  %or.i.i9 = or i32 %or.i.i6, %50
  store i32 %or.i.i9, ptr %add.ptr.i, align 4
  %bf.load145 = load i8, ptr %type, align 1
  %bf.lshr146 = lshr i8 %bf.load145, 2
  %bf.clear = and i8 %bf.lshr146, 1
  %conv147 = zext i8 %bf.clear to i32
  %and.i.i11 = and i32 %or.i.i9, -536870913
  %51 = shl nuw nsw i32 %conv147, 29
  %or.i.i12 = or i32 %51, %and.i.i11
  store i32 %or.i.i12, ptr %add.ptr.i, align 4
  %add.ptr.i13 = getelementptr i32, ptr %2, i32 2
  %52 = tail call i32 @llvm.bswap.i32(i32 %or133) #8
  %53 = ptrtoint ptr %add.ptr.i13 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %add.ptr.i13, align 4
  %add.ptr.i14 = getelementptr i32, ptr %2, i32 3
  %54 = tail call i32 @llvm.bswap.i32(i32 %or133.1) #8
  %55 = ptrtoint ptr %add.ptr.i14 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %add.ptr.i14, align 4
  %add.ptr.i15 = getelementptr i32, ptr %2, i32 4
  %56 = tail call i32 @llvm.bswap.i32(i32 %or133.2) #8
  %57 = ptrtoint ptr %add.ptr.i15 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %add.ptr.i15, align 4
  %add.ptr.i16 = getelementptr i32, ptr %2, i32 5
  %58 = tail call i32 @llvm.bswap.i32(i32 %or133.3) #8
  %59 = ptrtoint ptr %add.ptr.i16 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %58, ptr %add.ptr.i16, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret ptr %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw89_h2c_pkt_set_hdr(ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw89_h2c_tx(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rtw89_fw_h2c_alloc_skb_with_hdr(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.cttz.i16(i16, i1 immarg) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 51)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 51)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind readonly }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !13, !15, !16, !17, !19, !20, !21, !22, !24, !25, !26, !28, !29, !30, !31, !33, !34, !35, !36, !38, !39, !40, !42, !43, !44, !46, !47, !48, !49, !51, !52, !53, !55, !56, !57, !59, !60, !61, !63, !64, !65, !66, !68, !69, !70, !72, !73, !74, !76, !77, !78, !80, !81, !83, !84, !85, !86, !88, !89, !90}
!llvm.named.register.sp = !{!91}
!llvm.module.flags = !{!92, !93, !94, !95, !96, !97, !98, !99}
!llvm.ident = !{!100}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/realtek/rtw89/cam.c", i32 361, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @rtw89_cam_sec_key_add._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @rtw89_cam_sec_key_add._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/realtek/rtw89/cam.c", i32 385, i32 3}
!10 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @rtw89_cam_sec_key_del._entry, !9, !"_entry", i1 false, i1 false}
!12 = !{ptr @rtw89_cam_sec_key_del._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.8, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/net/wireless/realtek/rtw89/cam.c", i32 401, i32 4}
!15 = !{ptr @rtw89_cam_sec_key_del._entry.7, !14, !"_entry", i1 false, i1 false}
!16 = !{ptr @rtw89_cam_sec_key_del._entry_ptr.9, !14, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.10, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/net/wireless/realtek/rtw89/cam.c", i32 554, i32 3}
!19 = !{ptr @.str.11, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @rtw89_cam_init._entry, !18, !"_entry", i1 false, i1 false}
!21 = !{ptr @rtw89_cam_init._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.13, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/wireless/realtek/rtw89/cam.c", i32 560, i32 3}
!24 = !{ptr @rtw89_cam_init._entry.12, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @rtw89_cam_init._entry_ptr.14, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.15, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/wireless/realtek/rtw89/cam.c", i32 272, i32 3}
!28 = !{ptr @.str.16, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @rtw89_cam_sec_key_install._entry, !27, !"_entry", i1 false, i1 false}
!30 = !{ptr @rtw89_cam_sec_key_install._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.18, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/net/wireless/realtek/rtw89/cam.c", i32 278, i32 3}
!33 = !{ptr @.str.19, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @rtw89_cam_sec_key_install._entry.17, !32, !"_entry", i1 false, i1 false}
!35 = !{ptr @rtw89_cam_sec_key_install._entry_ptr.20, !32, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.22, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/wireless/realtek/rtw89/cam.c", i32 296, i32 3}
!38 = !{ptr @rtw89_cam_sec_key_install._entry.21, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @rtw89_cam_sec_key_install._entry_ptr.23, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.25, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/wireless/realtek/rtw89/cam.c", i32 303, i32 3}
!42 = !{ptr @rtw89_cam_sec_key_install._entry.24, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @rtw89_cam_sec_key_install._entry_ptr.26, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.27, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/wireless/realtek/rtw89/cam.c", i32 59, i32 3}
!46 = !{ptr @.str.28, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @rtw89_cam_send_sec_key_cmd._entry, !45, !"_entry", i1 false, i1 false}
!48 = !{ptr @rtw89_cam_send_sec_key_cmd._entry_ptr, !45, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.30, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/net/wireless/realtek/rtw89/cam.c", i32 71, i32 3}
!51 = !{ptr @rtw89_cam_send_sec_key_cmd._entry.29, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @rtw89_cam_send_sec_key_cmd._entry_ptr.31, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.33, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/net/wireless/realtek/rtw89/cam.c", i32 81, i32 3}
!55 = !{ptr @rtw89_cam_send_sec_key_cmd._entry.32, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @rtw89_cam_send_sec_key_cmd._entry_ptr.34, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.36, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/net/wireless/realtek/rtw89/cam.c", i32 93, i32 3}
!59 = !{ptr @rtw89_cam_send_sec_key_cmd._entry.35, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @rtw89_cam_send_sec_key_cmd._entry_ptr.37, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.38, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/net/wireless/realtek/rtw89/cam.c", i32 229, i32 3}
!63 = !{ptr @.str.39, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @rtw89_cam_attach_sec_cam._entry, !62, !"_entry", i1 false, i1 false}
!65 = !{ptr @rtw89_cam_attach_sec_cam._entry_ptr, !62, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.41, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/net/wireless/realtek/rtw89/cam.c", i32 237, i32 3}
!68 = !{ptr @rtw89_cam_attach_sec_cam._entry.40, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @rtw89_cam_attach_sec_cam._entry_ptr.42, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.44, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/net/wireless/realtek/rtw89/cam.c", i32 249, i32 3}
!72 = !{ptr @rtw89_cam_attach_sec_cam._entry.43, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @rtw89_cam_attach_sec_cam._entry_ptr.45, !71, !"_entry_ptr", i1 false, i1 false}
!74 = distinct !{null, !75, !"__warned", i1 false, i1 false}
!75 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!76 = !{ptr @.str.46, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @.str.47, !75, !"<string literal>", i1 false, i1 false}
!78 = distinct !{null, !79, !"__warned", i1 false, i1 false}
!79 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!80 = !{ptr @.str.48, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @.str.49, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/net/wireless/realtek/rtw89/cam.c", i32 477, i32 3}
!83 = !{ptr @.str.50, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @rtw89_cam_init_addr_cam._entry, !82, !"_entry", i1 false, i1 false}
!85 = !{ptr @rtw89_cam_init_addr_cam._entry_ptr, !82, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.51, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/net/wireless/realtek/rtw89/cam.c", i32 525, i32 3}
!88 = !{ptr @.str.52, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @rtw89_cam_init_bssid_cam._entry, !87, !"_entry", i1 false, i1 false}
!90 = !{ptr @rtw89_cam_init_bssid_cam._entry_ptr, !87, !"_entry_ptr", i1 false, i1 false}
!91 = !{!"sp"}
!92 = !{i32 1, !"wchar_size", i32 2}
!93 = !{i32 1, !"min_enum_size", i32 4}
!94 = !{i32 8, !"branch-target-enforcement", i32 0}
!95 = !{i32 8, !"sign-return-address", i32 0}
!96 = !{i32 8, !"sign-return-address-all", i32 0}
!97 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!98 = !{i32 7, !"uwtable", i32 1}
!99 = !{i32 7, !"frame-pointer", i32 2}
!100 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!101 = !{i64 2150029761}
!102 = !{i64 2150030027}
!103 = !{i16 0, i16 17}
!104 = !{i8 0, i8 2}
