; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/realtek/rtw89/efuse.c_pt.bc'
source_filename = "../drivers/net/wireless/realtek/rtw89/efuse.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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
%struct.rtw89_hci_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rtw89_chip_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@rtw89_parse_efuse_map._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 119, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to check efuse autoload\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rtw89_parse_efuse_map\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drivers/net/wireless/realtek/rtw89/efuse.c\00", [53 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rtw89_parse_efuse_map._entry_ptr = internal global ptr @rtw89_parse_efuse_map._entry, section ".printk_index", align 4
@rtw89_parse_efuse_map._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 131, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"failed to dump efuse physical map\0A\00", [61 x i8] zeroinitializer }, align 32
@rtw89_parse_efuse_map._entry_ptr.7 = internal global ptr @rtw89_parse_efuse_map._entry.5, section ".printk_index", align 4
@rtw89_parse_efuse_map._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.1, ptr @.str.2, i32 138, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to dump efuse logical map\0A\00", [62 x i8] zeroinitializer }, align 32
@rtw89_parse_efuse_map._entry_ptr.10 = internal global ptr @rtw89_parse_efuse_map._entry.8, section ".printk_index", align 4
@.str.11 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"log_map: \00", [22 x i8] zeroinitializer }, align 32
@rtw89_parse_efuse_map._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.1, ptr @.str.2, i32 146, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to read efuse map\0A\00", [38 x i8] zeroinitializer }, align 32
@rtw89_parse_efuse_map._entry_ptr.14 = internal global ptr @rtw89_parse_efuse_map._entry.12, section ".printk_index", align 4
@rtw89_parse_phycap_map._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.2, i32 174, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to dump phycap map\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"rtw89_parse_phycap_map\00", [41 x i8] zeroinitializer }, align 32
@rtw89_parse_phycap_map._entry_ptr = internal global ptr @rtw89_parse_phycap_map._entry, section ".printk_index", align 4
@rtw89_parse_phycap_map._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.16, ptr @.str.2, i32 180, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to read phycap map\0A\00", [37 x i8] zeroinitializer }, align 32
@rtw89_parse_phycap_map._entry_ptr.19 = internal global ptr @rtw89_parse_phycap_map._entry.17, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@rtw89_debug_mask = external dso_local local_unnamed_addr global i32, align 4
@rtw89_hex_dump.__UNIQUE_ID_ddebug390 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, i8 0, i8 16, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rtw89_core\00", [21 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rtw89_hex_dump\00", [17 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drivers/net/wireless/realtek/rtw89/debug.h\00", [53 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"hexdump\00", [24 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 119, i32 3 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 131, i32 3 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 138, i32 3 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 142, i32 39 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 146, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 174, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.79 = private constant [46 x i8] c"../drivers/net/wireless/realtek/rtw89/efuse.c\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 180, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.94 = private unnamed_addr constant [46 x i8] c"../drivers/net/wireless/realtek/rtw89/debug.h\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 65, i32 2 }
@llvm.compiler.used = appending global [29 x ptr] [ptr @rtw89_parse_efuse_map._entry, ptr @rtw89_parse_efuse_map._entry.12, ptr @rtw89_parse_efuse_map._entry.5, ptr @rtw89_parse_efuse_map._entry.8, ptr @rtw89_parse_efuse_map._entry_ptr, ptr @rtw89_parse_efuse_map._entry_ptr.10, ptr @rtw89_parse_efuse_map._entry_ptr.14, ptr @rtw89_parse_efuse_map._entry_ptr.7, ptr @rtw89_parse_phycap_map._entry, ptr @rtw89_parse_phycap_map._entry.17, ptr @rtw89_parse_phycap_map._entry_ptr, ptr @rtw89_parse_phycap_map._entry_ptr.19, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26], section "llvm.metadata"
@0 = internal global [23 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_parse_efuse_map._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_parse_efuse_map._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_parse_efuse_map._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_parse_efuse_map._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_parse_phycap_map._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_parse_phycap_map._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtw89_parse_efuse_map(ptr noundef %rtwdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %chip = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 3
  %0 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip, align 4
  %physical_efuse_size = getelementptr inbounds %struct.rtw89_chip_info, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %physical_efuse_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %physical_efuse_size, align 4
  %logical_efuse_size = getelementptr inbounds %struct.rtw89_chip_info, ptr %1, i32 0, i32 17
  %4 = ptrtoint ptr %logical_efuse_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %logical_efuse_size, align 4
  %hci.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 7
  %6 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hci.i, align 8
  %read16.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %7, i32 0, i32 8
  %8 = ptrtoint ptr %read16.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %read16.i, align 4
  %call.i = tail call zeroext i16 %9(ptr noundef %rtwdev, i32 noundef 10) #5
  %10 = and i16 %call.i, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %tobool.not = icmp eq i16 %10, 0
  br i1 %tobool.not, label %do.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %efuse = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 8
  %11 = ptrtoint ptr %efuse to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %efuse, align 8
  br label %if.end8.i

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 1
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %13, ptr noundef nonnull @.str) #8
  br label %if.end8.i

if.end8.i:                                        ; preds = %do.end, %if.then
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %3, i32 noundef 3264) #9
  %call9.i84 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %5, i32 noundef 3264) #9
  %tobool4.not = icmp eq ptr %call9.i, null
  %tobool5.not = icmp eq ptr %call9.i84, null
  %or.cond = select i1 %tobool4.not, i1 true, i1 %tobool5.not
  br i1 %or.cond, label %if.end8.i.out_free_crit_edge, label %if.end7

