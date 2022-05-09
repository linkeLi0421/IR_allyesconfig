; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/realtek/rtw89/fw.c_pt.bc'
source_filename = "../drivers/net/wireless/realtek/rtw89/fw.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.5 }
%union.anon.5 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.sk_buff = type { %union.anon, %union.anon.107, %union.anon.108, [48 x i8], %union.anon.109, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.111, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%union.anon.107 = type { ptr }
%union.anon.108 = type { i64 }
%union.anon.109 = type { %struct.anon.110 }
%struct.anon.110 = type { i32, ptr }
%union.anon.111 = type { %struct.anon.112 }
%struct.anon.112 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.113, i32, i32, i32, i16, i16, %union.anon.115, i32, %union.anon.116, %union.anon.117, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.113 = type { i32 }
%union.anon.115 = type { i32 }
%union.anon.116 = type { i32 }
%union.anon.117 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.arch_spinlock_t = type { %union.anon.7 }
%union.anon.7 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.rtw89_fw_suit = type { ptr, i32, i8, i8, i8, i8, i16, i16, i16, i16, i16, i8 }
%struct.rtw89_hci_info = type { ptr, i32, i32, i32 }
%struct.rtw89_efuse = type { i8, i8, [6 x i8], i8, [2 x i8] }
%struct.rtw89_traffic_stats = type { i64, i64, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, %struct.ewma_tp, %struct.ewma_tp, i16, i16 }
%struct.ewma_tp = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.6 }
%union.anon.6 = type { %struct.raw_spinlock }
%struct.rtw89_cam_info = type { [4 x i32], [1 x i32], [4 x i32] }
%struct.sk_buff_head = type { %union.anon.51, i32, %struct.spinlock }
%union.anon.51 = type { %struct.anon.52 }
%struct.anon.52 = type { ptr, ptr }
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
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.1, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.106, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.1 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.106 = type { ptr }
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
%struct.rtw89_hci_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.firmware = type { i32, ptr, ptr }
%struct.rtw89_mfw_hdr = type { i8, i8, [14 x i8], [0 x %struct.rtw89_mfw_info] }
%struct.rtw89_mfw_info = type { i8, i8, i8, i8, i32, i32, [4 x i8] }
%struct.fwcmd_hdr = type { i32, i32 }
%struct.rtw89_fw_bin_info = type { i8, i32, [10 x %struct.rtw89_fw_hdr_section_info] }
%struct.rtw89_fw_hdr_section_info = type { i8, ptr, i32, i32 }
%struct.rtw89_chip_info = type { i32, ptr, ptr, i32, i16, i8, ptr, ptr, [2 x i32], i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, ptr, ptr, ptr, [4 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i32, i32, i8, i8, i8, i8, ptr, ptr, i8, i8, ptr, i8, ptr, i8, ptr, i8 }
%struct.ieee80211_ampdu_params = type { i32, ptr, i16, i16, i16, i8, i16 }
%struct.rtw89_lps_parm = type { i8, i8, i8 }
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
%struct.rtw89_vif = type { %struct.list_head, i8, i8, [6 x i8], [6 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.rtw89_addr_cam_entry, %struct.rtw89_bssid_cam_entry, [4 x %struct.ieee80211_tx_queue_params], %struct.rtw89_traffic_stats, %struct.rtw89_phy_rate_pattern }
%struct.rtw89_addr_cam_entry = type <{ i8, i8, i8, i16, [6 x i8], i8, [1 x i32], [7 x i8], [7 x i8], [2 x i8], [7 x ptr] }>
%struct.rtw89_bssid_cam_entry = type { [6 x i8], i8, i8, i8, i8, i8, i8 }
%struct.ieee80211_tx_queue_params = type { i16, i16, i16, i8, i8, i8, i8, %struct.ieee80211_he_mu_edca_param_ac_rec }
%struct.ieee80211_he_mu_edca_param_ac_rec = type { i8, i8, i8 }
%struct.rtw89_phy_rate_pattern = type { i64, i16, i8, i8 }
%struct.rtw89_sta = type { i8, i8, ptr, %struct.rtw89_ra_info, %struct.rtw89_ra_report, i32, i8, %struct.ewma_rssi, [16 x %struct.rtw89_ampdu_params], %struct.ieee80211_rx_status, i16, i32, i8, %struct.cfg80211_bitrate_mask, i8, i8, i8, i8 }
%struct.rtw89_ra_info = type { i8, i8, i16, i64, i8, i8, i8, i8 }
%struct.rtw89_ra_report = type { %struct.rate_info, i32, i16 }
%struct.rate_info = type { i8, i8, i16, i8, i8, i8, i8, i8, i8 }
%struct.ewma_rssi = type { i32 }
%struct.rtw89_ampdu_params = type { i16, i8 }
%struct.ieee80211_rx_status = type <{ i64, i64, i32, i32, i32, i16, i8, i16, i8, i8, i8, i8, i8, i8, i8, [4 x i8], i8, i8, [2 x i8] }>
%struct.rtw89_fw_macid_pause_grp = type { [4 x i32], [4 x i32] }
%struct.rtw89_fw_h2c_rf_reg_info = type { i32, [3 x [500 x i32]], i16 }
%struct.rtw89_early_h2c = type { %struct.list_head, ptr, i16 }
%struct.rtw89_mac_h2c_info = type { i8, i8, [4 x i32] }
%struct.rtw89_mac_c2h_info = type { i8, i8, [4 x i32] }

@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@rtw89_fw_check_rdy._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 59, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"fw checksum fail\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rtw89_fw_check_rdy\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/net/wireless/realtek/rtw89/fw.c\00", [56 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rtw89_fw_check_rdy._entry_ptr = internal global ptr @rtw89_fw_check_rdy._entry, section ".printk_index", align 4
@rtw89_fw_check_rdy._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 63, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"fw security fail\0A\00", [46 x i8] zeroinitializer }, align 32
@rtw89_fw_check_rdy._entry_ptr.7 = internal global ptr @rtw89_fw_check_rdy._entry.5, section ".printk_index", align 4
@rtw89_fw_check_rdy._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.1, ptr @.str.2, i32 67, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fw cv not match\0A\00", [47 x i8] zeroinitializer }, align 32
@rtw89_fw_check_rdy._entry_ptr.10 = internal global ptr @rtw89_fw_check_rdy._entry.8, section ".printk_index", align 4
@rtw89_fw_download._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.2, i32 428, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"fw type %d isn't recognized\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rtw89_fw_download\00", [46 x i8] zeroinitializer }, align 32
@rtw89_fw_download._entry_ptr = internal global ptr @rtw89_fw_download._entry, section ".printk_index", align 4
@rtw89_fw_download._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.12, ptr @.str.2, i32 434, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"parse fw header fail\0A\00", [42 x i8] zeroinitializer }, align 32
@rtw89_fw_download._entry_ptr.15 = internal global ptr @rtw89_fw_download._entry.13, section ".printk_index", align 4
@rtw89_fw_download._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.12, ptr @.str.2, i32 442, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"[ERR]H2C path ready\0A\00", [43 x i8] zeroinitializer }, align 32
@rtw89_fw_download._entry_ptr.18 = internal global ptr @rtw89_fw_download._entry.16, section ".printk_index", align 4
@rtw89_load_firmware._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.2, i32 508, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to async firmware request\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rtw89_load_firmware\00", [44 x i8] zeroinitializer }, align 32
@rtw89_load_firmware._entry_ptr = internal global ptr @rtw89_load_firmware._entry, section ".printk_index", align 4
@rtw89_fw_h2c_cam._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.2, i32 533, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to alloc skb for fw dl\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rtw89_fw_h2c_cam\00", [47 x i8] zeroinitializer }, align 32
@rtw89_fw_h2c_cam._entry_ptr = internal global ptr @rtw89_fw_h2c_cam._entry, section ".printk_index", align 4
@rtw89_fw_h2c_cam._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.22, ptr @.str.2, i32 547, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"failed to send h2c\0A\00", [44 x i8] zeroinitializer }, align 32
@rtw89_fw_h2c_cam._entry_ptr.25 = internal global ptr @rtw89_fw_h2c_cam._entry.23, section ".printk_index", align 4
@rtw89_fw_h2c_ba_cam._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.2, i32 566, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to alloc skb for h2c ba cam\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rtw89_fw_h2c_ba_cam\00", [44 x i8] zeroinitializer }, align 32
@rtw89_fw_h2c_ba_cam._entry_ptr = internal global ptr @rtw89_fw_h2c_ba_cam._entry, section ".printk_index", align 4
@rtw89_fw_h2c_ba_cam._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.27, ptr @.str.2, i32 591, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@rtw89_fw_h2c_ba_cam._entry_ptr.29 = internal global ptr @rtw89_fw_h2c_ba_cam._entry.28, section ".printk_index", align 4
@rtw89_fw_h2c_fw_log._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.2, i32 611, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to alloc skb for fw log cfg\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rtw89_fw_h2c_fw_log\00", [44 x i8] zeroinitializer }, align 32
@rtw89_fw_h2c_fw_log._entry_ptr = internal global ptr @rtw89_fw_h2c_fw_log._entry, section ".printk_index", align 4
@rtw89_fw_h2c_fw_log._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.31, ptr @.str.2, i32 628, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@rtw89_fw_h2c_fw_log._entry_ptr.33 = internal global ptr @rtw89_fw_h2c_fw_log._entry.32, section ".printk_index", align 4
@rtw89_fw_h2c_general_pkt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.34, ptr @.str.2, i32 647, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"rtw89_fw_h2c_general_pkt\00", [39 x i8] zeroinitializer }, align 32
@rtw89_fw_h2c_general_pkt._entry_ptr = internal global ptr @rtw89_fw_h2c_general_pkt._entry, section ".printk_index", align 4
@rtw89_fw_h2c_general_pkt._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.34, ptr @.str.2, i32 665, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@rtw89_fw_h2c_general_pkt._entry_ptr.36 = internal global ptr @rtw89_fw_h2c_general_pkt._entry.35, section ".printk_index", align 4
@rtw89_fw_h2c_lps_parm._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.37, ptr @.str.2, i32 684, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rtw89_fw_h2c_lps_parm\00", [42 x i8] zeroinitializer }, align 32
@rtw89_fw_h2c_lps_parm._entry_ptr = internal global ptr @rtw89_fw_h2c_lps_parm._entry, section ".printk_index", align 4
@rtw89_fw_h2c_lps_parm._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.37, ptr @.str.2, i32 707, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@rtw89_fw_h2c_lps_parm._entry_ptr.39 = internal global ptr @rtw89_fw_h2c_lps_parm._entry.38, section ".printk_index", align 4
@rtw89_fw_h2c_default_cmac_tbl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.40, ptr @.str.2, i32 728, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"rtw89_fw_h2c_default_cmac_tbl\00", [34 x i8] zeroinitializer }, align 32
@rtw89_fw_h2c_default_cmac_tbl._entry_ptr = internal global ptr @rtw89_fw_h2c_default_cmac_tbl._entry, section ".printk_index", align 4
@rtw89_fw_h2c_default_cmac_tbl._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.40, ptr @.str.2, i32 753, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@rtw89_fw_h2c_default_cmac_tbl._entry_ptr.42 = internal global ptr @rtw89_fw_h2c_default_cmac_tbl._entry.41, section ".printk_index", align 4
@rtw89_fw_h2c_assoc_cmac_tbl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.43, ptr @.str.2, i32 834, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"rtw89_fw_h2c_assoc_cmac_tbl\00", [36 x i8] zeroinitializer }, align 32
@rtw89_fw_h2c_assoc_cmac_tbl._entry_ptr = internal global ptr @rtw89_fw_h2c_assoc_cmac_tbl._entry, section ".printk_index", align 4
@rtw89_fw_h2c_assoc_cmac_tbl._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.43, ptr @.str.2, i32 864, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@rtw89_fw_h2c_assoc_cmac_tbl._entry_ptr.45 = internal global ptr @rtw89_fw_h2c_assoc_cmac_tbl._entry.44, section ".printk_index", align 4
@rtw89_fw_h2c_txtime_cmac_tbl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.46, ptr @.str.2, i32 882, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"rtw89_fw_h2c_txtime_cmac_tbl\00", [35 x i8] zeroinitializer }, align 32
@rtw89_fw_h2c_txtime_cmac_tbl._entry_ptr = internal global ptr @rtw89_fw_h2c_txtime_cmac_tbl._entry, section ".printk_index", align 4
@rtw89_fw_h2c_txtime_cmac_tbl._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.46, ptr @.str.2, i32 903, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@rtw89_fw_h2c_txtime_cmac_tbl._entry_ptr.48 = internal global ptr @rtw89_fw_h2c_txtime_cmac_tbl._entry.47, section ".printk_index", align 4
@rtw89_fw_h2c_vif_maintain._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.50, ptr @.str.2, i32 923, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to alloc skb for h2c join\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"rtw89_fw_h2c_vif_maintain\00", [38 x i8] zeroinitializer }, align 32
@rtw89_fw_h2c_vif_maintain._entry_ptr = internal global ptr @rtw89_fw_h2c_vif_maintain._entry, section ".printk_index", align 4
@rtw89_fw_h2c_vif_maintain._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.50, ptr @.str.2, i32 938, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@rtw89_fw_h2c_vif_maintain._entry_ptr.52 = internal global ptr @rtw89_fw_h2c_vif_maintain._entry.51, section ".printk_index", align 4
@rtw89_fw_h2c_join_info._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.53, ptr @.str.2, i32 957, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"rtw89_fw_h2c_join_info\00", [41 x i8] zeroinitializer }, align 32
@rtw89_fw_h2c_join_info._entry_ptr = internal global ptr @rtw89_fw_h2c_join_info._entry, section ".printk_index", align 4
@rtw89_fw_h2c_join_info._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.53, ptr @.str.2, i32 981, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@rtw89_fw_h2c_join_info._entry_ptr.55 = internal global ptr @rtw89_fw_h2c_join_info._entry.54, section ".printk_index", align 4
@rtw89_fw_h2c_macid_pause._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.56, ptr @.str.2, i32 1001, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"rtw89_fw_h2c_macid_pause\00", [39 x i8] zeroinitializer }, align 32
@rtw89_fw_h2c_macid_pause._entry_ptr = internal global ptr @rtw89_fw_h2c_macid_pause._entry, section ".printk_index", align 4
@rtw89_fw_h2c_macid_pause._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.56, ptr @.str.2, i32 1015, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@rtw89_fw_h2c_macid_pause._entry_ptr.58 = internal global ptr @rtw89_fw_h2c_macid_pause._entry.57, section ".printk_index", align 4
@rtw89_fw_h2c_set_edca._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.60, ptr @.str.2, i32 1034, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to alloc skb for h2c edca\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rtw89_fw_h2c_set_edca\00", [42 x i8] zeroinitializer }, align 32
@rtw89_fw_h2c_set_edca._entry_ptr = internal global ptr @rtw89_fw_h2c_set_edca._entry, section ".printk_index", align 4
@rtw89_fw_h2c_set_edca._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.60, ptr @.str.2, i32 1050, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@rtw89_fw_h2c_set_edca._entry_ptr.62 = internal global ptr @rtw89_fw_h2c_set_edca._entry.61, section ".printk_index", align 4
@rtw89_fw_h2c_set_ofld_cfg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.64, ptr @.str.2, i32 1069, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to alloc skb for h2c ofld\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"rtw89_fw_h2c_set_ofld_cfg\00", [38 x i8] zeroinitializer }, align 32
@rtw89_fw_h2c_set_ofld_cfg._entry_ptr = internal global ptr @rtw89_fw_h2c_set_ofld_cfg._entry, section ".printk_index", align 4
@rtw89_fw_h2c_set_ofld_cfg._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.64, ptr @.str.2, i32 1080, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@rtw89_fw_h2c_set_ofld_cfg._entry_ptr.66 = internal global ptr @rtw89_fw_h2c_set_ofld_cfg._entry.65, section ".printk_index", align 4
@rtw89_fw_h2c_ra._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.67, ptr @.str.2, i32 1099, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rtw89_fw_h2c_ra\00", [16 x i8] zeroinitializer }, align 32
@rtw89_fw_h2c_ra._entry_ptr = internal global ptr @rtw89_fw_h2c_ra._entry, section ".printk_index", align 4
@.str.68 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ra cmd msk: %llx \00", [46 x i8] zeroinitializer }, align 32
@rtw89_fw_h2c_ra._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.67, ptr @.str.2, i32 1145, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@rtw89_fw_h2c_ra._entry_ptr.70 = internal global ptr @rtw89_fw_h2c_ra._entry.69, section ".printk_index", align 4
@rtw89_fw_h2c_cxdrv_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.72, ptr @.str.2, i32 1170, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"failed to alloc skb for h2c cxdrv_init\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"rtw89_fw_h2c_cxdrv_init\00", [40 x i8] zeroinitializer }, align 32
@rtw89_fw_h2c_cxdrv_init._entry_ptr = internal global ptr @rtw89_fw_h2c_cxdrv_init._entry, section ".printk_index", align 4
@rtw89_fw_h2c_cxdrv_init._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.72, ptr @.str.2, i32 1204, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@rtw89_fw_h2c_cxdrv_init._entry_ptr.74 = internal global ptr @rtw89_fw_h2c_cxdrv_init._entry.73, section ".printk_index", align 4
@rtw89_fw_h2c_cxdrv_role._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.76, ptr @.str.2, i32 1229, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"failed to alloc skb for h2c cxdrv_role\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"rtw89_fw_h2c_cxdrv_role\00", [40 x i8] zeroinitializer }, align 32
@rtw89_fw_h2c_cxdrv_role._entry_ptr = internal global ptr @rtw89_fw_h2c_cxdrv_role._entry, section ".printk_index", align 4
@rtw89_fw_h2c_cxdrv_role._entry.77 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.76, ptr @.str.2, i32 1276, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@rtw89_fw_h2c_cxdrv_role._entry_ptr.78 = internal global ptr @rtw89_fw_h2c_cxdrv_role._entry.77, section ".printk_index", align 4
@rtw89_fw_h2c_cxdrv_ctrl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.80, ptr @.str.2, i32 1297, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"failed to alloc skb for h2c cxdrv_ctrl\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"rtw89_fw_h2c_cxdrv_ctrl\00", [40 x i8] zeroinitializer }, align 32
@rtw89_fw_h2c_cxdrv_ctrl._entry_ptr = internal global ptr @rtw89_fw_h2c_cxdrv_ctrl._entry, section ".printk_index", align 4
@rtw89_fw_h2c_cxdrv_ctrl._entry.81 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.80, ptr @.str.2, i32 1317, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@rtw89_fw_h2c_cxdrv_ctrl._entry_ptr.82 = internal global ptr @rtw89_fw_h2c_cxdrv_ctrl._entry.81, section ".printk_index", align 4
@rtw89_fw_h2c_cxdrv_rfk._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.83, ptr @.str.2, i32 1339, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"rtw89_fw_h2c_cxdrv_rfk\00", [41 x i8] zeroinitializer }, align 32
@rtw89_fw_h2c_cxdrv_rfk._entry_ptr = internal global ptr @rtw89_fw_h2c_cxdrv_rfk._entry, section ".printk_index", align 4
@rtw89_fw_h2c_cxdrv_rfk._entry.84 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.83, ptr @.str.2, i32 1360, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@rtw89_fw_h2c_cxdrv_rfk._entry_ptr.85 = internal global ptr @rtw89_fw_h2c_cxdrv_rfk._entry.84, section ".printk_index", align 4
@rtw89_fw_h2c_rf_reg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.87, ptr @.str.2, i32 1381, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to alloc skb for h2c rf reg\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rtw89_fw_h2c_rf_reg\00", [44 x i8] zeroinitializer }, align 32
@rtw89_fw_h2c_rf_reg._entry_ptr = internal global ptr @rtw89_fw_h2c_rf_reg._entry, section ".printk_index", align 4
@rtw89_fw_h2c_rf_reg._entry.88 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.87, ptr @.str.2, i32 1391, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@rtw89_fw_h2c_rf_reg._entry_ptr.89 = internal global ptr @rtw89_fw_h2c_rf_reg._entry.88, section ".printk_index", align 4
@rtw89_fw_h2c_raw_with_hdr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.91, ptr @.str.2, i32 1410, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"failed to alloc skb for raw with hdr\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"rtw89_fw_h2c_raw_with_hdr\00", [38 x i8] zeroinitializer }, align 32
@rtw89_fw_h2c_raw_with_hdr._entry_ptr = internal global ptr @rtw89_fw_h2c_raw_with_hdr._entry, section ".printk_index", align 4
@rtw89_fw_h2c_raw_with_hdr._entry.92 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.91, ptr @.str.2, i32 1420, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@rtw89_fw_h2c_raw_with_hdr._entry_ptr.93 = internal global ptr @rtw89_fw_h2c_raw_with_hdr._entry.92, section ".printk_index", align 4
@rtw89_fw_h2c_raw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.95, ptr @.str.2, i32 1437, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to alloc skb for h2c raw\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rtw89_fw_h2c_raw\00", [47 x i8] zeroinitializer }, align 32
@rtw89_fw_h2c_raw._entry_ptr = internal global ptr @rtw89_fw_h2c_raw._entry, section ".printk_index", align 4
@rtw89_fw_h2c_raw._entry.96 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.95, ptr @.str.2, i32 1443, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@rtw89_fw_h2c_raw._entry_ptr.97 = internal global ptr @rtw89_fw_h2c_raw._entry.96, section ".printk_index", align 4
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@rtw89_fw_st_dbg_dump._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.98, ptr @.str.99, ptr @.str.2, i32 1628, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"[ERR]pwr is off\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"rtw89_fw_st_dbg_dump\00", [43 x i8] zeroinitializer }, align 32
@rtw89_fw_st_dbg_dump._entry_ptr = internal global ptr @rtw89_fw_st_dbg_dump._entry, section ".printk_index", align 4
@rtw89_fw_st_dbg_dump._entry.100 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.101, ptr @.str.99, ptr @.str.2, i32 1632, ptr @.str.102, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"FW status = 0x%x\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@rtw89_fw_st_dbg_dump._entry_ptr.103 = internal global ptr @rtw89_fw_st_dbg_dump._entry.100, section ".printk_index", align 4
@rtw89_fw_st_dbg_dump._entry.104 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.105, ptr @.str.99, ptr @.str.2, i32 1633, ptr @.str.102, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"FW BADADDR = 0x%x\0A\00", [45 x i8] zeroinitializer }, align 32
@rtw89_fw_st_dbg_dump._entry_ptr.106 = internal global ptr @rtw89_fw_st_dbg_dump._entry.104, section ".printk_index", align 4
@rtw89_fw_st_dbg_dump._entry.107 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.108, ptr @.str.99, ptr @.str.2, i32 1634, ptr @.str.102, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"FW EPC/RA = 0x%x\0A\00", [46 x i8] zeroinitializer }, align 32
@rtw89_fw_st_dbg_dump._entry_ptr.109 = internal global ptr @rtw89_fw_st_dbg_dump._entry.107, section ".printk_index", align 4
@rtw89_fw_st_dbg_dump._entry.110 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.111, ptr @.str.99, ptr @.str.2, i32 1635, ptr @.str.102, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"FW MISC = 0x%x\0A\00", [16 x i8] zeroinitializer }, align 32
@rtw89_fw_st_dbg_dump._entry_ptr.112 = internal global ptr @rtw89_fw_st_dbg_dump._entry.110, section ".printk_index", align 4
@rtw89_fw_st_dbg_dump._entry.113 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.114, ptr @.str.99, ptr @.str.2, i32 1637, ptr @.str.102, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"R_AX_HALT_C2H = 0x%x\0A\00", [42 x i8] zeroinitializer }, align 32
@rtw89_fw_st_dbg_dump._entry_ptr.115 = internal global ptr @rtw89_fw_st_dbg_dump._entry.113, section ".printk_index", align 4
@rtw89_fw_st_dbg_dump._entry.116 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.117, ptr @.str.99, ptr @.str.2, i32 1639, ptr @.str.102, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"R_AX_SER_DBG_INFO = 0x%x\0A\00", [38 x i8] zeroinitializer }, align 32
@rtw89_fw_st_dbg_dump._entry_ptr.118 = internal global ptr @rtw89_fw_st_dbg_dump._entry.116, section ".printk_index", align 4
@.str.119 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"use legacy firmware\0A\00", [43 x i8] zeroinitializer }, align 32
@rtw89_mfw_recognize._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.120, ptr @.str.121, ptr @.str.2, i32 154, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"no suitable firmware found\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rtw89_mfw_recognize\00", [44 x i8] zeroinitializer }, align 32
@rtw89_mfw_recognize._entry_ptr = internal global ptr @rtw89_mfw_recognize._entry, section ".printk_index", align 4
@rtw89_fw_update_ver._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.122, ptr @.str.123, ptr @.str.2, i32 178, ptr @.str.102, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"Firmware version %u.%u.%u.%u, cmd version %u, type %u\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rtw89_fw_update_ver\00", [44 x i8] zeroinitializer }, align 32
@rtw89_fw_update_ver._entry_ptr = internal global ptr @rtw89_fw_update_ver._entry, section ".printk_index", align 4
@rtw89_fw_hdr_parser._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.124, ptr @.str.125, ptr @.str.2, i32 114, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"[ERR]fw bin size\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rtw89_fw_hdr_parser\00", [44 x i8] zeroinitializer }, align 32
@rtw89_fw_hdr_parser._entry_ptr = internal global ptr @rtw89_fw_hdr_parser._entry, section ".printk_index", align 4
@rtw89_fw_download_hdr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.126, ptr @.str.127, ptr @.str.2, i32 303, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"[ERR]FW header download\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rtw89_fw_download_hdr\00", [42 x i8] zeroinitializer }, align 32
@rtw89_fw_download_hdr._entry_ptr = internal global ptr @rtw89_fw_download_hdr._entry, section ".printk_index", align 4
@rtw89_fw_download_hdr._entry.128 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.129, ptr @.str.127, ptr @.str.2, i32 311, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"[ERR]FWDL path ready\0A\00", [42 x i8] zeroinitializer }, align 32
@rtw89_fw_download_hdr._entry_ptr.130 = internal global ptr @rtw89_fw_download_hdr._entry.128, section ".printk_index", align 4
@__rtw89_fw_download_hdr._entry = internal constant %struct.pi_entry { ptr @.str.131, ptr @.str.132, ptr @.str.2, i32 272, ptr @.str.3, ptr @.str.4 }, align 1
@.str.131 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"failed to alloc skb for fw hdr dl\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"__rtw89_fw_download_hdr\00", [40 x i8] zeroinitializer }, align 32
@__rtw89_fw_download_hdr._entry_ptr = internal global ptr @__rtw89_fw_download_hdr._entry, section ".printk_index", align 4
@__rtw89_fw_download_hdr._entry.133 = internal constant %struct.pi_entry { ptr @.str.24, ptr @.str.132, ptr @.str.2, i32 284, ptr @.str.3, ptr @.str.4 }, align 1
@__rtw89_fw_download_hdr._entry_ptr.134 = internal global ptr @__rtw89_fw_download_hdr._entry.133, section ".printk_index", align 4
@rtw89_fw_download_main._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.135, ptr @.str.136, ptr @.str.2, i32 379, ptr @.str.137, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"download firmware fail\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"rtw89_fw_download_main\00", [41 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@rtw89_fw_download_main._entry_ptr = internal global ptr @rtw89_fw_download_main._entry, section ".printk_index", align 4
@__rtw89_fw_download_main._entry = internal constant %struct.pi_entry { ptr @.str.21, ptr @.str.138, ptr @.str.2, i32 338, ptr @.str.3, ptr @.str.4 }, align 1
@.str.138 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"__rtw89_fw_download_main\00", [39 x i8] zeroinitializer }, align 32
@__rtw89_fw_download_main._entry_ptr = internal global ptr @__rtw89_fw_download_main._entry, section ".printk_index", align 4
@__rtw89_fw_download_main._entry.139 = internal constant %struct.pi_entry { ptr @.str.24, ptr @.str.138, ptr @.str.2, i32 345, ptr @.str.3, ptr @.str.4 }, align 1
@__rtw89_fw_download_main._entry_ptr.140 = internal global ptr @__rtw89_fw_download_main._entry.139, section ".printk_index", align 4
@rtw89_fw_dl_fail_dump._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.141, ptr @.str.142, ptr @.str.2, i32 409, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"[ERR]fwdl 0x1E0 = 0x%x\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rtw89_fw_dl_fail_dump\00", [42 x i8] zeroinitializer }, align 32
@rtw89_fw_dl_fail_dump._entry_ptr = internal global ptr @rtw89_fw_dl_fail_dump._entry, section ".printk_index", align 4
@rtw89_fw_dl_fail_dump._entry.143 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.144, ptr @.str.142, ptr @.str.2, i32 412, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"[ERR]fwdl 0x83F2 = 0x%x\0A\00", [39 x i8] zeroinitializer }, align 32
@rtw89_fw_dl_fail_dump._entry_ptr.145 = internal global ptr @rtw89_fw_dl_fail_dump._entry.143, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.146 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@rtw89_load_firmware_cb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.147, ptr @.str.148, ptr @.str.2, i32 487, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to request firmware\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"rtw89_load_firmware_cb\00", [41 x i8] zeroinitializer }, align 32
@rtw89_load_firmware_cb._entry_ptr = internal global ptr @rtw89_load_firmware_cb._entry, section ".printk_index", align 4
@.str.149 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"C2H: \00", [26 x i8] zeroinitializer }, align 32
@rtw89_debug_mask = external dso_local local_unnamed_addr global i32, align 4
@rtw89_hex_dump.__UNIQUE_ID_ddebug405 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, i8 0, i8 16, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.150 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rtw89_core\00", [21 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rtw89_hex_dump\00", [17 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drivers/net/wireless/realtek/rtw89/debug.h\00", [53 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"hexdump\00", [24 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@rtw89_fw_write_h2c_reg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.155, ptr @.str.156, ptr @.str.2, i32 1546, ptr @.str.137, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"FW does not process h2c registers\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"rtw89_fw_write_h2c_reg\00", [41 x i8] zeroinitializer }, align 32
@rtw89_fw_write_h2c_reg._entry_ptr = internal global ptr @rtw89_fw_write_h2c_reg._entry, section ".printk_index", align 4
@rtw89_fw_read_c2h_reg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.157, ptr @.str.158, ptr @.str.2, i32 1579, ptr @.str.137, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"c2h reg timeout\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rtw89_fw_read_c2h_reg\00", [42 x i8] zeroinitializer }, align 32
@rtw89_fw_read_c2h_reg._entry_ptr = internal global ptr @rtw89_fw_read_c2h_reg._entry, section ".printk_index", align 4
@rtw89_fw_prog_cnt_dump._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.159, ptr @.str.160, ptr @.str.2, i32 398, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"[ERR]fw PC = 0x%x\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"rtw89_fw_prog_cnt_dump\00", [41 x i8] zeroinitializer }, align 32
@rtw89_fw_prog_cnt_dump._entry_ptr = internal global ptr @rtw89_fw_prog_cnt_dump._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 3, i64 2, i64 3, i64 4, i64 7]
@__sancov_gen_cov_switch_values.163 = internal global [4 x i64] [i64 2, i64 2, i64 1, i64 2]
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 59, i32 4 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 63, i32 4 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 67, i32 4 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 428, i32 3 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 434, i32 3 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 442, i32 3 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 508, i32 3 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 533, i32 3 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 547, i32 3 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 566, i32 3 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 591, i32 3 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 611, i32 3 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 628, i32 3 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 647, i32 3 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 665, i32 3 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 684, i32 3 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 707, i32 3 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 728, i32 3 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 753, i32 3 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 834, i32 3 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 864, i32 3 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 882, i32 3 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 903, i32 3 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 923, i32 3 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 938, i32 3 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 957, i32 3 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 981, i32 3 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1001, i32 3 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1015, i32 3 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1034, i32 3 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1050, i32 3 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1069, i32 3 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1080, i32 3 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1099, i32 3 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1104, i32 2 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1145, i32 3 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1170, i32 3 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1204, i32 3 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1229, i32 3 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1276, i32 3 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1297, i32 3 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1317, i32 3 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1339, i32 3 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1360, i32 3 }
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1381, i32 3 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1391, i32 3 }
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1410, i32 3 }
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1420, i32 3 }
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1437, i32 3 }
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1443, i32 3 }
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1628, i32 3 }
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1632, i32 2 }
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1633, i32 2 }
@___asan_gen_.484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1634, i32 2 }
@___asan_gen_.490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1635, i32 2 }
@___asan_gen_.496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1636, i32 2 }
@___asan_gen_.502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1638, i32 2 }
@___asan_gen_.505 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 133, i32 3 }
@___asan_gen_.514 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 154, i32 2 }
@___asan_gen_.523 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 175, i32 2 }
@___asan_gen_.532 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 114, i32 3 }
@___asan_gen_.541 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 303, i32 3 }
@___asan_gen_.547 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 311, i32 3 }
@___asan_gen_.553 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 272, i32 3 }
@___asan_gen_.565 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 379, i32 3 }
@___asan_gen_.568 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 338, i32 4 }
@___asan_gen_.577 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 409, i32 2 }
@___asan_gen_.583 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 412, i32 2 }
@___asan_gen_.584 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.588 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.589 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 87, i32 2 }
@___asan_gen_.598 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 487, i32 3 }
@___asan_gen_.601 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1515, i32 40 }
@___asan_gen_.615 = private unnamed_addr constant [46 x i8] c"../drivers/net/wireless/realtek/rtw89/debug.h\00", align 1
@___asan_gen_.616 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 65, i32 2 }
@___asan_gen_.625 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1546, i32 3 }
@___asan_gen_.634 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1579, i32 3 }
@___asan_gen_.635 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.641 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.642 = private constant [43 x i8] c"../drivers/net/wireless/realtek/rtw89/fw.c\00", align 1
@___asan_gen_.643 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 398, i32 3 }
@llvm.compiler.used = appending global [236 x ptr] [ptr @__rtw89_fw_download_hdr._entry, ptr @__rtw89_fw_download_hdr._entry.133, ptr @__rtw89_fw_download_hdr._entry_ptr, ptr @__rtw89_fw_download_hdr._entry_ptr.134, ptr @__rtw89_fw_download_main._entry, ptr @__rtw89_fw_download_main._entry.139, ptr @__rtw89_fw_download_main._entry_ptr, ptr @__rtw89_fw_download_main._entry_ptr.140, ptr @rtw89_fw_check_rdy._entry, ptr @rtw89_fw_check_rdy._entry.5, ptr @rtw89_fw_check_rdy._entry.8, ptr @rtw89_fw_check_rdy._entry_ptr, ptr @rtw89_fw_check_rdy._entry_ptr.10, ptr @rtw89_fw_check_rdy._entry_ptr.7, ptr @rtw89_fw_dl_fail_dump._entry, ptr @rtw89_fw_dl_fail_dump._entry.143, ptr @rtw89_fw_dl_fail_dump._entry_ptr, ptr @rtw89_fw_dl_fail_dump._entry_ptr.145, ptr @rtw89_fw_download._entry, ptr @rtw89_fw_download._entry.13, ptr @rtw89_fw_download._entry.16, ptr @rtw89_fw_download._entry_ptr, ptr @rtw89_fw_download._entry_ptr.15, ptr @rtw89_fw_download._entry_ptr.18, ptr @rtw89_fw_download_hdr._entry, ptr @rtw89_fw_download_hdr._entry.128, ptr @rtw89_fw_download_hdr._entry_ptr, ptr @rtw89_fw_download_hdr._entry_ptr.130, ptr @rtw89_fw_download_main._entry, ptr @rtw89_fw_download_main._entry_ptr, ptr @rtw89_fw_h2c_assoc_cmac_tbl._entry, ptr @rtw89_fw_h2c_assoc_cmac_tbl._entry.44, ptr @rtw89_fw_h2c_assoc_cmac_tbl._entry_ptr, ptr @rtw89_fw_h2c_assoc_cmac_tbl._entry_ptr.45, ptr @rtw89_fw_h2c_ba_cam._entry, ptr @rtw89_fw_h2c_ba_cam._entry.28, ptr @rtw89_fw_h2c_ba_cam._entry_ptr, ptr @rtw89_fw_h2c_ba_cam._entry_ptr.29, ptr @rtw89_fw_h2c_cam._entry, ptr @rtw89_fw_h2c_cam._entry.23, ptr @rtw89_fw_h2c_cam._entry_ptr, ptr @rtw89_fw_h2c_cam._entry_ptr.25, ptr @rtw89_fw_h2c_cxdrv_ctrl._entry, ptr @rtw89_fw_h2c_cxdrv_ctrl._entry.81, ptr @rtw89_fw_h2c_cxdrv_ctrl._entry_ptr, ptr @rtw89_fw_h2c_cxdrv_ctrl._entry_ptr.82, ptr @rtw89_fw_h2c_cxdrv_init._entry, ptr @rtw89_fw_h2c_cxdrv_init._entry.73, ptr @rtw89_fw_h2c_cxdrv_init._entry_ptr, ptr @rtw89_fw_h2c_cxdrv_init._entry_ptr.74, ptr @rtw89_fw_h2c_cxdrv_rfk._entry, ptr @rtw89_fw_h2c_cxdrv_rfk._entry.84, ptr @rtw89_fw_h2c_cxdrv_rfk._entry_ptr, ptr @rtw89_fw_h2c_cxdrv_rfk._entry_ptr.85, ptr @rtw89_fw_h2c_cxdrv_role._entry, ptr @rtw89_fw_h2c_cxdrv_role._entry.77, ptr @rtw89_fw_h2c_cxdrv_role._entry_ptr, ptr @rtw89_fw_h2c_cxdrv_role._entry_ptr.78, ptr @rtw89_fw_h2c_default_cmac_tbl._entry, ptr @rtw89_fw_h2c_default_cmac_tbl._entry.41, ptr @rtw89_fw_h2c_default_cmac_tbl._entry_ptr, ptr @rtw89_fw_h2c_default_cmac_tbl._entry_ptr.42, ptr @rtw89_fw_h2c_fw_log._entry, ptr @rtw89_fw_h2c_fw_log._entry.32, ptr @rtw89_fw_h2c_fw_log._entry_ptr, ptr @rtw89_fw_h2c_fw_log._entry_ptr.33, ptr @rtw89_fw_h2c_general_pkt._entry, ptr @rtw89_fw_h2c_general_pkt._entry.35, ptr @rtw89_fw_h2c_general_pkt._entry_ptr, ptr @rtw89_fw_h2c_general_pkt._entry_ptr.36, ptr @rtw89_fw_h2c_join_info._entry, ptr @rtw89_fw_h2c_join_info._entry.54, ptr @rtw89_fw_h2c_join_info._entry_ptr, ptr @rtw89_fw_h2c_join_info._entry_ptr.55, ptr @rtw89_fw_h2c_lps_parm._entry, ptr @rtw89_fw_h2c_lps_parm._entry.38, ptr @rtw89_fw_h2c_lps_parm._entry_ptr, ptr @rtw89_fw_h2c_lps_parm._entry_ptr.39, ptr @rtw89_fw_h2c_macid_pause._entry, ptr @rtw89_fw_h2c_macid_pause._entry.57, ptr @rtw89_fw_h2c_macid_pause._entry_ptr, ptr @rtw89_fw_h2c_macid_pause._entry_ptr.58, ptr @rtw89_fw_h2c_ra._entry, ptr @rtw89_fw_h2c_ra._entry.69, ptr @rtw89_fw_h2c_ra._entry_ptr, ptr @rtw89_fw_h2c_ra._entry_ptr.70, ptr @rtw89_fw_h2c_raw._entry, ptr @rtw89_fw_h2c_raw._entry.96, ptr @rtw89_fw_h2c_raw._entry_ptr, ptr @rtw89_fw_h2c_raw._entry_ptr.97, ptr @rtw89_fw_h2c_raw_with_hdr._entry, ptr @rtw89_fw_h2c_raw_with_hdr._entry.92, ptr @rtw89_fw_h2c_raw_with_hdr._entry_ptr, ptr @rtw89_fw_h2c_raw_with_hdr._entry_ptr.93, ptr @rtw89_fw_h2c_rf_reg._entry, ptr @rtw89_fw_h2c_rf_reg._entry.88, ptr @rtw89_fw_h2c_rf_reg._entry_ptr, ptr @rtw89_fw_h2c_rf_reg._entry_ptr.89, ptr @rtw89_fw_h2c_set_edca._entry, ptr @rtw89_fw_h2c_set_edca._entry.61, ptr @rtw89_fw_h2c_set_edca._entry_ptr, ptr @rtw89_fw_h2c_set_edca._entry_ptr.62, ptr @rtw89_fw_h2c_set_ofld_cfg._entry, ptr @rtw89_fw_h2c_set_ofld_cfg._entry.65, ptr @rtw89_fw_h2c_set_ofld_cfg._entry_ptr, ptr @rtw89_fw_h2c_set_ofld_cfg._entry_ptr.66, ptr @rtw89_fw_h2c_txtime_cmac_tbl._entry, ptr @rtw89_fw_h2c_txtime_cmac_tbl._entry.47, ptr @rtw89_fw_h2c_txtime_cmac_tbl._entry_ptr, ptr @rtw89_fw_h2c_txtime_cmac_tbl._entry_ptr.48, ptr @rtw89_fw_h2c_vif_maintain._entry, ptr @rtw89_fw_h2c_vif_maintain._entry.51, ptr @rtw89_fw_h2c_vif_maintain._entry_ptr, ptr @rtw89_fw_h2c_vif_maintain._entry_ptr.52, ptr @rtw89_fw_hdr_parser._entry, ptr @rtw89_fw_hdr_parser._entry_ptr, ptr @rtw89_fw_prog_cnt_dump._entry, ptr @rtw89_fw_prog_cnt_dump._entry_ptr, ptr @rtw89_fw_read_c2h_reg._entry, ptr @rtw89_fw_read_c2h_reg._entry_ptr, ptr @rtw89_fw_st_dbg_dump._entry, ptr @rtw89_fw_st_dbg_dump._entry.100, ptr @rtw89_fw_st_dbg_dump._entry.104, ptr @rtw89_fw_st_dbg_dump._entry.107, ptr @rtw89_fw_st_dbg_dump._entry.110, ptr @rtw89_fw_st_dbg_dump._entry.113, ptr @rtw89_fw_st_dbg_dump._entry.116, ptr @rtw89_fw_st_dbg_dump._entry_ptr, ptr @rtw89_fw_st_dbg_dump._entry_ptr.103, ptr @rtw89_fw_st_dbg_dump._entry_ptr.106, ptr @rtw89_fw_st_dbg_dump._entry_ptr.109, ptr @rtw89_fw_st_dbg_dump._entry_ptr.112, ptr @rtw89_fw_st_dbg_dump._entry_ptr.115, ptr @rtw89_fw_st_dbg_dump._entry_ptr.118, ptr @rtw89_fw_update_ver._entry, ptr @rtw89_fw_update_ver._entry_ptr, ptr @rtw89_fw_write_h2c_reg._entry, ptr @rtw89_fw_write_h2c_reg._entry_ptr, ptr @rtw89_load_firmware._entry, ptr @rtw89_load_firmware._entry_ptr, ptr @rtw89_load_firmware_cb._entry, ptr @rtw89_load_firmware_cb._entry_ptr, ptr @rtw89_mfw_recognize._entry, ptr @rtw89_mfw_recognize._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.24, ptr @.str.26, ptr @.str.27, ptr @.str.30, ptr @.str.31, ptr @.str.34, ptr @.str.37, ptr @.str.40, ptr @.str.43, ptr @.str.46, ptr @.str.49, ptr @.str.50, ptr @.str.53, ptr @.str.56, ptr @.str.59, ptr @.str.60, ptr @.str.63, ptr @.str.64, ptr @.str.67, ptr @.str.68, ptr @.str.71, ptr @.str.72, ptr @.str.75, ptr @.str.76, ptr @.str.79, ptr @.str.80, ptr @.str.83, ptr @.str.86, ptr @.str.87, ptr @.str.90, ptr @.str.91, ptr @.str.94, ptr @.str.95, ptr @.str.98, ptr @.str.99, ptr @.str.101, ptr @.str.102, ptr @.str.105, ptr @.str.108, ptr @.str.111, ptr @.str.114, ptr @.str.117, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.129, ptr @.str.131, ptr @.str.132, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.141, ptr @.str.142, ptr @.str.144, ptr @init_completion.__key, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160], section "llvm.metadata"
@0 = internal global [160 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_fw_check_rdy._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_fw_check_rdy._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_fw_check_rdy._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_fw_download._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_fw_download._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_fw_download._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_load_firmware._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_fw_h2c_cam._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_fw_h2c_cam._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_fw_h2c_ba_cam._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_fw_h2c_ba_cam._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_fw_h2c_fw_log._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_fw_h2c_fw_log._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_fw_h2c_general_pkt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_fw_h2c_general_pkt._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_fw_h2c_lps_parm._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_fw_h2c_lps_parm._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_fw_h2c_default_cmac_tbl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_fw_h2c_default_cmac_tbl._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_fw_h2c_assoc_cmac_tbl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_fw_h2c_assoc_cmac_tbl._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_fw_h2c_txtime_cmac_tbl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_fw_h2c_txtime_cmac_tbl._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_fw_h2c_vif_maintain._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_fw_h2c_vif_maintain._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_fw_h2c_join_info._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_fw_h2c_join_info._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_fw_h2c_macid_pause._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_fw_h2c_macid_pause._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_fw_h2c_set_edca._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_fw_h2c_set_edca._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_fw_h2c_set_ofld_cfg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_fw_h2c_set_ofld_cfg._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_fw_h2c_ra._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_fw_h2c_ra._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_fw_h2c_cxdrv_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_fw_h2c_cxdrv_init._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_fw_h2c_cxdrv_role._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_fw_h2c_cxdrv_role._entry.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_fw_h2c_cxdrv_ctrl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_fw_h2c_cxdrv_ctrl._entry.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_fw_h2c_cxdrv_rfk._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_fw_h2c_cxdrv_rfk._entry.84 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_fw_h2c_rf_reg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_fw_h2c_rf_reg._entry.88 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_fw_h2c_raw_with_hdr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_fw_h2c_raw_with_hdr._entry.92 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_fw_h2c_raw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_fw_h2c_raw._entry.96 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_fw_st_dbg_dump._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_fw_st_dbg_dump._entry.100 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_fw_st_dbg_dump._entry.104 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_fw_st_dbg_dump._entry.107 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_fw_st_dbg_dump._entry.110 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_fw_st_dbg_dump._entry.113 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_fw_st_dbg_dump._entry.116 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_mfw_recognize._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_fw_update_ver._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_fw_hdr_parser._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_fw_download_hdr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_fw_download_hdr._entry.128 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_fw_download_main._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_fw_dl_fail_dump._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_fw_dl_fail_dump._entry.143 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_load_firmware_cb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_fw_write_h2c_reg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_fw_read_c2h_reg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_fw_prog_cnt_dump._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @rtw89_fw_h2c_alloc_skb_with_hdr(i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add1.i = add i32 %len, 32
  %call.i.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef %add1.i, i32 noundef 2592) #5
  %tobool2.not.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool2.not.i, label %entry.rtw89_fw_h2c_alloc_skb.exit_crit_edge, label %if.end4.i

entry.rtw89_fw_h2c_alloc_skb.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtw89_fw_h2c_alloc_skb.exit

if.end4.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 19
  %0 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 32
  store ptr %add.ptr.i.i, ptr %data.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 16
  %2 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tail.i.i, align 8
  %add.ptr1.i.i = getelementptr i8, ptr %3, i32 32
  store ptr %add.ptr1.i.i, ptr %tail.i.i, align 8
  %4 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %len)
  br label %rtw89_fw_h2c_alloc_skb.exit

