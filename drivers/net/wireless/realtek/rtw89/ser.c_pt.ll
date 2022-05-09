; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/realtek/rtw89/ser.c_pt.bc'
source_filename = "../drivers/net/wireless/realtek/rtw89/ser.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+rtw89_ser_notify\22, \22a\22\09"
module asm "\09.weak\09__crc_rtw89_ser_notify\09\09\09\09"
module asm "\09.long\09__crc_rtw89_ser_notify\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rtw89_ser_notify:\09\09\09\09\09"
module asm "\09.asciz \09\22rtw89_ser_notify\22\09\09\09\09\09"
module asm "__kstrtabns_rtw89_ser_notify:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.state_ent = type { i8, ptr, ptr }
%struct.event_ent = type { i8, ptr }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
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
%struct.ser_msg = type { %struct.list_head, i8 }
%struct.rtw89_hci_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rtw89_vif = type { %struct.list_head, i8, i8, [6 x i8], [6 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.rtw89_addr_cam_entry, %struct.rtw89_bssid_cam_entry, [4 x %struct.ieee80211_tx_queue_params], %struct.rtw89_traffic_stats, %struct.rtw89_phy_rate_pattern }
%struct.rtw89_addr_cam_entry = type <{ i8, i8, i8, i16, [6 x i8], i8, [1 x i32], [7 x i8], [7 x i8], [2 x i8], [7 x ptr] }>
%struct.rtw89_bssid_cam_entry = type { [6 x i8], i8, i8, i8, i8, i8, i8 }
%struct.ieee80211_tx_queue_params = type { i16, i16, i16, i8, i8, i8, i8, %struct.ieee80211_he_mu_edca_param_ac_rec }
%struct.ieee80211_he_mu_edca_param_ac_rec = type { i8, i8, i8 }
%struct.rtw89_phy_rate_pattern = type { i64, i16, i8, i8 }

@ser_st_tbl = internal global { [4 x %struct.state_ent], [48 x i8] } { [4 x %struct.state_ent] [%struct.state_ent { i8 0, ptr @.str.12, ptr @ser_idle_st_hdl }, %struct.state_ent { i8 1, ptr @.str.13, ptr @ser_reset_trx_st_hdl }, %struct.state_ent { i8 2, ptr @.str.14, ptr @ser_do_hci_st_hdl }, %struct.state_ent { i8 3, ptr @.str.15, ptr @ser_l2_reset_st_hdl }], [48 x i8] zeroinitializer }, align 32
@ser_ev_tbl = internal global { [13 x %struct.event_ent], [56 x i8] } { [13 x %struct.event_ent] [%struct.event_ent { i8 0, ptr @.str.22 }, %struct.event_ent { i8 1, ptr @.str.23 }, %struct.event_ent { i8 2, ptr @.str.24 }, %struct.event_ent { i8 3, ptr @.str.25 }, %struct.event_ent { i8 4, ptr @.str.26 }, %struct.event_ent { i8 5, ptr @.str.27 }, %struct.event_ent { i8 6, ptr @.str.28 }, %struct.event_ent { i8 7, ptr @.str.29 }, %struct.event_ent { i8 8, ptr @.str.30 }, %struct.event_ent { i8 9, ptr @.str.31 }, %struct.event_ent { i8 10, ptr @.str.32 }, %struct.event_ent { i8 11, ptr @.str.33 }, %struct.event_ent { i8 12, ptr @.str.34 }], [56 x i8] zeroinitializer }, align 32
@rtw89_ser_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&ser->msg_q_lock\00", [47 x i8] zeroinitializer }, align 32
@rtw89_ser_init.__key.1 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"(work_completion)(&ser->ser_hdl_work)\00", [58 x i8] zeroinitializer }, align 32
@rtw89_ser_init.__key.3 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"(work_completion)(&(&ser->ser_alarm_work)->work)\00", [47 x i8] zeroinitializer }, align 32
@rtw89_ser_init.__key.5 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"&(&ser->ser_alarm_work)->timer\00", [33 x i8] zeroinitializer }, align 32
@rtw89_ser_notify._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.9, i32 459, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ser event = 0x%04x\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rtw89_ser_notify\00", [47 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/net/wireless/realtek/rtw89/ser.c\00", [55 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rtw89_ser_notify._entry_ptr = internal global ptr @rtw89_ser_notify._entry, section ".printk_index", align 4
@__kstrtab_rtw89_ser_notify = external dso_local constant [0 x i8], align 1
@__kstrtabns_rtw89_ser_notify = external dso_local constant [0 x i8], align 1
@__ksymtab_rtw89_ser_notify = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rtw89_ser_notify to i32), ptr @__kstrtab_rtw89_ser_notify, ptr @__kstrtabns_rtw89_ser_notify }, section "___ksymtab+rtw89_ser_notify", align 4
@.str.12 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"SER_IDLE_ST\00", [20 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"SER_RESET_TRX_ST\00", [47 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"SER_DO_HCI_ST\00", [18 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"SER_L2_RESET_ST\00", [16 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ser: %s goto -> %s\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ser: %s receive %s\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"err_ev_name\00", [20 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"err_st_name\00", [20 x i8] zeroinitializer }, align 32
@ser_l2_reset_st_hdl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.9, i32 384, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Err: ser L2 re-config timeout\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ser_l2_reset_st_hdl\00", [44 x i8] zeroinitializer }, align 32
@ser_l2_reset_st_hdl._entry_ptr = internal global ptr @ser_l2_reset_st_hdl._entry, section ".printk_index", align 4
@.str.22 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"SER_EV_NONE\00", [20 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"SER_EV_STATE_IN\00", [16 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"SER_EV_STATE_OUT\00", [47 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"SER_EV_L1_RESET\00", [16 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"SER_EV_DO_RECOVERY m3\00", [42 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"SER_EV_MAC_RESET_DONE m5\00", [39 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"SER_EV_L2_RESET\00", [16 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"SER_EV_L2_RECFG_DONE\00", [43 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"SER_EV_L2_RECFG_TIMEOUT\00", [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"SER_EV_M3_TIMEOUT\00", [46 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"SER_EV_FW_M5_TIMEOUT\00", [43 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"SER_EV_L0_RESET\00", [16 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"SER_EV_MAX\00", [21 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__sancov_gen_cov_switch_values = internal global [10 x i64] [i64 8, i64 32, i64 1, i64 2, i64 3, i64 16, i64 4096, i64 4097, i64 4098, i64 4112]
@__sancov_gen_cov_switch_values.35 = internal global [4 x i64] [i64 2, i64 8, i64 3, i64 6]
@__sancov_gen_cov_switch_values.36 = internal global [6 x i64] [i64 4, i64 8, i64 1, i64 2, i64 4, i64 9]
@__sancov_gen_cov_switch_values.37 = internal global [6 x i64] [i64 4, i64 8, i64 1, i64 2, i64 5, i64 10]
@__sancov_gen_cov_switch_values.38 = internal global [6 x i64] [i64 4, i64 8, i64 1, i64 2, i64 7, i64 8]
@___asan_gen_.39 = private unnamed_addr constant [11 x i8] c"ser_st_tbl\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 415, i32 25 }
@___asan_gen_.42 = private unnamed_addr constant [11 x i8] c"ser_ev_tbl\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 399, i32 25 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 433, i32 2 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 434, i32 2 }
@___asan_gen_.63 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 435, i32 2 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 459, i32 2 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 416, i32 16 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 417, i32 21 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 418, i32 18 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 419, i32 20 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 89, i32 2 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 74, i32 2 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 59, i32 9 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 67, i32 9 }
@___asan_gen_.111 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 384, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 400, i32 16 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 401, i32 20 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 402, i32 21 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 403, i32 20 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 404, i32 23 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 405, i32 26 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 406, i32 20 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 407, i32 25 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 408, i32 28 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 409, i32 22 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 410, i32 25 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 411, i32 20 }
@___asan_gen_.156 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.157 = private constant [44 x i8] c"../drivers/net/wireless/realtek/rtw89/ser.c\00", align 1
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 412, i32 16 }
@llvm.compiler.used = appending global [43 x ptr] [ptr @__ksymtab_rtw89_ser_notify, ptr @rtw89_ser_notify._entry, ptr @rtw89_ser_notify._entry_ptr, ptr @ser_l2_reset_st_hdl._entry, ptr @ser_l2_reset_st_hdl._entry_ptr, ptr @ser_st_tbl, ptr @ser_ev_tbl, ptr @rtw89_ser_init.__key, ptr @.str, ptr @rtw89_ser_init.__key.1, ptr @.str.2, ptr @rtw89_ser_init.__key.3, ptr @.str.4, ptr @rtw89_ser_init.__key.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34], section "llvm.metadata"
@0 = internal global [40 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ser_st_tbl to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ser_ev_tbl to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_ser_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_ser_init.__key.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_ser_init.__key.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_ser_init.__key.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_ser_notify._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ser_l2_reset_st_hdl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtw89_ser_init(ptr noundef %rtwdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %ser1 = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 23
  %0 = call ptr @memset(ptr %ser1, i32 0, i32 208)
  %msg_q = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 23, i32 6
  %1 = ptrtoint ptr %msg_q to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %msg_q, ptr %msg_q, align 4
  %prev.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 23, i32 6, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %msg_q, ptr %prev.i, align 4
  %3 = ptrtoint ptr %ser1 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %ser1, align 4
  %st_tbl = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 23, i32 4
  %4 = ptrtoint ptr %st_tbl to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @ser_st_tbl, ptr %st_tbl, align 4
  %ev_tbl = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 23, i32 5
  %5 = ptrtoint ptr %ev_tbl to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @ser_ev_tbl, ptr %ev_tbl, align 4
  %flags = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 23, i32 8
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %flags, align 4
  %msg_q_lock = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 23, i32 7
  tail call void @__raw_spin_lock_init(ptr noundef %msg_q_lock, ptr noundef nonnull @.str, ptr noundef nonnull @rtw89_ser_init.__key, i16 noundef signext 3) #4
  %ser_hdl_work = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 23, i32 2
  tail call void @__init_work(ptr noundef %ser_hdl_work, i32 noundef 0) #4
  %7 = ptrtoint ptr %ser_hdl_work to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -64, ptr %ser_hdl_work, align 4
  %lockdep_map = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 23, i32 2, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.2, ptr noundef nonnull @rtw89_ser_init.__key.1, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #4
  %entry6 = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 23, i32 2, i32 1
  %8 = ptrtoint ptr %entry6 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %entry6, ptr %entry6, align 4
  %prev.i51 = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 23, i32 2, i32 1, i32 1
  %9 = ptrtoint ptr %prev.i51 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %entry6, ptr %prev.i51, align 4
  %func = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 23, i32 2, i32 2
  %10 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @rtw89_ser_hdl_work, ptr %func, align 4
  %ser_alarm_work = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 23, i32 3
  tail call void @__init_work(ptr noundef %ser_alarm_work, i32 noundef 0) #4
  %11 = ptrtoint ptr %ser_alarm_work to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -64, ptr %ser_alarm_work, align 4
  %lockdep_map19 = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 23, i32 3, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map19, ptr noundef nonnull @.str.4, ptr noundef nonnull @rtw89_ser_init.__key.3, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #4
  %entry22 = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 23, i32 3, i32 0, i32 1
  %12 = ptrtoint ptr %entry22 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %entry22, ptr %entry22, align 4
  %prev.i52 = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 23, i32 3, i32 0, i32 1, i32 1
  %13 = ptrtoint ptr %prev.i52 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %entry22, ptr %prev.i52, align 4
  %func25 = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 23, i32 3, i32 0, i32 2
  %14 = ptrtoint ptr %func25 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @rtw89_ser_alarm_work, ptr %func25, align 4
  %timer = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 23, i32 3, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.6, ptr noundef nonnull @rtw89_ser_init.__key.5) #4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtw89_ser_hdl_work(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -4
  %msg_q_lock.i = getelementptr i8, ptr %work, i32 160
  tail call void @_raw_spin_lock_irq(ptr noundef %msg_q_lock.i) #4
  %msg_q.i = getelementptr i8, ptr %work, i32 152
  %0 = ptrtoint ptr %msg_q.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %msg_q.i, align 4
  %cmp.not.i4 = icmp eq ptr %1, %msg_q.i
  %tobool.not.i35 = icmp eq ptr %1, null
  %tobool.not.i6 = or i1 %cmp.not.i4, %tobool.not.i35
  br i1 %tobool.not.i6, label %entry.while.end_crit_edge, label %if.then.i.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

if.then.i.lr.ph:                                  ; preds = %entry
  %st_tbl.i.i = getelementptr i8, ptr %work, i32 144
  %ev_tbl.i.i = getelementptr i8, ptr %work, i32 148
  %add.ptr.i = getelementptr i8, ptr %work, i32 -976
  br label %if.then.i

if.then.i:                                        ; preds = %ser_state_run.exit.if.then.i_crit_edge, %if.then.i.lr.ph
  %2 = phi ptr [ %1, %if.then.i.lr.ph ], [ %30, %ser_state_run.exit.if.then.i_crit_edge ]
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %2) #4
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.i.while.body_crit_edge

if.then.i.while.body_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body

if.end.i.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i.i, align 4
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %2, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %while.body

while.body:                                       ; preds = %if.end.i.i.i, %if.then.i.while.body_crit_edge
  %9 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 256 to ptr), ptr %2, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %msg_q_lock.i) #4
  %event = getelementptr inbounds %struct.ser_msg, ptr %2, i32 0, i32 1
  %11 = ptrtoint ptr %event to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %event, align 4
  %13 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %add.ptr, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %14)
  %cmp.i.i = icmp ult i8 %14, 4
  br i1 %cmp.i.i, label %if.then.i.i, label %while.body.ser_st_name.exit.i_crit_edge

while.body.ser_st_name.exit.i_crit_edge:          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %ser_st_name.exit.i

if.then.i.i:                                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i.i = zext i8 %14 to i32
  %15 = ptrtoint ptr %st_tbl.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %st_tbl.i.i, align 4
  %name.i.i = getelementptr %struct.state_ent, ptr %16, i32 %conv.i.i, i32 1
  %17 = ptrtoint ptr %name.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %name.i.i, align 4
  br label %ser_st_name.exit.i

ser_st_name.exit.i:                               ; preds = %if.then.i.i, %while.body.ser_st_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %18, %if.then.i.i ], [ @.str.19, %while.body.ser_st_name.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %12)
  %cmp.i9.i = icmp ult i8 %12, 12
  br i1 %cmp.i9.i, label %if.then.i12.i, label %ser_st_name.exit.i.ser_state_run.exit_crit_edge

ser_st_name.exit.i.ser_state_run.exit_crit_edge:  ; preds = %ser_st_name.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %ser_state_run.exit

if.then.i12.i:                                    ; preds = %ser_st_name.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i10.i = zext i8 %12 to i32
  %19 = ptrtoint ptr %ev_tbl.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ev_tbl.i.i, align 4
  %name.i11.i = getelementptr %struct.event_ent, ptr %20, i32 %conv.i10.i, i32 1
  %21 = ptrtoint ptr %name.i11.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %name.i11.i, align 4
  br label %ser_state_run.exit

ser_state_run.exit:                               ; preds = %if.then.i12.i, %ser_st_name.exit.i.ser_state_run.exit_crit_edge
  %retval.0.i13.i = phi ptr [ %22, %if.then.i12.i ], [ @.str.18, %ser_st_name.exit.i.ser_state_run.exit_crit_edge ]
  tail call void (ptr, i32, ptr, ...) @__rtw89_debug(ptr noundef %add.ptr.i, i32 noundef 2048, ptr noundef nonnull @.str.17, ptr noundef %retval.0.i.i, ptr noundef %retval.0.i13.i) #4
  tail call void @rtw89_leave_lps(ptr noundef %add.ptr.i) #4
  %23 = ptrtoint ptr %st_tbl.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %st_tbl.i.i, align 4
  %25 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %add.ptr, align 4
  %idxprom.i = zext i8 %26 to i32
  %st_func.i = getelementptr %struct.state_ent, ptr %24, i32 %idxprom.i, i32 2
  %27 = ptrtoint ptr %st_func.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %st_func.i, align 4
  tail call void %28(ptr noundef %add.ptr, i8 noundef zeroext %12) #4
  tail call void @kfree(ptr noundef nonnull %2) #4
  tail call void @_raw_spin_lock_irq(ptr noundef %msg_q_lock.i) #4
  %29 = ptrtoint ptr %msg_q.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile ptr, ptr %msg_q.i, align 4
  %cmp.not.i = icmp eq ptr %30, %msg_q.i
  %tobool.not.i3 = icmp eq ptr %30, null
  %tobool.not.i = or i1 %cmp.not.i, %tobool.not.i3
  br i1 %tobool.not.i, label %ser_state_run.exit.while.end_crit_edge, label %ser_state_run.exit.if.then.i_crit_edge

ser_state_run.exit.if.then.i_crit_edge:           ; preds = %ser_state_run.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then.i

ser_state_run.exit.while.end_crit_edge:           ; preds = %ser_state_run.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

while.end:                                        ; preds = %ser_state_run.exit.while.end_crit_edge, %entry.while.end_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %msg_q_lock.i) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtw89_ser_alarm_work(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -48
  %alarm_event = getelementptr i8, ptr %work, i32 -47
  %0 = ptrtoint ptr %alarm_event to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %alarm_event, align 1
  tail call fastcc void @ser_send_msg(ptr noundef %add.ptr, i8 noundef zeroext %1)
  %2 = ptrtoint ptr %alarm_event to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %alarm_event, align 1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtw89_ser_deinit(ptr noundef %rtwdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 23, i32 8
  tail call void @_set_bit(i32 noundef 2, ptr noundef %flags) #4
  %ser_alarm_work = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 23, i32 3
  %call = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %ser_alarm_work) #4
  %ser_hdl_work = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 23, i32 2
  %call2 = tail call zeroext i1 @cancel_work_sync(ptr noundef %ser_hdl_work) #4
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %flags) #4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw89_ser_recfg_done(ptr noundef %rtwdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %ser = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 23
  tail call fastcc void @ser_send_msg(ptr noundef %ser, i8 noundef zeroext 7)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ser_send_msg(ptr noundef %ser, i8 noundef zeroext %event) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %ser, i32 -972
  %flags = getelementptr inbounds %struct.rtw89_ser, ptr %ser, i32 0, i32 8
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %flags, align 4
  %2 = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 2592, i32 noundef 12) #7
  %tobool2.not = icmp eq ptr %call7.i, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %event5 = getelementptr inbounds %struct.ser_msg, ptr %call7.i, i32 0, i32 1
  %4 = ptrtoint ptr %event5 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %event, ptr %event5, align 8
  %msg_q_lock = getelementptr inbounds %struct.rtw89_ser, ptr %ser, i32 0, i32 7
  tail call void @_raw_spin_lock_irq(ptr noundef %msg_q_lock) #4
  %msg_q = getelementptr inbounds %struct.rtw89_ser, ptr %ser, i32 0, i32 6
  %5 = ptrtoint ptr %msg_q to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %msg_q, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i, ptr noundef %msg_q, ptr noundef %6) #4
  br i1 %call.i.i, label %if.end.i.i, label %if.end4.list_add.exit_crit_edge

if.end4.list_add.exit_crit_edge:                  ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  br label %list_add.exit

if.end.i.i:                                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call7.i, ptr %prev1.i.i, align 4
  %8 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %6, ptr %call7.i, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i, i32 0, i32 1
  %9 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %msg_q, ptr %prev3.i.i, align 4
  %10 = ptrtoint ptr %msg_q to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %call7.i, ptr %msg_q, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %if.end4.list_add.exit_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %msg_q_lock) #4
  %11 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %add.ptr, align 128
  %ser_hdl_work = getelementptr inbounds %struct.rtw89_ser, ptr %ser, i32 0, i32 2
  tail call void @ieee80211_queue_work(ptr noundef %12, ptr noundef %ser_hdl_work) #4
  br label %cleanup

cleanup:                                          ; preds = %list_add.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtw89_ser_notify(ptr noundef %rtwdev, i32 noundef %err) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1, ptr noundef nonnull @.str.7, i32 noundef %err) #8
  %2 = zext i32 %err to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %err, label %lor.lhs.false [
    i32 4096, label %entry.if.end9_crit_edge
    i32 16, label %entry.if.end9_crit_edge19
    i32 4097, label %sw.bb1
    i32 4098, label %sw.bb2
    i32 1, label %entry.sw.bb3_crit_edge
    i32 2, label %entry.sw.bb3_crit_edge20
    i32 3, label %entry.sw.bb3_crit_edge21
    i32 4112, label %entry.if.then_crit_edge
  ]

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

entry.sw.bb3_crit_edge21:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb3

entry.sw.bb3_crit_edge20:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb3

entry.sw.bb3_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb3

entry.if.end9_crit_edge19:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end9

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end9

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end9

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end9

sw.bb3:                                           ; preds = %entry.sw.bb3_crit_edge, %entry.sw.bb3_crit_edge20, %entry.sw.bb3_crit_edge21
  br label %if.end9

lor.lhs.false:                                    ; preds = %entry
  %3 = add i32 %err, -8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 4098, i32 %3)
  %4 = icmp ult i32 %3, 4098
  br i1 %4, label %lor.lhs.false.if.then_crit_edge, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  br label %if.end9

if.end9:                                          ; preds = %if.then, %sw.bb3, %sw.bb2, %sw.bb1, %entry.if.end9_crit_edge, %entry.if.end9_crit_edge19
  %event.0.ph = phi i8 [ 3, %entry.if.end9_crit_edge ], [ 3, %entry.if.end9_crit_edge19 ], [ 4, %sw.bb1 ], [ 5, %sw.bb2 ], [ 11, %sw.bb3 ], [ 6, %if.then ]
  %ser = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 23
  tail call fastcc void @ser_send_msg(ptr noundef %ser, i8 noundef zeroext %event.0.ph)
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %lor.lhs.false.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end9 ], [ -22, %lor.lhs.false.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ser_idle_st_hdl(ptr noundef %ser, i8 noundef zeroext %evt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i8 %evt to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.35)
  switch i8 %evt, label %entry.sw.epilog_crit_edge [
    i8 6, label %sw.bb1
    i8 3, label %entry.sw.epilog.sink.split_crit_edge
  ]

entry.sw.epilog.sink.split_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.sink.split

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb1, %entry.sw.epilog.sink.split_crit_edge
  %.sink = phi i8 [ 3, %sw.bb1 ], [ 1, %entry.sw.epilog.sink.split_crit_edge ]
  tail call fastcc void @ser_state_goto(ptr noundef %ser, i8 noundef zeroext %.sink)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ser_reset_trx_st_hdl(ptr noundef %ser, i8 noundef zeroext %evt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i8 %evt to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.36)
  switch i8 %evt, label %entry.sw.epilog_crit_edge [
    i8 1, label %sw.bb
    i8 4, label %sw.bb1
    i8 9, label %sw.bb2
    i8 2, label %sw.bb3
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %ser, i32 -972
  %1 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %add.ptr.i, align 128
  tail call void @ieee80211_stop_queues(ptr noundef %2) #4
  %flags.i = getelementptr inbounds %struct.rtw89_ser, ptr %ser, i32 0, i32 8
  tail call void @_set_bit(i32 noundef 0, ptr noundef %flags.i) #4
  %hci.i = getelementptr i8, ptr %ser, i32 -692
  %3 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hci.i, align 8
  %mac_lv1_rcvy.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %4, i32 0, i32 17
  %5 = ptrtoint ptr %mac_lv1_rcvy.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mac_lv1_rcvy.i, align 4
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %sw.bb.if.then_crit_edge, label %if.end.i

sw.bb.if.then_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

if.end.i:                                         ; preds = %sw.bb
  %call.i = tail call i32 %6(ptr noundef %add.ptr.i, i32 noundef 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool4.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool4.not.i, label %if.end, label %if.end.i.if.then_crit_edge

if.end.i.if.then_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

if.then:                                          ; preds = %if.end.i.if.then_crit_edge, %sw.bb.if.then_crit_edge
  tail call fastcc void @ser_state_goto(ptr noundef %ser, i8 noundef zeroext 3)
  br label %sw.epilog

if.end:                                           ; preds = %if.end.i
  tail call void @_set_bit(i32 noundef 3, ptr noundef %flags.i) #4
  %flags.i19 = getelementptr i8, ptr %ser, i32 232
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %flags.i19) #4
  tail call void @_set_bit(i32 noundef 1, ptr noundef %flags.i) #4
  %7 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hci.i, align 8
  %reset.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %reset.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %reset.i.i, align 4
  tail call void %10(ptr noundef %add.ptr.i) #4
  %call.i22 = tail call i32 @rtw89_mac_set_err_status(ptr noundef %add.ptr.i, i32 noundef 1) #4
  %11 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %flags.i, align 4
  %13 = and i32 %12, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.i24 = icmp eq i32 %13, 0
  br i1 %tobool.not.i24, label %if.end.i26, label %if.end.sw.epilog_crit_edge

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

if.end.i26:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %alarm_event.i = getelementptr inbounds %struct.rtw89_ser, ptr %ser, i32 0, i32 1
  %14 = ptrtoint ptr %alarm_event.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 9, ptr %alarm_event.i, align 1
  %15 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %add.ptr.i, align 128
  %ser_alarm_work.i = getelementptr inbounds %struct.rtw89_ser, ptr %ser, i32 0, i32 3
  tail call void @ieee80211_queue_delayed_work(ptr noundef %16, ptr noundef %ser_alarm_work.i, i32 noundef 100) #4
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call fastcc void @ser_state_goto(ptr noundef %ser, i8 noundef zeroext 2)
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call fastcc void @ser_state_goto(ptr noundef %ser, i8 noundef zeroext 3)
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  %ser_alarm_work.i27 = getelementptr inbounds %struct.rtw89_ser, ptr %ser, i32 0, i32 3
  %call.i28 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %ser_alarm_work.i27) #4
  %alarm_event.i29 = getelementptr inbounds %struct.rtw89_ser, ptr %ser, i32 0, i32 1
  %17 = ptrtoint ptr %alarm_event.i29 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %alarm_event.i29, align 1
  %add.ptr.i30 = getelementptr i8, ptr %ser, i32 -972
  %flags.i31 = getelementptr inbounds %struct.rtw89_ser, ptr %ser, i32 0, i32 8
  %18 = ptrtoint ptr %flags.i31 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %flags.i31, align 4
  %20 = and i32 %19, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not.i32 = icmp eq i32 %20, 0
  br i1 %tobool.not.i32, label %sw.bb3.hal_enable_dma.exit_crit_edge, label %if.end.i35

sw.bb3.hal_enable_dma.exit_crit_edge:             ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #6
  br label %hal_enable_dma.exit

if.end.i35:                                       ; preds = %sw.bb3
  %hci.i33 = getelementptr i8, ptr %ser, i32 -692
  %21 = ptrtoint ptr %hci.i33 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %hci.i33, align 8
  %mac_lv1_rcvy.i34 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %22, i32 0, i32 17
  %23 = ptrtoint ptr %mac_lv1_rcvy.i34 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %mac_lv1_rcvy.i34, align 4
  %tobool1.not.i = icmp eq ptr %24, null
  br i1 %tobool1.not.i, label %if.end.i35.hal_enable_dma.exit_crit_edge, label %if.end3.i

if.end.i35.hal_enable_dma.exit_crit_edge:         ; preds = %if.end.i35
  call void @__sanitizer_cov_trace_pc() #6
  br label %hal_enable_dma.exit

if.end3.i:                                        ; preds = %if.end.i35
  %call7.i = tail call i32 %24(ptr noundef %add.ptr.i30, i32 noundef 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool8.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool8.not.i, label %if.then9.i, label %if.end3.i.hal_enable_dma.exit_crit_edge

if.end3.i.hal_enable_dma.exit_crit_edge:          ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %hal_enable_dma.exit

if.then9.i:                                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %flags.i31) #4
  br label %hal_enable_dma.exit

hal_enable_dma.exit:                              ; preds = %if.then9.i, %if.end3.i.hal_enable_dma.exit_crit_edge, %if.end.i35.hal_enable_dma.exit_crit_edge, %sw.bb3.hal_enable_dma.exit_crit_edge
  %25 = ptrtoint ptr %flags.i31 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %flags.i31, align 4
  %27 = and i32 %26, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool.not.i37 = icmp eq i32 %27, 0
  br i1 %tobool.not.i37, label %hal_enable_dma.exit.drv_resume_rx.exit_crit_edge, label %if.end.i39

hal_enable_dma.exit.drv_resume_rx.exit_crit_edge: ; preds = %hal_enable_dma.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %drv_resume_rx.exit

if.end.i39:                                       ; preds = %hal_enable_dma.exit
  call void @__sanitizer_cov_trace_pc() #6
  %flags1.i38 = getelementptr i8, ptr %ser, i32 232
  tail call void @_set_bit(i32 noundef 2, ptr noundef %flags1.i38) #4
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %flags.i31) #4
  br label %drv_resume_rx.exit

drv_resume_rx.exit:                               ; preds = %if.end.i39, %hal_enable_dma.exit.drv_resume_rx.exit_crit_edge
  %28 = ptrtoint ptr %flags.i31 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %flags.i31, align 4
  %and1.i.i = and i32 %29, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i41 = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i41, label %drv_resume_rx.exit.sw.epilog_crit_edge, label %if.end.i43

drv_resume_rx.exit.sw.epilog_crit_edge:           ; preds = %drv_resume_rx.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

if.end.i43:                                       ; preds = %drv_resume_rx.exit
  call void @__sanitizer_cov_trace_pc() #6
  %30 = ptrtoint ptr %add.ptr.i30 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %add.ptr.i30, align 128
  tail call void @ieee80211_wake_queues(ptr noundef %31) #4
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %flags.i31) #4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.i43, %drv_resume_rx.exit.sw.epilog_crit_edge, %sw.bb2, %sw.bb1, %if.end.i26, %if.end.sw.epilog_crit_edge, %if.then, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ser_do_hci_st_hdl(ptr noundef %ser, i8 noundef zeroext %evt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i8 %evt to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.37)
  switch i8 %evt, label %entry.sw.epilog_crit_edge [
    i8 1, label %sw.bb
    i8 10, label %sw.bb1
    i8 5, label %sw.bb2
    i8 2, label %sw.bb3
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %ser, i32 -972
  %call.i = tail call i32 @rtw89_mac_set_err_status(ptr noundef %add.ptr.i, i32 noundef 2) #4
  %flags.i = getelementptr inbounds %struct.rtw89_ser, ptr %ser, i32 0, i32 8
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %flags.i, align 4
  %3 = and i32 %2, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i, label %if.end.i, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

if.end.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  %alarm_event.i = getelementptr inbounds %struct.rtw89_ser, ptr %ser, i32 0, i32 1
  %4 = ptrtoint ptr %alarm_event.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 10, ptr %alarm_event.i, align 1
  %5 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %add.ptr.i, align 128
  %ser_alarm_work.i = getelementptr inbounds %struct.rtw89_ser, ptr %ser, i32 0, i32 3
  tail call void @ieee80211_queue_delayed_work(ptr noundef %6, ptr noundef %ser_alarm_work.i, i32 noundef 100) #4
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call fastcc void @ser_state_goto(ptr noundef %ser, i8 noundef zeroext 3)
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call fastcc void @ser_state_goto(ptr noundef %ser, i8 noundef zeroext 0)
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %ser_alarm_work.i9 = getelementptr inbounds %struct.rtw89_ser, ptr %ser, i32 0, i32 3
  %call.i10 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %ser_alarm_work.i9) #4
  %alarm_event.i11 = getelementptr inbounds %struct.rtw89_ser, ptr %ser, i32 0, i32 1
  %7 = ptrtoint ptr %alarm_event.i11 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %alarm_event.i11, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb3, %sw.bb2, %sw.bb1, %if.end.i, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ser_l2_reset_st_hdl(ptr noundef %ser, i8 noundef zeroext %evt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i8 %evt to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.38)
  switch i8 %evt, label %entry.sw.epilog_crit_edge [
    i8 1, label %sw.bb
    i8 8, label %do.end
    i8 7, label %entry.sw.bb3_crit_edge
    i8 2, label %sw.bb4
  ]

entry.sw.bb3_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb3

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %add.ptr = getelementptr i8, ptr %ser, i32 -972
  %mutex = getelementptr i8, ptr %ser, i32 -580
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #4
  tail call void @rtw89_cam_reset_keys(ptr noundef %add.ptr) #4
  %mac_id_map.i = getelementptr i8, ptr %ser, i32 216
  tail call void @rtw89_core_release_all_bits_map(ptr noundef %mac_id_map.i, i32 noundef 128) #4
  %rtwvifs_list.i = getelementptr i8, ptr %ser, i32 -488
  %1 = ptrtoint ptr %rtwvifs_list.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %rtwvif.013.i = load ptr, ptr %rtwvifs_list.i, align 4
  %cmp.not14.i = icmp eq ptr %rtwvif.013.i, %rtwvifs_list.i
  br i1 %cmp.not14.i, label %sw.bb.ser_reset_mac_binding.exit_crit_edge, label %for.body.lr.ph.i

sw.bb.ser_reset_mac_binding.exit_crit_edge:       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  br label %ser_reset_mac_binding.exit

for.body.lr.ph.i:                                 ; preds = %sw.bb
  %hw_port.i.i = getelementptr i8, ptr %ser, i32 212
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %rtwvif.015.i = phi ptr [ %rtwvif.013.i, %for.body.lr.ph.i ], [ %rtwvif.0.i, %for.body.i.for.body.i_crit_edge ]
  %port.i.i = getelementptr inbounds %struct.rtw89_vif, ptr %rtwvif.015.i, i32 0, i32 2
  %2 = ptrtoint ptr %port.i.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %port.i.i, align 1
  tail call void @rtw89_core_release_bit_map(ptr noundef %hw_port.i.i, i8 noundef zeroext %3) #4
  %net_type.i.i = getelementptr inbounds %struct.rtw89_vif, ptr %rtwvif.015.i, i32 0, i32 7
  %4 = ptrtoint ptr %net_type.i.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %net_type.i.i, align 8
  %trigger.i.i = getelementptr inbounds %struct.rtw89_vif, ptr %rtwvif.015.i, i32 0, i32 13
  %5 = ptrtoint ptr %trigger.i.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %trigger.i.i, align 2
  %6 = ptrtoint ptr %rtwvif.015.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %rtwvif.0.i = load ptr, ptr %rtwvif.015.i, align 4
  %cmp.not.i = icmp eq ptr %rtwvif.0.i, %rtwvifs_list.i
  br i1 %cmp.not.i, label %for.body.i.ser_reset_mac_binding.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

for.body.i.ser_reset_mac_binding.exit_crit_edge:  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %ser_reset_mac_binding.exit

ser_reset_mac_binding.exit:                       ; preds = %for.body.i.ser_reset_mac_binding.exit_crit_edge, %sw.bb.ser_reset_mac_binding.exit_crit_edge
  tail call void @rtw89_core_stop(ptr noundef %add.ptr) #4
  tail call void @mutex_unlock(ptr noundef %mutex) #4
  %7 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %add.ptr, align 128
  tail call void @ieee80211_restart_hw(ptr noundef %8) #4
  %flags.i = getelementptr inbounds %struct.rtw89_ser, ptr %ser, i32 0, i32 8
  %9 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %flags.i, align 4
  %11 = and i32 %10, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i = icmp eq i32 %11, 0
  br i1 %tobool.not.i, label %if.end.i, label %ser_reset_mac_binding.exit.sw.epilog_crit_edge

ser_reset_mac_binding.exit.sw.epilog_crit_edge:   ; preds = %ser_reset_mac_binding.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

if.end.i:                                         ; preds = %ser_reset_mac_binding.exit
  call void @__sanitizer_cov_trace_pc() #6
  %alarm_event.i = getelementptr inbounds %struct.rtw89_ser, ptr %ser, i32 0, i32 1
  %12 = ptrtoint ptr %alarm_event.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 8, ptr %alarm_event.i, align 1
  %13 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %add.ptr, align 128
  %ser_alarm_work.i = getelementptr inbounds %struct.rtw89_ser, ptr %ser, i32 0, i32 3
  tail call void @ieee80211_queue_delayed_work(ptr noundef %14, ptr noundef %ser_alarm_work.i, i32 noundef 100) #4
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %dev = getelementptr i8, ptr %ser, i32 -968
  %15 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %16, ptr noundef nonnull @.str.20) #8
  br label %sw.bb3

sw.bb3:                                           ; preds = %do.end, %entry.sw.bb3_crit_edge
  tail call fastcc void @ser_state_goto(ptr noundef %ser, i8 noundef zeroext 0)
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %ser_alarm_work.i13 = getelementptr inbounds %struct.rtw89_ser, ptr %ser, i32 0, i32 3
  %call.i = tail call zeroext i1 @cancel_delayed_work(ptr noundef %ser_alarm_work.i13) #4
  %alarm_event.i14 = getelementptr inbounds %struct.rtw89_ser, ptr %ser, i32 0, i32 1
  %17 = ptrtoint ptr %alarm_event.i14 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %alarm_event.i14, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb4, %sw.bb3, %if.end.i, %ser_reset_mac_binding.exit.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ser_state_goto(ptr noundef %ser, i8 noundef zeroext %new_state) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %ser, i32 -972
  %0 = ptrtoint ptr %ser to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %ser, align 4
  %conv1 = zext i8 %new_state to i32
  call void @__sanitizer_cov_trace_cmp1(i8 %1, i8 %new_state)
  %cmp = icmp eq i8 %1, %new_state
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %1)
  %cmp.i.i = icmp ult i8 %1, 4
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end.ser_state_run.exit_crit_edge