if.end8.i.out_free_crit_edge:                     ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_free

if.end7:                                          ; preds = %if.end8.i
  %call8 = tail call fastcc i32 @rtw89_dump_physical_efuse_map(ptr noundef %rtwdev, ptr noundef nonnull %call9.i, i32 noundef 0, i32 noundef %3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end15, label %if.end7.out_free.sink.split_crit_edge

if.end7.out_free.sink.split_crit_edge:            ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_free.sink.split

if.end15:                                         ; preds = %if.end7
  %14 = call ptr @memset(ptr %call9.i84, i32 255, i32 %5)
  %15 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %chip, align 4
  %physical_efuse_size.i = getelementptr inbounds %struct.rtw89_chip_info, ptr %16, i32 0, i32 16
  %17 = ptrtoint ptr %physical_efuse_size.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %physical_efuse_size.i, align 4
  %logical_efuse_size.i = getelementptr inbounds %struct.rtw89_chip_info, ptr %16, i32 0, i32 17
  %19 = ptrtoint ptr %logical_efuse_size.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %logical_efuse_size.i, align 4
  %sec_ctrl_efuse_size.i = getelementptr inbounds %struct.rtw89_chip_info, ptr %16, i32 0, i32 15
  %21 = ptrtoint ptr %sec_ctrl_efuse_size.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %sec_ctrl_efuse_size.i, align 2
  %conv.i = zext i8 %22 to i32
  %sub.i = sub i32 %18, %conv.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %conv.i)
  %cmp89.i = icmp ugt i32 %sub.i, %conv.i
  br i1 %cmp89.i, label %while.body.lr.ph.i, label %if.end15.if.end23_crit_edge

if.end15.if.end23_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end23

while.body.lr.ph.i:                               ; preds = %if.end15
  %sub36.i = add i32 %sub.i, -1
  br label %while.body.i

while.body.i:                                     ; preds = %for.inc.3.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %phy_idx.090.i = phi i32 [ %conv.i, %while.body.lr.ph.i ], [ %phy_idx.2.3.i, %for.inc.3.i.while.body.i_crit_edge ]
  %arrayidx.i = getelementptr i8, ptr %call9.i, i32 %phy_idx.090.i
  %23 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %24)
  %cmp7.i = icmp eq i8 %24, -1
  br i1 %cmp7.i, label %while.body.i.if.end23_crit_edge, label %lor.lhs.false.i

while.body.i.if.end23_crit_edge:                  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end23

lor.lhs.false.i:                                  ; preds = %while.body.i
  %add.i = add nuw i32 %phy_idx.090.i, 1
  %arrayidx5.i = getelementptr i8, ptr %call9.i, i32 %add.i
  %25 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx5.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %26)
  %cmp10.i = icmp eq i8 %26, -1
  br i1 %cmp10.i, label %lor.lhs.false.i.if.end23_crit_edge, label %if.end.i88

lor.lhs.false.i.if.end23_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end23

if.end.i88:                                       ; preds = %lor.lhs.false.i
  %or.i = tail call i8 @llvm.fshl.i8(i8 %24, i8 %26, i8 4) #5
  %27 = and i8 %26, 15
  %add19.i = add i32 %phy_idx.090.i, 2
  %conv22.i = zext i8 %27 to i32
  %conv29.i = zext i8 %or.i to i32
  %shl30.i = shl nuw nsw i32 %conv29.i, 3
  %and24.i = and i32 %conv22.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24.i)
  %cmp25.not.i = icmp eq i32 %and24.i, 0
  br i1 %cmp25.not.i, label %if.end28.i, label %if.end.i88.for.inc.i_crit_edge

if.end.i88.for.inc.i_crit_edge:                   ; preds = %if.end.i88
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

if.end28.i:                                       ; preds = %if.end.i88
  %add33.i = add i32 %phy_idx.090.i, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %add33.i, i32 %sub36.i)
  %cmp37.i = icmp ugt i32 %add33.i, %sub36.i
  br i1 %cmp37.i, label %if.end28.i.out_free.sink.split_crit_edge, label %lor.lhs.false39.i

if.end28.i.out_free.sink.split_crit_edge:         ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_free.sink.split