rtw89_fw_h2c_alloc_skb.exit:                      ; preds = %if.end4.i, %entry.rtw89_fw_h2c_alloc_skb.exit_crit_edge
  ret ptr %call.i.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @rtw89_fw_h2c_alloc_skb_no_hdr(i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add1.i = add i32 %len, 24
  %call.i.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef %add1.i, i32 noundef 2592) #5
  %tobool2.not.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool2.not.i, label %entry.rtw89_fw_h2c_alloc_skb.exit_crit_edge, label %if.end4.i

entry.rtw89_fw_h2c_alloc_skb.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtw89_fw_h2c_alloc_skb.exit

if.end4.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 19
  %0 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 24
  store ptr %add.ptr.i.i, ptr %data.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 16
  %2 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tail.i.i, align 8
  %add.ptr1.i.i = getelementptr i8, ptr %3, i32 24
  store ptr %add.ptr1.i.i, ptr %tail.i.i, align 8
  %4 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %len)
  br label %rtw89_fw_h2c_alloc_skb.exit

rtw89_fw_h2c_alloc_skb.exit:                      ; preds = %if.end4.i, %entry.rtw89_fw_h2c_alloc_skb.exit_crit_edge
  ret ptr %call.i.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtw89_fw_check_rdy(ptr noundef %rtwdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i64 @ktime_get() #5
  %add.i = add i64 %call, 400000000
  %hci.i.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 7
  %0 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hci.i.i, align 8
  %read8.i.i54 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %read8.i.i54 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %read8.i.i54, align 4
  %call.i.i55 = tail call zeroext i8 %3(ptr noundef %rtwdev, i32 noundef 480) #5
  call void @__sanitizer_cov_trace_const_cmp1(i8 -33, i8 %call.i.i55)
  %cmp56 = icmp ugt i8 %call.i.i55, -33
  br i1 %cmp56, label %entry.if.end35_crit_edge, label %entry.land.lhs.true_crit_edge

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  br label %land.lhs.true

entry.if.end35_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end35

land.lhs.true:                                    ; preds = %cond.false.land.lhs.true_crit_edge, %entry.land.lhs.true_crit_edge
  %call4 = tail call i64 @ktime_get() #5
  call void @__sanitizer_cov_trace_cmp8(i64 %call4, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call4, %add.i
  br i1 %cmp3.i, label %for.end, label %cond.false

cond.false:                                       ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 214748) #5
  %5 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hci.i.i, align 8
  %read8.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %6, i32 0, i32 7
  %7 = ptrtoint ptr %read8.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %read8.i.i, align 4
  %call.i.i = tail call zeroext i8 %8(ptr noundef %rtwdev, i32 noundef 480) #5
  %cmp = icmp ugt i8 %call.i.i, -33
  br i1 %cmp, label %cond.false.if.end35_crit_edge, label %cond.false.land.lhs.true_crit_edge

cond.false.land.lhs.true_crit_edge:               ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true

cond.false.if.end35_crit_edge:                    ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end35

for.end:                                          ; preds = %land.lhs.true
  %9 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hci.i.i, align 8
  %read8.i.i50 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %10, i32 0, i32 7
  %11 = ptrtoint ptr %read8.i.i50 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %read8.i.i50, align 4
  %call.i.i51 = tail call zeroext i8 %12(ptr noundef %rtwdev, i32 noundef 480) #5
  %13 = lshr i8 %call.i.i51, 5
  %trunc = trunc i8 %13 to i3
  %14 = zext i3 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values)
  switch i3 %trunc, label %for.end.cleanup_crit_edge [
    i3 -1, label %for.end.if.end35_crit_edge
    i3 2, label %do.end
    i3 3, label %do.end28
    i3 -4, label %do.end33
  ]

for.end.if.end35_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end35

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end:                                           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 1
  %15 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str) #8
  br label %cleanup

do.end28:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  %dev29 = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 1
  %17 = ptrtoint ptr %dev29 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev29, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.6) #8
  br label %cleanup

do.end33:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  %dev34 = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 1
  %19 = ptrtoint ptr %dev34 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev34, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.9) #8
  br label %cleanup

if.end35:                                         ; preds = %for.end.if.end35_crit_edge, %cond.false.if.end35_crit_edge, %entry.if.end35_crit_edge
  %flags = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 26
  tail call void @_set_bit(i32 noundef 1, ptr noundef %flags) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end35, %do.end33, %do.end28, %do.end, %for.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end33 ], [ -22, %do.end28 ], [ -22, %do.end ], [ 0, %if.end35 ], [ -16, %for.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtw89_fw_recognize(ptr noundef %rtwdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @__rtw89_fw_recognize(ptr noundef %rtwdev, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call fastcc i32 @__rtw89_fw_recognize(ptr noundef %rtwdev, i32 noundef 3)
  %chip1.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 3
  %0 = ptrtoint ptr %chip1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip1.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.i = icmp eq i32 %3, 0
  br i1 %cmp.i, label %land.lhs.true.i, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true.i:                                  ; preds = %if.end
  %major_ver.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 6, i32 5, i32 2
  %4 = ptrtoint ptr %major_ver.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %major_ver.i, align 4
  %conv.i = zext i8 %5 to i32
  %shl.i = shl nuw i32 %conv.i, 24
  %minor_ver.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 6, i32 5, i32 3
  %6 = ptrtoint ptr %minor_ver.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %minor_ver.i, align 1
  %conv2.i = zext i8 %7 to i32
  %shl3.i = shl nuw nsw i32 %conv2.i, 16
  %or.i = or i32 %shl3.i, %shl.i
  %sub_ver.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 6, i32 5, i32 4
  %8 = ptrtoint ptr %sub_ver.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %sub_ver.i, align 2
  %conv4.i = zext i8 %9 to i32
  %shl5.i = shl nuw nsw i32 %conv4.i, 8
  %or6.i = or i32 %or.i, %shl5.i
  %sub_idex.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 6, i32 5, i32 5
  %10 = ptrtoint ptr %sub_idex.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %sub_idex.i, align 1
  %conv7.i = zext i8 %11 to i32
  %or8.i = or i32 %or6.i, %conv7.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 859393, i32 %or8.i)
  %cmp9.i = icmp slt i32 %or8.i, 859393
  br i1 %cmp9.i, label %if.then.i, label %land.lhs.true.i.cleanup_crit_edge

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  %old_ht_ra_format.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 6, i32 8
  %12 = ptrtoint ptr %old_ht_ra_format.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %old_ht_ra_format.i, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %land.lhs.true.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__rtw89_fw_recognize(ptr noundef %rtwdev, i32 noundef %type) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %type)
  %cmp.i = icmp eq i32 %type, 3
  %wowlan.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 6, i32 6
  %normal.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 6, i32 5
  %retval.0.i = select i1 %cmp.i, ptr %wowlan.i, ptr %normal.i
  %fw.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 6
  %0 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fw.i, align 4
  %data.i = getelementptr inbounds %struct.firmware, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data.i, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %1, align 4
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %7)
  %cmp.not.i = icmp eq i8 %7, -1
  br i1 %cmp.not.i, label %for.cond.preheader.i, label %if.then.i

for.cond.preheader.i:                             ; preds = %entry
  %fw_nr.i = getelementptr inbounds %struct.rtw89_mfw_hdr, ptr %3, i32 0, i32 1
  %8 = ptrtoint ptr %fw_nr.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %fw_nr.i, align 1
  %conv9.i = zext i8 %9 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp1052.not.i = icmp eq i8 %9, 0
  br i1 %cmp1052.not.i, label %for.cond.preheader.i.do.end.i_crit_edge, label %for.body.lr.ph.i

for.cond.preheader.i.do.end.i_crit_edge:          ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %cv13.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 4, i32 1
  %10 = ptrtoint ptr %cv13.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %cv13.i, align 4
  br label %for.body.i

if.then.i:                                        ; preds = %entry
  tail call void (ptr, i32, ptr, ...) @__rtw89_debug(ptr noundef %rtwdev, i32 noundef 4096, ptr noundef nonnull @.str.119) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %type)
  %cmp3.not.i = icmp eq i32 %type, 1
  br i1 %cmp3.not.i, label %if.end.i, label %if.then.i.cleanup_crit_edge

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  %12 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %3, ptr %retval.0.i, align 4
  br label %if.end

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.053.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.rtw89_mfw_hdr, ptr %3, i32 0, i32 3, i32 %i.053.i
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %14, i8 %11)
  %cmp15.not.i = icmp eq i8 %14, %11
  br i1 %cmp15.not.i, label %lor.lhs.false.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

lor.lhs.false.i:                                  ; preds = %for.body.i
  %type17.i = getelementptr %struct.rtw89_mfw_hdr, ptr %3, i32 0, i32 3, i32 %i.053.i, i32 1
  %15 = ptrtoint ptr %type17.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %type17.i, align 1
  %conv18.i = zext i8 %16 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv18.i, i32 %type)
  %cmp19.not.i = icmp eq i32 %conv18.i, %type
  br i1 %cmp19.not.i, label %lor.lhs.false21.i, label %lor.lhs.false.i.for.inc.i_crit_edge

lor.lhs.false.i.for.inc.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

lor.lhs.false21.i:                                ; preds = %lor.lhs.false.i
  %mp.i = getelementptr %struct.rtw89_mfw_hdr, ptr %3, i32 0, i32 3, i32 %i.053.i, i32 2
  %17 = ptrtoint ptr %mp.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %mp.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.not.i = icmp eq i8 %18, 0
  br i1 %tobool.not.i, label %if.end24.i, label %lor.lhs.false21.i.for.inc.i_crit_edge

lor.lhs.false21.i.for.inc.i_crit_edge:            ; preds = %lor.lhs.false21.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

if.end24.i:                                       ; preds = %lor.lhs.false21.i
  call void @__sanitizer_cov_trace_pc() #7
  %shift.i = getelementptr %struct.rtw89_mfw_hdr, ptr %3, i32 0, i32 3, i32 %i.053.i, i32 4
  %19 = ptrtoint ptr %shift.i to i32
  call void @__asan_loadN_noabort(i32 %19, i32 4)
  %20 = load i32, ptr %shift.i, align 1
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #5
  %add.ptr.i = getelementptr i8, ptr %3, i32 %21
  %22 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %add.ptr.i, ptr %retval.0.i, align 4
  %size26.i = getelementptr %struct.rtw89_mfw_hdr, ptr %3, i32 0, i32 3, i32 %i.053.i, i32 5
  %23 = ptrtoint ptr %size26.i to i32
  call void @__asan_loadN_noabort(i32 %23, i32 4)
  %24 = load i32, ptr %size26.i, align 1
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #5
  br label %if.end

for.inc.i:                                        ; preds = %lor.lhs.false21.i.for.inc.i_crit_edge, %lor.lhs.false.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.053.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %conv9.i
  br i1 %exitcond.not.i, label %for.inc.i.do.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.inc.i.do.end.i_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i

do.end.i:                                         ; preds = %for.inc.i.do.end.i_crit_edge, %for.cond.preheader.i.do.end.i_crit_edge
  %dev.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 1
  %26 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.120) #8
  br label %cleanup

if.end:                                           ; preds = %if.end24.i, %if.end.i
  %.sink = phi i32 [ %5, %if.end.i ], [ %25, %if.end24.i ]
  %size7.i = getelementptr inbounds %struct.rtw89_fw_suit, ptr %retval.0.i, i32 0, i32 1
  %28 = ptrtoint ptr %size7.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %.sink, ptr %size7.i, align 4
  %29 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %retval.0.i, align 4
  %add.ptr.i10 = getelementptr i32, ptr %30, i32 1
  %31 = ptrtoint ptr %add.ptr.i10 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %add.ptr.i10, align 4
  %33 = lshr i32 %32, 24
  %conv.i = trunc i32 %33 to i8
  %major_ver.i = getelementptr inbounds %struct.rtw89_fw_suit, ptr %retval.0.i, i32 0, i32 2
  %34 = ptrtoint ptr %major_ver.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %conv.i, ptr %major_ver.i, align 4
  %35 = load i32, ptr %add.ptr.i10, align 4
  %sum.shift.i = lshr i32 %35, 16
  %div4.i767879.i = trunc i32 %sum.shift.i to i8
  %minor_ver.i = getelementptr inbounds %struct.rtw89_fw_suit, ptr %retval.0.i, i32 0, i32 3
  %36 = ptrtoint ptr %minor_ver.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %div4.i767879.i, ptr %minor_ver.i, align 1
  %37 = load i32, ptr %add.ptr.i10, align 4
  %38 = lshr i32 %37, 8
  %conv6.i = trunc i32 %38 to i8
  %sub_ver.i = getelementptr inbounds %struct.rtw89_fw_suit, ptr %retval.0.i, i32 0, i32 4
  %39 = ptrtoint ptr %sub_ver.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %conv6.i, ptr %sub_ver.i, align 2
  %40 = load i32, ptr %add.ptr.i10, align 4
  %conv9.i11 = trunc i32 %40 to i8
  %sub_idex.i = getelementptr inbounds %struct.rtw89_fw_suit, ptr %retval.0.i, i32 0, i32 5
  %41 = ptrtoint ptr %sub_idex.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %conv9.i11, ptr %sub_idex.i, align 1
  %add.ptr10.i = getelementptr i32, ptr %30, i32 5
  %42 = ptrtoint ptr %add.ptr10.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %add.ptr10.i, align 4
  %44 = tail call i32 @llvm.bswap.i32(i32 %43) #5
  %conv12.i = trunc i32 %44 to i16
  %build_year.i = getelementptr inbounds %struct.rtw89_fw_suit, ptr %retval.0.i, i32 0, i32 6
  %45 = ptrtoint ptr %build_year.i to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %conv12.i, ptr %build_year.i, align 4
  %add.ptr13.i = getelementptr i32, ptr %30, i32 4
  %46 = ptrtoint ptr %add.ptr13.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %add.ptr13.i, align 4
  %48 = lshr i32 %47, 24
  %conv15.i = trunc i32 %48 to i16
  %build_mon.i = getelementptr inbounds %struct.rtw89_fw_suit, ptr %retval.0.i, i32 0, i32 7
  %49 = ptrtoint ptr %build_mon.i to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 %conv15.i, ptr %build_mon.i, align 2
  %50 = load i32, ptr %add.ptr13.i, align 4
  %sum.shift83.i = lshr i32 %50, 16
  %div4.i69778284.i = trunc i32 %sum.shift83.i to i16
  %div4.i697782.i = and i16 %div4.i69778284.i, 255
  %build_date.i = getelementptr inbounds %struct.rtw89_fw_suit, ptr %retval.0.i, i32 0, i32 8
  %51 = ptrtoint ptr %build_date.i to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 %div4.i697782.i, ptr %build_date.i, align 4
  %52 = load i32, ptr %add.ptr13.i, align 4
  %53 = trunc i32 %52 to i16
  %54 = lshr i16 %53, 8
  %build_hour.i = getelementptr inbounds %struct.rtw89_fw_suit, ptr %retval.0.i, i32 0, i32 9
  %55 = ptrtoint ptr %build_hour.i to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 %54, ptr %build_hour.i, align 2
  %56 = load i32, ptr %add.ptr13.i, align 4
  %57 = trunc i32 %56 to i16
  %conv24.i = and i16 %57, 255
  %build_min.i = getelementptr inbounds %struct.rtw89_fw_suit, ptr %retval.0.i, i32 0, i32 10
  %58 = ptrtoint ptr %build_min.i to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 %conv24.i, ptr %build_min.i, align 4
  %add.ptr25.i = getelementptr i32, ptr %30, i32 7
  %59 = ptrtoint ptr %add.ptr25.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %add.ptr25.i, align 4
  %61 = and i32 %60, 255
  %conv27.i = trunc i32 %60 to i8
  %cmd_ver.i = getelementptr inbounds %struct.rtw89_fw_suit, ptr %retval.0.i, i32 0, i32 11
  %62 = ptrtoint ptr %cmd_ver.i to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %conv27.i, ptr %cmd_ver.i, align 2
  %dev.i12 = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 1
  %63 = ptrtoint ptr %dev.i12 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %dev.i12, align 4
  %conv31.i = and i32 %sum.shift.i, 255
  %conv33.i = and i32 %38, 255
  %conv35.i = and i32 %40, 255
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %64, ptr noundef nonnull @.str.122, i32 noundef %33, i32 noundef %conv31.i, i32 noundef %conv33.i, i32 noundef %conv35.i, i32 noundef %61, i32 noundef %type) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end.i, %if.then.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -2, %do.end.i ], [ -22, %if.then.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw89_h2c_pkt_set_hdr(ptr nocapture noundef %rtwdev, ptr noundef %skb, i8 noundef zeroext %type, i8 noundef zeroext %cat, i8 noundef zeroext %class, i8 noundef zeroext %func, i1 noundef zeroext %rack, i1 noundef zeroext %dack, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @skb_push(ptr noundef %skb, i32 noundef 8) #5
  %h2c_seq = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 6, i32 3
  %0 = ptrtoint ptr %h2c_seq to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %h2c_seq, align 32
  %conv18 = zext i8 %type to i32
  %shl = shl nuw nsw i32 %conv18, 16
  %and19 = and i32 %shl, 983040
  %2 = and i8 %cat, 3
  %and45 = zext i8 %2 to i32
  %or = or i32 %and19, %and45
  %conv69 = zext i8 %class to i32
  %shl70 = shl nuw nsw i32 %conv69, 2
  %and71 = and i32 %shl70, 252
  %or72 = or i32 %or, %and71
  %conv96 = zext i8 %func to i32
  %shl97 = shl nuw nsw i32 %conv96, 8
  %or99 = or i32 %or72, %shl97
  %conv129 = zext i8 %1 to i32
  %shl130 = shl nuw i32 %conv129, 24
  %or132 = or i32 %or99, %shl130
  %3 = tail call i32 @llvm.bswap.i32(i32 %or132)
  %4 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %call, align 4
  %add = add i32 %len, 8
  %5 = and i8 %1, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  %spec.select = or i1 %tobool.not, %rack
  %and158 = and i32 %add, 16383
  %cond = select i1 %spec.select, i32 16384, i32 0
  %cond164 = select i1 %dack, i32 32768, i32 0
  %or161 = or i32 %and158, %cond164
  %or165 = or i32 %or161, %cond
  %6 = tail call i32 @llvm.bswap.i32(i32 %or165)
  %hdr1 = getelementptr inbounds %struct.fwcmd_hdr, ptr %call, i32 0, i32 1
  %7 = ptrtoint ptr %hdr1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %hdr1, align 4
  %8 = ptrtoint ptr %h2c_seq to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %h2c_seq, align 32
  %inc = add i8 %9, 1
  store i8 %inc, ptr %h2c_seq, align 32
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtw89_fw_download(ptr noundef %rtwdev, i32 noundef %type) local_unnamed_addr #0 align 64 {
entry:
  %info = alloca %struct.rtw89_fw_bin_info, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %type)
  %cmp.i = icmp eq i32 %type, 3
  %wowlan.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 6, i32 6
  %normal.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 6, i32 5
  %retval.0.i = select i1 %cmp.i, ptr %wowlan.i, ptr %normal.i
  call void @llvm.lifetime.start.p0(i64 168, ptr nonnull %info) #5
  %0 = call ptr @memset(ptr %info, i32 255, i32 168)
  %1 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %retval.0.i, align 4
  %size = getelementptr inbounds %struct.rtw89_fw_suit, ptr %retval.0.i, i32 0, i32 1
  %3 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %size, align 4
  %tobool.not = icmp eq ptr %2, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool2.not = icmp eq i32 %4, 0
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool2.not
  br i1 %or.cond, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 1
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.11, i32 noundef %type) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %2, i32 %4
  %add.ptr1.i = getelementptr i32, ptr %2, i32 6
  %7 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %add.ptr1.i, align 4
  %sum.shift.i = lshr i32 %8, 16
  %conv.i = trunc i32 %sum.shift.i to i8
  %9 = ptrtoint ptr %info to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv.i, ptr %info, align 4
  %div4.i6364.i = shl nuw nsw i32 %sum.shift.i, 4
  %conv3.i = and i32 %div4.i6364.i, 4080
  %add.i = add nuw nsw i32 %conv3.i, 32
  %hdr_len.i = getelementptr inbounds %struct.rtw89_fw_bin_info, ptr %info, i32 0, i32 1
  %10 = ptrtoint ptr %hdr_len.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %add.i, ptr %hdr_len.i, align 4
  %add.ptr5.i = getelementptr i8, ptr %2, i32 %add.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv.i)
  %cmp69.not.i = icmp eq i8 %conv.i, 0
  br i1 %cmp69.not.i, label %if.end.for.end.i_crit_edge, label %for.body.preheader.i

if.end.for.end.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

for.body.preheader.i:                             ; preds = %if.end
  %section_info7.i = getelementptr inbounds %struct.rtw89_fw_bin_info, ptr %info, i32 0, i32 2
  %add.ptr6.i = getelementptr i8, ptr %2, i32 32
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.preheader.i
  %i.073.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %bin.072.i = phi ptr [ %add.ptr26.i, %for.body.i.for.body.i_crit_edge ], [ %add.ptr5.i, %for.body.preheader.i ]
  %section_info.071.i = phi ptr [ %incdec.ptr.i, %for.body.i.for.body.i_crit_edge ], [ %section_info7.i, %for.body.preheader.i ]
  %fw.addr.070.i = phi ptr [ %add.ptr27.i, %for.body.i.for.body.i_crit_edge ], [ %add.ptr6.i, %for.body.preheader.i ]
  %add.ptr11.i = getelementptr i32, ptr %fw.addr.070.i, i32 1
  %11 = ptrtoint ptr %add.ptr11.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %add.ptr11.i, align 4
  %13 = and i32 %12, -256
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #5
  %len13.i = getelementptr inbounds %struct.rtw89_fw_hdr_section_info, ptr %section_info.071.i, i32 0, i32 2
  %15 = and i32 %12, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool16.not.i = icmp eq i32 %15, 0
  %add19.i = add nuw nsw i32 %14, 8
  %spec.select = select i1 %tobool16.not.i, i32 %14, i32 %add19.i
  %16 = ptrtoint ptr %len13.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %spec.select, ptr %len13.i, align 4
  %17 = trunc i32 %12 to i8
  %18 = lshr i8 %17, 5
  %conv23.i = and i8 %18, 1
  %19 = ptrtoint ptr %section_info.071.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv23.i, ptr %section_info.071.i, align 4
  %20 = ptrtoint ptr %fw.addr.070.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %fw.addr.070.i, align 4
  %22 = and i32 %21, -225
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #5
  %dladdr.i = getelementptr inbounds %struct.rtw89_fw_hdr_section_info, ptr %section_info.071.i, i32 0, i32 3
  %24 = ptrtoint ptr %dladdr.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %dladdr.i, align 4
  %addr.i = getelementptr inbounds %struct.rtw89_fw_hdr_section_info, ptr %section_info.071.i, i32 0, i32 1
  %25 = ptrtoint ptr %addr.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %bin.072.i, ptr %addr.i, align 4
  %add.ptr26.i = getelementptr i8, ptr %bin.072.i, i32 %spec.select
  %add.ptr27.i = getelementptr i8, ptr %fw.addr.070.i, i32 16
  %incdec.ptr.i = getelementptr %struct.rtw89_fw_hdr_section_info, ptr %section_info.071.i, i32 1
  %inc.i = add nuw nsw i32 %i.073.i, 1
  %26 = ptrtoint ptr %info to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %info, align 4
  %conv9.i = zext i8 %27 to i32
  %cmp.i88 = icmp ult i32 %inc.i, %conv9.i
  br i1 %cmp.i88, label %for.body.i.for.body.i_crit_edge, label %for.body.i.for.end.i_crit_edge

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %if.end.for.end.i_crit_edge
  %bin.0.lcssa.i = phi ptr [ %add.ptr5.i, %if.end.for.end.i_crit_edge ], [ %add.ptr26.i, %for.body.i.for.end.i_crit_edge ]
  %cmp28.not.i = icmp eq ptr %add.ptr.i, %bin.0.lcssa.i
  br i1 %cmp28.not.i, label %if.end10, label %do.end8

do.end8:                                          ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 1
  %28 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.124) #8
  %30 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.14) #8
  br label %fwdl_err

if.end10:                                         ; preds = %for.end.i
  %call11 = tail call i64 @ktime_get() #5
  %add.i90 = add i64 %call11, 400000000
  %hci.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 7
  %32 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %hci.i, align 8
  %read8.i131 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %33, i32 0, i32 7
  %34 = ptrtoint ptr %read8.i131 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %read8.i131, align 4
  %call.i132 = tail call zeroext i8 %35(ptr noundef %rtwdev, i32 noundef 480) #5
  %36 = and i8 %call.i132, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool14.not133 = icmp eq i8 %36, 0
  br i1 %tobool14.not133, label %if.end10.land.lhs.true_crit_edge, label %if.end10.for.end_crit_edge

if.end10.for.end_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

if.end10.land.lhs.true_crit_edge:                 ; preds = %if.end10
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %cond.false.land.lhs.true_crit_edge, %if.end10.land.lhs.true_crit_edge
  %call18 = tail call i64 @ktime_get() #5
  call void @__sanitizer_cov_trace_cmp8(i64 %call18, i64 %add.i90)
  %cmp3.i = icmp sgt i64 %call18, %add.i90
  br i1 %cmp3.i, label %if.then21, label %cond.false

if.then21:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %37 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %hci.i, align 8
  %read8.i94 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %38, i32 0, i32 7
  %39 = ptrtoint ptr %read8.i94 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %read8.i94, align 4
  %call.i95 = tail call zeroext i8 %40(ptr noundef %rtwdev, i32 noundef 480) #5
  br label %for.end

cond.false:                                       ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %41 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %41(i32 noundef 214748) #5
  %42 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %hci.i, align 8
  %read8.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %43, i32 0, i32 7
  %44 = ptrtoint ptr %read8.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %read8.i, align 4
  %call.i = tail call zeroext i8 %45(ptr noundef %rtwdev, i32 noundef 480) #5
  %46 = and i8 %call.i, 2
  %tobool14.not = icmp eq i8 %46, 0
  br i1 %tobool14.not, label %cond.false.land.lhs.true_crit_edge, label %cond.false.for.end_crit_edge

cond.false.for.end_crit_edge:                     ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

cond.false.land.lhs.true_crit_edge:               ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true

for.end:                                          ; preds = %cond.false.for.end_crit_edge, %if.then21, %if.end10.for.end_crit_edge
  %val.0 = phi i8 [ %call.i95, %if.then21 ], [ %call.i132, %if.end10.for.end_crit_edge ], [ %call.i, %cond.false.for.end_crit_edge ]
  %47 = and i8 %val.0, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool34.not = icmp eq i8 %47, 0
  br i1 %tobool34.not, label %do.end39, label %if.end41

do.end39:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  %dev40 = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 1
  %48 = ptrtoint ptr %dev40 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev40, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %49, ptr noundef nonnull @.str.17) #8
  br label %fwdl_err

if.end41:                                         ; preds = %for.end
  %50 = ptrtoint ptr %hdr_len.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %hdr_len.i, align 4
  %add1.i.i.i.i = add i32 %51, 32
  %call.i.i.i.i.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef %add1.i.i.i.i, i32 noundef 2592) #5
  %tobool2.not.i.i.i.i = icmp eq ptr %call.i.i.i.i.i.i, null
  br i1 %tobool2.not.i.i.i.i, label %do.end.i.i, label %if.end.i.i

do.end.i.i:                                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 1
  %52 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dev.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %53, ptr noundef nonnull @.str.131) #8
  br label %do.end.i97