if.end.ser_state_run.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %ser_state_run.exit

if.then.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i.i = zext i8 %1 to i32
  %st_tbl.i.i = getelementptr inbounds %struct.rtw89_ser, ptr %ser, i32 0, i32 4
  %2 = ptrtoint ptr %st_tbl.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %st_tbl.i.i, align 4
  %name.i.i = getelementptr %struct.state_ent, ptr %3, i32 %conv.i.i, i32 1
  %4 = ptrtoint ptr %name.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %name.i.i, align 4
  br label %ser_state_run.exit

ser_state_run.exit:                               ; preds = %if.then.i.i, %if.end.ser_state_run.exit_crit_edge
  %retval.0.i.i = phi ptr [ %5, %if.then.i.i ], [ @.str.19, %if.end.ser_state_run.exit_crit_edge ]
  %ev_tbl.i.i = getelementptr inbounds %struct.rtw89_ser, ptr %ser, i32 0, i32 5
  %6 = ptrtoint ptr %ev_tbl.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ev_tbl.i.i, align 4
  %name.i11.i = getelementptr %struct.event_ent, ptr %7, i32 2, i32 1
  %8 = ptrtoint ptr %name.i11.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %name.i11.i, align 4
  tail call void (ptr, i32, ptr, ...) @__rtw89_debug(ptr noundef %add.ptr, i32 noundef 2048, ptr noundef nonnull @.str.17, ptr noundef %retval.0.i.i, ptr noundef %9) #4
  tail call void @rtw89_leave_lps(ptr noundef %add.ptr) #4
  %st_tbl.i = getelementptr inbounds %struct.rtw89_ser, ptr %ser, i32 0, i32 4
  %10 = ptrtoint ptr %st_tbl.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %st_tbl.i, align 4
  %12 = ptrtoint ptr %ser to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %ser, align 4
  %idxprom.i = zext i8 %13 to i32
  %st_func.i = getelementptr %struct.state_ent, ptr %11, i32 %idxprom.i, i32 2
  %14 = ptrtoint ptr %st_func.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %st_func.i, align 4
  tail call void %15(ptr noundef %ser, i8 noundef zeroext 2) #4
  %16 = ptrtoint ptr %ser to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %ser, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %17)
  %cmp.i = icmp ult i8 %17, 4
  br i1 %cmp.i, label %if.then.i, label %ser_state_run.exit.ser_st_name.exit_crit_edge