lor.lhs.false39.i:                                ; preds = %if.end28.i
  %add40.i = or i32 %shl30.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add40.i, i32 %20)
  %cmp41.i = icmp ugt i32 %add40.i, %20
  br i1 %cmp41.i, label %lor.lhs.false39.i.out_free.sink.split_crit_edge, label %if.end44.i

lor.lhs.false39.i.out_free.sink.split_crit_edge:  ; preds = %lor.lhs.false39.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_free.sink.split

if.end44.i:                                       ; preds = %lor.lhs.false39.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx45.i = getelementptr i8, ptr %call9.i, i32 %add19.i
  %28 = ptrtoint ptr %arrayidx45.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx45.i, align 1
  %arrayidx46.i = getelementptr i8, ptr %call9.i84, i32 %shl30.i
  %30 = ptrtoint ptr %arrayidx46.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %29, ptr %arrayidx46.i, align 8
  %arrayidx48.i = getelementptr i8, ptr %call9.i, i32 %add33.i
  %31 = ptrtoint ptr %arrayidx48.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx48.i, align 1
  %arrayidx50.i = getelementptr i8, ptr %call9.i84, i32 %add40.i
  %33 = ptrtoint ptr %arrayidx50.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %32, ptr %arrayidx50.i, align 1
  %add51.i = add i32 %phy_idx.090.i, 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end44.i, %if.end.i88.for.inc.i_crit_edge
  %phy_idx.2.i = phi i32 [ %add19.i, %if.end.i88.for.inc.i_crit_edge ], [ %add51.i, %if.end44.i ]
  %and24.1.i = and i32 %conv22.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24.1.i)
  %cmp25.not.1.i = icmp eq i32 %and24.1.i, 0
  br i1 %cmp25.not.1.i, label %if.end28.1.i, label %for.inc.i.for.inc.1.i_crit_edge

for.inc.i.for.inc.1.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.1.i

if.end28.1.i:                                     ; preds = %for.inc.i
  %add32.1.i = or i32 %shl30.i, 2
  %add33.1.i = add i32 %phy_idx.2.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add33.1.i, i32 %sub36.i)
  %cmp37.1.i = icmp ugt i32 %add33.1.i, %sub36.i
  br i1 %cmp37.1.i, label %if.end28.1.i.out_free.sink.split_crit_edge, label %lor.lhs.false39.1.i

if.end28.1.i.out_free.sink.split_crit_edge:       ; preds = %if.end28.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_free.sink.split

lor.lhs.false39.1.i:                              ; preds = %if.end28.1.i
  %add40.1.i = or i32 %shl30.i, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %add40.1.i, i32 %20)
  %cmp41.1.i = icmp ugt i32 %add40.1.i, %20
  br i1 %cmp41.1.i, label %lor.lhs.false39.1.i.out_free.sink.split_crit_edge, label %if.end44.1.i

lor.lhs.false39.1.i.out_free.sink.split_crit_edge: ; preds = %lor.lhs.false39.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_free.sink.split

if.end44.1.i:                                     ; preds = %lor.lhs.false39.1.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx45.1.i = getelementptr i8, ptr %call9.i, i32 %phy_idx.2.i
  %34 = ptrtoint ptr %arrayidx45.1.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx45.1.i, align 1
  %arrayidx46.1.i = getelementptr i8, ptr %call9.i84, i32 %add32.1.i
  %36 = ptrtoint ptr %arrayidx46.1.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %35, ptr %arrayidx46.1.i, align 2
  %arrayidx48.1.i = getelementptr i8, ptr %call9.i, i32 %add33.1.i
  %37 = ptrtoint ptr %arrayidx48.1.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx48.1.i, align 1
  %arrayidx50.1.i = getelementptr i8, ptr %call9.i84, i32 %add40.1.i
  %39 = ptrtoint ptr %arrayidx50.1.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %38, ptr %arrayidx50.1.i, align 1
  %add51.1.i = add i32 %phy_idx.2.i, 2
  br label %for.inc.1.i

for.inc.1.i:                                      ; preds = %if.end44.1.i, %for.inc.i.for.inc.1.i_crit_edge
  %phy_idx.2.1.i = phi i32 [ %phy_idx.2.i, %for.inc.i.for.inc.1.i_crit_edge ], [ %add51.1.i, %if.end44.1.i ]
  %and24.2.i = and i32 %conv22.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24.2.i)
  %cmp25.not.2.i = icmp eq i32 %and24.2.i, 0
  br i1 %cmp25.not.2.i, label %if.end28.2.i, label %for.inc.1.i.for.inc.2.i_crit_edge

for.inc.1.i.for.inc.2.i_crit_edge:                ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.2.i

if.end28.2.i:                                     ; preds = %for.inc.1.i
  %add32.2.i = or i32 %shl30.i, 4
  %add33.2.i = add i32 %phy_idx.2.1.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add33.2.i, i32 %sub36.i)
  %cmp37.2.i = icmp ugt i32 %add33.2.i, %sub36.i
  br i1 %cmp37.2.i, label %if.end28.2.i.out_free.sink.split_crit_edge, label %lor.lhs.false39.2.i