if.end.i.i:                                       ; preds = %if.end41
  %data.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i.i.i, i32 0, i32 19
  %54 = ptrtoint ptr %data.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %data.i.i.i.i.i, align 4
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %55, i32 32
  store ptr %add.ptr.i.i.i.i.i, ptr %data.i.i.i.i.i, align 4
  %tail.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i.i.i, i32 0, i32 16
  %56 = ptrtoint ptr %tail.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %tail.i.i.i.i.i, align 8
  %add.ptr1.i.i.i.i.i = getelementptr i8, ptr %57, i32 32
  store ptr %add.ptr1.i.i.i.i.i, ptr %tail.i.i.i.i.i, align 8
  %58 = call ptr @memset(ptr %add.ptr.i.i.i.i.i, i32 0, i32 %51)
  %call.i.i.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i.i.i.i.i, i32 noundef %51) #5
  %59 = call ptr @memcpy(ptr %call.i.i.i, ptr %2, i32 %51)
  %60 = ptrtoint ptr %data.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %data.i.i.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i32, ptr %61, i32 7
  %62 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %add.ptr.i.i.i, align 4
  %and.i.i.i.i = and i32 %63, 65535
  %or.i.i.i.i = or i32 %and.i.i.i.i, -469303296
  store i32 %or.i.i.i.i, ptr %add.ptr.i.i.i, align 4
  %call.i22.i.i = tail call ptr @skb_push(ptr noundef nonnull %call.i.i.i.i.i.i, i32 noundef 8) #5
  %h2c_seq.i.i.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 6, i32 3
  %64 = ptrtoint ptr %h2c_seq.i.i.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %h2c_seq.i.i.i, align 32
  %conv122.i.i.i = zext i8 %65 to i32
  %shl123.i.i.i = shl nuw i32 %conv122.i.i.i, 24
  %or125.i.i.i = or i32 %shl123.i.i.i, 13
  %66 = tail call i32 @llvm.bswap.i32(i32 %or125.i.i.i) #5
  %67 = ptrtoint ptr %call.i22.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %66, ptr %call.i22.i.i, align 4
  %add.i.i.i = add i32 %51, 8
  %and151.i.i.i = and i32 %add.i.i.i, 16383
  %68 = tail call i32 @llvm.bswap.i32(i32 %and151.i.i.i) #5
  %hdr1.i.i.i = getelementptr inbounds %struct.fwcmd_hdr, ptr %call.i22.i.i, i32 0, i32 1
  %69 = ptrtoint ptr %hdr1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %68, ptr %hdr1.i.i.i, align 4
  %call2.i.i = tail call i32 @rtw89_h2c_tx(ptr noundef %rtwdev, ptr noundef nonnull %call.i.i.i.i.i.i, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool3.not.i.i, label %if.end.i, label %do.end7.i.i

do.end7.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %dev8.i.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 1
  %70 = ptrtoint ptr %dev8.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %dev8.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %71, ptr noundef nonnull @.str.24) #8
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %call.i.i.i.i.i.i, i32 noundef 1) #5
  br label %do.end.i97

do.end.i97:                                       ; preds = %do.end7.i.i, %do.end.i.i
  %dev.i96 = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 1
  %72 = ptrtoint ptr %dev.i96 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %dev.i96, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %73, ptr noundef nonnull @.str.126) #8
  br label %fwdl_err

if.end.i:                                         ; preds = %if.end.i.i
  %call1.i = tail call i64 @ktime_get() #5
  %add.i.i = add i64 %call1.i, 400000000
  %74 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %hci.i, align 8
  %read8.i61.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %75, i32 0, i32 7
  %76 = ptrtoint ptr %read8.i61.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %read8.i61.i, align 4
  %call.i62.i = tail call zeroext i8 %77(ptr noundef %rtwdev, i32 noundef 480) #5
  %78 = and i8 %call.i62.i, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %78)
  %tobool4.not63.i = icmp eq i8 %78, 0
  br i1 %tobool4.not63.i, label %if.end.i.land.lhs.true.i_crit_edge, label %if.end.i.for.end.i98_crit_edge

if.end.i.for.end.i98_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i98

if.end.i.land.lhs.true.i_crit_edge:               ; preds = %if.end.i
  br label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %cond.false.i.land.lhs.true.i_crit_edge, %if.end.i.land.lhs.true.i_crit_edge
  %call8.i = tail call i64 @ktime_get() #5
  call void @__sanitizer_cov_trace_cmp8(i64 %call8.i, i64 %add.i.i)
  %cmp3.i.i = icmp sgt i64 %call8.i, %add.i.i
  br i1 %cmp3.i.i, label %if.then11.i, label %cond.false.i

if.then11.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  %79 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %hci.i, align 8
  %read8.i50.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %80, i32 0, i32 7
  %81 = ptrtoint ptr %read8.i50.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %read8.i50.i, align 4
  %call.i51.i = tail call zeroext i8 %82(ptr noundef %rtwdev, i32 noundef 480) #5
  br label %for.end.i98

cond.false.i:                                     ; preds = %land.lhs.true.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %83 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %83(i32 noundef 214748) #5
  %84 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %hci.i, align 8
  %read8.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %85, i32 0, i32 7
  %86 = ptrtoint ptr %read8.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %read8.i.i, align 4
  %call.i.i = tail call zeroext i8 %87(ptr noundef %rtwdev, i32 noundef 480) #5
  %88 = and i8 %call.i.i, 4
  %tobool4.not.i = icmp eq i8 %88, 0
  br i1 %tobool4.not.i, label %cond.false.i.land.lhs.true.i_crit_edge, label %cond.false.i.for.end.i98_crit_edge

cond.false.i.for.end.i98_crit_edge:               ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i98

cond.false.i.land.lhs.true.i_crit_edge:           ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true.i

for.end.i98:                                      ; preds = %cond.false.i.for.end.i98_crit_edge, %if.then11.i, %if.end.i.for.end.i98_crit_edge
  %val.0.i = phi i8 [ %call.i51.i, %if.then11.i ], [ %call.i62.i, %if.end.i.for.end.i98_crit_edge ], [ %call.i.i, %cond.false.i.for.end.i98_crit_edge ]
  %89 = and i8 %val.0.i, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %89)
  %tobool24.not.i = icmp eq i8 %89, 0
  br i1 %tobool24.not.i, label %do.end29.i, label %if.end45

do.end29.i:                                       ; preds = %for.end.i98
  call void @__sanitizer_cov_trace_pc() #7
  %dev30.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 1
  %90 = ptrtoint ptr %dev30.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %dev30.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %91, ptr noundef nonnull @.str.129) #8
  br label %fwdl_err

if.end45:                                         ; preds = %for.end.i98
  %92 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %hci.i, align 8
  %write32.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %93, i32 0, i32 12
  %94 = ptrtoint ptr %write32.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %write32.i.i, align 4
  tail call void %95(ptr noundef %rtwdev, i32 noundef 352, i32 noundef 0) #5
  %96 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %hci.i, align 8
  %write32.i54.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %97, i32 0, i32 12
  %98 = ptrtoint ptr %write32.i54.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %write32.i54.i, align 4
  tail call void %99(ptr noundef %rtwdev, i32 noundef 356, i32 noundef 0) #5
  %100 = ptrtoint ptr %info to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %info, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %101)
  %tobool.not7.i = icmp eq i8 %101, 0
  br i1 %tobool.not7.i, label %if.end45.while.cond4.preheader.i_crit_edge, label %while.body.preheader.i

if.end45.while.cond4.preheader.i_crit_edge:       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond4.preheader.i

while.body.preheader.i:                           ; preds = %if.end45
  %section_info1.i = getelementptr inbounds %struct.rtw89_fw_bin_info, ptr %info, i32 0, i32 2
  br label %while.body.i

while.cond4.preheader.i:                          ; preds = %if.end.i111.while.cond4.preheader.i_crit_edge, %if.end45.while.cond4.preheader.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %102 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %102(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %103 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %103(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %104 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %104(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %105 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %105(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %106 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %106(i32 noundef 214748000) #5
  %call9.i = tail call i32 @rtw89_fw_check_rdy(ptr noundef %rtwdev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool10.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool10.not.i, label %if.end49, label %do.end.i113

while.body.i:                                     ; preds = %if.end.i111.while.body.i_crit_edge, %while.body.preheader.i
  %dec10.in.i = phi i8 [ %dec10.i, %if.end.i111.while.body.i_crit_edge ], [ %101, %while.body.preheader.i ]
  %section_info.08.i = phi ptr [ %incdec.ptr.i110, %if.end.i111.while.body.i_crit_edge ], [ %section_info1.i, %while.body.preheader.i ]
  %dec10.i = add i8 %dec10.in.i, -1
  %len.i.i = getelementptr inbounds %struct.rtw89_fw_hdr_section_info, ptr %section_info.08.i, i32 0, i32 2
  %107 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %len.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %108)
  %tobool.not32.i.i = icmp eq i32 %108, 0
  br i1 %tobool.not32.i.i, label %while.body.i.if.end.i111_crit_edge, label %while.body.preheader.i.i

while.body.i.if.end.i111_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i111

while.body.preheader.i.i:                         ; preds = %while.body.i
  %addr.i.i = getelementptr inbounds %struct.rtw89_fw_hdr_section_info, ptr %section_info.08.i, i32 0, i32 1
  %109 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %addr.i.i, align 4
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %if.end12.i.i.while.body.i.i_crit_edge, %while.body.preheader.i.i
  %residue_len.034.i.i = phi i32 [ %sub.i.i, %if.end12.i.i.while.body.i.i_crit_edge ], [ %108, %while.body.preheader.i.i ]
  %section.033.i.i = phi ptr [ %add.ptr.i.i, %if.end12.i.i.while.body.i.i_crit_edge ], [ %110, %while.body.preheader.i.i ]
  %111 = tail call i32 @llvm.umin.i32(i32 %residue_len.034.i.i, i32 2020) #5
  %add1.i.i.i.i100 = add nuw nsw i32 %111, 24
  %call.i.i.i.i.i.i101 = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef %add1.i.i.i.i100, i32 noundef 2592) #5
  %tobool2.not.i.i.i.i102 = icmp eq ptr %call.i.i.i.i.i.i101, null
  br i1 %tobool2.not.i.i.i.i102, label %do.end.i.i104, label %if.end3.i.i

do.end.i.i104:                                    ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i.i103 = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 1
  %112 = ptrtoint ptr %dev.i.i103 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %dev.i.i103, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %113, ptr noundef nonnull @.str.21) #8
  br label %fwdl_err

if.end3.i.i:                                      ; preds = %while.body.i.i
  %data.i.i.i.i.i105 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i.i.i101, i32 0, i32 19
  %114 = ptrtoint ptr %data.i.i.i.i.i105 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %data.i.i.i.i.i105, align 4
  %add.ptr.i.i.i.i.i106 = getelementptr i8, ptr %115, i32 24
  store ptr %add.ptr.i.i.i.i.i106, ptr %data.i.i.i.i.i105, align 4
  %tail.i.i.i.i.i107 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i.i.i101, i32 0, i32 16
  %116 = ptrtoint ptr %tail.i.i.i.i.i107 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %tail.i.i.i.i.i107, align 8
  %add.ptr1.i.i.i.i.i108 = getelementptr i8, ptr %117, i32 24
  store ptr %add.ptr1.i.i.i.i.i108, ptr %tail.i.i.i.i.i107, align 8
  %118 = call ptr @memset(ptr %add.ptr.i.i.i.i.i106, i32 0, i32 %111)
  %call.i.i.i109 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i.i.i.i.i101, i32 noundef %111) #5
  %119 = call ptr @memcpy(ptr %call.i.i.i109, ptr %section.033.i.i, i32 %111)
  %call5.i.i = tail call i32 @rtw89_h2c_tx(ptr noundef %rtwdev, ptr noundef nonnull %call.i.i.i.i.i.i101, i1 noundef zeroext true) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i)
  %tobool6.not.i.i = icmp eq i32 %call5.i.i, 0
  br i1 %tobool6.not.i.i, label %if.end12.i.i, label %do.end10.i.i

do.end10.i.i:                                     ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %dev11.i.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 1
  %120 = ptrtoint ptr %dev11.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %dev11.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %121, ptr noundef nonnull @.str.24) #8
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %call.i.i.i.i.i.i101, i32 noundef 1) #5
  br label %fwdl_err

if.end12.i.i:                                     ; preds = %if.end3.i.i
  %add.ptr.i.i = getelementptr i8, ptr %section.033.i.i, i32 %111
  %sub.i.i = sub i32 %residue_len.034.i.i, %111
  %tobool.not.i.i = icmp eq i32 %sub.i.i, 0
  br i1 %tobool.not.i.i, label %if.end12.i.i.if.end.i111_crit_edge, label %if.end12.i.i.while.body.i.i_crit_edge

if.end12.i.i.while.body.i.i_crit_edge:            ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i.i

if.end12.i.i.if.end.i111_crit_edge:               ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i111

if.end.i111:                                      ; preds = %if.end12.i.i.if.end.i111_crit_edge, %while.body.i.if.end.i111_crit_edge
  %incdec.ptr.i110 = getelementptr %struct.rtw89_fw_hdr_section_info, ptr %section_info.08.i, i32 1
  %tobool.not.i = icmp eq i8 %dec10.i, 0
  br i1 %tobool.not.i, label %if.end.i111.while.cond4.preheader.i_crit_edge, label %if.end.i111.while.body.i_crit_edge

if.end.i111.while.body.i_crit_edge:               ; preds = %if.end.i111
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i

if.end.i111.while.cond4.preheader.i_crit_edge:    ; preds = %if.end.i111
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond4.preheader.i

do.end.i113:                                      ; preds = %while.cond4.preheader.i
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i112 = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 1
  %122 = ptrtoint ptr %dev.i112 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %dev.i112, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %123, ptr noundef nonnull @.str.135) #8
  br label %fwdl_err

if.end49:                                         ; preds = %while.cond4.preheader.i
  call void @__sanitizer_cov_trace_pc() #7
  %124 = ptrtoint ptr %h2c_seq.i.i.i to i32
  call void @__asan_store1_noabort(i32 %124)
  store i8 0, ptr %h2c_seq.i.i.i, align 4
  %rec_seq = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 6, i32 4
  %125 = ptrtoint ptr %rec_seq to i32
  call void @__asan_store1_noabort(i32 %125)
  store i8 0, ptr %rec_seq, align 1
  %rpwm_seq_num = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 5, i32 3
  %126 = ptrtoint ptr %rpwm_seq_num to i32
  call void @__asan_store1_noabort(i32 %126)
  store i8 3, ptr %rpwm_seq_num, align 4
  %cpwm_seq_num = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 5, i32 4
  %127 = ptrtoint ptr %cpwm_seq_num to i32
  call void @__asan_store1_noabort(i32 %127)
  store i8 3, ptr %cpwm_seq_num, align 1
  br label %cleanup

fwdl_err:                                         ; preds = %do.end.i113, %do.end10.i.i, %do.end.i.i104, %do.end29.i, %do.end.i97, %do.end39, %do.end8
  %ret.0 = phi i32 [ -22, %do.end8 ], [ -110, %do.end39 ], [ -16, %do.end.i97 ], [ -16, %do.end29.i ], [ -16, %do.end.i113 ], [ -16, %do.end10.i.i ], [ -16, %do.end.i.i104 ]
  %hci.i.i115 = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 7
  %128 = ptrtoint ptr %hci.i.i115 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %hci.i.i115, align 8
  %read32.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %129, i32 0, i32 9
  %130 = ptrtoint ptr %read32.i.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %read32.i.i, align 4
  %call.i.i116 = tail call i32 %131(ptr noundef %rtwdev, i32 noundef 480) #5
  %dev.i117 = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 1
  %132 = ptrtoint ptr %dev.i117 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %dev.i117, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %133, ptr noundef nonnull @.str.141, i32 noundef %call.i.i116) #8
  %134 = ptrtoint ptr %hci.i.i115 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %hci.i.i115, align 8
  %read16.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %135, i32 0, i32 8
  %136 = ptrtoint ptr %read16.i.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %read16.i.i, align 4
  %call.i11.i = tail call zeroext i16 %137(ptr noundef %rtwdev, i32 noundef 33778) #5
  %138 = ptrtoint ptr %dev.i117 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %dev.i117, align 4
  %conv.i118 = zext i16 %call.i11.i to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %139, ptr noundef nonnull @.str.144, i32 noundef %conv.i118) #8
  %140 = ptrtoint ptr %hci.i.i115 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %hci.i.i115, align 8
  %write32.i.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %141, i32 0, i32 12
  %142 = ptrtoint ptr %write32.i.i.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %write32.i.i.i, align 4
  tail call void %143(ptr noundef %rtwdev, i32 noundef 88, i32 noundef 15859954) #5
  %144 = ptrtoint ptr %hci.i.i115 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %hci.i.i115, align 8
  %read32.i.i.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %145, i32 0, i32 9
  %146 = ptrtoint ptr %read32.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %read32.i.i.i.i, align 4
  %call.i.i.i.i = tail call i32 %147(ptr noundef %rtwdev, i32 noundef 244) #5
  %and21.i.i.i = and i32 %call.i.i.i.i, -196609
  %or.i.i.i = or i32 %and21.i.i.i, 65536
  %148 = ptrtoint ptr %hci.i.i115 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %hci.i.i115, align 8
  %write32.i.i.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %149, i32 0, i32 12
  %150 = ptrtoint ptr %write32.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %write32.i.i.i.i, align 4
  tail call void %151(ptr noundef %rtwdev, i32 noundef 244, i32 noundef %or.i.i.i) #5
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %fwdl_err
  %index.038.i.i = phi i16 [ 0, %fwdl_err ], [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %152 = ptrtoint ptr %hci.i.i115 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %hci.i.i115, align 8
  %read32.i.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %153, i32 0, i32 9
  %154 = ptrtoint ptr %read32.i.i.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %read32.i.i.i, align 4
  %call.i.i.i119 = tail call i32 %155(ptr noundef %rtwdev, i32 noundef 192) #5
  %156 = ptrtoint ptr %dev.i117 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %dev.i117, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %157, ptr noundef nonnull @.str.159, i32 noundef %call.i.i.i119) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %158 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %158(i32 noundef 2147480) #5
  %inc.i.i = add nuw nsw i16 %index.038.i.i, 1
  %cmp.i.i = icmp ult i16 %index.038.i.i, 14
  br i1 %cmp.i.i, label %for.body.i.i.for.body.i.i_crit_edge, label %for.body.i.i.cleanup_crit_edge

for.body.i.i.cleanup_crit_edge:                   ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i.i

cleanup:                                          ; preds = %for.body.i.i.cleanup_crit_edge, %if.end49, %do.end
  %retval.0 = phi i32 [ 0, %if.end49 ], [ -2, %do.end ], [ %ret.0, %for.body.i.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 168, ptr nonnull %info) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtw89_wait_firmware_completion(ptr noundef %rtwdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %fw1 = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 6
  %completion = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 6, i32 2
  tail call void @wait_for_completion(ptr noundef %completion) #5
  %0 = ptrtoint ptr %fw1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fw1, align 4
  %tobool.not = icmp eq ptr %1, null
  %. = select i1 %tobool.not, i32 -22, i32 0
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtw89_load_firmware(ptr noundef %rtwdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %fw1 = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 6
  %chip = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 3
  %0 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip, align 4
  %fw_name2 = getelementptr inbounds %struct.rtw89_chip_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %fw_name2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fw_name2, align 4
  %rtwdev3 = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 6, i32 1
  %4 = ptrtoint ptr %rtwdev3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %rtwdev, ptr %rtwdev3, align 4
  %completion = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 6, i32 2
  %5 = ptrtoint ptr %completion to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %completion, align 4
  %wait.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 6, i32 2, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.146, ptr noundef nonnull @init_completion.__key) #5
  %dev = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 1
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %call = tail call i32 @request_firmware_nowait(ptr noundef null, i1 noundef zeroext true, ptr noundef %3, ptr noundef %7, i32 noundef 3264, ptr noundef %fw1, ptr noundef nonnull @rtw89_load_firmware_cb) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.19) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware_nowait(ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtw89_load_firmware_cb(ptr noundef %firmware, ptr noundef %context) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %rtwdev1 = getelementptr inbounds %struct.rtw89_fw_info, ptr %context, i32 0, i32 1
  %0 = ptrtoint ptr %rtwdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rtwdev1, align 4
  %tobool.not = icmp eq ptr %firmware, null
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %lor.lhs.false

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

lor.lhs.false:                                    ; preds = %entry
  %data = getelementptr inbounds %struct.firmware, ptr %firmware, i32 0, i32 1
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %lor.lhs.false.do.end_crit_edge, label %if.end

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %entry.do.end_crit_edge
  %dev = getelementptr inbounds %struct.rtw89_dev, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.147) #8
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %context to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %firmware, ptr %context, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %completion4 = getelementptr inbounds %struct.rtw89_fw_info, ptr %context, i32 0, i32 2
  tail call void @complete_all(ptr noundef %completion4) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw89_unload_firmware(ptr noundef %rtwdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %fw1 = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 6
  %completion.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 6, i32 2
  tail call void @wait_for_completion(ptr noundef %completion.i) #5
  %0 = ptrtoint ptr %fw1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fw1, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @release_firmware(ptr noundef nonnull %1) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtw89_fw_h2c_cam(ptr noundef %rtwdev, ptr noundef %rtwvif, ptr noundef %rtwsta, ptr noundef %scan_mac_addr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef 92, i32 noundef 2592) #5
  %tobool2.not.i.i = icmp eq ptr %call.i.i.i.i, null
  br i1 %tobool2.not.i.i, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.21) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i, i32 0, i32 19
  %2 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %3, i32 32
  store ptr %add.ptr.i.i.i, ptr %data.i.i.i, align 4
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i, i32 0, i32 16
  %4 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tail.i.i.i, align 8
  %add.ptr1.i.i.i = getelementptr i8, ptr %5, i32 32
  store ptr %add.ptr1.i.i.i, ptr %tail.i.i.i, align 8
  %6 = call ptr @memset(ptr %add.ptr.i.i.i, i32 0, i32 60)
  %call1 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i.i.i, i32 noundef 60) #5
  %7 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data.i.i.i, align 4
  tail call void @rtw89_cam_fill_addr_cam_info(ptr noundef %rtwdev, ptr noundef %rtwvif, ptr noundef %rtwsta, ptr noundef %scan_mac_addr, ptr noundef %8) #5
  %9 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data.i.i.i, align 4
  %call3 = tail call i32 @rtw89_cam_fill_bssid_cam_info(ptr noundef %rtwdev, ptr noundef %rtwvif, ptr noundef %10) #5
  %call.i = tail call ptr @skb_push(ptr noundef nonnull %call.i.i.i.i, i32 noundef 8) #5
  %h2c_seq.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 6, i32 3
  %11 = ptrtoint ptr %h2c_seq.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %h2c_seq.i, align 32
  %conv129.i = zext i8 %12 to i32
  %shl130.i = shl nuw i32 %conv129.i, 24
  %or132.i = or i32 %shl130.i, 25
  %13 = tail call i32 @llvm.bswap.i32(i32 %or132.i) #5
  %14 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %call.i, align 4
  %15 = and i8 %12, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not.i = icmp eq i8 %15, 0
  %or165.i = select i1 %tobool.not.i, i32 49220, i32 32836
  %16 = tail call i32 @llvm.bswap.i32(i32 %or165.i) #5
  %hdr1.i = getelementptr inbounds %struct.fwcmd_hdr, ptr %call.i, i32 0, i32 1
  %17 = ptrtoint ptr %hdr1.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %hdr1.i, align 4
  %18 = ptrtoint ptr %h2c_seq.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %h2c_seq.i, align 32
  %inc.i = add i8 %19, 1
  store i8 %inc.i, ptr %h2c_seq.i, align 32
  %call4 = tail call i32 @rtw89_h2c_tx(ptr noundef %rtwdev, ptr noundef nonnull %call.i.i.i.i, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end.cleanup_crit_edge, label %do.end9

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %dev10 = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 1
  %20 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev10, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.24) #8
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %call.i.i.i.i, i32 noundef 1) #5
  br label %cleanup

cleanup:                                          ; preds = %do.end9, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -16, %do.end9 ], [ -12, %do.end ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw89_cam_fill_addr_cam_info(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw89_cam_fill_bssid_cam_info(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw89_h2c_tx(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtw89_fw_h2c_ba_cam(ptr noundef %rtwdev, i1 noundef zeroext %valid, i8 noundef zeroext %macid, ptr nocapture noundef readonly %params) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef 36, i32 noundef 2592) #5
  %tobool2.not.i.i = icmp eq ptr %call.i.i.i.i, null
  br i1 %tobool2.not.i.i, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.26) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i, i32 0, i32 19
  %2 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %3, i32 32
  store ptr %add.ptr.i.i.i, ptr %data.i.i.i, align 4
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i, i32 0, i32 16
  %4 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tail.i.i.i, align 8
  %add.ptr1.i.i.i = getelementptr i8, ptr %5, i32 32
  store ptr %add.ptr1.i.i.i, ptr %tail.i.i.i, align 8
  %6 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %6, i32 4)
  store i32 0, ptr %add.ptr.i.i.i, align 1
  %call1 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i.i.i, i32 noundef 4) #5
  %7 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data.i.i.i, align 4
  %conv = zext i8 %macid to i32
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 4
  %and.i.i = and i32 %10, -16711681
  %11 = shl nuw nsw i32 %conv, 16
  %or.i.i = or i32 %and.i.i, %11
  store i32 %or.i.i, ptr %8, align 4
  br i1 %valid, label %if.end4, label %if.end.end_crit_edge

if.end.end_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %end

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %12 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data.i.i.i, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  %or.i.i44 = or i32 %15, 16777216
  store i32 %or.i.i44, ptr %13, align 4
  %16 = load ptr, ptr %data.i.i.i, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %16, align 4
  %tid = getelementptr inbounds %struct.ieee80211_ampdu_params, ptr %params, i32 0, i32 2
  %19 = ptrtoint ptr %tid to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %tid, align 4
  %conv9 = zext i16 %20 to i32
  %and.i.i45 = and i32 %18, 268435455
  %21 = shl i32 %conv9, 28
  %or.i.i46 = or i32 %and.i.i45, %21
  store i32 %or.i.i46, ptr %16, align 4
  %buf_size = getelementptr inbounds %struct.ieee80211_ampdu_params, ptr %params, i32 0, i32 4
  %22 = ptrtoint ptr %buf_size to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %buf_size, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 64, i16 %23)
  %cmp = icmp ugt i16 %23, 64
  %24 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %data.i.i.i, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %25, align 4
  %and.i.i47 = and i32 %27, -3841
  %or.i.i48 = or i32 %and.i.i47, 1024
  %and.i.i47.sink = select i1 %cmp, i32 %or.i.i48, i32 %and.i.i47
  store i32 %and.i.i47.sink, ptr %25, align 4
  %28 = load ptr, ptr %data.i.i.i, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %28, align 4
  %and.i.i50 = and i32 %30, -33554433
  store i32 %and.i.i50, ptr %28, align 4
  %31 = load ptr, ptr %data.i.i.i, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %31, align 4
  %ssn = getelementptr inbounds %struct.ieee80211_ampdu_params, ptr %params, i32 0, i32 3
  %34 = ptrtoint ptr %ssn to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %ssn, align 2
  %conv18 = zext i16 %35 to i32
  %and.i.i53 = and i32 %33, -61696
  %36 = shl i32 %conv18, 20
  %37 = tail call i32 @llvm.bswap.i32(i32 %36) #5
  %or.i.i54 = or i32 %37, %and.i.i53
  %38 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %or.i.i54, ptr %31, align 4
  br label %end

end:                                              ; preds = %if.end4, %if.end.end_crit_edge
  %call.i = tail call ptr @skb_push(ptr noundef nonnull %call.i.i.i.i, i32 noundef 8) #5
  %h2c_seq.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 6, i32 3
  %39 = ptrtoint ptr %h2c_seq.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %h2c_seq.i, align 32
  %conv129.i = zext i8 %40 to i32
  %shl130.i = shl nuw i32 %conv129.i, 24
  %or132.i = or i32 %shl130.i, 49
  %41 = tail call i32 @llvm.bswap.i32(i32 %or132.i) #5
  %42 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %call.i, align 4
  %43 = and i8 %40, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool.not.i = icmp eq i8 %43, 0
  %or165.i = select i1 %tobool.not.i, i32 49164, i32 32780
  %44 = tail call i32 @llvm.bswap.i32(i32 %or165.i) #5
  %hdr1.i = getelementptr inbounds %struct.fwcmd_hdr, ptr %call.i, i32 0, i32 1
  %45 = ptrtoint ptr %hdr1.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %hdr1.i, align 4
  %46 = ptrtoint ptr %h2c_seq.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %h2c_seq.i, align 32
  %inc.i = add i8 %47, 1
  store i8 %inc.i, ptr %h2c_seq.i, align 32
  %call19 = tail call i32 @rtw89_h2c_tx(ptr noundef %rtwdev, ptr noundef nonnull %call.i.i.i.i, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %end.cleanup_crit_edge, label %do.end24

end.cleanup_crit_edge:                            ; preds = %end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end24:                                         ; preds = %end
  call void @__sanitizer_cov_trace_pc() #7
  %dev25 = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 1
  %48 = ptrtoint ptr %dev25 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev25, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %49, ptr noundef nonnull @.str.24) #8
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %call.i.i.i.i, i32 noundef 1) #5
  br label %cleanup

cleanup:                                          ; preds = %do.end24, %end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -16, %do.end24 ], [ -12, %do.end ], [ 0, %end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtw89_fw_h2c_fw_log(ptr noundef %rtwdev, i1 noundef zeroext %enable) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef 44, i32 noundef 2592) #5
  %tobool2.not.i.i = icmp eq ptr %call.i.i.i.i, null
  br i1 %tobool2.not.i.i, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.30) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i, i32 0, i32 19
  %2 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %3, i32 32
  store ptr %add.ptr.i.i.i, ptr %data.i.i.i, align 4
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i, i32 0, i32 16
  %4 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tail.i.i.i, align 8
  %add.ptr1.i.i.i = getelementptr i8, ptr %5, i32 32
  store ptr %add.ptr1.i.i.i, ptr %tail.i.i.i, align 8
  %6 = call ptr @memset(ptr %add.ptr.i.i.i, i32 0, i32 12)
  %cond = select i1 %enable, i32 6150, i32 0
  %call2 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i.i.i, i32 noundef 12) #5
  %7 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data.i.i.i, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 4
  %and.i.i = and i32 %10, 16777215
  %or.i.i = or i32 %and.i.i, 33554432
  store i32 %or.i.i, ptr %8, align 4
  %11 = load ptr, ptr %data.i.i.i, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  %and.i.i26 = and i32 %13, -16711681
  %or.i.i27 = or i32 %and.i.i26, 131072
  store i32 %or.i.i27, ptr %11, align 4
  %14 = load ptr, ptr %data.i.i.i, align 4
  %add.ptr.i = getelementptr i32, ptr %14, i32 1
  %15 = tail call i32 @llvm.bswap.i32(i32 %cond) #5
  %16 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %add.ptr.i, align 4
  %17 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data.i.i.i, align 4
  %add.ptr.i28 = getelementptr i32, ptr %18, i32 2
  %19 = ptrtoint ptr %add.ptr.i28 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %add.ptr.i28, align 4
  %call.i = tail call ptr @skb_push(ptr noundef nonnull %call.i.i.i.i, i32 noundef 8) #5
  %h2c_seq.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 6, i32 3
  %20 = ptrtoint ptr %h2c_seq.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %h2c_seq.i, align 32
  %conv129.i = zext i8 %21 to i32
  %shl130.i = shl nuw i32 %conv129.i, 24
  %or132.i = or i32 %shl130.i, 1
  %22 = tail call i32 @llvm.bswap.i32(i32 %or132.i) #5
  %23 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %call.i, align 4
  %24 = and i8 %21, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool.not.i = icmp eq i8 %24, 0
  %or165.i = select i1 %tobool.not.i, i32 16404, i32 20
  %25 = tail call i32 @llvm.bswap.i32(i32 %or165.i) #5
  %hdr1.i = getelementptr inbounds %struct.fwcmd_hdr, ptr %call.i, i32 0, i32 1
  %26 = ptrtoint ptr %hdr1.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %hdr1.i, align 4
  %27 = ptrtoint ptr %h2c_seq.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %h2c_seq.i, align 32
  %inc.i = add i8 %28, 1
  store i8 %inc.i, ptr %h2c_seq.i, align 32
  %call6 = tail call i32 @rtw89_h2c_tx(ptr noundef %rtwdev, ptr noundef nonnull %call.i.i.i.i, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end.cleanup_crit_edge, label %do.end11

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end11:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %dev12 = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 1
  %29 = ptrtoint ptr %dev12 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev12, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.24) #8
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %call.i.i.i.i, i32 noundef 1) #5
  br label %cleanup

cleanup:                                          ; preds = %do.end11, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -16, %do.end11 ], [ -12, %do.end ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtw89_fw_h2c_general_pkt(ptr noundef %rtwdev, i8 noundef zeroext %macid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef 38, i32 noundef 2592) #5
  %tobool2.not.i.i = icmp eq ptr %call.i.i.i.i, null
  br i1 %tobool2.not.i.i, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.21) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i, i32 0, i32 19
  %2 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %3, i32 32
  store ptr %add.ptr.i.i.i, ptr %data.i.i.i, align 4
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i, i32 0, i32 16
  %4 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tail.i.i.i, align 8
  %add.ptr1.i.i.i = getelementptr i8, ptr %5, i32 32
  store ptr %add.ptr1.i.i.i, ptr %tail.i.i.i, align 8
  %6 = call ptr @memset(ptr %add.ptr.i.i.i, i32 0, i32 6)
  %call1 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i.i.i, i32 noundef 6) #5
  %7 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data.i.i.i, align 4
  %conv = zext i8 %macid to i32
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 4
  %and.i.i = and i32 %10, 16777215
  %11 = shl nuw i32 %conv, 24
  %or.i.i = or i32 %and.i.i, %11
  store i32 %or.i.i, ptr %8, align 4
  %12 = load ptr, ptr %data.i.i.i, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %12, align 4
  %or.i.i28 = or i32 %14, 16711680
  store i32 %or.i.i28, ptr %12, align 4
  %15 = load ptr, ptr %data.i.i.i, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 4
  %or.i.i29 = or i32 %17, 65280
  store i32 %or.i.i29, ptr %15, align 4
  %18 = load ptr, ptr %data.i.i.i, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %18, align 4
  %or.i.i30 = or i32 %20, 255
  store i32 %or.i.i30, ptr %18, align 4
  %21 = load ptr, ptr %data.i.i.i, align 4
  %add.ptr.i = getelementptr i32, ptr %21, i32 1
  %22 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %add.ptr.i, align 4
  %or.i.i31 = or i32 %23, -16777216
  store i32 %or.i.i31, ptr %add.ptr.i, align 4
  %24 = load ptr, ptr %data.i.i.i, align 4
  %add.ptr.i32 = getelementptr i32, ptr %24, i32 1
  %25 = ptrtoint ptr %add.ptr.i32 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %add.ptr.i32, align 4
  %or.i.i33 = or i32 %26, 16711680
  store i32 %or.i.i33, ptr %add.ptr.i32, align 4
  %call.i = tail call ptr @skb_push(ptr noundef nonnull %call.i.i.i.i, i32 noundef 8) #5
  %h2c_seq.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 6, i32 3
  %27 = ptrtoint ptr %h2c_seq.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %h2c_seq.i, align 32
  %conv129.i = zext i8 %28 to i32
  %shl130.i = shl nuw i32 %conv129.i, 24
  %or132.i = or i32 %shl130.i, 257
  %29 = tail call i32 @llvm.bswap.i32(i32 %or132.i) #5
  %30 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %call.i, align 4
  %31 = and i8 %28, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool.not.i = icmp eq i8 %31, 0
  %or165.i = select i1 %tobool.not.i, i32 49166, i32 32782
  %32 = tail call i32 @llvm.bswap.i32(i32 %or165.i) #5
  %hdr1.i = getelementptr inbounds %struct.fwcmd_hdr, ptr %call.i, i32 0, i32 1
  %33 = ptrtoint ptr %hdr1.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %hdr1.i, align 4
  %34 = ptrtoint ptr %h2c_seq.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %h2c_seq.i, align 32
  %inc.i = add i8 %35, 1
  store i8 %inc.i, ptr %h2c_seq.i, align 32
  %call7 = tail call i32 @rtw89_h2c_tx(ptr noundef %rtwdev, ptr noundef nonnull %call.i.i.i.i, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end.cleanup_crit_edge, label %do.end12

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end12:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %dev13 = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 1
  %36 = ptrtoint ptr %dev13 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev13, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %37, ptr noundef nonnull @.str.24) #8
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %call.i.i.i.i, i32 noundef 1) #5
  br label %cleanup