ser_state_run.exit.ser_st_name.exit_crit_edge:    ; preds = %ser_state_run.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %ser_st_name.exit

if.then.i:                                        ; preds = %ser_state_run.exit
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i = zext i8 %17 to i32
  %18 = ptrtoint ptr %st_tbl.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %st_tbl.i, align 4
  %name.i = getelementptr %struct.state_ent, ptr %19, i32 %conv.i, i32 1
  %20 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %name.i, align 4
  br label %ser_st_name.exit

ser_st_name.exit:                                 ; preds = %if.then.i, %ser_state_run.exit.ser_st_name.exit_crit_edge
  %retval.0.i = phi ptr [ %21, %if.then.i ], [ @.str.19, %ser_state_run.exit.ser_st_name.exit_crit_edge ]
  %22 = ptrtoint ptr %st_tbl.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %st_tbl.i, align 4
  %name = getelementptr %struct.state_ent, ptr %23, i32 %conv1, i32 1
  %24 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %name, align 4
  tail call void (ptr, i32, ptr, ...) @__rtw89_debug(ptr noundef %add.ptr, i32 noundef 2048, ptr noundef nonnull @.str.16, ptr noundef %retval.0.i, ptr noundef %25) #4
  %26 = ptrtoint ptr %ser to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %new_state, ptr %ser, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %new_state)
  %cmp.i.i17 = icmp ult i8 %new_state, 4
  br i1 %cmp.i.i17, label %if.then.i.i21, label %ser_st_name.exit.ser_state_run.exit29_crit_edge