if.end28.2.i.out_free.sink.split_crit_edge:       ; preds = %if.end28.2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_free.sink.split

lor.lhs.false39.2.i:                              ; preds = %if.end28.2.i
  %add40.2.i = or i32 %shl30.i, 5
  call void @__sanitizer_cov_trace_cmp4(i32 %add40.2.i, i32 %20)
  %cmp41.2.i = icmp ugt i32 %add40.2.i, %20
  br i1 %cmp41.2.i, label %lor.lhs.false39.2.i.out_free.sink.split_crit_edge, label %if.end44.2.i

lor.lhs.false39.2.i.out_free.sink.split_crit_edge: ; preds = %lor.lhs.false39.2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_free.sink.split

if.end44.2.i:                                     ; preds = %lor.lhs.false39.2.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx45.2.i = getelementptr i8, ptr %call9.i, i32 %phy_idx.2.1.i
  %40 = ptrtoint ptr %arrayidx45.2.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx45.2.i, align 1
  %arrayidx46.2.i = getelementptr i8, ptr %call9.i84, i32 %add32.2.i
  %42 = ptrtoint ptr %arrayidx46.2.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %41, ptr %arrayidx46.2.i, align 4
  %arrayidx48.2.i = getelementptr i8, ptr %call9.i, i32 %add33.2.i
  %43 = ptrtoint ptr %arrayidx48.2.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx48.2.i, align 1
  %arrayidx50.2.i = getelementptr i8, ptr %call9.i84, i32 %add40.2.i
  %45 = ptrtoint ptr %arrayidx50.2.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %44, ptr %arrayidx50.2.i, align 1
  %add51.2.i = add i32 %phy_idx.2.1.i, 2
  br label %for.inc.2.i

for.inc.2.i:                                      ; preds = %if.end44.2.i, %for.inc.1.i.for.inc.2.i_crit_edge
  %phy_idx.2.2.i = phi i32 [ %phy_idx.2.1.i, %for.inc.1.i.for.inc.2.i_crit_edge ], [ %add51.2.i, %if.end44.2.i ]
  %and24.3.i = and i32 %conv22.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24.3.i)
  %cmp25.not.3.i = icmp eq i32 %and24.3.i, 0
  br i1 %cmp25.not.3.i, label %if.end28.3.i, label %for.inc.2.i.for.inc.3.i_crit_edge

for.inc.2.i.for.inc.3.i_crit_edge:                ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.3.i

if.end28.3.i:                                     ; preds = %for.inc.2.i
  %add32.3.i = or i32 %shl30.i, 6
  %add33.3.i = add i32 %phy_idx.2.2.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add33.3.i, i32 %sub36.i)
  %cmp37.3.i = icmp ugt i32 %add33.3.i, %sub36.i
  br i1 %cmp37.3.i, label %if.end28.3.i.out_free.sink.split_crit_edge, label %lor.lhs.false39.3.i

if.end28.3.i.out_free.sink.split_crit_edge:       ; preds = %if.end28.3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_free.sink.split

lor.lhs.false39.3.i:                              ; preds = %if.end28.3.i
  %add40.3.i = or i32 %shl30.i, 7
  call void @__sanitizer_cov_trace_cmp4(i32 %add40.3.i, i32 %20)
  %cmp41.3.i = icmp ugt i32 %add40.3.i, %20
  br i1 %cmp41.3.i, label %lor.lhs.false39.3.i.out_free.sink.split_crit_edge, label %if.end44.3.i

lor.lhs.false39.3.i.out_free.sink.split_crit_edge: ; preds = %lor.lhs.false39.3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_free.sink.split

if.end44.3.i:                                     ; preds = %lor.lhs.false39.3.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx45.3.i = getelementptr i8, ptr %call9.i, i32 %phy_idx.2.2.i
  %46 = ptrtoint ptr %arrayidx45.3.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx45.3.i, align 1
  %arrayidx46.3.i = getelementptr i8, ptr %call9.i84, i32 %add32.3.i
  %48 = ptrtoint ptr %arrayidx46.3.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %47, ptr %arrayidx46.3.i, align 2
  %arrayidx48.3.i = getelementptr i8, ptr %call9.i, i32 %add33.3.i
  %49 = ptrtoint ptr %arrayidx48.3.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx48.3.i, align 1
  %arrayidx50.3.i = getelementptr i8, ptr %call9.i84, i32 %add40.3.i
  %51 = ptrtoint ptr %arrayidx50.3.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %50, ptr %arrayidx50.3.i, align 1
  %add51.3.i = add i32 %phy_idx.2.2.i, 2
  br label %for.inc.3.i