cleanup:                                          ; preds = %do.end12, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -16, %do.end12 ], [ -12, %do.end ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtw89_fw_h2c_lps_parm(ptr noundef %rtwdev, ptr nocapture noundef readonly %lps_param) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef 40, i32 noundef 2592) #5
  %tobool2.not.i.i = icmp eq ptr %call.i.i.i.i, null
  br i1 %tobool2.not.i.i, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.21) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i, i32 0, i32 19
  %2 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %3, i32 32
  store ptr %add.ptr.i.i.i, ptr %data.i.i.i, align 4
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i, i32 0, i32 16
  %4 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tail.i.i.i, align 8
  %add.ptr1.i.i.i = getelementptr i8, ptr %5, i32 32
  store ptr %add.ptr1.i.i.i, ptr %tail.i.i.i, align 8
  %6 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %6, i32 8)
  store i64 0, ptr %add.ptr.i.i.i, align 1
  %call1 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i.i.i, i32 noundef 8) #5
  %7 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data.i.i.i, align 4
  %9 = ptrtoint ptr %lps_param to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %lps_param, align 1
  %conv = zext i8 %10 to i32
  %11 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %8, align 4
  %and.i.i = and i32 %12, 16777215
  %13 = shl nuw i32 %conv, 24
  %or.i.i = or i32 %and.i.i, %13
  store i32 %or.i.i, ptr %8, align 4
  %14 = load ptr, ptr %data.i.i.i, align 4
  %psmode = getelementptr inbounds %struct.rtw89_lps_parm, ptr %lps_param, i32 0, i32 1
  %15 = ptrtoint ptr %psmode to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %psmode, align 1
  %conv3 = zext i8 %16 to i32
  %17 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %14, align 4
  %and.i.i40 = and i32 %18, -16711681
  %19 = shl nuw nsw i32 %conv3, 16
  %or.i.i41 = or i32 %and.i.i40, %19
  store i32 %or.i.i41, ptr %14, align 4
  %20 = load ptr, ptr %data.i.i.i, align 4
  %lastrpwm = getelementptr inbounds %struct.rtw89_lps_parm, ptr %lps_param, i32 0, i32 2
  %21 = ptrtoint ptr %lastrpwm to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %lastrpwm, align 1
  %conv5 = zext i8 %22 to i32
  %add.ptr.i = getelementptr i32, ptr %20, i32 1
  %23 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %add.ptr.i, align 4
  %and.i.i42 = and i32 %24, -16711681
  %25 = shl nuw nsw i32 %conv5, 16
  %or.i.i43 = or i32 %and.i.i42, %25
  store i32 %or.i.i43, ptr %add.ptr.i, align 4
  %26 = load ptr, ptr %data.i.i.i, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %26, align 4
  %and.i.i44 = and i32 %28, -3841
  %or.i.i45 = or i32 %and.i.i44, 256
  store i32 %or.i.i45, ptr %26, align 4
  %29 = load ptr, ptr %data.i.i.i, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %29, align 4
  %and.i.i46 = and i32 %31, -61441
  %or.i.i47 = or i32 %and.i.i46, 4096
  store i32 %or.i.i47, ptr %29, align 4
  %32 = load ptr, ptr %data.i.i.i, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %32, align 4
  %and.i.i48 = and i32 %34, -256
  %or.i.i49 = or i32 %and.i.i48, 1
  store i32 %or.i.i49, ptr %32, align 4
  %35 = load ptr, ptr %data.i.i.i, align 4
  %add.ptr.i50 = getelementptr i32, ptr %35, i32 1
  %36 = ptrtoint ptr %add.ptr.i50 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %add.ptr.i50, align 4
  %and.i.i51 = and i32 %37, -16777217
  store i32 %and.i.i51, ptr %add.ptr.i50, align 4
  %38 = load ptr, ptr %data.i.i.i, align 4
  %add.ptr.i52 = getelementptr i32, ptr %38, i32 1
  %39 = ptrtoint ptr %add.ptr.i52 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %add.ptr.i52, align 4
  %and.i.i53 = and i32 %40, -33554433
  store i32 %and.i.i53, ptr %add.ptr.i52, align 4
  %41 = load ptr, ptr %data.i.i.i, align 4
  %add.ptr.i54 = getelementptr i32, ptr %41, i32 1
  %42 = ptrtoint ptr %add.ptr.i54 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %add.ptr.i54, align 4
  %and.i.i55 = and i32 %43, -67108865
  store i32 %and.i.i55, ptr %add.ptr.i54, align 4
  %44 = load ptr, ptr %data.i.i.i, align 4
  %add.ptr.i56 = getelementptr i32, ptr %44, i32 1
  %45 = ptrtoint ptr %add.ptr.i56 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %add.ptr.i56, align 4
  %and.i.i57 = and i32 %46, -134217729
  store i32 %and.i.i57, ptr %add.ptr.i56, align 4
  %call.i = tail call ptr @skb_push(ptr noundef nonnull %call.i.i.i.i, i32 noundef 8) #5
  %h2c_seq.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 6, i32 3
  %47 = ptrtoint ptr %h2c_seq.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %h2c_seq.i, align 32
  %conv129.i = zext i8 %48 to i32
  %shl130.i = shl nuw i32 %conv129.i, 24
  %or132.i = or i32 %shl130.i, 9
  %49 = tail call i32 @llvm.bswap.i32(i32 %or132.i) #5
  %50 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %call.i, align 4
  %51 = and i8 %48, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool.not.i = icmp eq i8 %51, 0
  %or165.i = select i1 %tobool.not.i, i32 49168, i32 32784
  %52 = tail call i32 @llvm.bswap.i32(i32 %or165.i) #5
  %hdr1.i = getelementptr inbounds %struct.fwcmd_hdr, ptr %call.i, i32 0, i32 1
  %53 = ptrtoint ptr %hdr1.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %hdr1.i, align 4
  %54 = ptrtoint ptr %h2c_seq.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %h2c_seq.i, align 32
  %inc.i = add i8 %55, 1
  store i8 %inc.i, ptr %h2c_seq.i, align 32
  %call13 = tail call i32 @rtw89_h2c_tx(ptr noundef %rtwdev, ptr noundef nonnull %call.i.i.i.i, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %do.end18

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end18:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %dev19 = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 1
  %56 = ptrtoint ptr %dev19 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dev19, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %57, ptr noundef nonnull @.str.24) #8
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %call.i.i.i.i, i32 noundef 1) #5
  br label %cleanup

cleanup:                                          ; preds = %do.end18, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -16, %do.end18 ], [ -12, %do.end ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtw89_fw_h2c_default_cmac_tbl(ptr noundef %rtwdev, i8 noundef zeroext %macid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %antenna_tx = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 4, i32 9
  %0 = ptrtoint ptr %antenna_tx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %antenna_tx, align 4
  %call.i.i.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef 100, i32 noundef 2592) #5
  %tobool2.not.i.i = icmp eq ptr %call.i.i.i.i, null
  br i1 %tobool2.not.i.i, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.21) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i, i32 0, i32 19
  %4 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %5, i32 32
  store ptr %add.ptr.i.i.i, ptr %data.i.i.i, align 4
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i, i32 0, i32 16
  %6 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tail.i.i.i, align 8
  %add.ptr1.i.i.i = getelementptr i8, ptr %7, i32 32
  store ptr %add.ptr1.i.i.i, ptr %tail.i.i.i, align 8
  %8 = call ptr @memset(ptr %add.ptr.i.i.i, i32 0, i32 68)
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp = icmp eq i32 %1, 3
  %call8 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i.i.i, i32 noundef 68) #5
  %9 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data.i.i.i, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 4
  %conv9 = zext i8 %macid to i32
  %and.i.i = and i32 %12, -2130706433
  %13 = shl nuw i32 %conv9, 24
  %14 = and i32 %13, 2130706432
  %or.i.i = or i32 %and.i.i, %14
  store i32 %or.i.i, ptr %10, align 4
  %15 = load ptr, ptr %data.i.i.i, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 4
  %or.i.i61 = or i32 %17, -2147483648
  store i32 %or.i.i61, ptr %15, align 4
  %18 = load ptr, ptr %data.i.i.i, align 4
  %add.ptr.i = getelementptr i32, ptr %18, i32 5
  %19 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %add.ptr.i, align 4
  %and.i.i62 = and i32 %20, -917505
  store i32 %and.i.i62, ptr %add.ptr.i, align 4
  %add.ptr1.i = getelementptr i32, ptr %18, i32 13
  %21 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %add.ptr1.i, align 4
  %or.i.i63 = or i32 %22, 917504
  store i32 %or.i.i63, ptr %add.ptr1.i, align 4
  %23 = load ptr, ptr %data.i.i.i, align 4
  %add.ptr.i64 = getelementptr i32, ptr %23, i32 6
  %24 = ptrtoint ptr %add.ptr.i64 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %add.ptr.i64, align 4
  %and.i.i67 = and i32 %25, -3841
  %phi.cast60 = shl i32 %1, 8
  %phi.cast60.op = and i32 %phi.cast60, 3840
  %26 = select i1 %tobool.not, i32 512, i32 %phi.cast60.op
  %or.i.i68 = or i32 %and.i.i67, %26
  store i32 %or.i.i68, ptr %add.ptr.i64, align 4
  %add.ptr1.i69 = getelementptr i32, ptr %23, i32 14
  %27 = ptrtoint ptr %add.ptr1.i69 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %add.ptr1.i69, align 4
  %or.i12.i = or i32 %28, 3840
  store i32 %or.i12.i, ptr %add.ptr1.i69, align 4
  %29 = load ptr, ptr %data.i.i.i, align 4
  %add.ptr.i70 = getelementptr i32, ptr %29, i32 6
  %30 = ptrtoint ptr %add.ptr.i70 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %add.ptr.i70, align 4
  %and.i.i71 = and i32 %31, -12289
  store i32 %and.i.i71, ptr %add.ptr.i70, align 4
  %add.ptr1.i72 = getelementptr i32, ptr %29, i32 14
  %32 = ptrtoint ptr %add.ptr1.i72 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %add.ptr1.i72, align 4
  %or.i.i73 = or i32 %33, 12288
  store i32 %or.i.i73, ptr %add.ptr1.i72, align 4
  %34 = load ptr, ptr %data.i.i.i, align 4
  %add.ptr.i74 = getelementptr i32, ptr %34, i32 6
  %35 = ptrtoint ptr %add.ptr.i74 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %add.ptr.i74, align 4
  %and.i.i75 = and i32 %36, -49153
  %37 = select i1 %cmp, i32 16384, i32 0
  %or.i.i76 = or i32 %and.i.i75, %37
  store i32 %or.i.i76, ptr %add.ptr.i74, align 4
  %add.ptr1.i77 = getelementptr i32, ptr %34, i32 14
  %38 = ptrtoint ptr %add.ptr1.i77 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %add.ptr1.i77, align 4
  %or.i12.i78 = or i32 %39, 49152
  store i32 %or.i12.i78, ptr %add.ptr1.i77, align 4
  %40 = load ptr, ptr %data.i.i.i, align 4
  %add.ptr.i79 = getelementptr i32, ptr %40, i32 6
  %41 = ptrtoint ptr %add.ptr.i79 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %add.ptr.i79, align 4
  %and.i.i80 = and i32 %42, -4
  store i32 %and.i.i80, ptr %add.ptr.i79, align 4
  %add.ptr1.i81 = getelementptr i32, ptr %40, i32 14
  %43 = ptrtoint ptr %add.ptr1.i81 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %add.ptr1.i81, align 4
  %or.i.i82 = or i32 %44, 3
  store i32 %or.i.i82, ptr %add.ptr1.i81, align 4
  %45 = load ptr, ptr %data.i.i.i, align 4
  %add.ptr.i83 = getelementptr i32, ptr %45, i32 6
  %46 = ptrtoint ptr %add.ptr.i83 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %add.ptr.i83, align 4
  %and.i.i84 = and i32 %47, -13
  store i32 %and.i.i84, ptr %add.ptr.i83, align 4
  %add.ptr1.i85 = getelementptr i32, ptr %45, i32 14
  %48 = ptrtoint ptr %add.ptr1.i85 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %add.ptr1.i85, align 4
  %or.i.i86 = or i32 %49, 12
  store i32 %or.i.i86, ptr %add.ptr1.i85, align 4
  %50 = load ptr, ptr %data.i.i.i, align 4
  %add.ptr.i87 = getelementptr i32, ptr %50, i32 6
  %51 = ptrtoint ptr %add.ptr.i87 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %add.ptr.i87, align 4
  %and.i.i88 = and i32 %52, -17
  store i32 %and.i.i88, ptr %add.ptr.i87, align 4
  %add.ptr1.i89 = getelementptr i32, ptr %50, i32 14
  %53 = ptrtoint ptr %add.ptr1.i89 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %add.ptr1.i89, align 4
  %or.i.i90 = or i32 %54, 16
  store i32 %or.i.i90, ptr %add.ptr1.i89, align 4
  %55 = load ptr, ptr %data.i.i.i, align 4
  %add.ptr.i91 = getelementptr i32, ptr %55, i32 6
  %56 = ptrtoint ptr %add.ptr.i91 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %add.ptr.i91, align 4
  %and.i.i92 = and i32 %57, -33
  store i32 %and.i.i92, ptr %add.ptr.i91, align 4
  %add.ptr1.i93 = getelementptr i32, ptr %55, i32 14
  %58 = ptrtoint ptr %add.ptr1.i93 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %add.ptr1.i93, align 4
  %or.i.i94 = or i32 %59, 32
  store i32 %or.i.i94, ptr %add.ptr1.i93, align 4
  %60 = load ptr, ptr %data.i.i.i, align 4
  %add.ptr.i95 = getelementptr i32, ptr %60, i32 6
  %61 = ptrtoint ptr %add.ptr.i95 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %add.ptr.i95, align 4
  %and.i.i96 = and i32 %62, -65
  store i32 %and.i.i96, ptr %add.ptr.i95, align 4
  %add.ptr1.i97 = getelementptr i32, ptr %60, i32 14
  %63 = ptrtoint ptr %add.ptr1.i97 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %add.ptr1.i97, align 4
  %or.i.i98 = or i32 %64, 64
  store i32 %or.i.i98, ptr %add.ptr1.i97, align 4
  %65 = load ptr, ptr %data.i.i.i, align 4
  %add.ptr.i99 = getelementptr i32, ptr %65, i32 6
  %66 = ptrtoint ptr %add.ptr.i99 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %add.ptr.i99, align 4
  %and.i.i100 = and i32 %67, -129
  store i32 %and.i.i100, ptr %add.ptr.i99, align 4
  %add.ptr1.i101 = getelementptr i32, ptr %65, i32 14
  %68 = ptrtoint ptr %add.ptr1.i101 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %add.ptr1.i101, align 4
  %or.i.i102 = or i32 %69, 128
  store i32 %or.i.i102, ptr %add.ptr1.i101, align 4
  %70 = load ptr, ptr %data.i.i.i, align 4
  %add.ptr.i103 = getelementptr i32, ptr %70, i32 7
  %71 = ptrtoint ptr %add.ptr.i103 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %add.ptr.i103, align 4
  %and.i.i104 = and i32 %72, -3073
  store i32 %and.i.i104, ptr %add.ptr.i103, align 4
  %add.ptr1.i105 = getelementptr i32, ptr %70, i32 15
  %73 = ptrtoint ptr %add.ptr1.i105 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %add.ptr1.i105, align 4
  %or.i.i106 = or i32 %74, 3072
  store i32 %or.i.i106, ptr %add.ptr1.i105, align 4
  %75 = load ptr, ptr %data.i.i.i, align 4
  %add.ptr.i107 = getelementptr i32, ptr %75, i32 7
  %76 = ptrtoint ptr %add.ptr.i107 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %add.ptr.i107, align 4
  %and.i.i108 = and i32 %77, -16
  store i32 %and.i.i108, ptr %add.ptr.i107, align 4
  %add.ptr1.i109 = getelementptr i32, ptr %75, i32 15
  %78 = ptrtoint ptr %add.ptr1.i109 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %add.ptr1.i109, align 4
  %or.i.i110 = or i32 %79, 15
  store i32 %or.i.i110, ptr %add.ptr1.i109, align 4
  %call.i = tail call ptr @skb_push(ptr noundef nonnull %call.i.i.i.i, i32 noundef 8) #5
  %h2c_seq.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 6, i32 3
  %80 = ptrtoint ptr %h2c_seq.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %h2c_seq.i, align 32
  %conv129.i = zext i8 %81 to i32
  %shl130.i = shl nuw i32 %conv129.i, 24
  %or132.i = or i32 %shl130.i, 533
  %82 = tail call i32 @llvm.bswap.i32(i32 %or132.i) #5
  %83 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %82, ptr %call.i, align 4
  %84 = and i8 %81, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %84)
  %tobool.not.i = icmp eq i8 %84, 0
  %or165.i = select i1 %tobool.not.i, i32 49228, i32 32844
  %85 = tail call i32 @llvm.bswap.i32(i32 %or165.i) #5
  %hdr1.i = getelementptr inbounds %struct.fwcmd_hdr, ptr %call.i, i32 0, i32 1
  %86 = ptrtoint ptr %hdr1.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %85, ptr %hdr1.i, align 4
  %87 = ptrtoint ptr %h2c_seq.i to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %h2c_seq.i, align 32
  %inc.i = add i8 %88, 1
  store i8 %inc.i, ptr %h2c_seq.i, align 32
  %call25 = tail call i32 @rtw89_h2c_tx(ptr noundef %rtwdev, ptr noundef nonnull %call.i.i.i.i, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end.cleanup_crit_edge, label %do.end30

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end30:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %dev31 = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 1
  %89 = ptrtoint ptr %dev31 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %dev31, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %90, ptr noundef nonnull @.str.24) #8
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %call.i.i.i.i, i32 noundef 1) #5
  br label %cleanup

cleanup:                                          ; preds = %do.end30, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -16, %do.end30 ], [ -12, %do.end ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtw89_fw_h2c_assoc_cmac_tbl(ptr noundef %rtwdev, ptr nocapture noundef readonly %vif, ptr nocapture noundef readonly %sta) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv2 = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 19
  %he_cap.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 6
  %0 = ptrtoint ptr %he_cap.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %he_cap.i, align 4, !range !332
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i = icmp eq i8 %1, 0
  br i1 %tobool.not.i, label %entry.__get_sta_he_pkt_padding.exit_crit_edge, label %cond.false134.i

entry.__get_sta_he_pkt_padding.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %__get_sta_he_pkt_padding.exit

cond.false134.i:                                  ; preds = %entry
  %rx_nss.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 13
  %2 = ptrtoint ptr %rx_nss.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %rx_nss.i, align 1
  %tx_nss.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 4, i32 11
  %4 = ptrtoint ptr %tx_nss.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %tx_nss.i, align 4
  %6 = tail call i8 @llvm.umin.i8(i8 %3, i8 %5) #5
  %ppe_thres.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 6, i32 3
  %7 = ptrtoint ptr %ppe_thres.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %ppe_thres.i, align 2
  %9 = lshr i8 %8, 3
  %10 = and i8 %9, 15
  %conv135.i = zext i8 %10 to i32
  %call.i.i = tail call i32 @__sw_hweight8(i32 noundef %conv135.i) #5
  %11 = trunc i32 %call.i.i to i8
  %12 = mul i8 %6, 6
  %13 = add i8 %12, -6
  %14 = mul i8 %13, %11
  %conv144.i = add i8 %14, 7
  %and150.i = and i32 %conv135.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and150.i)
  %tobool151.not.i = icmp eq i32 %and150.i, 0
  br i1 %tobool151.not.i, label %cond.false134.i.for.inc197.i_crit_edge, label %if.end154.i

cond.false134.i.for.inc197.i_crit_edge:           ; preds = %cond.false134.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc197.i

if.end154.i:                                      ; preds = %cond.false134.i
  call void @__sanitizer_cov_trace_pc() #7
  %15 = lshr i8 %conv144.i, 3
  %and159.i = and i8 %conv144.i, 7
  %add162.i = add i8 %14, 13
  %idxprom.i = zext i8 %15 to i32
  %arrayidx166.i = getelementptr %struct.ieee80211_sta, ptr %sta, i32 0, i32 6, i32 3, i32 %idxprom.i
  %16 = ptrtoint ptr %arrayidx166.i to i32
  call void @__asan_loadN_noabort(i32 %16, i32 2)
  %17 = load i16, ptr %arrayidx166.i, align 1
  %18 = tail call i16 @llvm.bswap.i16(i16 %17) #5
  %conv167.i = zext i16 %18 to i32
  %conv168.i = zext i8 %and159.i to i32
  %shr169.i = lshr i32 %conv167.i, %conv168.i
  %conv171.i = and i32 %shr169.i, 7
  %add173.i = add nuw nsw i8 %and159.i, 3
  %conv176.i = zext i8 %add173.i to i16
  %shr177.i = lshr i16 %18, %conv176.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %conv171.i)
  %cmp181.not.i = icmp ne i32 %conv171.i, 7
  %conv179249.i = and i16 %shr177.i, 7
  call void @__sanitizer_cov_trace_const_cmp2(i16 7, i16 %conv179249.i)
  %cmp184.i = icmp eq i16 %conv179249.i, 7
  %or.cond.i = select i1 %cmp181.not.i, i1 %cmp184.i, i1 false
  %not.cmp184.i = xor i1 %cmp184.i, true
  %..i = zext i1 %not.cmp184.i to i8
  %spec.select.i = select i1 %or.cond.i, i8 2, i8 %..i
  br label %for.inc197.i

for.inc197.i:                                     ; preds = %if.end154.i, %cond.false134.i.for.inc197.i_crit_edge
  %.sink.i = phi i8 [ 1, %cond.false134.i.for.inc197.i_crit_edge ], [ %spec.select.i, %if.end154.i ]
  %n.1.i = phi i8 [ %conv144.i, %cond.false134.i.for.inc197.i_crit_edge ], [ %add162.i, %if.end154.i ]
  %and150.1.i = and i32 %conv135.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and150.1.i)
  %tobool151.not.1.i = icmp eq i32 %and150.1.i, 0
  br i1 %tobool151.not.1.i, label %for.inc197.i.for.inc197.1.i_crit_edge, label %if.end154.1.i

for.inc197.i.for.inc197.1.i_crit_edge:            ; preds = %for.inc197.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc197.1.i

if.end154.1.i:                                    ; preds = %for.inc197.i
  call void @__sanitizer_cov_trace_pc() #7
  %19 = lshr i8 %n.1.i, 3
  %and159.1.i = and i8 %n.1.i, 7
  %add162.1.i = add i8 %n.1.i, 6
  %idxprom.1.i = zext i8 %19 to i32
  %arrayidx166.1.i = getelementptr %struct.ieee80211_sta, ptr %sta, i32 0, i32 6, i32 3, i32 %idxprom.1.i
  %20 = ptrtoint ptr %arrayidx166.1.i to i32
  call void @__asan_loadN_noabort(i32 %20, i32 2)
  %21 = load i16, ptr %arrayidx166.1.i, align 1
  %22 = tail call i16 @llvm.bswap.i16(i16 %21) #5
  %conv167.1.i = zext i16 %22 to i32
  %conv168.1.i = zext i8 %and159.1.i to i32
  %shr169.1.i = lshr i32 %conv167.1.i, %conv168.1.i
  %conv171.1.i = and i32 %shr169.1.i, 7
  %add173.1.i = add nuw nsw i8 %and159.1.i, 3
  %conv176.1.i = zext i8 %add173.1.i to i16
  %shr177.1.i = lshr i16 %22, %conv176.1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %conv171.1.i)
  %cmp181.not.1.i = icmp ne i32 %conv171.1.i, 7
  %conv179249.1.i = and i16 %shr177.1.i, 7
  call void @__sanitizer_cov_trace_const_cmp2(i16 7, i16 %conv179249.1.i)
  %cmp184.1.i = icmp eq i16 %conv179249.1.i, 7
  %or.cond.1.i = select i1 %cmp181.not.1.i, i1 %cmp184.1.i, i1 false
  %not.cmp184.1.i = xor i1 %cmp184.1.i, true
  %spec.select = zext i1 %not.cmp184.1.i to i8
  %spec.select145 = select i1 %or.cond.1.i, i8 2, i8 %spec.select
  br label %for.inc197.1.i

for.inc197.1.i:                                   ; preds = %if.end154.1.i, %for.inc197.i.for.inc197.1.i_crit_edge
  %pads.sroa.7.0 = phi i8 [ 1, %for.inc197.i.for.inc197.1.i_crit_edge ], [ %spec.select145, %if.end154.1.i ]
  %n.1.1.i = phi i8 [ %n.1.i, %for.inc197.i.for.inc197.1.i_crit_edge ], [ %add162.1.i, %if.end154.1.i ]
  %and150.2.i = and i32 %conv135.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and150.2.i)
  %tobool151.not.2.i = icmp eq i32 %and150.2.i, 0
  br i1 %tobool151.not.2.i, label %for.inc197.1.i.__get_sta_he_pkt_padding.exit_crit_edge, label %if.end154.2.i

for.inc197.1.i.__get_sta_he_pkt_padding.exit_crit_edge: ; preds = %for.inc197.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %__get_sta_he_pkt_padding.exit

if.end154.2.i:                                    ; preds = %for.inc197.1.i
  call void @__sanitizer_cov_trace_pc() #7
  %23 = lshr i8 %n.1.1.i, 3
  %and159.2.i = and i8 %n.1.1.i, 7
  %idxprom.2.i = zext i8 %23 to i32
  %arrayidx166.2.i = getelementptr %struct.ieee80211_sta, ptr %sta, i32 0, i32 6, i32 3, i32 %idxprom.2.i
  %24 = ptrtoint ptr %arrayidx166.2.i to i32
  call void @__asan_loadN_noabort(i32 %24, i32 2)
  %25 = load i16, ptr %arrayidx166.2.i, align 1
  %26 = tail call i16 @llvm.bswap.i16(i16 %25) #5
  %conv167.2.i = zext i16 %26 to i32
  %conv168.2.i = zext i8 %and159.2.i to i32
  %shr169.2.i = lshr i32 %conv167.2.i, %conv168.2.i
  %conv171.2.i = and i32 %shr169.2.i, 7
  %add173.2.i = add nuw nsw i8 %and159.2.i, 3
  %conv176.2.i = zext i8 %add173.2.i to i16
  %shr177.2.i = lshr i16 %26, %conv176.2.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %conv171.2.i)
  %cmp181.not.2.i = icmp ne i32 %conv171.2.i, 7
  %conv179249.2.i = and i16 %shr177.2.i, 7
  call void @__sanitizer_cov_trace_const_cmp2(i16 7, i16 %conv179249.2.i)
  %cmp184.2.i = icmp eq i16 %conv179249.2.i, 7
  %or.cond.2.i = select i1 %cmp181.not.2.i, i1 %cmp184.2.i, i1 false
  %.op = select i1 %cmp184.2.i, i32 0, i32 64
  %phi.bo = select i1 %or.cond.2.i, i32 128, i32 %.op
  br label %__get_sta_he_pkt_padding.exit

__get_sta_he_pkt_padding.exit:                    ; preds = %if.end154.2.i, %for.inc197.1.i.__get_sta_he_pkt_padding.exit_crit_edge, %entry.__get_sta_he_pkt_padding.exit_crit_edge
  %pads.sroa.0.0 = phi i8 [ 0, %entry.__get_sta_he_pkt_padding.exit_crit_edge ], [ %.sink.i, %for.inc197.1.i.__get_sta_he_pkt_padding.exit_crit_edge ], [ %.sink.i, %if.end154.2.i ]
  %pads.sroa.7.1 = phi i8 [ 0, %entry.__get_sta_he_pkt_padding.exit_crit_edge ], [ %pads.sroa.7.0, %for.inc197.1.i.__get_sta_he_pkt_padding.exit_crit_edge ], [ %pads.sroa.7.0, %if.end154.2.i ]
  %pads.sroa.13.0 = phi i32 [ 0, %entry.__get_sta_he_pkt_padding.exit_crit_edge ], [ 64, %for.inc197.1.i.__get_sta_he_pkt_padding.exit_crit_edge ], [ %phi.bo, %if.end154.2.i ]
  %call.i.i.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef 100, i32 noundef 2592) #5
  %tobool2.not.i.i = icmp eq ptr %call.i.i.i.i, null
  br i1 %tobool2.not.i.i, label %do.end, label %if.end

do.end:                                           ; preds = %__get_sta_he_pkt_padding.exit
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 1
  %27 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.21) #8
  br label %cleanup

if.end:                                           ; preds = %__get_sta_he_pkt_padding.exit
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i, i32 0, i32 19
  %29 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %data.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %30, i32 32
  store ptr %add.ptr.i.i.i, ptr %data.i.i.i, align 4
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i, i32 0, i32 16
  %31 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %tail.i.i.i, align 8
  %add.ptr1.i.i.i = getelementptr i8, ptr %32, i32 32
  store ptr %add.ptr1.i.i.i, ptr %tail.i.i.i, align 8
  %33 = call ptr @memset(ptr %add.ptr.i.i.i, i32 0, i32 68)
  %call6 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i.i.i, i32 noundef 68) #5
  %34 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %data.i.i.i, align 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %35, align 4
  %drv_priv = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 29
  %38 = ptrtoint ptr %drv_priv to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %drv_priv, align 8
  %conv = zext i8 %39 to i32
  %and.i.i = and i32 %37, -2130706433
  %40 = shl nuw i32 %conv, 24
  %41 = and i32 %40, 2130706432
  %or.i.i = or i32 %41, %and.i.i
  store i32 %or.i.i, ptr %35, align 4
  %42 = load ptr, ptr %data.i.i.i, align 4
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %42, align 4
  %or.i.i77 = or i32 %44, -2147483648
  store i32 %or.i.i77, ptr %42, align 4
  %45 = load ptr, ptr %data.i.i.i, align 4
  %add.ptr.i = getelementptr i32, ptr %45, i32 1
  %46 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %add.ptr.i, align 4
  %or.i.i78 = or i32 %47, 2
  store i32 %or.i.i78, ptr %add.ptr.i, align 4
  %add.ptr1.i = getelementptr i32, ptr %45, i32 9
  %48 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %add.ptr1.i, align 4
  %or.i5.i = or i32 %49, 2
  store i32 %or.i5.i, ptr %add.ptr1.i, align 4
  %50 = load ptr, ptr %data.i.i.i, align 4
  %add.ptr.i79 = getelementptr i32, ptr %50, i32 1
  %51 = ptrtoint ptr %add.ptr.i79 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %add.ptr.i79, align 4
  %or.i.i80 = or i32 %52, 4
  store i32 %or.i.i80, ptr %add.ptr.i79, align 4
  %add.ptr1.i81 = getelementptr i32, ptr %50, i32 9
  %53 = ptrtoint ptr %add.ptr1.i81 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %add.ptr1.i81, align 4
  %or.i5.i82 = or i32 %54, 4
  store i32 %or.i5.i82, ptr %add.ptr1.i81, align 4
  %current_band_type = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 4, i32 7
  %55 = ptrtoint ptr %current_band_type to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %current_band_type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %cmp = icmp eq i8 %56, 0
  %57 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %data.i.i.i, align 4
  %add.ptr.i83 = getelementptr i32, ptr %58, i32 2
  %59 = ptrtoint ptr %add.ptr.i83 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %add.ptr.i83, align 4
  %and.i.i84 = and i32 %60, -241
  %or.i.i88 = or i32 %and.i.i84, 64
  %or.i.i88.sink = select i1 %cmp, i32 %and.i.i84, i32 %or.i.i88
  store i32 %or.i.i88.sink, ptr %add.ptr.i83, align 4
  %add.ptr1.i89 = getelementptr i32, ptr %58, i32 10
  %61 = ptrtoint ptr %add.ptr1.i89 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %add.ptr1.i89, align 4
  %or.i12.i90 = or i32 %62, 240
  store i32 %or.i12.i90, ptr %add.ptr1.i89, align 4
  %63 = load ptr, ptr %data.i.i.i, align 4
  %add.ptr.i91 = getelementptr i32, ptr %63, i32 2
  %64 = ptrtoint ptr %add.ptr.i91 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %add.ptr.i91, align 4
  %and.i.i92 = and i32 %65, -524289
  store i32 %and.i.i92, ptr %add.ptr.i91, align 4
  %add.ptr1.i93 = getelementptr i32, ptr %63, i32 10
  %66 = ptrtoint ptr %add.ptr1.i93 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %add.ptr1.i93, align 4
  %or.i.i94 = or i32 %67, 524288
  store i32 %or.i.i94, ptr %add.ptr1.i93, align 4
  %68 = load ptr, ptr %data.i.i.i, align 4
  %add.ptr.i95 = getelementptr i32, ptr %68, i32 3
  %69 = ptrtoint ptr %add.ptr.i95 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %add.ptr.i95, align 4
  %and.i.i96 = and i32 %70, -1073741825
  store i32 %and.i.i96, ptr %add.ptr.i95, align 4
  %add.ptr1.i97 = getelementptr i32, ptr %68, i32 11
  %71 = ptrtoint ptr %add.ptr1.i97 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %add.ptr1.i97, align 4
  %or.i8.i = or i32 %72, 1073741824
  store i32 %or.i8.i, ptr %add.ptr1.i97, align 4
  %73 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %vif, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %74)
  %cmp18 = icmp eq i32 %74, 2
  %75 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %data.i.i.i, align 4
  %add.ptr.i98 = getelementptr i32, ptr %76, i32 7
  %77 = ptrtoint ptr %add.ptr.i98 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %add.ptr.i98, align 4
  %and.i.i104 = and i32 %78, -513
  %masksel = select i1 %cmp18, i32 512, i32 0
  %and.i.i104.sink = or i32 %and.i.i104, %masksel
  store i32 %and.i.i104.sink, ptr %add.ptr.i98, align 4
  %add.ptr1.i105 = getelementptr i32, ptr %76, i32 15
  %79 = ptrtoint ptr %add.ptr1.i105 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %add.ptr1.i105, align 4
  %or.i8.i106 = or i32 %80, 512
  store i32 %or.i8.i106, ptr %add.ptr1.i105, align 4
  %81 = load ptr, ptr %data.i.i.i, align 4
  %add.ptr.i107 = getelementptr i32, ptr %81, i32 5
  %82 = ptrtoint ptr %add.ptr.i107 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %add.ptr.i107, align 4
  %port = getelementptr inbounds %struct.rtw89_vif, ptr %drv_priv2, i32 0, i32 2
  %84 = ptrtoint ptr %port to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %port, align 1
  %conv26 = zext i8 %85 to i32
  %and.i.i110 = and i32 %83, -117440513
  %86 = shl nuw i32 %conv26, 24
  %87 = and i32 %86, 117440512
  %or.i.i111 = or i32 %87, %and.i.i110
  store i32 %or.i.i111, ptr %add.ptr.i107, align 4
  %add.ptr1.i112 = getelementptr i32, ptr %81, i32 13
  %88 = ptrtoint ptr %add.ptr1.i112 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %add.ptr1.i112, align 4
  %or.i12.i113 = or i32 %89, 117440512
  store i32 %or.i12.i113, ptr %add.ptr1.i112, align 4
  %90 = load ptr, ptr %data.i.i.i, align 4
  %conv28 = zext i8 %pads.sroa.0.0 to i32
  %add.ptr.i114 = getelementptr i32, ptr %90, i32 7
  %91 = ptrtoint ptr %add.ptr.i114 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %add.ptr.i114, align 4
  %and.i.i117 = and i32 %92, -12289
  %93 = shl nuw nsw i32 %conv28, 12
  %94 = and i32 %93, 12288
  %or.i.i118 = or i32 %and.i.i117, %94
  store i32 %or.i.i118, ptr %add.ptr.i114, align 4
  %add.ptr1.i119 = getelementptr i32, ptr %90, i32 15
  %95 = ptrtoint ptr %add.ptr1.i119 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %add.ptr1.i119, align 4
  %or.i12.i120 = or i32 %96, 12288
  store i32 %or.i12.i120, ptr %add.ptr1.i119, align 4
  %97 = load ptr, ptr %data.i.i.i, align 4
  %conv31 = zext i8 %pads.sroa.7.1 to i32
  %add.ptr.i121 = getelementptr i32, ptr %97, i32 7
  %98 = ptrtoint ptr %add.ptr.i121 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %add.ptr.i121, align 4
  %and.i.i124 = and i32 %99, -49153
  %100 = shl nuw nsw i32 %conv31, 14
  %101 = and i32 %100, 49152
  %or.i.i125 = or i32 %and.i.i124, %101
  store i32 %or.i.i125, ptr %add.ptr.i121, align 4
  %add.ptr1.i126 = getelementptr i32, ptr %97, i32 15
  %102 = ptrtoint ptr %add.ptr1.i126 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %add.ptr1.i126, align 4
  %or.i12.i127 = or i32 %103, 49152
  store i32 %or.i12.i127, ptr %add.ptr1.i126, align 4
  %104 = load ptr, ptr %data.i.i.i, align 4
  %add.ptr.i128 = getelementptr i32, ptr %104, i32 7
  %105 = ptrtoint ptr %add.ptr.i128 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %add.ptr.i128, align 4
  %and.i.i131 = and i32 %106, -193
  %or.i.i132 = or i32 %and.i.i131, %pads.sroa.13.0
  store i32 %or.i.i132, ptr %add.ptr.i128, align 4
  %add.ptr1.i133 = getelementptr i32, ptr %104, i32 15
  %107 = ptrtoint ptr %add.ptr1.i133 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %add.ptr1.i133, align 4
  %or.i12.i134 = or i32 %108, 192
  store i32 %or.i12.i134, ptr %add.ptr1.i133, align 4
  %109 = load ptr, ptr %data.i.i.i, align 4
  %110 = ptrtoint ptr %he_cap.i to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %he_cap.i, align 4, !range !332
  %112 = zext i8 %111 to i32
  %add.ptr.i135 = getelementptr i32, ptr %109, i32 6
  %113 = ptrtoint ptr %add.ptr.i135 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %add.ptr.i135, align 4
  %and.i.i136 = and i32 %114, -2097153
  %115 = shl nuw nsw i32 %112, 21
  %or.i.i137 = or i32 %and.i.i136, %115
  store i32 %or.i.i137, ptr %add.ptr.i135, align 4
  %add.ptr1.i138 = getelementptr i32, ptr %109, i32 14
  %116 = ptrtoint ptr %add.ptr1.i138 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %add.ptr1.i138, align 4
  %or.i8.i139 = or i32 %117, 2097152
  store i32 %or.i8.i139, ptr %add.ptr1.i138, align 4
  %call.i = tail call ptr @skb_push(ptr noundef nonnull %call.i.i.i.i, i32 noundef 8) #5
  %h2c_seq.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 6, i32 3
  %118 = ptrtoint ptr %h2c_seq.i to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %h2c_seq.i, align 32
  %conv129.i = zext i8 %119 to i32
  %shl130.i = shl nuw i32 %conv129.i, 24
  %or132.i = or i32 %shl130.i, 533
  %120 = tail call i32 @llvm.bswap.i32(i32 %or132.i) #5
  %121 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 %120, ptr %call.i, align 4
  %122 = and i8 %119, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %122)
  %tobool.not.i140 = icmp eq i8 %122, 0
  %or165.i = select i1 %tobool.not.i140, i32 49228, i32 32844
  %123 = tail call i32 @llvm.bswap.i32(i32 %or165.i) #5
  %hdr1.i = getelementptr inbounds %struct.fwcmd_hdr, ptr %call.i, i32 0, i32 1
  %124 = ptrtoint ptr %hdr1.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 %123, ptr %hdr1.i, align 4
  %125 = ptrtoint ptr %h2c_seq.i to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %h2c_seq.i, align 32
  %inc.i = add i8 %126, 1
  store i8 %inc.i, ptr %h2c_seq.i, align 32
  %call38 = tail call i32 @rtw89_h2c_tx(ptr noundef %rtwdev, ptr noundef nonnull %call.i.i.i.i, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.end.cleanup_crit_edge, label %do.end43

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end43:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %dev44 = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 1
  %127 = ptrtoint ptr %dev44 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %dev44, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %128, ptr noundef nonnull @.str.24) #8
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %call.i.i.i.i, i32 noundef 1) #5
  br label %cleanup