ser_st_name.exit.ser_state_run.exit29_crit_edge:  ; preds = %ser_st_name.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %ser_state_run.exit29

if.then.i.i21:                                    ; preds = %ser_st_name.exit
  call void @__sanitizer_cov_trace_pc() #6
  %27 = ptrtoint ptr %st_tbl.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %st_tbl.i, align 4
  %name.i.i20 = getelementptr %struct.state_ent, ptr %28, i32 %conv1, i32 1
  %29 = ptrtoint ptr %name.i.i20 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %name.i.i20, align 4
  br label %ser_state_run.exit29

ser_state_run.exit29:                             ; preds = %if.then.i.i21, %ser_st_name.exit.ser_state_run.exit29_crit_edge
  %retval.0.i.i22 = phi ptr [ %30, %if.then.i.i21 ], [ @.str.19, %ser_st_name.exit.ser_state_run.exit29_crit_edge ]
  %31 = ptrtoint ptr %ev_tbl.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ev_tbl.i.i, align 4
  %name.i11.i24 = getelementptr %struct.event_ent, ptr %32, i32 1, i32 1
  %33 = ptrtoint ptr %name.i11.i24 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %name.i11.i24, align 4
  tail call void (ptr, i32, ptr, ...) @__rtw89_debug(ptr noundef %add.ptr, i32 noundef 2048, ptr noundef nonnull @.str.17, ptr noundef %retval.0.i.i22, ptr noundef %34) #4
  tail call void @rtw89_leave_lps(ptr noundef %add.ptr) #4
  %35 = ptrtoint ptr %st_tbl.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %st_tbl.i, align 4
  %37 = ptrtoint ptr %ser to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %ser, align 4
  %idxprom.i27 = zext i8 %38 to i32
  %st_func.i28 = getelementptr %struct.state_ent, ptr %36, i32 %idxprom.i27, i32 2
  %39 = ptrtoint ptr %st_func.i28 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %st_func.i28, align 4
  tail call void %40(ptr noundef %ser, i8 noundef zeroext 1) #4
  br label %cleanup