for.inc.3.i:                                      ; preds = %if.end44.3.i, %for.inc.2.i.for.inc.3.i_crit_edge
  %phy_idx.2.3.i = phi i32 [ %phy_idx.2.2.i, %for.inc.2.i.for.inc.3.i_crit_edge ], [ %add51.3.i, %if.end44.3.i ]
  %cmp.i89 = icmp ult i32 %phy_idx.2.3.i, %sub.i
  br i1 %cmp.i89, label %for.inc.3.i.while.body.i_crit_edge, label %for.inc.3.i.if.end23_crit_edge

for.inc.3.i.if.end23_crit_edge:                   ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end23

for.inc.3.i.while.body.i_crit_edge:               ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i

if.end23:                                         ; preds = %for.inc.3.i.if.end23_crit_edge, %lor.lhs.false.i.if.end23_crit_edge, %while.body.i.if.end23_crit_edge, %if.end15.if.end23_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rtw89_debug_mask to i32))
  %52 = load i32, ptr @rtw89_debug_mask, align 4
  %and.i = and i32 %52, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end23.rtw89_hex_dump.exit_crit_edge, label %do.body.i

if.end23.rtw89_hex_dump.exit_crit_edge:           ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtw89_hex_dump.exit

do.body.i:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtw89_hex_dump.__UNIQUE_ID_ddebug390, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtw89_parse_efuse_map, %if.then4.i)) #5
          to label %rtw89_hex_dump.exit [label %if.then4.i], !srcloc !50

if.then4.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @print_hex_dump(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.11, i32 noundef 2, i32 noundef 16, i32 noundef 1, ptr noundef %call9.i84, i32 noundef %5, i1 noundef zeroext true) #5
  br label %rtw89_hex_dump.exit

rtw89_hex_dump.exit:                              ; preds = %if.then4.i, %do.body.i, %if.end23.rtw89_hex_dump.exit_crit_edge
  %53 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %chip, align 4
  %ops = getelementptr inbounds %struct.rtw89_chip_info, ptr %54, i32 0, i32 1
  %55 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %ops, align 4
  %read_efuse = getelementptr inbounds %struct.rtw89_chip_ops, ptr %56, i32 0, i32 6
  %57 = ptrtoint ptr %read_efuse to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %read_efuse, align 4
  %call25 = tail call i32 %58(ptr noundef %rtwdev, ptr noundef nonnull %call9.i84) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %rtw89_hex_dump.exit.out_free_crit_edge, label %rtw89_hex_dump.exit.out_free.sink.split_crit_edge

rtw89_hex_dump.exit.out_free.sink.split_crit_edge: ; preds = %rtw89_hex_dump.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_free.sink.split

rtw89_hex_dump.exit.out_free_crit_edge:           ; preds = %rtw89_hex_dump.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_free

out_free.sink.split:                              ; preds = %rtw89_hex_dump.exit.out_free.sink.split_crit_edge, %lor.lhs.false39.3.i.out_free.sink.split_crit_edge, %if.end28.3.i.out_free.sink.split_crit_edge, %lor.lhs.false39.2.i.out_free.sink.split_crit_edge, %if.end28.2.i.out_free.sink.split_crit_edge, %lor.lhs.false39.1.i.out_free.sink.split_crit_edge, %if.end28.1.i.out_free.sink.split_crit_edge, %lor.lhs.false39.i.out_free.sink.split_crit_edge, %if.end28.i.out_free.sink.split_crit_edge, %if.end7.out_free.sink.split_crit_edge
  %.str.13.sink = phi ptr [ @.str.6, %if.end7.out_free.sink.split_crit_edge ], [ @.str.13, %rtw89_hex_dump.exit.out_free.sink.split_crit_edge ], [ @.str.9, %if.end28.i.out_free.sink.split_crit_edge ], [ @.str.9, %lor.lhs.false39.i.out_free.sink.split_crit_edge ], [ @.str.9, %if.end28.1.i.out_free.sink.split_crit_edge ], [ @.str.9, %lor.lhs.false39.1.i.out_free.sink.split_crit_edge ], [ @.str.9, %if.end28.2.i.out_free.sink.split_crit_edge ], [ @.str.9, %lor.lhs.false39.2.i.out_free.sink.split_crit_edge ], [ @.str.9, %if.end28.3.i.out_free.sink.split_crit_edge ], [ @.str.9, %lor.lhs.false39.3.i.out_free.sink.split_crit_edge ]
  %ret.0.ph = phi i32 [ %call8, %if.end7.out_free.sink.split_crit_edge ], [ %call25, %rtw89_hex_dump.exit.out_free.sink.split_crit_edge ], [ -22, %if.end28.i.out_free.sink.split_crit_edge ], [ -22, %lor.lhs.false39.i.out_free.sink.split_crit_edge ], [ -22, %if.end28.1.i.out_free.sink.split_crit_edge ], [ -22, %lor.lhs.false39.1.i.out_free.sink.split_crit_edge ], [ -22, %if.end28.2.i.out_free.sink.split_crit_edge ], [ -22, %lor.lhs.false39.2.i.out_free.sink.split_crit_edge ], [ -22, %if.end28.3.i.out_free.sink.split_crit_edge ], [ -22, %lor.lhs.false39.3.i.out_free.sink.split_crit_edge ]
  %dev31 = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 1
  %59 = ptrtoint ptr %dev31 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dev31, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %60, ptr noundef nonnull %.str.13.sink) #8
  br label %out_free