cleanup:                                          ; preds = %do.end43, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -16, %do.end43 ], [ -12, %do.end ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtw89_fw_h2c_txtime_cmac_tbl(ptr noundef %rtwdev, ptr nocapture noundef readonly %rtwsta) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef 100, i32 noundef 2592) #5
  %tobool2.not.i.i = icmp eq ptr %call.i.i.i.i, null
  br i1 %tobool2.not.i.i, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.21) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i, i32 0, i32 19
  %2 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %3, i32 32
  store ptr %add.ptr.i.i.i, ptr %data.i.i.i, align 4
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i, i32 0, i32 16
  %4 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tail.i.i.i, align 8
  %add.ptr1.i.i.i = getelementptr i8, ptr %5, i32 32
  store ptr %add.ptr1.i.i.i, ptr %tail.i.i.i, align 8
  %6 = call ptr @memset(ptr %add.ptr.i.i.i, i32 0, i32 68)
  %call1 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i.i.i, i32 noundef 68) #5
  %7 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data.i.i.i, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 4
  %11 = ptrtoint ptr %rtwsta to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %rtwsta, align 8
  %conv = zext i8 %12 to i32
  %and.i.i = and i32 %10, -2130706433
  %13 = shl nuw i32 %conv, 24
  %14 = and i32 %13, 2130706432
  %or.i.i = or i32 %14, %and.i.i
  store i32 %or.i.i, ptr %8, align 4
  %15 = load ptr, ptr %data.i.i.i, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 4
  %or.i.i41 = or i32 %17, -2147483648
  store i32 %or.i.i41, ptr %15, align 4
  %cctl_tx_time = getelementptr inbounds %struct.rtw89_sta, ptr %rtwsta, i32 0, i32 14
  %18 = ptrtoint ptr %cctl_tx_time to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %cctl_tx_time, align 4, !range !332
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool3.not = icmp eq i8 %19, 0
  br i1 %tobool3.not, label %if.end.if.end7_crit_edge, label %if.then4

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %20 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %data.i.i.i, align 4
  %add.ptr.i = getelementptr i32, ptr %21, i32 2
  %22 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %add.ptr.i, align 4
  %or.i.i42 = or i32 %23, 131072
  store i32 %or.i.i42, ptr %add.ptr.i, align 4
  %add.ptr1.i = getelementptr i32, ptr %21, i32 10
  %24 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %add.ptr1.i, align 4
  %or.i5.i = or i32 %25, 131072
  store i32 %or.i5.i, ptr %add.ptr1.i, align 4
  %26 = load ptr, ptr %data.i.i.i, align 4
  %ampdu_max_time = getelementptr inbounds %struct.rtw89_sta, ptr %rtwsta, i32 0, i32 15
  %27 = ptrtoint ptr %ampdu_max_time to i32
  call void @__asan_load1_noabort(i32 %27)
  %bf.load = load i8, ptr %ampdu_max_time, align 1
  %add.ptr.i43 = getelementptr i32, ptr %26, i32 3
  %28 = ptrtoint ptr %add.ptr.i43 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %add.ptr.i43, align 4
  %and.i.i44 = and i32 %29, -241
  %30 = and i8 %bf.load, -16
  %31 = zext i8 %30 to i32
  %or.i.i45 = or i32 %and.i.i44, %31
  store i32 %or.i.i45, ptr %add.ptr.i43, align 4
  %add.ptr1.i46 = getelementptr i32, ptr %26, i32 11
  %32 = ptrtoint ptr %add.ptr1.i46 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %add.ptr1.i46, align 4
  %or.i12.i = or i32 %33, 240
  store i32 %or.i12.i, ptr %add.ptr1.i46, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %if.end.if.end7_crit_edge
  %cctl_tx_retry_limit = getelementptr inbounds %struct.rtw89_sta, ptr %rtwsta, i32 0, i32 16
  %34 = ptrtoint ptr %cctl_tx_retry_limit to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %cctl_tx_retry_limit, align 2, !range !332
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool8.not = icmp eq i8 %35, 0
  br i1 %tobool8.not, label %if.end7.if.end15_crit_edge, label %if.then9

if.end7.if.end15_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15

if.then9:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  %36 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %data.i.i.i, align 4
  %add.ptr.i47 = getelementptr i32, ptr %37, i32 3
  %38 = ptrtoint ptr %add.ptr.i47 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %add.ptr.i47, align 4
  %or.i.i49 = or i32 %39, 1073741824
  store i32 %or.i.i49, ptr %add.ptr.i47, align 4
  %add.ptr1.i50 = getelementptr i32, ptr %37, i32 11
  %40 = ptrtoint ptr %add.ptr1.i50 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %add.ptr1.i50, align 4
  %or.i8.i = or i32 %41, 1073741824
  store i32 %or.i8.i, ptr %add.ptr1.i50, align 4
  %42 = load ptr, ptr %data.i.i.i, align 4
  %data_tx_cnt_lmt = getelementptr inbounds %struct.rtw89_sta, ptr %rtwsta, i32 0, i32 17
  %43 = ptrtoint ptr %data_tx_cnt_lmt to i32
  call void @__asan_load1_noabort(i32 %43)
  %bf.load12 = load i8, ptr %data_tx_cnt_lmt, align 1
  %bf.lshr13 = lshr i8 %bf.load12, 2
  %bf.cast14 = zext i8 %bf.lshr13 to i32
  %add.ptr.i51 = getelementptr i32, ptr %42, i32 3
  %44 = ptrtoint ptr %add.ptr.i51 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %add.ptr.i51, align 4
  %and.i.i52 = and i32 %45, -1056964609
  %46 = shl nuw nsw i32 %bf.cast14, 24
  %or.i.i53 = or i32 %46, %and.i.i52
  store i32 %or.i.i53, ptr %add.ptr.i51, align 4
  %add.ptr1.i54 = getelementptr i32, ptr %42, i32 11
  %47 = ptrtoint ptr %add.ptr1.i54 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %add.ptr1.i54, align 4
  %or.i12.i55 = or i32 %48, 1056964608
  store i32 %or.i12.i55, ptr %add.ptr1.i54, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then9, %if.end7.if.end15_crit_edge
  %call.i = tail call ptr @skb_push(ptr noundef nonnull %call.i.i.i.i, i32 noundef 8) #5
  %h2c_seq.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 6, i32 3
  %49 = ptrtoint ptr %h2c_seq.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %h2c_seq.i, align 32
  %conv129.i = zext i8 %50 to i32
  %shl130.i = shl nuw i32 %conv129.i, 24
  %or132.i = or i32 %shl130.i, 533
  %51 = tail call i32 @llvm.bswap.i32(i32 %or132.i) #5
  %52 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %call.i, align 4
  %53 = and i8 %50, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %tobool.not.i = icmp eq i8 %53, 0
  %or165.i = select i1 %tobool.not.i, i32 49228, i32 32844
  %54 = tail call i32 @llvm.bswap.i32(i32 %or165.i) #5
  %hdr1.i = getelementptr inbounds %struct.fwcmd_hdr, ptr %call.i, i32 0, i32 1
  %55 = ptrtoint ptr %hdr1.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %hdr1.i, align 4
  %56 = ptrtoint ptr %h2c_seq.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %h2c_seq.i, align 32
  %inc.i = add i8 %57, 1
  store i8 %inc.i, ptr %h2c_seq.i, align 32
  %call16 = tail call i32 @rtw89_h2c_tx(ptr noundef %rtwdev, ptr noundef nonnull %call.i.i.i.i, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end15.cleanup_crit_edge, label %do.end21

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end21:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  %dev22 = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 1
  %58 = ptrtoint ptr %dev22 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dev22, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %59, ptr noundef nonnull @.str.24) #8
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %call.i.i.i.i, i32 noundef 1) #5
  br label %cleanup

cleanup:                                          ; preds = %do.end21, %if.end15.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -16, %do.end21 ], [ -12, %do.end ], [ 0, %if.end15.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtw89_fw_h2c_vif_maintain(ptr noundef %rtwdev, ptr nocapture noundef readonly %rtwvif, i32 noundef %upd_mode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef 36, i32 noundef 2592) #5
  %tobool2.not.i.i = icmp eq ptr %call.i.i.i.i, null
  br i1 %tobool2.not.i.i, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.49) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i, i32 0, i32 19
  %2 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %3, i32 32
  store ptr %add.ptr.i.i.i, ptr %data.i.i.i, align 4
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i, i32 0, i32 16
  %4 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tail.i.i.i, align 8
  %add.ptr1.i.i.i = getelementptr i8, ptr %5, i32 32
  store ptr %add.ptr1.i.i.i, ptr %tail.i.i.i, align 8
  %6 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %6, i32 4)
  store i32 0, ptr %add.ptr.i.i.i, align 1
  %call1 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i.i.i, i32 noundef 4) #5
  %7 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data.i.i.i, align 4
  %mac_id = getelementptr inbounds %struct.rtw89_vif, ptr %rtwvif, i32 0, i32 1
  %9 = ptrtoint ptr %mac_id to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %mac_id, align 8
  %conv = zext i8 %10 to i32
  %11 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %8, align 4
  %and.i.i = and i32 %12, 16777215
  %13 = shl nuw i32 %conv, 24
  %or.i.i = or i32 %and.i.i, %13
  store i32 %or.i.i, ptr %8, align 4
  %14 = load ptr, ptr %data.i.i.i, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %14, align 4
  %self_role = getelementptr inbounds %struct.rtw89_vif, ptr %rtwvif, i32 0, i32 9
  %17 = ptrtoint ptr %self_role to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %self_role, align 2
  %conv3 = zext i8 %18 to i32
  %and.i.i28 = and i32 %16, -196609
  %19 = shl nuw nsw i32 %conv3, 16
  %20 = and i32 %19, 196608
  %or.i.i29 = or i32 %20, %and.i.i28
  store i32 %or.i.i29, ptr %14, align 4
  %21 = load ptr, ptr %data.i.i.i, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %21, align 4
  %and.i.i32 = and i32 %23, -1835009
  %24 = shl i32 %upd_mode, 18
  %25 = and i32 %24, 1835008
  %or.i.i33 = or i32 %and.i.i32, %25
  store i32 %or.i.i33, ptr %21, align 4
  %26 = load ptr, ptr %data.i.i.i, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %26, align 4
  %wifi_role = getelementptr inbounds %struct.rtw89_vif, ptr %rtwvif, i32 0, i32 8
  %29 = ptrtoint ptr %wifi_role to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %wifi_role, align 1
  %conv6 = zext i8 %30 to i32
  %and.i.i36 = and i32 %28, -14680321
  %31 = shl nuw nsw i32 %conv6, 13
  %32 = and i32 %31, 122880
  %33 = tail call i32 @llvm.bswap.i32(i32 %32) #5
  %or.i.i37 = or i32 %33, %and.i.i36
  %34 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %or.i.i37, ptr %26, align 4
  %call.i = tail call ptr @skb_push(ptr noundef nonnull %call.i.i.i.i, i32 noundef 8) #5
  %h2c_seq.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 6, i32 3
  %35 = ptrtoint ptr %h2c_seq.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %h2c_seq.i, align 32
  %conv129.i = zext i8 %36 to i32
  %shl130.i = shl nuw i32 %conv129.i, 24
  %or132.i = or i32 %shl130.i, 1057
  %37 = tail call i32 @llvm.bswap.i32(i32 %or132.i) #5
  %38 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %call.i, align 4
  %39 = and i8 %36, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool.not.i = icmp eq i8 %39, 0
  %or165.i = select i1 %tobool.not.i, i32 49164, i32 32780
  %40 = tail call i32 @llvm.bswap.i32(i32 %or165.i) #5
  %hdr1.i = getelementptr inbounds %struct.fwcmd_hdr, ptr %call.i, i32 0, i32 1
  %41 = ptrtoint ptr %hdr1.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %hdr1.i, align 4
  %42 = ptrtoint ptr %h2c_seq.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %h2c_seq.i, align 32
  %inc.i = add i8 %43, 1
  store i8 %inc.i, ptr %h2c_seq.i, align 32
  %call7 = tail call i32 @rtw89_h2c_tx(ptr noundef %rtwdev, ptr noundef nonnull %call.i.i.i.i, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end.cleanup_crit_edge, label %do.end12

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end12:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %dev13 = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 1
  %44 = ptrtoint ptr %dev13 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev13, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %45, ptr noundef nonnull @.str.24) #8
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %call.i.i.i.i, i32 noundef 1) #5
  br label %cleanup

cleanup:                                          ; preds = %do.end12, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -16, %do.end12 ], [ -12, %do.end ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtw89_fw_h2c_join_info(ptr noundef %rtwdev, ptr nocapture noundef readonly %rtwvif, i8 noundef zeroext %dis_conn) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef 36, i32 noundef 2592) #5
  %tobool2.not.i.i = icmp eq ptr %call.i.i.i.i, null
  br i1 %tobool2.not.i.i, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.49) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i, i32 0, i32 19
  %2 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %3, i32 32
  store ptr %add.ptr.i.i.i, ptr %data.i.i.i, align 4
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i, i32 0, i32 16
  %4 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tail.i.i.i, align 8
  %add.ptr1.i.i.i = getelementptr i8, ptr %5, i32 32
  store ptr %add.ptr1.i.i.i, ptr %tail.i.i.i, align 8
  %6 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %6, i32 4)
  store i32 0, ptr %add.ptr.i.i.i, align 1
  %call1 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i.i.i, i32 noundef 4) #5
  %7 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data.i.i.i, align 4
  %mac_id = getelementptr inbounds %struct.rtw89_vif, ptr %rtwvif, i32 0, i32 1
  %9 = ptrtoint ptr %mac_id to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %mac_id, align 8
  %conv = zext i8 %10 to i32
  %11 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %8, align 4
  %and.i.i = and i32 %12, 16777215
  %13 = shl nuw i32 %conv, 24
  %or.i.i = or i32 %and.i.i, %13
  store i32 %or.i.i, ptr %8, align 4
  %14 = load ptr, ptr %data.i.i.i, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %14, align 4
  %conv3 = zext i8 %dis_conn to i32
  %and.i.i58 = and i32 %16, -65537
  %17 = shl nuw nsw i32 %conv3, 16
  %18 = and i32 %17, 65536
  %or.i.i59 = or i32 %and.i.i58, %18
  store i32 %or.i.i59, ptr %14, align 4
  %19 = load ptr, ptr %data.i.i.i, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %19, align 4
  %mac_idx = getelementptr inbounds %struct.rtw89_vif, ptr %rtwvif, i32 0, i32 6
  %22 = ptrtoint ptr %mac_idx to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %mac_idx, align 1
  %conv5 = zext i8 %23 to i32
  %and.i.i62 = and i32 %21, -131073
  %24 = shl nuw nsw i32 %conv5, 17
  %25 = and i32 %24, 131072
  %or.i.i63 = or i32 %25, %and.i.i62
  store i32 %or.i.i63, ptr %19, align 4
  %26 = load ptr, ptr %data.i.i.i, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %26, align 4
  %wmm = getelementptr inbounds %struct.rtw89_vif, ptr %rtwvif, i32 0, i32 10
  %29 = ptrtoint ptr %wmm to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %wmm, align 1
  %conv7 = zext i8 %30 to i32
  %and.i.i66 = and i32 %28, -786433
  %31 = shl nuw nsw i32 %conv7, 18
  %32 = and i32 %31, 786432
  %or.i.i67 = or i32 %32, %and.i.i66
  store i32 %or.i.i67, ptr %26, align 4
  %33 = load ptr, ptr %data.i.i.i, align 4
  %trigger = getelementptr inbounds %struct.rtw89_vif, ptr %rtwvif, i32 0, i32 13
  %34 = ptrtoint ptr %trigger to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %trigger, align 2, !range !332
  %36 = zext i8 %35 to i32
  %37 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %33, align 4
  %and.i.i68 = and i32 %38, -1048577
  %39 = shl nuw nsw i32 %36, 20
  %or.i.i69 = or i32 %and.i.i68, %39
  store i32 %or.i.i69, ptr %33, align 4
  %40 = load ptr, ptr %data.i.i.i, align 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %40, align 4
  %and.i.i70 = and i32 %42, -2097153
  store i32 %and.i.i70, ptr %40, align 4
  %43 = load ptr, ptr %data.i.i.i, align 4
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %43, align 4
  %and.i.i71 = and i32 %45, -12582913
  store i32 %and.i.i71, ptr %43, align 4
  %46 = load ptr, ptr %data.i.i.i, align 4
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %46, align 4
  %and.i.i72 = and i32 %48, -769
  store i32 %and.i.i72, ptr %46, align 4
  %49 = load ptr, ptr %data.i.i.i, align 4
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %49, align 4
  %and.i.i73 = and i32 %51, -7169
  store i32 %and.i.i73, ptr %49, align 4
  %52 = load ptr, ptr %data.i.i.i, align 4
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %52, align 4
  %port = getelementptr inbounds %struct.rtw89_vif, ptr %rtwvif, i32 0, i32 2
  %55 = ptrtoint ptr %port to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %port, align 1
  %conv16 = zext i8 %56 to i32
  %and.i.i76 = and i32 %54, -57345
  %57 = shl nuw nsw i32 %conv16, 13
  %58 = and i32 %57, 57344
  %or.i.i77 = or i32 %58, %and.i.i76
  store i32 %or.i.i77, ptr %52, align 4
  %59 = load ptr, ptr %data.i.i.i, align 4
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %59, align 4
  %net_type = getelementptr inbounds %struct.rtw89_vif, ptr %rtwvif, i32 0, i32 7
  %62 = ptrtoint ptr %net_type to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %net_type, align 8
  %and.i.i80 = and i32 %61, -4
  %64 = and i8 %63, 3
  %65 = zext i8 %64 to i32
  %or.i.i81 = or i32 %and.i.i80, %65
  store i32 %or.i.i81, ptr %59, align 4
  %66 = load ptr, ptr %data.i.i.i, align 4
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %66, align 4
  %wifi_role = getelementptr inbounds %struct.rtw89_vif, ptr %rtwvif, i32 0, i32 8
  %69 = ptrtoint ptr %wifi_role to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %wifi_role, align 1
  %conv20 = zext i8 %70 to i32
  %and.i.i84 = and i32 %68, -61
  %71 = shl nuw nsw i32 %conv20, 2
  %72 = and i32 %71, 60
  %or.i.i85 = or i32 %72, %and.i.i84
  store i32 %or.i.i85, ptr %66, align 4
  %73 = load ptr, ptr %data.i.i.i, align 4
  %74 = ptrtoint ptr %73 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %73, align 4
  %self_role = getelementptr inbounds %struct.rtw89_vif, ptr %rtwvif, i32 0, i32 9
  %76 = ptrtoint ptr %self_role to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %self_role, align 2
  %conv22 = zext i8 %77 to i32
  %and.i.i88 = and i32 %75, -193
  %78 = shl nuw nsw i32 %conv22, 6
  %79 = and i32 %78, 192
  %or.i.i89 = or i32 %79, %and.i.i88
  store i32 %or.i.i89, ptr %73, align 4
  %call.i = tail call ptr @skb_push(ptr noundef nonnull %call.i.i.i.i, i32 noundef 8) #5
  %h2c_seq.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 6, i32 3
  %80 = ptrtoint ptr %h2c_seq.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %h2c_seq.i, align 32
  %conv129.i = zext i8 %81 to i32
  %shl130.i = shl nuw i32 %conv129.i, 24
  %or132.i = or i32 %shl130.i, 33
  %82 = tail call i32 @llvm.bswap.i32(i32 %or132.i) #5
  %83 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %82, ptr %call.i, align 4
  %84 = and i8 %81, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %84)
  %tobool.not.i = icmp eq i8 %84, 0
  %or165.i = select i1 %tobool.not.i, i32 49164, i32 32780
  %85 = tail call i32 @llvm.bswap.i32(i32 %or165.i) #5
  %hdr1.i = getelementptr inbounds %struct.fwcmd_hdr, ptr %call.i, i32 0, i32 1
  %86 = ptrtoint ptr %hdr1.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %85, ptr %hdr1.i, align 4
  %87 = ptrtoint ptr %h2c_seq.i to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %h2c_seq.i, align 32
  %inc.i = add i8 %88, 1
  store i8 %inc.i, ptr %h2c_seq.i, align 32
  %call23 = tail call i32 @rtw89_h2c_tx(ptr noundef %rtwdev, ptr noundef nonnull %call.i.i.i.i, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end.cleanup_crit_edge, label %do.end28

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end28:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %dev29 = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 1
  %89 = ptrtoint ptr %dev29 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %dev29, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %90, ptr noundef nonnull @.str.24) #8
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %call.i.i.i.i, i32 noundef 1) #5
  br label %cleanup

cleanup:                                          ; preds = %do.end28, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -16, %do.end28 ], [ -12, %do.end ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtw89_fw_h2c_macid_pause(ptr noundef %rtwdev, i8 noundef zeroext %sh, i8 noundef zeroext %grp, i1 noundef zeroext %pause) local_unnamed_addr #0 align 64 {
entry:
  %h2c = alloca %struct.rtw89_fw_macid_pause_grp, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %h2c) #5
  %0 = call ptr @memset(ptr %h2c, i32 0, i32 32)
  %call.i.i.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef 36, i32 noundef 2592) #5
  %tobool2.not.i.i = icmp eq ptr %call.i.i.i.i, null
  br i1 %tobool2.not.i.i, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 1
  %1 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.49) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i, i32 0, i32 19
  %3 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %4, i32 32
  store ptr %add.ptr.i.i.i, ptr %data.i.i.i, align 4
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i, i32 0, i32 16
  %5 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %tail.i.i.i, align 8
  %add.ptr1.i.i.i = getelementptr i8, ptr %6, i32 32
  store ptr %add.ptr1.i.i.i, ptr %tail.i.i.i, align 8
  %7 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %7, i32 4)
  store i32 0, ptr %add.ptr.i.i.i, align 1
  %conv = zext i8 %sh to i32
  %shl = shl nuw i32 1, %conv
  %8 = tail call i32 @llvm.bswap.i32(i32 %shl)
  %idxprom = zext i8 %grp to i32
  %arrayidx = getelementptr %struct.rtw89_fw_macid_pause_grp, ptr %h2c, i32 0, i32 1, i32 %idxprom
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_storeN_noabort(i32 %9, i32 4)
  store i32 %8, ptr %arrayidx, align 1
  br i1 %pause, label %if.then2, label %if.end.if.end7_crit_edge

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx6 = getelementptr [4 x i32], ptr %h2c, i32 0, i32 %idxprom
  %10 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_storeN_noabort(i32 %10, i32 4)
  store i32 %8, ptr %arrayidx6, align 1
  br label %if.end7

if.end7:                                          ; preds = %if.then2, %if.end.if.end7_crit_edge
  %call.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i.i.i, i32 noundef 32) #5
  %11 = call ptr @memcpy(ptr %call.i, ptr %h2c, i32 32)
  %call.i31 = tail call ptr @skb_push(ptr noundef nonnull %call.i.i.i.i, i32 noundef 8) #5
  %h2c_seq.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 6, i32 3
  %12 = ptrtoint ptr %h2c_seq.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %h2c_seq.i, align 32
  %conv129.i = zext i8 %13 to i32
  %shl130.i = shl nuw i32 %conv129.i, 24
  %or132.i = or i32 %shl130.i, 2085
  %14 = tail call i32 @llvm.bswap.i32(i32 %or132.i) #5
  %15 = ptrtoint ptr %call.i31 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %call.i31, align 4
  %hdr1.i = getelementptr inbounds %struct.fwcmd_hdr, ptr %call.i31, i32 0, i32 1
  %16 = ptrtoint ptr %hdr1.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 675282944, ptr %hdr1.i, align 4
  %17 = ptrtoint ptr %h2c_seq.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %h2c_seq.i, align 32
  %inc.i = add i8 %18, 1
  store i8 %inc.i, ptr %h2c_seq.i, align 32
  %call11 = tail call i32 @rtw89_h2c_tx(ptr noundef %rtwdev, ptr noundef nonnull %call.i.i.i.i, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end7.cleanup_crit_edge, label %do.end16

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end16:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  %dev17 = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 1
  %19 = ptrtoint ptr %dev17 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev17, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.24) #8
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %call.i.i.i.i, i32 noundef 1) #5
  br label %cleanup

cleanup:                                          ; preds = %do.end16, %if.end7.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -16, %do.end16 ], [ -12, %do.end ], [ 0, %if.end7.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %h2c) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtw89_fw_h2c_set_edca(ptr noundef %rtwdev, ptr nocapture noundef readonly %rtwvif, i8 noundef zeroext %ac, i32 noundef %val) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef 44, i32 noundef 2592) #5
  %tobool2.not.i.i = icmp eq ptr %call.i.i.i.i, null
  br i1 %tobool2.not.i.i, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.59) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i, i32 0, i32 19
  %2 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %3, i32 32
  store ptr %add.ptr.i.i.i, ptr %data.i.i.i, align 4
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i, i32 0, i32 16
  %4 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tail.i.i.i, align 8
  %add.ptr1.i.i.i = getelementptr i8, ptr %5, i32 32
  store ptr %add.ptr1.i.i.i, ptr %tail.i.i.i, align 8
  %6 = call ptr @memset(ptr %add.ptr.i.i.i, i32 0, i32 12)
  %call1 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i.i.i, i32 noundef 12) #5
  %7 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data.i.i.i, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 4
  %and.i.i = and i32 %10, -50331649
  store i32 %and.i.i, ptr %8, align 4
  %11 = load ptr, ptr %data.i.i.i, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  %mac_idx = getelementptr inbounds %struct.rtw89_vif, ptr %rtwvif, i32 0, i32 6
  %14 = ptrtoint ptr %mac_idx to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %mac_idx, align 1
  %conv = zext i8 %15 to i32
  %and.i.i27 = and i32 %13, -134217729
  %16 = shl i32 %conv, 27
  %17 = and i32 %16, 134217728
  %or.i.i = or i32 %17, %and.i.i27
  store i32 %or.i.i, ptr %11, align 4
  %18 = load ptr, ptr %data.i.i.i, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %18, align 4
  %and.i.i28 = and i32 %20, -268435457
  store i32 %and.i.i28, ptr %18, align 4
  %21 = load ptr, ptr %data.i.i.i, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %21, align 4
  %conv5 = zext i8 %ac to i32
  %and.i.i31 = and i32 %23, -1610612737
  %24 = shl i32 %conv5, 29
  %25 = and i32 %24, 1610612736
  %or.i.i32 = or i32 %and.i.i31, %25
  store i32 %or.i.i32, ptr %21, align 4
  %26 = load ptr, ptr %data.i.i.i, align 4
  %add.ptr.i = getelementptr i32, ptr %26, i32 1
  %27 = tail call i32 @llvm.bswap.i32(i32 %val) #5
  %28 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %add.ptr.i, align 4
  %call.i = tail call ptr @skb_push(ptr noundef nonnull %call.i.i.i.i, i32 noundef 8) #5
  %h2c_seq.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 6, i32 3
  %29 = ptrtoint ptr %h2c_seq.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %h2c_seq.i, align 32
  %conv129.i = zext i8 %30 to i32
  %shl130.i = shl nuw i32 %conv129.i, 24
  %or132.i = or i32 %shl130.i, 3877
  %31 = tail call i32 @llvm.bswap.i32(i32 %or132.i) #5
  %32 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %call.i, align 4
  %33 = and i8 %30, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool.not.i = icmp eq i8 %33, 0
  %or165.i = select i1 %tobool.not.i, i32 49172, i32 32788
  %34 = tail call i32 @llvm.bswap.i32(i32 %or165.i) #5
  %hdr1.i = getelementptr inbounds %struct.fwcmd_hdr, ptr %call.i, i32 0, i32 1
  %35 = ptrtoint ptr %hdr1.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %hdr1.i, align 4
  %36 = ptrtoint ptr %h2c_seq.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %h2c_seq.i, align 32
  %inc.i = add i8 %37, 1
  store i8 %inc.i, ptr %h2c_seq.i, align 32
  %call7 = tail call i32 @rtw89_h2c_tx(ptr noundef %rtwdev, ptr noundef nonnull %call.i.i.i.i, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end.cleanup_crit_edge, label %do.end12

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end12:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %dev13 = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 1
  %38 = ptrtoint ptr %dev13 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev13, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %39, ptr noundef nonnull @.str.24) #8
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %call.i.i.i.i, i32 noundef 1) #5
  br label %cleanup

cleanup:                                          ; preds = %do.end12, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -16, %do.end12 ], [ -12, %do.end ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtw89_fw_h2c_set_ofld_cfg(ptr noundef %rtwdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef 40, i32 noundef 2592) #5
  %tobool2.not.i.i = icmp eq ptr %call.i.i.i.i, null
  br i1 %tobool2.not.i.i, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.63) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i, i32 0, i32 19
  %2 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %3, i32 32
  store ptr %add.ptr.i.i.i, ptr %data.i.i.i, align 4
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i, i32 0, i32 16
  %4 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tail.i.i.i, align 8
  %add.ptr1.i.i.i = getelementptr i8, ptr %5, i32 32
  store ptr %add.ptr1.i.i.i, ptr %tail.i.i.i, align 8
  %6 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %6, i32 8)
  store i64 0, ptr %add.ptr.i.i.i, align 1
  %call.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i.i.i, i32 noundef 8) #5
  %7 = ptrtoint ptr %call.i to i32
  call void @__asan_storeN_noabort(i32 %7, i32 8)
  store i64 648518347918409728, ptr %call.i, align 1
  %call.i17 = tail call ptr @skb_push(ptr noundef nonnull %call.i.i.i.i, i32 noundef 8) #5
  %h2c_seq.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 6, i32 3
  %8 = ptrtoint ptr %h2c_seq.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %h2c_seq.i, align 32
  %conv129.i = zext i8 %9 to i32
  %shl130.i = shl nuw i32 %conv129.i, 24
  %or132.i = or i32 %shl130.i, 5157
  %10 = tail call i32 @llvm.bswap.i32(i32 %or132.i) #5
  %11 = ptrtoint ptr %call.i17 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %call.i17, align 4
  %12 = and i8 %9, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not.i = icmp eq i8 %12, 0
  %or165.i = select i1 %tobool.not.i, i32 49168, i32 32784
  %13 = tail call i32 @llvm.bswap.i32(i32 %or165.i) #5
  %hdr1.i = getelementptr inbounds %struct.fwcmd_hdr, ptr %call.i17, i32 0, i32 1
  %14 = ptrtoint ptr %hdr1.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %hdr1.i, align 4
  %15 = ptrtoint ptr %h2c_seq.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %h2c_seq.i, align 32
  %inc.i = add i8 %16, 1
  store i8 %inc.i, ptr %h2c_seq.i, align 32
  %call2 = tail call i32 @rtw89_h2c_tx(ptr noundef %rtwdev, ptr noundef nonnull %call.i.i.i.i, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %do.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %dev8 = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 1
  %17 = ptrtoint ptr %dev8 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev8, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.24) #8
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %call.i.i.i.i, i32 noundef 1) #5
  br label %cleanup

cleanup:                                          ; preds = %do.end7, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -16, %do.end7 ], [ -12, %do.end ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtw89_fw_h2c_ra(ptr noundef %rtwdev, ptr nocapture noundef readonly %ra, i1 noundef zeroext %csi) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef 48, i32 noundef 2592) #5
  %tobool2.not.i.i = icmp eq ptr %call.i.i.i.i, null
  br i1 %tobool2.not.i.i, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.49) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i, i32 0, i32 19
  %2 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %3, i32 32
  store ptr %add.ptr.i.i.i, ptr %data.i.i.i, align 4
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i, i32 0, i32 16
  %4 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tail.i.i.i, align 8
  %add.ptr1.i.i.i = getelementptr i8, ptr %5, i32 32
  store ptr %add.ptr1.i.i.i, ptr %tail.i.i.i, align 8
  %6 = call ptr @memset(ptr %add.ptr.i.i.i, i32 0, i32 16)
  %call1 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i.i.i, i32 noundef 16) #5
  %7 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data.i.i.i, align 4
  %ra_mask = getelementptr inbounds %struct.rtw89_ra_info, ptr %ra, i32 0, i32 3
  %9 = ptrtoint ptr %ra_mask to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %ra_mask, align 8
  tail call void (ptr, i32, ptr, ...) @__rtw89_debug(ptr noundef %rtwdev, i32 noundef 128, ptr noundef nonnull @.str.68, i64 noundef %10) #5
  %11 = ptrtoint ptr %ra to i32
  call void @__asan_load1_noabort(i32 %11)
  %bf.load = load i8, ptr %ra, align 8
  %bf.lshr = lshr i8 %bf.load, 2
  %conv = zext i8 %bf.lshr to i32
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %8, align 4
  %and.i.i = and i32 %13, -1040187393
  %14 = shl nuw nsw i32 %conv, 25
  %15 = and i32 %14, 1040187392
  %or.i.i = or i32 %15, %and.i.i
  store i32 %or.i.i, ptr %8, align 4
  %bf.load2 = load i8, ptr %ra, align 8
  %bf.clear3 = and i8 %bf.load2, 3
  %conv4 = zext i8 %bf.clear3 to i32
  %and.i.i253 = and i32 %or.i.i, 1073741823
  %16 = shl nuw i32 %conv4, 30
  %or.i.i254 = or i32 %and.i.i253, %16
  store i32 %or.i.i254, ptr %8, align 4
  %macid = getelementptr inbounds %struct.rtw89_ra_info, ptr %ra, i32 0, i32 1
  %17 = ptrtoint ptr %macid to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %macid, align 1
  %conv5 = zext i8 %18 to i32
  %and.i.i255 = and i32 %or.i.i254, -16711681
  %19 = shl nuw nsw i32 %conv5, 16
  %or.i.i256 = or i32 %and.i.i255, %19
  store i32 %or.i.i256, ptr %8, align 4
  %dcm_cap = getelementptr inbounds %struct.rtw89_ra_info, ptr %ra, i32 0, i32 2
  %20 = ptrtoint ptr %dcm_cap to i32
  call void @__asan_load2_noabort(i32 %20)
  %bf.load6 = load i16, ptr %dcm_cap, align 2
  %and.i.i257 = and i32 %or.i.i256, -257
  %21 = lshr i16 %bf.load6, 7
  %22 = and i16 %21, 256
  %23 = zext i16 %22 to i32
  %or.i.i258 = or i32 %and.i.i257, %23
  store i32 %or.i.i258, ptr %8, align 4
  %bf.load9 = load i16, ptr %dcm_cap, align 2
  %and.i.i259 = and i32 %or.i.i258, -513
  %24 = lshr i16 %bf.load9, 5
  %25 = and i16 %24, 512
  %26 = zext i16 %25 to i32
  %or.i.i260 = or i32 %and.i.i259, %26
  store i32 %or.i.i260, ptr %8, align 4
  %bf.load14 = load i16, ptr %dcm_cap, align 2
  %and.i.i261 = and i32 %or.i.i260, -3073
  %27 = lshr i16 %bf.load14, 2
  %28 = and i16 %27, 3072
  %29 = zext i16 %28 to i32
  %or.i.i262 = or i32 %and.i.i261, %29
  store i32 %or.i.i262, ptr %8, align 4
  %bf.load19 = load i16, ptr %dcm_cap, align 2
  %and.i.i263 = and i32 %or.i.i262, -4097
  %30 = shl i16 %bf.load19, 1
  %31 = and i16 %30, 4096
  %32 = zext i16 %31 to i32
  %or.i.i264 = or i32 %and.i.i263, %32
  store i32 %or.i.i264, ptr %8, align 4
  %bf.load24 = load i16, ptr %dcm_cap, align 2
  %and.i.i265 = and i32 %or.i.i264, -8193
  %33 = shl i16 %bf.load24, 3
  %34 = and i16 %33, 8192
  %35 = zext i16 %34 to i32
  %or.i.i266 = or i32 %and.i.i265, %35
  store i32 %or.i.i266, ptr %8, align 4
  %bf.load29 = load i16, ptr %dcm_cap, align 2
  %and.i.i267 = and i32 %or.i.i266, -16385
  %36 = shl i16 %bf.load29, 5
  %37 = and i16 %36, 16384
  %38 = zext i16 %37 to i32
  %or.i.i268 = or i32 %and.i.i267, %38
  store i32 %or.i.i268, ptr %8, align 4
  %bf.load34 = load i16, ptr %dcm_cap, align 2
  %and.i.i269 = and i32 %or.i.i268, -32769
  %39 = shl i16 %bf.load34, 7
  %40 = and i16 %39, -32768
  %41 = zext i16 %40 to i32
  %or.i.i270 = or i32 %and.i.i269, %41
  store i32 %or.i.i270, ptr %8, align 4
  %bf.load39 = load i16, ptr %dcm_cap, align 2
  %42 = lshr i16 %bf.load39, 5
  %43 = and i16 %42, 7
  %conv43 = zext i16 %43 to i32
  %and.i.i271 = and i32 %or.i.i270, -8
  %or.i.i272 = or i32 %and.i.i271, %conv43
  store i32 %or.i.i272, ptr %8, align 4
  %bf.load44 = load i16, ptr %dcm_cap, align 2
  %and.i.i273 = and i32 %or.i.i272, -57
  %44 = shl i16 %bf.load44, 1
  %45 = and i16 %44, 56
  %46 = zext i16 %45 to i32
  %or.i.i274 = or i32 %and.i.i273, %46
  store i32 %or.i.i274, ptr %8, align 4
  %bf.load49 = load i16, ptr %dcm_cap, align 2
  %and.i.i275 = and i32 %or.i.i274, -65
  %47 = shl i16 %bf.load49, 5
  %48 = and i16 %47, 64
  %49 = zext i16 %48 to i32
  %or.i.i276 = or i32 %and.i.i275, %49
  store i32 %or.i.i276, ptr %8, align 4
  %bf.load54 = load i16, ptr %dcm_cap, align 2
  %and.i.i277 = and i32 %or.i.i276, -129
  %50 = shl i16 %bf.load54, 7
  %51 = and i16 %50, 128
  %52 = zext i16 %51 to i32
  %or.i.i278 = or i32 %and.i.i277, %52
  store i32 %or.i.i278, ptr %8, align 4
  %53 = ptrtoint ptr %ra_mask to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %ra_mask, align 8
  %55 = trunc i64 %54 to i32
  %add.ptr.i = getelementptr i32, ptr %8, i32 1
  %56 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %add.ptr.i, align 4
  %and.i.i279 = and i32 %57, 16777215
  %conv74 = shl i32 %55, 24
  %or.i.i280 = or i32 %and.i.i279, %conv74
  store i32 %or.i.i280, ptr %add.ptr.i, align 4
  %58 = load i64, ptr %ra_mask, align 8
  %59 = trunc i64 %58 to i32
  %and.i.i282 = and i32 %or.i.i280, -16711681
  %60 = shl i32 %59, 8
  %61 = and i32 %60, 16711680
  %or.i.i283 = or i32 %61, %and.i.i282
  store i32 %or.i.i283, ptr %add.ptr.i, align 4
  %62 = load i64, ptr %ra_mask, align 8
  %63 = trunc i64 %62 to i32
  %and.i.i285 = and i32 %or.i.i283, -65281
  %64 = lshr i32 %63, 8
  %65 = and i32 %64, 65280
  %or.i.i286 = or i32 %and.i.i285, %65
  store i32 %or.i.i286, ptr %add.ptr.i, align 4
  %66 = load i64, ptr %ra_mask, align 8
  %67 = trunc i64 %66 to i32
  %68 = lshr i32 %67, 24
  %and.i.i288 = and i32 %or.i.i286, -256
  %or.i.i289 = or i32 %and.i.i288, %68
  store i32 %or.i.i289, ptr %add.ptr.i, align 4
  %69 = load i64, ptr %ra_mask, align 8
  %add.ptr.i290 = getelementptr i32, ptr %8, i32 2
  %70 = ptrtoint ptr %add.ptr.i290 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %add.ptr.i290, align 4
  %and.i.i291 = and i32 %71, 16777215
  %sh.diff = lshr i64 %69, 8
  %tr.sh.diff = trunc i64 %sh.diff to i32
  %conv154 = and i32 %tr.sh.diff, -16777216
  %or.i.i292 = or i32 %conv154, %and.i.i291
  store i32 %or.i.i292, ptr %add.ptr.i290, align 4
  br i1 %csi, label %if.then156, label %if.end.if.end180_crit_edge