cleanup:                                          ; preds = %ser_state_run.exit29, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__rtw89_debug(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw89_leave_lps(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_stop_queues(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw89_mac_set_err_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_queue_delayed_work(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_wake_queues(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw89_core_stop(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_restart_hw(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw89_cam_reset_keys(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw89_core_release_all_bits_map(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw89_core_release_bit_map(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_queue_work(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 40)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 40)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { nounwind allocsize(2) }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !9, !10, !11, !13, !14, !15, !16, !17, !18, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !42, !43, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70}
!llvm.module.flags = !{!72, !73, !74, !75, !76, !77, !78, !79}
!llvm.ident = !{!80}

!0 = !{ptr @rtw89_ser_init.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/realtek/rtw89/ser.c", i32 433, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @rtw89_ser_init.__key.1, !4, !"__key", i1 false, i1 false}
!4 = !{!"../drivers/net/wireless/realtek/rtw89/ser.c", i32 434, i32 2}
!5 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @rtw89_ser_init.__key.3, !7, !"__key", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/realtek/rtw89/ser.c", i32 435, i32 2}
!8 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @rtw89_ser_init.__key.5, !7, !"__key", i1 false, i1 false}
!10 = !{ptr @.str.6, !7, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.7, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/net/wireless/realtek/rtw89/ser.c", i32 459, i32 2}
!13 = !{ptr @.str.8, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.9, !12, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.10, !12, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.11, !12, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @rtw89_ser_notify._entry, !12, !"_entry", i1 false, i1 false}
!18 = !{ptr @rtw89_ser_notify._entry_ptr, !12, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @__ksymtab_rtw89_ser_notify, !20, !"__ksymtab_rtw89_ser_notify", i1 false, i1 false}
!20 = !{!"../drivers/net/wireless/realtek/rtw89/ser.c", i32 491, i32 1}
!21 = !{ptr @.str.12, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/net/wireless/realtek/rtw89/ser.c", i32 416, i32 16}
!23 = !{ptr @.str.13, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/net/wireless/realtek/rtw89/ser.c", i32 417, i32 21}
!25 = !{ptr @.str.14, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/net/wireless/realtek/rtw89/ser.c", i32 418, i32 18}
!27 = !{ptr @.str.15, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/net/wireless/realtek/rtw89/ser.c", i32 419, i32 20}
!29 = !{ptr @ser_st_tbl, !30, !"ser_st_tbl", i1 false, i1 false}
!30 = !{!"../drivers/net/wireless/realtek/rtw89/ser.c", i32 415, i32 25}
!31 = !{ptr @.str.16, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/net/wireless/realtek/rtw89/ser.c", i32 89, i32 2}
!33 = !{ptr @.str.17, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/net/wireless/realtek/rtw89/ser.c", i32 74, i32 2}
!35 = !{ptr @.str.18, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/net/wireless/realtek/rtw89/ser.c", i32 59, i32 9}
!37 = !{ptr @.str.19, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/net/wireless/realtek/rtw89/ser.c", i32 67, i32 9}
!39 = !{ptr @.str.20, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/net/wireless/realtek/rtw89/ser.c", i32 384, i32 3}
!41 = !{ptr @.str.21, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @ser_l2_reset_st_hdl._entry, !40, !"_entry", i1 false, i1 false}
!43 = !{ptr @ser_l2_reset_st_hdl._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.22, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/wireless/realtek/rtw89/ser.c", i32 400, i32 16}
!46 = !{ptr @.str.23, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/wireless/realtek/rtw89/ser.c", i32 401, i32 20}
!48 = !{ptr @.str.24, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/wireless/realtek/rtw89/ser.c", i32 402, i32 21}
!50 = !{ptr @.str.25, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/wireless/realtek/rtw89/ser.c", i32 403, i32 20}
!52 = !{ptr @.str.26, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/wireless/realtek/rtw89/ser.c", i32 404, i32 23}
!54 = !{ptr @.str.27, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/wireless/realtek/rtw89/ser.c", i32 405, i32 26}
!56 = !{ptr @.str.28, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/wireless/realtek/rtw89/ser.c", i32 406, i32 20}
!58 = !{ptr @.str.29, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/wireless/realtek/rtw89/ser.c", i32 407, i32 25}
!60 = !{ptr @.str.30, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/wireless/realtek/rtw89/ser.c", i32 408, i32 28}
!62 = !{ptr @.str.31, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/net/wireless/realtek/rtw89/ser.c", i32 409, i32 22}
!64 = !{ptr @.str.32, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/wireless/realtek/rtw89/ser.c", i32 410, i32 25}
!66 = !{ptr @.str.33, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/net/wireless/realtek/rtw89/ser.c", i32 411, i32 20}
!68 = !{ptr @.str.34, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/net/wireless/realtek/rtw89/ser.c", i32 412, i32 16}
!70 = !{ptr @ser_ev_tbl, !71, !"ser_ev_tbl", i1 false, i1 false}
!71 = !{!"../drivers/net/wireless/realtek/rtw89/ser.c", i32 399, i32 25}
!72 = !{i32 1, !"wchar_size", i32 2}
!73 = !{i32 1, !"min_enum_size", i32 4}
!74 = !{i32 8, !"branch-target-enforcement", i32 0}
!75 = !{i32 8, !"sign-return-address", i32 0}
!76 = !{i32 8, !"sign-return-address-all", i32 0}
!77 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!78 = !{i32 7, !"uwtable", i32 1}
!79 = !{i32 7, !"frame-pointer", i32 2}
!80 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