out_free:                                         ; preds = %out_free.sink.split, %rtw89_hex_dump.exit.out_free_crit_edge, %if.end8.i.out_free_crit_edge
  %ret.0 = phi i32 [ 0, %rtw89_hex_dump.exit.out_free_crit_edge ], [ -12, %if.end8.i.out_free_crit_edge ], [ %ret.0.ph, %out_free.sink.split ]
  tail call void @kfree(ptr noundef %call9.i84) #5
  tail call void @kfree(ptr noundef %call9.i) #5
  ret i32 %ret.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rtw89_dump_physical_efuse_map(ptr noundef %rtwdev, ptr nocapture noundef writeonly %map, i32 noundef %dump_addr, i32 noundef %dump_size) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %hci.i.i.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 7
  %0 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hci.i.i.i, align 8
  %read32.i.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %read32.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %read32.i.i.i, align 4
  %call.i.i.i = tail call i32 %3(ptr noundef %rtwdev, i32 noundef 56) #5
  %4 = and i32 %call.i.i.i, 768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp.i = icmp eq i32 %4, 0
  br i1 %cmp.i, label %entry.rtw89_switch_efuse_bank.exit_crit_edge, label %if.end.i

entry.rtw89_switch_efuse_bank.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtw89_switch_efuse_bank.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %5 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hci.i.i.i, align 8
  %read32.i.i2.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %6, i32 0, i32 9
  %7 = ptrtoint ptr %read32.i.i2.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %read32.i.i2.i, align 4
  %call.i.i3.i = tail call i32 %8(ptr noundef %rtwdev, i32 noundef 56) #5
  %and21.i.i = and i32 %call.i.i3.i, -769
  %9 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hci.i.i.i, align 8
  %write32.i.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %10, i32 0, i32 12
  %11 = ptrtoint ptr %write32.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %write32.i.i.i, align 4
  tail call void %12(ptr noundef %rtwdev, i32 noundef 56, i32 noundef %and21.i.i) #5
  %13 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hci.i.i.i, align 8
  %read32.i.i5.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %14, i32 0, i32 9
  %15 = ptrtoint ptr %read32.i.i5.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %read32.i.i5.i, align 4
  %call.i.i6.i = tail call i32 %16(ptr noundef %rtwdev, i32 noundef 56) #5
  br label %rtw89_switch_efuse_bank.exit

rtw89_switch_efuse_bank.exit:                     ; preds = %if.end.i, %entry.rtw89_switch_efuse_bank.exit_crit_edge
  %add = add i32 %dump_size, %dump_addr
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %dump_addr)
  %cmp70 = icmp ugt i32 %add, %dump_addr
  br i1 %cmp70, label %rtw89_switch_efuse_bank.exit.u32_encode_bits.exit_crit_edge, label %rtw89_switch_efuse_bank.exit.cleanup_crit_edge

rtw89_switch_efuse_bank.exit.cleanup_crit_edge:   ; preds = %rtw89_switch_efuse_bank.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

rtw89_switch_efuse_bank.exit.u32_encode_bits.exit_crit_edge: ; preds = %rtw89_switch_efuse_bank.exit
  br label %u32_encode_bits.exit

u32_encode_bits.exit:                             ; preds = %if.end36.u32_encode_bits.exit_crit_edge, %rtw89_switch_efuse_bank.exit.u32_encode_bits.exit_crit_edge
  %addr.072 = phi i32 [ %inc, %if.end36.u32_encode_bits.exit_crit_edge ], [ %dump_addr, %rtw89_switch_efuse_bank.exit.u32_encode_bits.exit_crit_edge ]
  %map.addr.071 = phi ptr [ %incdec.ptr, %if.end36.u32_encode_bits.exit_crit_edge ], [ %map, %rtw89_switch_efuse_bank.exit.u32_encode_bits.exit_crit_edge ]
  %17 = shl i32 %addr.072, 16
  %18 = and i32 %17, 134152192
  %19 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %hci.i.i.i, align 8
  %write32.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %20, i32 0, i32 12
  %21 = ptrtoint ptr %write32.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %write32.i, align 4
  tail call void %22(ptr noundef %rtwdev, i32 noundef 48, i32 noundef %18) #5
  %call2 = tail call i64 @ktime_get() #5
  %add.i = add i64 %call2, 1000000000
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %23(i32 noundef 214748) #5
  %24 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %hci.i.i.i, align 8
  %read32.i66 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %25, i32 0, i32 9
  %26 = ptrtoint ptr %read32.i66 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %read32.i66, align 4
  %call.i67 = tail call i32 %27(ptr noundef %rtwdev, i32 noundef 48) #5
  %and1068 = and i32 %call.i67, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1068)
  %tobool11.not69 = icmp eq i32 %and1068, 0
  br i1 %tobool11.not69, label %u32_encode_bits.exit.land.lhs.true_crit_edge, label %u32_encode_bits.exit.if.end36_crit_edge