if.end.if.end180_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end180

if.then156:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %or.i.i294 = or i32 %or.i.i292, 128
  %72 = ptrtoint ptr %add.ptr.i290 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %or.i.i294, ptr %add.ptr.i290, align 4
  %band_num = getelementptr inbounds %struct.rtw89_ra_info, ptr %ra, i32 0, i32 4
  %73 = ptrtoint ptr %band_num to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %band_num, align 8
  %conv157 = zext i8 %74 to i32
  %add.ptr.i295 = getelementptr i32, ptr %8, i32 3
  %75 = ptrtoint ptr %add.ptr.i295 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %add.ptr.i295, align 4
  %and.i.i296 = and i32 %76, 16777215
  %77 = shl nuw i32 %conv157, 24
  %or.i.i297 = or i32 %and.i.i296, %77
  store i32 %or.i.i297, ptr %add.ptr.i295, align 4
  %cr_tbl_sel = getelementptr inbounds %struct.rtw89_ra_info, ptr %ra, i32 0, i32 5
  %78 = ptrtoint ptr %cr_tbl_sel to i32
  call void @__asan_load1_noabort(i32 %78)
  %bf.load158 = load i8, ptr %cr_tbl_sel, align 1
  %bf.lshr159 = lshr i8 %bf.load158, 5
  %conv161 = zext i8 %bf.lshr159 to i32
  %and.i.i299 = and i32 %or.i.i297, -262145
  %79 = shl nuw nsw i32 %conv161, 18
  %80 = and i32 %79, 262144
  %or.i.i300 = or i32 %80, %and.i.i299
  store i32 %or.i.i300, ptr %add.ptr.i295, align 4
  %bf.load162 = load i8, ptr %cr_tbl_sel, align 1
  %bf.lshr163 = lshr i8 %bf.load162, 6
  %conv165 = zext i8 %bf.lshr163 to i32
  %and.i.i302 = and i32 %or.i.i300, -131073
  %81 = shl nuw nsw i32 %conv165, 17
  %82 = and i32 %81, 131072
  %or.i.i303 = or i32 %and.i.i302, %82
  store i32 %or.i.i303, ptr %add.ptr.i295, align 4
  %bf.load166 = load i8, ptr %cr_tbl_sel, align 1
  %bf.lshr167 = lshr i8 %bf.load166, 7
  %conv168 = zext i8 %bf.lshr167 to i32
  %and.i.i305 = and i32 %or.i.i303, -65537
  %83 = shl nuw nsw i32 %conv168, 16
  %or.i.i306 = or i32 %and.i.i305, %83
  store i32 %or.i.i306, ptr %add.ptr.i295, align 4
  %csi_mcs_ss_idx = getelementptr inbounds %struct.rtw89_ra_info, ptr %ra, i32 0, i32 6
  %84 = ptrtoint ptr %csi_mcs_ss_idx to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %csi_mcs_ss_idx, align 2
  %conv169 = zext i8 %85 to i32
  %and.i.i308 = and i32 %or.i.i306, -65281
  %86 = shl nuw nsw i32 %conv169, 8
  %or.i.i309 = or i32 %and.i.i308, %86
  store i32 %or.i.i309, ptr %add.ptr.i295, align 4
  %csi_mode = getelementptr inbounds %struct.rtw89_ra_info, ptr %ra, i32 0, i32 7
  %87 = ptrtoint ptr %csi_mode to i32
  call void @__asan_load1_noabort(i32 %87)
  %bf.load170 = load i8, ptr %csi_mode, align 1
  %bf.lshr171 = lshr i8 %bf.load170, 6
  %conv172 = zext i8 %bf.lshr171 to i32
  %and.i.i311 = and i32 %or.i.i309, -4
  %or.i.i312 = or i32 %and.i.i311, %conv172
  store i32 %or.i.i312, ptr %add.ptr.i295, align 4
  %bf.load173 = load i8, ptr %csi_mode, align 1
  %and.i.i314 = and i32 %or.i.i312, -29
  %88 = lshr i8 %bf.load173, 1
  %89 = and i8 %88, 28
  %90 = zext i8 %89 to i32
  %or.i.i315 = or i32 %and.i.i314, %90
  store i32 %or.i.i315, ptr %add.ptr.i295, align 4
  %bf.load177 = load i8, ptr %csi_mode, align 1
  %and.i.i317 = and i32 %or.i.i315, -225
  %91 = shl i8 %bf.load177, 5
  %92 = zext i8 %91 to i32
  %or.i.i318 = or i32 %and.i.i317, %92
  store i32 %or.i.i318, ptr %add.ptr.i295, align 4
  br label %if.end180

if.end180:                                        ; preds = %if.then156, %if.end.if.end180_crit_edge
  %call.i = tail call ptr @skb_push(ptr noundef nonnull %call.i.i.i.i, i32 noundef 8) #5
  %h2c_seq.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 6, i32 3
  %93 = ptrtoint ptr %h2c_seq.i to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %h2c_seq.i, align 32
  %conv129.i = zext i8 %94 to i32
  %shl130.i = shl nuw i32 %conv129.i, 24
  %or132.i = or i32 %shl130.i, 6
  %95 = tail call i32 @llvm.bswap.i32(i32 %or132.i) #5
  %96 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %95, ptr %call.i, align 4
  %97 = and i8 %94, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %97)
  %tobool.not.i = icmp eq i8 %97, 0
  %or165.i = select i1 %tobool.not.i, i32 16408, i32 24
  %98 = tail call i32 @llvm.bswap.i32(i32 %or165.i) #5
  %hdr1.i = getelementptr inbounds %struct.fwcmd_hdr, ptr %call.i, i32 0, i32 1
  %99 = ptrtoint ptr %hdr1.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %98, ptr %hdr1.i, align 4
  %100 = ptrtoint ptr %h2c_seq.i to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %h2c_seq.i, align 32
  %inc.i = add i8 %101, 1
  store i8 %inc.i, ptr %h2c_seq.i, align 32
  %call181 = tail call i32 @rtw89_h2c_tx(ptr noundef %rtwdev, ptr noundef nonnull %call.i.i.i.i, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call181)
  %tobool182.not = icmp eq i32 %call181, 0
  br i1 %tobool182.not, label %if.end180.cleanup_crit_edge, label %do.end186

if.end180.cleanup_crit_edge:                      ; preds = %if.end180
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end186:                                        ; preds = %if.end180
  call void @__sanitizer_cov_trace_pc() #7
  %dev187 = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 1
  %102 = ptrtoint ptr %dev187 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %dev187, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %103, ptr noundef nonnull @.str.24) #8
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %call.i.i.i.i, i32 noundef 1) #5
  br label %cleanup

cleanup:                                          ; preds = %do.end186, %if.end180.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -16, %do.end186 ], [ -12, %do.end ], [ 0, %if.end180.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__rtw89_debug(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtw89_fw_h2c_cxdrv_init(ptr noundef %rtwdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef 46, i32 noundef 2592) #5
  %tobool2.not.i.i = icmp eq ptr %call.i.i.i.i, null
  br i1 %tobool2.not.i.i, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.71) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i, i32 0, i32 19
  %2 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %3, i32 32
  store ptr %add.ptr.i.i.i, ptr %data.i.i.i, align 4
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i, i32 0, i32 16
  %4 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tail.i.i.i, align 8
  %add.ptr1.i.i.i = getelementptr i8, ptr %5, i32 32
  store ptr %add.ptr1.i.i.i, ptr %tail.i.i.i, align 8
  %6 = call ptr @memset(ptr %add.ptr.i.i.i, i32 0, i32 14)
  %init_info3 = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 51, i32 1, i32 5
  %call6 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i.i.i, i32 noundef 14) #5
  %7 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data.i.i.i, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %8, align 1
  %add.ptr.i = getelementptr i8, ptr %8, i32 1
  %10 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 12, ptr %add.ptr.i, align 1
  %11 = ptrtoint ptr %init_info3 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %init_info3, align 1
  %add.ptr.i86 = getelementptr i8, ptr %8, i32 2
  %13 = ptrtoint ptr %add.ptr.i86 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %add.ptr.i86, align 1
  %num = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 51, i32 1, i32 5, i32 0, i32 0, i32 1
  %14 = ptrtoint ptr %num to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %num, align 1
  %add.ptr.i87 = getelementptr i8, ptr %8, i32 3
  %16 = ptrtoint ptr %add.ptr.i87 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %add.ptr.i87, align 1
  %isolation = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 51, i32 1, i32 5, i32 0, i32 0, i32 2
  %17 = ptrtoint ptr %isolation to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %isolation, align 1
  %add.ptr.i88 = getelementptr i8, ptr %8, i32 4
  %19 = ptrtoint ptr %add.ptr.i88 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %18, ptr %add.ptr.i88, align 1
  %single_pos = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 51, i32 1, i32 5, i32 0, i32 0, i32 3
  %20 = ptrtoint ptr %single_pos to i32
  call void @__asan_load1_noabort(i32 %20)
  %bf.load = load i8, ptr %single_pos, align 1
  %bf.lshr = lshr i8 %bf.load, 7
  %add.ptr.i89 = getelementptr i8, ptr %8, i32 5
  %21 = ptrtoint ptr %add.ptr.i89 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %add.ptr.i89, align 1
  %and.i.i = and i8 %22, -2
  %or.i.i = or i8 %and.i.i, %bf.lshr
  store i8 %or.i.i, ptr %add.ptr.i89, align 1
  %bf.load7 = load i8, ptr %single_pos, align 1
  %and.i.i91 = and i8 %or.i.i, -3
  %23 = lshr i8 %bf.load7, 5
  %24 = and i8 %23, 2
  %or.i.i92 = or i8 %24, %and.i.i91
  store i8 %or.i.i92, ptr %add.ptr.i89, align 1
  %rfe_type = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 51, i32 1, i32 5, i32 0, i32 1
  %25 = ptrtoint ptr %rfe_type to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %rfe_type, align 1
  %add.ptr.i93 = getelementptr i8, ptr %8, i32 6
  %27 = ptrtoint ptr %add.ptr.i93 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %26, ptr %add.ptr.i93, align 1
  %cv = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 51, i32 1, i32 5, i32 0, i32 2
  %28 = ptrtoint ptr %cv to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %cv, align 1
  %add.ptr.i94 = getelementptr i8, ptr %8, i32 7
  %30 = ptrtoint ptr %add.ptr.i94 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %29, ptr %add.ptr.i94, align 1
  %bt_solo = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 51, i32 1, i32 5, i32 0, i32 3
  %31 = ptrtoint ptr %bt_solo to i32
  call void @__asan_load1_noabort(i32 %31)
  %bf.load9 = load i8, ptr %bt_solo, align 1
  %bf.lshr10 = lshr i8 %bf.load9, 7
  %add.ptr.i95 = getelementptr i8, ptr %8, i32 8
  %32 = ptrtoint ptr %add.ptr.i95 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %add.ptr.i95, align 1
  %and.i.i96 = and i8 %33, -2
  %or.i.i97 = or i8 %and.i.i96, %bf.lshr10
  store i8 %or.i.i97, ptr %add.ptr.i95, align 1
  %bf.load11 = load i8, ptr %bt_solo, align 1
  %and.i.i99 = and i8 %or.i.i97, -3
  %34 = lshr i8 %bf.load11, 5
  %35 = and i8 %34, 2
  %or.i.i100 = or i8 %35, %and.i.i99
  store i8 %or.i.i100, ptr %add.ptr.i95, align 1
  %bf.load14 = load i8, ptr %bt_solo, align 1
  %and.i.i102 = and i8 %or.i.i100, -5
  %36 = lshr i8 %bf.load14, 3
  %37 = and i8 %36, 4
  %or.i.i103 = or i8 %and.i.i102, %37
  store i8 %or.i.i103, ptr %add.ptr.i95, align 1
  %wl_guard_ch = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 51, i32 1, i32 5, i32 1
  %38 = ptrtoint ptr %wl_guard_ch to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %wl_guard_ch, align 2
  %add.ptr.i104 = getelementptr i8, ptr %8, i32 10
  %40 = ptrtoint ptr %add.ptr.i104 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %39, ptr %add.ptr.i104, align 1
  %wl_only = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 51, i32 1, i32 5, i32 2
  %41 = ptrtoint ptr %wl_only to i32
  call void @__asan_load1_noabort(i32 %41)
  %bf.load17 = load i8, ptr %wl_only, align 1
  %bf.lshr18 = lshr i8 %bf.load17, 7
  %add.ptr.i105 = getelementptr i8, ptr %8, i32 11
  %42 = ptrtoint ptr %add.ptr.i105 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %add.ptr.i105, align 1
  %and.i.i106 = and i8 %43, -2
  %or.i.i107 = or i8 %and.i.i106, %bf.lshr18
  store i8 %or.i.i107, ptr %add.ptr.i105, align 1
  %bf.load19 = load i8, ptr %wl_only, align 1
  %and.i.i109 = and i8 %or.i.i107, -3
  %44 = lshr i8 %bf.load19, 5
  %45 = and i8 %44, 2
  %or.i.i110 = or i8 %45, %and.i.i109
  store i8 %or.i.i110, ptr %add.ptr.i105, align 1
  %bf.load22 = load i8, ptr %wl_only, align 1
  %and.i.i112 = and i8 %or.i.i110, -5
  %46 = lshr i8 %bf.load22, 3
  %47 = and i8 %46, 4
  %or.i.i113 = or i8 %and.i.i112, %47
  store i8 %or.i.i113, ptr %add.ptr.i105, align 1
  %bf.load25 = load i8, ptr %wl_only, align 1
  %and.i.i115 = and i8 %or.i.i113, -9
  %48 = lshr i8 %bf.load25, 1
  %49 = and i8 %48, 8
  %or.i.i116 = or i8 %and.i.i115, %49
  store i8 %or.i.i116, ptr %add.ptr.i105, align 1
  %bf.load28 = load i8, ptr %wl_only, align 1
  %and.i.i118 = and i8 %or.i.i116, -17
  %50 = shl i8 %bf.load28, 1
  %51 = and i8 %50, 16
  %or.i.i119 = or i8 %and.i.i118, %51
  store i8 %or.i.i119, ptr %add.ptr.i105, align 1
  %call.i = tail call ptr @skb_push(ptr noundef nonnull %call.i.i.i.i, i32 noundef 8) #5
  %h2c_seq.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 6, i32 3
  %52 = ptrtoint ptr %h2c_seq.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %h2c_seq.i, align 32
  %conv129.i = zext i8 %53 to i32
  %shl130.i = shl nuw i32 %conv129.i, 24
  %or132.i = or i32 %shl130.i, 1346
  %54 = tail call i32 @llvm.bswap.i32(i32 %or132.i) #5
  %55 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %call.i, align 4
  %56 = and i8 %53, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool.not.i = icmp eq i8 %56, 0
  %or165.i = select i1 %tobool.not.i, i32 16406, i32 22
  %57 = tail call i32 @llvm.bswap.i32(i32 %or165.i) #5
  %hdr1.i = getelementptr inbounds %struct.fwcmd_hdr, ptr %call.i, i32 0, i32 1
  %58 = ptrtoint ptr %hdr1.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %hdr1.i, align 4
  %59 = ptrtoint ptr %h2c_seq.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %h2c_seq.i, align 32
  %inc.i = add i8 %60, 1
  store i8 %inc.i, ptr %h2c_seq.i, align 32
  %call31 = tail call i32 @rtw89_h2c_tx(ptr noundef %rtwdev, ptr noundef nonnull %call.i.i.i.i, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.end.cleanup_crit_edge, label %do.end36

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end36:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %dev37 = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 1
  %61 = ptrtoint ptr %dev37 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %dev37, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %62, ptr noundef nonnull @.str.24) #8
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %call.i.i.i.i, i32 noundef 1) #5
  br label %cleanup

cleanup:                                          ; preds = %do.end36, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -16, %do.end36 ], [ -12, %do.end ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtw89_fw_h2c_cxdrv_role(ptr noundef %rtwdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef 98, i32 noundef 2592) #5
  %tobool2.not.i.i = icmp eq ptr %call.i.i.i.i, null
  br i1 %tobool2.not.i.i, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.75) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i, i32 0, i32 19
  %2 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %3, i32 32
  store ptr %add.ptr.i.i.i, ptr %data.i.i.i, align 4
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i, i32 0, i32 16
  %4 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tail.i.i.i, align 8
  %add.ptr1.i.i.i = getelementptr i8, ptr %5, i32 32
  store ptr %add.ptr1.i.i.i, ptr %tail.i.i.i, align 8
  %6 = call ptr @memset(ptr %add.ptr.i.i.i, i32 0, i32 66)
  %role_info3 = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 51, i32 0, i32 0, i32 4
  %active_role = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 51, i32 0, i32 0, i32 4, i32 3
  %role_map = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 51, i32 0, i32 0, i32 4, i32 2
  %call4 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i.i.i, i32 noundef 66) #5
  %7 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data.i.i.i, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %8, align 1
  %add.ptr.i = getelementptr i8, ptr %8, i32 1
  %10 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 64, ptr %add.ptr.i, align 1
  %11 = ptrtoint ptr %role_info3 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %role_info3, align 2
  %add.ptr.i155 = getelementptr i8, ptr %8, i32 2
  %13 = ptrtoint ptr %add.ptr.i155 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %add.ptr.i155, align 1
  %link_mode = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 51, i32 0, i32 0, i32 4, i32 1
  %14 = ptrtoint ptr %link_mode to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %link_mode, align 1
  %add.ptr.i156 = getelementptr i8, ptr %8, i32 3
  %16 = ptrtoint ptr %add.ptr.i156 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %add.ptr.i156, align 1
  %17 = ptrtoint ptr %role_map to i32
  call void @__asan_load2_noabort(i32 %17)
  %bf.load = load i16, ptr %role_map, align 2
  %add.ptr.i157 = getelementptr i8, ptr %8, i32 4
  %18 = ptrtoint ptr %add.ptr.i157 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %add.ptr.i157, align 2
  %and.i.i = and i16 %19, -257
  %20 = lshr i16 %bf.load, 7
  %21 = and i16 %20, 256
  %or.i.i = or i16 %and.i.i, %21
  store i16 %or.i.i, ptr %add.ptr.i157, align 2
  %bf.load5 = load i16, ptr %role_map, align 2
  %and.i.i159 = and i16 %or.i.i, -513
  %22 = lshr i16 %bf.load5, 5
  %23 = and i16 %22, 512
  %or.i.i160 = or i16 %23, %and.i.i159
  store i16 %or.i.i160, ptr %add.ptr.i157, align 2
  %bf.load7 = load i16, ptr %role_map, align 2
  %and.i.i162 = and i16 %or.i.i160, -1025
  %24 = lshr i16 %bf.load7, 3
  %25 = and i16 %24, 1024
  %or.i.i163 = or i16 %and.i.i162, %25
  store i16 %or.i.i163, ptr %add.ptr.i157, align 2
  %bf.load10 = load i16, ptr %role_map, align 2
  %and.i.i165 = and i16 %or.i.i163, -2049
  %26 = lshr i16 %bf.load10, 1
  %27 = and i16 %26, 2048
  %or.i.i166 = or i16 %and.i.i165, %27
  store i16 %or.i.i166, ptr %add.ptr.i157, align 2
  %bf.load13 = load i16, ptr %role_map, align 2
  %and.i.i168 = and i16 %or.i.i166, -4097
  %28 = shl i16 %bf.load13, 1
  %29 = and i16 %28, 4096
  %or.i.i169 = or i16 %and.i.i168, %29
  store i16 %or.i.i169, ptr %add.ptr.i157, align 2
  %bf.load16 = load i16, ptr %role_map, align 2
  %and.i.i171 = and i16 %or.i.i169, -8193
  %30 = shl i16 %bf.load16, 3
  %31 = and i16 %30, 8192
  %or.i.i172 = or i16 %and.i.i171, %31
  store i16 %or.i.i172, ptr %add.ptr.i157, align 2
  %bf.load19 = load i16, ptr %role_map, align 2
  %and.i.i174 = and i16 %or.i.i172, -16385
  %32 = shl i16 %bf.load19, 5
  %33 = and i16 %32, 16384
  %or.i.i175 = or i16 %and.i.i174, %33
  store i16 %or.i.i175, ptr %add.ptr.i157, align 2
  %bf.load22 = load i16, ptr %role_map, align 2
  %and.i.i177 = and i16 %or.i.i175, 32767
  %34 = shl i16 %bf.load22, 7
  %bf.clear24 = and i16 %34, -32768
  %or.i.i178 = or i16 %and.i.i177, %bf.clear24
  store i16 %or.i.i178, ptr %add.ptr.i157, align 2
  %bf.load25 = load i16, ptr %role_map, align 2
  %bf.lshr26 = lshr i16 %bf.load25, 7
  %bf.clear27 = and i16 %bf.lshr26, 1
  %and.i.i180 = and i16 %or.i.i178, -2
  %or.i.i181 = or i16 %and.i.i180, %bf.clear27
  store i16 %or.i.i181, ptr %add.ptr.i157, align 2
  %bf.load28 = load i16, ptr %role_map, align 2
  %and.i.i183 = and i16 %or.i.i181, -3
  %35 = lshr i16 %bf.load28, 5
  %36 = and i16 %35, 2
  %or.i.i184 = or i16 %and.i.i183, %36
  store i16 %or.i.i184, ptr %add.ptr.i157, align 2
  %bf.load31 = load i16, ptr %role_map, align 2
  %and.i.i186 = and i16 %or.i.i184, -5
  %37 = lshr i16 %bf.load31, 3
  %38 = and i16 %37, 4
  %or.i.i187 = or i16 %and.i.i186, %38
  store i16 %or.i.i187, ptr %add.ptr.i157, align 2
  %bf.load34 = load i16, ptr %role_map, align 2
  %and.i.i189 = and i16 %or.i.i187, -9
  %39 = lshr i16 %bf.load34, 1
  %40 = and i16 %39, 8
  %or.i.i190 = or i16 %and.i.i189, %40
  store i16 %or.i.i190, ptr %add.ptr.i157, align 2
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end
  %i.0249 = phi i32 [ 0, %if.end ], [ %inc, %for.body.for.body_crit_edge ]
  %active.0248 = phi ptr [ %active_role, %if.end ], [ %incdec.ptr, %for.body.for.body_crit_edge ]
  %41 = ptrtoint ptr %active.0248 to i32
  call void @__asan_load2_noabort(i32 %41)
  %bf.load37 = load i16, ptr %active.0248, align 2
  %bf.lshr38 = lshr i16 %bf.load37, 15
  %bf.cast = trunc i16 %bf.lshr38 to i8
  %mul.i = mul nuw nsw i32 %i.0249, 12
  %add.i = add nuw nsw i32 %mul.i, 6
  %add.ptr.i191 = getelementptr i8, ptr %8, i32 %add.i
  %42 = ptrtoint ptr %add.ptr.i191 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %add.ptr.i191, align 1
  %and.i.i192 = and i8 %43, -2
  %or.i.i193 = or i8 %and.i.i192, %bf.cast
  store i8 %or.i.i193, ptr %add.ptr.i191, align 1
  %bf.load39 = load i16, ptr %active.0248, align 2
  %and.i.i197 = and i8 %or.i.i193, -15
  %sh.diff = lshr i16 %bf.load39, 11
  %tr.sh.diff = trunc i16 %sh.diff to i8
  %44 = and i8 %tr.sh.diff, 14
  %or.i.i198 = or i8 %44, %and.i.i197
  store i8 %or.i.i198, ptr %add.ptr.i191, align 1
  %bf.load43 = load i16, ptr %active.0248, align 2
  %and.i.i202 = and i8 %or.i.i198, -17
  %sh.diff242 = lshr i16 %bf.load43, 7
  %tr.sh.diff243 = trunc i16 %sh.diff242 to i8
  %45 = and i8 %tr.sh.diff243, 16
  %or.i.i203 = or i8 %and.i.i202, %45
  store i8 %or.i.i203, ptr %add.ptr.i191, align 1
  %bf.load47 = load i16, ptr %active.0248, align 2
  %and.i.i207 = and i8 %or.i.i203, -33
  %sh.diff244 = lshr i16 %bf.load47, 5
  %tr.sh.diff245 = trunc i16 %sh.diff244 to i8
  %46 = and i8 %tr.sh.diff245, 32
  %or.i.i208 = or i8 %and.i.i207, %46
  store i8 %or.i.i208, ptr %add.ptr.i191, align 1
  %bf.load51 = load i16, ptr %active.0248, align 2
  %and.i.i212 = and i8 %or.i.i208, 63
  %sh.diff246 = lshr i16 %bf.load51, 2
  %tr.sh.diff247 = trunc i16 %sh.diff246 to i8
  %bf.cast54 = and i8 %tr.sh.diff247, -64
  %or.i.i213 = or i8 %and.i.i212, %bf.cast54
  store i8 %or.i.i213, ptr %add.ptr.i191, align 1
  %bf.load55 = load i16, ptr %active.0248, align 2
  %47 = trunc i16 %bf.load55 to i8
  %48 = lshr i8 %47, 7
  %add.i215 = add nuw nsw i32 %mul.i, 7
  %add.ptr.i216 = getelementptr i8, ptr %8, i32 %add.i215
  %49 = ptrtoint ptr %add.ptr.i216 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %add.ptr.i216, align 1
  %and.i.i217 = and i8 %50, -2
  %or.i.i218 = or i8 %and.i.i217, %48
  store i8 %or.i.i218, ptr %add.ptr.i216, align 1
  %bf.load59 = load i16, ptr %active.0248, align 2
  %51 = trunc i16 %bf.load59 to i8
  %bf.cast61 = shl i8 %51, 1
  %or.i.i223 = or i8 %bf.cast61, %48
  store i8 %or.i.i223, ptr %add.ptr.i216, align 1
  %role = getelementptr inbounds %struct.rtw89_btc_wl_active_role, ptr %active.0248, i32 0, i32 1
  %52 = ptrtoint ptr %role to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %role, align 2
  %add.i225 = add nuw nsw i32 %mul.i, 8
  %add.ptr.i226 = getelementptr i8, ptr %8, i32 %add.i225
  %54 = ptrtoint ptr %add.ptr.i226 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %53, ptr %add.ptr.i226, align 1
  %ch = getelementptr inbounds %struct.rtw89_btc_wl_active_role, ptr %active.0248, i32 0, i32 2
  %55 = ptrtoint ptr %ch to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %ch, align 1
  %add.i228 = add nuw nsw i32 %mul.i, 9
  %add.ptr.i229 = getelementptr i8, ptr %8, i32 %add.i228
  %57 = ptrtoint ptr %add.ptr.i229 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %56, ptr %add.ptr.i229, align 1
  %tx_lvl = getelementptr inbounds %struct.rtw89_btc_wl_active_role, ptr %active.0248, i32 0, i32 3
  %58 = ptrtoint ptr %tx_lvl to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %tx_lvl, align 2
  %add.i231 = add nuw nsw i32 %mul.i, 10
  %add.ptr.i232 = getelementptr i8, ptr %8, i32 %add.i231
  %60 = tail call i16 @llvm.bswap.i16(i16 %59) #5
  %61 = ptrtoint ptr %add.ptr.i232 to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 %60, ptr %add.ptr.i232, align 2
  %rx_lvl = getelementptr inbounds %struct.rtw89_btc_wl_active_role, ptr %active.0248, i32 0, i32 4
  %62 = ptrtoint ptr %rx_lvl to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %rx_lvl, align 2
  %add.i234 = add nuw nsw i32 %mul.i, 12
  %add.ptr.i235 = getelementptr i8, ptr %8, i32 %add.i234
  %64 = tail call i16 @llvm.bswap.i16(i16 %63) #5
  %65 = ptrtoint ptr %add.ptr.i235 to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 %64, ptr %add.ptr.i235, align 2
  %tx_rate = getelementptr inbounds %struct.rtw89_btc_wl_active_role, ptr %active.0248, i32 0, i32 5
  %66 = ptrtoint ptr %tx_rate to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %tx_rate, align 2
  %add.i237 = add nuw nsw i32 %mul.i, 14
  %add.ptr.i238 = getelementptr i8, ptr %8, i32 %add.i237
  %68 = tail call i16 @llvm.bswap.i16(i16 %67) #5
  %69 = ptrtoint ptr %add.ptr.i238 to i32
  call void @__asan_store2_noabort(i32 %69)
  store i16 %68, ptr %add.ptr.i238, align 2
  %rx_rate = getelementptr inbounds %struct.rtw89_btc_wl_active_role, ptr %active.0248, i32 0, i32 6
  %70 = ptrtoint ptr %rx_rate to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %rx_rate, align 2
  %add.i240 = add nuw nsw i32 %mul.i, 16
  %add.ptr.i241 = getelementptr i8, ptr %8, i32 %add.i240
  %72 = tail call i16 @llvm.bswap.i16(i16 %71) #5
  %73 = ptrtoint ptr %add.ptr.i241 to i32
  call void @__asan_store2_noabort(i32 %73)
  store i16 %72, ptr %add.ptr.i241, align 2
  %inc = add nuw nsw i32 %i.0249, 1
  %incdec.ptr = getelementptr %struct.rtw89_btc_wl_active_role, ptr %active.0248, i32 1
  %exitcond.not = icmp eq i32 %inc, 5
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.body
  %call.i = tail call ptr @skb_push(ptr noundef nonnull %call.i.i.i.i, i32 noundef 8) #5
  %h2c_seq.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 6, i32 3
  %74 = ptrtoint ptr %h2c_seq.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %h2c_seq.i, align 32
  %conv129.i = zext i8 %75 to i32
  %shl130.i = shl nuw i32 %conv129.i, 24
  %or132.i = or i32 %shl130.i, 1346
  %76 = tail call i32 @llvm.bswap.i32(i32 %or132.i) #5
  %77 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %76, ptr %call.i, align 4
  %78 = and i8 %75, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %78)
  %tobool.not.i = icmp eq i8 %78, 0
  %or165.i = select i1 %tobool.not.i, i32 16458, i32 74
  %79 = tail call i32 @llvm.bswap.i32(i32 %or165.i) #5
  %hdr1.i = getelementptr inbounds %struct.fwcmd_hdr, ptr %call.i, i32 0, i32 1
  %80 = ptrtoint ptr %hdr1.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %79, ptr %hdr1.i, align 4
  %81 = ptrtoint ptr %h2c_seq.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %h2c_seq.i, align 32
  %inc.i = add i8 %82, 1
  store i8 %inc.i, ptr %h2c_seq.i, align 32
  %call62 = tail call i32 @rtw89_h2c_tx(ptr noundef %rtwdev, ptr noundef nonnull %call.i.i.i.i, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %tobool63.not = icmp eq i32 %call62, 0
  br i1 %tobool63.not, label %for.end.cleanup_crit_edge, label %do.end67

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end67:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  %dev68 = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 1
  %83 = ptrtoint ptr %dev68 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %dev68, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %84, ptr noundef nonnull @.str.24) #8
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %call.i.i.i.i, i32 noundef 1) #5
  br label %cleanup