u32_encode_bits.exit.if.end36_crit_edge:          ; preds = %u32_encode_bits.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end36

u32_encode_bits.exit.land.lhs.true_crit_edge:     ; preds = %u32_encode_bits.exit
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %cond.false26.land.lhs.true_crit_edge, %u32_encode_bits.exit.land.lhs.true_crit_edge
  %call15 = tail call i64 @ktime_get() #5
  call void @__sanitizer_cov_trace_cmp8(i64 %call15, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call15, %add.i
  br i1 %cmp3.i, label %for.end, label %cond.false26

cond.false26:                                     ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %28 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %28(i32 noundef 214748) #5
  %29 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %hci.i.i.i, align 8
  %read32.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %30, i32 0, i32 9
  %31 = ptrtoint ptr %read32.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %read32.i, align 4
  %call.i = tail call i32 %32(ptr noundef %rtwdev, i32 noundef 48) #5
  %and10 = and i32 %call.i, 536870912
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %cond.false26.land.lhs.true_crit_edge, label %cond.false26.if.end36_crit_edge

cond.false26.if.end36_crit_edge:                  ; preds = %cond.false26
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end36

cond.false26.land.lhs.true_crit_edge:             ; preds = %cond.false26
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true

for.end:                                          ; preds = %land.lhs.true
  %33 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %hci.i.i.i, align 8
  %read32.i63 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %34, i32 0, i32 9
  %35 = ptrtoint ptr %read32.i63 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %read32.i63, align 4
  %call.i64 = tail call i32 %36(ptr noundef %rtwdev, i32 noundef 48) #5
  %.pre = and i32 %call.i64, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pre)
  %tobool33.not = icmp eq i32 %.pre, 0
  br i1 %tobool33.not, label %for.end.cleanup_crit_edge, label %for.end.if.end36_crit_edge

for.end.if.end36_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end36

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end36:                                         ; preds = %for.end.if.end36_crit_edge, %cond.false26.if.end36_crit_edge, %u32_encode_bits.exit.if.end36_crit_edge
  %efuse_ctl.078 = phi i32 [ %call.i64, %for.end.if.end36_crit_edge ], [ %call.i67, %u32_encode_bits.exit.if.end36_crit_edge ], [ %call.i, %cond.false26.if.end36_crit_edge ]
  %conv = trunc i32 %efuse_ctl.078 to i8
  %incdec.ptr = getelementptr i8, ptr %map.addr.071, i32 1
  %37 = ptrtoint ptr %map.addr.071 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %conv, ptr %map.addr.071, align 1
  %inc = add nuw i32 %addr.072, 1
  %exitcond.not = icmp eq i32 %inc, %add
  br i1 %exitcond.not, label %if.end36.cleanup_crit_edge, label %if.end36.u32_encode_bits.exit_crit_edge

if.end36.u32_encode_bits.exit_crit_edge:          ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #7
  br label %u32_encode_bits.exit