cleanup:                                          ; preds = %do.end67, %for.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -16, %do.end67 ], [ -12, %do.end ], [ 0, %for.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtw89_fw_h2c_cxdrv_ctrl(ptr noundef %rtwdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef 38, i32 noundef 2592) #5
  %tobool2.not.i.i = icmp eq ptr %call.i.i.i.i, null
  br i1 %tobool2.not.i.i, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.79) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i, i32 0, i32 19
  %2 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %3, i32 32
  store ptr %add.ptr.i.i.i, ptr %data.i.i.i, align 4
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i, i32 0, i32 16
  %4 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tail.i.i.i, align 8
  %add.ptr1.i.i.i = getelementptr i8, ptr %5, i32 32
  store ptr %add.ptr1.i.i.i, ptr %tail.i.i.i, align 8
  %6 = call ptr @memset(ptr %add.ptr.i.i.i, i32 0, i32 6)
  %ctrl2 = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 51, i32 2
  %call3 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i.i.i, i32 noundef 6) #5
  %7 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data.i.i.i, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 6, ptr %8, align 1
  %add.ptr.i = getelementptr i8, ptr %8, i32 1
  %10 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 4, ptr %add.ptr.i, align 1
  %11 = ptrtoint ptr %ctrl2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %bf.load = load i32, ptr %ctrl2, align 4
  %add.ptr.i40 = getelementptr i8, ptr %8, i32 2
  %12 = ptrtoint ptr %add.ptr.i40 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %add.ptr.i40, align 4
  %and.i.i = and i32 %13, -16777217
  %14 = lshr i32 %bf.load, 7
  %15 = and i32 %14, 16777216
  %or.i.i = or i32 %and.i.i, %15
  store i32 %or.i.i, ptr %add.ptr.i40, align 4
  %bf.load4 = load i32, ptr %ctrl2, align 4
  %and.i.i42 = and i32 %or.i.i, -33554433
  %16 = lshr i32 %bf.load4, 5
  %17 = and i32 %16, 33554432
  %or.i.i43 = or i32 %17, %and.i.i42
  store i32 %or.i.i43, ptr %add.ptr.i40, align 4
  %bf.load6 = load i32, ptr %ctrl2, align 4
  %and.i.i45 = and i32 %or.i.i43, -67108865
  %18 = lshr i32 %bf.load6, 3
  %19 = and i32 %18, 67108864
  %or.i.i46 = or i32 %and.i.i45, %19
  store i32 %or.i.i46, ptr %add.ptr.i40, align 4
  %bf.load9 = load i32, ptr %ctrl2, align 4
  %and.i.i48 = and i32 %or.i.i46, 117504255
  %20 = lshr i32 %bf.load9, 10
  %21 = and i32 %20, 524280
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #5
  %or.i.i49 = or i32 %22, %and.i.i48
  %23 = ptrtoint ptr %add.ptr.i40 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %or.i.i49, ptr %add.ptr.i40, align 4
  %call.i = tail call ptr @skb_push(ptr noundef nonnull %call.i.i.i.i, i32 noundef 8) #5
  %h2c_seq.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 6, i32 3
  %24 = ptrtoint ptr %h2c_seq.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %h2c_seq.i, align 32
  %conv129.i = zext i8 %25 to i32
  %shl130.i = shl nuw i32 %conv129.i, 24
  %or132.i = or i32 %shl130.i, 1346
  %26 = tail call i32 @llvm.bswap.i32(i32 %or132.i) #5
  %27 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %call.i, align 4
  %28 = and i8 %25, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool.not.i = icmp eq i8 %28, 0
  %or165.i = select i1 %tobool.not.i, i32 16398, i32 14
  %29 = tail call i32 @llvm.bswap.i32(i32 %or165.i) #5
  %hdr1.i = getelementptr inbounds %struct.fwcmd_hdr, ptr %call.i, i32 0, i32 1
  %30 = ptrtoint ptr %hdr1.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %hdr1.i, align 4
  %31 = ptrtoint ptr %h2c_seq.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %h2c_seq.i, align 32
  %inc.i = add i8 %32, 1
  store i8 %inc.i, ptr %h2c_seq.i, align 32
  %call12 = tail call i32 @rtw89_h2c_tx(ptr noundef %rtwdev, ptr noundef nonnull %call.i.i.i.i, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end.cleanup_crit_edge, label %do.end17

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end17:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %dev18 = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 1
  %33 = ptrtoint ptr %dev18 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev18, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %34, ptr noundef nonnull @.str.24) #8
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %call.i.i.i.i, i32 noundef 1) #5
  br label %cleanup

cleanup:                                          ; preds = %do.end17, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -16, %do.end17 ], [ -12, %do.end ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtw89_fw_h2c_cxdrv_rfk(ptr noundef %rtwdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef 38, i32 noundef 2592) #5
  %tobool2.not.i.i = icmp eq ptr %call.i.i.i.i, null
  br i1 %tobool2.not.i.i, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.79) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i, i32 0, i32 19
  %2 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %3, i32 32
  store ptr %add.ptr.i.i.i, ptr %data.i.i.i, align 4
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i, i32 0, i32 16
  %4 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tail.i.i.i, align 8
  %add.ptr1.i.i.i = getelementptr i8, ptr %5, i32 32
  store ptr %add.ptr1.i.i.i, ptr %tail.i.i.i, align 8
  %6 = call ptr @memset(ptr %add.ptr.i.i.i, i32 0, i32 6)
  %rfk_info3 = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 51, i32 0, i32 0, i32 1
  %call4 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i.i.i, i32 noundef 6) #5
  %7 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data.i.i.i, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 4, ptr %8, align 1
  %add.ptr.i = getelementptr i8, ptr %8, i32 1
  %10 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 4, ptr %add.ptr.i, align 1
  %11 = ptrtoint ptr %rfk_info3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %bf.load = load i32, ptr %rfk_info3, align 4
  %add.ptr.i47 = getelementptr i8, ptr %8, i32 2
  %12 = ptrtoint ptr %add.ptr.i47 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %add.ptr.i47, align 4
  %and.i.i = and i32 %13, -50331649
  %14 = lshr i32 %bf.load, 6
  %15 = and i32 %14, 50331648
  %or.i.i = or i32 %and.i.i, %15
  store i32 %or.i.i, ptr %add.ptr.i47, align 4
  %bf.load5 = load i32, ptr %rfk_info3, align 4
  %bf.clear = and i32 %bf.load5, 1006632960
  %and.i.i49 = and i32 %or.i.i, -1006632961
  %or.i.i50 = or i32 %and.i.i49, %bf.clear
  store i32 %or.i.i50, ptr %add.ptr.i47, align 4
  %bf.load7 = load i32, ptr %rfk_info3, align 4
  %and.i.i52 = and i32 %or.i.i50, 1073741823
  %16 = shl i32 %bf.load7, 6
  %bf.clear9 = and i32 %16, -1073741824
  %or.i.i53 = or i32 %bf.clear9, %and.i.i52
  store i32 %or.i.i53, ptr %add.ptr.i47, align 4
  %bf.load10 = load i32, ptr %rfk_info3, align 4
  %and.i.i55 = and i32 %or.i.i53, -196609
  %17 = lshr i32 %bf.load10, 6
  %18 = and i32 %17, 196608
  %or.i.i56 = or i32 %and.i.i55, %18
  store i32 %or.i.i56, ptr %add.ptr.i47, align 4
  %bf.load13 = load i32, ptr %rfk_info3, align 4
  %and.i.i58 = and i32 %or.i.i56, -16515841
  %19 = lshr i32 %bf.load13, 4
  %20 = and i32 %19, 261120
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #5
  %or.i.i59 = or i32 %21, %and.i.i58
  %22 = ptrtoint ptr %add.ptr.i47 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %or.i.i59, ptr %add.ptr.i47, align 4
  %call.i = tail call ptr @skb_push(ptr noundef nonnull %call.i.i.i.i, i32 noundef 8) #5
  %h2c_seq.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 6, i32 3
  %23 = ptrtoint ptr %h2c_seq.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %h2c_seq.i, align 32
  %conv129.i = zext i8 %24 to i32
  %shl130.i = shl nuw i32 %conv129.i, 24
  %or132.i = or i32 %shl130.i, 1346
  %25 = tail call i32 @llvm.bswap.i32(i32 %or132.i) #5
  %26 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %call.i, align 4
  %27 = and i8 %24, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool.not.i = icmp eq i8 %27, 0
  %or165.i = select i1 %tobool.not.i, i32 16398, i32 14
  %28 = tail call i32 @llvm.bswap.i32(i32 %or165.i) #5
  %hdr1.i = getelementptr inbounds %struct.fwcmd_hdr, ptr %call.i, i32 0, i32 1
  %29 = ptrtoint ptr %hdr1.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %hdr1.i, align 4
  %30 = ptrtoint ptr %h2c_seq.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %h2c_seq.i, align 32
  %inc.i = add i8 %31, 1
  store i8 %inc.i, ptr %h2c_seq.i, align 32
  %call16 = tail call i32 @rtw89_h2c_tx(ptr noundef %rtwdev, ptr noundef nonnull %call.i.i.i.i, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end.cleanup_crit_edge, label %do.end21

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end21:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %dev22 = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 1
  %32 = ptrtoint ptr %dev22 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev22, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %33, ptr noundef nonnull @.str.24) #8
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %call.i.i.i.i, i32 noundef 1) #5
  br label %cleanup

cleanup:                                          ; preds = %do.end21, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -16, %do.end21 ], [ -12, %do.end ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtw89_fw_h2c_rf_reg(ptr noundef %rtwdev, ptr nocapture noundef readonly %info, i16 noundef zeroext %len, i8 noundef zeroext %page) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %info, align 4
  %conv1 = zext i16 %len to i32
  %add1.i.i = add nuw nsw i32 %conv1, 32
  %call.i.i.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef %add1.i.i, i32 noundef 2592) #5
  %tobool2.not.i.i = icmp eq ptr %call.i.i.i.i, null
  br i1 %tobool2.not.i.i, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.86) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i, i32 0, i32 19
  %4 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %5, i32 32
  store ptr %add.ptr.i.i.i, ptr %data.i.i.i, align 4
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i, i32 0, i32 16
  %6 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tail.i.i.i, align 8
  %add.ptr1.i.i.i = getelementptr i8, ptr %7, i32 32
  store ptr %add.ptr1.i.i.i, ptr %tail.i.i.i, align 8
  %8 = call ptr @memset(ptr %add.ptr.i.i.i, i32 0, i32 %conv1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  %idxprom = zext i8 %page to i32
  %arrayidx = getelementptr %struct.rtw89_fw_h2c_rf_reg_info, ptr %info, i32 0, i32 1, i32 %idxprom
  %call.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i.i.i, i32 noundef %conv1) #5
  %9 = call ptr @memcpy(ptr %call.i, ptr %arrayidx, i32 %conv1)
  %call.i25 = tail call ptr @skb_push(ptr noundef nonnull %call.i.i.i.i, i32 noundef 8) #5
  %h2c_seq.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 6, i32 3
  %10 = ptrtoint ptr %h2c_seq.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %h2c_seq.i, align 32
  %or72.i = select i1 %cmp, i32 34, i32 38
  %shl97.i = shl nuw nsw i32 %idxprom, 8
  %or99.i = or i32 %or72.i, %shl97.i
  %conv129.i = zext i8 %11 to i32
  %shl130.i = shl nuw i32 %conv129.i, 24
  %or132.i = or i32 %shl130.i, %or99.i
  %12 = tail call i32 @llvm.bswap.i32(i32 %or132.i) #5
  %13 = ptrtoint ptr %call.i25 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %call.i25, align 4
  %add.i = add nuw nsw i32 %conv1, 8
  %14 = and i8 %11, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not.i = icmp eq i8 %14, 0
  %and158.i = and i32 %add.i, 16383
  %cond.i = select i1 %tobool.not.i, i32 16384, i32 0
  %or165.i = or i32 %cond.i, %and158.i
  %15 = tail call i32 @llvm.bswap.i32(i32 %or165.i) #5
  %hdr1.i = getelementptr inbounds %struct.fwcmd_hdr, ptr %call.i25, i32 0, i32 1
  %16 = ptrtoint ptr %hdr1.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %hdr1.i, align 4
  %17 = ptrtoint ptr %h2c_seq.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %h2c_seq.i, align 32
  %inc.i = add i8 %18, 1
  store i8 %inc.i, ptr %h2c_seq.i, align 32
  %call5 = tail call i32 @rtw89_h2c_tx(ptr noundef %rtwdev, ptr noundef nonnull %call.i.i.i.i, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end.cleanup_crit_edge, label %do.end10

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %dev11 = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 1
  %19 = ptrtoint ptr %dev11 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev11, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.24) #8
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %call.i.i.i.i, i32 noundef 1) #5
  br label %cleanup

cleanup:                                          ; preds = %do.end10, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -16, %do.end10 ], [ -12, %do.end ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtw89_fw_h2c_raw_with_hdr(ptr noundef %rtwdev, i8 noundef zeroext %h2c_class, i8 noundef zeroext %h2c_func, ptr nocapture noundef readonly %buf, i16 noundef zeroext %len, i1 noundef zeroext %rack, i1 noundef zeroext %dack) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i16 %len to i32
  %add1.i.i = add nuw nsw i32 %conv, 32
  %call.i.i.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef %add1.i.i, i32 noundef 2592) #5
  %tobool2.not.i.i = icmp eq ptr %call.i.i.i.i, null
  br i1 %tobool2.not.i.i, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.90) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i, i32 0, i32 19
  %2 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %3, i32 32
  store ptr %add.ptr.i.i.i, ptr %data.i.i.i, align 4
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i, i32 0, i32 16
  %4 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tail.i.i.i, align 8
  %add.ptr1.i.i.i = getelementptr i8, ptr %5, i32 32
  store ptr %add.ptr1.i.i.i, ptr %tail.i.i.i, align 8
  %6 = call ptr @memset(ptr %add.ptr.i.i.i, i32 0, i32 %conv)
  %call.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i.i.i, i32 noundef %conv) #5
  %7 = call ptr @memcpy(ptr %call.i, ptr %buf, i32 %conv)
  %call.i24 = tail call ptr @skb_push(ptr noundef nonnull %call.i.i.i.i, i32 noundef 8) #5
  %h2c_seq.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 6, i32 3
  %8 = ptrtoint ptr %h2c_seq.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %h2c_seq.i, align 32
  %conv69.i = zext i8 %h2c_class to i32
  %shl70.i = shl nuw nsw i32 %conv69.i, 2
  %and71.i = and i32 %shl70.i, 252
  %conv96.i = zext i8 %h2c_func to i32
  %shl97.i = shl nuw nsw i32 %conv96.i, 8
  %or72.i = or i32 %and71.i, %shl97.i
  %conv129.i = zext i8 %9 to i32
  %shl130.i = shl nuw i32 %conv129.i, 24
  %or99.i = or i32 %shl130.i, %or72.i
  %or132.i = or i32 %or99.i, 2
  %10 = tail call i32 @llvm.bswap.i32(i32 %or132.i) #5
  %11 = ptrtoint ptr %call.i24 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %call.i24, align 4
  %add.i = add nuw nsw i32 %conv, 8
  %12 = and i8 %9, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not.i = icmp eq i8 %12, 0
  %spec.select.i = or i1 %tobool.not.i, %rack
  %and158.i = and i32 %add.i, 16383
  %cond.i = select i1 %spec.select.i, i32 16384, i32 0
  %cond164.i = select i1 %dack, i32 32768, i32 0
  %or161.i = or i32 %and158.i, %cond164.i
  %or165.i = or i32 %or161.i, %cond.i
  %13 = tail call i32 @llvm.bswap.i32(i32 %or165.i) #5
  %hdr1.i = getelementptr inbounds %struct.fwcmd_hdr, ptr %call.i24, i32 0, i32 1
  %14 = ptrtoint ptr %hdr1.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %hdr1.i, align 4
  %15 = ptrtoint ptr %h2c_seq.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %h2c_seq.i, align 32
  %inc.i = add i8 %16, 1
  store i8 %inc.i, ptr %h2c_seq.i, align 32
  %call7 = tail call i32 @rtw89_h2c_tx(ptr noundef %rtwdev, ptr noundef nonnull %call.i.i.i.i, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end.cleanup_crit_edge, label %do.end12

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end12:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %dev13 = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 1
  %17 = ptrtoint ptr %dev13 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev13, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.24) #8
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %call.i.i.i.i, i32 noundef 1) #5
  br label %cleanup

cleanup:                                          ; preds = %do.end12, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -16, %do.end12 ], [ -12, %do.end ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtw89_fw_h2c_raw(ptr noundef %rtwdev, ptr nocapture noundef readonly %buf, i16 noundef zeroext %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i16 %len to i32
  %add1.i.i = add nuw nsw i32 %conv, 24
  %call.i.i.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef %add1.i.i, i32 noundef 2592) #5
  %tobool2.not.i.i = icmp eq ptr %call.i.i.i.i, null
  br i1 %tobool2.not.i.i, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.94) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i, i32 0, i32 19
  %2 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %3, i32 24
  store ptr %add.ptr.i.i.i, ptr %data.i.i.i, align 4
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i, i32 0, i32 16
  %4 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tail.i.i.i, align 8
  %add.ptr1.i.i.i = getelementptr i8, ptr %5, i32 24
  store ptr %add.ptr1.i.i.i, ptr %tail.i.i.i, align 8
  %6 = call ptr @memset(ptr %add.ptr.i.i.i, i32 0, i32 %conv)
  %call.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i.i.i, i32 noundef %conv) #5
  %7 = call ptr @memcpy(ptr %call.i, ptr %buf, i32 %conv)
  %call3 = tail call i32 @rtw89_h2c_tx(ptr noundef %rtwdev, ptr noundef nonnull %call.i.i.i.i, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %do.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %dev9 = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 1
  %8 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev9, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.24) #8
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %call.i.i.i.i, i32 noundef 1) #5
  br label %cleanup

cleanup:                                          ; preds = %do.end8, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -16, %do.end8 ], [ -12, %do.end ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw89_fw_send_all_early_h2c(ptr noundef %rtwdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 10, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !333

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1458, i32 noundef 9, ptr noundef null) #5
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %early_h2c_list = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 22
  %1 = ptrtoint ptr %early_h2c_list to i32
  call void @__asan_load4_noabort(i32 %1)
  %early_h2c.042 = load ptr, ptr %early_h2c_list, align 4
  %cmp26.not43 = icmp eq ptr %early_h2c.042, %early_h2c_list
  br i1 %cmp26.not43, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end.for.body_crit_edge
  %early_h2c.044 = phi ptr [ %early_h2c.0, %for.body.for.body_crit_edge ], [ %early_h2c.042, %if.end.for.body_crit_edge ]
  %h2c = getelementptr inbounds %struct.rtw89_early_h2c, ptr %early_h2c.044, i32 0, i32 1
  %2 = ptrtoint ptr %h2c to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %h2c, align 4
  %h2c_len = getelementptr inbounds %struct.rtw89_early_h2c, ptr %early_h2c.044, i32 0, i32 2
  %4 = ptrtoint ptr %h2c_len to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %h2c_len, align 4
  %call29 = tail call i32 @rtw89_fw_h2c_raw(ptr noundef %rtwdev, ptr noundef %3, i16 noundef zeroext %5)
  %6 = ptrtoint ptr %early_h2c.044 to i32
  call void @__asan_load4_noabort(i32 %6)
  %early_h2c.0 = load ptr, ptr %early_h2c.044, align 4
  %cmp26.not = icmp eq ptr %early_h2c.0, %early_h2c_list
  br i1 %cmp26.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw89_fw_free_all_early_h2c(ptr noundef %rtwdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %mutex = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 10
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #5
  %early_h2c_list = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 22
  %0 = ptrtoint ptr %early_h2c_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %early_h2c_list, align 4
  %cmp.not23 = icmp eq ptr %1, %early_h2c_list
  br i1 %cmp.not23, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body:                                         ; preds = %list_del.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %early_h2c.024 = phi ptr [ %tmp.0, %list_del.exit.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  %2 = ptrtoint ptr %early_h2c.024 to i32
  call void @__asan_load4_noabort(i32 %2)
  %tmp.0 = load ptr, ptr %early_h2c.024, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %early_h2c.024) #5
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %early_h2c.024, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i, align 4
  %5 = ptrtoint ptr %early_h2c.024 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %early_h2c.024, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %9 = ptrtoint ptr %early_h2c.024 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 256 to ptr), ptr %early_h2c.024, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %early_h2c.024, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %h2c = getelementptr inbounds %struct.rtw89_early_h2c, ptr %early_h2c.024, i32 0, i32 1
  %11 = ptrtoint ptr %h2c to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %h2c, align 4
  tail call void @kfree(ptr noundef %12) #5
  tail call void @kfree(ptr noundef %early_h2c.024) #5
  %cmp.not = icmp eq ptr %tmp.0, %early_h2c_list
  br i1 %cmp.not, label %list_del.exit.for.end_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %list_del.exit.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw89_fw_c2h_irqsafe(ptr noundef %rtwdev, ptr noundef %c2h) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %c2h_queue = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 20
  tail call void @skb_queue_tail(ptr noundef %c2h_queue, ptr noundef %c2h) #5
  %0 = ptrtoint ptr %rtwdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rtwdev, align 128
  %c2h_work = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 21
  tail call void @ieee80211_queue_work(ptr noundef %1, ptr noundef %c2h_work) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_tail(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_queue_work(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw89_fw_c2h_work(ptr noundef %work) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -920
  %c2h_queue = getelementptr i8, ptr %work, i32 -56
  %0 = ptrtoint ptr %c2h_queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %c2h_queue, align 32
  %cmp.not17 = icmp eq ptr %1, %c2h_queue
  br i1 %cmp.not17, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %mutex = getelementptr i8, ptr %work, i32 -528
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %skb.018 = phi ptr [ %1, %for.body.lr.ph ], [ %tmp1.0, %for.body.for.body_crit_edge ]
  %2 = ptrtoint ptr %skb.018 to i32
  call void @__asan_load4_noabort(i32 %2)
  %tmp1.0 = load ptr, ptr %skb.018, align 8
  tail call void @skb_unlink(ptr noundef %skb.018, ptr noundef %c2h_queue) #5
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #5
  tail call fastcc void @rtw89_fw_c2h_cmd_handle(ptr noundef %add.ptr, ptr noundef %skb.018)
  tail call void @mutex_unlock(ptr noundef %mutex) #5
  tail call void @__dev_kfree_skb_any(ptr noundef %skb.018, i32 noundef 1) #5
  %cmp.not = icmp eq ptr %tmp1.0, %c2h_queue
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_unlink(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rtw89_fw_c2h_cmd_handle(ptr noundef %rtwdev, ptr noundef %skb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %4 = tail call i32 @llvm.bswap.i32(i32 %3) #5
  %div4.i6971 = lshr i32 %4, 2
  %div4.i.zext = and i32 %div4.i6971, 63
  %conv3 = trunc i32 %div4.i.zext to i8
  %div4.i667072 = lshr i32 %4, 8
  %conv6 = trunc i32 %div4.i667072 to i8
  %add.ptr = getelementptr i32, ptr %1, i32 1
  %5 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %add.ptr, align 4
  %7 = and i32 %6, -12648448
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  %flags = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 26
  %9 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %flags, align 4
  %11 = and i32 %10, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not = icmp eq i32 %11, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %12 = trunc i32 %4 to i2
  %13 = zext i2 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.163)
  switch i2 %12, label %if.end.if.then33_crit_edge [
    i2 -2, label %sw.bb20
    i2 1, label %sw.bb
  ]

if.end.if.then33_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then33

sw.bb:                                            ; preds = %if.end
  tail call void @rtw89_mac_c2h_handle(ptr noundef %rtwdev, ptr noundef %skb, i32 noundef %8, i8 noundef zeroext %conv3, i8 noundef zeroext %conv6) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %div4.i.zext)
  %cmp = icmp eq i32 %div4.i.zext, 0
  %14 = and i32 %4, 65280
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %14)
  %cmp16 = icmp eq i32 %14, 512
  %or.cond = select i1 %cmp, i1 %cmp16, i1 false
  br i1 %or.cond, label %sw.bb.cleanup_crit_edge, label %sw.bb.if.then33_crit_edge

sw.bb.if.then33_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then33

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb20:                                          ; preds = %if.end
  %15 = and i32 %4, 224
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %15)
  %16 = icmp eq i32 %15, 64
  br i1 %16, label %if.then28, label %if.else

if.then28:                                        ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @rtw89_btc_c2h_handle(ptr noundef %rtwdev, ptr noundef %skb, i32 noundef %8, i8 noundef zeroext %conv3, i8 noundef zeroext %conv6) #5
  br label %if.then33

if.else:                                          ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @rtw89_phy_c2h_handle(ptr noundef %rtwdev, ptr noundef %skb, i32 noundef %8, i8 noundef zeroext %conv3, i8 noundef zeroext %conv6) #5
  br label %if.then33

if.then33:                                        ; preds = %if.else, %if.then28, %sw.bb.if.then33_crit_edge, %if.end.if.then33_crit_edge
  %17 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data, align 4
  %len35 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %19 = ptrtoint ptr %len35 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %len35, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rtw89_debug_mask to i32))
  %21 = load i32, ptr @rtw89_debug_mask, align 4
  %and.i68 = and i32 %21, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i68)
  %tobool.not.i = icmp eq i32 %and.i68, 0
  br i1 %tobool.not.i, label %if.then33.cleanup_crit_edge, label %do.body.i

if.then33.cleanup_crit_edge:                      ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body.i:                                        ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtw89_hex_dump.__UNIQUE_ID_ddebug405, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtw89_fw_c2h_cmd_handle, %if.then4.i)) #5
          to label %cleanup [label %if.then4.i], !srcloc !334

if.then4.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @print_hex_dump(ptr noundef nonnull @.str.154, ptr noundef nonnull @.str.149, i32 noundef 2, i32 noundef 16, i32 noundef 1, ptr noundef %18, i32 noundef %20, i1 noundef zeroext true) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then4.i, %do.body.i, %if.then33.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtw89_fw_msg_reg(ptr noundef %rtwdev, ptr noundef %h2c_info, ptr noundef %c2h_info) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %h2c_info, null
  br i1 %tobool.not, label %land.lhs.true31.critedge, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %0 = ptrtoint ptr %h2c_info to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %h2c_info, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %1)
  %cmp.not = icmp eq i8 %1, 3
  br i1 %cmp.not, label %land.lhs.true.if.end37_crit_edge, label %do.body

land.lhs.true.if.end37_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end37

do.body:                                          ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %2 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool2.not = icmp eq i32 %2, 0
  br i1 %tobool2.not, label %do.body.if.end37_crit_edge, label %land.rhs

do.body.if.end37_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end37

land.rhs:                                         ; preds = %do.body
  %dep_map = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 10, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp3.not = icmp eq i32 %call.i, 0
  br i1 %cmp3.not, label %do.end, label %land.rhs.if.end37_crit_edge, !prof !333

land.rhs.if.end37_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end37

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1602, i32 noundef 9, ptr noundef null) #5
  br label %if.end37

land.lhs.true31.critedge:                         ; preds = %entry
  %cond = icmp eq ptr %c2h_info, null
  br i1 %cond, label %land.lhs.true31.critedge.cleanup_crit_edge, label %land.lhs.true31.critedge.if.end44_crit_edge

land.lhs.true31.critedge.if.end44_crit_edge:      ; preds = %land.lhs.true31.critedge
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end44

land.lhs.true31.critedge.cleanup_crit_edge:       ; preds = %land.lhs.true31.critedge
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end37:                                         ; preds = %do.end, %land.rhs.if.end37_crit_edge, %do.body.if.end37_crit_edge, %land.lhs.true.if.end37_crit_edge
  %call.i67 = tail call i64 @ktime_get() #5
  %add.i.i = add i64 %call.i67, 5000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 1544) #5
  %hci.i.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 7
  %3 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hci.i.i, align 8
  %read8.i98.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %4, i32 0, i32 7
  %5 = ptrtoint ptr %read8.i98.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %read8.i98.i, align 4
  %call.i99.i = tail call zeroext i8 %6(ptr noundef %rtwdev, i32 noundef 33120) #5
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call.i99.i)
  %cmp9100.i = icmp eq i8 %call.i99.i, 0
  br i1 %cmp9100.i, label %if.end37.if.end31.i_crit_edge, label %if.end37.land.lhs.true.i_crit_edge

if.end37.land.lhs.true.i_crit_edge:               ; preds = %if.end37
  br label %land.lhs.true.i

if.end37.if.end31.i_crit_edge:                    ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end31.i

land.lhs.true.i:                                  ; preds = %if.then21.i.land.lhs.true.i_crit_edge, %if.end37.land.lhs.true.i_crit_edge
  %call13.i = tail call i64 @ktime_get() #5
  call void @__sanitizer_cov_trace_cmp8(i64 %call13.i, i64 %add.i.i)
  %cmp3.i.i = icmp sgt i64 %call13.i, %add.i.i
  br i1 %cmp3.i.i, label %for.end.i, label %if.then21.i

if.then21.i:                                      ; preds = %land.lhs.true.i
  tail call void @usleep_range_state(i32 noundef 251, i32 noundef 1000, i32 noundef 2) #5
  %7 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hci.i.i, align 8
  %read8.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %8, i32 0, i32 7
  %9 = ptrtoint ptr %read8.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %read8.i.i, align 4
  %call.i.i = tail call zeroext i8 %10(ptr noundef %rtwdev, i32 noundef 33120) #5
  %cmp9.i = icmp eq i8 %call.i.i, 0
  br i1 %cmp9.i, label %if.then21.i.if.end31.i_crit_edge, label %if.then21.i.land.lhs.true.i_crit_edge

if.then21.i.land.lhs.true.i_crit_edge:            ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true.i

if.then21.i.if.end31.i_crit_edge:                 ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end31.i

for.end.i:                                        ; preds = %land.lhs.true.i
  %11 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hci.i.i, align 8
  %read8.i88.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %12, i32 0, i32 7
  %13 = ptrtoint ptr %read8.i88.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %read8.i88.i, align 4
  %call.i89.i = tail call zeroext i8 %14(ptr noundef %rtwdev, i32 noundef 33120) #5
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call.i89.i)
  %cmp24.i = icmp eq i8 %call.i89.i, 0
  br i1 %cmp24.i, label %for.end.i.if.end31.i_crit_edge, label %rtw89_fw_write_h2c_reg.exit

for.end.i.if.end31.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end31.i

if.end31.i:                                       ; preds = %for.end.i.if.end31.i_crit_edge, %if.then21.i.if.end31.i_crit_edge, %if.end37.if.end31.i_crit_edge
  %content_len.i = getelementptr inbounds %struct.rtw89_mac_h2c_info, ptr %h2c_info, i32 0, i32 1
  %15 = ptrtoint ptr %content_len.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %content_len.i, align 1
  %conv32.i = zext i8 %16 to i32
  %h2creg.i = getelementptr %struct.rtw89_mac_h2c_info, ptr %h2c_info, i32 0, i32 2
  %17 = ptrtoint ptr %h2creg.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %h2creg.i, align 4
  %19 = ptrtoint ptr %h2c_info to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %h2c_info, align 4
  %and.i.i = and i32 %18, -3968
  %21 = and i8 %20, 127
  %conv8.i.i.i = zext i8 %21 to i32
  %or.i.i = or i32 %and.i.i, %conv8.i.i.i
  %sub.i = shl nuw nsw i32 %conv32.i, 6
  %22 = add nuw nsw i32 %sub.i, 320
  %23 = and i32 %22, 3840
  %or.i85.i = or i32 %or.i.i, %23
  store i32 %or.i85.i, ptr %h2creg.i, align 4
  %24 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %hci.i.i, align 8
  %write32.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %25, i32 0, i32 12
  %26 = ptrtoint ptr %write32.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %write32.i.i, align 4
  tail call void %27(ptr noundef %rtwdev, i32 noundef 33088, i32 noundef %or.i85.i) #5
  %arrayidx47.1.i = getelementptr %struct.rtw89_mac_h2c_info, ptr %h2c_info, i32 0, i32 2, i32 1
  %28 = ptrtoint ptr %arrayidx47.1.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx47.1.i, align 4
  %30 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %hci.i.i, align 8
  %write32.i.1.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %31, i32 0, i32 12
  %32 = ptrtoint ptr %write32.i.1.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %write32.i.1.i, align 4
  tail call void %33(ptr noundef %rtwdev, i32 noundef 33092, i32 noundef %29) #5
  %arrayidx47.2.i = getelementptr %struct.rtw89_mac_h2c_info, ptr %h2c_info, i32 0, i32 2, i32 2
  %34 = ptrtoint ptr %arrayidx47.2.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx47.2.i, align 4
  %36 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %hci.i.i, align 8
  %write32.i.2.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %37, i32 0, i32 12
  %38 = ptrtoint ptr %write32.i.2.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %write32.i.2.i, align 4
  tail call void %39(ptr noundef %rtwdev, i32 noundef 33096, i32 noundef %35) #5
  %arrayidx47.3.i = getelementptr %struct.rtw89_mac_h2c_info, ptr %h2c_info, i32 0, i32 2, i32 3
  %40 = ptrtoint ptr %arrayidx47.3.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx47.3.i, align 4
  %42 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %hci.i.i, align 8
  %write32.i.3.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %43, i32 0, i32 12
  %44 = ptrtoint ptr %write32.i.3.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %write32.i.3.i, align 4
  tail call void %45(ptr noundef %rtwdev, i32 noundef 33100, i32 noundef %41) #5
  %46 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %hci.i.i, align 8
  %write8.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %47, i32 0, i32 10
  %48 = ptrtoint ptr %write8.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %write8.i.i, align 4
  tail call void %49(ptr noundef %rtwdev, i32 noundef 33120, i8 noundef zeroext 1) #5
  %tobool42.not = icmp eq ptr %c2h_info, null
  br i1 %tobool42.not, label %if.end31.i.cleanup_crit_edge, label %if.end31.i.if.end44_crit_edge

if.end31.i.if.end44_crit_edge:                    ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end44

if.end31.i.cleanup_crit_edge:                     ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

rtw89_fw_write_h2c_reg.exit:                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 1
  %50 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %51, ptr noundef nonnull @.str.155) #8
  br label %cleanup

if.end44:                                         ; preds = %if.end31.i.if.end44_crit_edge, %land.lhs.true31.critedge.if.end44_crit_edge
  %52 = ptrtoint ptr %c2h_info to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 -1, ptr %c2h_info, align 4
  %call.i68 = tail call i64 @ktime_get() #5
  %add.i.i69 = add i64 %call.i68, 1000000000
  %hci.i.i70 = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 7
  %53 = ptrtoint ptr %hci.i.i70 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %hci.i.i70, align 8
  %read8.i70.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %54, i32 0, i32 7
  %55 = ptrtoint ptr %read8.i70.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %read8.i70.i, align 4
  %call.i71.i = tail call zeroext i8 %56(ptr noundef %rtwdev, i32 noundef 33124) #5
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call.i71.i)
  %tobool.not72.i = icmp eq i8 %call.i71.i, 0
  br i1 %tobool.not72.i, label %if.end44.land.lhs.true.i72_crit_edge, label %if.end44.for.body.preheader.i_crit_edge

if.end44.for.body.preheader.i_crit_edge:          ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.preheader.i

if.end44.land.lhs.true.i72_crit_edge:             ; preds = %if.end44
  br label %land.lhs.true.i72

land.lhs.true.i72:                                ; preds = %cond.false.i.land.lhs.true.i72_crit_edge, %if.end44.land.lhs.true.i72_crit_edge
  %call4.i = tail call i64 @ktime_get() #5
  call void @__sanitizer_cov_trace_cmp8(i64 %call4.i, i64 %add.i.i69)
  %cmp3.i.i71 = icmp sgt i64 %call4.i, %add.i.i69
  br i1 %cmp3.i.i71, label %for.end.i75, label %cond.false.i

cond.false.i:                                     ; preds = %land.lhs.true.i72
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %57 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %57(i32 noundef 214748) #5
  %58 = ptrtoint ptr %hci.i.i70 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %hci.i.i70, align 8
  %read8.i.i73 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %59, i32 0, i32 7
  %60 = ptrtoint ptr %read8.i.i73 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %read8.i.i73, align 4
  %call.i.i74 = tail call zeroext i8 %61(ptr noundef %rtwdev, i32 noundef 33124) #5
  %tobool.not.i = icmp eq i8 %call.i.i74, 0
  br i1 %tobool.not.i, label %cond.false.i.land.lhs.true.i72_crit_edge, label %cond.false.i.for.body.preheader.i_crit_edge

cond.false.i.for.body.preheader.i_crit_edge:      ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.preheader.i

cond.false.i.land.lhs.true.i72_crit_edge:         ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true.i72

for.end.i75:                                      ; preds = %land.lhs.true.i72
  %62 = ptrtoint ptr %hci.i.i70 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %hci.i.i70, align 8
  %read8.i59.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %63, i32 0, i32 7
  %64 = ptrtoint ptr %read8.i59.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %read8.i59.i, align 4
  %call.i60.i = tail call zeroext i8 %65(ptr noundef %rtwdev, i32 noundef 33124) #5
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call.i60.i)
  %tobool16.not.i = icmp eq i8 %call.i60.i, 0
  br i1 %tobool16.not.i, label %do.end.i, label %for.end.i75.for.body.preheader.i_crit_edge

for.end.i75.for.body.preheader.i_crit_edge:       ; preds = %for.end.i75
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.preheader.i

for.body.preheader.i:                             ; preds = %for.end.i75.for.body.preheader.i_crit_edge, %cond.false.i.for.body.preheader.i_crit_edge, %if.end44.for.body.preheader.i_crit_edge
  %66 = ptrtoint ptr %hci.i.i70 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %hci.i.i70, align 8
  %read32.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %67, i32 0, i32 9
  %68 = ptrtoint ptr %read32.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %read32.i.i, align 4
  %call.i62.i = tail call i32 %69(ptr noundef %rtwdev, i32 noundef 33104) #5
  %arrayidx26.i = getelementptr %struct.rtw89_mac_c2h_info, ptr %c2h_info, i32 0, i32 2, i32 0
  %70 = ptrtoint ptr %arrayidx26.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %call.i62.i, ptr %arrayidx26.i, align 4
  %71 = ptrtoint ptr %hci.i.i70 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %hci.i.i70, align 8
  %read32.i.1.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %72, i32 0, i32 9
  %73 = ptrtoint ptr %read32.i.1.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %read32.i.1.i, align 4
  %call.i62.1.i = tail call i32 %74(ptr noundef %rtwdev, i32 noundef 33108) #5
  %arrayidx26.1.i = getelementptr %struct.rtw89_mac_c2h_info, ptr %c2h_info, i32 0, i32 2, i32 1
  %75 = ptrtoint ptr %arrayidx26.1.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %call.i62.1.i, ptr %arrayidx26.1.i, align 4
  %76 = ptrtoint ptr %hci.i.i70 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %hci.i.i70, align 8
  %read32.i.2.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %77, i32 0, i32 9
  %78 = ptrtoint ptr %read32.i.2.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %read32.i.2.i, align 4
  %call.i62.2.i = tail call i32 %79(ptr noundef %rtwdev, i32 noundef 33112) #5
  %arrayidx26.2.i = getelementptr %struct.rtw89_mac_c2h_info, ptr %c2h_info, i32 0, i32 2, i32 2
  %80 = ptrtoint ptr %arrayidx26.2.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %call.i62.2.i, ptr %arrayidx26.2.i, align 4
  %81 = ptrtoint ptr %hci.i.i70 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %hci.i.i70, align 8
  %read32.i.3.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %82, i32 0, i32 9
  %83 = ptrtoint ptr %read32.i.3.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %read32.i.3.i, align 4
  %call.i62.3.i = tail call i32 %84(ptr noundef %rtwdev, i32 noundef 33116) #5
  %arrayidx26.3.i = getelementptr %struct.rtw89_mac_c2h_info, ptr %c2h_info, i32 0, i32 2, i32 3
  %85 = ptrtoint ptr %arrayidx26.3.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %call.i62.3.i, ptr %arrayidx26.3.i, align 4
  %86 = ptrtoint ptr %hci.i.i70 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %hci.i.i70, align 8
  %write8.i.i76 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %87, i32 0, i32 10
  %88 = ptrtoint ptr %write8.i.i76 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %write8.i.i76, align 4
  tail call void %89(ptr noundef %rtwdev, i32 noundef 33124, i8 noundef zeroext 0) #5
  %90 = ptrtoint ptr %arrayidx26.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %arrayidx26.i, align 4
  %92 = trunc i32 %91 to i8
  %conv30.i = and i8 %92, 127
  %93 = ptrtoint ptr %c2h_info to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 %conv30.i, ptr %c2h_info, align 4
  %sh.diff.i = lshr i32 %91, 6
  %tr.sh.diff.i = trunc i32 %sh.diff.i to i8
  %94 = and i8 %tr.sh.diff.i, 60
  %conv35.i = add nsw i8 %94, -2
  %content_len.i77 = getelementptr inbounds %struct.rtw89_mac_c2h_info, ptr %c2h_info, i32 0, i32 1
  %95 = ptrtoint ptr %content_len.i77 to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 %conv35.i, ptr %content_len.i77, align 1
  br label %cleanup