if.end36.cleanup_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup:                                          ; preds = %if.end36.cleanup_crit_edge, %for.end.cleanup_crit_edge, %rtw89_switch_efuse_bank.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %rtw89_switch_efuse_bank.exit.cleanup_crit_edge ], [ 0, %if.end36.cleanup_crit_edge ], [ -16, %for.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtw89_parse_phycap_map(ptr noundef %rtwdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %chip = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 3
  %0 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip, align 4
  %phycap_addr1 = getelementptr inbounds %struct.rtw89_chip_info, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %phycap_addr1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %phycap_addr1, align 4
  %phycap_size3 = getelementptr inbounds %struct.rtw89_chip_info, ptr %1, i32 0, i32 20
  %4 = ptrtoint ptr %phycap_size3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %phycap_size3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end8.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end8.i:                                        ; preds = %entry
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %5, i32 noundef 3264) #9
  %tobool4.not = icmp eq ptr %call9.i, null
  br i1 %tobool4.not, label %if.end8.i.cleanup_crit_edge, label %if.end6

if.end8.i.cleanup_crit_edge:                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end6:                                          ; preds = %if.end8.i
  %call7 = tail call fastcc i32 @rtw89_dump_physical_efuse_map(ptr noundef %rtwdev, ptr noundef nonnull %call9.i, i32 noundef %3, i32 noundef %5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %if.end6.out_free.sink.split_crit_edge

if.end6.out_free.sink.split_crit_edge:            ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_free.sink.split

if.end10:                                         ; preds = %if.end6
  %6 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %chip, align 4
  %ops = getelementptr inbounds %struct.rtw89_chip_info, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops, align 4
  %read_phycap = getelementptr inbounds %struct.rtw89_chip_ops, ptr %9, i32 0, i32 7
  %10 = ptrtoint ptr %read_phycap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %read_phycap, align 4
  %call12 = tail call i32 %11(ptr noundef %rtwdev, ptr noundef nonnull %call9.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end10.out_free_crit_edge, label %if.end10.out_free.sink.split_crit_edge

if.end10.out_free.sink.split_crit_edge:           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_free.sink.split

if.end10.out_free_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_free

out_free.sink.split:                              ; preds = %if.end10.out_free.sink.split_crit_edge, %if.end6.out_free.sink.split_crit_edge
  %.str.18.sink = phi ptr [ @.str.15, %if.end6.out_free.sink.split_crit_edge ], [ @.str.18, %if.end10.out_free.sink.split_crit_edge ]
  %ret.0.ph = phi i32 [ %call7, %if.end6.out_free.sink.split_crit_edge ], [ %call12, %if.end10.out_free.sink.split_crit_edge ]
  %dev18 = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 1
  %12 = ptrtoint ptr %dev18 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev18, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %13, ptr noundef nonnull %.str.18.sink) #8
  br label %out_free

out_free:                                         ; preds = %out_free.sink.split, %if.end10.out_free_crit_edge
  %ret.0 = phi i32 [ 0, %if.end10.out_free_crit_edge ], [ %ret.0.ph, %out_free.sink.split ]
  tail call void @kfree(ptr noundef nonnull %call9.i) #5
  br label %cleanup

cleanup:                                          ; preds = %out_free, %if.end8.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out_free ], [ 0, %entry.cleanup_crit_edge ], [ -12, %if.end8.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @print_hex_dump(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.fshl.i8(i8, i8, i8) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }
attributes #9 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !16, !18, !20, !21, !22, !24, !25, !26, !27, !29, !30, !31, !33, !34, !36, !37, !38, !39, !40}
!llvm.module.flags = !{!41, !42, !43, !44, !45, !46, !47, !48}
!llvm.ident = !{!49}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/realtek/rtw89/efuse.c", i32 119, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @rtw89_parse_efuse_map._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @rtw89_parse_efuse_map._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/realtek/rtw89/efuse.c", i32 131, i32 3}
!10 = !{ptr @rtw89_parse_efuse_map._entry.5, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @rtw89_parse_efuse_map._entry_ptr.7, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.9, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/realtek/rtw89/efuse.c", i32 138, i32 3}
!14 = !{ptr @rtw89_parse_efuse_map._entry.8, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @rtw89_parse_efuse_map._entry_ptr.10, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.11, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/realtek/rtw89/efuse.c", i32 142, i32 39}
!18 = !{ptr @.str.13, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/wireless/realtek/rtw89/efuse.c", i32 146, i32 3}
!20 = !{ptr @rtw89_parse_efuse_map._entry.12, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @rtw89_parse_efuse_map._entry_ptr.14, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.15, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/wireless/realtek/rtw89/efuse.c", i32 174, i32 3}
!24 = !{ptr @.str.16, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @rtw89_parse_phycap_map._entry, !23, !"_entry", i1 false, i1 false}
!26 = !{ptr @rtw89_parse_phycap_map._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.18, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/net/wireless/realtek/rtw89/efuse.c", i32 180, i32 3}
!29 = !{ptr @rtw89_parse_phycap_map._entry.17, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @rtw89_parse_phycap_map._entry_ptr.19, !28, !"_entry_ptr", i1 false, i1 false}
!31 = distinct !{null, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/net/wireless/realtek/rtw89/core.h", i32 3031, i32 2}
!33 = distinct !{null, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.22, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/wireless/realtek/rtw89/debug.h", i32 65, i32 2}
!36 = !{ptr @.str.23, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.24, !35, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.25, !35, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @rtw89_hex_dump.__UNIQUE_ID_ddebug390, !35, !"__UNIQUE_ID_ddebug390", i1 false, i1 false}
!40 = !{ptr @.str.26, !35, !"<string literal>", i1 false, i1 false}
!41 = !{i32 1, !"wchar_size", i32 2}
!42 = !{i32 1, !"min_enum_size", i32 4}
!43 = !{i32 8, !"branch-target-enforcement", i32 0}
!44 = !{i32 8, !"sign-return-address", i32 0}
!45 = !{i32 8, !"sign-return-address-all", i32 0}
!46 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!47 = !{i32 7, !"uwtable", i32 1}
!48 = !{i32 7, !"frame-pointer", i32 2}
!49 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!50 = !{i64 2148229882, i64 2148229887, i64 2148229900, i64 2148229944, i64 2148229978, i64 2148229999}