do.end.i:                                         ; preds = %for.end.i75
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i78 = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 1
  %96 = ptrtoint ptr %dev.i78 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %dev.i78, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %97, ptr noundef nonnull @.str.157) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end.i, %for.body.preheader.i, %rtw89_fw_write_h2c_reg.exit, %if.end31.i.cleanup_crit_edge, %land.lhs.true31.critedge.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %land.lhs.true31.critedge.cleanup_crit_edge ], [ -110, %rtw89_fw_write_h2c_reg.exit ], [ 0, %if.end31.i.cleanup_crit_edge ], [ -110, %do.end.i ], [ 0, %for.body.preheader.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw89_fw_st_dbg_dump(ptr noundef %rtwdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 26
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %flags, align 4
  %and1.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  %dev = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  br i1 %tobool.not, label %do.end, label %do.end2

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.98) #8
  br label %return

do.end2:                                          ; preds = %entry
  %hci.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 7
  %4 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hci.i, align 8
  %read32.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %5, i32 0, i32 9
  %6 = ptrtoint ptr %read32.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %read32.i, align 4
  %call.i = tail call i32 %7(ptr noundef %rtwdev, i32 noundef 496) #5
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %3, ptr noundef nonnull @.str.101, i32 noundef %call.i) #8
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  %10 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hci.i, align 8
  %read32.i40 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %11, i32 0, i32 9
  %12 = ptrtoint ptr %read32.i40 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %read32.i40, align 4
  %call.i41 = tail call i32 %13(ptr noundef %rtwdev, i32 noundef 500) #5
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %9, ptr noundef nonnull @.str.105, i32 noundef %call.i41) #8
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 4
  %16 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hci.i, align 8
  %read32.i43 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %17, i32 0, i32 9
  %18 = ptrtoint ptr %read32.i43 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %read32.i43, align 4
  %call.i44 = tail call i32 %19(ptr noundef %rtwdev, i32 noundef 504) #5
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %15, ptr noundef nonnull @.str.108, i32 noundef %call.i44) #8
  %20 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev, align 4
  %22 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %hci.i, align 8
  %read32.i46 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %23, i32 0, i32 9
  %24 = ptrtoint ptr %read32.i46 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %read32.i46, align 4
  %call.i47 = tail call i32 %25(ptr noundef %rtwdev, i32 noundef 508) #5
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %21, ptr noundef nonnull @.str.111, i32 noundef %call.i47) #8
  %26 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev, align 4
  %28 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %hci.i, align 8
  %read32.i49 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %29, i32 0, i32 9
  %30 = ptrtoint ptr %read32.i49 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %read32.i49, align 4
  %call.i50 = tail call i32 %31(ptr noundef %rtwdev, i32 noundef 364) #5
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %27, ptr noundef nonnull @.str.114, i32 noundef %call.i50) #8
  %32 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev, align 4
  %34 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %hci.i, align 8
  %read32.i52 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %35, i32 0, i32 9
  %36 = ptrtoint ptr %read32.i52 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %read32.i52, align 4
  %call.i53 = tail call i32 %37(ptr noundef %rtwdev, i32 noundef 33828) #5
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %33, ptr noundef nonnull @.str.117, i32 noundef %call.i53) #8
  %38 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %hci.i, align 8
  %write32.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %39, i32 0, i32 12
  %40 = ptrtoint ptr %write32.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %write32.i.i, align 4
  tail call void %41(ptr noundef %rtwdev, i32 noundef 88, i32 noundef 15859954) #5
  %42 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %hci.i, align 8
  %read32.i.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %43, i32 0, i32 9
  %44 = ptrtoint ptr %read32.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %read32.i.i.i, align 4
  %call.i.i.i = tail call i32 %45(ptr noundef %rtwdev, i32 noundef 244) #5
  %and21.i.i = and i32 %call.i.i.i, -196609
  %or.i.i = or i32 %and21.i.i, 65536
  %46 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %hci.i, align 8
  %write32.i.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %47, i32 0, i32 12
  %48 = ptrtoint ptr %write32.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %write32.i.i.i, align 4
  tail call void %49(ptr noundef %rtwdev, i32 noundef 244, i32 noundef %or.i.i) #5
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %do.end2
  %index.038.i = phi i16 [ 0, %do.end2 ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %50 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %hci.i, align 8
  %read32.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %51, i32 0, i32 9
  %52 = ptrtoint ptr %read32.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %read32.i.i, align 4
  %call.i.i = tail call i32 %53(ptr noundef %rtwdev, i32 noundef 192) #5
  %54 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %55, ptr noundef nonnull @.str.159, i32 noundef %call.i.i) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %56 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %56(i32 noundef 2147480) #5
  %inc.i = add nuw nsw i16 %index.038.i, 1
  %cmp.i = icmp ult i16 %index.038.i, 14
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.return_crit_edge

for.body.i.return_crit_edge:                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

return:                                           ; preds = %for.body.i.return_crit_edge, %do.end
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete_all(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight8(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw89_mac_c2h_handle(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw89_btc_c2h_handle(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw89_phy_c2h_handle(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @print_hex_dump(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

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

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 160)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 160)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !16, !18, !19, !20, !21, !23, !24, !25, !27, !28, !29, !31, !32, !33, !34, !36, !37, !38, !39, !41, !42, !43, !45, !46, !47, !48, !50, !51, !53, !54, !55, !56, !58, !59, !61, !62, !63, !65, !66, !68, !69, !70, !72, !73, !75, !76, !77, !79, !80, !82, !83, !84, !86, !87, !89, !90, !91, !93, !94, !96, !97, !98, !99, !101, !102, !104, !105, !106, !108, !109, !111, !112, !113, !115, !116, !118, !119, !120, !121, !123, !124, !126, !128, !129, !130, !131, !133, !134, !136, !137, !138, !140, !142, !143, !145, !146, !147, !148, !150, !151, !153, !154, !155, !156, !158, !159, !161, !162, !163, !164, !166, !167, !169, !170, !171, !173, !174, !176, !177, !178, !179, !181, !182, !184, !185, !186, !187, !189, !190, !192, !193, !194, !195, !197, !198, !200, !201, !202, !203, !205, !206, !207, !208, !210, !211, !212, !214, !215, !216, !218, !219, !220, !222, !223, !224, !226, !227, !228, !230, !232, !233, !234, !235, !237, !238, !239, !240, !242, !243, !244, !245, !247, !248, !249, !250, !252, !253, !254, !256, !257, !258, !259, !261, !262, !264, !265, !266, !267, !268, !270, !271, !272, !274, !275, !277, !278, !279, !280, !282, !283, !284, !286, !287, !289, !290, !291, !292, !294, !296, !297, !298, !299, !300, !301, !303, !305, !306, !307, !308, !310, !312, !313, !314, !315, !317, !318, !319, !320, !322}
!llvm.module.flags = !{!323, !324, !325, !326, !327, !328, !329, !330}
!llvm.ident = !{!331}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/realtek/rtw89/fw.c", i32 59, i32 4}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @rtw89_fw_check_rdy._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @rtw89_fw_check_rdy._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/realtek/rtw89/fw.c", i32 63, i32 4}
!10 = !{ptr @rtw89_fw_check_rdy._entry.5, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @rtw89_fw_check_rdy._entry_ptr.7, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.9, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/realtek/rtw89/fw.c", i32 67, i32 4}
!14 = !{ptr @rtw89_fw_check_rdy._entry.8, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @rtw89_fw_check_rdy._entry_ptr.10, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.11, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/realtek/rtw89/fw.c", i32 428, i32 3}
!18 = !{ptr @.str.12, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @rtw89_fw_download._entry, !17, !"_entry", i1 false, i1 false}
!20 = !{ptr @rtw89_fw_download._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.14, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/net/wireless/realtek/rtw89/fw.c", i32 434, i32 3}
!23 = !{ptr @rtw89_fw_download._entry.13, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @rtw89_fw_download._entry_ptr.15, !22, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.17, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/net/wireless/realtek/rtw89/fw.c", i32 442, i32 3}
!27 = !{ptr @rtw89_fw_download._entry.16, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @rtw89_fw_download._entry_ptr.18, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.19, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/net/wireless/realtek/rtw89/fw.c", i32 508, i32 3}
!31 = !{ptr @.str.20, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @rtw89_load_firmware._entry, !30, !"_entry", i1 false, i1 false}
!33 = !{ptr @rtw89_load_firmware._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.21, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/wireless/realtek/rtw89/fw.c", i32 533, i32 3}
!36 = !{ptr @.str.22, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @rtw89_fw_h2c_cam._entry, !35, !"_entry", i1 false, i1 false}
!38 = !{ptr @rtw89_fw_h2c_cam._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.24, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/net/wireless/realtek/rtw89/fw.c", i32 547, i32 3}
!41 = !{ptr @rtw89_fw_h2c_cam._entry.23, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @rtw89_fw_h2c_cam._entry_ptr.25, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.26, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/net/wireless/realtek/rtw89/fw.c", i32 566, i32 3}
!45 = !{ptr @.str.27, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @rtw89_fw_h2c_ba_cam._entry, !44, !"_entry", i1 false, i1 false}
!47 = !{ptr @rtw89_fw_h2c_ba_cam._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @rtw89_fw_h2c_ba_cam._entry.28, !49, !"_entry", i1 false, i1 false}
!49 = !{!"../drivers/net/wireless/realtek/rtw89/fw.c", i32 591, i32 3}
!50 = !{ptr @rtw89_fw_h2c_ba_cam._entry_ptr.29, !49, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.30, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/net/wireless/realtek/rtw89/fw.c", i32 611, i32 3}
!53 = !{ptr @.str.31, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @rtw89_fw_h2c_fw_log._entry, !52, !"_entry", i1 false, i1 false}
!55 = !{ptr @rtw89_fw_h2c_fw_log._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @rtw89_fw_h2c_fw_log._entry.32, !57, !"_entry", i1 false, i1 false}
!57 = !{!"../drivers/net/wireless/realtek/rtw89/fw.c", i32 628, i32 3}
!58 = !{ptr @rtw89_fw_h2c_fw_log._entry_ptr.33, !57, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.34, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/net/wireless/realtek/rtw89/fw.c", i32 647, i32 3}
!61 = !{ptr @rtw89_fw_h2c_general_pkt._entry, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @rtw89_fw_h2c_general_pkt._entry_ptr, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @rtw89_fw_h2c_general_pkt._entry.35, !64, !"_entry", i1 false, i1 false}
!64 = !{!"../drivers/net/wireless/realtek/rtw89/fw.c", i32 665, i32 3}
!65 = !{ptr @rtw89_fw_h2c_general_pkt._entry_ptr.36, !64, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.37, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/net/wireless/realtek/rtw89/fw.c", i32 684, i32 3}
!68 = !{ptr @rtw89_fw_h2c_lps_parm._entry, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @rtw89_fw_h2c_lps_parm._entry_ptr, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @rtw89_fw_h2c_lps_parm._entry.38, !71, !"_entry", i1 false, i1 false}
!71 = !{!"../drivers/net/wireless/realtek/rtw89/fw.c", i32 707, i32 3}
!72 = !{ptr @rtw89_fw_h2c_lps_parm._entry_ptr.39, !71, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.40, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/net/wireless/realtek/rtw89/fw.c", i32 728, i32 3}
!75 = !{ptr @rtw89_fw_h2c_default_cmac_tbl._entry, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @rtw89_fw_h2c_default_cmac_tbl._entry_ptr, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @rtw89_fw_h2c_default_cmac_tbl._entry.41, !78, !"_entry", i1 false, i1 false}
!78 = !{!"../drivers/net/wireless/realtek/rtw89/fw.c", i32 753, i32 3}
!79 = !{ptr @rtw89_fw_h2c_default_cmac_tbl._entry_ptr.42, !78, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.43, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/net/wireless/realtek/rtw89/fw.c", i32 834, i32 3}
!82 = !{ptr @rtw89_fw_h2c_assoc_cmac_tbl._entry, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @rtw89_fw_h2c_assoc_cmac_tbl._entry_ptr, !81, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @rtw89_fw_h2c_assoc_cmac_tbl._entry.44, !85, !"_entry", i1 false, i1 false}
!85 = !{!"../drivers/net/wireless/realtek/rtw89/fw.c", i32 864, i32 3}
!86 = !{ptr @rtw89_fw_h2c_assoc_cmac_tbl._entry_ptr.45, !85, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.46, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/net/wireless/realtek/rtw89/fw.c", i32 882, i32 3}
!89 = !{ptr @rtw89_fw_h2c_txtime_cmac_tbl._entry, !88, !"_entry", i1 false, i1 false}
!90 = !{ptr @rtw89_fw_h2c_txtime_cmac_tbl._entry_ptr, !88, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @rtw89_fw_h2c_txtime_cmac_tbl._entry.47, !92, !"_entry", i1 false, i1 false}
!92 = !{!"../drivers/net/wireless/realtek/rtw89/fw.c", i32 903, i32 3}
!93 = !{ptr @rtw89_fw_h2c_txtime_cmac_tbl._entry_ptr.48, !92, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.49, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/net/wireless/realtek/rtw89/fw.c", i32 923, i32 3}
!96 = !{ptr @.str.50, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @rtw89_fw_h2c_vif_maintain._entry, !95, !"_entry", i1 false, i1 false}
!98 = !{ptr @rtw89_fw_h2c_vif_maintain._entry_ptr, !95, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @rtw89_fw_h2c_vif_maintain._entry.51, !100, !"_entry", i1 false, i1 false}
!100 = !{!"../drivers/net/wireless/realtek/rtw89/fw.c", i32 938, i32 3}
!101 = !{ptr @rtw89_fw_h2c_vif_maintain._entry_ptr.52, !100, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.53, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/net/wireless/realtek/rtw89/fw.c", i32 957, i32 3}
!104 = !{ptr @rtw89_fw_h2c_join_info._entry, !103, !"_entry", i1 false, i1 false}
!105 = !{ptr @rtw89_fw_h2c_join_info._entry_ptr, !103, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @rtw89_fw_h2c_join_info._entry.54, !107, !"_entry", i1 false, i1 false}
!107 = !{!"../drivers/net/wireless/realtek/rtw89/fw.c", i32 981, i32 3}
!108 = !{ptr @rtw89_fw_h2c_join_info._entry_ptr.55, !107, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.56, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/net/wireless/realtek/rtw89/fw.c", i32 1001, i32 3}
!111 = !{ptr @rtw89_fw_h2c_macid_pause._entry, !110, !"_entry", i1 false, i1 false}
!112 = !{ptr @rtw89_fw_h2c_macid_pause._entry_ptr, !110, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @rtw89_fw_h2c_macid_pause._entry.57, !114, !"_entry", i1 false, i1 false}
!114 = !{!"../drivers/net/wireless/realtek/rtw89/fw.c", i32 1015, i32 3}
!115 = !{ptr @rtw89_fw_h2c_macid_pause._entry_ptr.58, !114, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @.str.59, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/net/wireless/realtek/rtw89/fw.c", i32 1034, i32 3}
!118 = !{ptr @.str.60, !117, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @rtw89_fw_h2c_set_edca._entry, !117, !"_entry", i1 false, i1 false}
!120 = !{ptr @rtw89_fw_h2c_set_edca._entry_ptr, !117, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @rtw89_fw_h2c_set_edca._entry.61, !122, !"_entry", i1 false, i1 false}
!122 = !{!"../drivers/net/wireless/realtek/rtw89/fw.c", i32 1050, i32 3}
!123 = !{ptr @rtw89_fw_h2c_set_edca._entry_ptr.62, !122, !"_entry_ptr", i1 false, i1 false}
!124 = distinct !{null, !125, !"cfg", i1 false, i1 false}
!125 = !{!"../drivers/net/wireless/realtek/rtw89/fw.c", i32 1064, i32 18}
!126 = !{ptr @.str.63, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/net/wireless/realtek/rtw89/fw.c", i32 1069, i32 3}
!128 = !{ptr @.str.64, !127, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @rtw89_fw_h2c_set_ofld_cfg._entry, !127, !"_entry", i1 false, i1 false}
!130 = !{ptr @rtw89_fw_h2c_set_ofld_cfg._entry_ptr, !127, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @rtw89_fw_h2c_set_ofld_cfg._entry.65, !132, !"_entry", i1 false, i1 false}
!132 = !{!"../drivers/net/wireless/realtek/rtw89/fw.c", i32 1080, i32 3}
!133 = !{ptr @rtw89_fw_h2c_set_ofld_cfg._entry_ptr.66, !132, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @.str.67, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/net/wireless/realtek/rtw89/fw.c", i32 1099, i32 3}
!136 = !{ptr @rtw89_fw_h2c_ra._entry, !135, !"_entry", i1 false, i1 false}
!137 = !{ptr @rtw89_fw_h2c_ra._entry_ptr, !135, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @.str.68, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/net/wireless/realtek/rtw89/fw.c", i32 1104, i32 2}
!140 = !{ptr @rtw89_fw_h2c_ra._entry.69, !141, !"_entry", i1 false, i1 false}
!141 = !{!"../drivers/net/wireless/realtek/rtw89/fw.c", i32 1145, i32 3}
!142 = !{ptr @rtw89_fw_h2c_ra._entry_ptr.70, !141, !"_entry_ptr", i1 false, i1 false}
!143 = !{ptr @.str.71, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/net/wireless/realtek/rtw89/fw.c", i32 1170, i32 3}
!145 = !{ptr @.str.72, !144, !"<string literal>", i1 false, i1 false}
!146 = !{ptr @rtw89_fw_h2c_cxdrv_init._entry, !144, !"_entry", i1 false, i1 false}
!147 = !{ptr @rtw89_fw_h2c_cxdrv_init._entry_ptr, !144, !"_entry_ptr", i1 false, i1 false}
!148 = !{ptr @rtw89_fw_h2c_cxdrv_init._entry.73, !149, !"_entry", i1 false, i1 false}
!149 = !{!"../drivers/net/wireless/realtek/rtw89/fw.c", i32 1204, i32 3}
!150 = !{ptr @rtw89_fw_h2c_cxdrv_init._entry_ptr.74, !149, !"_entry_ptr", i1 false, i1 false}
!151 = !{ptr @.str.75, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/net/wireless/realtek/rtw89/fw.c", i32 1229, i32 3}
!153 = !{ptr @.str.76, !152, !"<string literal>", i1 false, i1 false}
!154 = !{ptr @rtw89_fw_h2c_cxdrv_role._entry, !152, !"_entry", i1 false, i1 false}
!155 = !{ptr @rtw89_fw_h2c_cxdrv_role._entry_ptr, !152, !"_entry_ptr", i1 false, i1 false}
!156 = !{ptr @rtw89_fw_h2c_cxdrv_role._entry.77, !157, !"_entry", i1 false, i1 false}
!157 = !{!"../drivers/net/wireless/realtek/rtw89/fw.c", i32 1276, i32 3}
!158 = !{ptr @rtw89_fw_h2c_cxdrv_role._entry_ptr.78, !157, !"_entry_ptr", i1 false, i1 false}
!159 = !{ptr @.str.79, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/net/wireless/realtek/rtw89/fw.c", i32 1297, i32 3}
!161 = !{ptr @.str.80, !160, !"<string literal>", i1 false, i1 false}
!162 = !{ptr @rtw89_fw_h2c_cxdrv_ctrl._entry, !160, !"_entry", i1 false, i1 false}
!163 = !{ptr @rtw89_fw_h2c_cxdrv_ctrl._entry_ptr, !160, !"_entry_ptr", i1 false, i1 false}
!164 = !{ptr @rtw89_fw_h2c_cxdrv_ctrl._entry.81, !165, !"_entry", i1 false, i1 false}
!165 = !{!"../drivers/net/wireless/realtek/rtw89/fw.c", i32 1317, i32 3}
!166 = !{ptr @rtw89_fw_h2c_cxdrv_ctrl._entry_ptr.82, !165, !"_entry_ptr", i1 false, i1 false}
!167 = !{ptr @.str.83, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/net/wireless/realtek/rtw89/fw.c", i32 1339, i32 3}
!169 = !{ptr @rtw89_fw_h2c_cxdrv_rfk._entry, !168, !"_entry", i1 false, i1 false}
!170 = !{ptr @rtw89_fw_h2c_cxdrv_rfk._entry_ptr, !168, !"_entry_ptr", i1 false, i1 false}
!171 = !{ptr @rtw89_fw_h2c_cxdrv_rfk._entry.84, !172, !"_entry", i1 false, i1 false}
!172 = !{!"../drivers/net/wireless/realtek/rtw89/fw.c", i32 1360, i32 3}
!173 = !{ptr @rtw89_fw_h2c_cxdrv_rfk._entry_ptr.85, !172, !"_entry_ptr", i1 false, i1 false}
!174 = !{ptr @.str.86, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/net/wireless/realtek/rtw89/fw.c", i32 1381, i32 3}
!176 = !{ptr @.str.87, !175, !"<string literal>", i1 false, i1 false}
!177 = !{ptr @rtw89_fw_h2c_rf_reg._entry, !175, !"_entry", i1 false, i1 false}
!178 = !{ptr @rtw89_fw_h2c_rf_reg._entry_ptr, !175, !"_entry_ptr", i1 false, i1 false}
!179 = !{ptr @rtw89_fw_h2c_rf_reg._entry.88, !180, !"_entry", i1 false, i1 false}
!180 = !{!"../drivers/net/wireless/realtek/rtw89/fw.c", i32 1391, i32 3}
!181 = !{ptr @rtw89_fw_h2c_rf_reg._entry_ptr.89, !180, !"_entry_ptr", i1 false, i1 false}
!182 = !{ptr @.str.90, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/net/wireless/realtek/rtw89/fw.c", i32 1410, i32 3}
!184 = !{ptr @.str.91, !183, !"<string literal>", i1 false, i1 false}
!185 = !{ptr @rtw89_fw_h2c_raw_with_hdr._entry, !183, !"_entry", i1 false, i1 false}
!186 = !{ptr @rtw89_fw_h2c_raw_with_hdr._entry_ptr, !183, !"_entry_ptr", i1 false, i1 false}
!187 = !{ptr @rtw89_fw_h2c_raw_with_hdr._entry.92, !188, !"_entry", i1 false, i1 false}
!188 = !{!"../drivers/net/wireless/realtek/rtw89/fw.c", i32 1420, i32 3}
!189 = !{ptr @rtw89_fw_h2c_raw_with_hdr._entry_ptr.93, !188, !"_entry_ptr", i1 false, i1 false}
!190 = !{ptr @.str.94, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/net/wireless/realtek/rtw89/fw.c", i32 1437, i32 3}
!192 = !{ptr @.str.95, !191, !"<string literal>", i1 false, i1 false}
!193 = !{ptr @rtw89_fw_h2c_raw._entry, !191, !"_entry", i1 false, i1 false}
!194 = !{ptr @rtw89_fw_h2c_raw._entry_ptr, !191, !"_entry_ptr", i1 false, i1 false}
!195 = !{ptr @rtw89_fw_h2c_raw._entry.96, !196, !"_entry", i1 false, i1 false}
!196 = !{!"../drivers/net/wireless/realtek/rtw89/fw.c", i32 1443, i32 3}
!197 = !{ptr @rtw89_fw_h2c_raw._entry_ptr.97, !196, !"_entry_ptr", i1 false, i1 false}
!198 = !{ptr @.str.98, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/net/wireless/realtek/rtw89/fw.c", i32 1628, i32 3}
!200 = !{ptr @.str.99, !199, !"<string literal>", i1 false, i1 false}
!201 = !{ptr @rtw89_fw_st_dbg_dump._entry, !199, !"_entry", i1 false, i1 false}
!202 = !{ptr @rtw89_fw_st_dbg_dump._entry_ptr, !199, !"_entry_ptr", i1 false, i1 false}
!203 = !{ptr @.str.101, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/net/wireless/realtek/rtw89/fw.c", i32 1632, i32 2}
!205 = !{ptr @.str.102, !204, !"<string literal>", i1 false, i1 false}
!206 = !{ptr @rtw89_fw_st_dbg_dump._entry.100, !204, !"_entry", i1 false, i1 false}
!207 = !{ptr @rtw89_fw_st_dbg_dump._entry_ptr.103, !204, !"_entry_ptr", i1 false, i1 false}
!208 = !{ptr @.str.105, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/net/wireless/realtek/rtw89/fw.c", i32 1633, i32 2}
!210 = !{ptr @rtw89_fw_st_dbg_dump._entry.104, !209, !"_entry", i1 false, i1 false}
!211 = !{ptr @rtw89_fw_st_dbg_dump._entry_ptr.106, !209, !"_entry_ptr", i1 false, i1 false}
!212 = !{ptr @.str.108, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/net/wireless/realtek/rtw89/fw.c", i32 1634, i32 2}
!214 = !{ptr @rtw89_fw_st_dbg_dump._entry.107, !213, !"_entry", i1 false, i1 false}
!215 = !{ptr @rtw89_fw_st_dbg_dump._entry_ptr.109, !213, !"_entry_ptr", i1 false, i1 false}
!216 = !{ptr @.str.111, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/net/wireless/realtek/rtw89/fw.c", i32 1635, i32 2}
!218 = !{ptr @rtw89_fw_st_dbg_dump._entry.110, !217, !"_entry", i1 false, i1 false}
!219 = !{ptr @rtw89_fw_st_dbg_dump._entry_ptr.112, !217, !"_entry_ptr", i1 false, i1 false}
!220 = !{ptr @.str.114, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/net/wireless/realtek/rtw89/fw.c", i32 1636, i32 2}
!222 = !{ptr @rtw89_fw_st_dbg_dump._entry.113, !221, !"_entry", i1 false, i1 false}
!223 = !{ptr @rtw89_fw_st_dbg_dump._entry_ptr.115, !221, !"_entry_ptr", i1 false, i1 false}
!224 = !{ptr @.str.117, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/net/wireless/realtek/rtw89/fw.c", i32 1638, i32 2}
!226 = !{ptr @rtw89_fw_st_dbg_dump._entry.116, !225, !"_entry", i1 false, i1 false}
!227 = !{ptr @rtw89_fw_st_dbg_dump._entry_ptr.118, !225, !"_entry_ptr", i1 false, i1 false}
!228 = !{ptr @.str.119, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/net/wireless/realtek/rtw89/fw.c", i32 133, i32 3}
!230 = !{ptr @.str.120, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/net/wireless/realtek/rtw89/fw.c", i32 154, i32 2}
!232 = !{ptr @.str.121, !231, !"<string literal>", i1 false, i1 false}
!233 = !{ptr @rtw89_mfw_recognize._entry, !231, !"_entry", i1 false, i1 false}
!234 = !{ptr @rtw89_mfw_recognize._entry_ptr, !231, !"_entry_ptr", i1 false, i1 false}
!235 = !{ptr @.str.122, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../drivers/net/wireless/realtek/rtw89/fw.c", i32 175, i32 2}
!237 = !{ptr @.str.123, !236, !"<string literal>", i1 false, i1 false}
!238 = !{ptr @rtw89_fw_update_ver._entry, !236, !"_entry", i1 false, i1 false}
!239 = !{ptr @rtw89_fw_update_ver._entry_ptr, !236, !"_entry_ptr", i1 false, i1 false}
!240 = !{ptr @.str.124, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/net/wireless/realtek/rtw89/fw.c", i32 114, i32 3}
!242 = !{ptr @.str.125, !241, !"<string literal>", i1 false, i1 false}
!243 = !{ptr @rtw89_fw_hdr_parser._entry, !241, !"_entry", i1 false, i1 false}
!244 = !{ptr @rtw89_fw_hdr_parser._entry_ptr, !241, !"_entry_ptr", i1 false, i1 false}
!245 = !{ptr @.str.126, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../drivers/net/wireless/realtek/rtw89/fw.c", i32 303, i32 3}
!247 = !{ptr @.str.127, !246, !"<string literal>", i1 false, i1 false}
!248 = !{ptr @rtw89_fw_download_hdr._entry, !246, !"_entry", i1 false, i1 false}
!249 = !{ptr @rtw89_fw_download_hdr._entry_ptr, !246, !"_entry_ptr", i1 false, i1 false}
!250 = !{ptr @.str.129, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../drivers/net/wireless/realtek/rtw89/fw.c", i32 311, i32 3}
!252 = !{ptr @rtw89_fw_download_hdr._entry.128, !251, !"_entry", i1 false, i1 false}
!253 = !{ptr @rtw89_fw_download_hdr._entry_ptr.130, !251, !"_entry_ptr", i1 false, i1 false}
!254 = !{ptr @.str.131, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../drivers/net/wireless/realtek/rtw89/fw.c", i32 272, i32 3}
!256 = !{ptr @.str.132, !255, !"<string literal>", i1 false, i1 false}
!257 = !{ptr @__rtw89_fw_download_hdr._entry, !255, !"_entry", i1 false, i1 false}
!258 = !{ptr @__rtw89_fw_download_hdr._entry_ptr, !255, !"_entry_ptr", i1 false, i1 false}
!259 = !{ptr @__rtw89_fw_download_hdr._entry.133, !260, !"_entry", i1 false, i1 false}
!260 = !{!"../drivers/net/wireless/realtek/rtw89/fw.c", i32 284, i32 3}
!261 = !{ptr @__rtw89_fw_download_hdr._entry_ptr.134, !260, !"_entry_ptr", i1 false, i1 false}
!262 = !{ptr @.str.135, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../drivers/net/wireless/realtek/rtw89/fw.c", i32 379, i32 3}
!264 = !{ptr @.str.136, !263, !"<string literal>", i1 false, i1 false}
!265 = !{ptr @.str.137, !263, !"<string literal>", i1 false, i1 false}
!266 = !{ptr @rtw89_fw_download_main._entry, !263, !"_entry", i1 false, i1 false}
!267 = !{ptr @rtw89_fw_download_main._entry_ptr, !263, !"_entry_ptr", i1 false, i1 false}
!268 = !{ptr @.str.138, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../drivers/net/wireless/realtek/rtw89/fw.c", i32 338, i32 4}
!270 = !{ptr @__rtw89_fw_download_main._entry, !269, !"_entry", i1 false, i1 false}
!271 = !{ptr @__rtw89_fw_download_main._entry_ptr, !269, !"_entry_ptr", i1 false, i1 false}
!272 = !{ptr @__rtw89_fw_download_main._entry.139, !273, !"_entry", i1 false, i1 false}
!273 = !{!"../drivers/net/wireless/realtek/rtw89/fw.c", i32 345, i32 4}
!274 = !{ptr @__rtw89_fw_download_main._entry_ptr.140, !273, !"_entry_ptr", i1 false, i1 false}
!275 = !{ptr @.str.141, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../drivers/net/wireless/realtek/rtw89/fw.c", i32 409, i32 2}
!277 = !{ptr @.str.142, !276, !"<string literal>", i1 false, i1 false}
!278 = !{ptr @rtw89_fw_dl_fail_dump._entry, !276, !"_entry", i1 false, i1 false}
!279 = !{ptr @rtw89_fw_dl_fail_dump._entry_ptr, !276, !"_entry_ptr", i1 false, i1 false}
!280 = !{ptr @.str.144, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../drivers/net/wireless/realtek/rtw89/fw.c", i32 412, i32 2}
!282 = !{ptr @rtw89_fw_dl_fail_dump._entry.143, !281, !"_entry", i1 false, i1 false}
!283 = !{ptr @rtw89_fw_dl_fail_dump._entry_ptr.145, !281, !"_entry_ptr", i1 false, i1 false}
!284 = !{ptr @init_completion.__key, !285, !"__key", i1 false, i1 false}
!285 = !{!"../include/linux/completion.h", i32 87, i32 2}
!286 = !{ptr @.str.146, !285, !"<string literal>", i1 false, i1 false}
!287 = !{ptr @.str.147, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../drivers/net/wireless/realtek/rtw89/fw.c", i32 487, i32 3}
!289 = !{ptr @.str.148, !288, !"<string literal>", i1 false, i1 false}
!290 = !{ptr @rtw89_load_firmware_cb._entry, !288, !"_entry", i1 false, i1 false}
!291 = !{ptr @rtw89_load_firmware_cb._entry_ptr, !288, !"_entry_ptr", i1 false, i1 false}
!292 = !{ptr @.str.149, !293, !"<string literal>", i1 false, i1 false}
!293 = !{!"../drivers/net/wireless/realtek/rtw89/fw.c", i32 1515, i32 40}
!294 = !{ptr @.str.150, !295, !"<string literal>", i1 false, i1 false}
!295 = !{!"../drivers/net/wireless/realtek/rtw89/debug.h", i32 65, i32 2}
!296 = !{ptr @.str.151, !295, !"<string literal>", i1 false, i1 false}
!297 = !{ptr @.str.152, !295, !"<string literal>", i1 false, i1 false}
!298 = !{ptr @.str.153, !295, !"<string literal>", i1 false, i1 false}
!299 = !{ptr @rtw89_hex_dump.__UNIQUE_ID_ddebug405, !295, !"__UNIQUE_ID_ddebug405", i1 false, i1 false}
!300 = !{ptr @.str.154, !295, !"<string literal>", i1 false, i1 false}
!301 = distinct !{null, !302, !"h2c_reg", i1 false, i1 false}
!302 = !{!"../drivers/net/wireless/realtek/rtw89/fw.c", i32 1536, i32 19}
!303 = !{ptr @.str.155, !304, !"<string literal>", i1 false, i1 false}
!304 = !{!"../drivers/net/wireless/realtek/rtw89/fw.c", i32 1546, i32 3}
!305 = !{ptr @.str.156, !304, !"<string literal>", i1 false, i1 false}
!306 = !{ptr @rtw89_fw_write_h2c_reg._entry, !304, !"_entry", i1 false, i1 false}
!307 = !{ptr @rtw89_fw_write_h2c_reg._entry_ptr, !304, !"_entry_ptr", i1 false, i1 false}
!308 = distinct !{null, !309, !"c2h_reg", i1 false, i1 false}
!309 = !{!"../drivers/net/wireless/realtek/rtw89/fw.c", i32 1566, i32 19}
!310 = !{ptr @.str.157, !311, !"<string literal>", i1 false, i1 false}
!311 = !{!"../drivers/net/wireless/realtek/rtw89/fw.c", i32 1579, i32 3}
!312 = !{ptr @.str.158, !311, !"<string literal>", i1 false, i1 false}
!313 = !{ptr @rtw89_fw_read_c2h_reg._entry, !311, !"_entry", i1 false, i1 false}
!314 = !{ptr @rtw89_fw_read_c2h_reg._entry_ptr, !311, !"_entry_ptr", i1 false, i1 false}
!315 = !{ptr @.str.159, !316, !"<string literal>", i1 false, i1 false}
!316 = !{!"../drivers/net/wireless/realtek/rtw89/fw.c", i32 398, i32 3}
!317 = !{ptr @.str.160, !316, !"<string literal>", i1 false, i1 false}
!318 = !{ptr @rtw89_fw_prog_cnt_dump._entry, !316, !"_entry", i1 false, i1 false}
!319 = !{ptr @rtw89_fw_prog_cnt_dump._entry_ptr, !316, !"_entry_ptr", i1 false, i1 false}
!320 = distinct !{null, !321, !"<string literal>", i1 false, i1 false}
!321 = !{!"../drivers/net/wireless/realtek/rtw89/core.h", i32 3031, i32 2}
!322 = distinct !{null, !321, !"<string literal>", i1 false, i1 false}
!323 = !{i32 1, !"wchar_size", i32 2}
!324 = !{i32 1, !"min_enum_size", i32 4}
!325 = !{i32 8, !"branch-target-enforcement", i32 0}
!326 = !{i32 8, !"sign-return-address", i32 0}
!327 = !{i32 8, !"sign-return-address-all", i32 0}
!328 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!329 = !{i32 7, !"uwtable", i32 1}
!330 = !{i32 7, !"frame-pointer", i32 2}
!331 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!332 = !{i8 0, i8 2}
!333 = !{!"branch_weights", i32 1, i32 2000}
!334 = !{i64 2148276946, i64 2148276951, i64 2148276964, i64 2148277008, i64 2148277042, i64 2148277063}
