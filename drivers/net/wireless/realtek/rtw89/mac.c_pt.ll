; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/realtek/rtw89/mac.c_pt.bc'
source_filename = "../drivers/net/wireless/realtek/rtw89/mac.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+rtw89_mac_get_err_status\22, \22a\22\09"
module asm "\09.weak\09__crc_rtw89_mac_get_err_status\09\09\09\09"
module asm "\09.long\09__crc_rtw89_mac_get_err_status\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rtw89_mac_get_err_status:\09\09\09\09\09"
module asm "\09.asciz \09\22rtw89_mac_get_err_status\22\09\09\09\09\09"
module asm "__kstrtabns_rtw89_mac_get_err_status:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+rtw89_mac_set_err_status\22, \22a\22\09"
module asm "\09.weak\09__crc_rtw89_mac_set_err_status\09\09\09\09"
module asm "\09.long\09__crc_rtw89_mac_set_err_status\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rtw89_mac_set_err_status:\09\09\09\09\09"
module asm "\09.asciz \09\22rtw89_mac_set_err_status\22\09\09\09\09\09"
module asm "__kstrtabns_rtw89_mac_set_err_status:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.rtw89_hfc_prec_cfg = type { i16, i16, i16, i16, i8, i8, i8, i8 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.rtw89_dle_size = type { i16, i16, i16 }
%struct.rtw89_wde_quota = type { i16, i16, i16, i16 }
%struct.rtw89_ple_quota = type { i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16 }
%struct.rtw89_dev = type { ptr, ptr, i8, ptr, %struct.rtw89_hal, %struct.rtw89_mac_info, %struct.rtw89_fw_info, %struct.rtw89_hci_info, %struct.rtw89_efuse, %struct.rtw89_traffic_stats, %struct.mutex, %struct.list_head, %struct.mutex, ptr, %struct.work_struct, %struct.delayed_work, %struct.spinlock, %struct.list_head, %struct.work_struct, %struct.rtw89_cam_info, %struct.sk_buff_head, %struct.work_struct, %struct.list_head, %struct.rtw89_ser, [1 x i32], [4 x i32], [1 x i32], %struct.rtw89_phy_stat, %struct.rtw89_dack_info, %struct.rtw89_iqk_info, %struct.rtw89_dpk_info, [4 x i8], i8, %struct.rtw89_fem_info, [2 x %struct.rtw89_txpwr_byrate], %struct.rtw89_tssi_info, %struct.rtw89_power_trim_info, %struct.rtw89_cfo_tracking_info, %struct.rtw89_env_monitor_info, %struct.rtw89_dig_info, %struct.rtw89_phy_ch_info, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.rtw89_ppdu_sts_info, i8, i8, ptr, %struct.rtw89_sar_info, %struct.rtw89_btc, i32, i8, [67 x i8], %struct.net_device, %struct.napi_struct, i32, [0 x i8], [28 x i8] }
%struct.rtw89_hal = type { i32, i8, i8, i8, i8, i32, i8, i8, i32, i32, i32, i8, i8 }
%struct.rtw89_mac_info = type { %struct.rtw89_dle_info, %struct.rtw89_hfc_param, i32, i8, i8 }
%struct.rtw89_dle_info = type { i32, i16, i16, i16, i16 }
%struct.rtw89_hfc_param = type { i8, i8, i8, ptr, [13 x %struct.rtw89_hfc_ch_info], %struct.rtw89_hfc_pub_cfg, %struct.rtw89_hfc_pub_info, %struct.rtw89_hfc_prec_cfg }
%struct.rtw89_hfc_ch_info = type { i16, i16 }
%struct.rtw89_hfc_pub_cfg = type { i16, i16, i16, i16 }
%struct.rtw89_hfc_pub_info = type { i16, i16, i16, i16, i16, i16 }
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
%struct.rtw89_hci_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rtw89_mac_dle_dfi_ctrl = type { i32, i32, i32, i32 }
%struct.rtw89_chip_info = type { i32, ptr, ptr, i32, i16, i8, ptr, ptr, [2 x i32], i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, ptr, ptr, ptr, [4 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i32, i32, i8, i8, i8, i8, ptr, ptr, i8, i8, ptr, i8, ptr, i8, ptr, i8 }
%struct.rtw89_pwr_cfg = type { i16, i8, i8, i8, i8, i8 }
%struct.rtw89_mac_h2c_info = type { i8, i8, [4 x i32] }
%struct.rtw89_mac_c2h_info = type { i8, i8, [4 x i32] }
%struct.rtw89_cpuio_ctrl = type { i16, i16, i16, i8, i8, i8, i8, i8, i8, i16 }
%struct.rtw89_dle_mem = type { i32, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rtw89_vif = type { %struct.list_head, i8, i8, [6 x i8], [6 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.rtw89_addr_cam_entry, %struct.rtw89_bssid_cam_entry, [4 x %struct.ieee80211_tx_queue_params], %struct.rtw89_traffic_stats, %struct.rtw89_phy_rate_pattern }
%struct.rtw89_addr_cam_entry = type <{ i8, i8, i8, i16, [6 x i8], i8, [1 x i32], [7 x i8], [7 x i8], [2 x i8], [7 x ptr] }>
%struct.rtw89_bssid_cam_entry = type { [6 x i8], i8, i8, i8, i8, i8, i8 }
%struct.ieee80211_tx_queue_params = type { i16, i16, i16, i8, i8, i8, i8, %struct.ieee80211_he_mu_edca_param_ac_rec }
%struct.ieee80211_he_mu_edca_param_ac_rec = type { i8, i8, i8 }
%struct.rtw89_phy_rate_pattern = type { i64, i16, i8, i8 }
%struct.ieee80211_hw = type { %struct.ieee80211_conf, ptr, ptr, ptr, [2 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i8, i16, %struct.anon.128, i64, i8, i8, i8, ptr, i8, i8, i8, i32 }
%struct.ieee80211_conf = type { i32, i32, i32, i16, i8, i8, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.anon.128 = type { i32, i16 }
%struct.wiphy = type { %struct.mutex, [6 x i8], [6 x i8], ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i32, i32, [8 x i8], i32, i32, i32, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i8, i8, i32, i32, i8, [32 x i8], i32, ptr, ptr, i16, i8, i32, i32, i32, ptr, ptr, i8, ptr, i32, ptr, [6 x ptr], ptr, ptr, %struct.device, i8, ptr, ptr, ptr, %struct.list_head, %struct.possible_net_t, ptr, ptr, ptr, ptr, i32, i32, i16, i8, i32, i8, i32, i32, i32, i32, i8, ptr, %struct.anon.127, i8, ptr, ptr, i8, i8, [18 x i8], [0 x i8] }
%struct.anon.127 = type { i64, i64, i8 }
%struct.rtw89_mac_ax_coex = type { i8, i8 }
%struct.rtw89_mac_ax_plt = type { i8, i8, i8 }
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
%struct.rtw89_mac_bf_monitor_iter_data = type { ptr, ptr, i32 }
%struct.rtw89_sta = type { i8, i8, ptr, %struct.rtw89_ra_info, %struct.rtw89_ra_report, i32, i8, %struct.ewma_rssi, [16 x %struct.rtw89_ampdu_params], %struct.ieee80211_rx_status, i16, i32, i8, %struct.cfg80211_bitrate_mask, i8, i8, i8, i8 }
%struct.rtw89_ra_info = type { i8, i8, i16, i64, i8, i8, i8, i8 }
%struct.rtw89_ra_report = type { %struct.rate_info, i32, i16 }
%struct.rate_info = type { i8, i8, i16, i8, i8, i8, i8, i8, i8 }
%struct.ewma_rssi = type { i32 }
%struct.rtw89_ampdu_params = type { i16, i8 }
%struct.ieee80211_rx_status = type <{ i64, i64, i32, i32, i32, i16, i8, i16, i8, i8, i8, i8, i8, i8, i8, [4 x i8], i8, i8, [2 x i8] }>
%struct.rtw89_hfc_param_ini = type { ptr, ptr, ptr, i8 }
%struct.rtw89_hfc_ch_cfg = type { i16, i16, i8 }
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

@.str = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/net/wireless/realtek/rtw89/mac.c\00", [55 x i8] zeroinitializer }, align 32
@rtw89_mac_write_lte._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str, i32 45, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"[ERR]lte not ready(W)\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rtw89_mac_write_lte\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rtw89_mac_write_lte._entry_ptr = internal global ptr @rtw89_mac_write_lte._entry, section ".printk_index", align 4
@rtw89_mac_read_lte._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.5, ptr @.str, i32 61, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rtw89_mac_read_lte\00", [45 x i8] zeroinitializer }, align 32
@rtw89_mac_read_lte._entry_ptr = internal global ptr @rtw89_mac_read_lte._entry, section ".printk_index", align 4
@rtw89_mac_get_err_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str, i32 446, ptr @.str.8, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Polling FW err status fail\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"rtw89_mac_get_err_status\00", [39 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@rtw89_mac_get_err_status._entry_ptr = internal global ptr @rtw89_mac_get_err_status._entry, section ".printk_index", align 4
@__kstrtab_rtw89_mac_get_err_status = external dso_local constant [0 x i8], align 1
@__kstrtabns_rtw89_mac_get_err_status = external dso_local constant [0 x i8], align 1
@__ksymtab_rtw89_mac_get_err_status = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rtw89_mac_get_err_status to i32), ptr @__kstrtab_rtw89_mac_get_err_status, ptr @__kstrtabns_rtw89_mac_get_err_status }, section "___ksymtab+rtw89_mac_get_err_status", align 4
@rtw89_mac_set_err_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str, i32 466, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Bad set-err-status value 0x%08x\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"rtw89_mac_set_err_status\00", [39 x i8] zeroinitializer }, align 32
@rtw89_mac_set_err_status._entry_ptr = internal global ptr @rtw89_mac_set_err_status._entry, section ".printk_index", align 4
@rtw89_mac_set_err_status._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.10, ptr @.str, i32 473, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"FW doesn't receive previous msg\0A\00", [63 x i8] zeroinitializer }, align 32
@rtw89_mac_set_err_status._entry_ptr.13 = internal global ptr @rtw89_mac_set_err_status._entry.11, section ".printk_index", align 4
@__kstrtab_rtw89_mac_set_err_status = external dso_local constant [0 x i8], align 1
@__kstrtabns_rtw89_mac_set_err_status = external dso_local constant [0 x i8], align 1
@__ksymtab_rtw89_mac_set_err_status = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rtw89_mac_set_err_status to i32), ptr @__kstrtab_rtw89_mac_set_err_status, ptr @__kstrtabns_rtw89_mac_set_err_status }, section "___ksymtab+rtw89_mac_set_err_status", align 4
@rtw_hfc_preccfg_pcie = dso_local constant { %struct.rtw89_hfc_prec_cfg, [20 x i8] } { %struct.rtw89_hfc_prec_cfg { i16 2, i16 40, i16 0, i16 0, i8 1, i8 0, i8 0, i8 0 }, [20 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@rtw89_mac_power_mode_change._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str, i32 999, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"firmware failed to ack for %s ps mode\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"rtw89_mac_power_mode_change\00", [36 x i8] zeroinitializer }, align 32
@rtw89_mac_power_mode_change._entry_ptr = internal global ptr @rtw89_mac_power_mode_change._entry, section ".printk_index", align 4
@.str.16 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"entering\00", [23 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"leaving\00", [24 x i8] zeroinitializer }, align 32
@wde_size0 = dso_local constant { %struct.rtw89_dle_size, [26 x i8] } { %struct.rtw89_dle_size { i16 64, i16 4095, i16 1 }, [26 x i8] zeroinitializer }, align 32
@wde_size4 = dso_local constant { %struct.rtw89_dle_size, [26 x i8] } { %struct.rtw89_dle_size { i16 64, i16 0, i16 4096 }, [26 x i8] zeroinitializer }, align 32
@ple_size0 = dso_local constant { %struct.rtw89_dle_size, [26 x i8] } { %struct.rtw89_dle_size { i16 128, i16 1520, i16 16 }, [26 x i8] zeroinitializer }, align 32
@ple_size4 = dso_local constant { %struct.rtw89_dle_size, [26 x i8] } { %struct.rtw89_dle_size { i16 128, i16 64, i16 1472 }, [26 x i8] zeroinitializer }, align 32
@wde_qt0 = dso_local constant { %struct.rtw89_wde_quota, [24 x i8] } { %struct.rtw89_wde_quota { i16 3792, i16 196, i16 0, i16 107 }, [24 x i8] zeroinitializer }, align 32
@wde_qt4 = dso_local constant { %struct.rtw89_wde_quota, [24 x i8] } zeroinitializer, align 32
@ple_qt4 = dso_local constant { %struct.rtw89_ple_quota, [42 x i8] } { %struct.rtw89_ple_quota { i16 264, i16 0, i16 16, i16 20, i16 26, i16 13, i16 356, i16 0, i16 32, i16 40, i16 8 }, [42 x i8] zeroinitializer }, align 32
@ple_qt5 = dso_local constant { %struct.rtw89_ple_quota, [42 x i8] } { %struct.rtw89_ple_quota { i16 264, i16 0, i16 32, i16 20, i16 64, i16 13, i16 1101, i16 0, i16 64, i16 128, i16 120 }, [42 x i8] zeroinitializer }, align 32
@ple_qt13 = dso_local constant { %struct.rtw89_ple_quota, [42 x i8] } { %struct.rtw89_ple_quota { i16 0, i16 0, i16 16, i16 48, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0 }, [42 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"phycap hal/phy/chip: tx_nss=0x%x/0x%x/0x%x rx_nss=0x%x/0x%x/0x%x\0A\00", [62 x i8] zeroinitializer }, align 32
@rtw89_mac_c2h_info_handler = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @rtw89_mac_c2h_rec_ack, ptr @rtw89_mac_c2h_done_ack, ptr @rtw89_mac_c2h_log], [20 x i8] zeroinitializer }, align 32
@rtw89_mac_c2h_ofld_handler = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr null, ptr null, ptr null, ptr null, ptr @rtw89_mac_c2h_macid_pause], [44 x i8] zeroinitializer }, align 32
@rtw89_mac_c2h_handle._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str, i32 3153, ptr @.str.21, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"c2h class %d not support\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"rtw89_mac_c2h_handle\00", [43 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@rtw89_mac_c2h_handle._entry_ptr = internal global ptr @rtw89_mac_c2h_handle._entry, section ".printk_index", align 4
@rtw89_mac_c2h_handle._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.20, ptr @.str, i32 3158, ptr @.str.21, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"c2h class %d func %d not support\0A\00", [62 x i8] zeroinitializer }, align 32
@rtw89_mac_c2h_handle._entry_ptr.24 = internal global ptr @rtw89_mac_c2h_handle._entry.22, section ".printk_index", align 4
@rtw89_mac_get_txpwr_cr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str, i32 3174, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"[TXPWR] addr=0x%x exceed txpwr cr\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"rtw89_mac_get_txpwr_cr\00", [41 x i8] zeroinitializer }, align 32
@rtw89_mac_get_txpwr_cr._entry_ptr = internal global ptr @rtw89_mac_get_txpwr_cr._entry, section ".printk_index", align 4
@rtw89_mac_get_txpwr_cr._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.26, ptr @.str, i32 3182, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"[TXPWR] addr=0x%x but hw not enable\0A\00", [59 x i8] zeroinitializer }, align 32
@rtw89_mac_get_txpwr_cr._entry_ptr.29 = internal global ptr @rtw89_mac_get_txpwr_cr._entry.27, section ".printk_index", align 4
@rtw89_mac_get_txpwr_cr._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.26, ptr @.str, i32 3191, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"[TXPWR] check txpwr cr 0x%x(phy%d) fail\0A\00", [55 x i8] zeroinitializer }, align 32
@rtw89_mac_get_txpwr_cr._entry_ptr.32 = internal global ptr @rtw89_mac_get_txpwr_cr._entry.30, section ".printk_index", align 4
@rtw89_mac_flush_txq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str, i32 3260, ptr @.str.21, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"timed out to flush queues\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rtw89_mac_flush_txq\00", [44 x i8] zeroinitializer }, align 32
@rtw89_mac_flush_txq._entry_ptr = internal global ptr @rtw89_mac_flush_txq._entry, section ".printk_index", align 4
@rtw89_mac_coex_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str, i32 3283, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Read R_AX_LTE_SW_CFG_2 fail!\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rtw89_mac_coex_init\00", [44 x i8] zeroinitializer }, align 32
@rtw89_mac_coex_init._entry_ptr = internal global ptr @rtw89_mac_coex_init._entry, section ".printk_index", align 4
@rtw89_mac_coex_init._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.36, ptr @.str, i32 3289, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Write R_AX_LTE_SW_CFG_2 fail!\0A\00", [33 x i8] zeroinitializer }, align 32
@rtw89_mac_coex_init._entry_ptr.39 = internal global ptr @rtw89_mac_coex_init._entry.37, section ".printk_index", align 4
@rtw89_mac_cfg_gnt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str, i32 3360, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Read LTE fail!\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rtw89_mac_cfg_gnt\00", [46 x i8] zeroinitializer }, align 32
@rtw89_mac_cfg_gnt._entry_ptr = internal global ptr @rtw89_mac_cfg_gnt._entry, section ".printk_index", align 4
@rtw89_mac_cfg_gnt._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.41, ptr @.str, i32 3381, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Write LTE fail!\0A\00", [47 x i8] zeroinitializer }, align 32
@rtw89_mac_cfg_gnt._entry_ptr.44 = internal global ptr @rtw89_mac_cfg_gnt._entry.42, section ".printk_index", align 4
@.str.45 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"initialize bfee for new association\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"update bf GID table\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"bfee STA count=%d\0A\00", [45 x i8] zeroinitializer }, align 32
@rtw89_mac_get_tx_time._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.49, ptr @.str, i32 3775, ptr @.str.8, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to check cmac in tx_time\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rtw89_mac_get_tx_time\00", [42 x i8] zeroinitializer }, align 32
@rtw89_mac_get_tx_time._entry_ptr = internal global ptr @rtw89_mac_get_tx_time._entry, section ".printk_index", align 4
@rtw89_mac_get_tx_retry_limit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.51, ptr @.str, i32 3817, ptr @.str.8, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to check cmac in rty_lmt\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"rtw89_mac_get_tx_retry_limit\00", [35 x i8] zeroinitializer }, align 32
@rtw89_mac_get_tx_retry_limit._entry_ptr = internal global ptr @rtw89_mac_get_tx_retry_limit._entry, section ".printk_index", align 4
@rtw89_mac_dump_err_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.53, ptr @.str, i32 242, ptr @.str.21, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"--->\0Aerr=0x%x\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"rtw89_mac_dump_err_status\00", [38 x i8] zeroinitializer }, align 32
@rtw89_mac_dump_err_status._entry_ptr = internal global ptr @rtw89_mac_dump_err_status._entry, section ".printk_index", align 4
@rtw89_mac_dump_err_status._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.53, ptr @.str, i32 244, ptr @.str.21, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"R_AX_SER_DBG_INFO =0x%08x\0A\00", [37 x i8] zeroinitializer }, align 32
@rtw89_mac_dump_err_status._entry_ptr.56 = internal global ptr @rtw89_mac_dump_err_status._entry.54, section ".printk_index", align 4
@rtw89_mac_dump_err_status._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.53, ptr @.str, i32 247, ptr @.str.21, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"R_AX_CMAC_ERR_ISR =0x%08x\0A\00", [37 x i8] zeroinitializer }, align 32
@rtw89_mac_dump_err_status._entry_ptr.59 = internal global ptr @rtw89_mac_dump_err_status._entry.57, section ".printk_index", align 4
@rtw89_mac_dump_err_status._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.53, ptr @.str, i32 249, ptr @.str.21, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"R_AX_DMAC_ERR_ISR =0x%08x\0A\00", [37 x i8] zeroinitializer }, align 32
@rtw89_mac_dump_err_status._entry_ptr.62 = internal global ptr @rtw89_mac_dump_err_status._entry.60, section ".printk_index", align 4
@rtw89_mac_dump_err_status._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.53, ptr @.str, i32 253, ptr @.str.21, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"R_AX_WDE_ERR_FLAG_CFG =0x%08x \00", [33 x i8] zeroinitializer }, align 32
@rtw89_mac_dump_err_status._entry_ptr.65 = internal global ptr @rtw89_mac_dump_err_status._entry.63, section ".printk_index", align 4
@rtw89_mac_dump_err_status._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.53, ptr @.str, i32 255, ptr @.str.21, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"R_AX_PLE_ERR_FLAG_CFG =0x%08x\0A\00", [33 x i8] zeroinitializer }, align 32
@rtw89_mac_dump_err_status._entry_ptr.68 = internal global ptr @rtw89_mac_dump_err_status._entry.66, section ".printk_index", align 4
@rtw89_mac_dump_err_status._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.53, ptr @.str, i32 260, ptr @.str.21, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"R_AX_WDRLS_ERR_IMR =0x%08x \00", [36 x i8] zeroinitializer }, align 32
@rtw89_mac_dump_err_status._entry_ptr.71 = internal global ptr @rtw89_mac_dump_err_status._entry.69, section ".printk_index", align 4
@rtw89_mac_dump_err_status._entry.72 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.53, ptr @.str, i32 262, ptr @.str.21, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"R_AX_WDRLS_ERR_ISR =0x%08x\0A\00", [36 x i8] zeroinitializer }, align 32
@rtw89_mac_dump_err_status._entry_ptr.74 = internal global ptr @rtw89_mac_dump_err_status._entry.72, section ".printk_index", align 4
@rtw89_mac_dump_err_status._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.53, ptr @.str, i32 267, ptr @.str.21, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"R_AX_SEC_ERR_IMR_ISR =0x%08x\0A\00", [34 x i8] zeroinitializer }, align 32
@rtw89_mac_dump_err_status._entry_ptr.77 = internal global ptr @rtw89_mac_dump_err_status._entry.75, section ".printk_index", align 4
@rtw89_mac_dump_err_status._entry.78 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.53, ptr @.str, i32 269, ptr @.str.21, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"SEC_local_Register 0x9D00 =0x%08x\0A\00", [61 x i8] zeroinitializer }, align 32
@rtw89_mac_dump_err_status._entry_ptr.80 = internal global ptr @rtw89_mac_dump_err_status._entry.78, section ".printk_index", align 4
@rtw89_mac_dump_err_status._entry.81 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.53, ptr @.str, i32 271, ptr @.str.21, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"SEC_local_Register 0x9D04 =0x%08x\0A\00", [61 x i8] zeroinitializer }, align 32
@rtw89_mac_dump_err_status._entry_ptr.83 = internal global ptr @rtw89_mac_dump_err_status._entry.81, section ".printk_index", align 4
@rtw89_mac_dump_err_status._entry.84 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.53, ptr @.str, i32 273, ptr @.str.21, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"SEC_local_Register 0x9D10 =0x%08x\0A\00", [61 x i8] zeroinitializer }, align 32
@rtw89_mac_dump_err_status._entry_ptr.86 = internal global ptr @rtw89_mac_dump_err_status._entry.84, section ".printk_index", align 4
@rtw89_mac_dump_err_status._entry.87 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.53, ptr @.str, i32 275, ptr @.str.21, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"SEC_local_Register 0x9D14 =0x%08x\0A\00", [61 x i8] zeroinitializer }, align 32
@rtw89_mac_dump_err_status._entry_ptr.89 = internal global ptr @rtw89_mac_dump_err_status._entry.87, section ".printk_index", align 4
@rtw89_mac_dump_err_status._entry.90 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.53, ptr @.str, i32 277, ptr @.str.21, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"SEC_local_Register 0x9D18 =0x%08x\0A\00", [61 x i8] zeroinitializer }, align 32
@rtw89_mac_dump_err_status._entry_ptr.92 = internal global ptr @rtw89_mac_dump_err_status._entry.90, section ".printk_index", align 4
@rtw89_mac_dump_err_status._entry.93 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.53, ptr @.str, i32 279, ptr @.str.21, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"SEC_local_Register 0x9D20 =0x%08x\0A\00", [61 x i8] zeroinitializer }, align 32
@rtw89_mac_dump_err_status._entry_ptr.95 = internal global ptr @rtw89_mac_dump_err_status._entry.93, section ".printk_index", align 4
@rtw89_mac_dump_err_status._entry.96 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.97, ptr @.str.53, ptr @.str, i32 281, ptr @.str.21, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"SEC_local_Register 0x9D24 =0x%08x\0A\00", [61 x i8] zeroinitializer }, align 32
@rtw89_mac_dump_err_status._entry_ptr.98 = internal global ptr @rtw89_mac_dump_err_status._entry.96, section ".printk_index", align 4
@rtw89_mac_dump_err_status._entry.99 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.100, ptr @.str.53, ptr @.str, i32 283, ptr @.str.21, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"SEC_local_Register 0x9D28 =0x%08x\0A\00", [61 x i8] zeroinitializer }, align 32
@rtw89_mac_dump_err_status._entry_ptr.101 = internal global ptr @rtw89_mac_dump_err_status._entry.99, section ".printk_index", align 4
@rtw89_mac_dump_err_status._entry.102 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.103, ptr @.str.53, ptr @.str, i32 285, ptr @.str.21, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"SEC_local_Register 0x9D2C =0x%08x\0A\00", [61 x i8] zeroinitializer }, align 32
@rtw89_mac_dump_err_status._entry_ptr.104 = internal global ptr @rtw89_mac_dump_err_status._entry.102, section ".printk_index", align 4
@rtw89_mac_dump_err_status._entry.105 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.106, ptr @.str.53, ptr @.str, i32 290, ptr @.str.21, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"R_AX_MPDU_TX_ERR_IMR =0x%08x \00", [34 x i8] zeroinitializer }, align 32
@rtw89_mac_dump_err_status._entry_ptr.107 = internal global ptr @rtw89_mac_dump_err_status._entry.105, section ".printk_index", align 4
@rtw89_mac_dump_err_status._entry.108 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.109, ptr @.str.53, ptr @.str, i32 292, ptr @.str.21, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"R_AX_MPDU_TX_ERR_ISR =0x%08x\0A\00", [34 x i8] zeroinitializer }, align 32
@rtw89_mac_dump_err_status._entry_ptr.110 = internal global ptr @rtw89_mac_dump_err_status._entry.108, section ".printk_index", align 4
@rtw89_mac_dump_err_status._entry.111 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.112, ptr @.str.53, ptr @.str, i32 294, ptr @.str.21, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"R_AX_MPDU_RX_ERR_IMR =0x%08x \00", [34 x i8] zeroinitializer }, align 32
@rtw89_mac_dump_err_status._entry_ptr.113 = internal global ptr @rtw89_mac_dump_err_status._entry.111, section ".printk_index", align 4
@rtw89_mac_dump_err_status._entry.114 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.115, ptr @.str.53, ptr @.str, i32 296, ptr @.str.21, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"R_AX_MPDU_RX_ERR_ISR =0x%08x\0A\00", [34 x i8] zeroinitializer }, align 32
@rtw89_mac_dump_err_status._entry_ptr.116 = internal global ptr @rtw89_mac_dump_err_status._entry.114, section ".printk_index", align 4
@rtw89_mac_dump_err_status._entry.117 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.118, ptr @.str.53, ptr @.str, i32 301, ptr @.str.21, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"R_AX_STA_SCHEDULER_ERR_IMR =0x%08x \00", [60 x i8] zeroinitializer }, align 32
@rtw89_mac_dump_err_status._entry_ptr.119 = internal global ptr @rtw89_mac_dump_err_status._entry.117, section ".printk_index", align 4
@rtw89_mac_dump_err_status._entry.120 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.121, ptr @.str.53, ptr @.str, i32 303, ptr @.str.21, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"R_AX_STA_SCHEDULER_ERR_ISR= 0x%08x\0A\00", [60 x i8] zeroinitializer }, align 32
@rtw89_mac_dump_err_status._entry_ptr.122 = internal global ptr @rtw89_mac_dump_err_status._entry.120, section ".printk_index", align 4
@rtw89_mac_dump_err_status._entry.123 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.124, ptr @.str.53, ptr @.str, i32 308, ptr @.str.21, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"R_AX_WDE_ERR_IMR=0x%08x \00", [39 x i8] zeroinitializer }, align 32
@rtw89_mac_dump_err_status._entry_ptr.125 = internal global ptr @rtw89_mac_dump_err_status._entry.123, section ".printk_index", align 4
@rtw89_mac_dump_err_status._entry.126 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.127, ptr @.str.53, ptr @.str, i32 310, ptr @.str.21, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"R_AX_WDE_ERR_ISR=0x%08x\0A\00", [39 x i8] zeroinitializer }, align 32
@rtw89_mac_dump_err_status._entry_ptr.128 = internal global ptr @rtw89_mac_dump_err_status._entry.126, section ".printk_index", align 4
@rtw89_mac_dump_err_status._entry.129 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.130, ptr @.str.53, ptr @.str, i32 312, ptr @.str.21, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"R_AX_PLE_ERR_IMR=0x%08x \00", [39 x i8] zeroinitializer }, align 32
@rtw89_mac_dump_err_status._entry_ptr.131 = internal global ptr @rtw89_mac_dump_err_status._entry.129, section ".printk_index", align 4
@rtw89_mac_dump_err_status._entry.132 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.133, ptr @.str.53, ptr @.str, i32 314, ptr @.str.21, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"R_AX_PLE_ERR_FLAG_ISR=0x%08x\0A\00", [34 x i8] zeroinitializer }, align 32
@rtw89_mac_dump_err_status._entry_ptr.134 = internal global ptr @rtw89_mac_dump_err_status._entry.132, section ".printk_index", align 4
@rtw89_mac_dump_err_status._entry.135 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.136, ptr @.str.53, ptr @.str, i32 320, ptr @.str.21, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"R_AX_TXPKTCTL_ERR_IMR_ISR=0x%08x\0A\00", [62 x i8] zeroinitializer }, align 32
@rtw89_mac_dump_err_status._entry_ptr.137 = internal global ptr @rtw89_mac_dump_err_status._entry.135, section ".printk_index", align 4
@rtw89_mac_dump_err_status._entry.138 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.139, ptr @.str.53, ptr @.str, i32 322, ptr @.str.21, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"R_AX_TXPKTCTL_ERR_IMR_ISR_B1=0x%08x\0A\00", [59 x i8] zeroinitializer }, align 32
@rtw89_mac_dump_err_status._entry_ptr.140 = internal global ptr @rtw89_mac_dump_err_status._entry.138, section ".printk_index", align 4
@rtw89_mac_dump_err_status._entry.141 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.124, ptr @.str.53, ptr @.str, i32 327, ptr @.str.21, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@rtw89_mac_dump_err_status._entry_ptr.142 = internal global ptr @rtw89_mac_dump_err_status._entry.141, section ".printk_index", align 4
@rtw89_mac_dump_err_status._entry.143 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.127, ptr @.str.53, ptr @.str, i32 329, ptr @.str.21, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@rtw89_mac_dump_err_status._entry_ptr.144 = internal global ptr @rtw89_mac_dump_err_status._entry.143, section ".printk_index", align 4
@rtw89_mac_dump_err_status._entry.145 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.130, ptr @.str.53, ptr @.str, i32 331, ptr @.str.21, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@rtw89_mac_dump_err_status._entry_ptr.146 = internal global ptr @rtw89_mac_dump_err_status._entry.145, section ".printk_index", align 4
@rtw89_mac_dump_err_status._entry.147 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.133, ptr @.str.53, ptr @.str, i32 333, ptr @.str.21, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@rtw89_mac_dump_err_status._entry_ptr.148 = internal global ptr @rtw89_mac_dump_err_status._entry.147, section ".printk_index", align 4
@rtw89_mac_dump_err_status._entry.149 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.150, ptr @.str.53, ptr @.str, i32 335, ptr @.str.21, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"R_AX_WD_CPUQ_OP_0=0x%08x\0A\00", [38 x i8] zeroinitializer }, align 32
@rtw89_mac_dump_err_status._entry_ptr.151 = internal global ptr @rtw89_mac_dump_err_status._entry.149, section ".printk_index", align 4
@rtw89_mac_dump_err_status._entry.152 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.153, ptr @.str.53, ptr @.str, i32 337, ptr @.str.21, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"R_AX_WD_CPUQ_OP_1=0x%08x\0A\00", [38 x i8] zeroinitializer }, align 32
@rtw89_mac_dump_err_status._entry_ptr.154 = internal global ptr @rtw89_mac_dump_err_status._entry.152, section ".printk_index", align 4
@rtw89_mac_dump_err_status._entry.155 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.156, ptr @.str.53, ptr @.str, i32 339, ptr @.str.21, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"R_AX_WD_CPUQ_OP_2=0x%08x\0A\00", [38 x i8] zeroinitializer }, align 32
@rtw89_mac_dump_err_status._entry_ptr.157 = internal global ptr @rtw89_mac_dump_err_status._entry.155, section ".printk_index", align 4
@rtw89_mac_dump_err_status._entry.158 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.159, ptr @.str.53, ptr @.str, i32 341, ptr @.str.21, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"R_AX_WD_CPUQ_OP_STATUS=0x%08x\0A\00", [33 x i8] zeroinitializer }, align 32
@rtw89_mac_dump_err_status._entry_ptr.160 = internal global ptr @rtw89_mac_dump_err_status._entry.158, section ".printk_index", align 4
@rtw89_mac_dump_err_status._entry.161 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.162, ptr @.str.53, ptr @.str, i32 343, ptr @.str.21, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"R_AX_PL_CPUQ_OP_0=0x%08x\0A\00", [38 x i8] zeroinitializer }, align 32
@rtw89_mac_dump_err_status._entry_ptr.163 = internal global ptr @rtw89_mac_dump_err_status._entry.161, section ".printk_index", align 4
@rtw89_mac_dump_err_status._entry.164 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.165, ptr @.str.53, ptr @.str, i32 345, ptr @.str.21, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"R_AX_PL_CPUQ_OP_1=0x%08x\0A\00", [38 x i8] zeroinitializer }, align 32
@rtw89_mac_dump_err_status._entry_ptr.166 = internal global ptr @rtw89_mac_dump_err_status._entry.164, section ".printk_index", align 4
@rtw89_mac_dump_err_status._entry.167 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.168, ptr @.str.53, ptr @.str, i32 347, ptr @.str.21, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"R_AX_PL_CPUQ_OP_2=0x%08x\0A\00", [38 x i8] zeroinitializer }, align 32
@rtw89_mac_dump_err_status._entry_ptr.169 = internal global ptr @rtw89_mac_dump_err_status._entry.167, section ".printk_index", align 4
@rtw89_mac_dump_err_status._entry.170 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.171, ptr @.str.53, ptr @.str, i32 349, ptr @.str.21, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"R_AX_PL_CPUQ_OP_STATUS=0x%08x\0A\00", [33 x i8] zeroinitializer }, align 32
@rtw89_mac_dump_err_status._entry_ptr.172 = internal global ptr @rtw89_mac_dump_err_status._entry.170, section ".printk_index", align 4
@rtw89_mac_dump_err_status._entry.173 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.174, ptr @.str.53, ptr @.str, i32 351, ptr @.str.21, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"R_AX_RXDMA_PKT_INFO_0=0x%08x\0A\00", [34 x i8] zeroinitializer }, align 32
@rtw89_mac_dump_err_status._entry_ptr.175 = internal global ptr @rtw89_mac_dump_err_status._entry.173, section ".printk_index", align 4
@rtw89_mac_dump_err_status._entry.176 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.177, ptr @.str.53, ptr @.str, i32 353, ptr @.str.21, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"R_AX_RXDMA_PKT_INFO_1=0x%08x\0A\00", [34 x i8] zeroinitializer }, align 32
@rtw89_mac_dump_err_status._entry_ptr.178 = internal global ptr @rtw89_mac_dump_err_status._entry.176, section ".printk_index", align 4
@rtw89_mac_dump_err_status._entry.179 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.180, ptr @.str.53, ptr @.str, i32 355, ptr @.str.21, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"R_AX_RXDMA_PKT_INFO_2=0x%08x\0A\00", [34 x i8] zeroinitializer }, align 32
@rtw89_mac_dump_err_status._entry_ptr.181 = internal global ptr @rtw89_mac_dump_err_status._entry.179, section ".printk_index", align 4
@rtw89_mac_dump_err_status._entry.182 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.183, ptr @.str.53, ptr @.str, i32 361, ptr @.str.21, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"R_AX_PKTIN_ERR_IMR =0x%08x \00", [36 x i8] zeroinitializer }, align 32
@rtw89_mac_dump_err_status._entry_ptr.184 = internal global ptr @rtw89_mac_dump_err_status._entry.182, section ".printk_index", align 4
@rtw89_mac_dump_err_status._entry.185 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.186, ptr @.str.53, ptr @.str, i32 363, ptr @.str.21, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"R_AX_PKTIN_ERR_ISR =0x%08x\0A\00", [36 x i8] zeroinitializer }, align 32
@rtw89_mac_dump_err_status._entry_ptr.187 = internal global ptr @rtw89_mac_dump_err_status._entry.185, section ".printk_index", align 4
@rtw89_mac_dump_err_status._entry.188 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.183, ptr @.str.53, ptr @.str, i32 365, ptr @.str.21, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@rtw89_mac_dump_err_status._entry_ptr.189 = internal global ptr @rtw89_mac_dump_err_status._entry.188, section ".printk_index", align 4
@rtw89_mac_dump_err_status._entry.190 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.186, ptr @.str.53, ptr @.str, i32 367, ptr @.str.21, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@rtw89_mac_dump_err_status._entry_ptr.191 = internal global ptr @rtw89_mac_dump_err_status._entry.190, section ".printk_index", align 4
@rtw89_mac_dump_err_status._entry.192 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.193, ptr @.str.53, ptr @.str, i32 375, ptr @.str.21, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.193 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"R_AX_CPUIO_ERR_IMR=0x%08x \00", [37 x i8] zeroinitializer }, align 32
@rtw89_mac_dump_err_status._entry_ptr.194 = internal global ptr @rtw89_mac_dump_err_status._entry.192, section ".printk_index", align 4
@rtw89_mac_dump_err_status._entry.195 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.196, ptr @.str.53, ptr @.str, i32 377, ptr @.str.21, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.196 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"R_AX_CPUIO_ERR_ISR=0x%08x\0A\00", [37 x i8] zeroinitializer }, align 32
@rtw89_mac_dump_err_status._entry_ptr.197 = internal global ptr @rtw89_mac_dump_err_status._entry.195, section ".printk_index", align 4
@rtw89_mac_dump_err_status._entry.198 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.199, ptr @.str.53, ptr @.str, i32 382, ptr @.str.21, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.199 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"R_AX_BBRPT_COM_ERR_IMR_ISR=0x%08x\0A\00", [61 x i8] zeroinitializer }, align 32
@rtw89_mac_dump_err_status._entry_ptr.200 = internal global ptr @rtw89_mac_dump_err_status._entry.198, section ".printk_index", align 4
@rtw89_mac_dump_err_status._entry.201 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.202, ptr @.str.53, ptr @.str, i32 387, ptr @.str.21, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.202 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"R_AX_SCHEDULE_ERR_IMR=0x%08x \00", [34 x i8] zeroinitializer }, align 32
@rtw89_mac_dump_err_status._entry_ptr.203 = internal global ptr @rtw89_mac_dump_err_status._entry.201, section ".printk_index", align 4
@rtw89_mac_dump_err_status._entry.204 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.205, ptr @.str.53, ptr @.str, i32 389, ptr @.str.21, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.205 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"R_AX_SCHEDULE_ERR_ISR=0x%04x\0A\00", [34 x i8] zeroinitializer }, align 32
@rtw89_mac_dump_err_status._entry_ptr.206 = internal global ptr @rtw89_mac_dump_err_status._entry.204, section ".printk_index", align 4
@rtw89_mac_dump_err_status._entry.207 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.208, ptr @.str.53, ptr @.str, i32 394, ptr @.str.21, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.208 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"R_AX_PTCL_IMR0=0x%08x \00", [41 x i8] zeroinitializer }, align 32
@rtw89_mac_dump_err_status._entry_ptr.209 = internal global ptr @rtw89_mac_dump_err_status._entry.207, section ".printk_index", align 4
@rtw89_mac_dump_err_status._entry.210 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.211, ptr @.str.53, ptr @.str, i32 396, ptr @.str.21, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.211 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"R_AX_PTCL_ISR0=0x%08x\0A\00", [41 x i8] zeroinitializer }, align 32
@rtw89_mac_dump_err_status._entry_ptr.212 = internal global ptr @rtw89_mac_dump_err_status._entry.210, section ".printk_index", align 4
@rtw89_mac_dump_err_status._entry.213 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.214, ptr @.str.53, ptr @.str, i32 401, ptr @.str.21, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.214 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"R_AX_DLE_CTRL=0x%08x\0A\00", [42 x i8] zeroinitializer }, align 32
@rtw89_mac_dump_err_status._entry_ptr.215 = internal global ptr @rtw89_mac_dump_err_status._entry.213, section ".printk_index", align 4
@rtw89_mac_dump_err_status._entry.216 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.217, ptr @.str.53, ptr @.str, i32 406, ptr @.str.21, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.217 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"R_AX_PHYINFO_ERR_IMR=0x%08x\0A\00", [35 x i8] zeroinitializer }, align 32
@rtw89_mac_dump_err_status._entry_ptr.218 = internal global ptr @rtw89_mac_dump_err_status._entry.216, section ".printk_index", align 4
@rtw89_mac_dump_err_status._entry.219 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.220, ptr @.str.53, ptr @.str, i32 411, ptr @.str.21, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.220 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"R_AX_TXPWR_IMR=0x%08x \00", [41 x i8] zeroinitializer }, align 32
@rtw89_mac_dump_err_status._entry_ptr.221 = internal global ptr @rtw89_mac_dump_err_status._entry.219, section ".printk_index", align 4
@rtw89_mac_dump_err_status._entry.222 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.223, ptr @.str.53, ptr @.str, i32 413, ptr @.str.21, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.223 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"R_AX_TXPWR_ISR=0x%08x\0A\00", [41 x i8] zeroinitializer }, align 32
@rtw89_mac_dump_err_status._entry_ptr.224 = internal global ptr @rtw89_mac_dump_err_status._entry.222, section ".printk_index", align 4
@rtw89_mac_dump_err_status._entry.225 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.226, ptr @.str.53, ptr @.str, i32 418, ptr @.str.21, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.226 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"R_AX_DBGSEL_TRXPTCL=0x%08x \00", [36 x i8] zeroinitializer }, align 32
@rtw89_mac_dump_err_status._entry_ptr.227 = internal global ptr @rtw89_mac_dump_err_status._entry.225, section ".printk_index", align 4
@rtw89_mac_dump_err_status._entry.228 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.229, ptr @.str.53, ptr @.str, i32 420, ptr @.str.21, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.229 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"R_AX_PHYINFO_ERR_ISR=0x%08x\0A\00", [35 x i8] zeroinitializer }, align 32
@rtw89_mac_dump_err_status._entry_ptr.230 = internal global ptr @rtw89_mac_dump_err_status._entry.228, section ".printk_index", align 4
@rtw89_mac_dump_err_status._entry.231 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.232, ptr @.str.53, ptr @.str, i32 425, ptr @.str.21, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.232 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"R_AX_TMAC_ERR_IMR_ISR=0x%08x \00", [34 x i8] zeroinitializer }, align 32
@rtw89_mac_dump_err_status._entry_ptr.233 = internal global ptr @rtw89_mac_dump_err_status._entry.231, section ".printk_index", align 4
@rtw89_mac_dump_err_status._entry.234 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.235, ptr @.str.53, ptr @.str, i32 427, ptr @.str.21, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.235 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"R_AX_DBGSEL_TRXPTCL=0x%08x\0A\00", [36 x i8] zeroinitializer }, align 32
@rtw89_mac_dump_err_status._entry_ptr.236 = internal global ptr @rtw89_mac_dump_err_status._entry.234, section ".printk_index", align 4
@rtw89_mac_dump_err_status._entry.237 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.238, ptr @.str.53, ptr @.str, i32 435, ptr @.str.21, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.238 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"<---\0A\00", [26 x i8] zeroinitializer }, align 32
@rtw89_mac_dump_err_status._entry_ptr.239 = internal global ptr @rtw89_mac_dump_err_status._entry.237, section ".printk_index", align 4
@dump_err_status_dispatcher._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.240, ptr @.str.241, ptr @.str, i32 152, ptr @.str.21, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.240 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"R_AX_HOST_DISPATCHER_ALWAYS_IMR=0x%08x \00", [56 x i8] zeroinitializer }, align 32
@.str.241 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"dump_err_status_dispatcher\00", [37 x i8] zeroinitializer }, align 32
@dump_err_status_dispatcher._entry_ptr = internal global ptr @dump_err_status_dispatcher._entry, section ".printk_index", align 4
@dump_err_status_dispatcher._entry.242 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.243, ptr @.str.241, ptr @.str, i32 154, ptr @.str.21, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.243 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"R_AX_HOST_DISPATCHER_ALWAYS_ISR=0x%08x\0A\00", [56 x i8] zeroinitializer }, align 32
@dump_err_status_dispatcher._entry_ptr.244 = internal global ptr @dump_err_status_dispatcher._entry.242, section ".printk_index", align 4
@dump_err_status_dispatcher._entry.245 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.246, ptr @.str.241, ptr @.str, i32 156, ptr @.str.21, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.246 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"R_AX_CPU_DISPATCHER_ALWAYS_IMR=0x%08x \00", [57 x i8] zeroinitializer }, align 32
@dump_err_status_dispatcher._entry_ptr.247 = internal global ptr @dump_err_status_dispatcher._entry.245, section ".printk_index", align 4
@dump_err_status_dispatcher._entry.248 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.249, ptr @.str.241, ptr @.str, i32 158, ptr @.str.21, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.249 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"R_AX_CPU_DISPATCHER_ALWAYS_ISR=0x%08x\0A\00", [57 x i8] zeroinitializer }, align 32
@dump_err_status_dispatcher._entry_ptr.250 = internal global ptr @dump_err_status_dispatcher._entry.248, section ".printk_index", align 4
@dump_err_status_dispatcher._entry.251 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.252, ptr @.str.241, ptr @.str, i32 160, ptr @.str.21, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.252 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"R_AX_OTHER_DISPATCHER_ALWAYS_IMR=0x%08x \00", [55 x i8] zeroinitializer }, align 32
@dump_err_status_dispatcher._entry_ptr.253 = internal global ptr @dump_err_status_dispatcher._entry.251, section ".printk_index", align 4
@dump_err_status_dispatcher._entry.254 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.255, ptr @.str.241, ptr @.str, i32 162, ptr @.str.21, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.255 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"R_AX_OTHER_DISPATCHER_ALWAYS_ISR=0x%08x\0A\00", [55 x i8] zeroinitializer }, align 32
@dump_err_status_dispatcher._entry_ptr.256 = internal global ptr @dump_err_status_dispatcher._entry.254, section ".printk_index", align 4
@rtw89_mac_dump_l0_to_l1._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.257, ptr @.str.258, ptr @.str, i32 225, ptr @.str.21, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.257 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"quota lost!\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.258 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"rtw89_mac_dump_l0_to_l1\00", [40 x i8] zeroinitializer }, align 32
@rtw89_mac_dump_l0_to_l1._entry_ptr = internal global ptr @rtw89_mac_dump_l0_to_l1._entry, section ".printk_index", align 4
@rtw89_mac_dump_qta_lost._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.259, ptr @.str.260, ptr @.str, i32 177, ptr @.str.8, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.259 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s: query DLE fail\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.260 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"rtw89_mac_dump_qta_lost\00", [40 x i8] zeroinitializer }, align 32
@rtw89_mac_dump_qta_lost._entry_ptr = internal global ptr @rtw89_mac_dump_qta_lost._entry, section ".printk_index", align 4
@rtw89_mac_dump_qta_lost._entry.261 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.262, ptr @.str.260, ptr @.str, i32 179, ptr @.str.21, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.262 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"DLE group0 empty: 0x%x\0A\00", [40 x i8] zeroinitializer }, align 32
@rtw89_mac_dump_qta_lost._entry_ptr.263 = internal global ptr @rtw89_mac_dump_qta_lost._entry.261, section ".printk_index", align 4
@rtw89_mac_dump_qta_lost._entry.264 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.259, ptr @.str.260, ptr @.str, i32 190, ptr @.str.8, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@rtw89_mac_dump_qta_lost._entry_ptr.265 = internal global ptr @rtw89_mac_dump_qta_lost._entry.264, section ".printk_index", align 4
@rtw89_mac_dump_qta_lost._entry.266 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.267, ptr @.str.260, ptr @.str, i32 194, ptr @.str.21, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.267 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"qidx%d pktcnt = %ld\0A\00", [43 x i8] zeroinitializer }, align 32
@rtw89_mac_dump_qta_lost._entry_ptr.268 = internal global ptr @rtw89_mac_dump_qta_lost._entry.266, section ".printk_index", align 4
@rtw89_mac_dump_qta_lost._entry.269 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.259, ptr @.str.260, ptr @.str, i32 201, ptr @.str.8, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@rtw89_mac_dump_qta_lost._entry_ptr.270 = internal global ptr @rtw89_mac_dump_qta_lost._entry.269, section ".printk_index", align 4
@rtw89_mac_dump_qta_lost._entry.271 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.272, ptr @.str.260, ptr @.str, i32 204, ptr @.str.21, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.272 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"quota6 rsv/use: 0x%x/0x%x\0A\00", [37 x i8] zeroinitializer }, align 32
@rtw89_mac_dump_qta_lost._entry_ptr.273 = internal global ptr @rtw89_mac_dump_qta_lost._entry.271, section ".printk_index", align 4
@rtw89_mac_dump_qta_lost._entry.274 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.275, ptr @.str.260, ptr @.str, i32 208, ptr @.str.21, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.275 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"[PLE][CMAC0_RX]min_pgnum=0x%lx\0A\00", [32 x i8] zeroinitializer }, align 32
@rtw89_mac_dump_qta_lost._entry_ptr.276 = internal global ptr @rtw89_mac_dump_qta_lost._entry.274, section ".printk_index", align 4
@rtw89_mac_dump_qta_lost._entry.277 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.278, ptr @.str.260, ptr @.str, i32 210, ptr @.str.21, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.278 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"[PLE][CMAC0_RX]max_pgnum=0x%lx\0A\00", [32 x i8] zeroinitializer }, align 32
@rtw89_mac_dump_qta_lost._entry_ptr.279 = internal global ptr @rtw89_mac_dump_qta_lost._entry.277, section ".printk_index", align 4
@dle_dfi_qempty._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.280, ptr @.str.281, ptr @.str, i32 141, ptr @.str.8, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.280 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"[ERR]dle_dfi_ctrl %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.281 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"dle_dfi_qempty\00", [17 x i8] zeroinitializer }, align 32
@dle_dfi_qempty._entry_ptr = internal global ptr @dle_dfi_qempty._entry, section ".printk_index", align 4
@dle_dfi_ctrl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.282, ptr @.str.283, ptr @.str, i32 92, ptr @.str.8, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.282 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"[ERR] dfi ctrl type %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.283 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"dle_dfi_ctrl\00", [19 x i8] zeroinitializer }, align 32
@dle_dfi_ctrl._entry_ptr = internal global ptr @dle_dfi_ctrl._entry, section ".printk_index", align 4
@dle_dfi_ctrl._entry.284 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.285, ptr @.str.283, ptr @.str, i32 102, ptr @.str.8, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.285 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"[ERR] dle dfi ctrl 0x%X set 0x%X timeout\0A\00", [54 x i8] zeroinitializer }, align 32
@dle_dfi_ctrl._entry_ptr.286 = internal global ptr @dle_dfi_ctrl._entry.284, section ".printk_index", align 4
@dle_dfi_quota._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.280, ptr @.str.287, ptr @.str, i32 121, ptr @.str.8, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.287 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"dle_dfi_quota\00", [18 x i8] zeroinitializer }, align 32
@dle_dfi_quota._entry_ptr = internal global ptr @dle_dfi_quota._entry, section ".printk_index", align 4
@rtw89_mac_power_switch._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.288, ptr @.str.289, ptr @.str, i32 1021, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.288 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"MAC has already powered on\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.289 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"rtw89_mac_power_switch\00", [41 x i8] zeroinitializer }, align 32
@rtw89_mac_power_switch._entry_ptr = internal global ptr @rtw89_mac_power_switch._entry, section ".printk_index", align 4
@pwr_cmd_poll._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.290, ptr @.str.291, ptr @.str, i32 830, ptr @.str.8, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.290 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"[ERR] Polling timeout\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.291 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pwr_cmd_poll\00", [19 x i8] zeroinitializer }, align 32
@pwr_cmd_poll._entry_ptr = internal global ptr @pwr_cmd_poll._entry, section ".printk_index", align 4
@pwr_cmd_poll._entry.292 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.293, ptr @.str.291, ptr @.str, i32 831, ptr @.str.8, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.293 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"[ERR] addr: %X, %X\0A\00", [44 x i8] zeroinitializer }, align 32
@pwr_cmd_poll._entry_ptr.294 = internal global ptr @pwr_cmd_poll._entry.292, section ".printk_index", align 4
@pwr_cmd_poll._entry.295 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.296, ptr @.str.291, ptr @.str, i32 832, ptr @.str.8, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.296 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"[ERR] val: %X, %X\0A\00", [45 x i8] zeroinitializer }, align 32
@pwr_cmd_poll._entry_ptr.297 = internal global ptr @pwr_cmd_poll._entry.295, section ".printk_index", align 4
@rtw89_mac_fw_dl_pre_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.298, ptr @.str.299, ptr @.str, i32 2574, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.298 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"[ERR]DLE pre init %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.299 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"rtw89_mac_fw_dl_pre_init\00", [39 x i8] zeroinitializer }, align 32
@rtw89_mac_fw_dl_pre_init._entry_ptr = internal global ptr @rtw89_mac_fw_dl_pre_init._entry, section ".printk_index", align 4
@rtw89_mac_fw_dl_pre_init._entry.300 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.301, ptr @.str.299, ptr @.str, i32 2580, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.301 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"[ERR]HCI FC pre init %d\0A\00", [39 x i8] zeroinitializer }, align 32
@rtw89_mac_fw_dl_pre_init._entry_ptr.302 = internal global ptr @rtw89_mac_fw_dl_pre_init._entry.300, section ".printk_index", align 4
@dle_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.303, ptr @.str.304, ptr @.str, i32 1363, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.303 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"[ERR]get_dle_mem_cfg\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.304 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dle_init\00", [23 x i8] zeroinitializer }, align 32
@dle_init._entry_ptr = internal global ptr @dle_init._entry, section ".printk_index", align 4
@dle_init._entry.305 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.306, ptr @.str.304, ptr @.str, i32 1372, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.306 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"[ERR]get_dle_ext_mem_cfg %d\0A\00", [35 x i8] zeroinitializer }, align 32
@dle_init._entry_ptr.307 = internal global ptr @dle_init._entry.305, section ".printk_index", align 4
@dle_init._entry.308 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.309, ptr @.str.304, ptr @.str, i32 1380, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.309 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"[ERR]wd/dle mem cfg\0A\00", [43 x i8] zeroinitializer }, align 32
@dle_init._entry_ptr.310 = internal global ptr @dle_init._entry.308, section ".printk_index", align 4
@dle_init._entry.311 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.312, ptr @.str.304, ptr @.str, i32 1390, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.312 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"[ERR] dle mix cfg\0A\00", [45 x i8] zeroinitializer }, align 32
@dle_init._entry_ptr.313 = internal global ptr @dle_init._entry.311, section ".printk_index", align 4
@dle_init._entry.314 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.315, ptr @.str.304, ptr @.str, i32 1401, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.315 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"[ERR]WDE cfg ready\0A\00", [44 x i8] zeroinitializer }, align 32
@dle_init._entry_ptr.316 = internal global ptr @dle_init._entry.314, section ".printk_index", align 4
@dle_init._entry.317 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.318, ptr @.str.304, ptr @.str, i32 1409, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.318 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"[ERR]PLE cfg ready\0A\00", [44 x i8] zeroinitializer }, align 32
@dle_init._entry_ptr.319 = internal global ptr @dle_init._entry.317, section ".printk_index", align 4
@dle_init._entry.320 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.321, ptr @.str.304, ptr @.str, i32 1417, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.321 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"[ERR]trxcfg wde 0x8900 = %x\0A\00", [35 x i8] zeroinitializer }, align 32
@dle_init._entry_ptr.322 = internal global ptr @dle_init._entry.320, section ".printk_index", align 4
@dle_init._entry.323 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.324, ptr @.str.304, ptr @.str, i32 1419, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.324 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"[ERR]trxcfg ple 0x8D00 = %x\0A\00", [35 x i8] zeroinitializer }, align 32
@dle_init._entry_ptr.325 = internal global ptr @dle_init._entry.323, section ".printk_index", align 4
@get_dle_mem_cfg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.326, ptr @.str.327, ptr @.str, i32 1194, ptr @.str.8, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.326 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"qta mode unmatch!\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.327 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"get_dle_mem_cfg\00", [16 x i8] zeroinitializer }, align 32
@get_dle_mem_cfg._entry_ptr = internal global ptr @get_dle_mem_cfg._entry, section ".printk_index", align 4
@dle_mix_cfg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.328, ptr @.str.329, ptr @.str, i32 1254, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.328 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"[ERR]WDE DLE doesn't support 256 byte!\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.329 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"dle_mix_cfg\00", [20 x i8] zeroinitializer }, align 32
@dle_mix_cfg._entry_ptr = internal global ptr @dle_mix_cfg._entry, section ".printk_index", align 4
@dle_mix_cfg._entry.330 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.331, ptr @.str.329, ptr @.str, i32 1271, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.331 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"[ERR]PLE DLE doesn't support 64 byte!\0A\00", [57 x i8] zeroinitializer }, align 32
@dle_mix_cfg._entry_ptr.332 = internal global ptr @dle_mix_cfg._entry.330, section ".printk_index", align 4
@rtw89_mac_trx_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.333, ptr @.str.334, ptr @.str, i32 2475, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.333 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"[ERR]DMAC init %d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.334 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rtw89_mac_trx_init\00", [45 x i8] zeroinitializer }, align 32
@rtw89_mac_trx_init._entry_ptr = internal global ptr @rtw89_mac_trx_init._entry, section ".printk_index", align 4
@rtw89_mac_trx_init._entry.335 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.336, ptr @.str.334, ptr @.str, i32 2481, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.336 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"[ERR]CMAC%d init %d\0A\00", [43 x i8] zeroinitializer }, align 32
@rtw89_mac_trx_init._entry_ptr.337 = internal global ptr @rtw89_mac_trx_init._entry.335, section ".printk_index", align 4
@rtw89_mac_trx_init._entry.338 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.339, ptr @.str.334, ptr @.str, i32 2488, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.339 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"[ERR]dbcc_enable init %d\0A\00", [38 x i8] zeroinitializer }, align 32
@rtw89_mac_trx_init._entry_ptr.340 = internal global ptr @rtw89_mac_trx_init._entry.338, section ".printk_index", align 4
@rtw89_mac_trx_init._entry.341 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.342, ptr @.str.334, ptr @.str, i32 2495, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.342 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"[ERR] enable DMAC IMR %d\0A\00", [38 x i8] zeroinitializer }, align 32
@rtw89_mac_trx_init._entry_ptr.343 = internal global ptr @rtw89_mac_trx_init._entry.341, section ".printk_index", align 4
@rtw89_mac_trx_init._entry.344 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.345, ptr @.str.334, ptr @.str, i32 2501, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.345 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"[ERR] to enable CMAC0 IMR %d\0A\00", [34 x i8] zeroinitializer }, align 32
@rtw89_mac_trx_init._entry_ptr.346 = internal global ptr @rtw89_mac_trx_init._entry.344, section ".printk_index", align 4
@rtw89_mac_trx_init._entry.347 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.348, ptr @.str.334, ptr @.str, i32 2507, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.348 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"[ERR] set host rpr %d\0A\00", [41 x i8] zeroinitializer }, align 32
@rtw89_mac_trx_init._entry_ptr.349 = internal global ptr @rtw89_mac_trx_init._entry.347, section ".printk_index", align 4
@dmac_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.350, ptr @.str.351, ptr @.str, i32 1527, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.350 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"[ERR]DLE init %d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.351 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"dmac_init\00", [22 x i8] zeroinitializer }, align 32
@dmac_init._entry_ptr = internal global ptr @dmac_init._entry, section ".printk_index", align 4
@dmac_init._entry.352 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.353, ptr @.str.351, ptr @.str, i32 1533, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.353 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"[ERR]HCI FC init %d\0A\00", [43 x i8] zeroinitializer }, align 32
@dmac_init._entry_ptr.354 = internal global ptr @dmac_init._entry.352, section ".printk_index", align 4
@dmac_init._entry.355 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.356, ptr @.str.351, ptr @.str, i32 1539, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.356 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"[ERR]STA SCH init %d\0A\00", [42 x i8] zeroinitializer }, align 32
@dmac_init._entry_ptr.357 = internal global ptr @dmac_init._entry.355, section ".printk_index", align 4
@dmac_init._entry.358 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.359, ptr @.str.351, ptr @.str, i32 1545, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.359 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"[ERR]MPDU Proc init %d\0A\00", [40 x i8] zeroinitializer }, align 32
@dmac_init._entry_ptr.360 = internal global ptr @dmac_init._entry.358, section ".printk_index", align 4
@dmac_init._entry.361 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.362, ptr @.str.351, ptr @.str, i32 1551, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.362 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"[ERR]Security Engine init %d\0A\00", [34 x i8] zeroinitializer }, align 32
@dmac_init._entry_ptr.363 = internal global ptr @dmac_init._entry.361, section ".printk_index", align 4
@sta_sch_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.364, ptr @.str.365, ptr @.str, i32 1467, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.364 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"[ERR]STA scheduler init\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.365 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sta_sch_init\00", [19 x i8] zeroinitializer }, align 32
@sta_sch_init._entry_ptr = internal global ptr @sta_sch_init._entry, section ".printk_index", align 4
@cmac_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.366, ptr @.str.367, ptr @.str, i32 1925, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.366 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"[ERR]CMAC%d SCH init %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.367 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"cmac_init\00", [22 x i8] zeroinitializer }, align 32
@cmac_init._entry_ptr = internal global ptr @cmac_init._entry, section ".printk_index", align 4
@cmac_init._entry.368 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.369, ptr @.str.367, ptr @.str, i32 1932, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.369 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"[ERR]CMAC%d ADDR_CAM reset %d\0A\00", [33 x i8] zeroinitializer }, align 32
@cmac_init._entry_ptr.370 = internal global ptr @cmac_init._entry.368, section ".printk_index", align 4
@cmac_init._entry.371 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.372, ptr @.str.367, ptr @.str, i32 1939, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.372 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"[ERR]CMAC%d RX filter init %d\0A\00", [33 x i8] zeroinitializer }, align 32
@cmac_init._entry_ptr.373 = internal global ptr @cmac_init._entry.371, section ".printk_index", align 4
@cmac_init._entry.374 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.375, ptr @.str.367, ptr @.str, i32 1946, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.375 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"[ERR]CMAC%d CCA CTRL init %d\0A\00", [34 x i8] zeroinitializer }, align 32
@cmac_init._entry_ptr.376 = internal global ptr @cmac_init._entry.374, section ".printk_index", align 4
@cmac_init._entry.377 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.378, ptr @.str.367, ptr @.str, i32 1953, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.378 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"[ERR]CMAC%d Spatial Reuse init %d\0A\00", [61 x i8] zeroinitializer }, align 32
@cmac_init._entry_ptr.379 = internal global ptr @cmac_init._entry.377, section ".printk_index", align 4
@cmac_init._entry.380 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.381, ptr @.str.367, ptr @.str, i32 1959, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.381 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"[ERR]CMAC%d TMAC init %d\0A\00", [38 x i8] zeroinitializer }, align 32
@cmac_init._entry_ptr.382 = internal global ptr @cmac_init._entry.380, section ".printk_index", align 4
@cmac_init._entry.383 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.384, ptr @.str.367, ptr @.str, i32 1965, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.384 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"[ERR]CMAC%d TRXPTCL init %d\0A\00", [35 x i8] zeroinitializer }, align 32
@cmac_init._entry_ptr.385 = internal global ptr @cmac_init._entry.383, section ".printk_index", align 4
@cmac_init._entry.386 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.387, ptr @.str.367, ptr @.str, i32 1971, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.387 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"[ERR]CMAC%d RMAC init %d\0A\00", [38 x i8] zeroinitializer }, align 32
@cmac_init._entry_ptr.388 = internal global ptr @cmac_init._entry.386, section ".printk_index", align 4
@cmac_init._entry.389 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.390, ptr @.str.367, ptr @.str, i32 1977, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.390 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"[ERR]CMAC%d Com init %d\0A\00", [39 x i8] zeroinitializer }, align 32
@cmac_init._entry_ptr.391 = internal global ptr @cmac_init._entry.389, section ".printk_index", align 4
@cmac_init._entry.392 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.393, ptr @.str.367, ptr @.str, i32 1983, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.393 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"[ERR]CMAC%d PTCL init %d\0A\00", [38 x i8] zeroinitializer }, align 32
@cmac_init._entry_ptr.394 = internal global ptr @cmac_init._entry.392, section ".printk_index", align 4
@addr_cam_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.395, ptr @.str.396, ptr @.str, i32 1578, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.395 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"[ERR]ADDR_CAM reset\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.396 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"addr_cam_init\00", [18 x i8] zeroinitializer }, align 32
@addr_cam_init._entry_ptr = internal global ptr @addr_cam_init._entry, section ".printk_index", align 4
@rtw89_mac_typ_fltr_opt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.397, ptr @.str.398, ptr @.str, i32 1619, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.397 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"[ERR]set rx filter fwd target err\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.398 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"rtw89_mac_typ_fltr_opt\00", [41 x i8] zeroinitializer }, align 32
@rtw89_mac_typ_fltr_opt._entry_ptr = internal global ptr @rtw89_mac_typ_fltr_opt._entry, section ".printk_index", align 4
@rtw89_mac_typ_fltr_opt._entry.399 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.400, ptr @.str.398, ptr @.str, i32 1634, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.400 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"[ERR]set rx filter type err\0A\00", [35 x i8] zeroinitializer }, align 32
@rtw89_mac_typ_fltr_opt._entry_ptr.401 = internal global ptr @rtw89_mac_typ_fltr_opt._entry.399, section ".printk_index", align 4
@is_qta_dbcc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.303, ptr @.str.402, ptr @.str, i32 1879, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.402 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"is_qta_dbcc\00", [20 x i8] zeroinitializer }, align 32
@is_qta_dbcc._entry_ptr = internal global ptr @is_qta_dbcc._entry, section ".printk_index", align 4
@rtw89_mac_dbcc_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.403, ptr @.str.404, ptr @.str, i32 2431, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.403 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"[ERR] band1_enable %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.404 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rtw89_mac_dbcc_enable\00", [42 x i8] zeroinitializer }, align 32
@rtw89_mac_dbcc_enable._entry_ptr = internal global ptr @rtw89_mac_dbcc_enable._entry, section ".printk_index", align 4
@rtw89_mac_dbcc_enable._entry.405 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.406, ptr @.str.404, ptr @.str, i32 2437, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.406 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"[ERR] enable CMAC1 IMR %d\0A\00", [37 x i8] zeroinitializer }, align 32
@rtw89_mac_dbcc_enable._entry_ptr.407 = internal global ptr @rtw89_mac_dbcc_enable._entry.405, section ".printk_index", align 4
@rtw89_mac_dbcc_enable._entry.408 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.409, ptr @.str.404, ptr @.str, i32 2441, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.409 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"[ERR] disable dbcc is not implemented not\0A\00", [53 x i8] zeroinitializer }, align 32
@rtw89_mac_dbcc_enable._entry_ptr.410 = internal global ptr @rtw89_mac_dbcc_enable._entry.408, section ".printk_index", align 4
@band1_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.411, ptr @.str.412, ptr @.str, i32 2297, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.411 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"[ERR]stop sch tx %d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.412 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"band1_enable\00", [19 x i8] zeroinitializer }, align 32
@band1_enable._entry_ptr = internal global ptr @band1_enable._entry, section ".printk_index", align 4
@band1_enable._entry.413 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.414, ptr @.str.412, ptr @.str, i32 2310, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.414 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"[ERR]tx idle poll %d\0A\00", [42 x i8] zeroinitializer }, align 32
@band1_enable._entry_ptr.415 = internal global ptr @band1_enable._entry.413, section ".printk_index", align 4
@band1_enable._entry.416 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.417, ptr @.str.412, ptr @.str, i32 2316, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.417 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"[ERR]DLE quota change %d\0A\00", [38 x i8] zeroinitializer }, align 32
@band1_enable._entry_ptr.418 = internal global ptr @band1_enable._entry.416, section ".printk_index", align 4
@band1_enable._entry.419 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.420, ptr @.str.412, ptr @.str, i32 2327, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.420 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"[ERR]CMAC1 resume sch tx %d\0A\00", [35 x i8] zeroinitializer }, align 32
@band1_enable._entry_ptr.421 = internal global ptr @band1_enable._entry.419, section ".printk_index", align 4
@band1_enable._entry.422 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.423, ptr @.str.412, ptr @.str, i32 2333, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.423 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"[ERR]CMAC1 func en %d\0A\00", [41 x i8] zeroinitializer }, align 32
@band1_enable._entry_ptr.424 = internal global ptr @band1_enable._entry.422, section ".printk_index", align 4
@band1_enable._entry.425 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.426, ptr @.str.412, ptr @.str, i32 2339, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.426 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"[ERR]CMAC1 init %d\0A\00", [44 x i8] zeroinitializer }, align 32
@band1_enable._entry_ptr.427 = internal global ptr @band1_enable._entry.425, section ".printk_index", align 4
@dle_quota_change._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.309, ptr @.str.428, ptr @.str, i32 2215, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.428 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"dle_quota_change\00", [47 x i8] zeroinitializer }, align 32
@dle_quota_change._entry_ptr = internal global ptr @dle_quota_change._entry, section ".printk_index", align 4
@dle_quota_change._entry.429 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.309, ptr @.str.428, ptr @.str, i32 2220, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@dle_quota_change._entry_ptr.430 = internal global ptr @dle_quota_change._entry.429, section ".printk_index", align 4
@dle_quota_change._entry.431 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.432, ptr @.str.428, ptr @.str, i32 2228, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.432 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"[ERR]WDE DLE buf req\0A\00", [42 x i8] zeroinitializer }, align 32
@dle_quota_change._entry_ptr.433 = internal global ptr @dle_quota_change._entry.431, section ".printk_index", align 4
@dle_quota_change._entry.434 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.435, ptr @.str.428, ptr @.str, i32 2240, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.435 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"[ERR]WDE DLE enqueue to head\0A\00", [34 x i8] zeroinitializer }, align 32
@dle_quota_change._entry_ptr.436 = internal global ptr @dle_quota_change._entry.434, section ".printk_index", align 4
@dle_quota_change._entry.437 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.438, ptr @.str.428, ptr @.str, i32 2246, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.438 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"[ERR]PLE DLE buf req\0A\00", [42 x i8] zeroinitializer }, align 32
@dle_quota_change._entry_ptr.439 = internal global ptr @dle_quota_change._entry.437, section ".printk_index", align 4
@dle_quota_change._entry.440 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.441, ptr @.str.428, ptr @.str, i32 2258, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.441 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"[ERR]PLE DLE enqueue to head\0A\00", [34 x i8] zeroinitializer }, align 32
@dle_quota_change._entry_ptr.442 = internal global ptr @dle_quota_change._entry.440, section ".printk_index", align 4
@rtw89_mac_enable_imr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.443, ptr @.str.444, ptr @.str, i32 2358, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.443 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"MAC%d mac_idx%d is not ready\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.444 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"rtw89_mac_enable_imr\00", [43 x i8] zeroinitializer }, align 32
@rtw89_mac_enable_imr._entry_ptr = internal global ptr @rtw89_mac_enable_imr._entry, section ".printk_index", align 4
@rtw89_mac_port_cfg_bss_color.masks = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 63, i32 16128, i32 4128768, i32 1056964608, i32 63], [44 x i8] zeroinitializer }, align 32
@.str.445 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"C2H rev ack recv, cat: %d, class: %d, func: %d, seq : %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.446 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"C2H done ack recv, cat: %d, class: %d, func: %d, ret: %d, seq : %d\0A\00", [60 x i8] zeroinitializer }, align 32
@rtw89_mac_c2h_log._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.447, ptr @.str.448, ptr @.str, i32 3114, ptr @.str.21, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.447 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%*s\00", [28 x i8] zeroinitializer }, align 32
@.str.448 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rtw89_mac_c2h_log\00", [46 x i8] zeroinitializer }, align 32
@rtw89_mac_c2h_log._entry_ptr = internal global ptr @rtw89_mac_c2h_log._entry, section ".printk_index", align 4
@.str.451 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"set bfee ndpa_en to %d\0A\00", [40 x i8] zeroinitializer }, align 32
@__rtw89_mac_set_tx_time._entry = internal constant %struct.pi_entry { ptr @.str.452, ptr @.str.453, ptr @.str, i32 3735, ptr @.str.8, ptr @.str.4 }, align 1
@.str.452 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to check cmac in set txtime\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.453 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"__rtw89_mac_set_tx_time\00", [40 x i8] zeroinitializer }, align 32
@__rtw89_mac_set_tx_time._entry_ptr = internal global ptr @__rtw89_mac_set_tx_time._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 3735928559, i64 3941264106]
@__sancov_gen_cov_switch_values.454 = internal global [4 x i64] [i64 2, i64 32, i64 16, i64 4096]
@__sancov_gen_cov_switch_values.455 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.456 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.457 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.458 = internal global [4 x i64] [i64 2, i64 32, i64 3735928559, i64 3941264106]
@__sancov_gen_cov_switch_values.459 = internal global [4 x i64] [i64 2, i64 32, i64 3735928559, i64 3941264106]
@__sancov_gen_cov_switch_values.460 = internal global [4 x i64] [i64 2, i64 32, i64 3735928559, i64 3941264106]
@__sancov_gen_cov_switch_values.461 = internal global [4 x i64] [i64 2, i64 32, i64 3735928559, i64 3941264106]
@__sancov_gen_cov_switch_values.462 = internal global [4 x i64] [i64 2, i64 32, i64 3735928559, i64 3941264106]
@__sancov_gen_cov_switch_values.463 = internal global [4 x i64] [i64 2, i64 32, i64 3735928559, i64 3941264106]
@__sancov_gen_cov_switch_values.464 = internal global [4 x i64] [i64 2, i64 32, i64 3735928559, i64 3941264106]
@__sancov_gen_cov_switch_values.465 = internal global [4 x i64] [i64 2, i64 32, i64 3735928559, i64 3941264106]
@__sancov_gen_cov_switch_values.466 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 3]
@__sancov_gen_cov_switch_values.467 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 5]
@__sancov_gen_cov_switch_values.468 = internal global [4 x i64] [i64 2, i64 32, i64 3735928559, i64 3941264106]
@__sancov_gen_cov_switch_values.469 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.470 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.471 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.472 = internal global [4 x i64] [i64 2, i64 32, i64 3735928559, i64 3941264106]
@__sancov_gen_cov_switch_values.473 = internal global [4 x i64] [i64 2, i64 32, i64 3735928559, i64 3941264106]
@__sancov_gen_cov_switch_values.474 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.475 = internal global [4 x i64] [i64 2, i64 32, i64 3735928559, i64 3941264106]
@__sancov_gen_cov_switch_values.476 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.477 = internal global [4 x i64] [i64 2, i64 32, i64 3735928559, i64 3941264106]
@__sancov_gen_cov_switch_values.478 = internal global [4 x i64] [i64 2, i64 32, i64 3735928559, i64 3941264106]
@__sancov_gen_cov_switch_values.479 = internal global [4 x i64] [i64 2, i64 32, i64 3735928559, i64 3941264106]
@__sancov_gen_cov_switch_values.480 = internal global [4 x i64] [i64 2, i64 32, i64 3735928559, i64 3941264106]
@__sancov_gen_cov_switch_values.481 = internal global [4 x i64] [i64 2, i64 32, i64 3735928559, i64 3941264106]
@__sancov_gen_cov_switch_values.482 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.483 = internal global [4 x i64] [i64 2, i64 32, i64 3735928559, i64 3941264106]
@__sancov_gen_cov_switch_values.484 = internal global [4 x i64] [i64 2, i64 16, i64 128, i64 256]
@__sancov_gen_cov_switch_values.485 = internal global [4 x i64] [i64 2, i64 16, i64 128, i64 256]
@__sancov_gen_cov_switch_values.486 = internal global [4 x i64] [i64 2, i64 32, i64 3735928559, i64 3941264106]
@__sancov_gen_cov_switch_values.487 = internal global [4 x i64] [i64 2, i64 32, i64 3735928559, i64 3941264106]
@__sancov_gen_cov_switch_values.488 = internal global [4 x i64] [i64 2, i64 32, i64 3735928559, i64 3941264106]
@__sancov_gen_cov_switch_values.489 = internal global [4 x i64] [i64 2, i64 32, i64 3735928559, i64 3941264106]
@__sancov_gen_cov_switch_values.490 = internal global [4 x i64] [i64 2, i64 32, i64 3735928559, i64 3941264106]
@__sancov_gen_cov_switch_values.491 = internal global [4 x i64] [i64 2, i64 32, i64 3735928559, i64 3941264106]
@__sancov_gen_cov_switch_values.492 = internal global [4 x i64] [i64 2, i64 32, i64 3735928559, i64 3941264106]
@__sancov_gen_cov_switch_values.493 = internal global [4 x i64] [i64 2, i64 32, i64 3735928559, i64 3941264106]
@__sancov_gen_cov_switch_values.494 = internal global [4 x i64] [i64 2, i64 32, i64 3735928559, i64 3941264106]
@__sancov_gen_cov_switch_values.495 = internal global [4 x i64] [i64 2, i64 32, i64 3735928559, i64 3941264106]
@__sancov_gen_cov_switch_values.496 = internal global [4 x i64] [i64 2, i64 32, i64 3735928559, i64 3941264106]
@__sancov_gen_cov_switch_values.497 = internal global [4 x i64] [i64 2, i64 32, i64 3735928559, i64 3941264106]
@__sancov_gen_cov_switch_values.498 = internal global [4 x i64] [i64 2, i64 32, i64 3735928559, i64 3941264106]
@__sancov_gen_cov_switch_values.499 = internal global [4 x i64] [i64 2, i64 32, i64 3735928559, i64 3941264106]
@__sancov_gen_cov_switch_values.500 = internal global [4 x i64] [i64 2, i64 32, i64 3735928559, i64 3941264106]
@__sancov_gen_cov_switch_values.501 = internal global [4 x i64] [i64 2, i64 32, i64 3735928559, i64 3941264106]
@___asan_gen_.504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1631, i32 42, i32 8 }
@___asan_gen_.519 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1631, i32 45, i32 3 }
@___asan_gen_.525 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1631, i32 61, i32 3 }
@___asan_gen_.537 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1631, i32 446, i32 3 }
@___asan_gen_.546 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1631, i32 466, i32 3 }
@___asan_gen_.552 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1631, i32 473, i32 3 }
@___asan_gen_.553 = private unnamed_addr constant [21 x i8] c"rtw_hfc_preccfg_pcie\00", align 1
@___asan_gen_.555 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1631, i32 484, i32 33 }
@___asan_gen_.570 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1631, i32 998, i32 3 }
@___asan_gen_.571 = private unnamed_addr constant [10 x i8] c"wde_size0\00", align 1
@___asan_gen_.573 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1631, i32 1139, i32 29 }
@___asan_gen_.574 = private unnamed_addr constant [10 x i8] c"wde_size4\00", align 1
@___asan_gen_.576 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1631, i32 1144, i32 29 }
@___asan_gen_.577 = private unnamed_addr constant [10 x i8] c"ple_size0\00", align 1
@___asan_gen_.579 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1631, i32 1149, i32 29 }
@___asan_gen_.580 = private unnamed_addr constant [10 x i8] c"ple_size4\00", align 1
@___asan_gen_.582 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1631, i32 1154, i32 29 }
@___asan_gen_.583 = private unnamed_addr constant [8 x i8] c"wde_qt0\00", align 1
@___asan_gen_.585 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1631, i32 1159, i32 30 }
@___asan_gen_.586 = private unnamed_addr constant [8 x i8] c"wde_qt4\00", align 1
@___asan_gen_.588 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1631, i32 1164, i32 30 }
@___asan_gen_.589 = private unnamed_addr constant [8 x i8] c"ple_qt4\00", align 1
@___asan_gen_.591 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1631, i32 1169, i32 30 }
@___asan_gen_.592 = private unnamed_addr constant [8 x i8] c"ple_qt5\00", align 1
@___asan_gen_.594 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1631, i32 1174, i32 30 }
@___asan_gen_.595 = private unnamed_addr constant [9 x i8] c"ple_qt13\00", align 1
@___asan_gen_.597 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1631, i32 1179, i32 30 }
@___asan_gen_.600 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1631, i32 2027, i32 2 }
@___asan_gen_.601 = private unnamed_addr constant [27 x i8] c"rtw89_mac_c2h_info_handler\00", align 1
@___asan_gen_.603 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1631, i32 3128, i32 15 }
@___asan_gen_.604 = private unnamed_addr constant [27 x i8] c"rtw89_mac_c2h_ofld_handler\00", align 1
@___asan_gen_.606 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1631, i32 3118, i32 15 }
@___asan_gen_.618 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1631, i32 3153, i32 3 }
@___asan_gen_.624 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1631, i32 3157, i32 3 }
@___asan_gen_.633 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1631, i32 3173, i32 3 }
@___asan_gen_.639 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1631, i32 3180, i32 4 }
@___asan_gen_.645 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1631, i32 3190, i32 2 }
@___asan_gen_.654 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1631, i32 3260, i32 3 }
@___asan_gen_.663 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1631, i32 3283, i32 3 }
@___asan_gen_.669 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1631, i32 3289, i32 3 }
@___asan_gen_.678 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1631, i32 3360, i32 3 }
@___asan_gen_.684 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1631, i32 3381, i32 3 }
@___asan_gen_.687 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1631, i32 3623, i32 3 }
@___asan_gen_.690 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1631, i32 3646, i32 2 }
@___asan_gen_.693 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1631, i32 3698, i32 2 }
@___asan_gen_.702 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1631, i32 3775, i32 4 }
@___asan_gen_.711 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1631, i32 3817, i32 4 }
@___asan_gen_.720 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1631, i32 242, i32 2 }
@___asan_gen_.726 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1631, i32 243, i32 2 }
@___asan_gen_.732 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1631, i32 247, i32 2 }
@___asan_gen_.738 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1631, i32 249, i32 2 }
@___asan_gen_.744 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1631, i32 252, i32 3 }
@___asan_gen_.750 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1631, i32 254, i32 3 }
@___asan_gen_.756 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1631, i32 259, i32 3 }
@___asan_gen_.762 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1631, i32 261, i32 3 }
@___asan_gen_.768 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1631, i32 266, i32 3 }
@___asan_gen_.774 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1631, i32 268, i32 3 }
@___asan_gen_.780 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1631, i32 270, i32 3 }
@___asan_gen_.786 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1631, i32 272, i32 3 }
@___asan_gen_.792 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1631, i32 274, i32 3 }
@___asan_gen_.798 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1631, i32 276, i32 3 }
@___asan_gen_.804 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1631, i32 278, i32 3 }
@___asan_gen_.810 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1631, i32 280, i32 3 }
@___asan_gen_.816 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1631, i32 282, i32 3 }
@___asan_gen_.822 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1631, i32 284, i32 3 }
@___asan_gen_.828 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1631, i32 289, i32 3 }
@___asan_gen_.834 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1631, i32 291, i32 3 }
@___asan_gen_.840 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1631, i32 293, i32 3 }
@___asan_gen_.846 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1631, i32 295, i32 3 }
@___asan_gen_.852 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1631, i32 300, i32 3 }
@___asan_gen_.858 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1631, i32 302, i32 3 }
@___asan_gen_.864 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1631, i32 307, i32 3 }
@___asan_gen_.870 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1631, i32 309, i32 3 }
@___asan_gen_.876 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1631, i32 311, i32 3 }
@___asan_gen_.882 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1631, i32 313, i32 3 }
@___asan_gen_.888 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1631, i32 319, i32 3 }
@___asan_gen_.894 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1631, i32 321, i32 3 }
@___asan_gen_.897 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1631, i32 326, i32 3 }
@___asan_gen_.900 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1631, i32 328, i32 3 }
@___asan_gen_.903 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1631, i32 330, i32 3 }
@___asan_gen_.906 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1631, i32 332, i32 3 }
@___asan_gen_.912 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1631, i32 334, i32 3 }
@___asan_gen_.918 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1631, i32 336, i32 3 }
@___asan_gen_.924 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1631, i32 338, i32 3 }
@___asan_gen_.930 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1631, i32 340, i32 3 }
@___asan_gen_.936 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1631, i32 342, i32 3 }
@___asan_gen_.942 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1631, i32 344, i32 3 }
@___asan_gen_.948 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1631, i32 346, i32 3 }
@___asan_gen_.954 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1631, i32 348, i32 3 }
@___asan_gen_.960 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1631, i32 350, i32 3 }
@___asan_gen_.966 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1631, i32 352, i32 3 }
@___asan_gen_.972 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1631, i32 354, i32 3 }
@___asan_gen_.978 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1631, i32 360, i32 3 }
@___asan_gen_.984 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1631, i32 362, i32 3 }
@___asan_gen_.987 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1631, i32 364, i32 3 }
@___asan_gen_.990 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1631, i32 366, i32 3 }
@___asan_gen_.996 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1631, i32 374, i32 3 }
@___asan_gen_.1002 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1631, i32 376, i32 3 }
@___asan_gen_.1008 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1631, i32 381, i32 3 }
@___asan_gen_.1014 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1631, i32 386, i32 3 }
@___asan_gen_.1020 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1631, i32 388, i32 3 }
@___asan_gen_.1026 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1631, i32 393, i32 3 }
@___asan_gen_.1032 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1631, i32 395, i32 3 }
@___asan_gen_.1038 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1631, i32 400, i32 3 }
@___asan_gen_.1044 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1631, i32 405, i32 3 }
@___asan_gen_.1050 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1631, i32 410, i32 3 }
@___asan_gen_.1056 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1631, i32 412, i32 3 }
@___asan_gen_.1062 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1631, i32 417, i32 3 }
@___asan_gen_.1068 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1631, i32 419, i32 3 }
@___asan_gen_.1074 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1631, i32 424, i32 3 }
@___asan_gen_.1080 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1631, i32 426, i32 3 }
@___asan_gen_.1086 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1631, i32 435, i32 2 }
@___asan_gen_.1095 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1631, i32 151, i32 2 }
@___asan_gen_.1101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1631, i32 153, i32 2 }
@___asan_gen_.1107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1631, i32 155, i32 2 }
@___asan_gen_.1113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1631, i32 157, i32 2 }
@___asan_gen_.1119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1631, i32 159, i32 2 }
@___asan_gen_.1125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1631, i32 161, i32 2 }
@___asan_gen_.1134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1631, i32 225, i32 3 }
@___asan_gen_.1143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1631, i32 177, i32 3 }
@___asan_gen_.1149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1631, i32 179, i32 3 }
@___asan_gen_.1152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1631, i32 190, i32 4 }
@___asan_gen_.1158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1631, i32 192, i32 4 }
@___asan_gen_.1161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1631, i32 201, i32 3 }
@___asan_gen_.1167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1631, i32 203, i32 3 }
@___asan_gen_.1173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1631, i32 207, i32 2 }
@___asan_gen_.1179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1631, i32 209, i32 2 }
@___asan_gen_.1188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1631, i32 141, i32 3 }
@___asan_gen_.1197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1631, i32 92, i32 3 }
@___asan_gen_.1203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1631, i32 101, i32 3 }
@___asan_gen_.1209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1631, i32 121, i32 3 }
@___asan_gen_.1218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1631, i32 1021, i32 3 }
@___asan_gen_.1227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1631, i32 830, i32 2 }
@___asan_gen_.1233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1631, i32 831, i32 2 }
@___asan_gen_.1239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1631, i32 832, i32 2 }
@___asan_gen_.1248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1631, i32 2574, i32 3 }
@___asan_gen_.1254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1631, i32 2580, i32 3 }
@___asan_gen_.1263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1631, i32 1363, i32 3 }
@___asan_gen_.1269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1631, i32 1371, i32 4 }
@___asan_gen_.1275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1631, i32 1380, i32 3 }
@___asan_gen_.1281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1631, i32 1390, i32 3 }
@___asan_gen_.1287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1631, i32 1401, i32 3 }
@___asan_gen_.1293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1631, i32 1409, i32 3 }
@___asan_gen_.1299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1631, i32 1416, i32 2 }
@___asan_gen_.1305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1631, i32 1418, i32 2 }
@___asan_gen_.1314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1631, i32 1194, i32 3 }
@___asan_gen_.1323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1631, i32 1254, i32 3 }
@___asan_gen_.1329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1631, i32 1271, i32 3 }
@___asan_gen_.1338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1631, i32 2475, i32 3 }
@___asan_gen_.1344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1631, i32 2481, i32 3 }
@___asan_gen_.1350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1631, i32 2488, i32 4 }
@___asan_gen_.1356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1631, i32 2495, i32 3 }
@___asan_gen_.1362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1631, i32 2501, i32 3 }
@___asan_gen_.1368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1631, i32 2507, i32 3 }
@___asan_gen_.1377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1631, i32 1527, i32 3 }
@___asan_gen_.1383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1631, i32 1533, i32 3 }
@___asan_gen_.1389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1631, i32 1539, i32 3 }
@___asan_gen_.1395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1631, i32 1545, i32 3 }
@___asan_gen_.1401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1631, i32 1551, i32 3 }
@___asan_gen_.1410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1631, i32 1467, i32 3 }
@___asan_gen_.1419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1631, i32 1925, i32 3 }
@___asan_gen_.1425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1631, i32 1931, i32 3 }
@___asan_gen_.1431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1631, i32 1938, i32 3 }
@___asan_gen_.1437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1631, i32 1945, i32 3 }
@___asan_gen_.1443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1631, i32 1952, i32 3 }
@___asan_gen_.1449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1631, i32 1959, i32 3 }
@___asan_gen_.1455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1631, i32 1965, i32 3 }
@___asan_gen_.1461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1631, i32 1971, i32 3 }
@___asan_gen_.1467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1631, i32 1977, i32 3 }
@___asan_gen_.1473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1631, i32 1983, i32 3 }
@___asan_gen_.1482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1631, i32 1578, i32 3 }
@___asan_gen_.1491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1631, i32 1619, i32 3 }
@___asan_gen_.1497 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1631, i32 1634, i32 3 }
@___asan_gen_.1503 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1631, i32 1879, i32 3 }
@___asan_gen_.1512 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1631, i32 2431, i32 4 }
@___asan_gen_.1518 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1631, i32 2437, i32 4 }
@___asan_gen_.1524 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1631, i32 2441, i32 3 }
@___asan_gen_.1533 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1631, i32 2297, i32 3 }
@___asan_gen_.1539 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1631, i32 2310, i32 3 }
@___asan_gen_.1545 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1631, i32 2316, i32 3 }
@___asan_gen_.1551 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1631, i32 2327, i32 3 }
@___asan_gen_.1557 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1631, i32 2333, i32 3 }
@___asan_gen_.1563 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1631, i32 2339, i32 3 }
@___asan_gen_.1569 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1631, i32 2215, i32 3 }
@___asan_gen_.1572 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1631, i32 2220, i32 3 }
@___asan_gen_.1578 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1631, i32 2228, i32 3 }
@___asan_gen_.1584 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1631, i32 2240, i32 3 }
@___asan_gen_.1590 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1631, i32 2246, i32 3 }
@___asan_gen_.1596 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1631, i32 2258, i32 3 }
@___asan_gen_.1605 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1631, i32 2357, i32 3 }
@___asan_gen_.1606 = private unnamed_addr constant [6 x i8] c"masks\00", align 1
@___asan_gen_.1608 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1631, i32 2907, i32 19 }
@___asan_gen_.1611 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1631, i32 3090, i32 2 }
@___asan_gen_.1614 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1631, i32 3101, i32 2 }
@___asan_gen_.1615 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.1623 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1631, i32 3113, i32 2 }
@___asan_gen_.1626 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1631, i32 3471, i32 2 }
@___asan_gen_.1630 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.1631 = private constant [44 x i8] c"../drivers/net/wireless/realtek/rtw89/mac.c\00", align 1
@___asan_gen_.1632 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1631, i32 3735, i32 4 }
@llvm.compiler.used = appending global [543 x ptr] [ptr @__ksymtab_rtw89_mac_get_err_status, ptr @__ksymtab_rtw89_mac_set_err_status, ptr @__rtw89_mac_set_tx_time._entry, ptr @__rtw89_mac_set_tx_time._entry_ptr, ptr @addr_cam_init._entry, ptr @addr_cam_init._entry_ptr, ptr @band1_enable._entry, ptr @band1_enable._entry.413, ptr @band1_enable._entry.416, ptr @band1_enable._entry.419, ptr @band1_enable._entry.422, ptr @band1_enable._entry.425, ptr @band1_enable._entry_ptr, ptr @band1_enable._entry_ptr.415, ptr @band1_enable._entry_ptr.418, ptr @band1_enable._entry_ptr.421, ptr @band1_enable._entry_ptr.424, ptr @band1_enable._entry_ptr.427, ptr @cmac_init._entry, ptr @cmac_init._entry.368, ptr @cmac_init._entry.371, ptr @cmac_init._entry.374, ptr @cmac_init._entry.377, ptr @cmac_init._entry.380, ptr @cmac_init._entry.383, ptr @cmac_init._entry.386, ptr @cmac_init._entry.389, ptr @cmac_init._entry.392, ptr @cmac_init._entry_ptr, ptr @cmac_init._entry_ptr.370, ptr @cmac_init._entry_ptr.373, ptr @cmac_init._entry_ptr.376, ptr @cmac_init._entry_ptr.379, ptr @cmac_init._entry_ptr.382, ptr @cmac_init._entry_ptr.385, ptr @cmac_init._entry_ptr.388, ptr @cmac_init._entry_ptr.391, ptr @cmac_init._entry_ptr.394, ptr @dle_dfi_ctrl._entry, ptr @dle_dfi_ctrl._entry.284, ptr @dle_dfi_ctrl._entry_ptr, ptr @dle_dfi_ctrl._entry_ptr.286, ptr @dle_dfi_qempty._entry, ptr @dle_dfi_qempty._entry_ptr, ptr @dle_dfi_quota._entry, ptr @dle_dfi_quota._entry_ptr, ptr @dle_init._entry, ptr @dle_init._entry.305, ptr @dle_init._entry.308, ptr @dle_init._entry.311, ptr @dle_init._entry.314, ptr @dle_init._entry.317, ptr @dle_init._entry.320, ptr @dle_init._entry.323, ptr @dle_init._entry_ptr, ptr @dle_init._entry_ptr.307, ptr @dle_init._entry_ptr.310, ptr @dle_init._entry_ptr.313, ptr @dle_init._entry_ptr.316, ptr @dle_init._entry_ptr.319, ptr @dle_init._entry_ptr.322, ptr @dle_init._entry_ptr.325, ptr @dle_mix_cfg._entry, ptr @dle_mix_cfg._entry.330, ptr @dle_mix_cfg._entry_ptr, ptr @dle_mix_cfg._entry_ptr.332, ptr @dle_quota_change._entry, ptr @dle_quota_change._entry.429, ptr @dle_quota_change._entry.431, ptr @dle_quota_change._entry.434, ptr @dle_quota_change._entry.437, ptr @dle_quota_change._entry.440, ptr @dle_quota_change._entry_ptr, ptr @dle_quota_change._entry_ptr.430, ptr @dle_quota_change._entry_ptr.433, ptr @dle_quota_change._entry_ptr.436, ptr @dle_quota_change._entry_ptr.439, ptr @dle_quota_change._entry_ptr.442, ptr @dmac_init._entry, ptr @dmac_init._entry.352, ptr @dmac_init._entry.355, ptr @dmac_init._entry.358, ptr @dmac_init._entry.361, ptr @dmac_init._entry_ptr, ptr @dmac_init._entry_ptr.354, ptr @dmac_init._entry_ptr.357, ptr @dmac_init._entry_ptr.360, ptr @dmac_init._entry_ptr.363, ptr @dump_err_status_dispatcher._entry, ptr @dump_err_status_dispatcher._entry.242, ptr @dump_err_status_dispatcher._entry.245, ptr @dump_err_status_dispatcher._entry.248, ptr @dump_err_status_dispatcher._entry.251, ptr @dump_err_status_dispatcher._entry.254, ptr @dump_err_status_dispatcher._entry_ptr, ptr @dump_err_status_dispatcher._entry_ptr.244, ptr @dump_err_status_dispatcher._entry_ptr.247, ptr @dump_err_status_dispatcher._entry_ptr.250, ptr @dump_err_status_dispatcher._entry_ptr.253, ptr @dump_err_status_dispatcher._entry_ptr.256, ptr @get_dle_mem_cfg._entry, ptr @get_dle_mem_cfg._entry_ptr, ptr @is_qta_dbcc._entry, ptr @is_qta_dbcc._entry_ptr, ptr @pwr_cmd_poll._entry, ptr @pwr_cmd_poll._entry.292, ptr @pwr_cmd_poll._entry.295, ptr @pwr_cmd_poll._entry_ptr, ptr @pwr_cmd_poll._entry_ptr.294, ptr @pwr_cmd_poll._entry_ptr.297, ptr @rtw89_mac_c2h_handle._entry, ptr @rtw89_mac_c2h_handle._entry.22, ptr @rtw89_mac_c2h_handle._entry_ptr, ptr @rtw89_mac_c2h_handle._entry_ptr.24, ptr @rtw89_mac_c2h_log._entry, ptr @rtw89_mac_c2h_log._entry_ptr, ptr @rtw89_mac_cfg_gnt._entry, ptr @rtw89_mac_cfg_gnt._entry.42, ptr @rtw89_mac_cfg_gnt._entry_ptr, ptr @rtw89_mac_cfg_gnt._entry_ptr.44, ptr @rtw89_mac_coex_init._entry, ptr @rtw89_mac_coex_init._entry.37, ptr @rtw89_mac_coex_init._entry_ptr, ptr @rtw89_mac_coex_init._entry_ptr.39, ptr @rtw89_mac_dbcc_enable._entry, ptr @rtw89_mac_dbcc_enable._entry.405, ptr @rtw89_mac_dbcc_enable._entry.408, ptr @rtw89_mac_dbcc_enable._entry_ptr, ptr @rtw89_mac_dbcc_enable._entry_ptr.407, ptr @rtw89_mac_dbcc_enable._entry_ptr.410, ptr @rtw89_mac_dump_err_status._entry, ptr @rtw89_mac_dump_err_status._entry.102, ptr @rtw89_mac_dump_err_status._entry.105, ptr @rtw89_mac_dump_err_status._entry.108, ptr @rtw89_mac_dump_err_status._entry.111, ptr @rtw89_mac_dump_err_status._entry.114, ptr @rtw89_mac_dump_err_status._entry.117, ptr @rtw89_mac_dump_err_status._entry.120, ptr @rtw89_mac_dump_err_status._entry.123, ptr @rtw89_mac_dump_err_status._entry.126, ptr @rtw89_mac_dump_err_status._entry.129, ptr @rtw89_mac_dump_err_status._entry.132, ptr @rtw89_mac_dump_err_status._entry.135, ptr @rtw89_mac_dump_err_status._entry.138, ptr @rtw89_mac_dump_err_status._entry.141, ptr @rtw89_mac_dump_err_status._entry.143, ptr @rtw89_mac_dump_err_status._entry.145, ptr @rtw89_mac_dump_err_status._entry.147, ptr @rtw89_mac_dump_err_status._entry.149, ptr @rtw89_mac_dump_err_status._entry.152, ptr @rtw89_mac_dump_err_status._entry.155, ptr @rtw89_mac_dump_err_status._entry.158, ptr @rtw89_mac_dump_err_status._entry.161, ptr @rtw89_mac_dump_err_status._entry.164, ptr @rtw89_mac_dump_err_status._entry.167, ptr @rtw89_mac_dump_err_status._entry.170, ptr @rtw89_mac_dump_err_status._entry.173, ptr @rtw89_mac_dump_err_status._entry.176, ptr @rtw89_mac_dump_err_status._entry.179, ptr @rtw89_mac_dump_err_status._entry.182, ptr @rtw89_mac_dump_err_status._entry.185, ptr @rtw89_mac_dump_err_status._entry.188, ptr @rtw89_mac_dump_err_status._entry.190, ptr @rtw89_mac_dump_err_status._entry.192, ptr @rtw89_mac_dump_err_status._entry.195, ptr @rtw89_mac_dump_err_status._entry.198, ptr @rtw89_mac_dump_err_status._entry.201, ptr @rtw89_mac_dump_err_status._entry.204, ptr @rtw89_mac_dump_err_status._entry.207, ptr @rtw89_mac_dump_err_status._entry.210, ptr @rtw89_mac_dump_err_status._entry.213, ptr @rtw89_mac_dump_err_status._entry.216, ptr @rtw89_mac_dump_err_status._entry.219, ptr @rtw89_mac_dump_err_status._entry.222, ptr @rtw89_mac_dump_err_status._entry.225, ptr @rtw89_mac_dump_err_status._entry.228, ptr @rtw89_mac_dump_err_status._entry.231, ptr @rtw89_mac_dump_err_status._entry.234, ptr @rtw89_mac_dump_err_status._entry.237, ptr @rtw89_mac_dump_err_status._entry.54, ptr @rtw89_mac_dump_err_status._entry.57, ptr @rtw89_mac_dump_err_status._entry.60, ptr @rtw89_mac_dump_err_status._entry.63, ptr @rtw89_mac_dump_err_status._entry.66, ptr @rtw89_mac_dump_err_status._entry.69, ptr @rtw89_mac_dump_err_status._entry.72, ptr @rtw89_mac_dump_err_status._entry.75, ptr @rtw89_mac_dump_err_status._entry.78, ptr @rtw89_mac_dump_err_status._entry.81, ptr @rtw89_mac_dump_err_status._entry.84, ptr @rtw89_mac_dump_err_status._entry.87, ptr @rtw89_mac_dump_err_status._entry.90, ptr @rtw89_mac_dump_err_status._entry.93, ptr @rtw89_mac_dump_err_status._entry.96, ptr @rtw89_mac_dump_err_status._entry.99, ptr @rtw89_mac_dump_err_status._entry_ptr, ptr @rtw89_mac_dump_err_status._entry_ptr.101, ptr @rtw89_mac_dump_err_status._entry_ptr.104, ptr @rtw89_mac_dump_err_status._entry_ptr.107, ptr @rtw89_mac_dump_err_status._entry_ptr.110, ptr @rtw89_mac_dump_err_status._entry_ptr.113, ptr @rtw89_mac_dump_err_status._entry_ptr.116, ptr @rtw89_mac_dump_err_status._entry_ptr.119, ptr @rtw89_mac_dump_err_status._entry_ptr.122, ptr @rtw89_mac_dump_err_status._entry_ptr.125, ptr @rtw89_mac_dump_err_status._entry_ptr.128, ptr @rtw89_mac_dump_err_status._entry_ptr.131, ptr @rtw89_mac_dump_err_status._entry_ptr.134, ptr @rtw89_mac_dump_err_status._entry_ptr.137, ptr @rtw89_mac_dump_err_status._entry_ptr.140, ptr @rtw89_mac_dump_err_status._entry_ptr.142, ptr @rtw89_mac_dump_err_status._entry_ptr.144, ptr @rtw89_mac_dump_err_status._entry_ptr.146, ptr @rtw89_mac_dump_err_status._entry_ptr.148, ptr @rtw89_mac_dump_err_status._entry_ptr.151, ptr @rtw89_mac_dump_err_status._entry_ptr.154, ptr @rtw89_mac_dump_err_status._entry_ptr.157, ptr @rtw89_mac_dump_err_status._entry_ptr.160, ptr @rtw89_mac_dump_err_status._entry_ptr.163, ptr @rtw89_mac_dump_err_status._entry_ptr.166, ptr @rtw89_mac_dump_err_status._entry_ptr.169, ptr @rtw89_mac_dump_err_status._entry_ptr.172, ptr @rtw89_mac_dump_err_status._entry_ptr.175, ptr @rtw89_mac_dump_err_status._entry_ptr.178, ptr @rtw89_mac_dump_err_status._entry_ptr.181, ptr @rtw89_mac_dump_err_status._entry_ptr.184, ptr @rtw89_mac_dump_err_status._entry_ptr.187, ptr @rtw89_mac_dump_err_status._entry_ptr.189, ptr @rtw89_mac_dump_err_status._entry_ptr.191, ptr @rtw89_mac_dump_err_status._entry_ptr.194, ptr @rtw89_mac_dump_err_status._entry_ptr.197, ptr @rtw89_mac_dump_err_status._entry_ptr.200, ptr @rtw89_mac_dump_err_status._entry_ptr.203, ptr @rtw89_mac_dump_err_status._entry_ptr.206, ptr @rtw89_mac_dump_err_status._entry_ptr.209, ptr @rtw89_mac_dump_err_status._entry_ptr.212, ptr @rtw89_mac_dump_err_status._entry_ptr.215, ptr @rtw89_mac_dump_err_status._entry_ptr.218, ptr @rtw89_mac_dump_err_status._entry_ptr.221, ptr @rtw89_mac_dump_err_status._entry_ptr.224, ptr @rtw89_mac_dump_err_status._entry_ptr.227, ptr @rtw89_mac_dump_err_status._entry_ptr.230, ptr @rtw89_mac_dump_err_status._entry_ptr.233, ptr @rtw89_mac_dump_err_status._entry_ptr.236, ptr @rtw89_mac_dump_err_status._entry_ptr.239, ptr @rtw89_mac_dump_err_status._entry_ptr.56, ptr @rtw89_mac_dump_err_status._entry_ptr.59, ptr @rtw89_mac_dump_err_status._entry_ptr.62, ptr @rtw89_mac_dump_err_status._entry_ptr.65, ptr @rtw89_mac_dump_err_status._entry_ptr.68, ptr @rtw89_mac_dump_err_status._entry_ptr.71, ptr @rtw89_mac_dump_err_status._entry_ptr.74, ptr @rtw89_mac_dump_err_status._entry_ptr.77, ptr @rtw89_mac_dump_err_status._entry_ptr.80, ptr @rtw89_mac_dump_err_status._entry_ptr.83, ptr @rtw89_mac_dump_err_status._entry_ptr.86, ptr @rtw89_mac_dump_err_status._entry_ptr.89, ptr @rtw89_mac_dump_err_status._entry_ptr.92, ptr @rtw89_mac_dump_err_status._entry_ptr.95, ptr @rtw89_mac_dump_err_status._entry_ptr.98, ptr @rtw89_mac_dump_l0_to_l1._entry, ptr @rtw89_mac_dump_l0_to_l1._entry_ptr, ptr @rtw89_mac_dump_qta_lost._entry, ptr @rtw89_mac_dump_qta_lost._entry.261, ptr @rtw89_mac_dump_qta_lost._entry.264, ptr @rtw89_mac_dump_qta_lost._entry.266, ptr @rtw89_mac_dump_qta_lost._entry.269, ptr @rtw89_mac_dump_qta_lost._entry.271, ptr @rtw89_mac_dump_qta_lost._entry.274, ptr @rtw89_mac_dump_qta_lost._entry.277, ptr @rtw89_mac_dump_qta_lost._entry_ptr, ptr @rtw89_mac_dump_qta_lost._entry_ptr.263, ptr @rtw89_mac_dump_qta_lost._entry_ptr.265, ptr @rtw89_mac_dump_qta_lost._entry_ptr.268, ptr @rtw89_mac_dump_qta_lost._entry_ptr.270, ptr @rtw89_mac_dump_qta_lost._entry_ptr.273, ptr @rtw89_mac_dump_qta_lost._entry_ptr.276, ptr @rtw89_mac_dump_qta_lost._entry_ptr.279, ptr @rtw89_mac_enable_imr._entry, ptr @rtw89_mac_enable_imr._entry_ptr, ptr @rtw89_mac_flush_txq._entry, ptr @rtw89_mac_flush_txq._entry_ptr, ptr @rtw89_mac_fw_dl_pre_init._entry, ptr @rtw89_mac_fw_dl_pre_init._entry.300, ptr @rtw89_mac_fw_dl_pre_init._entry_ptr, ptr @rtw89_mac_fw_dl_pre_init._entry_ptr.302, ptr @rtw89_mac_get_err_status._entry, ptr @rtw89_mac_get_err_status._entry_ptr, ptr @rtw89_mac_get_tx_retry_limit._entry, ptr @rtw89_mac_get_tx_retry_limit._entry_ptr, ptr @rtw89_mac_get_tx_time._entry, ptr @rtw89_mac_get_tx_time._entry_ptr, ptr @rtw89_mac_get_txpwr_cr._entry, ptr @rtw89_mac_get_txpwr_cr._entry.27, ptr @rtw89_mac_get_txpwr_cr._entry.30, ptr @rtw89_mac_get_txpwr_cr._entry_ptr, ptr @rtw89_mac_get_txpwr_cr._entry_ptr.29, ptr @rtw89_mac_get_txpwr_cr._entry_ptr.32, ptr @rtw89_mac_power_mode_change._entry, ptr @rtw89_mac_power_mode_change._entry_ptr, ptr @rtw89_mac_power_switch._entry, ptr @rtw89_mac_power_switch._entry_ptr, ptr @rtw89_mac_read_lte._entry, ptr @rtw89_mac_read_lte._entry_ptr, ptr @rtw89_mac_set_err_status._entry, ptr @rtw89_mac_set_err_status._entry.11, ptr @rtw89_mac_set_err_status._entry_ptr, ptr @rtw89_mac_set_err_status._entry_ptr.13, ptr @rtw89_mac_trx_init._entry, ptr @rtw89_mac_trx_init._entry.335, ptr @rtw89_mac_trx_init._entry.338, ptr @rtw89_mac_trx_init._entry.341, ptr @rtw89_mac_trx_init._entry.344, ptr @rtw89_mac_trx_init._entry.347, ptr @rtw89_mac_trx_init._entry_ptr, ptr @rtw89_mac_trx_init._entry_ptr.337, ptr @rtw89_mac_trx_init._entry_ptr.340, ptr @rtw89_mac_trx_init._entry_ptr.343, ptr @rtw89_mac_trx_init._entry_ptr.346, ptr @rtw89_mac_trx_init._entry_ptr.349, ptr @rtw89_mac_typ_fltr_opt._entry, ptr @rtw89_mac_typ_fltr_opt._entry.399, ptr @rtw89_mac_typ_fltr_opt._entry_ptr, ptr @rtw89_mac_typ_fltr_opt._entry_ptr.401, ptr @rtw89_mac_write_lte._entry, ptr @rtw89_mac_write_lte._entry_ptr, ptr @sta_sch_init._entry, ptr @sta_sch_init._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @rtw_hfc_preccfg_pcie, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @wde_size0, ptr @wde_size4, ptr @ple_size0, ptr @ple_size4, ptr @wde_qt0, ptr @wde_qt4, ptr @ple_qt4, ptr @ple_qt5, ptr @ple_qt13, ptr @.str.18, ptr @rtw89_mac_c2h_info_handler, ptr @rtw89_mac_c2h_ofld_handler, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @.str.25, ptr @.str.26, ptr @.str.28, ptr @.str.31, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.38, ptr @.str.40, ptr @.str.41, ptr @.str.43, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.55, ptr @.str.58, ptr @.str.61, ptr @.str.64, ptr @.str.67, ptr @.str.70, ptr @.str.73, ptr @.str.76, ptr @.str.79, ptr @.str.82, ptr @.str.85, ptr @.str.88, ptr @.str.91, ptr @.str.94, ptr @.str.97, ptr @.str.100, ptr @.str.103, ptr @.str.106, ptr @.str.109, ptr @.str.112, ptr @.str.115, ptr @.str.118, ptr @.str.121, ptr @.str.124, ptr @.str.127, ptr @.str.130, ptr @.str.133, ptr @.str.136, ptr @.str.139, ptr @.str.150, ptr @.str.153, ptr @.str.156, ptr @.str.159, ptr @.str.162, ptr @.str.165, ptr @.str.168, ptr @.str.171, ptr @.str.174, ptr @.str.177, ptr @.str.180, ptr @.str.183, ptr @.str.186, ptr @.str.193, ptr @.str.196, ptr @.str.199, ptr @.str.202, ptr @.str.205, ptr @.str.208, ptr @.str.211, ptr @.str.214, ptr @.str.217, ptr @.str.220, ptr @.str.223, ptr @.str.226, ptr @.str.229, ptr @.str.232, ptr @.str.235, ptr @.str.238, ptr @.str.240, ptr @.str.241, ptr @.str.243, ptr @.str.246, ptr @.str.249, ptr @.str.252, ptr @.str.255, ptr @.str.257, ptr @.str.258, ptr @.str.259, ptr @.str.260, ptr @.str.262, ptr @.str.267, ptr @.str.272, ptr @.str.275, ptr @.str.278, ptr @.str.280, ptr @.str.281, ptr @.str.282, ptr @.str.283, ptr @.str.285, ptr @.str.287, ptr @.str.288, ptr @.str.289, ptr @.str.290, ptr @.str.291, ptr @.str.293, ptr @.str.296, ptr @.str.298, ptr @.str.299, ptr @.str.301, ptr @.str.303, ptr @.str.304, ptr @.str.306, ptr @.str.309, ptr @.str.312, ptr @.str.315, ptr @.str.318, ptr @.str.321, ptr @.str.324, ptr @.str.326, ptr @.str.327, ptr @.str.328, ptr @.str.329, ptr @.str.331, ptr @.str.333, ptr @.str.334, ptr @.str.336, ptr @.str.339, ptr @.str.342, ptr @.str.345, ptr @.str.348, ptr @.str.350, ptr @.str.351, ptr @.str.353, ptr @.str.356, ptr @.str.359, ptr @.str.362, ptr @.str.364, ptr @.str.365, ptr @.str.366, ptr @.str.367, ptr @.str.369, ptr @.str.372, ptr @.str.375, ptr @.str.378, ptr @.str.381, ptr @.str.384, ptr @.str.387, ptr @.str.390, ptr @.str.393, ptr @.str.395, ptr @.str.396, ptr @.str.397, ptr @.str.398, ptr @.str.400, ptr @.str.402, ptr @.str.403, ptr @.str.404, ptr @.str.406, ptr @.str.409, ptr @.str.411, ptr @.str.412, ptr @.str.414, ptr @.str.417, ptr @.str.420, ptr @.str.423, ptr @.str.426, ptr @.str.428, ptr @.str.432, ptr @.str.435, ptr @.str.438, ptr @.str.441, ptr @.str.443, ptr @.str.444, ptr @rtw89_mac_port_cfg_bss_color.masks, ptr @.str.445, ptr @.str.446, ptr @.str.447, ptr @.str.448, ptr @.str.451, ptr @.str.452, ptr @.str.453], section "llvm.metadata"
@0 = internal global [377 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1630 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_mac_write_lte._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1615 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1630 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1630 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1630 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1630 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_mac_read_lte._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1615 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1630 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_mac_get_err_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1615 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1630 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1630 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1630 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_mac_set_err_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1615 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1630 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1630 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_mac_set_err_status._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1615 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1630 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_hfc_preccfg_pcie to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_mac_power_mode_change._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1615 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1630 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1630 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1630 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1630 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wde_size0 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wde_size4 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ple_size0 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ple_size4 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wde_qt0 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wde_qt4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ple_qt4 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ple_qt5 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ple_qt13 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.1630 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_mac_c2h_info_handler to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_mac_c2h_ofld_handler to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_mac_c2h_handle._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1615 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1630 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1630 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1630 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_mac_c2h_handle._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1615 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1630 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_mac_get_txpwr_cr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1615 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1630 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1630 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_mac_get_txpwr_cr._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1615 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1630 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_mac_get_txpwr_cr._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1615 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1630 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_mac_flush_txq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1615 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1630 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1630 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_mac_coex_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1615 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1630 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1630 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_mac_coex_init._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1615 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1630 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_mac_cfg_gnt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1615 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1630 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1630 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_mac_cfg_gnt._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1615 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1630 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1630 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1630 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1630 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_mac_get_tx_time._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1615 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1630 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1630 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_mac_get_tx_retry_limit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1615 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1630 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1630 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_mac_dump_err_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1615 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1630 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1630 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_mac_dump_err_status._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1615 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1630 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_mac_dump_err_status._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1615 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1630 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_mac_dump_err_status._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1615 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1630 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_mac_dump_err_status._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1615 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1630 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_mac_dump_err_status._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1615 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1630 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_mac_dump_err_status._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1615 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1630 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_mac_dump_err_status._entry.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1615 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1630 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_mac_dump_err_status._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1615 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1630 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_mac_dump_err_status._entry.78 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1615 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1630 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_mac_dump_err_status._entry.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1615 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1630 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_mac_dump_err_status._entry.84 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1615 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1630 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_mac_dump_err_status._entry.87 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1615 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1630 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_mac_dump_err_status._entry.90 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1615 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1630 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_mac_dump_err_status._entry.93 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1615 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1630 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_mac_dump_err_status._entry.96 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1615 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1630 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_mac_dump_err_status._entry.99 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1615 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1630 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_mac_dump_err_status._entry.102 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1615 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1630 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_mac_dump_err_status._entry.105 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1615 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1630 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_mac_dump_err_status._entry.108 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1615 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1630 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_mac_dump_err_status._entry.111 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1615 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1630 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_mac_dump_err_status._entry.114 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1615 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.846 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1630 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.846 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_mac_dump_err_status._entry.117 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1615 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.852 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1630 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.852 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_mac_dump_err_status._entry.120 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1615 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1630 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_mac_dump_err_status._entry.123 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1615 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.864 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1630 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.864 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_mac_dump_err_status._entry.126 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1615 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1630 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_mac_dump_err_status._entry.129 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1615 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1630 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_mac_dump_err_status._entry.132 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1615 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1630 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_mac_dump_err_status._entry.135 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1615 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1630 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_mac_dump_err_status._entry.138 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1615 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.894 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1630 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.894 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_mac_dump_err_status._entry.141 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1615 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_mac_dump_err_status._entry.143 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1615 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_mac_dump_err_status._entry.145 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1615 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_mac_dump_err_status._entry.147 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1615 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_mac_dump_err_status._entry.149 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1615 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.912 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1630 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.912 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_mac_dump_err_status._entry.152 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1615 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1630 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_mac_dump_err_status._entry.155 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1615 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1630 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_mac_dump_err_status._entry.158 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1615 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1630 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_mac_dump_err_status._entry.161 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1615 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1630 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_mac_dump_err_status._entry.164 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1615 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1630 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_mac_dump_err_status._entry.167 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1615 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1630 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_mac_dump_err_status._entry.170 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1615 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1630 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_mac_dump_err_status._entry.173 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1615 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1630 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_mac_dump_err_status._entry.176 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1615 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1630 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_mac_dump_err_status._entry.179 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1615 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1630 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_mac_dump_err_status._entry.182 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1615 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1630 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_mac_dump_err_status._entry.185 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1615 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1630 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_mac_dump_err_status._entry.188 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1615 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_mac_dump_err_status._entry.190 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1615 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_mac_dump_err_status._entry.192 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1615 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1630 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_mac_dump_err_status._entry.195 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1615 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.196 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1630 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_mac_dump_err_status._entry.198 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1615 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.199 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1630 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_mac_dump_err_status._entry.201 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1615 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1014 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.202 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1630 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1014 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_mac_dump_err_status._entry.204 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1615 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.205 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1630 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_mac_dump_err_status._entry.207 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1615 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.208 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1630 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_mac_dump_err_status._entry.210 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1615 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.211 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1630 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_mac_dump_err_status._entry.213 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1615 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.214 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1630 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_mac_dump_err_status._entry.216 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1615 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.217 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1630 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_mac_dump_err_status._entry.219 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1615 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1050 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.220 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1630 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1050 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_mac_dump_err_status._entry.222 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1615 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.223 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1630 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_mac_dump_err_status._entry.225 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1615 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1062 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.226 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1630 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1062 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_mac_dump_err_status._entry.228 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1615 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.229 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1630 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_mac_dump_err_status._entry.231 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1615 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1074 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.232 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1630 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1074 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_mac_dump_err_status._entry.234 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1615 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.235 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1630 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_mac_dump_err_status._entry.237 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1615 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.238 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1630 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump_err_status_dispatcher._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1615 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1095 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.240 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1630 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1095 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.241 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1630 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1095 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump_err_status_dispatcher._entry.242 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1615 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.243 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1630 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump_err_status_dispatcher._entry.245 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1615 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.246 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1630 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump_err_status_dispatcher._entry.248 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1615 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.249 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1630 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump_err_status_dispatcher._entry.251 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1615 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.252 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1630 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump_err_status_dispatcher._entry.254 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1615 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.255 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1630 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_mac_dump_l0_to_l1._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1615 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.257 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1630 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.258 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1630 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_mac_dump_qta_lost._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1615 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.259 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1630 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.260 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1630 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_mac_dump_qta_lost._entry.261 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1615 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.262 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1630 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_mac_dump_qta_lost._entry.264 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1615 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_mac_dump_qta_lost._entry.266 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1615 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.267 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1630 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_mac_dump_qta_lost._entry.269 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1615 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_mac_dump_qta_lost._entry.271 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1615 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.272 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1630 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_mac_dump_qta_lost._entry.274 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1615 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.275 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1630 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_mac_dump_qta_lost._entry.277 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1615 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.278 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1630 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dle_dfi_qempty._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1615 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.280 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1630 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.281 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1630 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dle_dfi_ctrl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1615 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.282 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1630 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.283 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1630 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dle_dfi_ctrl._entry.284 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1615 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.285 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1630 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dle_dfi_quota._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1615 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.287 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1630 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_mac_power_switch._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1615 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.288 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1630 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.289 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1630 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwr_cmd_poll._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1615 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.290 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1630 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.291 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1630 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwr_cmd_poll._entry.292 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1615 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.293 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1630 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwr_cmd_poll._entry.295 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1615 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.296 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1630 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_mac_fw_dl_pre_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1615 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.298 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1630 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.299 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1630 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_mac_fw_dl_pre_init._entry.300 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1615 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.301 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1630 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dle_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1615 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.303 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1630 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.304 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1630 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dle_init._entry.305 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1615 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.306 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1630 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dle_init._entry.308 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1615 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.309 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1630 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dle_init._entry.311 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1615 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.312 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1630 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dle_init._entry.314 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1615 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.315 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1630 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dle_init._entry.317 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1615 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.318 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1630 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dle_init._entry.320 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1615 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.321 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1630 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dle_init._entry.323 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1615 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.324 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1630 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_dle_mem_cfg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1615 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.326 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1630 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.327 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1630 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dle_mix_cfg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1615 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.328 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1630 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.329 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1630 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dle_mix_cfg._entry.330 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1615 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.331 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1630 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_mac_trx_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1615 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.333 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1630 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.334 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1630 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_mac_trx_init._entry.335 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1615 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.336 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1630 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_mac_trx_init._entry.338 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1615 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.339 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1630 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_mac_trx_init._entry.341 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1615 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.342 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1630 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_mac_trx_init._entry.344 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1615 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.345 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1630 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_mac_trx_init._entry.347 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1615 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.348 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1630 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmac_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1615 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.350 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1630 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.351 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1630 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmac_init._entry.352 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1615 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.353 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1630 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmac_init._entry.355 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1615 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.356 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1630 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmac_init._entry.358 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1615 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.359 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1630 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmac_init._entry.361 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1615 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.362 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1630 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sta_sch_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1615 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.364 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1630 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.365 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1630 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cmac_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1615 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.366 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1630 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.367 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1630 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cmac_init._entry.368 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1615 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.369 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1630 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cmac_init._entry.371 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1615 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.372 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1630 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cmac_init._entry.374 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1615 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.375 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1630 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cmac_init._entry.377 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1615 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.378 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1630 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cmac_init._entry.380 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1615 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.381 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1630 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cmac_init._entry.383 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1615 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.384 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1630 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cmac_init._entry.386 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1615 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.387 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1630 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cmac_init._entry.389 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1615 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.390 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1630 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cmac_init._entry.392 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1615 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.393 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1630 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @addr_cam_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1615 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.395 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1630 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.396 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1630 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_mac_typ_fltr_opt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1615 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.397 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1630 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.398 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1630 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_mac_typ_fltr_opt._entry.399 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1615 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.400 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1630 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @is_qta_dbcc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1615 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.402 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1630 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_mac_dbcc_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1615 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.403 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1630 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.404 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1630 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_mac_dbcc_enable._entry.405 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1615 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.406 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1630 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_mac_dbcc_enable._entry.408 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1615 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.409 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1630 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @band1_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1615 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.411 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1630 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.412 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1630 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @band1_enable._entry.413 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1615 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.414 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1630 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @band1_enable._entry.416 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1615 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.417 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1630 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @band1_enable._entry.419 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1615 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.420 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1630 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @band1_enable._entry.422 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1615 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.423 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1630 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @band1_enable._entry.425 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1615 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.426 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1630 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dle_quota_change._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1615 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.428 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1630 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dle_quota_change._entry.429 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1615 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1572 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dle_quota_change._entry.431 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1615 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.432 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1630 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dle_quota_change._entry.434 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1615 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.435 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1630 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dle_quota_change._entry.437 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1615 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.438 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1630 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dle_quota_change._entry.440 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1615 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1596 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.441 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1630 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1596 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_mac_enable_imr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1615 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1605 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.443 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1630 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1605 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.444 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1630 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1605 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_mac_port_cfg_bss_color.masks to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1606 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1608 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.445 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.1630 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1611 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.446 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1630 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1614 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_mac_c2h_log._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1615 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1623 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.447 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1630 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1623 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.448 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1630 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1623 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.451 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1630 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.452 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1630 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1632 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.453 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1630 to i32), i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1632 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtw89_mac_check_mac_en(ptr noundef %rtwdev, i8 noundef zeroext %mac_idx, i32 noundef %sel) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sel)
  %cmp = icmp eq i32 %sel, 0
  br i1 %cmp, label %entry.if.end17_crit_edge, label %if.else

entry.if.end17_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sel)
  %cmp1 = icmp eq i32 %sel, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %mac_idx)
  %cmp2 = icmp eq i8 %mac_idx, 0
  %or.cond = and i1 %cmp2, %cmp1
  br i1 %or.cond, label %if.else.if.end17_crit_edge, label %if.else6

if.else.if.end17_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17

if.else6:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %mac_idx)
  %cmp11 = icmp eq i8 %mac_idx, 1
  %or.cond36 = and i1 %cmp11, %cmp1
  br i1 %or.cond36, label %if.else6.if.end17_crit_edge, label %if.else6.cleanup_crit_edge

if.else6.cleanup_crit_edge:                       ; preds = %if.else6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.else6.if.end17_crit_edge:                      ; preds = %if.else6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17

if.end17:                                         ; preds = %if.else6.if.end17_crit_edge, %if.else.if.end17_crit_edge, %entry.if.end17_crit_edge
  %.sink = phi i32 [ 33792, %entry.if.end17_crit_edge ], [ 49152, %if.else.if.end17_crit_edge ], [ 128, %if.else6.if.end17_crit_edge ]
  %val.0 = phi i32 [ 1610612736, %entry.if.end17_crit_edge ], [ 1073741824, %if.else.if.end17_crit_edge ], [ 1073741824, %if.else6.if.end17_crit_edge ]
  %hci.i37 = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 7
  %0 = ptrtoint ptr %hci.i37 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hci.i37, align 8
  %read32.i38 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %read32.i38 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %read32.i38, align 4
  %call.i39 = tail call i32 %3(ptr noundef %rtwdev, i32 noundef %.sink) #7
  %4 = zext i32 %call.i39 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call.i39, label %lor.lhs.false22 [
    i32 -353703190, label %if.end17.cleanup_crit_edge
    i32 -559038737, label %if.end17.cleanup_crit_edge45
  ]

if.end17.cleanup_crit_edge45:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false22:                                  ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  %and = and i32 %call.i39, %val.0
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %val.0)
  %cmp23.not = icmp eq i32 %and, %val.0
  %spec.select = select i1 %cmp23.not, i32 0, i32 -14
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false22, %if.end17.cleanup_crit_edge, %if.end17.cleanup_crit_edge45, %if.else6.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.else6.cleanup_crit_edge ], [ -14, %if.end17.cleanup_crit_edge ], [ -14, %if.end17.cleanup_crit_edge45 ], [ %spec.select, %lor.lhs.false22 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtw89_mac_write_lte(ptr noundef %rtwdev, i32 noundef %offset, i32 noundef %val) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i64 @ktime_get() #7
  %add.i = add i64 %call, 50000000
  tail call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 43) #7
  %hci.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 7
  %0 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hci.i, align 8
  %read8.i52 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %read8.i52 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %read8.i52, align 4
  %call.i53 = tail call zeroext i8 %3(ptr noundef %rtwdev, i32 noundef 56051) #7
  %4 = and i8 %call.i53, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %cmp9.not54 = icmp eq i8 %4, 0
  br i1 %cmp9.not54, label %entry.land.lhs.true_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then21.land.lhs.true_crit_edge, %entry.land.lhs.true_crit_edge
  %call13 = tail call i64 @ktime_get() #7
  call void @__sanitizer_cov_trace_cmp8(i64 %call13, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call13, %add.i
  br i1 %cmp3.i, label %if.then17, label %if.then21

if.then17:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hci.i, align 8
  %read8.i44 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %6, i32 0, i32 7
  %7 = ptrtoint ptr %read8.i44 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %read8.i44, align 4
  %call.i45 = tail call zeroext i8 %8(ptr noundef %rtwdev, i32 noundef 56051) #7
  br label %for.end

if.then21:                                        ; preds = %land.lhs.true
  tail call void @usleep_range_state(i32 noundef 13, i32 noundef 50, i32 noundef 2) #7
  %9 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hci.i, align 8
  %read8.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %10, i32 0, i32 7
  %11 = ptrtoint ptr %read8.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %read8.i, align 4
  %call.i = tail call zeroext i8 %12(ptr noundef %rtwdev, i32 noundef 56051) #7
  %13 = and i8 %call.i, 32
  %cmp9.not = icmp eq i8 %13, 0
  br i1 %cmp9.not, label %if.then21.land.lhs.true_crit_edge, label %if.then21.for.end_crit_edge

if.then21.for.end_crit_edge:                      ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.then21.land.lhs.true_crit_edge:                ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true

for.end:                                          ; preds = %if.then21.for.end_crit_edge, %if.then17, %entry.for.end_crit_edge
  %lte_ctrl.0 = phi i8 [ %call.i45, %if.then17 ], [ %call.i53, %entry.for.end_crit_edge ], [ %call.i, %if.then21.for.end_crit_edge ]
  %14 = and i8 %lte_ctrl.0, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %cmp25.not = icmp eq i8 %14, 0
  br i1 %cmp25.not, label %do.end31, label %for.end.if.end32_crit_edge

for.end.if.end32_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32

do.end31:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 1
  %15 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.1) #10
  br label %if.end32

if.end32:                                         ; preds = %do.end31, %for.end.if.end32_crit_edge
  %cond = phi i32 [ -110, %do.end31 ], [ 0, %for.end.if.end32_crit_edge ]
  %17 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %hci.i, align 8
  %write32.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %18, i32 0, i32 12
  %19 = ptrtoint ptr %write32.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %write32.i, align 4
  tail call void %20(ptr noundef %rtwdev, i32 noundef 56052, i32 noundef %val) #7
  %or = or i32 %offset, -1072758784
  %21 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %hci.i, align 8
  %write32.i48 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %22, i32 0, i32 12
  %23 = ptrtoint ptr %write32.i48 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %write32.i48, align 4
  tail call void %24(ptr noundef %rtwdev, i32 noundef 56048, i32 noundef %or) #7
  ret i32 %cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtw89_mac_read_lte(ptr noundef %rtwdev, i32 noundef %offset, ptr nocapture noundef writeonly %val) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i64 @ktime_get() #7
  %add.i = add i64 %call, 50000000
  tail call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 59) #7
  %hci.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 7
  %0 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hci.i, align 8
  %read8.i53 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %read8.i53 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %read8.i53, align 4
  %call.i54 = tail call zeroext i8 %3(ptr noundef %rtwdev, i32 noundef 56051) #7
  %4 = and i8 %call.i54, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %cmp9.not55 = icmp eq i8 %4, 0
  br i1 %cmp9.not55, label %entry.land.lhs.true_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then21.land.lhs.true_crit_edge, %entry.land.lhs.true_crit_edge
  %call13 = tail call i64 @ktime_get() #7
  call void @__sanitizer_cov_trace_cmp8(i64 %call13, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call13, %add.i
  br i1 %cmp3.i, label %if.then17, label %if.then21

if.then17:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hci.i, align 8
  %read8.i45 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %6, i32 0, i32 7
  %7 = ptrtoint ptr %read8.i45 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %read8.i45, align 4
  %call.i46 = tail call zeroext i8 %8(ptr noundef %rtwdev, i32 noundef 56051) #7
  br label %for.end

if.then21:                                        ; preds = %land.lhs.true
  tail call void @usleep_range_state(i32 noundef 13, i32 noundef 50, i32 noundef 2) #7
  %9 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hci.i, align 8
  %read8.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %10, i32 0, i32 7
  %11 = ptrtoint ptr %read8.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %read8.i, align 4
  %call.i = tail call zeroext i8 %12(ptr noundef %rtwdev, i32 noundef 56051) #7
  %13 = and i8 %call.i, 32
  %cmp9.not = icmp eq i8 %13, 0
  br i1 %cmp9.not, label %if.then21.land.lhs.true_crit_edge, label %if.then21.for.end_crit_edge

if.then21.for.end_crit_edge:                      ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.then21.land.lhs.true_crit_edge:                ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true

for.end:                                          ; preds = %if.then21.for.end_crit_edge, %if.then17, %entry.for.end_crit_edge
  %lte_ctrl.0 = phi i8 [ %call.i46, %if.then17 ], [ %call.i54, %entry.for.end_crit_edge ], [ %call.i, %if.then21.for.end_crit_edge ]
  %14 = and i8 %lte_ctrl.0, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %cmp25.not = icmp eq i8 %14, 0
  br i1 %cmp25.not, label %do.end31, label %for.end.if.end32_crit_edge

for.end.if.end32_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32

do.end31:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 1
  %15 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.1) #10
  br label %if.end32

if.end32:                                         ; preds = %do.end31, %for.end.if.end32_crit_edge
  %cond = phi i32 [ -110, %do.end31 ], [ 0, %for.end.if.end32_crit_edge ]
  %or = or i32 %offset, -2146500608
  %17 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %hci.i, align 8
  %write32.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %18, i32 0, i32 12
  %19 = ptrtoint ptr %write32.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %write32.i, align 4
  tail call void %20(ptr noundef %rtwdev, i32 noundef 56048, i32 noundef %or) #7
  %21 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %hci.i, align 8
  %read32.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %22, i32 0, i32 9
  %23 = ptrtoint ptr %read32.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %read32.i, align 4
  %call.i49 = tail call i32 %24(ptr noundef %rtwdev, i32 noundef 56056) #7
  %25 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %call.i49, ptr %val, align 4
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtw89_mac_get_err_status(ptr noundef %rtwdev) #0 align 64 {
entry:
  %ctrl.i142.i.i.i = alloca %struct.rtw89_mac_dle_dfi_ctrl, align 4
  %ctrl.i.i.i.i = alloca %struct.rtw89_mac_dle_dfi_ctrl, align 4
  %ctrl.i.i.i = alloca %struct.rtw89_mac_dle_dfi_ctrl, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i64 @ktime_get() #7
  %add.i = add i64 %call, 100000000
  tail call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 444) #7
  %hci.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 7
  %0 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hci.i, align 8
  %read32.i72 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %read32.i72 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %read32.i72, align 4
  %call.i73 = tail call i32 %3(ptr noundef %rtwdev, i32 noundef 356) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i73)
  %cmp9.not74 = icmp eq i32 %call.i73, 0
  br i1 %cmp9.not74, label %entry.land.lhs.true_crit_edge, label %entry.if.end27_crit_edge

entry.if.end27_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then19.land.lhs.true_crit_edge, %entry.land.lhs.true_crit_edge
  %call12 = tail call i64 @ktime_get() #7
  call void @__sanitizer_cov_trace_cmp8(i64 %call12, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call12, %add.i
  br i1 %cmp3.i, label %for.end, label %if.then19

if.then19:                                        ; preds = %land.lhs.true
  tail call void @usleep_range_state(i32 noundef 251, i32 noundef 1000, i32 noundef 2) #7
  %4 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hci.i, align 8
  %read32.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %5, i32 0, i32 9
  %6 = ptrtoint ptr %read32.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %read32.i, align 4
  %call.i = tail call i32 %7(ptr noundef %rtwdev, i32 noundef 356) #7
  %cmp9.not = icmp eq i32 %call.i, 0
  br i1 %cmp9.not, label %if.then19.land.lhs.true_crit_edge, label %if.then19.if.end27_crit_edge

if.then19.if.end27_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27

if.then19.land.lhs.true_crit_edge:                ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true

for.end:                                          ; preds = %land.lhs.true
  %8 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hci.i, align 8
  %read32.i45 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %9, i32 0, i32 9
  %10 = ptrtoint ptr %read32.i45 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %read32.i45, align 4
  %call.i46 = tail call i32 %11(ptr noundef %rtwdev, i32 noundef 356) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i46)
  %cmp21.not = icmp eq i32 %call.i46, 0
  br i1 %cmp21.not, label %do.end26, label %for.end.if.end27_crit_edge

for.end.if.end27_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27

do.end26:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 1
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %13, ptr noundef nonnull @.str.6) #10
  br label %cleanup

if.end27:                                         ; preds = %for.end.if.end27_crit_edge, %if.then19.if.end27_crit_edge, %entry.if.end27_crit_edge
  %14 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hci.i, align 8
  %read32.i48 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %15, i32 0, i32 9
  %16 = ptrtoint ptr %read32.i48 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %read32.i48, align 4
  %call.i49 = tail call i32 %17(ptr noundef %rtwdev, i32 noundef 364) #7
  %18 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hci.i, align 8
  %write32.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %19, i32 0, i32 12
  %20 = ptrtoint ptr %write32.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %write32.i, align 4
  tail call void %21(ptr noundef %rtwdev, i32 noundef 356, i32 noundef 0) #7
  tail call void @rtw89_fw_st_dbg_dump(ptr noundef %rtwdev) #7
  %22 = zext i32 %call.i49 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.454)
  switch i32 %call.i49, label %if.end27.cleanup_crit_edge [
    i32 4096, label %if.end27.do.end.i_crit_edge
    i32 16, label %if.end27.do.end.i_crit_edge75
  ]

if.end27.do.end.i_crit_edge75:                    ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

if.end27.do.end.i_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end.i:                                         ; preds = %if.end27.do.end.i_crit_edge, %if.end27.do.end.i_crit_edge75
  %dev.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 1
  %23 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %24, ptr noundef nonnull @.str.52, i32 noundef %call.i49) #10
  %25 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev.i, align 4
  %27 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %hci.i, align 8
  %read32.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %28, i32 0, i32 9
  %29 = ptrtoint ptr %read32.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %read32.i.i, align 4
  %call.i.i = tail call i32 %30(ptr noundef %rtwdev, i32 noundef 33828) #7
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %26, ptr noundef nonnull @.str.55, i32 noundef %call.i.i) #10
  %31 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %hci.i, align 8
  %read32.i555.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %32, i32 0, i32 9
  %33 = ptrtoint ptr %read32.i555.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %read32.i555.i, align 4
  %call.i556.i = tail call i32 %34(ptr noundef %rtwdev, i32 noundef 49508) #7
  %35 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %36, ptr noundef nonnull @.str.58, i32 noundef %call.i556.i) #10
  %37 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %hci.i, align 8
  %read32.i558.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %38, i32 0, i32 9
  %39 = ptrtoint ptr %read32.i558.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %read32.i558.i, align 4
  %call.i559.i = tail call i32 %40(ptr noundef %rtwdev, i32 noundef 34084) #7
  %41 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %42, ptr noundef nonnull @.str.61, i32 noundef %call.i559.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i559.i)
  %tobool.not.i = icmp eq i32 %call.i559.i, 0
  br i1 %tobool.not.i, label %do.end.i.if.end300.i_crit_edge, label %if.end27.i

do.end.i.if.end300.i_crit_edge:                   ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end300.i

if.end27.i:                                       ; preds = %do.end.i
  %43 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev.i, align 4
  %45 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %hci.i, align 8
  %read32.i561.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %46, i32 0, i32 9
  %47 = ptrtoint ptr %read32.i561.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %read32.i561.i, align 4
  %call.i562.i = tail call i32 %48(ptr noundef %rtwdev, i32 noundef 35892) #7
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %44, ptr noundef nonnull @.str.64, i32 noundef %call.i562.i) #10
  %49 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev.i, align 4
  %51 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %hci.i, align 8
  %read32.i564.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %52, i32 0, i32 9
  %53 = ptrtoint ptr %read32.i564.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %read32.i564.i, align 4
  %call.i565.i = tail call i32 %54(ptr noundef %rtwdev, i32 noundef 36916) #7
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %50, ptr noundef nonnull @.str.67, i32 noundef %call.i565.i) #10
  %and.i = and i32 %call.i559.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool28.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool28.not.i, label %if.end27.i.if.end40.i_crit_edge, label %do.end32.i

if.end27.i.if.end40.i_crit_edge:                  ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end40.i

do.end32.i:                                       ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #9
  %55 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %dev.i, align 4
  %57 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %hci.i, align 8
  %read32.i567.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %58, i32 0, i32 9
  %59 = ptrtoint ptr %read32.i567.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %read32.i567.i, align 4
  %call.i568.i = tail call i32 %60(ptr noundef %rtwdev, i32 noundef 37936) #7
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %56, ptr noundef nonnull @.str.70, i32 noundef %call.i568.i) #10
  %61 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %dev.i, align 4
  %63 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %hci.i, align 8
  %read32.i570.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %64, i32 0, i32 9
  %65 = ptrtoint ptr %read32.i570.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %read32.i570.i, align 4
  %call.i571.i = tail call i32 %66(ptr noundef %rtwdev, i32 noundef 37940) #7
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %62, ptr noundef nonnull @.str.73, i32 noundef %call.i571.i) #10
  br label %if.end40.i

if.end40.i:                                       ; preds = %do.end32.i, %if.end27.i.if.end40.i_crit_edge
  %and41.i = and i32 %call.i559.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41.i)
  %tobool42.not.i = icmp eq i32 %and41.i, 0
  br i1 %tobool42.not.i, label %if.end40.i.if.end94.i_crit_edge, label %do.end46.i

if.end40.i.if.end94.i_crit_edge:                  ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end94.i

do.end46.i:                                       ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #9
  %67 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %dev.i, align 4
  %69 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %hci.i, align 8
  %read32.i573.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %70, i32 0, i32 9
  %71 = ptrtoint ptr %read32.i573.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %read32.i573.i, align 4
  %call.i574.i = tail call i32 %72(ptr noundef %rtwdev, i32 noundef 40220) #7
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %68, ptr noundef nonnull @.str.76, i32 noundef %call.i574.i) #10
  %73 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %dev.i, align 4
  %75 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %hci.i, align 8
  %read32.i576.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %76, i32 0, i32 9
  %77 = ptrtoint ptr %read32.i576.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %read32.i576.i, align 4
  %call.i577.i = tail call i32 %78(ptr noundef %rtwdev, i32 noundef 40192) #7
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %74, ptr noundef nonnull @.str.79, i32 noundef %call.i577.i) #10
  %79 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %dev.i, align 4
  %81 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %hci.i, align 8
  %read32.i579.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %82, i32 0, i32 9
  %83 = ptrtoint ptr %read32.i579.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %read32.i579.i, align 4
  %call.i580.i = tail call i32 %84(ptr noundef %rtwdev, i32 noundef 40196) #7
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %80, ptr noundef nonnull @.str.82, i32 noundef %call.i580.i) #10
  %85 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %dev.i, align 4
  %87 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %hci.i, align 8
  %read32.i582.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %88, i32 0, i32 9
  %89 = ptrtoint ptr %read32.i582.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %read32.i582.i, align 4
  %call.i583.i = tail call i32 %90(ptr noundef %rtwdev, i32 noundef 40208) #7
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %86, ptr noundef nonnull @.str.85, i32 noundef %call.i583.i) #10
  %91 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %dev.i, align 4
  %93 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %hci.i, align 8
  %read32.i585.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %94, i32 0, i32 9
  %95 = ptrtoint ptr %read32.i585.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %read32.i585.i, align 4
  %call.i586.i = tail call i32 %96(ptr noundef %rtwdev, i32 noundef 40212) #7
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %92, ptr noundef nonnull @.str.88, i32 noundef %call.i586.i) #10
  %97 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %dev.i, align 4
  %99 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %hci.i, align 8
  %read32.i588.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %100, i32 0, i32 9
  %101 = ptrtoint ptr %read32.i588.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %read32.i588.i, align 4
  %call.i589.i = tail call i32 %102(ptr noundef %rtwdev, i32 noundef 40216) #7
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %98, ptr noundef nonnull @.str.91, i32 noundef %call.i589.i) #10
  %103 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %dev.i, align 4
  %105 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %hci.i, align 8
  %read32.i591.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %106, i32 0, i32 9
  %107 = ptrtoint ptr %read32.i591.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %read32.i591.i, align 4
  %call.i592.i = tail call i32 %108(ptr noundef %rtwdev, i32 noundef 40224) #7
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %104, ptr noundef nonnull @.str.94, i32 noundef %call.i592.i) #10
  %109 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %dev.i, align 4
  %111 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %hci.i, align 8
  %read32.i594.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %112, i32 0, i32 9
  %113 = ptrtoint ptr %read32.i594.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %read32.i594.i, align 4
  %call.i595.i = tail call i32 %114(ptr noundef %rtwdev, i32 noundef 40228) #7
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %110, ptr noundef nonnull @.str.97, i32 noundef %call.i595.i) #10
  %115 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %dev.i, align 4
  %117 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %hci.i, align 8
  %read32.i597.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %118, i32 0, i32 9
  %119 = ptrtoint ptr %read32.i597.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %read32.i597.i, align 4
  %call.i598.i = tail call i32 %120(ptr noundef %rtwdev, i32 noundef 40232) #7
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %116, ptr noundef nonnull @.str.100, i32 noundef %call.i598.i) #10
  %121 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %dev.i, align 4
  %123 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %hci.i, align 8
  %read32.i600.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %124, i32 0, i32 9
  %125 = ptrtoint ptr %read32.i600.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %read32.i600.i, align 4
  %call.i601.i = tail call i32 %126(ptr noundef %rtwdev, i32 noundef 40236) #7
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %122, ptr noundef nonnull @.str.103, i32 noundef %call.i601.i) #10
  br label %if.end94.i

if.end94.i:                                       ; preds = %do.end46.i, %if.end40.i.if.end94.i_crit_edge
  %and95.i = and i32 %call.i559.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and95.i)
  %tobool96.not.i = icmp eq i32 %and95.i, 0
  br i1 %tobool96.not.i, label %if.end94.i.if.end118.i_crit_edge, label %do.end100.i

if.end94.i.if.end118.i_crit_edge:                 ; preds = %if.end94.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end118.i

do.end100.i:                                      ; preds = %if.end94.i
  call void @__sanitizer_cov_trace_pc() #9
  %127 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %dev.i, align 4
  %129 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %hci.i, align 8
  %read32.i603.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %130, i32 0, i32 9
  %131 = ptrtoint ptr %read32.i603.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %read32.i603.i, align 4
  %call.i604.i = tail call i32 %132(ptr noundef %rtwdev, i32 noundef 39924) #7
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %128, ptr noundef nonnull @.str.106, i32 noundef %call.i604.i) #10
  %133 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %dev.i, align 4
  %135 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %hci.i, align 8
  %read32.i606.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %136, i32 0, i32 9
  %137 = ptrtoint ptr %read32.i606.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %read32.i606.i, align 4
  %call.i607.i = tail call i32 %138(ptr noundef %rtwdev, i32 noundef 39920) #7
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %134, ptr noundef nonnull @.str.109, i32 noundef %call.i607.i) #10
  %139 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %dev.i, align 4
  %141 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %hci.i, align 8
  %read32.i609.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %142, i32 0, i32 9
  %143 = ptrtoint ptr %read32.i609.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %read32.i609.i, align 4
  %call.i610.i = tail call i32 %144(ptr noundef %rtwdev, i32 noundef 40180) #7
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %140, ptr noundef nonnull @.str.112, i32 noundef %call.i610.i) #10
  %145 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %dev.i, align 4
  %147 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %hci.i, align 8
  %read32.i612.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %148, i32 0, i32 9
  %149 = ptrtoint ptr %read32.i612.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %read32.i612.i, align 4
  %call.i613.i = tail call i32 %150(ptr noundef %rtwdev, i32 noundef 40176) #7
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %146, ptr noundef nonnull @.str.115, i32 noundef %call.i613.i) #10
  br label %if.end118.i

if.end118.i:                                      ; preds = %do.end100.i, %if.end94.i.if.end118.i_crit_edge
  %and119.i = and i32 %call.i559.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and119.i)
  %tobool120.not.i = icmp eq i32 %and119.i, 0
  br i1 %tobool120.not.i, label %if.end118.i.if.end132.i_crit_edge, label %do.end124.i

if.end118.i.if.end132.i_crit_edge:                ; preds = %if.end118.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end132.i

do.end124.i:                                      ; preds = %if.end118.i
  call void @__sanitizer_cov_trace_pc() #9
  %151 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %dev.i, align 4
  %153 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %hci.i, align 8
  %read32.i615.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %154, i32 0, i32 9
  %155 = ptrtoint ptr %read32.i615.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %read32.i615.i, align 4
  %call.i616.i = tail call i32 %156(ptr noundef %rtwdev, i32 noundef 40688) #7
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %152, ptr noundef nonnull @.str.118, i32 noundef %call.i616.i) #10
  %157 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %dev.i, align 4
  %159 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %hci.i, align 8
  %read32.i618.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %160, i32 0, i32 9
  %161 = ptrtoint ptr %read32.i618.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %read32.i618.i, align 4
  %call.i619.i = tail call i32 %162(ptr noundef %rtwdev, i32 noundef 40692) #7
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %158, ptr noundef nonnull @.str.121, i32 noundef %call.i619.i) #10
  br label %if.end132.i

if.end132.i:                                      ; preds = %do.end124.i, %if.end118.i.if.end132.i_crit_edge
  %and133.i = and i32 %call.i559.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and133.i)
  %tobool134.not.i = icmp eq i32 %and133.i, 0
  br i1 %tobool134.not.i, label %if.end132.i.if.end156.i_crit_edge, label %do.end138.i

if.end132.i.if.end156.i_crit_edge:                ; preds = %if.end132.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end156.i

do.end138.i:                                      ; preds = %if.end132.i
  call void @__sanitizer_cov_trace_pc() #9
  %163 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %dev.i, align 4
  %165 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %hci.i, align 8
  %read32.i621.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %166, i32 0, i32 9
  %167 = ptrtoint ptr %read32.i621.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %read32.i621.i, align 4
  %call.i622.i = tail call i32 %168(ptr noundef %rtwdev, i32 noundef 35896) #7
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %164, ptr noundef nonnull @.str.124, i32 noundef %call.i622.i) #10
  %169 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %dev.i, align 4
  %171 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %hci.i, align 8
  %read32.i624.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %172, i32 0, i32 9
  %173 = ptrtoint ptr %read32.i624.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %read32.i624.i, align 4
  %call.i625.i = tail call i32 %174(ptr noundef %rtwdev, i32 noundef 35900) #7
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %170, ptr noundef nonnull @.str.127, i32 noundef %call.i625.i) #10
  %175 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %dev.i, align 4
  %177 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %hci.i, align 8
  %read32.i627.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %178, i32 0, i32 9
  %179 = ptrtoint ptr %read32.i627.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %read32.i627.i, align 4
  %call.i628.i = tail call i32 %180(ptr noundef %rtwdev, i32 noundef 36920) #7
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %176, ptr noundef nonnull @.str.130, i32 noundef %call.i628.i) #10
  %181 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %dev.i, align 4
  %183 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %hci.i, align 8
  %read32.i630.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %184, i32 0, i32 9
  %185 = ptrtoint ptr %read32.i630.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %read32.i630.i, align 4
  %call.i631.i = tail call i32 %186(ptr noundef %rtwdev, i32 noundef 36924) #7
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %182, ptr noundef nonnull @.str.133, i32 noundef %call.i631.i) #10
  tail call fastcc void @dump_err_status_dispatcher(ptr noundef %rtwdev) #7
  br label %if.end156.i

if.end156.i:                                      ; preds = %do.end138.i, %if.end132.i.if.end156.i_crit_edge
  %and157.i = and i32 %call.i559.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and157.i)
  %tobool158.not.i = icmp eq i32 %and157.i, 0
  br i1 %tobool158.not.i, label %if.end156.i.if.end170.i_crit_edge, label %do.end162.i

if.end156.i.if.end170.i_crit_edge:                ; preds = %if.end156.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end170.i

do.end162.i:                                      ; preds = %if.end156.i
  call void @__sanitizer_cov_trace_pc() #9
  %187 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %dev.i, align 4
  %189 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %hci.i, align 8
  %read32.i633.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %190, i32 0, i32 9
  %191 = ptrtoint ptr %read32.i633.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %read32.i633.i, align 4
  %call.i634.i = tail call i32 %192(ptr noundef %rtwdev, i32 noundef 40732) #7
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %188, ptr noundef nonnull @.str.136, i32 noundef %call.i634.i) #10
  %193 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %dev.i, align 4
  %195 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %hci.i, align 8
  %read32.i636.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %196, i32 0, i32 9
  %197 = ptrtoint ptr %read32.i636.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %read32.i636.i, align 4
  %call.i637.i = tail call i32 %198(ptr noundef %rtwdev, i32 noundef 40748) #7
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %194, ptr noundef nonnull @.str.139, i32 noundef %call.i637.i) #10
  br label %if.end170.i

if.end170.i:                                      ; preds = %do.end162.i, %if.end156.i.if.end170.i_crit_edge
  %and171.i = and i32 %call.i559.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and171.i)
  %tobool172.not.i = icmp eq i32 %and171.i, 0
  br i1 %tobool172.not.i, label %if.end170.i.if.end249.i_crit_edge, label %do.end176.i

if.end170.i.if.end249.i_crit_edge:                ; preds = %if.end170.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end249.i

do.end176.i:                                      ; preds = %if.end170.i
  call void @__sanitizer_cov_trace_pc() #9
  %199 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %dev.i, align 4
  %201 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %hci.i, align 8
  %read32.i639.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %202, i32 0, i32 9
  %203 = ptrtoint ptr %read32.i639.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %read32.i639.i, align 4
  %call.i640.i = tail call i32 %204(ptr noundef %rtwdev, i32 noundef 35896) #7
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %200, ptr noundef nonnull @.str.124, i32 noundef %call.i640.i) #10
  %205 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %dev.i, align 4
  %207 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %hci.i, align 8
  %read32.i642.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %208, i32 0, i32 9
  %209 = ptrtoint ptr %read32.i642.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %read32.i642.i, align 4
  %call.i643.i = tail call i32 %210(ptr noundef %rtwdev, i32 noundef 35900) #7
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %206, ptr noundef nonnull @.str.127, i32 noundef %call.i643.i) #10
  %211 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %dev.i, align 4
  %213 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %hci.i, align 8
  %read32.i645.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %214, i32 0, i32 9
  %215 = ptrtoint ptr %read32.i645.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %read32.i645.i, align 4
  %call.i646.i = tail call i32 %216(ptr noundef %rtwdev, i32 noundef 36920) #7
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %212, ptr noundef nonnull @.str.130, i32 noundef %call.i646.i) #10
  %217 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %dev.i, align 4
  %219 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %hci.i, align 8
  %read32.i648.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %220, i32 0, i32 9
  %221 = ptrtoint ptr %read32.i648.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %read32.i648.i, align 4
  %call.i649.i = tail call i32 %222(ptr noundef %rtwdev, i32 noundef 36924) #7
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %218, ptr noundef nonnull @.str.133, i32 noundef %call.i649.i) #10
  %223 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %dev.i, align 4
  %225 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %hci.i, align 8
  %read32.i651.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %226, i32 0, i32 9
  %227 = ptrtoint ptr %read32.i651.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %read32.i651.i, align 4
  %call.i652.i = tail call i32 %228(ptr noundef %rtwdev, i32 noundef 38928) #7
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %224, ptr noundef nonnull @.str.150, i32 noundef %call.i652.i) #10
  %229 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %dev.i, align 4
  %231 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %hci.i, align 8
  %read32.i654.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %232, i32 0, i32 9
  %233 = ptrtoint ptr %read32.i654.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %read32.i654.i, align 4
  %call.i655.i = tail call i32 %234(ptr noundef %rtwdev, i32 noundef 38932) #7
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %230, ptr noundef nonnull @.str.153, i32 noundef %call.i655.i) #10
  %235 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %dev.i, align 4
  %237 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %hci.i, align 8
  %read32.i657.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %238, i32 0, i32 9
  %239 = ptrtoint ptr %read32.i657.i to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %read32.i657.i, align 4
  %call.i658.i = tail call i32 %240(ptr noundef %rtwdev, i32 noundef 38936) #7
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %236, ptr noundef nonnull @.str.156, i32 noundef %call.i658.i) #10
  %241 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %dev.i, align 4
  %243 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %hci.i, align 8
  %read32.i660.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %244, i32 0, i32 9
  %245 = ptrtoint ptr %read32.i660.i to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %read32.i660.i, align 4
  %call.i661.i = tail call i32 %246(ptr noundef %rtwdev, i32 noundef 38940) #7
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %242, ptr noundef nonnull @.str.159, i32 noundef %call.i661.i) #10
  %247 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %dev.i, align 4
  %249 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load ptr, ptr %hci.i, align 8
  %read32.i663.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %250, i32 0, i32 9
  %251 = ptrtoint ptr %read32.i663.i to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %read32.i663.i, align 4
  %call.i664.i = tail call i32 %252(ptr noundef %rtwdev, i32 noundef 38960) #7
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %248, ptr noundef nonnull @.str.162, i32 noundef %call.i664.i) #10
  %253 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %dev.i, align 4
  %255 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load ptr, ptr %hci.i, align 8
  %read32.i666.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %256, i32 0, i32 9
  %257 = ptrtoint ptr %read32.i666.i to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load ptr, ptr %read32.i666.i, align 4
  %call.i667.i = tail call i32 %258(ptr noundef %rtwdev, i32 noundef 38964) #7
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %254, ptr noundef nonnull @.str.165, i32 noundef %call.i667.i) #10
  %259 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load ptr, ptr %dev.i, align 4
  %261 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load ptr, ptr %hci.i, align 8
  %read32.i669.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %262, i32 0, i32 9
  %263 = ptrtoint ptr %read32.i669.i to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load ptr, ptr %read32.i669.i, align 4
  %call.i670.i = tail call i32 %264(ptr noundef %rtwdev, i32 noundef 38968) #7
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %260, ptr noundef nonnull @.str.168, i32 noundef %call.i670.i) #10
  %265 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load ptr, ptr %dev.i, align 4
  %267 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load ptr, ptr %hci.i, align 8
  %read32.i672.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %268, i32 0, i32 9
  %269 = ptrtoint ptr %read32.i672.i to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load ptr, ptr %read32.i672.i, align 4
  %call.i673.i = tail call i32 %270(ptr noundef %rtwdev, i32 noundef 38972) #7
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %266, ptr noundef nonnull @.str.171, i32 noundef %call.i673.i) #10
  %271 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load ptr, ptr %dev.i, align 4
  %273 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load ptr, ptr %hci.i, align 8
  %read32.i675.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %274, i32 0, i32 9
  %275 = ptrtoint ptr %read32.i675.i to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load ptr, ptr %read32.i675.i, align 4
  %call.i676.i = tail call i32 %276(ptr noundef %rtwdev, i32 noundef 51220) #7
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %272, ptr noundef nonnull @.str.174, i32 noundef %call.i676.i) #10
  %277 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load ptr, ptr %dev.i, align 4
  %279 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load ptr, ptr %hci.i, align 8
  %read32.i678.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %280, i32 0, i32 9
  %281 = ptrtoint ptr %read32.i678.i to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load ptr, ptr %read32.i678.i, align 4
  %call.i679.i = tail call i32 %282(ptr noundef %rtwdev, i32 noundef 51224) #7
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %278, ptr noundef nonnull @.str.177, i32 noundef %call.i679.i) #10
  %283 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load ptr, ptr %dev.i, align 4
  %285 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load ptr, ptr %hci.i, align 8
  %read32.i681.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %286, i32 0, i32 9
  %287 = ptrtoint ptr %read32.i681.i to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load ptr, ptr %read32.i681.i, align 4
  %call.i682.i = tail call i32 %288(ptr noundef %rtwdev, i32 noundef 51228) #7
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %284, ptr noundef nonnull @.str.180, i32 noundef %call.i682.i) #10
  tail call fastcc void @dump_err_status_dispatcher(ptr noundef %rtwdev) #7
  br label %if.end249.i

if.end249.i:                                      ; preds = %do.end176.i, %if.end170.i.if.end249.i_crit_edge
  %and250.i = and i32 %call.i559.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and250.i)
  %tobool251.not.i = icmp eq i32 %and250.i, 0
  br i1 %tobool251.not.i, label %if.end249.i.if.end273.i_crit_edge, label %do.end255.i

if.end249.i.if.end273.i_crit_edge:                ; preds = %if.end249.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end273.i

do.end255.i:                                      ; preds = %if.end249.i
  call void @__sanitizer_cov_trace_pc() #9
  %289 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load ptr, ptr %dev.i, align 4
  %291 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load ptr, ptr %hci.i, align 8
  %read32.i684.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %292, i32 0, i32 9
  %293 = ptrtoint ptr %read32.i684.i to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load ptr, ptr %read32.i684.i, align 4
  %call.i685.i = tail call i32 %294(ptr noundef %rtwdev, i32 noundef 39456) #7
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %290, ptr noundef nonnull @.str.183, i32 noundef %call.i685.i) #10
  %295 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load ptr, ptr %dev.i, align 4
  %297 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load ptr, ptr %hci.i, align 8
  %read32.i687.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %298, i32 0, i32 9
  %299 = ptrtoint ptr %read32.i687.i to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load ptr, ptr %read32.i687.i, align 4
  %call.i688.i = tail call i32 %300(ptr noundef %rtwdev, i32 noundef 39460) #7
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %296, ptr noundef nonnull @.str.186, i32 noundef %call.i688.i) #10
  %301 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load ptr, ptr %dev.i, align 4
  %303 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load ptr, ptr %hci.i, align 8
  %read32.i690.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %304, i32 0, i32 9
  %305 = ptrtoint ptr %read32.i690.i to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load ptr, ptr %read32.i690.i, align 4
  %call.i691.i = tail call i32 %306(ptr noundef %rtwdev, i32 noundef 39456) #7
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %302, ptr noundef nonnull @.str.183, i32 noundef %call.i691.i) #10
  %307 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load ptr, ptr %dev.i, align 4
  %309 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load ptr, ptr %hci.i, align 8
  %read32.i693.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %310, i32 0, i32 9
  %311 = ptrtoint ptr %read32.i693.i to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load ptr, ptr %read32.i693.i, align 4
  %call.i694.i = tail call i32 %312(ptr noundef %rtwdev, i32 noundef 39460) #7
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %308, ptr noundef nonnull @.str.186, i32 noundef %call.i694.i) #10
  br label %if.end273.i

if.end273.i:                                      ; preds = %do.end255.i, %if.end249.i.if.end273.i_crit_edge
  %and274.i = and i32 %call.i559.i, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and274.i)
  %tobool275.not.i = icmp eq i32 %and274.i, 0
  br i1 %tobool275.not.i, label %if.end273.i.if.end277.i_crit_edge, label %if.then276.i

if.end273.i.if.end277.i_crit_edge:                ; preds = %if.end273.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end277.i

if.then276.i:                                     ; preds = %if.end273.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @dump_err_status_dispatcher(ptr noundef %rtwdev) #7
  br label %if.end277.i

if.end277.i:                                      ; preds = %if.then276.i, %if.end273.i.if.end277.i_crit_edge
  %and278.i = and i32 %call.i559.i, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and278.i)
  %tobool279.not.i = icmp eq i32 %and278.i, 0
  br i1 %tobool279.not.i, label %if.end277.i.if.end291.i_crit_edge, label %do.end283.i

if.end277.i.if.end291.i_crit_edge:                ; preds = %if.end277.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end291.i

do.end283.i:                                      ; preds = %if.end277.i
  call void @__sanitizer_cov_trace_pc() #9
  %313 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load ptr, ptr %dev.i, align 4
  %315 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load ptr, ptr %hci.i, align 8
  %read32.i696.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %316, i32 0, i32 9
  %317 = ptrtoint ptr %read32.i696.i to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load ptr, ptr %read32.i696.i, align 4
  %call.i697.i = tail call i32 %318(ptr noundef %rtwdev, i32 noundef 38976) #7
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %314, ptr noundef nonnull @.str.193, i32 noundef %call.i697.i) #10
  %319 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load ptr, ptr %dev.i, align 4
  %321 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load ptr, ptr %hci.i, align 8
  %read32.i699.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %322, i32 0, i32 9
  %323 = ptrtoint ptr %read32.i699.i to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load ptr, ptr %read32.i699.i, align 4
  %call.i700.i = tail call i32 %324(ptr noundef %rtwdev, i32 noundef 38980) #7
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %320, ptr noundef nonnull @.str.196, i32 noundef %call.i700.i) #10
  br label %if.end291.i

if.end291.i:                                      ; preds = %do.end283.i, %if.end277.i.if.end291.i_crit_edge
  %and292.i = and i32 %call.i559.i, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and292.i)
  %tobool293.not.i = icmp eq i32 %and292.i, 0
  br i1 %tobool293.not.i, label %if.end291.i.if.end300.i_crit_edge, label %do.end297.i

if.end291.i.if.end300.i_crit_edge:                ; preds = %if.end291.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end300.i

do.end297.i:                                      ; preds = %if.end291.i
  call void @__sanitizer_cov_trace_pc() #9
  %325 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load ptr, ptr %dev.i, align 4
  %327 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %327)
  %328 = load ptr, ptr %hci.i, align 8
  %read32.i702.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %328, i32 0, i32 9
  %329 = ptrtoint ptr %read32.i702.i to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load ptr, ptr %read32.i702.i, align 4
  %call.i703.i = tail call i32 %330(ptr noundef %rtwdev, i32 noundef 38412) #7
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %326, ptr noundef nonnull @.str.199, i32 noundef %call.i703.i) #10
  br label %if.end300.i

if.end300.i:                                      ; preds = %do.end297.i, %if.end291.i.if.end300.i_crit_edge, %do.end.i.if.end300.i_crit_edge
  %and301.i = and i32 %call.i556.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and301.i)
  %tobool302.not.i = icmp eq i32 %and301.i, 0
  br i1 %tobool302.not.i, label %if.end300.i.if.end314.i_crit_edge, label %do.end306.i

if.end300.i.if.end314.i_crit_edge:                ; preds = %if.end300.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end314.i

do.end306.i:                                      ; preds = %if.end300.i
  call void @__sanitizer_cov_trace_pc() #9
  %331 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %331)
  %332 = load ptr, ptr %dev.i, align 4
  %333 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %333)
  %334 = load ptr, ptr %hci.i, align 8
  %read32.i705.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %334, i32 0, i32 9
  %335 = ptrtoint ptr %read32.i705.i to i32
  call void @__asan_load4_noabort(i32 %335)
  %336 = load ptr, ptr %read32.i705.i, align 4
  %call.i706.i = tail call i32 %336(ptr noundef %rtwdev, i32 noundef 50152) #7
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %332, ptr noundef nonnull @.str.202, i32 noundef %call.i706.i) #10
  %337 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %337)
  %338 = load ptr, ptr %dev.i, align 4
  %339 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %339)
  %340 = load ptr, ptr %hci.i, align 8
  %read16.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %340, i32 0, i32 8
  %341 = ptrtoint ptr %read16.i.i to i32
  call void @__asan_load4_noabort(i32 %341)
  %342 = load ptr, ptr %read16.i.i, align 4
  %call.i708.i = tail call zeroext i16 %342(ptr noundef %rtwdev, i32 noundef 50156) #7
  %conv.i = zext i16 %call.i708.i to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %338, ptr noundef nonnull @.str.205, i32 noundef %conv.i) #10
  br label %if.end314.i

if.end314.i:                                      ; preds = %do.end306.i, %if.end300.i.if.end314.i_crit_edge
  %and315.i = and i32 %call.i556.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and315.i)
  %tobool316.not.i = icmp eq i32 %and315.i, 0
  br i1 %tobool316.not.i, label %if.end314.i.if.end328.i_crit_edge, label %do.end320.i

if.end314.i.if.end328.i_crit_edge:                ; preds = %if.end314.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end328.i

do.end320.i:                                      ; preds = %if.end314.i
  call void @__sanitizer_cov_trace_pc() #9
  %343 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %343)
  %344 = load ptr, ptr %dev.i, align 4
  %345 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %345)
  %346 = load ptr, ptr %hci.i, align 8
  %read32.i710.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %346, i32 0, i32 9
  %347 = ptrtoint ptr %read32.i710.i to i32
  call void @__asan_load4_noabort(i32 %347)
  %348 = load ptr, ptr %read32.i710.i, align 4
  %call.i711.i = tail call i32 %348(ptr noundef %rtwdev, i32 noundef 50880) #7
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %344, ptr noundef nonnull @.str.208, i32 noundef %call.i711.i) #10
  %349 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %349)
  %350 = load ptr, ptr %dev.i, align 4
  %351 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %351)
  %352 = load ptr, ptr %hci.i, align 8
  %read32.i713.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %352, i32 0, i32 9
  %353 = ptrtoint ptr %read32.i713.i to i32
  call void @__asan_load4_noabort(i32 %353)
  %354 = load ptr, ptr %read32.i713.i, align 4
  %call.i714.i = tail call i32 %354(ptr noundef %rtwdev, i32 noundef 50884) #7
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %350, ptr noundef nonnull @.str.211, i32 noundef %call.i714.i) #10
  br label %if.end328.i

if.end328.i:                                      ; preds = %do.end320.i, %if.end314.i.if.end328.i_crit_edge
  %and329.i = and i32 %call.i556.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and329.i)
  %tobool330.not.i = icmp eq i32 %and329.i, 0
  br i1 %tobool330.not.i, label %if.end328.i.if.end337.i_crit_edge, label %do.end334.i

if.end328.i.if.end337.i_crit_edge:                ; preds = %if.end328.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end337.i

do.end334.i:                                      ; preds = %if.end328.i
  call void @__sanitizer_cov_trace_pc() #9
  %355 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %355)
  %356 = load ptr, ptr %dev.i, align 4
  %357 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %357)
  %358 = load ptr, ptr %hci.i, align 8
  %read32.i716.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %358, i32 0, i32 9
  %359 = ptrtoint ptr %read32.i716.i to i32
  call void @__asan_load4_noabort(i32 %359)
  %360 = load ptr, ptr %read32.i716.i, align 4
  %call.i717.i = tail call i32 %360(ptr noundef %rtwdev, i32 noundef 51200) #7
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %356, ptr noundef nonnull @.str.214, i32 noundef %call.i717.i) #10
  br label %if.end337.i

if.end337.i:                                      ; preds = %do.end334.i, %if.end328.i.if.end337.i_crit_edge
  %and338.i = and i32 %call.i556.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and338.i)
  %tobool339.not.i = icmp eq i32 %and338.i, 0
  br i1 %tobool339.not.i, label %if.end337.i.if.end346.i_crit_edge, label %do.end343.i

if.end337.i.if.end346.i_crit_edge:                ; preds = %if.end337.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end346.i

do.end343.i:                                      ; preds = %if.end337.i
  call void @__sanitizer_cov_trace_pc() #9
  %361 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %361)
  %362 = load ptr, ptr %dev.i, align 4
  %363 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %363)
  %364 = load ptr, ptr %hci.i, align 8
  %read32.i719.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %364, i32 0, i32 9
  %365 = ptrtoint ptr %read32.i719.i to i32
  call void @__asan_load4_noabort(i32 %365)
  %366 = load ptr, ptr %read32.i719.i, align 4
  %call.i720.i = tail call i32 %366(ptr noundef %rtwdev, i32 noundef 52476) #7
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %362, ptr noundef nonnull @.str.217, i32 noundef %call.i720.i) #10
  br label %if.end346.i

if.end346.i:                                      ; preds = %do.end343.i, %if.end337.i.if.end346.i_crit_edge
  %and347.i = and i32 %call.i556.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and347.i)
  %tobool348.not.i = icmp eq i32 %and347.i, 0
  br i1 %tobool348.not.i, label %if.end346.i.if.end360.i_crit_edge, label %do.end352.i

if.end346.i.if.end360.i_crit_edge:                ; preds = %if.end346.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end360.i

do.end352.i:                                      ; preds = %if.end346.i
  call void @__sanitizer_cov_trace_pc() #9
  %367 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %367)
  %368 = load ptr, ptr %dev.i, align 4
  %369 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %369)
  %370 = load ptr, ptr %hci.i, align 8
  %read32.i722.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %370, i32 0, i32 9
  %371 = ptrtoint ptr %read32.i722.i to i32
  call void @__asan_load4_noabort(i32 %371)
  %372 = load ptr, ptr %read32.i722.i, align 4
  %call.i723.i = tail call i32 %372(ptr noundef %rtwdev, i32 noundef 55776) #7
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %368, ptr noundef nonnull @.str.220, i32 noundef %call.i723.i) #10
  %373 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %373)
  %374 = load ptr, ptr %dev.i, align 4
  %375 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %375)
  %376 = load ptr, ptr %hci.i, align 8
  %read32.i725.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %376, i32 0, i32 9
  %377 = ptrtoint ptr %read32.i725.i to i32
  call void @__asan_load4_noabort(i32 %377)
  %378 = load ptr, ptr %read32.i725.i, align 4
  %call.i726.i = tail call i32 %378(ptr noundef %rtwdev, i32 noundef 55780) #7
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %374, ptr noundef nonnull @.str.223, i32 noundef %call.i726.i) #10
  br label %if.end360.i

if.end360.i:                                      ; preds = %do.end352.i, %if.end346.i.if.end360.i_crit_edge
  %and361.i = and i32 %call.i556.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and361.i)
  %tobool362.not.i = icmp eq i32 %and361.i, 0
  br i1 %tobool362.not.i, label %if.end360.i.if.end374.i_crit_edge, label %do.end366.i

if.end360.i.if.end374.i_crit_edge:                ; preds = %if.end360.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end374.i

do.end366.i:                                      ; preds = %if.end360.i
  call void @__sanitizer_cov_trace_pc() #9
  %379 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %379)
  %380 = load ptr, ptr %dev.i, align 4
  %381 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %381)
  %382 = load ptr, ptr %hci.i, align 8
  %read32.i728.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %382, i32 0, i32 9
  %383 = ptrtoint ptr %read32.i728.i to i32
  call void @__asan_load4_noabort(i32 %383)
  %384 = load ptr, ptr %read32.i728.i, align 4
  %call.i729.i = tail call i32 %384(ptr noundef %rtwdev, i32 noundef 52468) #7
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %380, ptr noundef nonnull @.str.226, i32 noundef %call.i729.i) #10
  %385 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %385)
  %386 = load ptr, ptr %dev.i, align 4
  %387 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %387)
  %388 = load ptr, ptr %hci.i, align 8
  %read32.i731.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %388, i32 0, i32 9
  %389 = ptrtoint ptr %read32.i731.i to i32
  call void @__asan_load4_noabort(i32 %389)
  %390 = load ptr, ptr %read32.i731.i, align 4
  %call.i732.i = tail call i32 %390(ptr noundef %rtwdev, i32 noundef 52476) #7
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %386, ptr noundef nonnull @.str.229, i32 noundef %call.i732.i) #10
  br label %if.end374.i

if.end374.i:                                      ; preds = %do.end366.i, %if.end360.i.if.end374.i_crit_edge
  %and375.i = and i32 %call.i556.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and375.i)
  %tobool376.not.i = icmp eq i32 %and375.i, 0
  br i1 %tobool376.not.i, label %if.end374.i.if.end388.i_crit_edge, label %do.end380.i

if.end374.i.if.end388.i_crit_edge:                ; preds = %if.end374.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end388.i

do.end380.i:                                      ; preds = %if.end374.i
  call void @__sanitizer_cov_trace_pc() #9
  %391 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %391)
  %392 = load ptr, ptr %dev.i, align 4
  %393 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %393)
  %394 = load ptr, ptr %hci.i, align 8
  %read32.i734.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %394, i32 0, i32 9
  %395 = ptrtoint ptr %read32.i734.i to i32
  call void @__asan_load4_noabort(i32 %395)
  %396 = load ptr, ptr %read32.i734.i, align 4
  %call.i735.i = tail call i32 %396(ptr noundef %rtwdev, i32 noundef 52460) #7
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %392, ptr noundef nonnull @.str.232, i32 noundef %call.i735.i) #10
  %397 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %397)
  %398 = load ptr, ptr %dev.i, align 4
  %399 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %399)
  %400 = load ptr, ptr %hci.i, align 8
  %read32.i737.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %400, i32 0, i32 9
  %401 = ptrtoint ptr %read32.i737.i to i32
  call void @__asan_load4_noabort(i32 %401)
  %402 = load ptr, ptr %read32.i737.i, align 4
  %call.i738.i = tail call i32 %402(ptr noundef %rtwdev, i32 noundef 52468) #7
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %398, ptr noundef nonnull @.str.235, i32 noundef %call.i738.i) #10
  br label %if.end388.i

if.end388.i:                                      ; preds = %do.end380.i, %if.end374.i.if.end388.i_crit_edge
  %403 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %403)
  %404 = load ptr, ptr %hci.i, align 8
  %dump_err_status.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %404, i32 0, i32 18
  %405 = ptrtoint ptr %dump_err_status.i to i32
  call void @__asan_load4_noabort(i32 %405)
  %406 = load ptr, ptr %dump_err_status.i, align 4
  tail call void %406(ptr noundef %rtwdev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %call.i49)
  %cmp389.i = icmp eq i32 %call.i49, 16
  br i1 %cmp389.i, label %if.then391.i, label %if.end388.i.do.end395.i_crit_edge

if.end388.i.do.end395.i_crit_edge:                ; preds = %if.end388.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end395.i

if.then391.i:                                     ; preds = %if.end388.i
  %407 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %407)
  %408 = load ptr, ptr %hci.i, align 8
  %read32.i.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %408, i32 0, i32 9
  %409 = ptrtoint ptr %read32.i.i.i to i32
  call void @__asan_load4_noabort(i32 %409)
  %410 = load ptr, ptr %read32.i.i.i, align 4
  %call.i.i.i = tail call i32 %410(ptr noundef %rtwdev, i32 noundef 33828) #7
  %shr.mask.i.i = and i32 %call.i.i.i, -268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %shr.mask.i.i)
  %cond.i.i = icmp eq i32 %shr.mask.i.i, 1073741824
  br i1 %cond.i.i, label %do.end15.i.i, label %if.then391.i.do.end395.i_crit_edge

if.then391.i.do.end395.i_crit_edge:               ; preds = %if.then391.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end395.i

do.end15.i.i:                                     ; preds = %if.then391.i
  %411 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %411)
  %412 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %412, ptr noundef nonnull @.str.257) #10
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ctrl.i.i.i) #7
  %413 = getelementptr inbounds %struct.rtw89_mac_dle_dfi_ctrl, ptr %ctrl.i.i.i, i32 0, i32 1
  %414 = getelementptr inbounds %struct.rtw89_mac_dle_dfi_ctrl, ptr %ctrl.i.i.i, i32 0, i32 2
  %415 = getelementptr inbounds %struct.rtw89_mac_dle_dfi_ctrl, ptr %ctrl.i.i.i, i32 0, i32 3
  %416 = ptrtoint ptr %415 to i32
  call void @__asan_store4_noabort(i32 %416)
  store i32 -1, ptr %415, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ctrl.i.i.i.i) #7
  %417 = getelementptr inbounds %struct.rtw89_mac_dle_dfi_ctrl, ptr %ctrl.i.i.i.i, i32 0, i32 1
  %418 = getelementptr inbounds %struct.rtw89_mac_dle_dfi_ctrl, ptr %ctrl.i.i.i.i, i32 0, i32 2
  %419 = getelementptr inbounds i8, ptr %ctrl.i.i.i.i, i32 12
  %420 = ptrtoint ptr %419 to i32
  call void @__asan_store4_noabort(i32 %420)
  store i32 -1, ptr %419, align 4
  %421 = ptrtoint ptr %ctrl.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %421)
  store i32 1, ptr %ctrl.i.i.i.i, align 4
  %422 = ptrtoint ptr %417 to i32
  call void @__asan_store4_noabort(i32 %422)
  store i32 7, ptr %417, align 4
  %423 = ptrtoint ptr %418 to i32
  call void @__asan_store4_noabort(i32 %423)
  store i32 0, ptr %418, align 4
  %call.i.i.i.i = call fastcc i32 @dle_dfi_ctrl(ptr noundef %rtwdev, ptr noundef nonnull %ctrl.i.i.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %if.end.i.i.i, label %if.end.thread.i.i.i

if.end.thread.i.i.i:                              ; preds = %do.end15.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %424 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %424)
  %425 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %425, ptr noundef nonnull @.str.280, i32 noundef %call.i.i.i.i) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ctrl.i.i.i.i) #7
  %426 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %426)
  %427 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %427, ptr noundef nonnull @.str.259, ptr noundef nonnull @.str.260) #10
  br label %for.end.i.i.i

if.end.i.i.i:                                     ; preds = %do.end15.i.i
  %428 = ptrtoint ptr %419 to i32
  call void @__asan_load4_noabort(i32 %428)
  %429 = load i32, ptr %419, align 4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ctrl.i.i.i.i) #7
  %430 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %430)
  %431 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %431, ptr noundef nonnull @.str.262, i32 noundef %429) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %429)
  %cmp.not157.i.i.i = icmp eq i32 %429, -1
  br i1 %cmp.not157.i.i.i, label %if.end.i.i.i.for.end.i.i.i_crit_edge, label %for.body.lr.ph.i.i.i

if.end.i.i.i.for.end.i.i.i_crit_edge:             ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i.i.i

for.body.lr.ph.i.i.i:                             ; preds = %if.end.i.i.i
  %phi.bo.i.i.i = xor i32 %429, -1
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.inc.i.i.i.for.body.i.i.i_crit_edge, %for.body.lr.ph.i.i.i
  %not_empty.0160.i.i.i = phi i32 [ %phi.bo.i.i.i, %for.body.lr.ph.i.i.i ], [ %shr60.i.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ]
  %i.0158.i.i.i = phi i32 [ 0, %for.body.lr.ph.i.i.i ], [ %inc.i.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ]
  %and.i.i.i = and i32 %not_empty.0160.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool7.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool7.not.i.i.i, label %for.body.i.i.i.for.inc.i.i.i_crit_edge, label %do.end28.i.i.i

for.body.i.i.i.for.inc.i.i.i_crit_edge:           ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i.i

do.end28.i.i.i:                                   ; preds = %for.body.i.i.i
  %432 = ptrtoint ptr %ctrl.i.i.i to i32
  call void @__asan_store4_noabort(i32 %432)
  store i32 1, ptr %ctrl.i.i.i, align 4
  %433 = ptrtoint ptr %413 to i32
  call void @__asan_store4_noabort(i32 %433)
  store i32 6, ptr %413, align 4
  %shl.i.i.i = shl nuw i32 %i.0158.i.i.i, 1
  %434 = ptrtoint ptr %414 to i32
  call void @__asan_store4_noabort(i32 %434)
  store i32 %shl.i.i.i, ptr %414, align 4
  %call30.i.i.i = call fastcc i32 @dle_dfi_ctrl(ptr noundef %rtwdev, ptr noundef nonnull %ctrl.i.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30.i.i.i)
  %tobool31.not.i.i.i = icmp eq i32 %call30.i.i.i, 0
  %435 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %435)
  %436 = load ptr, ptr %dev.i, align 4
  br i1 %tobool31.not.i.i.i, label %do.end40.i.i.i, label %do.end35.i.i.i

do.end35.i.i.i:                                   ; preds = %do.end28.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %436, ptr noundef nonnull @.str.259, ptr noundef nonnull @.str.260) #10
  br label %for.inc.i.i.i

do.end40.i.i.i:                                   ; preds = %do.end28.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %437 = ptrtoint ptr %415 to i32
  call void @__asan_load4_noabort(i32 %437)
  %438 = load i32, ptr %415, align 4
  %and58.i.i.i = and i32 %438, 4095
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %436, ptr noundef nonnull @.str.267, i32 noundef %i.0158.i.i.i, i32 noundef %and58.i.i.i) #10
  br label %for.inc.i.i.i

for.inc.i.i.i:                                    ; preds = %do.end40.i.i.i, %do.end35.i.i.i, %for.body.i.i.i.for.inc.i.i.i_crit_edge
  %shr60.i.i.i = lshr i32 %not_empty.0160.i.i.i, 1
  %inc.i.i.i = add nuw nsw i32 %i.0158.i.i.i, 1
  %cmp.not.i.i.i = icmp ult i32 %not_empty.0160.i.i.i, 2
  br i1 %cmp.not.i.i.i, label %for.inc.i.i.i.for.end.i.i.i_crit_edge, label %for.inc.i.i.i.for.body.i.i.i_crit_edge

for.inc.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i.i

for.inc.i.i.i.for.end.i.i.i_crit_edge:            ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i.i.i

for.end.i.i.i:                                    ; preds = %for.inc.i.i.i.for.end.i.i.i_crit_edge, %if.end.i.i.i.for.end.i.i.i_crit_edge, %if.end.thread.i.i.i
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ctrl.i142.i.i.i) #7
  %439 = getelementptr inbounds %struct.rtw89_mac_dle_dfi_ctrl, ptr %ctrl.i142.i.i.i, i32 0, i32 1
  %440 = getelementptr inbounds %struct.rtw89_mac_dle_dfi_ctrl, ptr %ctrl.i142.i.i.i, i32 0, i32 2
  %441 = getelementptr inbounds i8, ptr %ctrl.i142.i.i.i, i32 12
  %442 = ptrtoint ptr %441 to i32
  call void @__asan_store4_noabort(i32 %442)
  store i32 -1, ptr %441, align 4
  %443 = ptrtoint ptr %ctrl.i142.i.i.i to i32
  call void @__asan_store4_noabort(i32 %443)
  store i32 1, ptr %ctrl.i142.i.i.i, align 4
  %444 = ptrtoint ptr %439 to i32
  call void @__asan_store4_noabort(i32 %444)
  store i32 1, ptr %439, align 4
  %445 = ptrtoint ptr %440 to i32
  call void @__asan_store4_noabort(i32 %445)
  store i32 6, ptr %440, align 4
  %call.i143.i.i.i = call fastcc i32 @dle_dfi_ctrl(ptr noundef %rtwdev, ptr noundef nonnull %ctrl.i142.i.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i143.i.i.i)
  %tobool.not.i144.i.i.i = icmp eq i32 %call.i143.i.i.i, 0
  br i1 %tobool.not.i144.i.i.i, label %do.end72.i.i.i, label %do.end67.i.i.i

do.end67.i.i.i:                                   ; preds = %for.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %446 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %446)
  %447 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %447, ptr noundef nonnull @.str.280, i32 noundef %call.i143.i.i.i) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ctrl.i142.i.i.i) #7
  %448 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %448)
  %449 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %449, ptr noundef nonnull @.str.259, ptr noundef nonnull @.str.260) #10
  br label %rtw89_mac_dump_qta_lost.exit.i.i

do.end72.i.i.i:                                   ; preds = %for.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %450 = ptrtoint ptr %441 to i32
  call void @__asan_load4_noabort(i32 %450)
  %451 = load i32, ptr %441, align 4
  %conv.i.i.i.i = and i32 %451, 4095
  %and33.i.i.i.i = lshr i32 %451, 16
  %conv35.i.i.i.i = and i32 %and33.i.i.i.i, 4095
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ctrl.i142.i.i.i) #7
  %452 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %452)
  %453 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %453, ptr noundef nonnull @.str.272, i32 noundef %conv.i.i.i.i, i32 noundef %conv35.i.i.i.i) #10
  br label %rtw89_mac_dump_qta_lost.exit.i.i

rtw89_mac_dump_qta_lost.exit.i.i:                 ; preds = %do.end72.i.i.i, %do.end67.i.i.i
  %454 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %454)
  %455 = load ptr, ptr %hci.i, align 8
  %read32.i.i.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %455, i32 0, i32 9
  %456 = ptrtoint ptr %read32.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %456)
  %457 = load ptr, ptr %read32.i.i.i.i, align 4
  %call.i148.i.i.i = tail call i32 %457(ptr noundef %rtwdev, i32 noundef 36952) #7
  %458 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %458)
  %459 = load ptr, ptr %dev.i, align 4
  %and97.i.i.i = and i32 %call.i148.i.i.i, 4095
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %459, ptr noundef nonnull @.str.275, i32 noundef %and97.i.i.i) #10
  %460 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %460)
  %461 = load ptr, ptr %dev.i, align 4
  %and119.i.i.i = lshr i32 %call.i148.i.i.i, 16
  %shr120.i.i.i = and i32 %and119.i.i.i, 4095
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %461, ptr noundef nonnull @.str.278, i32 noundef %shr120.i.i.i) #10
  tail call fastcc void @dump_err_status_dispatcher(ptr noundef %rtwdev) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ctrl.i.i.i) #7
  br label %do.end395.i

do.end395.i:                                      ; preds = %rtw89_mac_dump_qta_lost.exit.i.i, %if.then391.i.do.end395.i_crit_edge, %if.end388.i.do.end395.i_crit_edge
  %462 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %462)
  %463 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %463, ptr noundef nonnull @.str.238) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end395.i, %if.end27.cleanup_crit_edge, %do.end26
  %retval.0 = phi i32 [ -110, %do.end26 ], [ %call.i49, %if.end27.cleanup_crit_edge ], [ %call.i49, %do.end395.i ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw89_fw_st_dbg_dump(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtw89_mac_set_err_status(ptr noundef %rtwdev, i32 noundef %err) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %err)
  %cmp = icmp ugt i32 %err, 20
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.9, i32 noundef %err) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call i64 @ktime_get() #7
  %add.i = add i64 %call, 100000000
  tail call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 471) #7
  %hci.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 7
  %2 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hci.i, align 8
  %read32.i57 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %read32.i57 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %read32.i57, align 4
  %call.i58 = tail call i32 %5(ptr noundef %rtwdev, i32 noundef 352) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i58)
  %cmp1559 = icmp eq i32 %call.i58, 0
  br i1 %cmp1559, label %if.end.if.end34_crit_edge, label %if.end.land.lhs.true_crit_edge

if.end.land.lhs.true_crit_edge:                   ; preds = %if.end
  br label %land.lhs.true

if.end.if.end34_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34

land.lhs.true:                                    ; preds = %if.then25.land.lhs.true_crit_edge, %if.end.land.lhs.true_crit_edge
  %call18 = tail call i64 @ktime_get() #7
  call void @__sanitizer_cov_trace_cmp8(i64 %call18, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call18, %add.i
  br i1 %cmp3.i, label %if.then21, label %if.then25

if.then21:                                        ; preds = %land.lhs.true
  %6 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hci.i, align 8
  %read32.i50 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %7, i32 0, i32 9
  %8 = ptrtoint ptr %read32.i50 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %read32.i50, align 4
  %call.i51 = tail call i32 %9(ptr noundef %rtwdev, i32 noundef 352) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i51)
  %phi.cmp = icmp eq i32 %call.i51, 0
  br i1 %phi.cmp, label %if.then21.if.end34_crit_edge, label %do.end32

if.then21.if.end34_crit_edge:                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34

if.then25:                                        ; preds = %land.lhs.true
  tail call void @usleep_range_state(i32 noundef 251, i32 noundef 1000, i32 noundef 2) #7
  %10 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hci.i, align 8
  %read32.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %11, i32 0, i32 9
  %12 = ptrtoint ptr %read32.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %read32.i, align 4
  %call.i = tail call i32 %13(ptr noundef %rtwdev, i32 noundef 352) #7
  %cmp15 = icmp eq i32 %call.i, 0
  br i1 %cmp15, label %if.then25.if.end34_crit_edge, label %if.then25.land.lhs.true_crit_edge

if.then25.land.lhs.true_crit_edge:                ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true

if.then25.if.end34_crit_edge:                     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34

do.end32:                                         ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #9
  %dev33 = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 1
  %14 = ptrtoint ptr %dev33 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev33, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.12) #10
  br label %cleanup

if.end34:                                         ; preds = %if.then25.if.end34_crit_edge, %if.then21.if.end34_crit_edge, %if.end.if.end34_crit_edge
  %16 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hci.i, align 8
  %write32.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %17, i32 0, i32 12
  %18 = ptrtoint ptr %write32.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %write32.i, align 4
  tail call void %19(ptr noundef %rtwdev, i32 noundef 360, i32 noundef %err) #7
  %20 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hci.i, align 8
  %write32.i54 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %21, i32 0, i32 12
  %22 = ptrtoint ptr %write32.i54 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %write32.i54, align 4
  tail call void %23(ptr noundef %rtwdev, i32 noundef 352, i32 noundef 1) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end34, %do.end32, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -14, %do.end32 ], [ 0, %if.end34 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw89_mac_power_mode_change(ptr noundef %rtwdev, i1 noundef zeroext %enter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %enter, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  %ps_mode.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 52
  %0 = ptrtoint ptr %ps_mode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ps_mode.i, align 8
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.455)
  switch i32 %1, label %sw.default.i [
    i32 1, label %if.then.if.end_crit_edge
    i32 2, label %sw.bb1.i
    i32 3, label %sw.bb2.i
  ]

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

sw.bb1.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

sw.bb2.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

sw.default.i:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end:                                           ; preds = %sw.default.i, %sw.bb2.i, %sw.bb1.i, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  %cmp.i = phi i1 [ true, %sw.default.i ], [ false, %sw.bb2.i ], [ false, %sw.bb1.i ], [ true, %if.then.if.end_crit_edge ], [ true, %entry.if.end_crit_edge ]
  %cmp.i40 = phi i1 [ false, %sw.default.i ], [ true, %sw.bb2.i ], [ true, %sw.bb1.i ], [ false, %if.then.if.end_crit_edge ], [ false, %entry.if.end_crit_edge ]
  %state.0 = phi i32 [ 0, %sw.default.i ], [ 6, %sw.bb2.i ], [ 5, %sw.bb1.i ], [ 3, %if.then.if.end_crit_edge ], [ 0, %entry.if.end_crit_edge ]
  %hci.i.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 7
  %3 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hci.i.i, align 8
  %read16.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %4, i32 0, i32 8
  %5 = ptrtoint ptr %read16.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %read16.i.i, align 4
  %call.i.i = tail call zeroext i16 %6(ptr noundef %rtwdev, i32 noundef 484) #7
  %7 = and i16 %call.i.i, -32768
  %rpwm_seq_num.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 5, i32 3
  %8 = ptrtoint ptr %rpwm_seq_num.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %rpwm_seq_num.i, align 4
  %10 = add i8 %9, 1
  %11 = and i8 %10, 3
  store i8 %11, ptr %rpwm_seq_num.i, align 4
  %conv27.i = zext i8 %11 to i16
  %shl.i = shl nuw nsw i16 %conv27.i, 12
  %12 = or i16 %shl.i, %7
  %13 = trunc i32 %state.0 to i16
  %14 = or i16 %12, %13
  %conv34.i = xor i16 %14, -32768
  %15 = or i16 %conv34.i, 16384
  %spec.select = select i1 %cmp.i, i16 %15, i16 %conv34.i
  %rpwm_addr.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 7, i32 2
  %16 = ptrtoint ptr %rpwm_addr.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %rpwm_addr.i, align 8
  %18 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hci.i.i, align 8
  %write16.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %19, i32 0, i32 11
  %20 = ptrtoint ptr %write16.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %write16.i.i, align 4
  tail call void %21(ptr noundef %rtwdev, i32 noundef %17, i16 noundef zeroext %spec.select) #7
  %call1 = tail call i64 @ktime_get() #7
  %add.i = add i64 %call1, 15000000
  %conv.i = zext i1 %cmp.i40 to i32
  %cpwm_seq_num.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 5, i32 4
  br label %for.cond

for.cond:                                         ; preds = %cond.false, %if.end
  %22 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %hci.i.i, align 8
  %read32.i.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %23, i32 0, i32 9
  %24 = ptrtoint ptr %read32.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %read32.i.i.i, align 4
  %call.i.i.i = tail call i32 %25(ptr noundef %rtwdev, i32 noundef 488) #7
  %call.i.i.lobit.i = lshr i32 %call.i.i.i, 31
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i.lobit.i, i32 %conv.i)
  %cmp7.not.i = icmp ne i32 %call.i.i.lobit.i, %conv.i
  %brmerge.i = or i1 %cmp.i40, %cmp7.not.i
  br i1 %brmerge.i, label %rtw89_mac_check_cpwm_state.exit, label %if.end13.i

if.end13.i:                                       ; preds = %for.cond
  %26 = ptrtoint ptr %rpwm_seq_num.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %rpwm_seq_num.i, align 4
  %28 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %hci.i.i, align 8
  %read16.i.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %29, i32 0, i32 8
  %30 = ptrtoint ptr %read16.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %read16.i.i.i, align 4
  %call.i.i59.i = tail call zeroext i16 %31(ptr noundef %rtwdev, i32 noundef 33136) #7
  %32 = lshr i16 %call.i.i59.i, 8
  %33 = trunc i16 %32 to i8
  %34 = and i8 %33, 3
  call void @__sanitizer_cov_trace_cmp1(i8 %27, i8 %34)
  %cmp18.not.i = icmp eq i8 %27, %34
  br i1 %cmp18.not.i, label %if.end21.i, label %if.end13.i.land.lhs.true_crit_edge

if.end13.i.land.lhs.true_crit_edge:               ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true

if.end21.i:                                       ; preds = %if.end13.i
  %35 = ptrtoint ptr %cpwm_seq_num.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %cpwm_seq_num.i, align 1
  %37 = add i8 %36, 1
  %38 = and i8 %37, 3
  store i8 %38, ptr %cpwm_seq_num.i, align 1
  %39 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %hci.i.i, align 8
  %read16.i.i63.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %40, i32 0, i32 8
  %41 = ptrtoint ptr %read16.i.i63.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %read16.i.i63.i, align 4
  %call.i.i64.i = tail call zeroext i16 %42(ptr noundef %rtwdev, i32 noundef 33136) #7
  %43 = lshr i16 %call.i.i64.i, 12
  %44 = ptrtoint ptr %cpwm_seq_num.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %cpwm_seq_num.i, align 1
  %46 = trunc i16 %43 to i8
  %47 = and i8 %46, 3
  call void @__sanitizer_cov_trace_cmp1(i8 %45, i8 %47)
  %cmp33.not.i = icmp eq i8 %45, %47
  br i1 %cmp33.not.i, label %if.end36.i, label %if.end21.i.land.lhs.true_crit_edge

if.end21.i.land.lhs.true_crit_edge:               ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true

if.end36.i:                                       ; preds = %if.end21.i
  %48 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %hci.i.i, align 8
  %read16.i.i70.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %49, i32 0, i32 8
  %50 = ptrtoint ptr %read16.i.i70.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %read16.i.i70.i, align 4
  %call.i.i71.i = tail call zeroext i16 %51(ptr noundef %rtwdev, i32 noundef 33136) #7
  %52 = and i16 %call.i.i71.i, 7
  %conv39.i = zext i16 %52 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %state.0, i32 %conv39.i)
  %cmp40.not.i.not = icmp eq i32 %state.0, %conv39.i
  br i1 %cmp40.not.i.not, label %if.end36.i.if.end25_crit_edge, label %if.end36.i.land.lhs.true_crit_edge

if.end36.i.land.lhs.true_crit_edge:               ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true

if.end36.i.if.end25_crit_edge:                    ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end25

rtw89_mac_check_cpwm_state.exit:                  ; preds = %for.cond
  br i1 %cmp7.not.i, label %rtw89_mac_check_cpwm_state.exit.land.lhs.true_crit_edge, label %rtw89_mac_check_cpwm_state.exit.if.end25_crit_edge

rtw89_mac_check_cpwm_state.exit.if.end25_crit_edge: ; preds = %rtw89_mac_check_cpwm_state.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end25

rtw89_mac_check_cpwm_state.exit.land.lhs.true_crit_edge: ; preds = %rtw89_mac_check_cpwm_state.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %rtw89_mac_check_cpwm_state.exit.land.lhs.true_crit_edge, %if.end36.i.land.lhs.true_crit_edge, %if.end21.i.land.lhs.true_crit_edge, %if.end13.i.land.lhs.true_crit_edge
  %call8 = tail call i64 @ktime_get() #7
  %cmp3.i = icmp sgt i64 %call8, %add.i
  br i1 %cmp3.i, label %if.then10, label %cond.false

if.then10:                                        ; preds = %land.lhs.true
  %53 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %hci.i.i, align 8
  %read32.i.i.i47 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %54, i32 0, i32 9
  %55 = ptrtoint ptr %read32.i.i.i47 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %read32.i.i.i47, align 4
  %call.i.i.i48 = tail call i32 %56(ptr noundef %rtwdev, i32 noundef 488) #7
  %call.i.i.lobit.i49 = lshr i32 %call.i.i.i48, 31
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i.lobit.i49, i32 %conv.i)
  %cmp7.not.i51 = icmp ne i32 %call.i.i.lobit.i49, %conv.i
  %brmerge.i52 = or i1 %cmp.i40, %cmp7.not.i51
  br i1 %brmerge.i52, label %rtw89_mac_check_cpwm_state.exit71, label %if.end13.i58

if.end13.i58:                                     ; preds = %if.then10
  %57 = ptrtoint ptr %rpwm_seq_num.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %rpwm_seq_num.i, align 4
  %59 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %hci.i.i, align 8
  %read16.i.i.i55 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %60, i32 0, i32 8
  %61 = ptrtoint ptr %read16.i.i.i55 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %read16.i.i.i55, align 4
  %call.i.i59.i56 = tail call zeroext i16 %62(ptr noundef %rtwdev, i32 noundef 33136) #7
  %63 = lshr i16 %call.i.i59.i56, 8
  %64 = trunc i16 %63 to i8
  %65 = and i8 %64, 3
  call void @__sanitizer_cov_trace_cmp1(i8 %58, i8 %65)
  %cmp18.not.i57 = icmp eq i8 %58, %65
  br i1 %cmp18.not.i57, label %if.end21.i63, label %if.end13.i58.do.end_crit_edge

if.end13.i58.do.end_crit_edge:                    ; preds = %if.end13.i58
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.end21.i63:                                     ; preds = %if.end13.i58
  %66 = ptrtoint ptr %cpwm_seq_num.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %cpwm_seq_num.i, align 1
  %68 = add i8 %67, 1
  %69 = and i8 %68, 3
  store i8 %69, ptr %cpwm_seq_num.i, align 1
  %70 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %hci.i.i, align 8
  %read16.i.i63.i60 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %71, i32 0, i32 8
  %72 = ptrtoint ptr %read16.i.i63.i60 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %read16.i.i63.i60, align 4
  %call.i.i64.i61 = tail call zeroext i16 %73(ptr noundef %rtwdev, i32 noundef 33136) #7
  %74 = lshr i16 %call.i.i64.i61, 12
  %75 = ptrtoint ptr %cpwm_seq_num.i to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %cpwm_seq_num.i, align 1
  %77 = trunc i16 %74 to i8
  %78 = and i8 %77, 3
  call void @__sanitizer_cov_trace_cmp1(i8 %76, i8 %78)
  %cmp33.not.i62 = icmp eq i8 %76, %78
  br i1 %cmp33.not.i62, label %if.end36.i69, label %if.end21.i63.do.end_crit_edge

if.end21.i63.do.end_crit_edge:                    ; preds = %if.end21.i63
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.end36.i69:                                     ; preds = %if.end21.i63
  %79 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %hci.i.i, align 8
  %read16.i.i70.i64 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %80, i32 0, i32 8
  %81 = ptrtoint ptr %read16.i.i70.i64 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %read16.i.i70.i64, align 4
  %call.i.i71.i65 = tail call zeroext i16 %82(ptr noundef %rtwdev, i32 noundef 33136) #7
  %83 = and i16 %call.i.i71.i65, 7
  %conv39.i66 = zext i16 %83 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %state.0, i32 %conv39.i66)
  %cmp40.not.i67.not = icmp eq i32 %state.0, %conv39.i66
  br i1 %cmp40.not.i67.not, label %if.end36.i69.if.end25_crit_edge, label %if.end36.i69.do.end_crit_edge

if.end36.i69.do.end_crit_edge:                    ; preds = %if.end36.i69
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.end36.i69.if.end25_crit_edge:                  ; preds = %if.end36.i69
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end25

rtw89_mac_check_cpwm_state.exit71:                ; preds = %if.then10
  br i1 %cmp7.not.i51, label %rtw89_mac_check_cpwm_state.exit71.do.end_crit_edge, label %rtw89_mac_check_cpwm_state.exit71.if.end25_crit_edge

rtw89_mac_check_cpwm_state.exit71.if.end25_crit_edge: ; preds = %rtw89_mac_check_cpwm_state.exit71
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end25

rtw89_mac_check_cpwm_state.exit71.do.end_crit_edge: ; preds = %rtw89_mac_check_cpwm_state.exit71
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

cond.false:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %84 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %84(i32 noundef 214748000) #7
  br label %for.cond

do.end:                                           ; preds = %rtw89_mac_check_cpwm_state.exit71.do.end_crit_edge, %if.end36.i69.do.end_crit_edge, %if.end21.i63.do.end_crit_edge, %if.end13.i58.do.end_crit_edge
  %dev = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 1
  %85 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %dev, align 4
  %cond24 = select i1 %enter, ptr @.str.16, ptr @.str.17
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %86, ptr noundef nonnull @.str.14, ptr noundef nonnull %cond24) #10
  br label %if.end25

if.end25:                                         ; preds = %do.end, %rtw89_mac_check_cpwm_state.exit71.if.end25_crit_edge, %if.end36.i69.if.end25_crit_edge, %rtw89_mac_check_cpwm_state.exit.if.end25_crit_edge, %if.end36.i.if.end25_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw89_mac_pwr_off(ptr noundef %rtwdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @rtw89_mac_power_switch(ptr noundef %rtwdev, i1 noundef zeroext false)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rtw89_mac_power_switch(ptr noundef %rtwdev, i1 noundef zeroext %on) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %chip1 = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 3
  %0 = ptrtoint ptr %chip1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip1, align 4
  %pwr_on_seq = getelementptr inbounds %struct.rtw89_chip_info, ptr %1, i32 0, i32 21
  %pwr_off_seq = getelementptr inbounds %struct.rtw89_chip_info, ptr %1, i32 0, i32 22
  %cfg_seq.0.in = select i1 %on, ptr %pwr_on_seq, ptr %pwr_off_seq
  %2 = ptrtoint ptr %cfg_seq.0.in to i32
  call void @__asan_load4_noabort(i32 %2)
  %cfg_seq.0 = load ptr, ptr %cfg_seq.0.in, align 4
  %flags = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 26
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %flags, align 4
  %5 = and i32 %4, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool3.not = icmp eq i32 %5, 0
  br i1 %tobool3.not, label %entry.if.end5_crit_edge, label %if.then4

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

if.then4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__rtw89_leave_ps_mode(ptr noundef %rtwdev) #7
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %entry.if.end5_crit_edge
  %hci.i.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 7
  %6 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hci.i.i, align 8
  %read32.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %7, i32 0, i32 9
  %8 = ptrtoint ptr %read32.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %read32.i.i, align 4
  %call.i.i = tail call i32 %9(ptr noundef %rtwdev, i32 noundef 1008) #7
  %10 = and i32 %call.i.i, 768
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %10)
  %cmp = icmp eq i32 %10, 256
  %or.cond = select i1 %on, i1 %cmp, i1 false
  br i1 %or.cond, label %do.end, label %if.end12

do.end:                                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 1
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.288) #10
  br label %cleanup

if.end12:                                         ; preds = %if.end5
  %13 = ptrtoint ptr %cfg_seq.0 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cfg_seq.0, align 4
  %tobool.not11.i = icmp eq ptr %14, null
  br i1 %tobool.not11.i, label %if.end12.if.end16_crit_edge, label %for.body.lr.ph.i

if.end12.if.end16_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16

for.body.lr.ph.i:                                 ; preds = %if.end12
  %cv.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 4, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %15 = phi ptr [ %14, %for.body.lr.ph.i ], [ %83, %for.inc.i.for.body.i_crit_edge ]
  %cfg_seq.addr.012.i = phi ptr [ %cfg_seq.0, %for.body.lr.ph.i ], [ %incdec.ptr.i, %for.inc.i.for.body.i_crit_edge ]
  %16 = ptrtoint ptr %cv.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %cv.i, align 4
  %conv.i = zext i8 %17 to i32
  %shl.i = shl nuw i32 1, %conv.i
  %conv1.i = trunc i32 %shl.i to i8
  %cmd10.i.i = getelementptr inbounds %struct.rtw89_pwr_cfg, ptr %15, i32 0, i32 3
  %18 = ptrtoint ptr %cmd10.i.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %bf.load11.i.i = load i8, ptr %cmd10.i.i, align 2
  %bf.clear12.i.i = and i8 %bf.load11.i.i, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %bf.clear12.i.i)
  %cmp.not14.i.i = icmp eq i8 %bf.clear12.i.i, 3
  br i1 %cmp.not14.i.i, label %for.body.i.for.inc.i_crit_edge, label %for.body.i.for.body.i.i_crit_edge

for.body.i.for.body.i.i_crit_edge:                ; preds = %for.body.i
  br label %for.body.i.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.i.for.body.i.i_crit_edge
  %conv18.in.i.i = phi i8 [ %bf.clear.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %bf.clear12.i.i, %for.body.i.for.body.i.i_crit_edge ]
  %bf.load17.i.i = phi i8 [ %bf.load.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %bf.load11.i.i, %for.body.i.for.body.i.i_crit_edge ]
  %cur_cfg.015.i.i = phi ptr [ %incdec.ptr.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %15, %for.body.i.for.body.i.i_crit_edge ]
  %conv18.i.i = zext i8 %conv18.in.i.i to i32
  %intf_msk2.i.i = getelementptr inbounds %struct.rtw89_pwr_cfg, ptr %cur_cfg.015.i.i, i32 0, i32 2
  %19 = ptrtoint ptr %intf_msk2.i.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %intf_msk2.i.i, align 1
  %21 = and i8 %20, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool.not.i.i = icmp eq i8 %21, 0
  br i1 %tobool.not.i.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %lor.lhs.false.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i

lor.lhs.false.i.i:                                ; preds = %for.body.i.i
  %cv_msk5.i.i = getelementptr inbounds %struct.rtw89_pwr_cfg, ptr %cur_cfg.015.i.i, i32 0, i32 1
  %22 = ptrtoint ptr %cv_msk5.i.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %cv_msk5.i.i, align 2
  %and81.i.i = and i8 %23, %conv1.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and81.i.i)
  %tobool9.not.i.i = icmp eq i8 %and81.i.i, 0
  br i1 %tobool9.not.i.i, label %lor.lhs.false.i.i.for.inc.i.i_crit_edge, label %if.end.i.i

lor.lhs.false.i.i.for.inc.i.i_crit_edge:          ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i

if.end.i.i:                                       ; preds = %lor.lhs.false.i.i
  %24 = zext i32 %conv18.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.456)
  switch i32 %conv18.i.i, label %if.end.i.i.cleanup_crit_edge [
    i32 0, label %sw.bb.i.i
    i32 1, label %sw.bb34.i.i
    i32 2, label %sw.bb39.i.i
  ]

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb.i.i:                                        ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %25 = ptrtoint ptr %cur_cfg.015.i.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %cur_cfg.015.i.i, align 2
  %conv15.i.i = zext i16 %26 to i32
  %bf.lshr.mask.i.i = and i8 %bf.load17.i.i, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 48, i8 %bf.lshr.mask.i.i)
  %cmp18.i.i = icmp eq i8 %bf.lshr.mask.i.i, 48
  %or.i.i = or i32 %conv15.i.i, -2147483648
  %spec.select.i.i = select i1 %cmp18.i.i, i32 %or.i.i, i32 %conv15.i.i
  %27 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %hci.i.i, align 8
  %read8.i.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %28, i32 0, i32 7
  %29 = ptrtoint ptr %read8.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %read8.i.i.i, align 4
  %call.i.i.i = tail call zeroext i8 %30(ptr noundef %rtwdev, i32 noundef %spec.select.i.i) #7
  %msk.i.i = getelementptr inbounds %struct.rtw89_pwr_cfg, ptr %cur_cfg.015.i.i, i32 0, i32 4
  %31 = ptrtoint ptr %msk.i.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %msk.i.i, align 1
  %neg.i.i = xor i8 %32, -1
  %and24.i.i = and i8 %call.i.i.i, %neg.i.i
  %val26.i.i = getelementptr inbounds %struct.rtw89_pwr_cfg, ptr %cur_cfg.015.i.i, i32 0, i32 5
  %33 = ptrtoint ptr %val26.i.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %val26.i.i, align 2
  %and302.i.i = and i8 %34, %32
  %or323.i.i = or i8 %and302.i.i, %and24.i.i
  %35 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %hci.i.i, align 8
  %write8.i.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %36, i32 0, i32 10
  %37 = ptrtoint ptr %write8.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %write8.i.i.i, align 4
  tail call void %38(ptr noundef %rtwdev, i32 noundef %spec.select.i.i, i8 noundef zeroext %or323.i.i) #7
  br label %for.inc.i.i

sw.bb34.i.i:                                      ; preds = %if.end.i.i
  %bf.lshr.mask.i.i.i = and i8 %bf.load17.i.i, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %bf.lshr.mask.i.i.i)
  %cmp.i.i.i = icmp eq i8 %bf.lshr.mask.i.i.i, 16
  %39 = ptrtoint ptr %cur_cfg.015.i.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %cur_cfg.015.i.i, align 2
  %conv3.i.i.i = zext i16 %40 to i32
  %or.i.i.i = or i32 %conv3.i.i.i, -2147483648
  %cond.i.i.i = select i1 %cmp.i.i.i, i32 %or.i.i.i, i32 %conv3.i.i.i
  %call.i5.i.i = tail call i64 @ktime_get() #7
  %add.i.i.i.i = add i64 %call.i5.i.i, 2000000000
  tail call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 825) #7
  %41 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %hci.i.i, align 8
  %read8.i98.i.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %42, i32 0, i32 7
  %43 = ptrtoint ptr %read8.i98.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %read8.i98.i.i.i, align 4
  %call.i99.i.i.i = tail call zeroext i8 %44(ptr noundef %rtwdev, i32 noundef %cond.i.i.i) #7
  %val17.i.i.i = getelementptr inbounds %struct.rtw89_pwr_cfg, ptr %cur_cfg.015.i.i, i32 0, i32 5
  %45 = ptrtoint ptr %val17.i.i.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %val17.i.i.i, align 2
  %xor83100.i.i.i = xor i8 %46, %call.i99.i.i.i
  %msk.i.i.i = getelementptr inbounds %struct.rtw89_pwr_cfg, ptr %cur_cfg.015.i.i, i32 0, i32 4
  %47 = ptrtoint ptr %msk.i.i.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %msk.i.i.i, align 1
  %and84101.i.i.i = and i8 %xor83100.i.i.i, %48
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and84101.i.i.i)
  %tobool.not102.i.i.i = icmp eq i8 %and84101.i.i.i, 0
  br i1 %tobool.not102.i.i.i, label %sw.bb34.i.i.for.end.i.i.i_crit_edge, label %sw.bb34.i.i.land.lhs.true.i.i.i_crit_edge

sw.bb34.i.i.land.lhs.true.i.i.i_crit_edge:        ; preds = %sw.bb34.i.i
  br label %land.lhs.true.i.i.i

sw.bb34.i.i.for.end.i.i.i_crit_edge:              ; preds = %sw.bb34.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.then31.i.i.i.land.lhs.true.i.i.i_crit_edge, %sw.bb34.i.i.land.lhs.true.i.i.i_crit_edge
  %call23.i.i.i = tail call i64 @ktime_get() #7
  call void @__sanitizer_cov_trace_cmp8(i64 %call23.i.i.i, i64 %add.i.i.i.i)
  %cmp3.i.i.i.i = icmp sgt i64 %call23.i.i.i, %add.i.i.i.i
  br i1 %cmp3.i.i.i.i, label %if.then27.i.i.i, label %if.then31.i.i.i

if.then27.i.i.i:                                  ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %49 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %hci.i.i, align 8
  %read8.i88.i.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %50, i32 0, i32 7
  %51 = ptrtoint ptr %read8.i88.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %read8.i88.i.i.i, align 4
  %call.i89.i.i.i = tail call zeroext i8 %52(ptr noundef %rtwdev, i32 noundef %cond.i.i.i) #7
  br label %for.end.i.i.i

if.then31.i.i.i:                                  ; preds = %land.lhs.true.i.i.i
  tail call void @usleep_range_state(i32 noundef 251, i32 noundef 1000, i32 noundef 2) #7
  %53 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %hci.i.i, align 8
  %read8.i.i.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %54, i32 0, i32 7
  %55 = ptrtoint ptr %read8.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %read8.i.i.i.i, align 4
  %call.i.i.i.i = tail call zeroext i8 %56(ptr noundef %rtwdev, i32 noundef %cond.i.i.i) #7
  %57 = ptrtoint ptr %val17.i.i.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %val17.i.i.i, align 2
  %xor83.i.i.i = xor i8 %58, %call.i.i.i.i
  %59 = ptrtoint ptr %msk.i.i.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %msk.i.i.i, align 1
  %and84.i.i.i = and i8 %xor83.i.i.i, %60
  %tobool.not.i.i.i = icmp eq i8 %and84.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.then31.i.i.i.for.end.i.i.i_crit_edge, label %if.then31.i.i.i.land.lhs.true.i.i.i_crit_edge

if.then31.i.i.i.land.lhs.true.i.i.i_crit_edge:    ; preds = %if.then31.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true.i.i.i

if.then31.i.i.i.for.end.i.i.i_crit_edge:          ; preds = %if.then31.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i.i.i

for.end.i.i.i:                                    ; preds = %if.then31.i.i.i.for.end.i.i.i_crit_edge, %if.then27.i.i.i, %sw.bb34.i.i.for.end.i.i.i_crit_edge
  %val.0.i.i.i = phi i8 [ %call.i89.i.i.i, %if.then27.i.i.i ], [ %call.i99.i.i.i, %sw.bb34.i.i.for.end.i.i.i_crit_edge ], [ %call.i.i.i.i, %if.then31.i.i.i.for.end.i.i.i_crit_edge ]
  %61 = ptrtoint ptr %val17.i.i.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %val17.i.i.i, align 2
  %xor3685.i.i.i = xor i8 %62, %val.0.i.i.i
  %63 = ptrtoint ptr %msk.i.i.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %msk.i.i.i, align 1
  %and3986.i.i.i = and i8 %xor3685.i.i.i, %64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and3986.i.i.i)
  %tobool40.not.i.i.i = icmp eq i8 %and3986.i.i.i, 0
  br i1 %tobool40.not.i.i.i, label %for.end.i.i.i.for.inc.i.i_crit_edge, label %pwr_cmd_poll.exit.i.i

for.end.i.i.i.for.inc.i.i_crit_edge:              ; preds = %for.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i

pwr_cmd_poll.exit.i.i:                            ; preds = %for.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv33.i.i.i = zext i8 %val.0.i.i.i to i32
  %dev.i.i.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 1
  %65 = ptrtoint ptr %dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %dev.i.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %66, ptr noundef nonnull @.str.290) #10
  %67 = ptrtoint ptr %dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %dev.i.i.i, align 4
  %69 = ptrtoint ptr %cur_cfg.015.i.i to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %cur_cfg.015.i.i, align 2
  %conv53.i.i.i = zext i16 %70 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %68, ptr noundef nonnull @.str.293, i32 noundef %cond.i.i.i, i32 noundef %conv53.i.i.i) #10
  %71 = ptrtoint ptr %dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %dev.i.i.i, align 4
  %73 = ptrtoint ptr %val17.i.i.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %val17.i.i.i, align 2
  %conv60.i.i.i = zext i8 %74 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %72, ptr noundef nonnull @.str.296, i32 noundef %conv33.i.i.i, i32 noundef %conv60.i.i.i) #10
  br label %cleanup

sw.bb39.i.i:                                      ; preds = %if.end.i.i
  %val40.i.i = getelementptr inbounds %struct.rtw89_pwr_cfg, ptr %cur_cfg.015.i.i, i32 0, i32 5
  %75 = ptrtoint ptr %val40.i.i to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %val40.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %76)
  %cmp42.i.i = icmp eq i8 %76, 0
  %77 = ptrtoint ptr %cur_cfg.015.i.i to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %cur_cfg.015.i.i, align 2
  br i1 %cmp42.i.i, label %cond.false53.i.i, label %if.else.i.i

cond.false53.i.i:                                 ; preds = %sw.bb39.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %79 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  %conv55.i.i = zext i16 %78 to i32
  tail call void %79(i32 noundef %conv55.i.i) #7
  br label %for.inc.i.i

if.else.i.i:                                      ; preds = %sw.bb39.i.i
  %conv58.i.i = zext i16 %78 to i32
  %mul59.i.i = mul nuw nsw i32 %conv58.i.i, 1000
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %mul59.i.i)
  %cmp.i6.i.i = icmp ult i32 %mul59.i.i, 11
  br i1 %cmp.i6.i.i, label %cond.false3.i.i.i, label %if.else.i.i.i

cond.false3.i.i.i:                                ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %80 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %80(i32 noundef %mul59.i.i) #7
  br label %for.inc.i.i

if.else.i.i.i:                                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 20001, i32 %mul59.i.i)
  %cmp5.i.i.i = icmp ult i32 %mul59.i.i, 20001
  br i1 %cmp5.i.i.i, label %if.then6.i.i.i, label %if.else8.i.i.i

if.then6.i.i.i:                                   ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %mul7.i.i.i = mul nuw nsw i32 %conv58.i.i, 2000
  tail call void @usleep_range_state(i32 noundef %mul59.i.i, i32 noundef %mul7.i.i.i, i32 noundef 2) #7
  br label %for.inc.i.i

if.else8.i.i.i:                                   ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i.i.i = add nuw nsw i32 %mul59.i.i, 999
  %div.i.i.i = udiv i32 %sub.i.i.i, 1000
  tail call void @msleep(i32 noundef %div.i.i.i) #7
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.else8.i.i.i, %if.then6.i.i.i, %cond.false3.i.i.i, %cond.false53.i.i, %for.end.i.i.i.for.inc.i.i_crit_edge, %sw.bb.i.i, %lor.lhs.false.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %incdec.ptr.i.i = getelementptr %struct.rtw89_pwr_cfg, ptr %cur_cfg.015.i.i, i32 1
  %cmd.i.i = getelementptr %struct.rtw89_pwr_cfg, ptr %cur_cfg.015.i.i, i32 1, i32 3
  %81 = ptrtoint ptr %cmd.i.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %bf.load.i.i = load i8, ptr %cmd.i.i, align 2
  %bf.clear.i.i = and i8 %bf.load.i.i, 15
  %cmp.not.i.i = icmp eq i8 %bf.clear.i.i, 3
  br i1 %cmp.not.i.i, label %for.inc.i.i.for.inc.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

for.inc.i.i.for.inc.i_crit_edge:                  ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

for.inc.i:                                        ; preds = %for.inc.i.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %incdec.ptr.i = getelementptr ptr, ptr %cfg_seq.addr.012.i, i32 1
  %82 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %incdec.ptr.i, align 4
  %tobool.not.i = icmp eq ptr %83, null
  br i1 %tobool.not.i, label %for.inc.i.if.end16_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.inc.i.if.end16_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16

if.end16:                                         ; preds = %for.inc.i.if.end16_crit_edge, %if.end12.if.end16_crit_edge
  br i1 %on, label %if.then18, label %if.else21

if.then18:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_set_bit(i32 noundef 0, ptr noundef %flags) #7
  %84 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %hci.i.i, align 8
  %write8.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %85, i32 0, i32 10
  %86 = ptrtoint ptr %write8.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %write8.i, align 4
  tail call void %87(ptr noundef %rtwdev, i32 noundef 175, i8 noundef zeroext -127) #7
  br label %cleanup

if.else21:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %flags) #7
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %flags) #7
  %88 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %hci.i.i, align 8
  %write8.i48 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %89, i32 0, i32 10
  %90 = ptrtoint ptr %write8.i48 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %write8.i48, align 4
  tail call void %91(ptr noundef %rtwdev, i32 noundef 175, i8 noundef zeroext -128) #7
  %current_channel = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 4, i32 2
  %92 = ptrtoint ptr %current_channel to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 0, ptr %current_channel, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.else21, %if.then18, %pwr_cmd_poll.exit.i.i, %if.end.i.i.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -16, %do.end ], [ 0, %if.else21 ], [ 0, %if.then18 ], [ -16, %pwr_cmd_poll.exit.i.i ], [ -16, %if.end.i.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtw89_mac_setup_phycap(ptr noundef %rtwdev) local_unnamed_addr #0 align 64 {
entry:
  %h2c_info.i = alloca %struct.rtw89_mac_h2c_info, align 4
  %c2h_info = alloca %struct.rtw89_mac_c2h_info, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %chip2 = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 3
  %0 = ptrtoint ptr %chip2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip2, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %c2h_info) #7
  %2 = call ptr @memset(ptr %c2h_info, i32 0, i32 20)
  %c2hreg = getelementptr inbounds %struct.rtw89_mac_c2h_info, ptr %c2h_info, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %h2c_info.i) #7
  %3 = call ptr @memset(ptr %h2c_info.i, i32 0, i32 20)
  %4 = ptrtoint ptr %h2c_info.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 3, ptr %h2c_info.i, align 4
  %call.i = call i32 @rtw89_fw_msg_reg(ptr noundef %rtwdev, ptr noundef nonnull %h2c_info.i, ptr noundef nonnull %c2h_info) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.rtw89_mac_read_phycap.exit.thread_crit_edge

entry.rtw89_mac_read_phycap.exit.thread_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtw89_mac_read_phycap.exit.thread

if.end.i:                                         ; preds = %entry
  %5 = ptrtoint ptr %c2h_info to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %c2h_info, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %6)
  %cmp.not.i = icmp eq i8 %6, 3
  br i1 %cmp.not.i, label %if.end, label %if.end.i.rtw89_mac_read_phycap.exit.thread_crit_edge

if.end.i.rtw89_mac_read_phycap.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtw89_mac_read_phycap.exit.thread

rtw89_mac_read_phycap.exit.thread:                ; preds = %if.end.i.rtw89_mac_read_phycap.exit.thread_crit_edge, %entry.rtw89_mac_read_phycap.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ -22, %if.end.i.rtw89_mac_read_phycap.exit.thread_crit_edge ], [ %call.i, %entry.rtw89_mac_read_phycap.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %h2c_info.i) #7
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %h2c_info.i) #7
  %7 = ptrtoint ptr %c2hreg to i32
  call void @__asan_loadN_noabort(i32 %7, i32 9)
  %bf.load = load i72, ptr %c2hreg, align 4
  %bf.lshr = lshr i72 %bf.load, 32
  %8 = and i72 %bf.load, 1095216660480
  %tobool3.not = icmp eq i72 %8, 0
  %tx_nss15 = getelementptr inbounds %struct.rtw89_chip_info, ptr %1, i32 0, i32 10
  %9 = ptrtoint ptr %tx_nss15 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %tx_nss15, align 1
  %11 = trunc i72 %bf.lshr to i32
  %conv8 = and i32 %11, 255
  %conv9 = zext i8 %10 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv8, i32 %conv9)
  %cmp = icmp ult i32 %conv8, %conv9
  %conv = trunc i72 %bf.lshr to i8
  %cond = select i1 %cmp, i8 %conv, i8 %10
  %cond18 = select i1 %tobool3.not, i8 %10, i8 %cond
  %tx_nss20 = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 4, i32 11
  %12 = ptrtoint ptr %tx_nss20 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %cond18, ptr %tx_nss20, align 4
  %bf.lshr22 = lshr i72 %bf.load, 48
  %13 = and i72 %bf.load, 71776119061217280
  %tobool25.not = icmp eq i72 %13, 0
  %rx_nss44 = getelementptr inbounds %struct.rtw89_chip_info, ptr %1, i32 0, i32 11
  %14 = ptrtoint ptr %rx_nss44 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %rx_nss44, align 2
  %.pre = trunc i72 %bf.lshr22 to i32
  %.pre95 = and i32 %.pre, 255
  %conv34 = zext i8 %15 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %.pre95, i32 %conv34)
  %cmp35 = icmp ult i32 %.pre95, %conv34
  %conv31 = trunc i72 %bf.lshr22 to i8
  %cond42 = select i1 %cmp35, i8 %conv31, i8 %15
  %cond47 = select i1 %tobool25.not, i8 %15, i8 %cond42
  %rx_nss49 = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 4, i32 12
  %16 = ptrtoint ptr %rx_nss49 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %cond47, ptr %rx_nss49, align 1
  %conv51 = zext i8 %cond18 to i32
  %17 = trunc i72 %bf.lshr to i32
  %bf.cast55 = and i32 %17, 255
  %tx_nss56 = getelementptr inbounds %struct.rtw89_chip_info, ptr %1, i32 0, i32 10
  %18 = ptrtoint ptr %tx_nss56 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %tx_nss56, align 1
  %conv57 = zext i8 %19 to i32
  %conv59 = zext i8 %cond47 to i32
  %rx_nss64 = getelementptr inbounds %struct.rtw89_chip_info, ptr %1, i32 0, i32 11
  %20 = ptrtoint ptr %rx_nss64 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %rx_nss64, align 2
  %conv65 = zext i8 %21 to i32
  call void (ptr, i32, ptr, ...) @__rtw89_debug(ptr noundef %rtwdev, i32 noundef 4096, ptr noundef nonnull @.str.18, i32 noundef %conv51, i32 noundef %bf.cast55, i32 noundef %conv57, i32 noundef %conv59, i32 noundef %.pre95, i32 noundef %conv65) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %rtw89_mac_read_phycap.exit.thread
  %retval.0 = phi i32 [ 0, %if.end ], [ %retval.0.i.ph, %rtw89_mac_read_phycap.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %c2h_info) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__rtw89_debug(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtw89_mac_stop_sch_tx(ptr noundef %rtwdev, i8 noundef zeroext %mac_idx, ptr nocapture noundef writeonly %tx_en, i32 noundef %sel) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %mac_idx)
  %cmp.i = icmp eq i8 %mac_idx, 0
  %cond.i = select i1 %cmp.i, i32 49992, i32 58184
  %hci.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 7
  %0 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hci.i, align 8
  %read16.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %read16.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %read16.i, align 4
  %call.i = tail call zeroext i16 %3(ptr noundef %rtwdev, i32 noundef %cond.i) #7
  %4 = ptrtoint ptr %tx_en to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %call.i, ptr %tx_en, align 2
  %5 = zext i32 %sel to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.457)
  switch i32 %sel, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb3
    i32 2, label %sw.bb8
    i32 3, label %sw.bb13
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %call2 = tail call fastcc i32 @rtw89_set_hw_sch_tx_en(ptr noundef %rtwdev, i8 noundef zeroext %mac_idx, i16 noundef zeroext 0, i16 noundef zeroext -1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %sw.bb.sw.epilog_crit_edge, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  %call4 = tail call fastcc i32 @rtw89_set_hw_sch_tx_en(ptr noundef %rtwdev, i8 noundef zeroext %mac_idx, i16 noundef zeroext 0, i16 noundef zeroext 2048)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %sw.bb3.sw.epilog_crit_edge, label %sw.bb3.cleanup_crit_edge

sw.bb3.cleanup_crit_edge:                         ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb3.sw.epilog_crit_edge:                       ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry
  %call9 = tail call fastcc i32 @rtw89_set_hw_sch_tx_en(ptr noundef %rtwdev, i8 noundef zeroext %mac_idx, i16 noundef zeroext 0, i16 noundef zeroext 256)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %sw.bb8.sw.epilog_crit_edge, label %sw.bb8.cleanup_crit_edge

sw.bb8.cleanup_crit_edge:                         ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb8.sw.epilog_crit_edge:                       ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb13:                                          ; preds = %entry
  %call14 = tail call fastcc i32 @rtw89_set_hw_sch_tx_en(ptr noundef %rtwdev, i8 noundef zeroext %mac_idx, i16 noundef zeroext 0, i16 noundef zeroext -1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %sw.bb13.sw.epilog_crit_edge, label %sw.bb13.cleanup_crit_edge

sw.bb13.cleanup_crit_edge:                        ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb13.sw.epilog_crit_edge:                      ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb13.sw.epilog_crit_edge, %sw.bb8.sw.epilog_crit_edge, %sw.bb3.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.bb13.cleanup_crit_edge, %sw.bb8.cleanup_crit_edge, %sw.bb3.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ %call2, %sw.bb.cleanup_crit_edge ], [ %call4, %sw.bb3.cleanup_crit_edge ], [ %call9, %sw.bb8.cleanup_crit_edge ], [ %call14, %sw.bb13.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rtw89_set_hw_sch_tx_en(ptr noundef %rtwdev, i8 noundef zeroext %mac_idx, i16 noundef zeroext %tx_en, i16 noundef zeroext %tx_en_mask) unnamed_addr #0 align 64 {
entry:
  %c2h_info.i = alloca %struct.rtw89_mac_c2h_info, align 4
  %h2c_info.i = alloca %struct.rtw89_mac_h2c_info, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %mac_idx)
  %cmp.i = icmp eq i8 %mac_idx, 0
  %cond.i = select i1 %cmp.i, i32 49992, i32 58184
  br i1 %cmp.i, label %entry.if.end17.i_crit_edge, label %if.else6.i

entry.if.end17.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17.i

if.else6.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %mac_idx)
  %cmp11.i = icmp eq i8 %mac_idx, 1
  br i1 %cmp11.i, label %if.else6.i.if.end17.i_crit_edge, label %if.else6.i.cleanup_crit_edge

if.else6.i.cleanup_crit_edge:                     ; preds = %if.else6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.else6.i.if.end17.i_crit_edge:                  ; preds = %if.else6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17.i

if.end17.i:                                       ; preds = %if.else6.i.if.end17.i_crit_edge, %entry.if.end17.i_crit_edge
  %.sink.i = phi i32 [ 49152, %entry.if.end17.i_crit_edge ], [ 128, %if.else6.i.if.end17.i_crit_edge ]
  %hci.i37.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 7
  %0 = ptrtoint ptr %hci.i37.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hci.i37.i, align 8
  %read32.i38.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %read32.i38.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %read32.i38.i, align 4
  %call.i39.i = tail call i32 %3(ptr noundef %rtwdev, i32 noundef %.sink.i) #7
  %4 = zext i32 %call.i39.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.458)
  switch i32 %call.i39.i, label %lor.lhs.false22.i [
    i32 -353703190, label %if.end17.i.cleanup_crit_edge
    i32 -559038737, label %if.end17.i.cleanup_crit_edge33
  ]

if.end17.i.cleanup_crit_edge33:                   ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end17.i.cleanup_crit_edge:                     ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false22.i:                                ; preds = %if.end17.i
  %and.i = and i32 %call.i39.i, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp23.not.i.not = icmp eq i32 %and.i, 0
  br i1 %cmp23.not.i.not, label %lor.lhs.false22.i.cleanup_crit_edge, label %if.end

lor.lhs.false22.i.cleanup_crit_edge:              ; preds = %lor.lhs.false22.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false22.i
  %flags = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 26
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %flags, align 4
  %7 = and i32 %6, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool3.not = icmp eq i32 %7, 0
  br i1 %tobool3.not, label %if.end6, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %c2h_info.i) #7
  %8 = call ptr @memset(ptr %c2h_info.i, i32 0, i32 20)
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %h2c_info.i) #7
  %9 = call ptr @memset(ptr %h2c_info.i, i32 0, i32 20)
  %h2creg1.i = getelementptr inbounds %struct.rtw89_mac_h2c_info, ptr %h2c_info.i, i32 0, i32 2
  %10 = ptrtoint ptr %h2c_info.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 5, ptr %h2c_info.i, align 4
  %content_len.i = getelementptr inbounds %struct.rtw89_mac_h2c_info, ptr %h2c_info.i, i32 0, i32 1
  %11 = ptrtoint ptr %content_len.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 6, ptr %content_len.i, align 1
  %12 = zext i16 %tx_en to i64
  %bf.shl.i = shl nuw nsw i64 %12, 32
  %13 = zext i16 %tx_en_mask to i64
  %bf.shl4.i = shl nuw nsw i64 %13, 16
  %bf.set6.i = or i64 %bf.shl4.i, %bf.shl.i
  %bf.value9.i = zext i8 %mac_idx to i64
  %bf.shl10.i = shl nuw nsw i64 %bf.value9.i, 15
  %bf.set12.i = or i64 %bf.set6.i, %bf.shl10.i
  %14 = ptrtoint ptr %h2creg1.i to i32
  call void @__asan_storeN_noabort(i32 %14, i32 8)
  store i64 %bf.set12.i, ptr %h2creg1.i, align 4
  %call.i = call i32 @rtw89_fw_msg_reg(ptr noundef %rtwdev, ptr noundef nonnull %h2c_info.i, ptr noundef nonnull %c2h_info.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then4.rtw89_hw_sch_tx_en_h2c.exit_crit_edge

if.then4.rtw89_hw_sch_tx_en_h2c.exit_crit_edge:   ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtw89_hw_sch_tx_en_h2c.exit

if.end.i:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %c2h_info.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %c2h_info.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %16)
  %cmp.not.i = icmp eq i8 %16, 4
  %..i = select i1 %cmp.not.i, i32 0, i32 -22
  br label %rtw89_hw_sch_tx_en_h2c.exit

rtw89_hw_sch_tx_en_h2c.exit:                      ; preds = %if.end.i, %if.then4.rtw89_hw_sch_tx_en_h2c.exit_crit_edge
  %retval.0.i28 = phi i32 [ %call.i, %if.then4.rtw89_hw_sch_tx_en_h2c.exit_crit_edge ], [ %..i, %if.end.i ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %h2c_info.i) #7
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %c2h_info.i) #7
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %17 = ptrtoint ptr %hci.i37.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %hci.i37.i, align 8
  %read16.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %18, i32 0, i32 8
  %19 = ptrtoint ptr %read16.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %read16.i, align 4
  %call.i29 = tail call zeroext i16 %20(ptr noundef %rtwdev, i32 noundef %cond.i) #7
  %neg = xor i16 %tx_en_mask, -1
  %and = and i16 %call.i29, %neg
  %and1127 = and i16 %tx_en_mask, %tx_en
  %or = or i16 %and, %and1127
  %21 = ptrtoint ptr %hci.i37.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %hci.i37.i, align 8
  %write16.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %22, i32 0, i32 11
  %23 = ptrtoint ptr %write16.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %write16.i, align 4
  tail call void %24(ptr noundef %rtwdev, i32 noundef %cond.i, i16 noundef zeroext %or) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %rtw89_hw_sch_tx_en_h2c.exit, %lor.lhs.false22.i.cleanup_crit_edge, %if.end17.i.cleanup_crit_edge, %if.end17.i.cleanup_crit_edge33, %if.else6.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i28, %rtw89_hw_sch_tx_en_h2c.exit ], [ 0, %if.end6 ], [ -14, %lor.lhs.false22.i.cleanup_crit_edge ], [ -14, %if.end17.i.cleanup_crit_edge ], [ -14, %if.end17.i.cleanup_crit_edge33 ], [ -22, %if.else6.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtw89_mac_resume_sch_tx(ptr noundef %rtwdev, i8 noundef zeroext %mac_idx, i16 noundef zeroext %tx_en) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @rtw89_set_hw_sch_tx_en(ptr noundef %rtwdev, i8 noundef zeroext %mac_idx, i16 noundef zeroext %tx_en, i16 noundef zeroext -1)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw89_mac_enable_bb_rf(ptr noundef %rtwdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %hci.i.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 7
  %0 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hci.i.i, align 8
  %read8.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %read8.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %read8.i.i, align 4
  %call.i.i = tail call zeroext i8 %3(ptr noundef %rtwdev, i32 noundef 2) #7
  %or5.i = or i8 %call.i.i, 3
  %4 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hci.i.i, align 8
  %write8.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %5, i32 0, i32 10
  %6 = ptrtoint ptr %write8.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %write8.i.i, align 4
  tail call void %7(ptr noundef %rtwdev, i32 noundef 2, i8 noundef zeroext %or5.i) #7
  %8 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hci.i.i, align 8
  %read32.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %9, i32 0, i32 9
  %10 = ptrtoint ptr %read32.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %read32.i.i, align 4
  %call.i.i4 = tail call i32 %11(ptr noundef %rtwdev, i32 noundef 752) #7
  %or.i = or i32 %call.i.i4, 33410
  %12 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hci.i.i, align 8
  %write32.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %13, i32 0, i32 12
  %14 = ptrtoint ptr %write32.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %write32.i.i, align 4
  tail call void %15(ptr noundef %rtwdev, i32 noundef 752, i32 noundef %or.i) #7
  %16 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hci.i.i, align 8
  %read8.i.i6 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %17, i32 0, i32 7
  %18 = ptrtoint ptr %read8.i.i6 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %read8.i.i6, align 4
  %call.i.i7 = tail call zeroext i8 %19(ptr noundef %rtwdev, i32 noundef 32832) #7
  %or5.i8 = or i8 %call.i.i7, 8
  %20 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hci.i.i, align 8
  %write8.i.i9 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %21, i32 0, i32 10
  %22 = ptrtoint ptr %write8.i.i9 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %write8.i.i9, align 4
  tail call void %23(ptr noundef %rtwdev, i32 noundef 32832, i8 noundef zeroext %or5.i8) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw89_mac_disable_bb_rf(ptr noundef %rtwdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %hci.i.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 7
  %0 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hci.i.i, align 8
  %read8.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %read8.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %read8.i.i, align 4
  %call.i.i = tail call zeroext i8 %3(ptr noundef %rtwdev, i32 noundef 2) #7
  %and.i = and i8 %call.i.i, -4
  %4 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hci.i.i, align 8
  %write8.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %5, i32 0, i32 10
  %6 = ptrtoint ptr %write8.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %write8.i.i, align 4
  tail call void %7(ptr noundef %rtwdev, i32 noundef 2, i8 noundef zeroext %and.i) #7
  %8 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hci.i.i, align 8
  %read32.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %9, i32 0, i32 9
  %10 = ptrtoint ptr %read32.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %read32.i.i, align 4
  %call.i.i4 = tail call i32 %11(ptr noundef %rtwdev, i32 noundef 752) #7
  %and.i5 = and i32 %call.i.i4, -33411
  %12 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hci.i.i, align 8
  %write32.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %13, i32 0, i32 12
  %14 = ptrtoint ptr %write32.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %write32.i.i, align 4
  tail call void %15(ptr noundef %rtwdev, i32 noundef 752, i32 noundef %and.i5) #7
  %16 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hci.i.i, align 8
  %read8.i.i7 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %17, i32 0, i32 7
  %18 = ptrtoint ptr %read8.i.i7 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %read8.i.i7, align 4
  %call.i.i8 = tail call zeroext i8 %19(ptr noundef %rtwdev, i32 noundef 32832) #7
  %and.i9 = and i8 %call.i.i8, -9
  %20 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hci.i.i, align 8
  %write8.i.i10 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %21, i32 0, i32 10
  %22 = ptrtoint ptr %write8.i.i10 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %write8.i.i10, align 4
  tail call void %23(ptr noundef %rtwdev, i32 noundef 32832, i8 noundef zeroext %and.i9) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtw89_mac_partial_init(ptr noundef %rtwdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @rtw89_mac_power_switch(ptr noundef %rtwdev, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end5_crit_edge, label %if.then

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

if.then:                                          ; preds = %entry
  %call1 = tail call fastcc i32 @rtw89_mac_power_switch(ptr noundef %rtwdev, i1 noundef zeroext false)
  %call2 = tail call fastcc i32 @rtw89_mac_power_switch(ptr noundef %rtwdev, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.then.if.end5_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

if.end5:                                          ; preds = %if.then.if.end5_crit_edge, %entry.if.end5_crit_edge
  %hci.i.i.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 7
  %0 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hci.i.i.i, align 8
  %read32.i.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %read32.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %read32.i.i.i, align 4
  %call.i.i.i = tail call i32 %3(ptr noundef %rtwdev, i32 noundef 33664) #7
  %or.i.i = or i32 %call.i.i.i, 3
  %4 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hci.i.i.i, align 8
  %write32.i.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %5, i32 0, i32 12
  %6 = ptrtoint ptr %write32.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %write32.i.i.i, align 4
  tail call void %7(ptr noundef %rtwdev, i32 noundef 33664, i32 noundef %or.i.i) #7
  %8 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hci.i.i.i, align 8
  %mac_pre_init = getelementptr inbounds %struct.rtw89_hci_ops, ptr %9, i32 0, i32 13
  %10 = ptrtoint ptr %mac_pre_init to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mac_pre_init, align 4
  %tobool6.not = icmp eq ptr %11, null
  br i1 %tobool6.not, label %if.end5.if.end15_crit_edge, label %if.then7

if.end5.if.end15_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15

if.then7:                                         ; preds = %if.end5
  %call11 = tail call i32 %11(ptr noundef %rtwdev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.then7.if.end15_crit_edge, label %if.then7.cleanup_crit_edge

if.then7.cleanup_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then7.if.end15_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15

if.end15:                                         ; preds = %if.then7.if.end15_crit_edge, %if.end5.if.end15_crit_edge
  %12 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hci.i.i.i, align 8
  %write32.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %13, i32 0, i32 12
  %14 = ptrtoint ptr %write32.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %write32.i.i, align 4
  tail call void %15(ptr noundef %rtwdev, i32 noundef 33792, i32 noundef 1615069184) #7
  %16 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hci.i.i.i, align 8
  %write32.i24.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %17, i32 0, i32 12
  %18 = ptrtoint ptr %write32.i24.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %write32.i24.i, align 4
  tail call void %19(ptr noundef %rtwdev, i32 noundef 33796, i32 noundef 262144) #7
  %qta_mode.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 5, i32 2
  %20 = ptrtoint ptr %qta_mode.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %qta_mode.i, align 8
  %call.i = tail call fastcc i32 @dle_init(ptr noundef %rtwdev, i32 noundef 1, i32 noundef %21) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 1
  %22 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.298, i32 noundef %call.i) #10
  br label %cleanup

if.end.i:                                         ; preds = %if.end15
  %call1.i = tail call fastcc i32 @hfc_init(ptr noundef %rtwdev, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end19, label %do.end6.i

do.end6.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev7.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 1
  %24 = ptrtoint ptr %dev7.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev7.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.301, i32 noundef %call1.i) #10
  br label %cleanup

if.end19:                                         ; preds = %if.end.i
  %flags.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 26
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %flags.i) #7
  %26 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %hci.i.i.i, align 8
  %read32.i.i.i49 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %27, i32 0, i32 9
  %28 = ptrtoint ptr %read32.i.i.i49 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %read32.i.i.i49, align 4
  %call.i.i.i50 = tail call i32 %29(ptr noundef %rtwdev, i32 noundef 136) #7
  %and.i.i = and i32 %call.i.i.i50, -3
  %30 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %hci.i.i.i, align 8
  %write32.i.i.i51 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %31, i32 0, i32 12
  %32 = ptrtoint ptr %write32.i.i.i51 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %write32.i.i.i51, align 4
  tail call void %33(ptr noundef %rtwdev, i32 noundef 136, i32 noundef %and.i.i) #7
  %34 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %hci.i.i.i, align 8
  %read32.i.i4.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %35, i32 0, i32 9
  %36 = ptrtoint ptr %read32.i.i4.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %read32.i.i4.i, align 4
  %call.i.i5.i = tail call i32 %37(ptr noundef %rtwdev, i32 noundef 8) #7
  %and.i6.i = and i32 %call.i.i5.i, -16385
  %38 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %hci.i.i.i, align 8
  %write32.i.i7.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %39, i32 0, i32 12
  %40 = ptrtoint ptr %write32.i.i7.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %write32.i.i7.i, align 4
  tail call void %41(ptr noundef %rtwdev, i32 noundef 8, i32 noundef %and.i6.i) #7
  %42 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %hci.i.i.i, align 8
  %read32.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %43, i32 0, i32 9
  %44 = ptrtoint ptr %read32.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %read32.i.i, align 4
  %call.i.i = tail call i32 %45(ptr noundef %rtwdev, i32 noundef 136) #7
  %and.i = and i32 %call.i.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i53 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i53, label %if.end23, label %if.end19.cleanup_crit_edge

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end23:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  %46 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %hci.i.i.i, align 8
  %write32.i.i54 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %47, i32 0, i32 12
  %48 = ptrtoint ptr %write32.i.i54 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %write32.i.i54, align 4
  tail call void %49(ptr noundef %rtwdev, i32 noundef 352, i32 noundef 0) #7
  %50 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %hci.i.i.i, align 8
  %write32.i3.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %51, i32 0, i32 12
  %52 = ptrtoint ptr %write32.i3.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %write32.i3.i, align 4
  tail call void %53(ptr noundef %rtwdev, i32 noundef 356, i32 noundef 0) #7
  %54 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %hci.i.i.i, align 8
  %read32.i.i.i55 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %55, i32 0, i32 9
  %56 = ptrtoint ptr %read32.i.i.i55 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %read32.i.i.i55, align 4
  %call.i.i.i56 = tail call i32 %57(ptr noundef %rtwdev, i32 noundef 8) #7
  %or.i.i57 = or i32 %call.i.i.i56, 16384
  %58 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %hci.i.i.i, align 8
  %write32.i.i.i58 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %59, i32 0, i32 12
  %60 = ptrtoint ptr %write32.i.i.i58 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %write32.i.i.i58, align 4
  tail call void %61(ptr noundef %rtwdev, i32 noundef 8, i32 noundef %or.i.i57) #7
  %62 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %hci.i.i.i, align 8
  %read32.i5.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %63, i32 0, i32 9
  %64 = ptrtoint ptr %read32.i5.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %read32.i5.i, align 4
  %call.i6.i = tail call i32 %65(ptr noundef %rtwdev, i32 noundef 480) #7
  %and.i.i59 = and i32 %call.i6.i, -232
  %or.i = or i32 %and.i.i59, 1
  %66 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %hci.i.i.i, align 8
  %write32.i8.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %67, i32 0, i32 12
  %68 = ptrtoint ptr %write32.i8.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %write32.i8.i, align 4
  tail call void %69(ptr noundef %rtwdev, i32 noundef 480, i32 noundef %or.i) #7
  %70 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %hci.i.i.i, align 8
  %read16.i.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %71, i32 0, i32 8
  %72 = ptrtoint ptr %read16.i.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %read16.i.i.i, align 4
  %call.i.i10.i = tail call zeroext i16 %73(ptr noundef %rtwdev, i32 noundef 486) #7
  %74 = and i16 %call.i.i10.i, -8
  %75 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %hci.i.i.i, align 8
  %write16.i.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %76, i32 0, i32 11
  %77 = ptrtoint ptr %write16.i.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %write16.i.i.i, align 4
  tail call void %78(ptr noundef %rtwdev, i32 noundef 486, i16 noundef zeroext %74) #7
  %79 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %hci.i.i.i, align 8
  %read32.i.i12.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %80, i32 0, i32 9
  %81 = ptrtoint ptr %read32.i.i12.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %read32.i.i12.i, align 4
  %call.i.i13.i = tail call i32 %82(ptr noundef %rtwdev, i32 noundef 136) #7
  %or.i14.i = or i32 %call.i.i13.i, 2
  %83 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %hci.i.i.i, align 8
  %write32.i.i15.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %84, i32 0, i32 12
  %85 = ptrtoint ptr %write32.i.i15.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %write32.i.i15.i, align 4
  tail call void %86(ptr noundef %rtwdev, i32 noundef 136, i32 noundef %or.i14.i) #7
  %call24 = tail call i32 @rtw89_fw_download(ptr noundef %rtwdev, i32 noundef 1) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %if.end19.cleanup_crit_edge, %do.end6.i, %do.end.i, %if.then7.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.then.cleanup_crit_edge ], [ %call11, %if.then7.cleanup_crit_edge ], [ %call24, %if.end23 ], [ -14, %if.end19.cleanup_crit_edge ], [ %call1.i, %do.end6.i ], [ %call.i, %do.end.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw89_fw_download(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtw89_mac_init(ptr noundef %rtwdev) local_unnamed_addr #0 align 64 {
entry:
  %c2h_info.i.i149.i.i.i = alloca %struct.rtw89_mac_c2h_info, align 4
  %h2c_info.i.i150.i.i.i = alloca %struct.rtw89_mac_h2c_info, align 4
  %c2h_info.i.i.i.i.i = alloca %struct.rtw89_mac_c2h_info, align 4
  %h2c_info.i.i.i.i.i = alloca %struct.rtw89_mac_h2c_info, align 4
  %ctrl_para.i.i.i.i = alloca %struct.rtw89_cpuio_ctrl, align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rtw89_mac_partial_init(ptr noundef %rtwdev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.fail_crit_edge

entry.fail_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %fail

if.end:                                           ; preds = %entry
  %hci.i.i.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 7
  %0 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hci.i.i.i, align 8
  %read8.i.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %read8.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %read8.i.i.i, align 4
  %call.i.i.i = tail call zeroext i8 %3(ptr noundef %rtwdev, i32 noundef 2) #7
  %or5.i.i = or i8 %call.i.i.i, 3
  %4 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hci.i.i.i, align 8
  %write8.i.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %5, i32 0, i32 10
  %6 = ptrtoint ptr %write8.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %write8.i.i.i, align 4
  tail call void %7(ptr noundef %rtwdev, i32 noundef 2, i8 noundef zeroext %or5.i.i) #7
  %8 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hci.i.i.i, align 8
  %read32.i.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %9, i32 0, i32 9
  %10 = ptrtoint ptr %read32.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %read32.i.i.i, align 4
  %call.i.i4.i = tail call i32 %11(ptr noundef %rtwdev, i32 noundef 752) #7
  %or.i.i = or i32 %call.i.i4.i, 33410
  %12 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hci.i.i.i, align 8
  %write32.i.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %13, i32 0, i32 12
  %14 = ptrtoint ptr %write32.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %write32.i.i.i, align 4
  tail call void %15(ptr noundef %rtwdev, i32 noundef 752, i32 noundef %or.i.i) #7
  %16 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hci.i.i.i, align 8
  %read8.i.i6.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %17, i32 0, i32 7
  %18 = ptrtoint ptr %read8.i.i6.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %read8.i.i6.i, align 4
  %call.i.i7.i = tail call zeroext i8 %19(ptr noundef %rtwdev, i32 noundef 32832) #7
  %or5.i8.i = or i8 %call.i.i7.i, 8
  %20 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hci.i.i.i, align 8
  %write8.i.i9.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %21, i32 0, i32 10
  %22 = ptrtoint ptr %write8.i.i9.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %write8.i.i9.i, align 4
  tail call void %23(ptr noundef %rtwdev, i32 noundef 32832, i8 noundef zeroext %or5.i8.i) #7
  %24 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %hci.i.i.i, align 8
  %write32.i.i.i36 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %25, i32 0, i32 12
  %26 = ptrtoint ptr %write32.i.i.i36 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %write32.i.i.i36, align 4
  tail call void %27(ptr noundef %rtwdev, i32 noundef 33792, i32 noundef 2071789568) #7
  %28 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %hci.i.i.i, align 8
  %write32.i2.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %29, i32 0, i32 12
  %30 = ptrtoint ptr %write32.i2.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %write32.i2.i.i, align 4
  tail call void %31(ptr noundef %rtwdev, i32 noundef 33796, i32 noundef 186449920) #7
  %32 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %hci.i.i.i, align 8
  %read32.i.i11.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %33, i32 0, i32 9
  %34 = ptrtoint ptr %read32.i.i11.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %read32.i.i11.i.i, align 4
  %call.i.i12.i.i = tail call i32 %35(ptr noundef %rtwdev, i32 noundef 49156) #7
  %or.i13.i.i = or i32 %call.i.i12.i.i, 1073741887
  %36 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %hci.i.i.i, align 8
  %write32.i.i14.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %37, i32 0, i32 12
  %38 = ptrtoint ptr %write32.i.i14.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %write32.i.i14.i.i, align 4
  tail call void %39(ptr noundef %rtwdev, i32 noundef 49156, i32 noundef %or.i13.i.i) #7
  %40 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %hci.i.i.i, align 8
  %read32.i.i16.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %41, i32 0, i32 9
  %42 = ptrtoint ptr %read32.i.i16.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %read32.i.i16.i.i, align 4
  %call.i.i17.i.i = tail call i32 %43(ptr noundef %rtwdev, i32 noundef 49152) #7
  %or.i18.i.i = or i32 %call.i.i17.i.i, 1879048255
  %44 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %hci.i.i.i, align 8
  %write32.i.i19.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %45, i32 0, i32 12
  %46 = ptrtoint ptr %write32.i.i19.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %write32.i.i19.i.i, align 4
  tail call void %47(ptr noundef %rtwdev, i32 noundef 49152, i32 noundef %or.i18.i.i) #7
  %48 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %hci.i.i.i, align 8
  %read32.i.i.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %49, i32 0, i32 9
  %50 = ptrtoint ptr %read32.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %read32.i.i.i.i, align 4
  %call.i.i.i.i = tail call i32 %51(ptr noundef %rtwdev, i32 noundef 512) #7
  %or.i.i.i = or i32 %call.i.i.i.i, 57344
  %52 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %hci.i.i.i, align 8
  %write32.i.i.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %53, i32 0, i32 12
  %54 = ptrtoint ptr %write32.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %write32.i.i.i.i, align 4
  tail call void %55(ptr noundef %rtwdev, i32 noundef 512, i32 noundef %or.i.i.i) #7
  %qta_mode1.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 5, i32 2
  %56 = ptrtoint ptr %qta_mode1.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %qta_mode1.i, align 8
  %call.i.i = tail call fastcc i32 @dle_init(ptr noundef %rtwdev, i32 noundef %57, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %do.end.i.i

do.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 1
  %58 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dev.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %59, ptr noundef nonnull @.str.350, i32 noundef %call.i.i) #10
  br label %do.end.i

if.end.i.i:                                       ; preds = %if.end
  %call1.i.i = tail call fastcc i32 @hfc_init(ptr noundef %rtwdev, i1 noundef zeroext true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end8.i.i, label %do.end6.i.i

do.end6.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev7.i.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 1
  %60 = ptrtoint ptr %dev7.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dev7.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %61, ptr noundef nonnull @.str.353, i32 noundef %call1.i.i) #10
  br label %do.end.i

if.end8.i.i:                                      ; preds = %if.end.i.i
  %62 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %hci.i.i.i, align 8
  %read32.i38.i.i.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %63, i32 0, i32 9
  %64 = ptrtoint ptr %read32.i38.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %read32.i38.i.i.i.i, align 4
  %call.i39.i.i.i.i = tail call i32 %65(ptr noundef %rtwdev, i32 noundef 33792) #7
  %66 = zext i32 %call.i39.i.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %66, ptr @__sancov_gen_cov_switch_values.459)
  switch i32 %call.i39.i.i.i.i, label %lor.lhs.false22.i.i.i.i [
    i32 -353703190, label %if.end8.i.i.do.end14.i.i_crit_edge
    i32 -559038737, label %if.end8.i.i.do.end14.i.i_crit_edge46
  ]

if.end8.i.i.do.end14.i.i_crit_edge46:             ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end14.i.i

if.end8.i.i.do.end14.i.i_crit_edge:               ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end14.i.i

lor.lhs.false22.i.i.i.i:                          ; preds = %if.end8.i.i
  %and.i.i.i.i = and i32 %call.i39.i.i.i.i, 1610612736
  call void @__sanitizer_cov_trace_const_cmp4(i32 1610612736, i32 %and.i.i.i.i)
  %cmp23.not.i.i.i.i = icmp eq i32 %and.i.i.i.i, 1610612736
  br i1 %cmp23.not.i.i.i.i, label %if.end.i.i.i, label %lor.lhs.false22.i.i.i.i.do.end14.i.i_crit_edge

lor.lhs.false22.i.i.i.i.do.end14.i.i_crit_edge:   ; preds = %lor.lhs.false22.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end14.i.i

if.end.i.i.i:                                     ; preds = %lor.lhs.false22.i.i.i.i
  %67 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %hci.i.i.i, align 8
  %read8.i.i.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %68, i32 0, i32 7
  %69 = ptrtoint ptr %read8.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %read8.i.i.i.i, align 4
  %call.i.i.i.i37 = tail call zeroext i8 %70(ptr noundef %rtwdev, i32 noundef 40464) #7
  %71 = or i8 %call.i.i.i.i37, 1
  %72 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %hci.i.i.i, align 8
  %write8.i.i.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %73, i32 0, i32 10
  %74 = ptrtoint ptr %write8.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %write8.i.i.i.i, align 4
  tail call void %75(ptr noundef %rtwdev, i32 noundef 40464, i8 noundef zeroext %71) #7
  %call3.i.i.i = tail call i64 @ktime_get() #7
  %add.i.i.i.i = add i64 %call3.i.i.i, 2000000
  tail call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 1465) #7
  %76 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %hci.i.i.i, align 8
  %read32.i65.i.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %77, i32 0, i32 9
  %78 = ptrtoint ptr %read32.i65.i.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %read32.i65.i.i.i, align 4
  %call.i5666.i.i.i = tail call i32 %79(ptr noundef %rtwdev, i32 noundef 40464) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i5666.i.i.i)
  %tobool15.not67.i.i.i = icmp sgt i32 %call.i5666.i.i.i, -1
  br i1 %tobool15.not67.i.i.i, label %if.end.i.i.i.land.lhs.true.i.i.i_crit_edge, label %if.end.i.i.i.if.end16.i.i_crit_edge

if.end.i.i.i.if.end16.i.i_crit_edge:              ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16.i.i

if.end.i.i.i.land.lhs.true.i.i.i_crit_edge:       ; preds = %if.end.i.i.i
  br label %land.lhs.true.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.then27.i.i.i.land.lhs.true.i.i.i_crit_edge, %if.end.i.i.i.land.lhs.true.i.i.i_crit_edge
  %call19.i.i.i = tail call i64 @ktime_get() #7
  call void @__sanitizer_cov_trace_cmp8(i64 %call19.i.i.i, i64 %add.i.i.i.i)
  %cmp3.i.i.i.i = icmp sgt i64 %call19.i.i.i, %add.i.i.i.i
  br i1 %cmp3.i.i.i.i, label %for.end.i.i.i, label %if.then27.i.i.i

if.then27.i.i.i:                                  ; preds = %land.lhs.true.i.i.i
  tail call void @usleep_range_state(i32 noundef 1, i32 noundef 1, i32 noundef 2) #7
  %80 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %hci.i.i.i, align 8
  %read32.i.i.i.i38 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %81, i32 0, i32 9
  %82 = ptrtoint ptr %read32.i.i.i.i38 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %read32.i.i.i.i38, align 4
  %call.i56.i.i.i = tail call i32 %83(ptr noundef %rtwdev, i32 noundef 40464) #7
  %tobool15.not.i.i.i = icmp sgt i32 %call.i56.i.i.i, -1
  br i1 %tobool15.not.i.i.i, label %if.then27.i.i.i.land.lhs.true.i.i.i_crit_edge, label %if.then27.i.i.i.if.end16.i.i_crit_edge

if.then27.i.i.i.if.end16.i.i_crit_edge:           ; preds = %if.then27.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16.i.i

if.then27.i.i.i.land.lhs.true.i.i.i_crit_edge:    ; preds = %if.then27.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true.i.i.i

for.end.i.i.i:                                    ; preds = %land.lhs.true.i.i.i
  %84 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %hci.i.i.i, align 8
  %read32.i59.i.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %85, i32 0, i32 9
  %86 = ptrtoint ptr %read32.i59.i.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %read32.i59.i.i.i, align 4
  %call.i60.i.i.i = tail call i32 %87(ptr noundef %rtwdev, i32 noundef 40464) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i60.i.i.i)
  %tobool30.not.inv.i.i.i = icmp slt i32 %call.i60.i.i.i, 0
  br i1 %tobool30.not.inv.i.i.i, label %for.end.i.i.i.if.end16.i.i_crit_edge, label %do.end35.i.i.i

for.end.i.i.i.if.end16.i.i_crit_edge:             ; preds = %for.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16.i.i

do.end35.i.i.i:                                   ; preds = %for.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i.i.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 1
  %88 = ptrtoint ptr %dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %dev.i.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %89, ptr noundef nonnull @.str.364) #10
  br label %do.end14.i.i

do.end14.i.i:                                     ; preds = %do.end35.i.i.i, %lor.lhs.false22.i.i.i.i.do.end14.i.i_crit_edge, %if.end8.i.i.do.end14.i.i_crit_edge, %if.end8.i.i.do.end14.i.i_crit_edge46
  %retval.0.i.ph.i.i = phi i32 [ -14, %lor.lhs.false22.i.i.i.i.do.end14.i.i_crit_edge ], [ -14, %if.end8.i.i.do.end14.i.i_crit_edge ], [ -14, %if.end8.i.i.do.end14.i.i_crit_edge46 ], [ -110, %do.end35.i.i.i ]
  %dev15.i.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 1
  %90 = ptrtoint ptr %dev15.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %dev15.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %91, ptr noundef nonnull @.str.356, i32 noundef %retval.0.i.ph.i.i) #10
  br label %do.end.i

if.end16.i.i:                                     ; preds = %for.end.i.i.i.if.end16.i.i_crit_edge, %if.then27.i.i.i.if.end16.i.i_crit_edge, %if.end.i.i.i.if.end16.i.i_crit_edge
  %92 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %hci.i.i.i, align 8
  %read32.i.i.i.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %93, i32 0, i32 9
  %94 = ptrtoint ptr %read32.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %read32.i.i.i.i.i, align 4
  %call.i.i.i.i.i = tail call i32 %95(ptr noundef %rtwdev, i32 noundef 40464) #7
  %or.i.i.i.i = or i32 %call.i.i.i.i.i, 536870912
  %96 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %hci.i.i.i, align 8
  %write32.i.i.i.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %97, i32 0, i32 12
  %98 = ptrtoint ptr %write32.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %write32.i.i.i.i.i, align 4
  tail call void %99(ptr noundef %rtwdev, i32 noundef 40464, i32 noundef %or.i.i.i.i) #7
  %100 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %hci.i.i.i, align 8
  %read32.i38.i.i2.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %101, i32 0, i32 9
  %102 = ptrtoint ptr %read32.i38.i.i2.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %read32.i38.i.i2.i.i, align 4
  %call.i39.i.i3.i.i = tail call i32 %103(ptr noundef %rtwdev, i32 noundef 33792) #7
  %104 = zext i32 %call.i39.i.i3.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %104, ptr @__sancov_gen_cov_switch_values.460)
  switch i32 %call.i39.i.i3.i.i, label %lor.lhs.false22.i.i6.i.i [
    i32 -353703190, label %if.end16.i.i.do.end22.i.i_crit_edge
    i32 -559038737, label %if.end16.i.i.do.end22.i.i_crit_edge47
  ]

if.end16.i.i.do.end22.i.i_crit_edge47:            ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end22.i.i

if.end16.i.i.do.end22.i.i_crit_edge:              ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end22.i.i

lor.lhs.false22.i.i6.i.i:                         ; preds = %if.end16.i.i
  %and.i.i4.i.i = and i32 %call.i39.i.i3.i.i, 1610612736
  call void @__sanitizer_cov_trace_const_cmp4(i32 1610612736, i32 %and.i.i4.i.i)
  %cmp23.not.i.i5.i.i = icmp eq i32 %and.i.i4.i.i, 1610612736
  br i1 %cmp23.not.i.i5.i.i, label %if.end24.i.i, label %lor.lhs.false22.i.i6.i.i.do.end22.i.i_crit_edge

lor.lhs.false22.i.i6.i.i.do.end22.i.i_crit_edge:  ; preds = %lor.lhs.false22.i.i6.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end22.i.i

do.end22.i.i:                                     ; preds = %lor.lhs.false22.i.i6.i.i.do.end22.i.i_crit_edge, %if.end16.i.i.do.end22.i.i_crit_edge, %if.end16.i.i.do.end22.i.i_crit_edge47
  %dev23.i.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 1
  %105 = ptrtoint ptr %dev23.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %dev23.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %106, ptr noundef nonnull @.str.359, i32 noundef -14) #10
  br label %do.end.i

if.end24.i.i:                                     ; preds = %lor.lhs.false22.i.i6.i.i
  %107 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %hci.i.i.i, align 8
  %write32.i.i.i.i39 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %108, i32 0, i32 12
  %109 = ptrtoint ptr %write32.i.i.i.i39 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %write32.i.i.i.i39, align 4
  tail call void %110(ptr noundef %rtwdev, i32 noundef 39940, i32 noundef 44653205) #7
  %111 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %hci.i.i.i, align 8
  %write32.i7.i.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %112, i32 0, i32 12
  %113 = ptrtoint ptr %write32.i7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %write32.i7.i.i.i, align 4
  tail call void %114(ptr noundef %rtwdev, i32 noundef 39956, i32 noundef 43605) #7
  %115 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %hci.i.i.i, align 8
  %read32.i.i.i7.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %116, i32 0, i32 9
  %117 = ptrtoint ptr %read32.i.i.i7.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %read32.i.i.i7.i.i, align 4
  %call.i.i.i8.i.i = tail call i32 %118(ptr noundef %rtwdev, i32 noundef 39936) #7
  %or.i.i9.i.i = or i32 %call.i.i.i8.i.i, 3
  %119 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %hci.i.i.i, align 8
  %write32.i.i.i10.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %120, i32 0, i32 12
  %121 = ptrtoint ptr %write32.i.i.i10.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %write32.i.i.i10.i.i, align 4
  tail call void %122(ptr noundef %rtwdev, i32 noundef 39936, i32 noundef %or.i.i9.i.i) #7
  %123 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %hci.i.i.i, align 8
  %write32.i9.i.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %124, i32 0, i32 12
  %125 = ptrtoint ptr %write32.i9.i.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %write32.i9.i.i.i, align 4
  tail call void %126(ptr noundef %rtwdev, i32 noundef 40000, i32 noundef 17696240) #7
  %127 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %hci.i.i.i, align 8
  %read32.i38.i.i14.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %128, i32 0, i32 9
  %129 = ptrtoint ptr %read32.i38.i.i14.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %read32.i38.i.i14.i.i, align 4
  %call.i39.i.i15.i.i = tail call i32 %130(ptr noundef %rtwdev, i32 noundef 33792) #7
  %131 = zext i32 %call.i39.i.i15.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %131, ptr @__sancov_gen_cov_switch_values.461)
  switch i32 %call.i39.i.i15.i.i, label %lor.lhs.false22.i.i18.i.i [
    i32 -353703190, label %if.end24.i.i.do.end30.i.i_crit_edge
    i32 -559038737, label %if.end24.i.i.do.end30.i.i_crit_edge48
  ]

if.end24.i.i.do.end30.i.i_crit_edge48:            ; preds = %if.end24.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end30.i.i

if.end24.i.i.do.end30.i.i_crit_edge:              ; preds = %if.end24.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end30.i.i

lor.lhs.false22.i.i18.i.i:                        ; preds = %if.end24.i.i
  %and.i.i16.i.i = and i32 %call.i39.i.i15.i.i, 1610612736
  call void @__sanitizer_cov_trace_const_cmp4(i32 1610612736, i32 %and.i.i16.i.i)
  %cmp23.not.i.i17.i.i = icmp eq i32 %and.i.i16.i.i, 1610612736
  br i1 %cmp23.not.i.i17.i.i, label %if.end.i, label %lor.lhs.false22.i.i18.i.i.do.end30.i.i_crit_edge

lor.lhs.false22.i.i18.i.i.do.end30.i.i_crit_edge: ; preds = %lor.lhs.false22.i.i18.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end30.i.i

do.end30.i.i:                                     ; preds = %lor.lhs.false22.i.i18.i.i.do.end30.i.i_crit_edge, %if.end24.i.i.do.end30.i.i_crit_edge, %if.end24.i.i.do.end30.i.i_crit_edge48
  %dev31.i.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 1
  %132 = ptrtoint ptr %dev31.i.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %dev31.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %133, ptr noundef nonnull @.str.362, i32 noundef -14) #10
  br label %do.end.i

do.end.i:                                         ; preds = %do.end30.i.i, %do.end22.i.i, %do.end14.i.i, %do.end6.i.i, %do.end.i.i
  %retval.0.i.ph.i = phi i32 [ -14, %do.end30.i.i ], [ -14, %do.end22.i.i ], [ %retval.0.i.ph.i.i, %do.end14.i.i ], [ %call1.i.i, %do.end6.i.i ], [ %call.i.i, %do.end.i.i ]
  %dev.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 1
  %134 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %135, ptr noundef nonnull @.str.333, i32 noundef %retval.0.i.ph.i) #10
  br label %fail

if.end.i:                                         ; preds = %lor.lhs.false22.i.i18.i.i
  %136 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %hci.i.i.i, align 8
  %read32.i.i19.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %137, i32 0, i32 9
  %138 = ptrtoint ptr %read32.i.i19.i.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %read32.i.i19.i.i, align 4
  %call.i.i20.i.i = tail call i32 %139(ptr noundef %rtwdev, i32 noundef 40192) #7
  %or3.i.i.i = and i32 %call.i.i20.i.i, -3856
  %and.i.i.i = or i32 %or3.i.i.i, 1807
  %140 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %hci.i.i.i, align 8
  %write32.i.i21.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %141, i32 0, i32 12
  %142 = ptrtoint ptr %write32.i.i21.i.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %write32.i.i21.i.i, align 4
  tail call void %143(ptr noundef %rtwdev, i32 noundef 40192, i32 noundef %and.i.i.i) #7
  %144 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %hci.i.i.i, align 8
  %read32.i20.i.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %145, i32 0, i32 9
  %146 = ptrtoint ptr %read32.i20.i.i.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %read32.i20.i.i.i, align 4
  %call.i21.i.i.i = tail call i32 %147(ptr noundef %rtwdev, i32 noundef 40196) #7
  %or5.i.i.i = or i32 %call.i21.i.i.i, 3
  %148 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %hci.i.i.i, align 8
  %write32.i23.i.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %149, i32 0, i32 12
  %150 = ptrtoint ptr %write32.i23.i.i.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %write32.i23.i.i.i, align 4
  tail call void %151(ptr noundef %rtwdev, i32 noundef 40196, i32 noundef %or5.i.i.i) #7
  %call2.i = tail call fastcc i32 @cmac_init(ptr noundef %rtwdev, i8 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.end9.i, label %do.end7.i

do.end7.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev8.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 1
  %152 = ptrtoint ptr %dev8.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %dev8.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %153, ptr noundef nonnull @.str.336, i32 noundef 0, i32 noundef %call2.i) #10
  br label %fail

if.end9.i:                                        ; preds = %if.end.i
  %mac1.i.i.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 5
  %chip.i.i.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 3
  %154 = ptrtoint ptr %chip.i.i.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %chip.i.i.i, align 4
  %dle_mem.i.i.i = getelementptr inbounds %struct.rtw89_chip_info, ptr %155, i32 0, i32 7
  %156 = ptrtoint ptr %dle_mem.i.i.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %dle_mem.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr %struct.rtw89_dle_mem, ptr %157, i32 %57
  %tobool.not.i.i.i = icmp eq ptr %arrayidx.i.i.i, null
  br i1 %tobool.not.i.i.i, label %if.end9.i.do.end.i79.i_crit_edge, label %if.end.i.i76.i

if.end9.i.do.end.i79.i_crit_edge:                 ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i79.i

if.end.i.i76.i:                                   ; preds = %if.end9.i
  %158 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %arrayidx.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %159, i32 %57)
  %cmp.not.i.i.i = icmp eq i32 %159, %57
  br i1 %cmp.not.i.i.i, label %if.end.i80.i, label %do.end.i.i.i

do.end.i.i.i:                                     ; preds = %if.end.i.i76.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i.i77.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 1
  %160 = ptrtoint ptr %dev.i.i77.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %dev.i.i77.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %161, ptr noundef nonnull @.str.326) #10
  br label %do.end.i79.i

do.end.i79.i:                                     ; preds = %do.end.i.i.i, %if.end9.i.do.end.i79.i_crit_edge
  %dev.i78.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 1
  %162 = ptrtoint ptr %dev.i78.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %dev.i78.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %163, ptr noundef nonnull @.str.303) #10
  br label %if.end20.i

if.end.i80.i:                                     ; preds = %if.end.i.i76.i
  %wde_size.i.i.i = getelementptr %struct.rtw89_dle_mem, ptr %157, i32 %57, i32 1
  %164 = ptrtoint ptr %wde_size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %wde_size.i.i.i, align 4
  %166 = ptrtoint ptr %165 to i32
  call void @__asan_load2_noabort(i32 %166)
  %167 = load i16, ptr %165, align 2
  %wde_pg_size.i.i.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 5, i32 0, i32 1
  %168 = ptrtoint ptr %wde_pg_size.i.i.i to i32
  call void @__asan_store2_noabort(i32 %168)
  store i16 %167, ptr %wde_pg_size.i.i.i, align 4
  %ple_size.i.i.i = getelementptr %struct.rtw89_dle_mem, ptr %157, i32 %57, i32 2
  %169 = ptrtoint ptr %ple_size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %ple_size.i.i.i, align 4
  %171 = ptrtoint ptr %170 to i32
  call void @__asan_load2_noabort(i32 %171)
  %172 = load i16, ptr %170, align 2
  %ple_pg_size.i.i.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 5, i32 0, i32 2
  %173 = ptrtoint ptr %ple_pg_size.i.i.i to i32
  call void @__asan_store2_noabort(i32 %173)
  store i16 %172, ptr %ple_pg_size.i.i.i, align 2
  %174 = ptrtoint ptr %mac1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %174)
  store i32 %57, ptr %mac1.i.i.i, align 4
  %ple_min_qt.i.i.i = getelementptr %struct.rtw89_dle_mem, ptr %157, i32 %57, i32 5
  %175 = ptrtoint ptr %ple_min_qt.i.i.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %ple_min_qt.i.i.i, align 4
  %cma0_dma.i.i.i = getelementptr inbounds %struct.rtw89_ple_quota, ptr %176, i32 0, i32 6
  %177 = ptrtoint ptr %cma0_dma.i.i.i to i32
  call void @__asan_load2_noabort(i32 %177)
  %178 = load i16, ptr %cma0_dma.i.i.i, align 2
  %c0_rx_qta.i.i.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 5, i32 0, i32 3
  %179 = ptrtoint ptr %c0_rx_qta.i.i.i to i32
  call void @__asan_store2_noabort(i32 %179)
  store i16 %178, ptr %c0_rx_qta.i.i.i, align 4
  %180 = load ptr, ptr %ple_min_qt.i.i.i, align 4
  %cma1_dma.i.i.i = getelementptr inbounds %struct.rtw89_ple_quota, ptr %180, i32 0, i32 7
  %181 = ptrtoint ptr %cma1_dma.i.i.i to i32
  call void @__asan_load2_noabort(i32 %181)
  %182 = load i16, ptr %cma1_dma.i.i.i, align 2
  %c1_rx_qta.i.i.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 5, i32 0, i32 4
  %183 = ptrtoint ptr %c1_rx_qta.i.i.i to i32
  call void @__asan_store2_noabort(i32 %183)
  store i16 %182, ptr %c1_rx_qta.i.i.i, align 2
  %184 = load ptr, ptr %ple_min_qt.i.i.i, align 4
  %cma1_dma.i.i = getelementptr inbounds %struct.rtw89_ple_quota, ptr %184, i32 0, i32 7
  %185 = ptrtoint ptr %cma1_dma.i.i to i32
  call void @__asan_load2_noabort(i32 %185)
  %186 = load i16, ptr %cma1_dma.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %186)
  %tobool1.not.i.i = icmp eq i16 %186, 0
  br i1 %tobool1.not.i.i, label %if.end.i80.i.if.end20.i_crit_edge, label %is_qta_dbcc.exit.i

if.end.i80.i.if.end20.i_crit_edge:                ; preds = %if.end.i80.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20.i

is_qta_dbcc.exit.i:                               ; preds = %if.end.i80.i
  %ple_max_qt.i.i = getelementptr %struct.rtw89_dle_mem, ptr %157, i32 %57, i32 6
  %187 = ptrtoint ptr %ple_max_qt.i.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %ple_max_qt.i.i, align 4
  %cma1_dma2.i.i = getelementptr inbounds %struct.rtw89_ple_quota, ptr %188, i32 0, i32 7
  %189 = ptrtoint ptr %cma1_dma2.i.i to i32
  call void @__asan_load2_noabort(i32 %189)
  %190 = load i16, ptr %cma1_dma2.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %190)
  %tobool4.i.not.i = icmp eq i16 %190, 0
  br i1 %tobool4.i.not.i, label %is_qta_dbcc.exit.i.if.end20.i_crit_edge, label %if.then11.i

is_qta_dbcc.exit.i.if.end20.i_crit_edge:          ; preds = %is_qta_dbcc.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20.i

if.then11.i:                                      ; preds = %is_qta_dbcc.exit.i
  %191 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %hci.i.i.i, align 8
  %read16.i.i.i.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %192, i32 0, i32 8
  %193 = ptrtoint ptr %read16.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %read16.i.i.i.i.i, align 4
  %call.i.i.i.i82.i = tail call zeroext i16 %194(ptr noundef %rtwdev, i32 noundef 49992) #7
  %195 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %hci.i.i.i, align 8
  %read32.i38.i.i137.i.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %196, i32 0, i32 9
  %197 = ptrtoint ptr %read32.i38.i.i137.i.i.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %read32.i38.i.i137.i.i.i, align 4
  %call.i39.i.i138.i.i.i = tail call i32 %198(ptr noundef %rtwdev, i32 noundef 49152) #7
  %199 = zext i32 %call.i39.i.i138.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %199, ptr @__sancov_gen_cov_switch_values.462)
  switch i32 %call.i39.i.i138.i.i.i, label %lor.lhs.false22.i.i141.i.i.i [
    i32 -353703190, label %if.then11.i.do.end.i.i87.i_crit_edge
    i32 -559038737, label %if.then11.i.do.end.i.i87.i_crit_edge49
  ]

if.then11.i.do.end.i.i87.i_crit_edge49:           ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i.i87.i

if.then11.i.do.end.i.i87.i_crit_edge:             ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i.i87.i

lor.lhs.false22.i.i141.i.i.i:                     ; preds = %if.then11.i
  %and.i.i139.i.i.i = and i32 %call.i39.i.i138.i.i.i, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i139.i.i.i)
  %cmp23.not.i.not.i140.i.i.i = icmp eq i32 %and.i.i139.i.i.i, 0
  br i1 %cmp23.not.i.not.i140.i.i.i, label %lor.lhs.false22.i.i141.i.i.i.do.end.i.i87.i_crit_edge, label %if.end.i142.i.i.i

lor.lhs.false22.i.i141.i.i.i.do.end.i.i87.i_crit_edge: ; preds = %lor.lhs.false22.i.i141.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i.i87.i

if.end.i142.i.i.i:                                ; preds = %lor.lhs.false22.i.i141.i.i.i
  %flags.i.i.i.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 26
  %200 = ptrtoint ptr %flags.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load volatile i32, ptr %flags.i.i.i.i, align 4
  %202 = and i32 %201, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %202)
  %tobool3.not.i.i.i.i = icmp eq i32 %202, 0
  br i1 %tobool3.not.i.i.i.i, label %rtw89_set_hw_sch_tx_en.exit.thread178.i.i.i, label %if.then4.i.i.i.i

if.then4.i.i.i.i:                                 ; preds = %if.end.i142.i.i.i
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %c2h_info.i.i.i.i.i) #7
  %203 = call ptr @memset(ptr %c2h_info.i.i.i.i.i, i32 0, i32 20)
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %h2c_info.i.i.i.i.i) #7
  %204 = call ptr @memset(ptr %h2c_info.i.i.i.i.i, i32 0, i32 20)
  %h2creg1.i.i.i.i.i = getelementptr inbounds %struct.rtw89_mac_h2c_info, ptr %h2c_info.i.i.i.i.i, i32 0, i32 2
  %205 = ptrtoint ptr %h2c_info.i.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %205)
  store i8 5, ptr %h2c_info.i.i.i.i.i, align 4
  %content_len.i.i.i.i.i = getelementptr inbounds %struct.rtw89_mac_h2c_info, ptr %h2c_info.i.i.i.i.i, i32 0, i32 1
  %206 = ptrtoint ptr %content_len.i.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %206)
  store i8 6, ptr %content_len.i.i.i.i.i, align 1
  %207 = ptrtoint ptr %h2creg1.i.i.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %207, i32 8)
  store i64 4294901760, ptr %h2creg1.i.i.i.i.i, align 4
  %call.i.i143.i.i.i = call i32 @rtw89_fw_msg_reg(ptr noundef %rtwdev, ptr noundef nonnull %h2c_info.i.i.i.i.i, ptr noundef nonnull %c2h_info.i.i.i.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i143.i.i.i)
  %tobool.not.i.i144.i.i.i = icmp eq i32 %call.i.i143.i.i.i, 0
  br i1 %tobool.not.i.i144.i.i.i, label %if.end.i.i146.i.i.i, label %if.then4.i.i.i.i.rtw89_set_hw_sch_tx_en.exit.thread182.i.i.i_crit_edge

if.then4.i.i.i.i.rtw89_set_hw_sch_tx_en.exit.thread182.i.i.i_crit_edge: ; preds = %if.then4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtw89_set_hw_sch_tx_en.exit.thread182.i.i.i

if.end.i.i146.i.i.i:                              ; preds = %if.then4.i.i.i.i
  %208 = ptrtoint ptr %c2h_info.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %208)
  %209 = load i8, ptr %c2h_info.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %209)
  %cmp.not.i.i145.i.i.i = icmp eq i8 %209, 4
  br i1 %cmp.not.i.i145.i.i.i, label %rtw89_set_hw_sch_tx_en.exit.i.i.i, label %if.end.i.i146.i.i.i.rtw89_set_hw_sch_tx_en.exit.thread182.i.i.i_crit_edge

if.end.i.i146.i.i.i.rtw89_set_hw_sch_tx_en.exit.thread182.i.i.i_crit_edge: ; preds = %if.end.i.i146.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtw89_set_hw_sch_tx_en.exit.thread182.i.i.i

rtw89_set_hw_sch_tx_en.exit.thread178.i.i.i:      ; preds = %if.end.i142.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %210 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %hci.i.i.i, align 8
  %read16.i.i147.i.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %211, i32 0, i32 8
  %212 = ptrtoint ptr %read16.i.i147.i.i.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %read16.i.i147.i.i.i, align 4
  %call.i29.i.i.i.i = tail call zeroext i16 %213(ptr noundef %rtwdev, i32 noundef 49992) #7
  %214 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %hci.i.i.i, align 8
  %write16.i.i.i.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %215, i32 0, i32 11
  %216 = ptrtoint ptr %write16.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %write16.i.i.i.i.i, align 4
  tail call void %217(ptr noundef %rtwdev, i32 noundef 49992, i16 noundef zeroext 0) #7
  br label %rtw89_mac_stop_sch_tx.exit.i.i.i

rtw89_set_hw_sch_tx_en.exit.thread182.i.i.i:      ; preds = %if.end.i.i146.i.i.i.rtw89_set_hw_sch_tx_en.exit.thread182.i.i.i_crit_edge, %if.then4.i.i.i.i.rtw89_set_hw_sch_tx_en.exit.thread182.i.i.i_crit_edge
  %retval.0.i28.i.ph.i.i.i = phi i32 [ -22, %if.end.i.i146.i.i.i.rtw89_set_hw_sch_tx_en.exit.thread182.i.i.i_crit_edge ], [ %call.i.i143.i.i.i, %if.then4.i.i.i.i.rtw89_set_hw_sch_tx_en.exit.thread182.i.i.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %h2c_info.i.i.i.i.i) #7
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %c2h_info.i.i.i.i.i) #7
  br label %do.end.i.i87.i

rtw89_set_hw_sch_tx_en.exit.i.i.i:                ; preds = %if.end.i.i146.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %h2c_info.i.i.i.i.i) #7
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %c2h_info.i.i.i.i.i) #7
  br label %rtw89_mac_stop_sch_tx.exit.i.i.i

rtw89_mac_stop_sch_tx.exit.i.i.i:                 ; preds = %rtw89_set_hw_sch_tx_en.exit.i.i.i, %rtw89_set_hw_sch_tx_en.exit.thread178.i.i.i
  %218 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %hci.i.i.i, align 8
  %read32.i.i.i83.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %219, i32 0, i32 9
  %220 = ptrtoint ptr %read32.i.i.i83.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %read32.i.i.i83.i, align 4
  %call.i.i.i84.i = call i32 %221(ptr noundef %rtwdev, i32 noundef 49856) #7
  %222 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %hci.i.i.i, align 8
  %read32.i116.i.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %223, i32 0, i32 9
  %224 = ptrtoint ptr %read32.i116.i.i.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %read32.i116.i.i.i, align 4
  %call.i117.i.i.i = call i32 %225(ptr noundef %rtwdev, i32 noundef 40624) #7
  %226 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %hci.i.i.i, align 8
  %write32.i.i.i85.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %227, i32 0, i32 12
  %228 = ptrtoint ptr %write32.i.i.i85.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %write32.i.i.i85.i, align 4
  call void %229(ptr noundef %rtwdev, i32 noundef 49856, i32 noundef -1) #7
  %230 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %hci.i.i.i, align 8
  %write32.i120.i.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %231, i32 0, i32 12
  %232 = ptrtoint ptr %write32.i120.i.i.i to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %write32.i120.i.i.i, align 4
  call void %233(ptr noundef %rtwdev, i32 noundef 40624, i32 noundef -1) #7
  %234 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %hci.i.i.i, align 8
  %read32.i.1.i.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %235, i32 0, i32 9
  %236 = ptrtoint ptr %read32.i.1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %read32.i.1.i.i.i, align 4
  %call.i.1.i.i.i = call i32 %237(ptr noundef %rtwdev, i32 noundef 49860) #7
  %238 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %hci.i.i.i, align 8
  %read32.i116.1.i.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %239, i32 0, i32 9
  %240 = ptrtoint ptr %read32.i116.1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %read32.i116.1.i.i.i, align 4
  %call.i117.1.i.i.i = call i32 %241(ptr noundef %rtwdev, i32 noundef 40628) #7
  %242 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %hci.i.i.i, align 8
  %write32.i.1.i.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %243, i32 0, i32 12
  %244 = ptrtoint ptr %write32.i.1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %write32.i.1.i.i.i, align 4
  call void %245(ptr noundef %rtwdev, i32 noundef 49860, i32 noundef -1) #7
  %246 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %hci.i.i.i, align 8
  %write32.i120.1.i.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %247, i32 0, i32 12
  %248 = ptrtoint ptr %write32.i120.1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %write32.i120.1.i.i.i, align 4
  call void %249(ptr noundef %rtwdev, i32 noundef 40628, i32 noundef -1) #7
  %250 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %hci.i.i.i, align 8
  %read32.i.2.i.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %251, i32 0, i32 9
  %252 = ptrtoint ptr %read32.i.2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %read32.i.2.i.i.i, align 4
  %call.i.2.i.i.i = call i32 %253(ptr noundef %rtwdev, i32 noundef 49864) #7
  %254 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %hci.i.i.i, align 8
  %read32.i116.2.i.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %255, i32 0, i32 9
  %256 = ptrtoint ptr %read32.i116.2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %read32.i116.2.i.i.i, align 4
  %call.i117.2.i.i.i = call i32 %257(ptr noundef %rtwdev, i32 noundef 40632) #7
  %258 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %hci.i.i.i, align 8
  %write32.i.2.i.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %259, i32 0, i32 12
  %260 = ptrtoint ptr %write32.i.2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %write32.i.2.i.i.i, align 4
  call void %261(ptr noundef %rtwdev, i32 noundef 49864, i32 noundef -1) #7
  %262 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %hci.i.i.i, align 8
  %write32.i120.2.i.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %263, i32 0, i32 12
  %264 = ptrtoint ptr %write32.i120.2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %write32.i120.2.i.i.i, align 4
  call void %265(ptr noundef %rtwdev, i32 noundef 40632, i32 noundef -1) #7
  %266 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %hci.i.i.i, align 8
  %read32.i.3.i.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %267, i32 0, i32 9
  %268 = ptrtoint ptr %read32.i.3.i.i.i to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %read32.i.3.i.i.i, align 4
  %call.i.3.i.i.i = call i32 %269(ptr noundef %rtwdev, i32 noundef 49868) #7
  %270 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %hci.i.i.i, align 8
  %read32.i116.3.i.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %271, i32 0, i32 9
  %272 = ptrtoint ptr %read32.i116.3.i.i.i to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load ptr, ptr %read32.i116.3.i.i.i, align 4
  %call.i117.3.i.i.i = call i32 %273(ptr noundef %rtwdev, i32 noundef 40636) #7
  %274 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load ptr, ptr %hci.i.i.i, align 8
  %write32.i.3.i.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %275, i32 0, i32 12
  %276 = ptrtoint ptr %write32.i.3.i.i.i to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load ptr, ptr %write32.i.3.i.i.i, align 4
  call void %277(ptr noundef %rtwdev, i32 noundef 49868, i32 noundef -1) #7
  %278 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load ptr, ptr %hci.i.i.i, align 8
  %write32.i120.3.i.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %279, i32 0, i32 12
  %280 = ptrtoint ptr %write32.i120.3.i.i.i to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load ptr, ptr %write32.i120.3.i.i.i, align 4
  call void %281(ptr noundef %rtwdev, i32 noundef 40636, i32 noundef -1) #7
  %282 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load ptr, ptr %hci.i.i.i, align 8
  %read32.i38.i.i.i.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %283, i32 0, i32 9
  %284 = ptrtoint ptr %read32.i38.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load ptr, ptr %read32.i38.i.i.i.i.i, align 4
  %call.i39.i.i.i.i.i = call i32 %285(ptr noundef %rtwdev, i32 noundef 49152) #7
  %286 = zext i32 %call.i39.i.i.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %286, ptr @__sancov_gen_cov_switch_values.463)
  switch i32 %call.i39.i.i.i.i.i, label %lor.lhs.false22.i.i.i.i.i [
    i32 -353703190, label %rtw89_mac_stop_sch_tx.exit.i.i.i.do.end15.i.i.i_crit_edge
    i32 -559038737, label %rtw89_mac_stop_sch_tx.exit.i.i.i.do.end15.i.i.i_crit_edge50
  ]

rtw89_mac_stop_sch_tx.exit.i.i.i.do.end15.i.i.i_crit_edge50: ; preds = %rtw89_mac_stop_sch_tx.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end15.i.i.i

rtw89_mac_stop_sch_tx.exit.i.i.i.do.end15.i.i.i_crit_edge: ; preds = %rtw89_mac_stop_sch_tx.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end15.i.i.i

do.end.i.i87.i:                                   ; preds = %rtw89_set_hw_sch_tx_en.exit.thread182.i.i.i, %lor.lhs.false22.i.i141.i.i.i.do.end.i.i87.i_crit_edge, %if.then11.i.do.end.i.i87.i_crit_edge, %if.then11.i.do.end.i.i87.i_crit_edge49
  %retval.0.i.ph.i.i.i = phi i32 [ %retval.0.i28.i.ph.i.i.i, %rtw89_set_hw_sch_tx_en.exit.thread182.i.i.i ], [ -14, %lor.lhs.false22.i.i141.i.i.i.do.end.i.i87.i_crit_edge ], [ -14, %if.then11.i.do.end.i.i87.i_crit_edge ], [ -14, %if.then11.i.do.end.i.i87.i_crit_edge49 ]
  %dev.i.i86.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 1
  %287 = ptrtoint ptr %dev.i.i86.i to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load ptr, ptr %dev.i.i86.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %288, ptr noundef nonnull @.str.411, i32 noundef %retval.0.i.ph.i.i.i) #10
  br label %do.end.i90.i

lor.lhs.false22.i.i.i.i.i:                        ; preds = %rtw89_mac_stop_sch_tx.exit.i.i.i
  %and.i.i.i.i.i = and i32 %call.i39.i.i.i.i.i, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %cmp23.not.i.not.i.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %cmp23.not.i.not.i.i.i.i, label %lor.lhs.false22.i.i.i.i.i.do.end15.i.i.i_crit_edge, label %if.end.i.i.i.i

lor.lhs.false22.i.i.i.i.i.do.end15.i.i.i_crit_edge: ; preds = %lor.lhs.false22.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end15.i.i.i

if.end.i.i.i.i:                                   ; preds = %lor.lhs.false22.i.i.i.i.i
  %call2.i121.i.i.i = call i64 @ktime_get() #7
  %add.i.i.i.i.i = add i64 %call2.i121.i.i.i, 80000000
  call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 2281) #7
  %289 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load ptr, ptr %hci.i.i.i, align 8
  %read8.i8.i.i.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %290, i32 0, i32 7
  %291 = ptrtoint ptr %read8.i8.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load ptr, ptr %read8.i8.i.i.i.i, align 4
  %call.i9.i.i.i.i = call zeroext i8 %292(ptr noundef %rtwdev, i32 noundef 50924) #7
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %call.i9.i.i.i.i)
  %cmp1310.i.i.i.i = icmp sgt i8 %call.i9.i.i.i.i, -1
  br i1 %cmp1310.i.i.i.i, label %if.end.i.i.i.i.if.end17.i.i.i_crit_edge, label %if.end.i.i.i.i.land.lhs.true.i.i.i.i_crit_edge

if.end.i.i.i.i.land.lhs.true.i.i.i.i_crit_edge:   ; preds = %if.end.i.i.i.i
  br label %land.lhs.true.i.i.i.i

if.end.i.i.i.i.if.end17.i.i.i_crit_edge:          ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %if.then26.i.i.i.i.land.lhs.true.i.i.i.i_crit_edge, %if.end.i.i.i.i.land.lhs.true.i.i.i.i_crit_edge
  %call18.i.i.i.i = call i64 @ktime_get() #7
  call void @__sanitizer_cov_trace_cmp8(i64 %call18.i.i.i.i, i64 %add.i.i.i.i.i)
  %cmp3.i.i.i.i.i = icmp sgt i64 %call18.i.i.i.i, %add.i.i.i.i.i
  br i1 %cmp3.i.i.i.i.i, label %for.end.i.i.i.i, label %if.then26.i.i.i.i

if.then26.i.i.i.i:                                ; preds = %land.lhs.true.i.i.i.i
  call void @usleep_range_state(i32 noundef 3, i32 noundef 8, i32 noundef 2) #7
  %293 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load ptr, ptr %hci.i.i.i, align 8
  %read8.i.i.i.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %294, i32 0, i32 7
  %295 = ptrtoint ptr %read8.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load ptr, ptr %read8.i.i.i.i.i, align 4
  %call.i.i122.i.i.i = call zeroext i8 %296(ptr noundef %rtwdev, i32 noundef 50924) #7
  %cmp13.i.i.i.i = icmp sgt i8 %call.i.i122.i.i.i, -1
  br i1 %cmp13.i.i.i.i, label %if.then26.i.i.i.i.if.end17.i.i.i_crit_edge, label %if.then26.i.i.i.i.land.lhs.true.i.i.i.i_crit_edge

if.then26.i.i.i.i.land.lhs.true.i.i.i.i_crit_edge: ; preds = %if.then26.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true.i.i.i.i

if.then26.i.i.i.i.if.end17.i.i.i_crit_edge:       ; preds = %if.then26.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17.i.i.i

for.end.i.i.i.i:                                  ; preds = %land.lhs.true.i.i.i.i
  %297 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load ptr, ptr %hci.i.i.i, align 8
  %read8.i3.i.i.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %298, i32 0, i32 7
  %299 = ptrtoint ptr %read8.i3.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load ptr, ptr %read8.i3.i.i.i.i, align 4
  %call.i4.i.i.i.i = call zeroext i8 %300(ptr noundef %rtwdev, i32 noundef 50924) #7
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %call.i4.i.i.i.i)
  %cmp30.i.i.i.i = icmp sgt i8 %call.i4.i.i.i.i, -1
  br i1 %cmp30.i.i.i.i, label %for.end.i.i.i.i.if.end17.i.i.i_crit_edge, label %for.end.i.i.i.i.do.end15.i.i.i_crit_edge

for.end.i.i.i.i.do.end15.i.i.i_crit_edge:         ; preds = %for.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end15.i.i.i

for.end.i.i.i.i.if.end17.i.i.i_crit_edge:         ; preds = %for.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17.i.i.i

do.end15.i.i.i:                                   ; preds = %for.end.i.i.i.i.do.end15.i.i.i_crit_edge, %lor.lhs.false22.i.i.i.i.i.do.end15.i.i.i_crit_edge, %rtw89_mac_stop_sch_tx.exit.i.i.i.do.end15.i.i.i_crit_edge, %rtw89_mac_stop_sch_tx.exit.i.i.i.do.end15.i.i.i_crit_edge50
  %retval.0.i123.ph.i.i.i = phi i32 [ -14, %lor.lhs.false22.i.i.i.i.i.do.end15.i.i.i_crit_edge ], [ -14, %rtw89_mac_stop_sch_tx.exit.i.i.i.do.end15.i.i.i_crit_edge ], [ -14, %rtw89_mac_stop_sch_tx.exit.i.i.i.do.end15.i.i.i_crit_edge50 ], [ -110, %for.end.i.i.i.i.do.end15.i.i.i_crit_edge ]
  %dev16.i.i.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 1
  %301 = ptrtoint ptr %dev16.i.i.i to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load ptr, ptr %dev16.i.i.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %302, ptr noundef nonnull @.str.414, i32 noundef %retval.0.i123.ph.i.i.i) #10
  br label %do.end.i90.i

if.end17.i.i.i:                                   ; preds = %for.end.i.i.i.i.if.end17.i.i.i_crit_edge, %if.then26.i.i.i.i.if.end17.i.i.i_crit_edge, %if.end.i.i.i.i.if.end17.i.i.i_crit_edge
  %303 = ptrtoint ptr %qta_mode1.i to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load i32, ptr %qta_mode1.i, align 8
  call void @llvm.lifetime.start.p0(i64 14, ptr nonnull %ctrl_para.i.i.i.i) #7
  %305 = getelementptr inbounds i8, ptr %ctrl_para.i.i.i.i, i32 6
  %306 = ptrtoint ptr %305 to i32
  call void @__asan_storeN_noabort(i32 %306, i32 8)
  store i64 360287970307342336, ptr %305, align 2
  %307 = ptrtoint ptr %chip.i.i.i to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load ptr, ptr %chip.i.i.i, align 4
  %dle_mem.i.i.i.i.i = getelementptr inbounds %struct.rtw89_chip_info, ptr %308, i32 0, i32 7
  %309 = ptrtoint ptr %dle_mem.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load ptr, ptr %dle_mem.i.i.i.i.i, align 4
  %arrayidx.i.i.i.i.i = getelementptr %struct.rtw89_dle_mem, ptr %310, i32 %304
  %tobool.not.i.i.i.i.i = icmp eq ptr %arrayidx.i.i.i.i.i, null
  br i1 %tobool.not.i.i.i.i.i, label %if.end17.i.i.i.do.end23.i.i.i_crit_edge, label %if.end.i.i.i.i.i

if.end17.i.i.i.do.end23.i.i.i_crit_edge:          ; preds = %if.end17.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end23.i.i.i

if.end.i.i.i.i.i:                                 ; preds = %if.end17.i.i.i
  %311 = ptrtoint ptr %arrayidx.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load i32, ptr %arrayidx.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %312, i32 %304)
  %cmp.not.i.i.i.i.i = icmp eq i32 %312, %304
  br i1 %cmp.not.i.i.i.i.i, label %if.end.i125.i.i.i, label %do.end.i.i.i.i.i

do.end.i.i.i.i.i:                                 ; preds = %if.end.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i.i.i.i.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 1
  %313 = ptrtoint ptr %dev.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load ptr, ptr %dev.i.i.i.i.i, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %314, ptr noundef nonnull @.str.326) #10
  br label %do.end23.i.i.i

if.end.i125.i.i.i:                                ; preds = %if.end.i.i.i.i.i
  %wde_size.i.i.i.i.i = getelementptr %struct.rtw89_dle_mem, ptr %310, i32 %304, i32 1
  %315 = ptrtoint ptr %wde_size.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load ptr, ptr %wde_size.i.i.i.i.i, align 4
  %317 = ptrtoint ptr %316 to i32
  call void @__asan_load2_noabort(i32 %317)
  %318 = load i16, ptr %316, align 2
  %319 = ptrtoint ptr %wde_pg_size.i.i.i to i32
  call void @__asan_store2_noabort(i32 %319)
  store i16 %318, ptr %wde_pg_size.i.i.i, align 4
  %ple_size.i.i.i.i.i = getelementptr %struct.rtw89_dle_mem, ptr %310, i32 %304, i32 2
  %320 = ptrtoint ptr %ple_size.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load ptr, ptr %ple_size.i.i.i.i.i, align 4
  %322 = ptrtoint ptr %321 to i32
  call void @__asan_load2_noabort(i32 %322)
  %323 = load i16, ptr %321, align 2
  %324 = ptrtoint ptr %ple_pg_size.i.i.i to i32
  call void @__asan_store2_noabort(i32 %324)
  store i16 %323, ptr %ple_pg_size.i.i.i, align 2
  %325 = ptrtoint ptr %mac1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %325)
  store i32 %304, ptr %mac1.i.i.i, align 4
  %ple_min_qt.i.i.i.i.i = getelementptr %struct.rtw89_dle_mem, ptr %310, i32 %304, i32 5
  %326 = ptrtoint ptr %ple_min_qt.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load ptr, ptr %ple_min_qt.i.i.i.i.i, align 4
  %cma0_dma.i.i.i.i.i = getelementptr inbounds %struct.rtw89_ple_quota, ptr %327, i32 0, i32 6
  %328 = ptrtoint ptr %cma0_dma.i.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %328)
  %329 = load i16, ptr %cma0_dma.i.i.i.i.i, align 2
  %330 = ptrtoint ptr %c0_rx_qta.i.i.i to i32
  call void @__asan_store2_noabort(i32 %330)
  store i16 %329, ptr %c0_rx_qta.i.i.i, align 4
  %331 = load ptr, ptr %ple_min_qt.i.i.i.i.i, align 4
  %cma1_dma.i.i.i.i.i = getelementptr inbounds %struct.rtw89_ple_quota, ptr %331, i32 0, i32 7
  %332 = ptrtoint ptr %cma1_dma.i.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %332)
  %333 = load i16, ptr %cma1_dma.i.i.i.i.i, align 2
  %334 = ptrtoint ptr %c1_rx_qta.i.i.i to i32
  call void @__asan_store2_noabort(i32 %334)
  store i16 %333, ptr %c1_rx_qta.i.i.i, align 2
  %335 = load ptr, ptr %wde_size.i.i.i.i.i, align 4
  %336 = load ptr, ptr %ple_size.i.i.i.i.i, align 4
  %337 = ptrtoint ptr %335 to i32
  call void @__asan_load2_noabort(i32 %337)
  %338 = load i16, ptr %335, align 2
  %conv.i.i.i.i.i = zext i16 %338 to i32
  %lnk_pge_num.i.i.i.i.i = getelementptr inbounds %struct.rtw89_dle_size, ptr %335, i32 0, i32 1
  %339 = ptrtoint ptr %lnk_pge_num.i.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %339)
  %340 = load i16, ptr %lnk_pge_num.i.i.i.i.i, align 2
  %conv1.i.i.i.i.i = zext i16 %340 to i32
  %unlnk_pge_num.i.i.i.i.i = getelementptr inbounds %struct.rtw89_dle_size, ptr %335, i32 0, i32 2
  %341 = ptrtoint ptr %unlnk_pge_num.i.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %341)
  %342 = load i16, ptr %unlnk_pge_num.i.i.i.i.i, align 2
  %conv2.i.i.i.i.i = zext i16 %342 to i32
  %add.i.i124.i.i.i = add nuw nsw i32 %conv2.i.i.i.i.i, %conv1.i.i.i.i.i
  %mul.i.i.i.i.i = mul i32 %add.i.i124.i.i.i, %conv.i.i.i.i.i
  %343 = ptrtoint ptr %336 to i32
  call void @__asan_load2_noabort(i32 %343)
  %344 = load i16, ptr %336, align 2
  %conv4.i.i.i.i.i = zext i16 %344 to i32
  %lnk_pge_num5.i.i.i.i.i = getelementptr inbounds %struct.rtw89_dle_size, ptr %336, i32 0, i32 1
  %345 = ptrtoint ptr %lnk_pge_num5.i.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %345)
  %346 = load i16, ptr %lnk_pge_num5.i.i.i.i.i, align 2
  %conv6.i.i.i.i.i = zext i16 %346 to i32
  %unlnk_pge_num7.i.i.i.i.i = getelementptr inbounds %struct.rtw89_dle_size, ptr %336, i32 0, i32 2
  %347 = ptrtoint ptr %unlnk_pge_num7.i.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %347)
  %348 = load i16, ptr %unlnk_pge_num7.i.i.i.i.i, align 2
  %conv8.i.i.i.i.i = zext i16 %348 to i32
  %add9.i.i.i.i.i = add nuw nsw i32 %conv8.i.i.i.i.i, %conv6.i.i.i.i.i
  %mul10.i.i.i.i.i = mul i32 %add9.i.i.i.i.i, %conv4.i.i.i.i.i
  %add11.i.i.i.i.i = add i32 %mul10.i.i.i.i.i, %mul.i.i.i.i.i
  %fifo_size.i.i.i.i = getelementptr inbounds %struct.rtw89_chip_info, ptr %308, i32 0, i32 3
  %349 = ptrtoint ptr %fifo_size.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %349)
  %350 = load i32, ptr %fifo_size.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add11.i.i.i.i.i, i32 %350)
  %cmp.not.i.i.i.i = icmp eq i32 %add11.i.i.i.i.i, %350
  br i1 %cmp.not.i.i.i.i, label %if.end7.i.i.i.i, label %if.end.i125.i.i.i.do.end23.i.i.i_crit_edge

if.end.i125.i.i.i.do.end23.i.i.i_crit_edge:       ; preds = %if.end.i125.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end23.i.i.i

if.end7.i.i.i.i:                                  ; preds = %if.end.i125.i.i.i
  call fastcc void @dle_quota_cfg(ptr noundef %rtwdev, ptr noundef nonnull %arrayidx.i.i.i.i.i, i16 noundef zeroext -1) #7
  %call8.i.i.i.i = call fastcc zeroext i16 @rtw89_mac_dle_buf_req(ptr noundef %rtwdev, i1 noundef zeroext true) #7
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call8.i.i.i.i)
  %cmp9.i.i.i.i = icmp eq i16 %call8.i.i.i.i, -1
  br i1 %cmp9.i.i.i.i, label %if.end7.i.i.i.i.do.end23.i.i.i_crit_edge, label %if.end16.i.i.i.i

if.end7.i.i.i.i.do.end23.i.i.i_crit_edge:         ; preds = %if.end7.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end23.i.i.i

if.end16.i.i.i.i:                                 ; preds = %if.end7.i.i.i.i
  %start_pktid.i.i.i.i = getelementptr inbounds %struct.rtw89_cpuio_ctrl, ptr %ctrl_para.i.i.i.i, i32 0, i32 1
  %351 = ptrtoint ptr %start_pktid.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %351)
  store i16 %call8.i.i.i.i, ptr %start_pktid.i.i.i.i, align 2
  %end_pktid.i.i.i.i = getelementptr inbounds %struct.rtw89_cpuio_ctrl, ptr %ctrl_para.i.i.i.i, i32 0, i32 2
  %352 = ptrtoint ptr %end_pktid.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %352)
  store i16 %call8.i.i.i.i, ptr %end_pktid.i.i.i.i, align 2
  %353 = ptrtoint ptr %ctrl_para.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %353)
  store i16 0, ptr %ctrl_para.i.i.i.i, align 2
  %dst_pid.i.i.i.i = getelementptr inbounds %struct.rtw89_cpuio_ctrl, ptr %ctrl_para.i.i.i.i, i32 0, i32 7
  %dst_qid.i.i.i.i = getelementptr inbounds %struct.rtw89_cpuio_ctrl, ptr %ctrl_para.i.i.i.i, i32 0, i32 8
  %call17.i.i.i.i = call fastcc i32 @rtw89_mac_set_cpuio(ptr noundef %rtwdev, ptr noundef nonnull %ctrl_para.i.i.i.i, i1 noundef zeroext true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i.i.i.i)
  %tobool18.not.i.i.i.i = icmp eq i32 %call17.i.i.i.i, 0
  br i1 %tobool18.not.i.i.i.i, label %if.end24.i.i.i.i, label %if.end16.i.i.i.i.do.end23.i.i.i_crit_edge

if.end16.i.i.i.i.do.end23.i.i.i_crit_edge:        ; preds = %if.end16.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end23.i.i.i

if.end24.i.i.i.i:                                 ; preds = %if.end16.i.i.i.i
  %call25.i.i.i.i = call fastcc zeroext i16 @rtw89_mac_dle_buf_req(ptr noundef %rtwdev, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call25.i.i.i.i)
  %cmp27.i.i.i.i = icmp eq i16 %call25.i.i.i.i, -1
  br i1 %cmp27.i.i.i.i, label %if.end24.i.i.i.i.do.end23.i.i.i_crit_edge, label %if.end34.i.i.i.i

if.end24.i.i.i.i.do.end23.i.i.i_crit_edge:        ; preds = %if.end24.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end23.i.i.i

if.end34.i.i.i.i:                                 ; preds = %if.end24.i.i.i.i
  %354 = ptrtoint ptr %305 to i32
  call void @__asan_store1_noabort(i32 %354)
  store i8 5, ptr %305, align 2
  %355 = ptrtoint ptr %start_pktid.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %355)
  store i16 %call25.i.i.i.i, ptr %start_pktid.i.i.i.i, align 2
  %356 = ptrtoint ptr %end_pktid.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %356)
  store i16 %call25.i.i.i.i, ptr %end_pktid.i.i.i.i, align 2
  %357 = ptrtoint ptr %ctrl_para.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %357)
  store i16 0, ptr %ctrl_para.i.i.i.i, align 2
  %358 = ptrtoint ptr %dst_pid.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %358)
  store i8 7, ptr %dst_pid.i.i.i.i, align 2
  %359 = ptrtoint ptr %dst_qid.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %359)
  store i8 0, ptr %dst_qid.i.i.i.i, align 1
  %call41.i.i.i.i = call fastcc i32 @rtw89_mac_set_cpuio(ptr noundef %rtwdev, ptr noundef nonnull %ctrl_para.i.i.i.i, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41.i.i.i.i)
  %tobool42.not.i.i.i.i = icmp eq i32 %call41.i.i.i.i, 0
  br i1 %tobool42.not.i.i.i.i, label %dle_quota_change.exit.i.i.i, label %if.end34.i.i.i.i.do.end23.i.i.i_crit_edge

if.end34.i.i.i.i.do.end23.i.i.i_crit_edge:        ; preds = %if.end34.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end23.i.i.i

dle_quota_change.exit.i.i.i:                      ; preds = %if.end34.i.i.i.i
  call void @llvm.lifetime.end.p0(i64 14, ptr nonnull %ctrl_para.i.i.i.i) #7
  %360 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %360)
  %361 = load ptr, ptr %hci.i.i.i, align 8
  %write32.i128.i.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %361, i32 0, i32 12
  %362 = ptrtoint ptr %write32.i128.i.i.i to i32
  call void @__asan_load4_noabort(i32 %362)
  %363 = load ptr, ptr %write32.i128.i.i.i, align 4
  call void %363(ptr noundef %rtwdev, i32 noundef 49856, i32 noundef %call.i.i.i84.i) #7
  %364 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %364)
  %365 = load ptr, ptr %hci.i.i.i, align 8
  %write32.i130.i.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %365, i32 0, i32 12
  %366 = ptrtoint ptr %write32.i130.i.i.i to i32
  call void @__asan_load4_noabort(i32 %366)
  %367 = load ptr, ptr %write32.i130.i.i.i, align 4
  call void %367(ptr noundef %rtwdev, i32 noundef 40624, i32 noundef %call.i117.i.i.i) #7
  %368 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %368)
  %369 = load ptr, ptr %hci.i.i.i, align 8
  %write32.i128.1.i.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %369, i32 0, i32 12
  %370 = ptrtoint ptr %write32.i128.1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %370)
  %371 = load ptr, ptr %write32.i128.1.i.i.i, align 4
  call void %371(ptr noundef %rtwdev, i32 noundef 49860, i32 noundef %call.i.1.i.i.i) #7
  %372 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %372)
  %373 = load ptr, ptr %hci.i.i.i, align 8
  %write32.i130.1.i.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %373, i32 0, i32 12
  %374 = ptrtoint ptr %write32.i130.1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %374)
  %375 = load ptr, ptr %write32.i130.1.i.i.i, align 4
  call void %375(ptr noundef %rtwdev, i32 noundef 40628, i32 noundef %call.i117.1.i.i.i) #7
  %376 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %376)
  %377 = load ptr, ptr %hci.i.i.i, align 8
  %write32.i128.2.i.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %377, i32 0, i32 12
  %378 = ptrtoint ptr %write32.i128.2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %378)
  %379 = load ptr, ptr %write32.i128.2.i.i.i, align 4
  call void %379(ptr noundef %rtwdev, i32 noundef 49864, i32 noundef %call.i.2.i.i.i) #7
  %380 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %380)
  %381 = load ptr, ptr %hci.i.i.i, align 8
  %write32.i130.2.i.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %381, i32 0, i32 12
  %382 = ptrtoint ptr %write32.i130.2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %382)
  %383 = load ptr, ptr %write32.i130.2.i.i.i, align 4
  call void %383(ptr noundef %rtwdev, i32 noundef 40632, i32 noundef %call.i117.2.i.i.i) #7
  %384 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %384)
  %385 = load ptr, ptr %hci.i.i.i, align 8
  %write32.i128.3.i.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %385, i32 0, i32 12
  %386 = ptrtoint ptr %write32.i128.3.i.i.i to i32
  call void @__asan_load4_noabort(i32 %386)
  %387 = load ptr, ptr %write32.i128.3.i.i.i, align 4
  call void %387(ptr noundef %rtwdev, i32 noundef 49868, i32 noundef %call.i.3.i.i.i) #7
  %388 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %388)
  %389 = load ptr, ptr %hci.i.i.i, align 8
  %write32.i130.3.i.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %389, i32 0, i32 12
  %390 = ptrtoint ptr %write32.i130.3.i.i.i to i32
  call void @__asan_load4_noabort(i32 %390)
  %391 = load ptr, ptr %write32.i130.3.i.i.i, align 4
  call void %391(ptr noundef %rtwdev, i32 noundef 40636, i32 noundef %call.i117.3.i.i.i) #7
  %392 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %392)
  %393 = load ptr, ptr %hci.i.i.i, align 8
  %read32.i38.i.i152.i.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %393, i32 0, i32 9
  %394 = ptrtoint ptr %read32.i38.i.i152.i.i.i to i32
  call void @__asan_load4_noabort(i32 %394)
  %395 = load ptr, ptr %read32.i38.i.i152.i.i.i, align 4
  %call.i39.i.i153.i.i.i = call i32 %395(ptr noundef %rtwdev, i32 noundef 49152) #7
  %396 = zext i32 %call.i39.i.i153.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %396, ptr @__sancov_gen_cov_switch_values.464)
  switch i32 %call.i39.i.i153.i.i.i, label %lor.lhs.false22.i.i156.i.i.i [
    i32 -353703190, label %dle_quota_change.exit.i.i.i.do.end43.i.i.i_crit_edge
    i32 -559038737, label %dle_quota_change.exit.i.i.i.do.end43.i.i.i_crit_edge51
  ]

dle_quota_change.exit.i.i.i.do.end43.i.i.i_crit_edge51: ; preds = %dle_quota_change.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end43.i.i.i

dle_quota_change.exit.i.i.i.do.end43.i.i.i_crit_edge: ; preds = %dle_quota_change.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end43.i.i.i

do.end23.i.i.i:                                   ; preds = %if.end34.i.i.i.i.do.end23.i.i.i_crit_edge, %if.end24.i.i.i.i.do.end23.i.i.i_crit_edge, %if.end16.i.i.i.i.do.end23.i.i.i_crit_edge, %if.end7.i.i.i.i.do.end23.i.i.i_crit_edge, %if.end.i125.i.i.i.do.end23.i.i.i_crit_edge, %do.end.i.i.i.i.i, %if.end17.i.i.i.do.end23.i.i.i_crit_edge
  %.str.441.sink.i.i.i.i = phi ptr [ @.str.309, %do.end.i.i.i.i.i ], [ @.str.309, %if.end17.i.i.i.do.end23.i.i.i_crit_edge ], [ @.str.309, %if.end.i125.i.i.i.do.end23.i.i.i_crit_edge ], [ @.str.432, %if.end7.i.i.i.i.do.end23.i.i.i_crit_edge ], [ @.str.435, %if.end16.i.i.i.i.do.end23.i.i.i_crit_edge ], [ @.str.438, %if.end24.i.i.i.i.do.end23.i.i.i_crit_edge ], [ @.str.441, %if.end34.i.i.i.i.do.end23.i.i.i_crit_edge ]
  %retval.0.ph.i.i.i.i = phi i32 [ -22, %do.end.i.i.i.i.i ], [ -22, %if.end17.i.i.i.do.end23.i.i.i_crit_edge ], [ -22, %if.end.i125.i.i.i.do.end23.i.i.i_crit_edge ], [ -12, %if.end7.i.i.i.i.do.end23.i.i.i_crit_edge ], [ -14, %if.end16.i.i.i.i.do.end23.i.i.i_crit_edge ], [ -12, %if.end24.i.i.i.i.do.end23.i.i.i_crit_edge ], [ -14, %if.end34.i.i.i.i.do.end23.i.i.i_crit_edge ]
  %dev47.i.i.i.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 1
  %397 = ptrtoint ptr %dev47.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %397)
  %398 = load ptr, ptr %dev47.i.i.i.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %398, ptr noundef nonnull %.str.441.sink.i.i.i.i) #10
  call void @llvm.lifetime.end.p0(i64 14, ptr nonnull %ctrl_para.i.i.i.i) #7
  %399 = ptrtoint ptr %dev47.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %399)
  %400 = load ptr, ptr %dev47.i.i.i.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %400, ptr noundef nonnull @.str.417, i32 noundef %retval.0.ph.i.i.i.i) #10
  br label %do.end.i90.i

lor.lhs.false22.i.i156.i.i.i:                     ; preds = %dle_quota_change.exit.i.i.i
  %and.i.i154.i.i.i = and i32 %call.i39.i.i153.i.i.i, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i154.i.i.i)
  %cmp23.not.i.not.i155.i.i.i = icmp eq i32 %and.i.i154.i.i.i, 0
  br i1 %cmp23.not.i.not.i155.i.i.i, label %lor.lhs.false22.i.i156.i.i.i.do.end43.i.i.i_crit_edge, label %if.end.i159.i.i.i

lor.lhs.false22.i.i156.i.i.i.do.end43.i.i.i_crit_edge: ; preds = %lor.lhs.false22.i.i156.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end43.i.i.i

if.end.i159.i.i.i:                                ; preds = %lor.lhs.false22.i.i156.i.i.i
  %401 = ptrtoint ptr %flags.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %401)
  %402 = load volatile i32, ptr %flags.i.i.i.i, align 4
  %403 = and i32 %402, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %403)
  %tobool3.not.i158.i.i.i = icmp eq i32 %403, 0
  br i1 %tobool3.not.i158.i.i.i, label %rtw89_set_hw_sch_tx_en.exit175.thread198.i.i.i, label %if.then4.i164.i.i.i

if.then4.i164.i.i.i:                              ; preds = %if.end.i159.i.i.i
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %c2h_info.i.i149.i.i.i) #7
  %404 = call ptr @memset(ptr %c2h_info.i.i149.i.i.i, i32 0, i32 20)
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %h2c_info.i.i150.i.i.i) #7
  %405 = call ptr @memset(ptr %h2c_info.i.i150.i.i.i, i32 0, i32 20)
  %h2creg1.i.i160.i.i.i = getelementptr inbounds %struct.rtw89_mac_h2c_info, ptr %h2c_info.i.i150.i.i.i, i32 0, i32 2
  %406 = ptrtoint ptr %h2c_info.i.i150.i.i.i to i32
  call void @__asan_store1_noabort(i32 %406)
  store i8 5, ptr %h2c_info.i.i150.i.i.i, align 4
  %content_len.i.i161.i.i.i = getelementptr inbounds %struct.rtw89_mac_h2c_info, ptr %h2c_info.i.i150.i.i.i, i32 0, i32 1
  %407 = ptrtoint ptr %content_len.i.i161.i.i.i to i32
  call void @__asan_store1_noabort(i32 %407)
  store i8 6, ptr %content_len.i.i161.i.i.i, align 1
  %408 = zext i16 %call.i.i.i.i82.i to i64
  %bf.shl.i.i.i.i.i = shl nuw nsw i64 %408, 32
  %bf.set6.i.i.i.i.i = or i64 %bf.shl.i.i.i.i.i, 4294901760
  %409 = ptrtoint ptr %h2creg1.i.i160.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %409, i32 8)
  store i64 %bf.set6.i.i.i.i.i, ptr %h2creg1.i.i160.i.i.i, align 4
  %call.i.i162.i.i.i = call i32 @rtw89_fw_msg_reg(ptr noundef %rtwdev, ptr noundef nonnull %h2c_info.i.i150.i.i.i, ptr noundef nonnull %c2h_info.i.i149.i.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i162.i.i.i)
  %tobool.not.i.i163.i.i.i = icmp eq i32 %call.i.i162.i.i.i, 0
  br i1 %tobool.not.i.i163.i.i.i, label %if.end.i.i167.i.i.i, label %if.then4.i164.i.i.i.rtw89_set_hw_sch_tx_en.exit175.thread203.i.i.i_crit_edge

if.then4.i164.i.i.i.rtw89_set_hw_sch_tx_en.exit175.thread203.i.i.i_crit_edge: ; preds = %if.then4.i164.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtw89_set_hw_sch_tx_en.exit175.thread203.i.i.i

if.end.i.i167.i.i.i:                              ; preds = %if.then4.i164.i.i.i
  %410 = ptrtoint ptr %c2h_info.i.i149.i.i.i to i32
  call void @__asan_load1_noabort(i32 %410)
  %411 = load i8, ptr %c2h_info.i.i149.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %411)
  %cmp.not.i.i165.i.i.i = icmp eq i8 %411, 4
  br i1 %cmp.not.i.i165.i.i.i, label %rtw89_set_hw_sch_tx_en.exit175.i.i.i, label %if.end.i.i167.i.i.i.rtw89_set_hw_sch_tx_en.exit175.thread203.i.i.i_crit_edge

if.end.i.i167.i.i.i.rtw89_set_hw_sch_tx_en.exit175.thread203.i.i.i_crit_edge: ; preds = %if.end.i.i167.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtw89_set_hw_sch_tx_en.exit175.thread203.i.i.i

rtw89_set_hw_sch_tx_en.exit175.thread198.i.i.i:   ; preds = %if.end.i159.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %412 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %412)
  %413 = load ptr, ptr %hci.i.i.i, align 8
  %read16.i.i170.i.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %413, i32 0, i32 8
  %414 = ptrtoint ptr %read16.i.i170.i.i.i to i32
  call void @__asan_load4_noabort(i32 %414)
  %415 = load ptr, ptr %read16.i.i170.i.i.i, align 4
  %call.i29.i171.i.i.i = call zeroext i16 %415(ptr noundef %rtwdev, i32 noundef 49992) #7
  %416 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %416)
  %417 = load ptr, ptr %hci.i.i.i, align 8
  %write16.i.i172.i.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %417, i32 0, i32 11
  %418 = ptrtoint ptr %write16.i.i172.i.i.i to i32
  call void @__asan_load4_noabort(i32 %418)
  %419 = load ptr, ptr %write16.i.i172.i.i.i, align 4
  call void %419(ptr noundef %rtwdev, i32 noundef 49992, i16 noundef zeroext %call.i.i.i.i82.i) #7
  br label %if.end45.i.i.i

rtw89_set_hw_sch_tx_en.exit175.thread203.i.i.i:   ; preds = %if.end.i.i167.i.i.i.rtw89_set_hw_sch_tx_en.exit175.thread203.i.i.i_crit_edge, %if.then4.i164.i.i.i.rtw89_set_hw_sch_tx_en.exit175.thread203.i.i.i_crit_edge
  %retval.0.i28.i168.ph.i.i.i = phi i32 [ -22, %if.end.i.i167.i.i.i.rtw89_set_hw_sch_tx_en.exit175.thread203.i.i.i_crit_edge ], [ %call.i.i162.i.i.i, %if.then4.i164.i.i.i.rtw89_set_hw_sch_tx_en.exit175.thread203.i.i.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %h2c_info.i.i150.i.i.i) #7
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %c2h_info.i.i149.i.i.i) #7
  br label %do.end43.i.i.i

rtw89_set_hw_sch_tx_en.exit175.i.i.i:             ; preds = %if.end.i.i167.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %h2c_info.i.i150.i.i.i) #7
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %c2h_info.i.i149.i.i.i) #7
  br label %if.end45.i.i.i

do.end43.i.i.i:                                   ; preds = %rtw89_set_hw_sch_tx_en.exit175.thread203.i.i.i, %lor.lhs.false22.i.i156.i.i.i.do.end43.i.i.i_crit_edge, %dle_quota_change.exit.i.i.i.do.end43.i.i.i_crit_edge, %dle_quota_change.exit.i.i.i.do.end43.i.i.i_crit_edge51
  %retval.0.i174197.i.i.i = phi i32 [ %retval.0.i28.i168.ph.i.i.i, %rtw89_set_hw_sch_tx_en.exit175.thread203.i.i.i ], [ -14, %lor.lhs.false22.i.i156.i.i.i.do.end43.i.i.i_crit_edge ], [ -14, %dle_quota_change.exit.i.i.i.do.end43.i.i.i_crit_edge ], [ -14, %dle_quota_change.exit.i.i.i.do.end43.i.i.i_crit_edge51 ]
  %dev44.i.i.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 1
  %420 = ptrtoint ptr %dev44.i.i.i to i32
  call void @__asan_load4_noabort(i32 %420)
  %421 = load ptr, ptr %dev44.i.i.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %421, ptr noundef nonnull @.str.420, i32 noundef %retval.0.i174197.i.i.i) #10
  br label %do.end.i90.i

if.end45.i.i.i:                                   ; preds = %rtw89_set_hw_sch_tx_en.exit175.i.i.i, %rtw89_set_hw_sch_tx_en.exit175.thread198.i.i.i
  %422 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %422)
  %423 = load ptr, ptr %hci.i.i.i, align 8
  %read32.i.i.i.i.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %423, i32 0, i32 9
  %424 = ptrtoint ptr %read32.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %424)
  %425 = load ptr, ptr %read32.i.i.i.i.i.i, align 4
  %call.i.i.i.i.i.i = call i32 %425(ptr noundef %rtwdev, i32 noundef 36) #7
  %or.i.i.i.i.i = or i32 %call.i.i.i.i.i.i, 31
  %426 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %426)
  %427 = load ptr, ptr %hci.i.i.i, align 8
  %write32.i.i.i.i.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %427, i32 0, i32 12
  %428 = ptrtoint ptr %write32.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %428)
  %429 = load ptr, ptr %write32.i.i.i.i.i.i, align 4
  call void %429(ptr noundef %rtwdev, i32 noundef 36, i32 noundef %or.i.i.i.i.i) #7
  %430 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %430)
  %431 = load ptr, ptr %hci.i.i.i, align 8
  %read32.i.i2.i.i.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %431, i32 0, i32 9
  %432 = ptrtoint ptr %read32.i.i2.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %432)
  %433 = load ptr, ptr %read32.i.i2.i.i.i.i, align 4
  %call.i.i3.i.i.i.i = call i32 %433(ptr noundef %rtwdev, i32 noundef 128) #7
  %and.i.i132.i.i.i = and i32 %call.i.i3.i.i.i.i, -33
  %434 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %434)
  %435 = load ptr, ptr %hci.i.i.i, align 8
  %write32.i.i4.i.i.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %435, i32 0, i32 12
  %436 = ptrtoint ptr %write32.i.i4.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %436)
  %437 = load ptr, ptr %write32.i.i4.i.i.i.i, align 4
  call void %437(ptr noundef %rtwdev, i32 noundef 128, i32 noundef %and.i.i132.i.i.i) #7
  %438 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %438)
  %439 = load ptr, ptr %hci.i.i.i, align 8
  %read32.i.i6.i.i.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %439, i32 0, i32 9
  %440 = ptrtoint ptr %read32.i.i6.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %440)
  %441 = load ptr, ptr %read32.i.i6.i.i.i.i, align 4
  %call.i.i7.i.i.i.i = call i32 %441(ptr noundef %rtwdev, i32 noundef 128) #7
  %or.i8.i.i.i.i = or i32 %call.i.i7.i.i.i.i, 1073741824
  %442 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %442)
  %443 = load ptr, ptr %hci.i.i.i, align 8
  %write32.i.i9.i.i.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %443, i32 0, i32 12
  %444 = ptrtoint ptr %write32.i.i9.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %444)
  %445 = load ptr, ptr %write32.i.i9.i.i.i.i, align 4
  call void %445(ptr noundef %rtwdev, i32 noundef 128, i32 noundef %or.i8.i.i.i.i) #7
  %446 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %446)
  %447 = load ptr, ptr %hci.i.i.i, align 8
  %read32.i.i11.i.i.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %447, i32 0, i32 9
  %448 = ptrtoint ptr %read32.i.i11.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %448)
  %449 = load ptr, ptr %read32.i.i11.i.i.i.i, align 4
  %call.i.i12.i.i.i.i = call i32 %449(ptr noundef %rtwdev, i32 noundef 57348) #7
  %or.i13.i.i.i.i = or i32 %call.i.i12.i.i.i.i, 1073741887
  %450 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %450)
  %451 = load ptr, ptr %hci.i.i.i, align 8
  %write32.i.i14.i.i.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %451, i32 0, i32 12
  %452 = ptrtoint ptr %write32.i.i14.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %452)
  %453 = load ptr, ptr %write32.i.i14.i.i.i.i, align 4
  call void %453(ptr noundef %rtwdev, i32 noundef 57348, i32 noundef %or.i13.i.i.i.i) #7
  %454 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %454)
  %455 = load ptr, ptr %hci.i.i.i, align 8
  %read32.i.i16.i.i.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %455, i32 0, i32 9
  %456 = ptrtoint ptr %read32.i.i16.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %456)
  %457 = load ptr, ptr %read32.i.i16.i.i.i.i, align 4
  %call.i.i17.i.i.i.i = call i32 %457(ptr noundef %rtwdev, i32 noundef 57344) #7
  %or.i18.i.i.i.i = or i32 %call.i.i17.i.i.i.i, 1879048255
  %458 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %458)
  %459 = load ptr, ptr %hci.i.i.i, align 8
  %write32.i.i19.i.i.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %459, i32 0, i32 12
  %460 = ptrtoint ptr %write32.i.i19.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %460)
  %461 = load ptr, ptr %write32.i.i19.i.i.i.i, align 4
  call void %461(ptr noundef %rtwdev, i32 noundef 57344, i32 noundef %or.i18.i.i.i.i) #7
  %call54.i.i.i = call fastcc i32 @cmac_init(ptr noundef %rtwdev, i8 noundef zeroext 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54.i.i.i)
  %tobool55.not.i.i.i = icmp eq i32 %call54.i.i.i, 0
  br i1 %tobool55.not.i.i.i, label %if.end.i94.i, label %do.end59.i.i.i

do.end59.i.i.i:                                   ; preds = %if.end45.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev60.i.i.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 1
  %462 = ptrtoint ptr %dev60.i.i.i to i32
  call void @__asan_load4_noabort(i32 %462)
  %463 = load ptr, ptr %dev60.i.i.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %463, ptr noundef nonnull @.str.426, i32 noundef %call54.i.i.i) #10
  br label %do.end.i90.i

do.end.i90.i:                                     ; preds = %do.end59.i.i.i, %do.end43.i.i.i, %do.end23.i.i.i, %do.end15.i.i.i, %do.end.i.i87.i
  %retval.0.i.ph.i88.i = phi i32 [ %call54.i.i.i, %do.end59.i.i.i ], [ %retval.0.i174197.i.i.i, %do.end43.i.i.i ], [ %retval.0.ph.i.i.i.i, %do.end23.i.i.i ], [ %retval.0.i123.ph.i.i.i, %do.end15.i.i.i ], [ %retval.0.i.ph.i.i.i, %do.end.i.i87.i ]
  %dev.i89.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 1
  %464 = ptrtoint ptr %dev.i89.i to i32
  call void @__asan_load4_noabort(i32 %464)
  %465 = load ptr, ptr %dev.i89.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %465, ptr noundef nonnull @.str.403, i32 noundef %retval.0.i.ph.i88.i) #10
  br label %do.end17.i

if.end.i94.i:                                     ; preds = %if.end45.i.i.i
  %466 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %466)
  %467 = load ptr, ptr %hci.i.i.i, align 8
  %read32.i.i.i.i91.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %467, i32 0, i32 9
  %468 = ptrtoint ptr %read32.i.i.i.i91.i to i32
  call void @__asan_load4_noabort(i32 %468)
  %469 = load ptr, ptr %read32.i.i.i.i91.i, align 4
  %call.i.i135.i.i.i = call i32 %469(ptr noundef %rtwdev, i32 noundef 128) #7
  %or.i.i.i92.i = or i32 %call.i.i135.i.i.i, 196608
  %470 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %470)
  %471 = load ptr, ptr %hci.i.i.i, align 8
  %write32.i.i.i.i93.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %471, i32 0, i32 12
  %472 = ptrtoint ptr %write32.i.i.i.i93.i to i32
  call void @__asan_load4_noabort(i32 %472)
  %473 = load ptr, ptr %write32.i.i.i.i93.i, align 4
  call void %473(ptr noundef %rtwdev, i32 noundef 128, i32 noundef %or.i.i.i92.i) #7
  %call3.i.i = call fastcc i32 @rtw89_mac_enable_imr(ptr noundef %rtwdev, i8 noundef zeroext 1, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %tobool4.not.i.i = icmp eq i32 %call3.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end.i94.i.if.end20.i_crit_edge, label %do.end8.i.i

if.end.i94.i.if.end20.i_crit_edge:                ; preds = %if.end.i94.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20.i

do.end8.i.i:                                      ; preds = %if.end.i94.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev9.i.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 1
  %474 = ptrtoint ptr %dev9.i.i to i32
  call void @__asan_load4_noabort(i32 %474)
  %475 = load ptr, ptr %dev9.i.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %475, ptr noundef nonnull @.str.406, i32 noundef %call3.i.i) #10
  br label %do.end17.i

do.end17.i:                                       ; preds = %do.end8.i.i, %do.end.i90.i
  %retval.0.i95.ph.i = phi i32 [ %call3.i.i, %do.end8.i.i ], [ %retval.0.i.ph.i88.i, %do.end.i90.i ]
  %dev18.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 1
  %476 = ptrtoint ptr %dev18.i to i32
  call void @__asan_load4_noabort(i32 %476)
  %477 = load ptr, ptr %dev18.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %477, ptr noundef nonnull @.str.339, i32 noundef %retval.0.i95.ph.i) #10
  br label %fail

if.end20.i:                                       ; preds = %if.end.i94.i.if.end20.i_crit_edge, %is_qta_dbcc.exit.i.if.end20.i_crit_edge, %if.end.i80.i.if.end20.i_crit_edge, %do.end.i79.i
  %call21.i = call fastcc i32 @rtw89_mac_enable_imr(ptr noundef %rtwdev, i8 noundef zeroext 0, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.i)
  %tobool22.not.i = icmp eq i32 %call21.i, 0
  br i1 %tobool22.not.i, label %if.end28.i, label %do.end26.i

do.end26.i:                                       ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev27.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 1
  %478 = ptrtoint ptr %dev27.i to i32
  call void @__asan_load4_noabort(i32 %478)
  %479 = load ptr, ptr %dev27.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %479, ptr noundef nonnull @.str.342, i32 noundef %call21.i) #10
  br label %fail

if.end28.i:                                       ; preds = %if.end20.i
  %call29.i = call fastcc i32 @rtw89_mac_enable_imr(ptr noundef %rtwdev, i8 noundef zeroext 0, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.i)
  %tobool30.not.i = icmp eq i32 %call29.i, 0
  br i1 %tobool30.not.i, label %if.end36.i, label %do.end34.i

do.end34.i:                                       ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev35.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 1
  %480 = ptrtoint ptr %dev35.i to i32
  call void @__asan_load4_noabort(i32 %480)
  %481 = load ptr, ptr %dev35.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %481, ptr noundef nonnull @.str.345, i32 noundef %call29.i) #10
  br label %fail

if.end36.i:                                       ; preds = %if.end28.i
  %type.i.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 7, i32 1
  %482 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %482)
  %483 = load i32, ptr %type.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %483)
  %cmp.i.i = icmp eq i32 %483, 0
  %484 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %484)
  %485 = load ptr, ptr %hci.i.i.i, align 8
  %read32.i.i.i96.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %485, i32 0, i32 9
  %486 = ptrtoint ptr %read32.i.i.i96.i to i32
  call void @__asan_load4_noabort(i32 %486)
  %487 = load ptr, ptr %read32.i.i.i96.i, align 4
  %call.i.i.i97.i = call i32 %487(ptr noundef %rtwdev, i32 noundef 37896) #7
  %and21.i.i.i = and i32 %call.i.i.i97.i, -4
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #9
  %488 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %488)
  %489 = load ptr, ptr %hci.i.i.i, align 8
  %write32.i.i.i98.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %489, i32 0, i32 12
  %490 = ptrtoint ptr %write32.i.i.i98.i to i32
  call void @__asan_load4_noabort(i32 %490)
  %491 = load ptr, ptr %write32.i.i.i98.i, align 4
  call void %491(ptr noundef %rtwdev, i32 noundef 37896, i32 noundef %and21.i.i.i) #7
  %492 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %492)
  %493 = load ptr, ptr %hci.i.i.i, align 8
  %read32.i.i2.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %493, i32 0, i32 9
  %494 = ptrtoint ptr %read32.i.i2.i.i to i32
  call void @__asan_load4_noabort(i32 %494)
  %495 = load ptr, ptr %read32.i.i2.i.i, align 4
  %call.i.i3.i.i = call i32 %495(ptr noundef %rtwdev, i32 noundef 37904) #7
  %or.i.i.i40 = or i32 %call.i.i3.i.i, 251658240
  br label %if.end8

if.else.i.i:                                      ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #9
  %or.i9.i.i = or i32 %and21.i.i.i, 1
  %496 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %496)
  %497 = load ptr, ptr %hci.i.i.i, align 8
  %write32.i.i10.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %497, i32 0, i32 12
  %498 = ptrtoint ptr %write32.i.i10.i.i to i32
  call void @__asan_load4_noabort(i32 %498)
  %499 = load ptr, ptr %write32.i.i10.i.i, align 4
  call void %499(ptr noundef %rtwdev, i32 noundef 37896, i32 noundef %or.i9.i.i) #7
  %500 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %500)
  %501 = load ptr, ptr %hci.i.i.i, align 8
  %read32.i.i12.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %501, i32 0, i32 9
  %502 = ptrtoint ptr %read32.i.i12.i.i to i32
  call void @__asan_load4_noabort(i32 %502)
  %503 = load ptr, ptr %read32.i.i12.i.i, align 4
  %call.i.i13.i.i = call i32 %503(ptr noundef %rtwdev, i32 noundef 37904) #7
  %and.i.i99.i = and i32 %call.i.i13.i.i, -251658241
  br label %if.end8

if.end8:                                          ; preds = %if.else.i.i, %if.then.i.i
  %and.i.sink.i.i = phi i32 [ %and.i.i99.i, %if.else.i.i ], [ %or.i.i.i40, %if.then.i.i ]
  %504 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %504)
  %505 = load ptr, ptr %hci.i.i.i, align 8
  %write32.i.i14.i.i41 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %505, i32 0, i32 12
  %506 = ptrtoint ptr %write32.i.i14.i.i41 to i32
  call void @__asan_load4_noabort(i32 %506)
  %507 = load ptr, ptr %write32.i.i14.i.i41, align 4
  call void %507(ptr noundef %rtwdev, i32 noundef 37904, i32 noundef %and.i.sink.i.i) #7
  %508 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %508)
  %509 = load ptr, ptr %hci.i.i.i, align 8
  %read32.i.i16.i.i42 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %509, i32 0, i32 9
  %510 = ptrtoint ptr %read32.i.i16.i.i42 to i32
  call void @__asan_load4_noabort(i32 %510)
  %511 = load ptr, ptr %read32.i.i16.i.i42, align 4
  %call.i.i17.i.i43 = call i32 %511(ptr noundef %rtwdev, i32 noundef 37908) #7
  %and21.i18.i.i = and i32 %call.i.i17.i.i43, -256
  %or.i19.i.i = or i32 %and21.i18.i.i, 30
  %512 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %512)
  %513 = load ptr, ptr %hci.i.i.i, align 8
  %write32.i.i20.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %513, i32 0, i32 12
  %514 = ptrtoint ptr %write32.i.i20.i.i to i32
  call void @__asan_load4_noabort(i32 %514)
  %515 = load ptr, ptr %write32.i.i20.i.i, align 4
  call void %515(ptr noundef %rtwdev, i32 noundef 37908, i32 noundef %or.i19.i.i) #7
  %516 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %516)
  %517 = load ptr, ptr %hci.i.i.i, align 8
  %read32.i.i22.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %517, i32 0, i32 9
  %518 = ptrtoint ptr %read32.i.i22.i.i to i32
  call void @__asan_load4_noabort(i32 %518)
  %519 = load ptr, ptr %read32.i.i22.i.i, align 4
  %call.i.i23.i.i = call i32 %519(ptr noundef %rtwdev, i32 noundef 37908) #7
  %or.i25.i.i = or i32 %call.i.i23.i.i, 16711680
  %520 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %520)
  %521 = load ptr, ptr %hci.i.i.i, align 8
  %write32.i.i26.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %521, i32 0, i32 12
  %522 = ptrtoint ptr %write32.i.i26.i.i to i32
  call void @__asan_load4_noabort(i32 %522)
  %523 = load ptr, ptr %write32.i.i26.i.i, align 4
  call void %523(ptr noundef %rtwdev, i32 noundef 37908, i32 noundef %or.i25.i.i) #7
  %524 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %524)
  %525 = load ptr, ptr %hci.i.i.i, align 8
  %mac_post_init = getelementptr inbounds %struct.rtw89_hci_ops, ptr %525, i32 0, i32 14
  %526 = ptrtoint ptr %mac_post_init to i32
  call void @__asan_load4_noabort(i32 %526)
  %527 = load ptr, ptr %mac_post_init, align 4
  %tobool9.not = icmp eq ptr %527, null
  br i1 %tobool9.not, label %if.end8.if.end18_crit_edge, label %if.then10

if.end8.if.end18_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18

if.then10:                                        ; preds = %if.end8
  %call14 = call i32 %527(ptr noundef %rtwdev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.then10.if.end18_crit_edge, label %if.then10.fail_crit_edge

if.then10.fail_crit_edge:                         ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #9
  br label %fail

if.then10.if.end18_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18

if.end18:                                         ; preds = %if.then10.if.end18_crit_edge, %if.end8.if.end18_crit_edge
  call void @rtw89_fw_send_all_early_h2c(ptr noundef %rtwdev) #7
  %call19 = call i32 @rtw89_fw_h2c_set_ofld_cfg(ptr noundef %rtwdev) #7
  br label %cleanup

fail:                                             ; preds = %if.then10.fail_crit_edge, %do.end34.i, %do.end26.i, %do.end17.i, %do.end7.i, %do.end.i, %entry.fail_crit_edge
  %ret.1 = phi i32 [ %call, %entry.fail_crit_edge ], [ %call14, %if.then10.fail_crit_edge ], [ %call29.i, %do.end34.i ], [ %call21.i, %do.end26.i ], [ %retval.0.i95.ph.i, %do.end17.i ], [ %call2.i, %do.end7.i ], [ %retval.0.i.ph.i, %do.end.i ]
  %call20 = call fastcc i32 @rtw89_mac_power_switch(ptr noundef %rtwdev, i1 noundef zeroext false)
  br label %cleanup

cleanup:                                          ; preds = %fail, %if.end18
  %retval.0 = phi i32 [ %ret.1, %fail ], [ 0, %if.end18 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw89_fw_send_all_early_h2c(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw89_fw_h2c_set_ofld_cfg(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtw89_mac_vif_init(ptr noundef %rtwdev, ptr noundef %rtwvif) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rtw89_mac_port_update(ptr noundef %rtwdev, ptr noundef %rtwvif)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %mac_id = getelementptr inbounds %struct.rtw89_vif, ptr %rtwvif, i32 0, i32 1
  %0 = ptrtoint ptr %mac_id to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %mac_id, align 8
  %conv2.i = zext i8 %1 to i32
  %shl.i = shl nuw nsw i32 %conv2.i, 4
  %add.i = or i32 %shl.i, 411041792
  %hci.i.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 7
  %2 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hci.i.i, align 8
  %write32.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %3, i32 0, i32 12
  %4 = ptrtoint ptr %write32.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %write32.i.i, align 4
  tail call void %5(ptr noundef %rtwdev, i32 noundef 3076, i32 noundef %add.i) #7
  %6 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hci.i.i, align 8
  %write32.i10.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %7, i32 0, i32 12
  %8 = ptrtoint ptr %write32.i10.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %write32.i10.i, align 4
  tail call void %9(ptr noundef %rtwdev, i32 noundef 262144, i32 noundef 0) #7
  %add5.1.i = or i32 %shl.i, 411041796
  %10 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hci.i.i, align 8
  %write32.i.1.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %11, i32 0, i32 12
  %12 = ptrtoint ptr %write32.i.1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %write32.i.1.i, align 4
  tail call void %13(ptr noundef %rtwdev, i32 noundef 3076, i32 noundef %add5.1.i) #7
  %14 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hci.i.i, align 8
  %write32.i10.1.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %15, i32 0, i32 12
  %16 = ptrtoint ptr %write32.i10.1.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %write32.i10.1.i, align 4
  tail call void %17(ptr noundef %rtwdev, i32 noundef 262144, i32 noundef 0) #7
  %add5.2.i = or i32 %shl.i, 411041800
  %18 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hci.i.i, align 8
  %write32.i.2.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %19, i32 0, i32 12
  %20 = ptrtoint ptr %write32.i.2.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %write32.i.2.i, align 4
  tail call void %21(ptr noundef %rtwdev, i32 noundef 3076, i32 noundef %add5.2.i) #7
  %22 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %hci.i.i, align 8
  %write32.i10.2.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %23, i32 0, i32 12
  %24 = ptrtoint ptr %write32.i10.2.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %write32.i10.2.i, align 4
  tail call void %25(ptr noundef %rtwdev, i32 noundef 262144, i32 noundef 0) #7
  %add5.3.i = or i32 %shl.i, 411041804
  %26 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %hci.i.i, align 8
  %write32.i.3.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %27, i32 0, i32 12
  %28 = ptrtoint ptr %write32.i.3.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %write32.i.3.i, align 4
  tail call void %29(ptr noundef %rtwdev, i32 noundef 3076, i32 noundef %add5.3.i) #7
  %30 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %hci.i.i, align 8
  %write32.i10.3.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %31, i32 0, i32 12
  %32 = ptrtoint ptr %write32.i10.3.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %write32.i10.3.i, align 4
  tail call void %33(ptr noundef %rtwdev, i32 noundef 262144, i32 noundef 0) #7
  %34 = ptrtoint ptr %mac_id to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %mac_id, align 8
  %conv.i = zext i8 %35 to i32
  %mul.i = shl nuw nsw i32 %conv.i, 5
  %add.i49 = or i32 %mul.i, 411303936
  %36 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %hci.i.i, align 8
  %write32.i.i51 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %37, i32 0, i32 12
  %38 = ptrtoint ptr %write32.i.i51 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %write32.i.i51, align 4
  tail call void %39(ptr noundef %rtwdev, i32 noundef 3076, i32 noundef %add.i49) #7
  %40 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %hci.i.i, align 8
  %write32.i10.i52 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %41, i32 0, i32 12
  %42 = ptrtoint ptr %write32.i10.i52 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %write32.i10.i52, align 4
  tail call void %43(ptr noundef %rtwdev, i32 noundef 262144, i32 noundef 4) #7
  %44 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %hci.i.i, align 8
  %write32.i12.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %45, i32 0, i32 12
  %46 = ptrtoint ptr %write32.i12.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %write32.i12.i, align 4
  tail call void %47(ptr noundef %rtwdev, i32 noundef 262148, i32 noundef 1074397188) #7
  %48 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %hci.i.i, align 8
  %write32.i14.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %49, i32 0, i32 12
  %50 = ptrtoint ptr %write32.i14.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %write32.i14.i, align 4
  tail call void %51(ptr noundef %rtwdev, i32 noundef 262152, i32 noundef 0) #7
  %52 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %hci.i.i, align 8
  %write32.i16.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %53, i32 0, i32 12
  %54 = ptrtoint ptr %write32.i16.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %write32.i16.i, align 4
  tail call void %55(ptr noundef %rtwdev, i32 noundef 262156, i32 noundef 0) #7
  %56 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %hci.i.i, align 8
  %write32.i18.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %57, i32 0, i32 12
  %58 = ptrtoint ptr %write32.i18.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %write32.i18.i, align 4
  tail call void %59(ptr noundef %rtwdev, i32 noundef 262160, i32 noundef 0) #7
  %60 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %hci.i.i, align 8
  %write32.i20.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %61, i32 0, i32 12
  %62 = ptrtoint ptr %write32.i20.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %write32.i20.i, align 4
  tail call void %63(ptr noundef %rtwdev, i32 noundef 262164, i32 noundef 239271947) #7
  %64 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %hci.i.i, align 8
  %write32.i22.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %65, i32 0, i32 12
  %66 = ptrtoint ptr %write32.i22.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %write32.i22.i, align 4
  tail call void %67(ptr noundef %rtwdev, i32 noundef 262168, i32 noundef 0) #7
  %68 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %hci.i.i, align 8
  %write32.i24.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %69, i32 0, i32 12
  %70 = ptrtoint ptr %write32.i24.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %write32.i24.i, align 4
  tail call void %71(ptr noundef %rtwdev, i32 noundef 262172, i32 noundef 753929) #7
  %72 = ptrtoint ptr %mac_id to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %mac_id, align 8
  %74 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %hci.i.i, align 8
  %read32.i38.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %75, i32 0, i32 9
  %76 = ptrtoint ptr %read32.i38.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %read32.i38.i.i, align 4
  %call.i39.i.i = tail call i32 %77(ptr noundef %rtwdev, i32 noundef 49152) #7
  %78 = zext i32 %call.i39.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %78, ptr @__sancov_gen_cov_switch_values.465)
  switch i32 %call.i39.i.i, label %lor.lhs.false22.i.i [
    i32 -353703190, label %if.end.cleanup_crit_edge
    i32 -559038737, label %if.end.cleanup_crit_edge55
  ]

if.end.cleanup_crit_edge55:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false22.i.i:                              ; preds = %if.end
  %and.i.i = and i32 %call.i39.i.i, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %cmp23.not.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %cmp23.not.i.not.i, label %lor.lhs.false22.i.i.cleanup_crit_edge, label %if.end6

lor.lhs.false22.i.i.cleanup_crit_edge:            ; preds = %lor.lhs.false22.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6:                                          ; preds = %lor.lhs.false22.i.i
  %79 = lshr i8 %73, 5
  %and.i = and i8 %73, 31
  %call18.i = tail call i32 @rtw89_fw_h2c_macid_pause(ptr noundef %rtwdev, i8 noundef zeroext %and.i, i8 noundef zeroext %79, i1 noundef zeroext false) #7
  %call7 = tail call i32 @rtw89_fw_h2c_vif_maintain(ptr noundef %rtwdev, ptr noundef %rtwvif, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end10:                                         ; preds = %if.end6
  %call11 = tail call i32 @rtw89_cam_init(ptr noundef %rtwdev, ptr noundef %rtwvif) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end14, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end14:                                         ; preds = %if.end10
  %call15 = tail call i32 @rtw89_fw_h2c_cam(ptr noundef %rtwdev, ptr noundef %rtwvif, ptr noundef null, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end18, label %if.end14.cleanup_crit_edge

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end18:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  %80 = ptrtoint ptr %mac_id to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %mac_id, align 8
  %call20 = tail call i32 @rtw89_fw_h2c_default_cmac_tbl(ptr noundef %rtwdev, i8 noundef zeroext %81) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %if.end14.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %lor.lhs.false22.i.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.end.cleanup_crit_edge55, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call7, %if.end6.cleanup_crit_edge ], [ %call11, %if.end10.cleanup_crit_edge ], [ %call15, %if.end14.cleanup_crit_edge ], [ %call20, %if.end18 ], [ -14, %if.end.cleanup_crit_edge ], [ -14, %if.end.cleanup_crit_edge55 ], [ -14, %lor.lhs.false22.i.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtw89_mac_port_update(ptr noundef %rtwdev, ptr noundef readonly %rtwvif) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %port1 = getelementptr inbounds %struct.rtw89_vif, ptr %rtwvif, i32 0, i32 2
  %0 = ptrtoint ptr %port1 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %port1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %1)
  %cmp = icmp ugt i8 %1, 4
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %mac_idx.i.i = getelementptr inbounds %struct.rtw89_vif, ptr %rtwvif, i32 0, i32 6
  %2 = ptrtoint ptr %mac_idx.i.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %mac_idx.i.i, align 1
  %conv.i.i.i = zext i8 %1 to i32
  %mul.i.i.i = shl nuw nsw i32 %conv.i.i.i, 6
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp.i.i.i.i = icmp eq i8 %3, 0
  %cond.i.i.v.i.i = select i1 %cmp.i.i.i.i, i32 50176, i32 58368
  %cond.i.i.i.i = add nuw nsw i32 %cond.i.i.v.i.i, %mul.i.i.i
  %hci.i.i.i.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 7
  %4 = ptrtoint ptr %hci.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hci.i.i.i.i, align 8
  %read32.i.i.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %5, i32 0, i32 9
  %6 = ptrtoint ptr %read32.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %read32.i.i.i.i, align 4
  %call.i.i.i.i = tail call i32 %7(ptr noundef %rtwdev, i32 noundef %cond.i.i.i.i) #7
  %8 = and i32 %call.i.i.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i = icmp eq i32 %8, 0
  br i1 %tobool.not.i, label %if.end.rtw89_mac_port_cfg_func_sw.exit_crit_edge, label %if.end.i

if.end.rtw89_mac_port_cfg_func_sw.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtw89_mac_port_cfg_func_sw.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %port1 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %port1, align 1
  %11 = ptrtoint ptr %mac_idx.i.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %mac_idx.i.i, align 1
  %conv.i.i30.i = zext i8 %10 to i32
  %mul.i.i31.i = shl nuw nsw i32 %conv.i.i30.i, 6
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %cmp.i.i.i32.i = icmp eq i8 %12, 0
  %cond.i.i.i33.v.i = select i1 %cmp.i.i.i32.i, i32 50180, i32 58372
  %cond.i.i.i33.i = add nuw nsw i32 %cond.i.i.i33.v.i, %mul.i.i31.i
  %13 = ptrtoint ptr %hci.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hci.i.i.i.i, align 8
  %read32.i.i.i35.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %14, i32 0, i32 9
  %15 = ptrtoint ptr %read32.i.i.i35.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %read32.i.i.i35.i, align 4
  %call.i.i.i36.i = tail call i32 %16(ptr noundef %rtwdev, i32 noundef %cond.i.i.i33.i) #7
  %and.i.i37.i = and i32 %call.i.i.i36.i, -256
  %17 = ptrtoint ptr %hci.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %hci.i.i.i.i, align 8
  %write32.i.i.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %18, i32 0, i32 12
  %19 = ptrtoint ptr %write32.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %write32.i.i.i.i, align 4
  tail call void %20(ptr noundef %rtwdev, i32 noundef %cond.i.i.i33.i, i32 noundef %and.i.i37.i) #7
  %21 = ptrtoint ptr %port1 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %port1, align 1
  %23 = ptrtoint ptr %mac_idx.i.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %mac_idx.i.i, align 1
  %conv.i.i40.i = zext i8 %22 to i32
  %mul.i.i41.i = shl nuw nsw i32 %conv.i.i40.i, 6
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %cmp.i.i.i43.i = icmp eq i8 %24, 0
  %cond.i.i.i45.v.i = select i1 %cmp.i.i.i43.i, i32 50180, i32 58372
  %cond.i.i.i45.i = add nuw nsw i32 %cond.i.i.i45.v.i, %mul.i.i41.i
  %25 = ptrtoint ptr %hci.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %hci.i.i.i.i, align 8
  %read32.i.i.i48.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %26, i32 0, i32 9
  %27 = ptrtoint ptr %read32.i.i.i48.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %read32.i.i.i48.i, align 4
  %call.i.i.i49.i = tail call i32 %28(ptr noundef %rtwdev, i32 noundef %cond.i.i.i45.i) #7
  %and21.i.i.i = and i32 %call.i.i.i49.i, -268369921
  %or.i.i.i = or i32 %and21.i.i.i, 65536
  %29 = ptrtoint ptr %hci.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %hci.i.i.i.i, align 8
  %write32.i.i.i50.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %30, i32 0, i32 12
  %31 = ptrtoint ptr %write32.i.i.i50.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %write32.i.i.i50.i, align 4
  tail call void %32(ptr noundef %rtwdev, i32 noundef %cond.i.i.i45.i, i32 noundef %or.i.i.i) #7
  %33 = ptrtoint ptr %port1 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %port1, align 1
  %35 = ptrtoint ptr %mac_idx.i.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %mac_idx.i.i, align 1
  %conv.i.i53.i = zext i8 %34 to i32
  %mul.i.i54.i = shl nuw nsw i32 %conv.i.i53.i, 6
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %cmp.i.i.i56.i = icmp eq i8 %36, 0
  %cond.i.i.i58.v.i = select i1 %cmp.i.i.i56.i, i32 50190, i32 58382
  %cond.i.i.i58.i = add nuw nsw i32 %cond.i.i.i58.v.i, %mul.i.i54.i
  %37 = ptrtoint ptr %hci.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %hci.i.i.i.i, align 8
  %read16.i.i.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %38, i32 0, i32 8
  %39 = ptrtoint ptr %read16.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %read16.i.i.i.i, align 4
  %call.i.i.i60.i = tail call zeroext i16 %40(ptr noundef %rtwdev, i32 noundef %cond.i.i.i58.i) #7
  %and.i.i61.i = and i16 %call.i.i.i60.i, -4096
  %41 = ptrtoint ptr %hci.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %hci.i.i.i.i, align 8
  %write16.i.i.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %42, i32 0, i32 11
  %43 = ptrtoint ptr %write16.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %write16.i.i.i.i, align 4
  tail call void %44(ptr noundef %rtwdev, i32 noundef %cond.i.i.i58.i, i16 noundef zeroext %and.i.i61.i) #7
  %45 = ptrtoint ptr %port1 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %port1, align 1
  %47 = ptrtoint ptr %mac_idx.i.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %mac_idx.i.i, align 1
  %conv.i.i64.i = zext i8 %46 to i32
  %mul.i.i65.i = shl nuw nsw i32 %conv.i.i64.i, 6
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %cmp.i.i.i67.i = icmp eq i8 %48, 0
  %cond.i.i.i69.v.i = select i1 %cmp.i.i.i67.i, i32 50188, i32 58380
  %cond.i.i.i69.i = add nuw nsw i32 %cond.i.i.i69.v.i, %mul.i.i65.i
  %49 = ptrtoint ptr %hci.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %hci.i.i.i.i, align 8
  %read16.i.i.i71.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %50, i32 0, i32 8
  %51 = ptrtoint ptr %read16.i.i.i71.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %read16.i.i.i71.i, align 4
  %call.i.i.i72.i = tail call zeroext i16 %52(ptr noundef %rtwdev, i32 noundef %cond.i.i.i69.i) #7
  %and.i.i73.i = and i16 %call.i.i.i72.i, -4096
  %53 = ptrtoint ptr %hci.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %hci.i.i.i.i, align 8
  %write16.i.i.i74.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %54, i32 0, i32 11
  %55 = ptrtoint ptr %write16.i.i.i74.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %write16.i.i.i74.i, align 4
  tail call void %56(ptr noundef %rtwdev, i32 noundef %cond.i.i.i69.i, i16 noundef zeroext %and.i.i73.i) #7
  %beacon_int.i = getelementptr i8, ptr %rtwvif, i32 -814
  %57 = ptrtoint ptr %beacon_int.i to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %beacon_int.i, align 2
  %conv.i = zext i16 %58 to i32
  %add.i = add nuw nsw i32 %conv.i, 1
  tail call void @msleep(i32 noundef %add.i) #7
  %59 = ptrtoint ptr %port1 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %port1, align 1
  %61 = ptrtoint ptr %mac_idx.i.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %mac_idx.i.i, align 1
  %conv.i.i77.i = zext i8 %60 to i32
  %mul.i.i78.i = shl nuw nsw i32 %conv.i.i77.i, 6
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %cmp.i.i.i80.i = icmp eq i8 %62, 0
  %cond.i.i.i82.v.i = select i1 %cmp.i.i.i80.i, i32 50176, i32 58368
  %cond.i.i.i82.i = add nuw nsw i32 %cond.i.i.i82.v.i, %mul.i.i78.i
  %63 = ptrtoint ptr %hci.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %hci.i.i.i.i, align 8
  %read32.i.i.i84.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %64, i32 0, i32 9
  %65 = ptrtoint ptr %read32.i.i.i84.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %read32.i.i.i84.i, align 4
  %call.i.i.i85.i = tail call i32 %66(ptr noundef %rtwdev, i32 noundef %cond.i.i.i82.i) #7
  %and.i.i86.i = and i32 %call.i.i.i85.i, -65541
  %67 = ptrtoint ptr %hci.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %hci.i.i.i.i, align 8
  %write32.i.i.i87.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %68, i32 0, i32 12
  %69 = ptrtoint ptr %write32.i.i.i87.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %write32.i.i.i87.i, align 4
  tail call void %70(ptr noundef %rtwdev, i32 noundef %cond.i.i.i82.i, i32 noundef %and.i.i86.i) #7
  %71 = ptrtoint ptr %port1 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %port1, align 1
  %73 = ptrtoint ptr %mac_idx.i.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %mac_idx.i.i, align 1
  %conv.i.i90.i = zext i8 %72 to i32
  %mul.i.i91.i = shl nuw nsw i32 %conv.i.i90.i, 6
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %74)
  %cmp.i.i.i92.i = icmp eq i8 %74, 0
  %cond.i.i.v.i93.i = select i1 %cmp.i.i.i92.i, i32 50176, i32 58368
  %cond.i.i.i94.i = add nuw nsw i32 %cond.i.i.v.i93.i, %mul.i.i91.i
  %75 = ptrtoint ptr %hci.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %hci.i.i.i.i, align 8
  %read32.i.i.i96.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %76, i32 0, i32 9
  %77 = ptrtoint ptr %read32.i.i.i96.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %read32.i.i.i96.i, align 4
  %call.i.i.i97.i = tail call i32 %78(ptr noundef %rtwdev, i32 noundef %cond.i.i.i94.i) #7
  %or.i.i98.i = or i32 %call.i.i.i97.i, 32
  %79 = ptrtoint ptr %hci.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %hci.i.i.i.i, align 8
  %write32.i.i.i99.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %80, i32 0, i32 12
  %81 = ptrtoint ptr %write32.i.i.i99.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %write32.i.i.i99.i, align 4
  tail call void %82(ptr noundef %rtwdev, i32 noundef %cond.i.i.i94.i, i32 noundef %or.i.i98.i) #7
  %83 = ptrtoint ptr %port1 to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %port1, align 1
  %85 = ptrtoint ptr %mac_idx.i.i to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %mac_idx.i.i, align 1
  %conv.i.i102.i = zext i8 %84 to i32
  %mul.i.i103.i = shl nuw nsw i32 %conv.i.i102.i, 6
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %86)
  %cmp.i.i.i104.i = icmp eq i8 %86, 0
  %cond.i.i.v.i105.i = select i1 %cmp.i.i.i104.i, i32 50228, i32 58420
  %cond.i.i.i106.i = add nuw nsw i32 %cond.i.i.v.i105.i, %mul.i.i103.i
  %87 = ptrtoint ptr %hci.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %hci.i.i.i.i, align 8
  %write32.i.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %88, i32 0, i32 12
  %89 = ptrtoint ptr %write32.i.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %write32.i.i.i, align 4
  tail call void %90(ptr noundef %rtwdev, i32 noundef %cond.i.i.i106.i, i32 noundef 0) #7
  br label %rtw89_mac_port_cfg_func_sw.exit

rtw89_mac_port_cfg_func_sw.exit:                  ; preds = %if.end.i, %if.end.rtw89_mac_port_cfg_func_sw.exit_crit_edge
  %91 = ptrtoint ptr %port1 to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %port1, align 1
  %93 = ptrtoint ptr %mac_idx.i.i to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %mac_idx.i.i, align 1
  %conv.i.i.i40 = zext i8 %92 to i32
  %mul.i.i.i41 = shl nuw nsw i32 %conv.i.i.i40, 6
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %94)
  %cmp.i.i.i.i42 = icmp eq i8 %94, 0
  %cond.i.i.i.v.i = select i1 %cmp.i.i.i.i42, i32 50176, i32 58368
  %cond.i.i.i.i43 = add nuw nsw i32 %cond.i.i.i.v.i, %mul.i.i.i41
  %95 = ptrtoint ptr %hci.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %hci.i.i.i.i, align 8
  %read32.i.i.i.i45 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %96, i32 0, i32 9
  %97 = ptrtoint ptr %read32.i.i.i.i45 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %read32.i.i.i.i45, align 4
  %call.i.i.i.i46 = tail call i32 %98(ptr noundef %rtwdev, i32 noundef %cond.i.i.i.i43) #7
  %and.i.i.i = and i32 %call.i.i.i.i46, -3
  %99 = ptrtoint ptr %hci.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %hci.i.i.i.i, align 8
  %write32.i.i.i.i47 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %100, i32 0, i32 12
  %101 = ptrtoint ptr %write32.i.i.i.i47 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %write32.i.i.i.i47, align 4
  tail call void %102(ptr noundef %rtwdev, i32 noundef %cond.i.i.i.i43, i32 noundef %and.i.i.i) #7
  %103 = ptrtoint ptr %port1 to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %port1, align 1
  %105 = ptrtoint ptr %mac_idx.i.i to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %mac_idx.i.i, align 1
  %conv.i.i.i50 = zext i8 %104 to i32
  %mul.i.i.i51 = shl nuw nsw i32 %conv.i.i.i50, 6
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %106)
  %cmp.i.i.i.i52 = icmp eq i8 %106, 0
  %cond.i.i.i.v.i53 = select i1 %cmp.i.i.i.i52, i32 50176, i32 58368
  %cond.i.i.i.i54 = add nuw nsw i32 %cond.i.i.i.v.i53, %mul.i.i.i51
  %107 = ptrtoint ptr %hci.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %hci.i.i.i.i, align 8
  %read32.i.i.i.i56 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %108, i32 0, i32 9
  %109 = ptrtoint ptr %read32.i.i.i.i56 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %read32.i.i.i.i56, align 4
  %call.i.i.i.i57 = tail call i32 %110(ptr noundef %rtwdev, i32 noundef %cond.i.i.i.i54) #7
  %and.i.i.i58 = and i32 %call.i.i.i.i57, -2
  %111 = ptrtoint ptr %hci.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %hci.i.i.i.i, align 8
  %write32.i.i.i.i59 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %112, i32 0, i32 12
  %113 = ptrtoint ptr %write32.i.i.i.i59 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %write32.i.i.i.i59, align 4
  tail call void %114(ptr noundef %rtwdev, i32 noundef %cond.i.i.i.i54, i32 noundef %and.i.i.i58) #7
  %net_type.i = getelementptr inbounds %struct.rtw89_vif, ptr %rtwvif, i32 0, i32 7
  %115 = ptrtoint ptr %net_type.i to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %net_type.i, align 8
  %117 = ptrtoint ptr %port1 to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %port1, align 1
  %119 = ptrtoint ptr %mac_idx.i.i to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %mac_idx.i.i, align 1
  %conv.i.i.i62 = zext i8 %118 to i32
  %mul.i.i.i63 = shl nuw nsw i32 %conv.i.i.i62, 6
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %120)
  %cmp.i.i.i.i64 = icmp eq i8 %120, 0
  %cond.i.i.i.v.i65 = select i1 %cmp.i.i.i.i64, i32 50176, i32 58368
  %cond.i.i.i.i66 = add nuw nsw i32 %cond.i.i.i.v.i65, %mul.i.i.i63
  %conv.i67 = zext i8 %116 to i32
  %121 = ptrtoint ptr %hci.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %hci.i.i.i.i, align 8
  %read32.i.i.i.i69 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %122, i32 0, i32 9
  %123 = ptrtoint ptr %read32.i.i.i.i69 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %read32.i.i.i.i69, align 4
  %call.i.i.i.i70 = tail call i32 %124(ptr noundef %rtwdev, i32 noundef %cond.i.i.i.i66) #7
  %and21.i.i.i71 = and i32 %call.i.i.i.i70, -3073
  %shl.i.i.i = shl nuw nsw i32 %conv.i67, 10
  %and22.i.i.i = and i32 %shl.i.i.i, 3072
  %or.i.i.i72 = or i32 %and21.i.i.i71, %and22.i.i.i
  %125 = ptrtoint ptr %hci.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %hci.i.i.i.i, align 8
  %write32.i.i.i.i73 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %126, i32 0, i32 12
  %127 = ptrtoint ptr %write32.i.i.i.i73 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %write32.i.i.i.i73, align 4
  tail call void %128(ptr noundef %rtwdev, i32 noundef %cond.i.i.i.i66, i32 noundef %or.i.i.i72) #7
  %129 = ptrtoint ptr %net_type.i to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %net_type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %130)
  %cmp.not.i = icmp eq i8 %130, 0
  %131 = ptrtoint ptr %port1 to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %port1, align 1
  %133 = ptrtoint ptr %mac_idx.i.i to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %mac_idx.i.i, align 1
  %conv.i.i10.i = zext i8 %132 to i32
  %mul.i.i11.i = shl nuw nsw i32 %conv.i.i10.i, 6
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %134)
  %cmp.i.i.i12.i = icmp eq i8 %134, 0
  %cond.i.i.i13.v.i = select i1 %cmp.i.i.i12.i, i32 50176, i32 58368
  %cond.i.i.i13.i = add nuw nsw i32 %cond.i.i.i13.v.i, %mul.i.i11.i
  %135 = ptrtoint ptr %hci.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %hci.i.i.i.i, align 8
  %read32.i.i.i15.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %136, i32 0, i32 9
  %137 = ptrtoint ptr %read32.i.i.i15.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %read32.i.i.i15.i, align 4
  %call.i.i.i16.i = tail call i32 %138(ptr noundef %rtwdev, i32 noundef %cond.i.i.i13.i) #7
  %and.i.i.i75 = and i32 %call.i.i.i16.i, -73729
  %masksel.i = select i1 %cmp.not.i, i32 0, i32 73728
  %and.i.i.sink.i = or i32 %and.i.i.i75, %masksel.i
  %139 = ptrtoint ptr %hci.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %hci.i.i.i.i, align 8
  %write32.i.i.i17.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %140, i32 0, i32 12
  %141 = ptrtoint ptr %write32.i.i.i17.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %write32.i.i.i17.i, align 4
  tail call void %142(ptr noundef %rtwdev, i32 noundef %cond.i.i.i13.i, i32 noundef %and.i.i.sink.i) #7
  %143 = ptrtoint ptr %net_type.i to i32
  call void @__asan_load1_noabort(i32 %143)
  %144 = load i8, ptr %net_type.i, align 8
  %.off.i = add i8 %144, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %.off.i)
  %switch.i = icmp ult i8 %.off.i, 2
  %145 = ptrtoint ptr %port1 to i32
  call void @__asan_load1_noabort(i32 %145)
  %146 = load i8, ptr %port1, align 1
  %147 = ptrtoint ptr %mac_idx.i.i to i32
  call void @__asan_load1_noabort(i32 %147)
  %148 = load i8, ptr %mac_idx.i.i, align 1
  %conv.i.i.i79 = zext i8 %146 to i32
  %mul.i.i.i80 = shl nuw nsw i32 %conv.i.i.i79, 6
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %148)
  %cmp.i.i.i.i81 = icmp eq i8 %148, 0
  %cond.i.i.v.i.i82 = select i1 %cmp.i.i.i.i81, i32 50176, i32 58368
  %cond.i.i.i.i83 = add nuw nsw i32 %cond.i.i.v.i.i82, %mul.i.i.i80
  %149 = ptrtoint ptr %hci.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %hci.i.i.i.i, align 8
  %read32.i.i.i.i85 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %150, i32 0, i32 9
  %151 = ptrtoint ptr %read32.i.i.i.i85 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %read32.i.i.i.i85, align 4
  %call.i.i.i.i86 = tail call i32 %152(ptr noundef %rtwdev, i32 noundef %cond.i.i.i.i83) #7
  %and.i.i.i87 = and i32 %call.i.i.i.i86, -17
  %masksel.i88 = select i1 %switch.i, i32 16, i32 0
  %and.i.i.sink.i89 = or i32 %and.i.i.i87, %masksel.i88
  %153 = ptrtoint ptr %hci.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %hci.i.i.i.i, align 8
  %write32.i.i.i22.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %154, i32 0, i32 12
  %155 = ptrtoint ptr %write32.i.i.i22.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %write32.i.i.i22.i, align 4
  tail call void %156(ptr noundef %rtwdev, i32 noundef %cond.i.i.i.i83, i32 noundef %and.i.i.sink.i89) #7
  %157 = ptrtoint ptr %net_type.i to i32
  call void @__asan_load1_noabort(i32 %157)
  %158 = load i8, ptr %net_type.i, align 8
  %.off.i91 = add i8 %158, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %.off.i91)
  %switch.i92 = icmp ult i8 %.off.i91, 2
  %159 = ptrtoint ptr %port1 to i32
  call void @__asan_load1_noabort(i32 %159)
  %160 = load i8, ptr %port1, align 1
  %161 = ptrtoint ptr %mac_idx.i.i to i32
  call void @__asan_load1_noabort(i32 %161)
  %162 = load i8, ptr %mac_idx.i.i, align 1
  %conv.i.i.i95 = zext i8 %160 to i32
  %mul.i.i.i96 = shl nuw nsw i32 %conv.i.i.i95, 6
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %162)
  %cmp.i.i.i.i97 = icmp eq i8 %162, 0
  %cond.i.i.v.i.i98 = select i1 %cmp.i.i.i.i97, i32 50176, i32 58368
  %cond.i.i.i.i99 = add nuw nsw i32 %cond.i.i.v.i.i98, %mul.i.i.i96
  %163 = ptrtoint ptr %hci.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %hci.i.i.i.i, align 8
  %read32.i.i.i.i101 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %164, i32 0, i32 9
  %165 = ptrtoint ptr %read32.i.i.i.i101 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %read32.i.i.i.i101, align 4
  %call.i.i.i.i102 = tail call i32 %166(ptr noundef %rtwdev, i32 noundef %cond.i.i.i.i99) #7
  %and.i.i.i103 = and i32 %call.i.i.i.i102, -9
  %masksel.i104 = select i1 %switch.i92, i32 8, i32 0
  %and.i.i.sink.i105 = or i32 %and.i.i.i103, %masksel.i104
  %167 = ptrtoint ptr %hci.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %hci.i.i.i.i, align 8
  %write32.i.i.i21.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %168, i32 0, i32 12
  %169 = ptrtoint ptr %write32.i.i.i21.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %write32.i.i.i21.i, align 4
  tail call void %170(ptr noundef %rtwdev, i32 noundef %cond.i.i.i.i99, i32 noundef %and.i.i.sink.i105) #7
  %171 = ptrtoint ptr %net_type.i to i32
  call void @__asan_load1_noabort(i32 %171)
  %172 = load i8, ptr %net_type.i, align 8
  %173 = zext i8 %172 to i64
  call void @__sanitizer_cov_trace_switch(i64 %173, ptr @__sancov_gen_cov_switch_values.466)
  switch i8 %172, label %if.else.i [
    i8 3, label %rtw89_mac_port_cfg_func_sw.exit.if.then.i_crit_edge
    i8 1, label %rtw89_mac_port_cfg_func_sw.exit.if.then.i_crit_edge235
  ]

rtw89_mac_port_cfg_func_sw.exit.if.then.i_crit_edge235: ; preds = %rtw89_mac_port_cfg_func_sw.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

rtw89_mac_port_cfg_func_sw.exit.if.then.i_crit_edge: ; preds = %rtw89_mac_port_cfg_func_sw.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

if.then.i:                                        ; preds = %rtw89_mac_port_cfg_func_sw.exit.if.then.i_crit_edge, %rtw89_mac_port_cfg_func_sw.exit.if.then.i_crit_edge235
  %174 = ptrtoint ptr %port1 to i32
  call void @__asan_load1_noabort(i32 %174)
  %175 = load i8, ptr %port1, align 1
  %176 = ptrtoint ptr %mac_idx.i.i to i32
  call void @__asan_load1_noabort(i32 %176)
  %177 = load i8, ptr %mac_idx.i.i, align 1
  %conv.i.i.i109 = zext i8 %175 to i32
  %mul.i.i.i110 = shl nuw nsw i32 %conv.i.i.i109, 6
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %177)
  %cmp.i.i.i.i111 = icmp eq i8 %177, 0
  %cond.i.i.v.i.i112 = select i1 %cmp.i.i.i.i111, i32 50176, i32 58368
  %cond.i.i.i.i113 = add nuw nsw i32 %cond.i.i.v.i.i112, %mul.i.i.i110
  %178 = ptrtoint ptr %hci.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %hci.i.i.i.i, align 8
  %read32.i.i.i.i115 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %179, i32 0, i32 9
  %180 = ptrtoint ptr %read32.i.i.i.i115 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %read32.i.i.i.i115, align 4
  %call.i.i.i.i116 = tail call i32 %181(ptr noundef %rtwdev, i32 noundef %cond.i.i.i.i113) #7
  %or.i.i.i117 = or i32 %call.i.i.i.i116, 4096
  %182 = ptrtoint ptr %hci.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %hci.i.i.i.i, align 8
  %write32.i.i.i.i118 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %183, i32 0, i32 12
  %184 = ptrtoint ptr %write32.i.i.i.i118 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %write32.i.i.i.i118, align 4
  tail call void %185(ptr noundef %rtwdev, i32 noundef %cond.i.i.i.i113, i32 noundef %or.i.i.i117) #7
  br label %rtw89_mac_port_cfg_tx_sw.exit

if.else.i:                                        ; preds = %rtw89_mac_port_cfg_func_sw.exit
  call void @__sanitizer_cov_trace_pc() #9
  %186 = ptrtoint ptr %port1 to i32
  call void @__asan_load1_noabort(i32 %186)
  %187 = load i8, ptr %port1, align 1
  %188 = ptrtoint ptr %mac_idx.i.i to i32
  call void @__asan_load1_noabort(i32 %188)
  %189 = load i8, ptr %mac_idx.i.i, align 1
  %conv.i.i14.i = zext i8 %187 to i32
  %mul.i.i15.i = shl nuw nsw i32 %conv.i.i14.i, 6
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %189)
  %cmp.i.i.i16.i = icmp eq i8 %189, 0
  %cond.i.i.i17.v.i = select i1 %cmp.i.i.i16.i, i32 50176, i32 58368
  %cond.i.i.i17.i = add nuw nsw i32 %cond.i.i.i17.v.i, %mul.i.i15.i
  %190 = ptrtoint ptr %hci.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %hci.i.i.i.i, align 8
  %read32.i.i.i19.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %191, i32 0, i32 9
  %192 = ptrtoint ptr %read32.i.i.i19.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %read32.i.i.i19.i, align 4
  %call.i.i.i20.i = tail call i32 %193(ptr noundef %rtwdev, i32 noundef %cond.i.i.i17.i) #7
  %and.i.i.i119 = and i32 %call.i.i.i20.i, -4097
  %194 = ptrtoint ptr %hci.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %hci.i.i.i.i, align 8
  %write32.i.i.i21.i120 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %195, i32 0, i32 12
  %196 = ptrtoint ptr %write32.i.i.i21.i120 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %write32.i.i.i21.i120, align 4
  tail call void %197(ptr noundef %rtwdev, i32 noundef %cond.i.i.i17.i, i32 noundef %and.i.i.i119) #7
  br label %rtw89_mac_port_cfg_tx_sw.exit

rtw89_mac_port_cfg_tx_sw.exit:                    ; preds = %if.else.i, %if.then.i
  %beacon_int.i122 = getelementptr i8, ptr %rtwvif, i32 -814
  %198 = ptrtoint ptr %beacon_int.i122 to i32
  call void @__asan_load2_noabort(i32 %198)
  %199 = load i16, ptr %beacon_int.i122, align 2
  %200 = ptrtoint ptr %port1 to i32
  call void @__asan_load1_noabort(i32 %200)
  %201 = load i8, ptr %port1, align 1
  %202 = ptrtoint ptr %mac_idx.i.i to i32
  call void @__asan_load1_noabort(i32 %202)
  %203 = load i8, ptr %mac_idx.i.i, align 1
  %conv.i.i.i125 = zext i8 %201 to i32
  %mul.i.i.i126 = shl nuw nsw i32 %conv.i.i.i125, 6
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %203)
  %cmp.i.i.i.i127 = icmp eq i8 %203, 0
  %cond.i.i.i.v.i128 = select i1 %cmp.i.i.i.i127, i32 50196, i32 58388
  %cond.i.i.i.i129 = add nuw nsw i32 %cond.i.i.i.v.i128, %mul.i.i.i126
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %199)
  %tobool.not.i130 = icmp eq i16 %199, 0
  %narrow.i = select i1 %tobool.not.i130, i16 100, i16 %199
  %spec.select.i = zext i16 %narrow.i to i32
  %204 = ptrtoint ptr %hci.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %hci.i.i.i.i, align 8
  %read32.i.i.i.i132 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %205, i32 0, i32 9
  %206 = ptrtoint ptr %read32.i.i.i.i132 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %read32.i.i.i.i132, align 4
  %call.i.i.i.i133 = tail call i32 %207(ptr noundef %rtwdev, i32 noundef %cond.i.i.i.i129) #7
  %and21.i.i.i134 = and i32 %call.i.i.i.i133, -65536
  %or.i.i.i135 = or i32 %and21.i.i.i134, %spec.select.i
  %208 = ptrtoint ptr %hci.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %hci.i.i.i.i, align 8
  %write32.i.i.i.i136 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %209, i32 0, i32 12
  %210 = ptrtoint ptr %write32.i.i.i.i136 to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %write32.i.i.i.i136, align 4
  tail call void %211(ptr noundef %rtwdev, i32 noundef %cond.i.i.i.i129, i32 noundef %or.i.i.i135) #7
  %212 = ptrtoint ptr %port1 to i32
  call void @__asan_load1_noabort(i32 %212)
  %213 = load i8, ptr %port1, align 1
  %214 = ptrtoint ptr %mac_idx.i.i to i32
  call void @__asan_load1_noabort(i32 %214)
  %215 = load i8, ptr %mac_idx.i.i, align 1
  %conv.i.i.i139 = zext i8 %213 to i32
  %mul.i.i.i140 = shl nuw nsw i32 %conv.i.i.i139, 6
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %215)
  %cmp.i.i.i.i141 = icmp eq i8 %215, 0
  %cond.i.i.i.v.i142 = select i1 %cmp.i.i.i.i141, i32 50180, i32 58372
  %cond.i.i.i.i143 = add nuw nsw i32 %cond.i.i.i.v.i142, %mul.i.i.i140
  %216 = ptrtoint ptr %hci.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %hci.i.i.i.i, align 8
  %read32.i.i.i.i145 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %217, i32 0, i32 9
  %218 = ptrtoint ptr %read32.i.i.i.i145 to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %read32.i.i.i.i145, align 4
  %call.i.i.i.i146 = tail call i32 %219(ptr noundef %rtwdev, i32 noundef %cond.i.i.i.i143) #7
  %and21.i.i.i147 = and i32 %call.i.i.i.i146, -256
  %or.i.i.i148 = or i32 %and21.i.i.i147, 2
  %220 = ptrtoint ptr %hci.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %hci.i.i.i.i, align 8
  %write32.i.i.i.i149 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %221, i32 0, i32 12
  %222 = ptrtoint ptr %write32.i.i.i.i149 to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %write32.i.i.i.i149, align 4
  tail call void %223(ptr noundef %rtwdev, i32 noundef %cond.i.i.i.i143, i32 noundef %or.i.i.i148) #7
  %224 = ptrtoint ptr %port1 to i32
  call void @__asan_load1_noabort(i32 %224)
  %225 = load i8, ptr %port1, align 1
  %226 = ptrtoint ptr %mac_idx.i.i to i32
  call void @__asan_load1_noabort(i32 %226)
  %227 = load i8, ptr %mac_idx.i.i, align 1
  %conv.i.i.i152 = zext i8 %225 to i32
  %mul.i.i.i153 = shl nuw nsw i32 %conv.i.i.i152, 6
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %227)
  %cmp.i.i.i.i154 = icmp eq i8 %227, 0
  %cond.i.i.i.v.i155 = select i1 %cmp.i.i.i.i154, i32 50180, i32 58372
  %cond.i.i.i.i156 = add nuw nsw i32 %cond.i.i.i.v.i155, %mul.i.i.i153
  %228 = ptrtoint ptr %hci.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %hci.i.i.i.i, align 8
  %read32.i.i.i.i158 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %229, i32 0, i32 9
  %230 = ptrtoint ptr %read32.i.i.i.i158 to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %read32.i.i.i.i158, align 4
  %call.i.i.i.i159 = tail call i32 %231(ptr noundef %rtwdev, i32 noundef %cond.i.i.i.i156) #7
  %and21.i.i.i160 = and i32 %call.i.i.i.i159, -268369921
  %or.i.i.i161 = or i32 %and21.i.i.i160, 13107200
  %232 = ptrtoint ptr %hci.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %hci.i.i.i.i, align 8
  %write32.i.i.i.i162 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %233, i32 0, i32 12
  %234 = ptrtoint ptr %write32.i.i.i.i162 to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %write32.i.i.i.i162, align 4
  tail call void %235(ptr noundef %rtwdev, i32 noundef %cond.i.i.i.i156, i32 noundef %or.i.i.i161) #7
  %236 = ptrtoint ptr %port1 to i32
  call void @__asan_load1_noabort(i32 %236)
  %237 = load i8, ptr %port1, align 1
  %238 = ptrtoint ptr %mac_idx.i.i to i32
  call void @__asan_load1_noabort(i32 %238)
  %239 = load i8, ptr %mac_idx.i.i, align 1
  %conv.i.i.i165 = zext i8 %237 to i32
  %mul.i.i.i166 = shl nuw nsw i32 %conv.i.i.i165, 6
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %239)
  %cmp.i.i.i.i167 = icmp eq i8 %239, 0
  %cond.i.i.i.v.i168 = select i1 %cmp.i.i.i.i167, i32 50184, i32 58376
  %cond.i.i.i.i169 = add nuw nsw i32 %cond.i.i.i.v.i168, %mul.i.i.i166
  %240 = ptrtoint ptr %hci.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %hci.i.i.i.i, align 8
  %read32.i.i.i.i171 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %241, i32 0, i32 9
  %242 = ptrtoint ptr %read32.i.i.i.i171 to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %read32.i.i.i.i171, align 4
  %call.i.i.i.i172 = tail call i32 %243(ptr noundef %rtwdev, i32 noundef %cond.i.i.i.i169) #7
  %and21.i.i.i173 = and i32 %call.i.i.i.i172, -268369921
  %244 = ptrtoint ptr %hci.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %hci.i.i.i.i, align 8
  %write32.i.i.i.i174 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %245, i32 0, i32 12
  %246 = ptrtoint ptr %write32.i.i.i.i174 to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %write32.i.i.i.i174, align 4
  tail call void %247(ptr noundef %rtwdev, i32 noundef %cond.i.i.i.i169, i32 noundef %and21.i.i.i173) #7
  %248 = ptrtoint ptr %port1 to i32
  call void @__asan_load1_noabort(i32 %248)
  %249 = load i8, ptr %port1, align 1
  %250 = ptrtoint ptr %mac_idx.i.i to i32
  call void @__asan_load1_noabort(i32 %250)
  %251 = load i8, ptr %mac_idx.i.i, align 1
  %conv.i.i.i177 = zext i8 %249 to i32
  %mul.i.i.i178 = shl nuw nsw i32 %conv.i.i.i177, 6
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %251)
  %cmp.i.i.i.i179 = icmp eq i8 %251, 0
  %cond.i.i.v.i.i180 = select i1 %cmp.i.i.i.i179, i32 50190, i32 58382
  %cond.i.i.i.i181 = add nuw nsw i32 %cond.i.i.v.i.i180, %mul.i.i.i178
  %252 = ptrtoint ptr %hci.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %hci.i.i.i.i, align 8
  %read16.i.i.i.i183 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %253, i32 0, i32 8
  %254 = ptrtoint ptr %read16.i.i.i.i183 to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %read16.i.i.i.i183, align 4
  %call.i.i.i.i184 = tail call zeroext i16 %255(ptr noundef %rtwdev, i32 noundef %cond.i.i.i.i181) #7
  %256 = and i16 %call.i.i.i.i184, -4096
  %257 = or i16 %256, 5
  %258 = ptrtoint ptr %hci.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %hci.i.i.i.i, align 8
  %write16.i.i.i.i185 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %259, i32 0, i32 11
  %260 = ptrtoint ptr %write16.i.i.i.i185 to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %write16.i.i.i.i185, align 4
  tail call void %261(ptr noundef %rtwdev, i32 noundef %cond.i.i.i.i181, i16 noundef zeroext %257) #7
  %262 = ptrtoint ptr %port1 to i32
  call void @__asan_load1_noabort(i32 %262)
  %263 = load i8, ptr %port1, align 1
  %he_bss_color.i = getelementptr i8, ptr %rtwvif, i32 -511
  %264 = ptrtoint ptr %he_bss_color.i to i32
  call void @__asan_load1_noabort(i32 %264)
  %265 = load i8, ptr %he_bss_color.i, align 1
  %conv.i186 = zext i8 %263 to i32
  %266 = ptrtoint ptr %mac_idx.i.i to i32
  call void @__asan_load1_noabort(i32 %266)
  %267 = load i8, ptr %mac_idx.i.i, align 1
  %arrayidx.i = getelementptr [5 x i32], ptr @rtw89_mac_port_cfg_bss_color.masks, i32 0, i32 %conv.i186
  %268 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %267)
  %cmp.i.i = icmp eq i8 %267, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %263)
  %cmp.i = icmp ugt i8 %263, 3
  %cond.i = select i1 %cmp.i, i32 50852, i32 50848
  %add.i.i = or i32 %cond.i, 8192
  %cond.i.i = select i1 %cmp.i.i, i32 %cond.i, i32 %add.i.i
  %conv4.i = zext i8 %265 to i32
  %270 = tail call i32 @llvm.cttz.i32(i32 %269, i1 false) #7, !range !743
  %271 = ptrtoint ptr %hci.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load ptr, ptr %hci.i.i.i.i, align 8
  %read32.i.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %272, i32 0, i32 9
  %273 = ptrtoint ptr %read32.i.i.i to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load ptr, ptr %read32.i.i.i, align 4
  %call.i.i.i = tail call i32 %274(ptr noundef %rtwdev, i32 noundef %cond.i.i) #7
  %neg.i.i = xor i32 %269, -1
  %and21.i.i = and i32 %call.i.i.i, %neg.i.i
  %shl.i.i = shl i32 %conv4.i, %270
  %and22.i.i = and i32 %shl.i.i, %269
  %or.i.i = or i32 %and21.i.i, %and22.i.i
  %275 = ptrtoint ptr %hci.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load ptr, ptr %hci.i.i.i.i, align 8
  %write32.i.i.i187 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %276, i32 0, i32 12
  %277 = ptrtoint ptr %write32.i.i.i187 to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load ptr, ptr %write32.i.i.i187, align 4
  tail call void %278(ptr noundef %rtwdev, i32 noundef %cond.i.i, i32 noundef %or.i.i) #7
  %279 = ptrtoint ptr %net_type.i to i32
  call void @__asan_load1_noabort(i32 %279)
  %280 = load i8, ptr %net_type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %280)
  %cmp.i189 = icmp eq i8 %280, 3
  br i1 %cmp.i189, label %rtw89_mac_port_cfg_tx_sw.exit.rtw89_mac_port_cfg_mbssid.exit_crit_edge, label %if.end.i191

rtw89_mac_port_cfg_tx_sw.exit.rtw89_mac_port_cfg_mbssid.exit_crit_edge: ; preds = %rtw89_mac_port_cfg_tx_sw.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtw89_mac_port_cfg_mbssid.exit

if.end.i191:                                      ; preds = %rtw89_mac_port_cfg_tx_sw.exit
  %281 = ptrtoint ptr %port1 to i32
  call void @__asan_load1_noabort(i32 %281)
  %282 = load i8, ptr %port1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %282)
  %cmp4.i = icmp eq i8 %282, 0
  br i1 %cmp4.i, label %if.then6.i, label %if.end.i191.rtw89_mac_port_cfg_mbssid.exit_crit_edge

if.end.i191.rtw89_mac_port_cfg_mbssid.exit_crit_edge: ; preds = %if.end.i191
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtw89_mac_port_cfg_mbssid.exit

if.then6.i:                                       ; preds = %if.end.i191
  call void @__sanitizer_cov_trace_pc() #9
  %283 = ptrtoint ptr %mac_idx.i.i to i32
  call void @__asan_load1_noabort(i32 %283)
  %284 = load i8, ptr %mac_idx.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %284)
  %cmp.i.i193 = icmp eq i8 %284, 0
  %cond.i.i194 = select i1 %cmp.i.i193, i32 50536, i32 58728
  %285 = ptrtoint ptr %hci.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load ptr, ptr %hci.i.i.i.i, align 8
  %read32.i.i.i196 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %286, i32 0, i32 9
  %287 = ptrtoint ptr %read32.i.i.i196 to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load ptr, ptr %read32.i.i.i196, align 4
  %call.i.i.i197 = tail call i32 %288(ptr noundef %rtwdev, i32 noundef %cond.i.i194) #7
  %and.i.i = and i32 %call.i.i.i197, -16777215
  %289 = ptrtoint ptr %hci.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load ptr, ptr %hci.i.i.i.i, align 8
  %write32.i.i.i198 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %290, i32 0, i32 12
  %291 = ptrtoint ptr %write32.i.i.i198 to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load ptr, ptr %write32.i.i.i198, align 4
  tail call void %292(ptr noundef %rtwdev, i32 noundef %cond.i.i194, i32 noundef %and.i.i) #7
  br label %rtw89_mac_port_cfg_mbssid.exit

rtw89_mac_port_cfg_mbssid.exit:                   ; preds = %if.then6.i, %if.end.i191.rtw89_mac_port_cfg_mbssid.exit_crit_edge, %rtw89_mac_port_cfg_tx_sw.exit.rtw89_mac_port_cfg_mbssid.exit_crit_edge
  %293 = ptrtoint ptr %port1 to i32
  call void @__asan_load1_noabort(i32 %293)
  %294 = load i8, ptr %port1, align 1
  %295 = ptrtoint ptr %mac_idx.i.i to i32
  call void @__asan_load1_noabort(i32 %295)
  %296 = load i8, ptr %mac_idx.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %296)
  %cmp.i.i201 = icmp eq i8 %296, 0
  %cond.i.i202 = select i1 %cmp.i.i201, i32 50748, i32 58940
  %297 = ptrtoint ptr %hci.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load ptr, ptr %hci.i.i.i.i, align 8
  %read32.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %298, i32 0, i32 9
  %299 = ptrtoint ptr %read32.i.i to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load ptr, ptr %read32.i.i, align 4
  %call.i.i = tail call i32 %300(ptr noundef %rtwdev, i32 noundef %cond.i.i202) #7
  %conv.i203 = zext i8 %294 to i32
  %shl19.i = shl i32 65536, %conv.i203
  %and20.i = and i32 %shl19.i, 2031616
  %neg.i = xor i32 %and20.i, -1
  %and21.i = and i32 %call.i.i, %neg.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %294)
  %cmp.i206 = icmp eq i8 %294, 0
  %and25.i = and i32 %and21.i, -2
  %spec.select.i207 = select i1 %cmp.i206, i32 %and25.i, i32 %and21.i
  %301 = ptrtoint ptr %hci.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load ptr, ptr %hci.i.i.i.i, align 8
  %write32.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %302, i32 0, i32 12
  %303 = ptrtoint ptr %write32.i.i to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load ptr, ptr %write32.i.i, align 4
  tail call void %304(ptr noundef %rtwdev, i32 noundef %cond.i.i202, i32 noundef %spec.select.i207) #7
  %305 = ptrtoint ptr %port1 to i32
  call void @__asan_load1_noabort(i32 %305)
  %306 = load i8, ptr %port1, align 1
  %307 = ptrtoint ptr %mac_idx.i.i to i32
  call void @__asan_load1_noabort(i32 %307)
  %308 = load i8, ptr %mac_idx.i.i, align 1
  %conv.i.i.i210 = zext i8 %306 to i32
  %mul.i.i.i211 = shl nuw nsw i32 %conv.i.i.i210, 6
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %308)
  %cmp.i.i.i.i212 = icmp eq i8 %308, 0
  %cond.i.i.v.i.i213 = select i1 %cmp.i.i.i.i212, i32 50176, i32 58368
  %cond.i.i.i.i214 = add nuw nsw i32 %cond.i.i.v.i.i213, %mul.i.i.i211
  %309 = ptrtoint ptr %hci.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load ptr, ptr %hci.i.i.i.i, align 8
  %read32.i.i.i.i216 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %310, i32 0, i32 9
  %311 = ptrtoint ptr %read32.i.i.i.i216 to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load ptr, ptr %read32.i.i.i.i216, align 4
  %call.i.i.i.i217 = tail call i32 %312(ptr noundef %rtwdev, i32 noundef %cond.i.i.i.i214) #7
  %or.i.i.i218 = or i32 %call.i.i.i.i217, 4
  %313 = ptrtoint ptr %hci.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load ptr, ptr %hci.i.i.i.i, align 8
  %write32.i.i.i.i219 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %314, i32 0, i32 12
  %315 = ptrtoint ptr %write32.i.i.i.i219 to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load ptr, ptr %write32.i.i.i.i219, align 4
  tail call void %316(ptr noundef %rtwdev, i32 noundef %cond.i.i.i.i214, i32 noundef %or.i.i.i218) #7
  tail call void @usleep_range_state(i32 noundef 20, i32 noundef 40, i32 noundef 2) #7
  %317 = ptrtoint ptr %port1 to i32
  call void @__asan_load1_noabort(i32 %317)
  %318 = load i8, ptr %port1, align 1
  %319 = ptrtoint ptr %mac_idx.i.i to i32
  call void @__asan_load1_noabort(i32 %319)
  %320 = load i8, ptr %mac_idx.i.i, align 1
  %conv.i.i.i224 = zext i8 %318 to i32
  %mul.i.i.i225 = shl nuw nsw i32 %conv.i.i.i224, 6
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %320)
  %cmp.i.i.i.i226 = icmp eq i8 %320, 0
  %cond.i.i.i.v.i227 = select i1 %cmp.i.i.i.i226, i32 50188, i32 58380
  %cond.i.i.i.i228 = add nuw nsw i32 %cond.i.i.i.v.i227, %mul.i.i.i225
  %321 = ptrtoint ptr %hci.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load ptr, ptr %hci.i.i.i.i, align 8
  %read32.i.i.i.i230 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %322, i32 0, i32 9
  %323 = ptrtoint ptr %read32.i.i.i.i230 to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load ptr, ptr %read32.i.i.i.i230, align 4
  %call.i.i.i.i231 = tail call i32 %324(ptr noundef %rtwdev, i32 noundef %cond.i.i.i.i228) #7
  %and21.i.i.i232 = and i32 %call.i.i.i.i231, -4096
  %or.i.i.i233 = or i32 %and21.i.i.i232, 160
  %325 = ptrtoint ptr %hci.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load ptr, ptr %hci.i.i.i.i, align 8
  %write32.i.i.i.i234 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %326, i32 0, i32 12
  %327 = ptrtoint ptr %write32.i.i.i.i234 to i32
  call void @__asan_load4_noabort(i32 %327)
  %328 = load ptr, ptr %write32.i.i.i.i234, align 4
  tail call void %328(ptr noundef %rtwdev, i32 noundef %cond.i.i.i.i228, i32 noundef %or.i.i.i233) #7
  br label %cleanup

cleanup:                                          ; preds = %rtw89_mac_port_cfg_mbssid.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %rtw89_mac_port_cfg_mbssid.exit ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw89_fw_h2c_vif_maintain(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw89_cam_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw89_fw_h2c_cam(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw89_fw_h2c_default_cmac_tbl(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtw89_mac_vif_deinit(ptr noundef %rtwdev, ptr noundef %rtwvif) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rtw89_fw_h2c_vif_maintain(ptr noundef %rtwdev, ptr noundef %rtwvif, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @rtw89_cam_deinit(ptr noundef %rtwdev, ptr noundef %rtwvif) #7
  %call1 = tail call i32 @rtw89_fw_h2c_cam(ptr noundef %rtwdev, ptr noundef %rtwvif, ptr noundef null, ptr noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw89_cam_deinit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtw89_mac_add_vif(ptr noundef %rtwdev, ptr noundef %rtwvif) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mac_id_map = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 25
  %call = tail call zeroext i8 @rtw89_core_acquire_bit_map(ptr noundef %mac_id_map, i32 noundef 128) #7
  %mac_id = getelementptr inbounds %struct.rtw89_vif, ptr %rtwvif, i32 0, i32 1
  %0 = ptrtoint ptr %mac_id to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %call, ptr %mac_id, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %call)
  %cmp = icmp eq i8 %call, -128
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call i32 @rtw89_mac_vif_init(ptr noundef %rtwdev, ptr noundef %rtwvif)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %release_mac_id

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

release_mac_id:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %1 = ptrtoint ptr %mac_id to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %mac_id, align 8
  tail call void @rtw89_core_release_bit_map(ptr noundef %mac_id_map, i8 noundef zeroext %2) #7
  br label %cleanup

cleanup:                                          ; preds = %release_mac_id, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %release_mac_id ], [ -28, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @rtw89_core_acquire_bit_map(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw89_core_release_bit_map(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtw89_mac_remove_vif(ptr noundef %rtwdev, ptr noundef %rtwvif) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @rtw89_fw_h2c_vif_maintain(ptr noundef %rtwdev, ptr noundef %rtwvif, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.rtw89_mac_vif_deinit.exit_crit_edge

entry.rtw89_mac_vif_deinit.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtw89_mac_vif_deinit.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @rtw89_cam_deinit(ptr noundef %rtwdev, ptr noundef %rtwvif) #7
  %call1.i = tail call i32 @rtw89_fw_h2c_cam(ptr noundef %rtwdev, ptr noundef %rtwvif, ptr noundef null, ptr noundef null) #7
  br label %rtw89_mac_vif_deinit.exit

rtw89_mac_vif_deinit.exit:                        ; preds = %if.end.i, %entry.rtw89_mac_vif_deinit.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %entry.rtw89_mac_vif_deinit.exit_crit_edge ], [ %call1.i, %if.end.i ]
  %mac_id_map = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 25
  %mac_id = getelementptr inbounds %struct.rtw89_vif, ptr %rtwvif, i32 0, i32 1
  %0 = ptrtoint ptr %mac_id to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %mac_id, align 8
  tail call void @rtw89_core_release_bit_map(ptr noundef %mac_id_map, i8 noundef zeroext %1) #7
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw89_mac_c2h_handle(ptr noundef %rtwdev, ptr noundef %skb, i32 noundef %len, i8 noundef zeroext %class, i8 noundef zeroext %func) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %class to i32
  %0 = zext i8 %class to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.467)
  switch i8 %class, label %do.end [
    i8 0, label %sw.bb
    i8 1, label %sw.bb3
    i8 5, label %entry.cleanup_crit_edge
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %func)
  %cmp = icmp ult i8 %func, 3
  br i1 %cmp, label %if.then, label %sw.bb.do.end16_crit_edge

sw.bb.do.end16_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end16

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %conv1 = zext i8 %func to i32
  %arrayidx = getelementptr [3 x ptr], ptr @rtw89_mac_c2h_info_handler, i32 0, i32 %conv1
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %func)
  %cmp5 = icmp ult i8 %func, 5
  br i1 %cmp5, label %if.then7, label %sw.bb3.do.end16_crit_edge

sw.bb3.do.end16_crit_edge:                        ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end16

if.then7:                                         ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #9
  %conv4 = zext i8 %func to i32
  %arrayidx9 = getelementptr [5 x ptr], ptr @rtw89_mac_c2h_ofld_handler, i32 0, i32 %conv4
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 1
  %1 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %2, ptr noundef nonnull @.str.19, i32 noundef %conv) #10
  br label %cleanup

sw.epilog:                                        ; preds = %if.then7, %if.then
  %handler.0.in = phi ptr [ %arrayidx9, %if.then7 ], [ %arrayidx, %if.then ]
  %3 = ptrtoint ptr %handler.0.in to i32
  call void @__asan_load4_noabort(i32 %3)
  %handler.0 = load ptr, ptr %handler.0.in, align 4
  %tobool.not = icmp eq ptr %handler.0, null
  br i1 %tobool.not, label %sw.epilog.do.end16_crit_edge, label %if.end20

sw.epilog.do.end16_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end16

do.end16:                                         ; preds = %sw.epilog.do.end16_crit_edge, %sw.bb3.do.end16_crit_edge, %sw.bb.do.end16_crit_edge
  %dev17 = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 1
  %4 = ptrtoint ptr %dev17 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev17, align 4
  %conv19 = zext i8 %func to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %5, ptr noundef nonnull @.str.23, i32 noundef %conv, i32 noundef %conv19) #10
  br label %cleanup

if.end20:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %handler.0(ptr noundef %rtwdev, ptr noundef %skb, i32 noundef %len) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %do.end16, %do.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @rtw89_mac_get_txpwr_cr(ptr nocapture noundef readonly %rtwdev, i32 noundef %phy_idx, i32 noundef %reg_base, ptr nocapture noundef writeonly %cr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = trunc i32 %phy_idx to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv)
  %cmp.i = icmp eq i8 %conv, 0
  %add.i = add i32 %reg_base, 8192
  %cond.i = select i1 %cmp.i, i32 %reg_base, i32 %add.i
  %0 = add i32 %cond.i, -65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11776, i32 %0)
  %1 = icmp ult i32 %0, -11776
  br i1 %1, label %entry.do.end22_crit_edge, label %if.end

entry.do.end22_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end22

if.end:                                           ; preds = %entry
  %chip = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 3
  %2 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chip, align 4
  %dle_mem1 = getelementptr inbounds %struct.rtw89_chip_info, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %dle_mem1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dle_mem1, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 57343, i32 %cond.i)
  %cmp6 = icmp ugt i32 %cond.i, 57343
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp11 = icmp eq i32 %7, 0
  %or.cond37 = select i1 %cmp6, i1 %cmp11, i1 false
  br i1 %or.cond37, label %if.end.do.end22_crit_edge, label %if.end19

if.end.do.end22_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end22

if.end19:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %cr to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %cond.i, ptr %cr, align 4
  br label %cleanup

do.end22:                                         ; preds = %if.end.do.end22_crit_edge, %entry.do.end22_crit_edge
  %.str.25.sink = phi ptr [ @.str.25, %entry.do.end22_crit_edge ], [ @.str.28, %if.end.do.end22_crit_edge ]
  %dev = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 1
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull %.str.25.sink, i32 noundef %cond.i) #10
  %dev23 = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 1
  %11 = ptrtoint ptr %dev23 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev23, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.31, i32 noundef %cond.i, i32 noundef %phy_idx) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end22, %if.end19
  %retval.0 = phi i1 [ false, %do.end22 ], [ true, %if.end19 ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtw89_mac_cfg_ppdu_status(ptr noundef %rtwdev, i8 noundef zeroext %mac_idx, i1 noundef zeroext %enable) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %mac_idx)
  %cmp.i = icmp eq i8 %mac_idx, 0
  %cond.i = select i1 %cmp.i, i32 52800, i32 60992
  br i1 %cmp.i, label %entry.if.end17.i_crit_edge, label %if.else6.i

entry.if.end17.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17.i

if.else6.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %mac_idx)
  %cmp11.i = icmp eq i8 %mac_idx, 1
  br i1 %cmp11.i, label %if.else6.i.if.end17.i_crit_edge, label %if.else6.i.cleanup_crit_edge

if.else6.i.cleanup_crit_edge:                     ; preds = %if.else6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.else6.i.if.end17.i_crit_edge:                  ; preds = %if.else6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17.i

if.end17.i:                                       ; preds = %if.else6.i.if.end17.i_crit_edge, %entry.if.end17.i_crit_edge
  %.sink.i = phi i32 [ 49152, %entry.if.end17.i_crit_edge ], [ 128, %if.else6.i.if.end17.i_crit_edge ]
  %hci.i37.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 7
  %0 = ptrtoint ptr %hci.i37.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hci.i37.i, align 8
  %read32.i38.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %read32.i38.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %read32.i38.i, align 4
  %call.i39.i = tail call i32 %3(ptr noundef %rtwdev, i32 noundef %.sink.i) #7
  %4 = zext i32 %call.i39.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.468)
  switch i32 %call.i39.i, label %lor.lhs.false22.i [
    i32 -353703190, label %if.end17.i.cleanup_crit_edge
    i32 -559038737, label %if.end17.i.cleanup_crit_edge22
  ]

if.end17.i.cleanup_crit_edge22:                   ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end17.i.cleanup_crit_edge:                     ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false22.i:                                ; preds = %if.end17.i
  %and.i = and i32 %call.i39.i, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp23.not.i.not = icmp eq i32 %and.i, 0
  br i1 %cmp23.not.i.not, label %lor.lhs.false22.i.cleanup_crit_edge, label %if.end

lor.lhs.false22.i.cleanup_crit_edge:              ; preds = %lor.lhs.false22.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false22.i
  %5 = ptrtoint ptr %hci.i37.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hci.i37.i, align 8
  br i1 %enable, label %if.end4, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %read32.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %6, i32 0, i32 9
  %7 = ptrtoint ptr %read32.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %read32.i.i, align 4
  %call.i.i = tail call i32 %8(ptr noundef %rtwdev, i32 noundef %cond.i) #7
  %and.i14 = and i32 %call.i.i, -2
  %9 = ptrtoint ptr %hci.i37.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hci.i37.i, align 8
  %write32.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %10, i32 0, i32 12
  %11 = ptrtoint ptr %write32.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %write32.i.i, align 4
  tail call void %12(ptr noundef %rtwdev, i32 noundef %cond.i, i32 noundef %and.i14) #7
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %write32.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %6, i32 0, i32 12
  %13 = ptrtoint ptr %write32.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %write32.i, align 4
  tail call void %14(ptr noundef %rtwdev, i32 noundef %cond.i, i32 noundef 47) #7
  %15 = ptrtoint ptr %hci.i37.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hci.i37.i, align 8
  %read32.i.i16 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %16, i32 0, i32 9
  %17 = ptrtoint ptr %read32.i.i16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %read32.i.i16, align 4
  %call.i.i17 = tail call i32 %18(ptr noundef %rtwdev, i32 noundef 39960) #7
  %and21.i = and i32 %call.i.i17, -4
  %or.i = or i32 %and21.i, 1
  %19 = ptrtoint ptr %hci.i37.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %hci.i37.i, align 8
  %write32.i.i18 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %20, i32 0, i32 12
  %21 = ptrtoint ptr %write32.i.i18 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %write32.i.i18, align 4
  tail call void %22(ptr noundef %rtwdev, i32 noundef 39960, i32 noundef %or.i) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.then3, %lor.lhs.false22.i.cleanup_crit_edge, %if.end17.i.cleanup_crit_edge, %if.end17.i.cleanup_crit_edge22, %if.else6.i.cleanup_crit_edge
  %retval.0.i21 = phi i32 [ 0, %if.end4 ], [ 0, %if.then3 ], [ -14, %lor.lhs.false22.i.cleanup_crit_edge ], [ -14, %if.end17.i.cleanup_crit_edge ], [ -14, %if.end17.i.cleanup_crit_edge22 ], [ -22, %if.else6.i.cleanup_crit_edge ]
  ret i32 %retval.0.i21
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw89_mac_update_rts_threshold(ptr noundef %rtwdev, i8 noundef zeroext %mac_idx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rtwdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rtwdev, align 128
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wiphy, align 8
  %rts_threshold2 = getelementptr inbounds %struct.wiphy, ptr %3, i32 0, i32 36
  %4 = ptrtoint ptr %rts_threshold2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rts_threshold2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %cmp = icmp eq i32 %5, -1
  %phi.bo = lshr i32 %5, 4
  %6 = tail call i32 @llvm.umin.i32(i32 %phi.bo, i32 255)
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %mac_idx)
  %cmp.i = icmp eq i8 %mac_idx, 0
  %cond.i = select i1 %cmp.i, i32 50708, i32 58900
  %hci.i.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 7
  %7 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hci.i.i, align 8
  %read16.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %8, i32 0, i32 8
  %9 = ptrtoint ptr %read16.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %read16.i.i, align 4
  %call.i.i = tail call zeroext i16 %10(ptr noundef %rtwdev, i32 noundef %cond.i) #7
  %11 = and i16 %call.i.i, 255
  %conv3.i = select i1 %cmp, i16 512, i16 -256
  %or.i = or i16 %11, %conv3.i
  %12 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hci.i.i, align 8
  %write16.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %13, i32 0, i32 11
  %14 = ptrtoint ptr %write16.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %write16.i.i, align 4
  tail call void %15(ptr noundef %rtwdev, i32 noundef %cond.i, i16 noundef zeroext %or.i) #7
  %16 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hci.i.i, align 8
  %read16.i.i23 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %17, i32 0, i32 8
  %18 = ptrtoint ptr %read16.i.i23 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %read16.i.i23, align 4
  %call.i.i24 = tail call zeroext i16 %19(ptr noundef %rtwdev, i32 noundef %cond.i) #7
  %20 = and i16 %call.i.i24, -256
  %21 = trunc i32 %6 to i16
  %22 = select i1 %cmp, i16 255, i16 %21
  %conv5.i30 = or i16 %20, %22
  %23 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %hci.i.i, align 8
  %write16.i.i31 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %24, i32 0, i32 11
  %25 = ptrtoint ptr %write16.i.i31 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %write16.i.i31, align 4
  tail call void %26(ptr noundef %rtwdev, i32 noundef %cond.i, i16 noundef zeroext %conv5.i30) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw89_mac_flush_txq(ptr noundef %rtwdev, i32 noundef %queues, i1 noundef zeroext %drop) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 26
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %flags, align 4
  %and1.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i64 @ktime_get() #7
  %add.i = add i64 %call1, 200000000
  tail call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 3258) #7
  %hci.i.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 7
  %2 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hci.i.i, align 8
  %read32.i.i60 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %read32.i.i60 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %read32.i.i60, align 4
  %call.i.i61 = tail call i32 %5(ptr noundef %rtwdev, i32 noundef 33840) #7
  %and.i62 = and i32 %call.i.i61, 134154143
  call void @__sanitizer_cov_trace_const_cmp4(i32 134154143, i32 %and.i62)
  %cmp.i63 = icmp eq i32 %and.i62, 134154143
  br i1 %cmp.i63, label %if.end.cleanup_crit_edge, label %if.end.land.lhs.true_crit_edge

if.end.land.lhs.true_crit_edge:                   ; preds = %if.end
  br label %land.lhs.true

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true:                                    ; preds = %if.then25.land.lhs.true_crit_edge, %if.end.land.lhs.true_crit_edge
  %call17 = tail call i64 @ktime_get() #7
  call void @__sanitizer_cov_trace_cmp8(i64 %call17, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call17, %add.i
  br i1 %cmp3.i, label %for.end, label %if.then25

if.then25:                                        ; preds = %land.lhs.true
  tail call void @usleep_range_state(i32 noundef 2501, i32 noundef 10000, i32 noundef 2) #7
  %6 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hci.i.i, align 8
  %read32.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %7, i32 0, i32 9
  %8 = ptrtoint ptr %read32.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %read32.i.i, align 4
  %call.i.i = tail call i32 %9(ptr noundef %rtwdev, i32 noundef 33840) #7
  %and.i = and i32 %call.i.i, 134154143
  %cmp.i = icmp eq i32 %and.i, 134154143
  br i1 %cmp.i, label %if.then25.cleanup_crit_edge, label %if.then25.land.lhs.true_crit_edge

if.then25.land.lhs.true_crit_edge:                ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true

if.then25.cleanup_crit_edge:                      ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end:                                          ; preds = %land.lhs.true
  %10 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hci.i.i, align 8
  %read32.i.i53 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %11, i32 0, i32 9
  %12 = ptrtoint ptr %read32.i.i53 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %read32.i.i53, align 4
  %call.i.i54 = tail call i32 %13(ptr noundef %rtwdev, i32 noundef 33840) #7
  %and.i55 = and i32 %call.i.i54, 134154143
  call void @__sanitizer_cov_trace_const_cmp4(i32 134154143, i32 %and.i55)
  %cmp.i56 = icmp eq i32 %and.i55, 134154143
  %brmerge = or i1 %cmp.i56, %drop
  br i1 %brmerge, label %for.end.cleanup_crit_edge, label %land.lhs.true31

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true31:                                  ; preds = %for.end
  %total_sta_assoc = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 47
  %14 = ptrtoint ptr %total_sta_assoc to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %total_sta_assoc, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool32.not = icmp eq i8 %15, 0
  br i1 %tobool32.not, label %lor.lhs.false, label %land.lhs.true31.do.end38_crit_edge

land.lhs.true31.do.end38_crit_edge:               ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end38

lor.lhs.false:                                    ; preds = %land.lhs.true31
  %scanning = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 48
  %16 = ptrtoint ptr %scanning to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %scanning, align 1, !range !744
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool33.not = icmp eq i8 %17, 0
  br i1 %tobool33.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false.do.end38_crit_edge

lor.lhs.false.do.end38_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end38

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end38:                                         ; preds = %lor.lhs.false.do.end38_crit_edge, %land.lhs.true31.do.end38_crit_edge
  %dev = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 1
  %18 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %19, ptr noundef nonnull @.str.33) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end38, %lor.lhs.false.cleanup_crit_edge, %for.end.cleanup_crit_edge, %if.then25.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtw89_mac_coex_init(ptr noundef %rtwdev, ptr nocapture noundef readonly %coex) local_unnamed_addr #0 align 64 {
entry:
  %val32 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val32) #7
  %0 = ptrtoint ptr %val32 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val32, align 4, !annotation !745
  %hci.i.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 7
  %1 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hci.i.i, align 8
  %read8.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %2, i32 0, i32 7
  %3 = ptrtoint ptr %read8.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %read8.i.i, align 4
  %call.i.i = tail call zeroext i8 %4(ptr noundef %rtwdev, i32 noundef 64) #7
  %or5.i = or i8 %call.i.i, 32
  %5 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hci.i.i, align 8
  %write8.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %6, i32 0, i32 10
  %7 = ptrtoint ptr %write8.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %write8.i.i, align 4
  tail call void %8(ptr noundef %rtwdev, i32 noundef 64, i8 noundef zeroext %or5.i) #7
  %9 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hci.i.i, align 8
  %read8.i.i236 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %10, i32 0, i32 7
  %11 = ptrtoint ptr %read8.i.i236 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %read8.i.i236, align 4
  %call.i.i237 = tail call zeroext i8 %12(ptr noundef %rtwdev, i32 noundef 55840) #7
  %or5.i238 = or i8 %call.i.i237, 2
  %13 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hci.i.i, align 8
  %write8.i.i239 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %14, i32 0, i32 10
  %15 = ptrtoint ptr %write8.i.i239 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %write8.i.i239, align 4
  tail call void %16(ptr noundef %rtwdev, i32 noundef 55840, i8 noundef zeroext %or5.i238) #7
  %17 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %hci.i.i, align 8
  %read8.i.i241 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %18, i32 0, i32 7
  %19 = ptrtoint ptr %read8.i.i241 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %read8.i.i241, align 4
  %call.i.i242 = tail call zeroext i8 %20(ptr noundef %rtwdev, i32 noundef 55861) #7
  %or5.i243 = or i8 %call.i.i242, 1
  %21 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %hci.i.i, align 8
  %write8.i.i244 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %22, i32 0, i32 10
  %23 = ptrtoint ptr %write8.i.i244 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %write8.i.i244, align 4
  tail call void %24(ptr noundef %rtwdev, i32 noundef 55861, i8 noundef zeroext %or5.i243) #7
  %25 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %hci.i.i, align 8
  %read8.i.i246 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %26, i32 0, i32 7
  %27 = ptrtoint ptr %read8.i.i246 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %read8.i.i246, align 4
  %call.i.i247 = tail call zeroext i8 %28(ptr noundef %rtwdev, i32 noundef 55872) #7
  %or5.i248 = or i8 %call.i.i247, 12
  %29 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %hci.i.i, align 8
  %write8.i.i249 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %30, i32 0, i32 10
  %31 = ptrtoint ptr %write8.i.i249 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %write8.i.i249, align 4
  tail call void %32(ptr noundef %rtwdev, i32 noundef 55872, i8 noundef zeroext %or5.i248) #7
  %33 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %hci.i.i, align 8
  %read8.i.i251 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %34, i32 0, i32 7
  %35 = ptrtoint ptr %read8.i.i251 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %read8.i.i251, align 4
  %call.i.i252 = tail call zeroext i8 %36(ptr noundef %rtwdev, i32 noundef 55874) #7
  %or5.i253 = or i8 %call.i.i252, 1
  %37 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %hci.i.i, align 8
  %write8.i.i254 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %38, i32 0, i32 10
  %39 = ptrtoint ptr %write8.i.i254 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %write8.i.i254, align 4
  tail call void %40(ptr noundef %rtwdev, i32 noundef 55874, i8 noundef zeroext %or5.i253) #7
  %41 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %hci.i.i, align 8
  %read8.i.i256 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %42, i32 0, i32 7
  %43 = ptrtoint ptr %read8.i.i256 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %read8.i.i256, align 4
  %call.i.i257 = tail call zeroext i8 %44(ptr noundef %rtwdev, i32 noundef 52231) #7
  %and.i = and i8 %call.i.i257, -3
  %45 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %hci.i.i, align 8
  %write8.i.i258 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %46, i32 0, i32 10
  %47 = ptrtoint ptr %write8.i.i258 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %write8.i.i258, align 4
  tail call void %48(ptr noundef %rtwdev, i32 noundef 52231, i8 noundef zeroext %and.i) #7
  %49 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %hci.i.i, align 8
  %read16.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %50, i32 0, i32 8
  %51 = ptrtoint ptr %read16.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %read16.i, align 4
  %call.i = tail call zeroext i16 %52(ptr noundef %rtwdev, i32 noundef 49984) #7
  %53 = and i16 %call.i, -545
  %54 = or i16 %53, 32
  %55 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %hci.i.i, align 8
  %write16.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %56, i32 0, i32 11
  %57 = ptrtoint ptr %write16.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %write16.i, align 4
  tail call void %58(ptr noundef %rtwdev, i32 noundef 49984, i16 noundef zeroext %54) #7
  %call2 = call i32 @rtw89_mac_read_lte(ptr noundef %rtwdev, i32 noundef 60, ptr noundef nonnull %val32)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 1
  %59 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %60, ptr noundef nonnull @.str.35) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %61 = ptrtoint ptr %val32 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %val32, align 4
  %and3 = and i32 %62, 256
  %call4 = tail call i32 @rtw89_mac_write_lte(ptr noundef %rtwdev, i32 noundef 60, i32 noundef %and3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end11, label %do.end9

do.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %dev10 = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 1
  %63 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %dev10, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %64, ptr noundef nonnull @.str.38) #10
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %65 = ptrtoint ptr %coex to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %coex, align 1
  %67 = zext i8 %66 to i64
  call void @__sanitizer_cov_trace_switch(i64 %67, ptr @__sancov_gen_cov_switch_values.469)
  switch i8 %66, label %if.end11.cleanup_crit_edge [
    i8 0, label %sw.bb
    i8 1, label %sw.bb62
  ]

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  %68 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %hci.i.i, align 8
  %read8.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %69, i32 0, i32 7
  %70 = ptrtoint ptr %read8.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %read8.i, align 4
  %call.i261 = tail call zeroext i8 %71(ptr noundef %rtwdev, i32 noundef 64) #7
  %72 = and i8 %call.i261, 63
  %73 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %hci.i.i, align 8
  %write8.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %74, i32 0, i32 10
  %75 = ptrtoint ptr %write8.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %write8.i, align 4
  tail call void %76(ptr noundef %rtwdev, i32 noundef 64, i8 noundef zeroext %72) #7
  %77 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %hci.i.i, align 8
  %read8.i264 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %78, i32 0, i32 7
  %79 = ptrtoint ptr %read8.i264 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %read8.i264, align 4
  %call.i265 = tail call zeroext i8 %80(ptr noundef %rtwdev, i32 noundef 55884) #7
  %81 = or i8 %call.i265, 1
  %82 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %hci.i.i, align 8
  %write8.i267 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %83, i32 0, i32 10
  %84 = ptrtoint ptr %write8.i267 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %write8.i267, align 4
  tail call void %85(ptr noundef %rtwdev, i32 noundef 55884, i8 noundef zeroext %81) #7
  %86 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %hci.i.i, align 8
  %read8.i269 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %87, i32 0, i32 7
  %88 = ptrtoint ptr %read8.i269 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %read8.i269, align 4
  %call.i270 = tail call zeroext i8 %89(ptr noundef %rtwdev, i32 noundef 55916) #7
  %90 = and i8 %call.i270, -64
  %91 = or i8 %90, 5
  %92 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %hci.i.i, align 8
  %write8.i272 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %93, i32 0, i32 10
  %94 = ptrtoint ptr %write8.i272 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %write8.i272, align 4
  tail call void %95(ptr noundef %rtwdev, i32 noundef 55916, i8 noundef zeroext %91) #7
  br label %sw.epilog

sw.bb62:                                          ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  %96 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %hci.i.i, align 8
  %read8.i274 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %97, i32 0, i32 7
  %98 = ptrtoint ptr %read8.i274 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %read8.i274, align 4
  %call.i275 = tail call zeroext i8 %99(ptr noundef %rtwdev, i32 noundef 64) #7
  %100 = and i8 %call.i275, 63
  %101 = or i8 %100, -128
  %102 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %hci.i.i, align 8
  %write8.i277 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %103, i32 0, i32 10
  %104 = ptrtoint ptr %write8.i277 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %write8.i277, align 4
  tail call void %105(ptr noundef %rtwdev, i32 noundef 64, i8 noundef zeroext %101) #7
  %106 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %hci.i.i, align 8
  %read16.i279 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %107, i32 0, i32 8
  %108 = ptrtoint ptr %read16.i279 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %read16.i279, align 4
  %call.i280 = tail call zeroext i16 %109(ptr noundef %rtwdev, i32 noundef 55872) #7
  %110 = and i16 %call.i280, 14
  %111 = or i16 %110, 1105
  %112 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %hci.i.i, align 8
  %write16.i282 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %113, i32 0, i32 11
  %114 = ptrtoint ptr %write16.i282 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %write16.i282, align 4
  tail call void %115(ptr noundef %rtwdev, i32 noundef 55872, i16 noundef zeroext %111) #7
  %116 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %hci.i.i, align 8
  %write8.i284 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %117, i32 0, i32 10
  %118 = ptrtoint ptr %write8.i284 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %write8.i284, align 4
  tail call void %119(ptr noundef %rtwdev, i32 noundef 55860, i8 noundef zeroext 80) #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb62, %sw.bb
  %direction = getelementptr inbounds %struct.rtw89_mac_ax_coex, ptr %coex, i32 0, i32 1
  %120 = ptrtoint ptr %direction to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %direction, align 1
  %122 = zext i8 %121 to i64
  call void @__sanitizer_cov_trace_switch(i64 %122, ptr @__sancov_gen_cov_switch_values.470)
  switch i8 %121, label %sw.epilog.cleanup_crit_edge [
    i8 0, label %sw.bb157
    i8 1, label %sw.bb163
    i8 2, label %sw.bb169
  ]

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb157:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %123 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %hci.i.i, align 8
  %read8.i286 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %124, i32 0, i32 7
  %125 = ptrtoint ptr %read8.i286 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %read8.i286, align 4
  %call.i287 = tail call zeroext i8 %126(ptr noundef %rtwdev, i32 noundef 65) #7
  %127 = and i8 %call.i287, -7
  %128 = or i8 %127, 2
  %129 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %hci.i.i, align 8
  %write8.i289 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %130, i32 0, i32 10
  %131 = ptrtoint ptr %write8.i289 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %write8.i289, align 4
  tail call void %132(ptr noundef %rtwdev, i32 noundef 65, i8 noundef zeroext %128) #7
  br label %cleanup

sw.bb163:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %133 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %hci.i.i, align 8
  %read8.i291 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %134, i32 0, i32 7
  %135 = ptrtoint ptr %read8.i291 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %read8.i291, align 4
  %call.i292 = tail call zeroext i8 %136(ptr noundef %rtwdev, i32 noundef 65) #7
  %137 = or i8 %call.i292, 3
  %138 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %hci.i.i, align 8
  %write8.i294 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %139, i32 0, i32 10
  %140 = ptrtoint ptr %write8.i294 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %write8.i294, align 4
  tail call void %141(ptr noundef %rtwdev, i32 noundef 65, i8 noundef zeroext %137) #7
  br label %cleanup

sw.bb169:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %142 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %hci.i.i, align 8
  %read8.i296 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %143, i32 0, i32 7
  %144 = ptrtoint ptr %read8.i296 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %read8.i296, align 4
  %call.i297 = tail call zeroext i8 %145(ptr noundef %rtwdev, i32 noundef 65) #7
  %146 = and i8 %call.i297, -7
  %147 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %hci.i.i, align 8
  %write8.i299 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %148, i32 0, i32 10
  %149 = ptrtoint ptr %write8.i299 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %write8.i299, align 4
  tail call void %150(ptr noundef %rtwdev, i32 noundef 65, i8 noundef zeroext %146) #7
  br label %cleanup

cleanup:                                          ; preds = %sw.bb169, %sw.bb163, %sw.bb157, %sw.epilog.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %do.end9, %do.end
  %retval.0 = phi i32 [ %call2, %do.end ], [ %call4, %do.end9 ], [ -22, %if.end11.cleanup_crit_edge ], [ -22, %sw.epilog.cleanup_crit_edge ], [ 0, %sw.bb169 ], [ 0, %sw.bb163 ], [ 0, %sw.bb157 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val32) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtw89_mac_cfg_gnt(ptr noundef %rtwdev, ptr nocapture noundef readonly %gnt_cfg) local_unnamed_addr #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #7
  %call = call i32 @rtw89_mac_read_lte(ptr noundef %rtwdev, i32 noundef 56, ptr noundef nonnull %val)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup.sink.split_crit_edge

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end:                                           ; preds = %entry
  %gnt_bt = getelementptr inbounds %struct.rtw89_mac_ax_gnt, ptr %gnt_cfg, i32 0, i32 1
  %0 = ptrtoint ptr %gnt_bt to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %gnt_bt, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool1.not = icmp eq i8 %1, 0
  %cond = select i1 %tobool1.not, i32 0, i32 34816
  %2 = ptrtoint ptr %gnt_cfg to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %gnt_cfg, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool5.not = icmp eq i8 %3, 0
  %cond6 = select i1 %tobool5.not, i32 0, i32 17408
  %or = or i32 %cond6, %cond
  %gnt_wl = getelementptr inbounds %struct.rtw89_mac_ax_gnt, ptr %gnt_cfg, i32 0, i32 3
  %4 = ptrtoint ptr %gnt_wl to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %gnt_wl, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool10.not = icmp eq i8 %5, 0
  %cond11 = select i1 %tobool10.not, i32 0, i32 8704
  %or12 = or i32 %or, %cond11
  %gnt_wl_sw_en = getelementptr inbounds %struct.rtw89_mac_ax_gnt, ptr %gnt_cfg, i32 0, i32 2
  %6 = ptrtoint ptr %gnt_wl_sw_en to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %gnt_wl_sw_en, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool16.not = icmp eq i8 %7, 0
  %cond17 = select i1 %tobool16.not, i32 0, i32 4352
  %or18 = or i32 %or12, %cond17
  %arrayidx20 = getelementptr [2 x %struct.rtw89_mac_ax_gnt], ptr %gnt_cfg, i32 0, i32 1
  %gnt_bt21 = getelementptr [2 x %struct.rtw89_mac_ax_gnt], ptr %gnt_cfg, i32 0, i32 1, i32 1
  %8 = ptrtoint ptr %gnt_bt21 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %gnt_bt21, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool23.not = icmp eq i8 %9, 0
  %cond24 = select i1 %tobool23.not, i32 0, i32 -2013265920
  %or25 = or i32 %or18, %cond24
  %10 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx20, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool30.not = icmp eq i8 %11, 0
  %cond31 = select i1 %tobool30.not, i32 0, i32 1140850688
  %or32 = or i32 %or25, %cond31
  %gnt_wl35 = getelementptr [2 x %struct.rtw89_mac_ax_gnt], ptr %gnt_cfg, i32 0, i32 1, i32 3
  %12 = ptrtoint ptr %gnt_wl35 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %gnt_wl35, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool37.not = icmp eq i8 %13, 0
  %cond38 = select i1 %tobool37.not, i32 0, i32 570425344
  %or39 = or i32 %or32, %cond38
  %gnt_wl_sw_en42 = getelementptr [2 x %struct.rtw89_mac_ax_gnt], ptr %gnt_cfg, i32 0, i32 1, i32 2
  %14 = ptrtoint ptr %gnt_wl_sw_en42 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %gnt_wl_sw_en42, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool44.not = icmp eq i8 %15, 0
  %cond45 = select i1 %tobool44.not, i32 0, i32 285212672
  %or46 = or i32 %or39, %cond45
  %call47 = tail call i32 @rtw89_mac_write_lte(ptr noundef %rtwdev, i32 noundef 56, i32 noundef %or46)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %if.end.cleanup_crit_edge, label %if.end.cleanup.sink.split_crit_edge

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.end.cleanup.sink.split_crit_edge, %entry.cleanup.sink.split_crit_edge
  %.str.43.sink = phi ptr [ @.str.40, %entry.cleanup.sink.split_crit_edge ], [ @.str.43, %if.end.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ %call, %entry.cleanup.sink.split_crit_edge ], [ %call47, %if.end.cleanup.sink.split_crit_edge ]
  %dev53 = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 1
  %16 = ptrtoint ptr %dev53 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev53, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull %.str.43.sink) #10
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtw89_mac_cfg_plt(ptr noundef %rtwdev, ptr nocapture noundef readonly %plt) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %plt to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %plt, align 1
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.471)
  switch i8 %1, label %entry.cleanup_crit_edge [
    i8 0, label %entry.if.end17.i_crit_edge
    i8 1, label %if.end17.i.fold.split
  ]

entry.if.end17.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end17.i.fold.split:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17.i

if.end17.i:                                       ; preds = %if.end17.i.fold.split, %entry.if.end17.i_crit_edge
  %.sink.i = phi i32 [ 49152, %entry.if.end17.i_crit_edge ], [ 128, %if.end17.i.fold.split ]
  %hci.i37.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 7
  %3 = ptrtoint ptr %hci.i37.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hci.i37.i, align 8
  %read32.i38.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %4, i32 0, i32 9
  %5 = ptrtoint ptr %read32.i38.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %read32.i38.i, align 4
  %call.i39.i = tail call i32 %6(ptr noundef %rtwdev, i32 noundef %.sink.i) #7
  %7 = zext i32 %call.i39.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.472)
  switch i32 %call.i39.i, label %lor.lhs.false22.i [
    i32 -353703190, label %if.end17.i.cleanup_crit_edge
    i32 -559038737, label %if.end17.i.cleanup_crit_edge60
  ]

if.end17.i.cleanup_crit_edge60:                   ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end17.i.cleanup_crit_edge:                     ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false22.i:                                ; preds = %if.end17.i
  %and.i = and i32 %call.i39.i, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp23.not.i.not = icmp eq i32 %and.i, 0
  br i1 %cmp23.not.i.not, label %lor.lhs.false22.i.cleanup_crit_edge, label %if.end

lor.lhs.false22.i.cleanup_crit_edge:              ; preds = %lor.lhs.false22.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false22.i
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %plt to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %plt, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp.i = icmp eq i8 %9, 0
  %cond.i = select i1 %cmp.i, i32 50812, i32 59004
  %tx = getelementptr inbounds %struct.rtw89_mac_ax_plt, ptr %plt, i32 0, i32 1
  %10 = ptrtoint ptr %tx to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %tx, align 1
  %and = shl i8 %11, 3
  %12 = and i8 %and, 8
  %and17 = lshr i8 %11, 3
  %and17.lobit = and i8 %and17, 1
  %rx = getelementptr inbounds %struct.rtw89_mac_ax_plt, ptr %plt, i32 0, i32 2
  %13 = ptrtoint ptr %rx to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %rx, align 1
  %and22 = shl i8 %14, 7
  %and28 = shl i8 %14, 4
  %15 = and i8 %and28, 32
  %16 = and i8 %and28, 64
  %or14 = and i8 %11, 6
  %or20 = or i8 %or14, %12
  %or = or i8 %or20, %and17.lobit
  %or25 = or i8 %or, %and22
  %or31 = or i8 %or25, %15
  %or37 = or i8 %or31, %16
  %and40 = shl i8 %14, 1
  %17 = and i8 %and40, 16
  %or43 = or i8 %or37, %17
  %18 = ptrtoint ptr %hci.i37.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hci.i37.i, align 8
  %write8.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %19, i32 0, i32 10
  %20 = ptrtoint ptr %write8.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %write8.i, align 4
  tail call void %21(ptr noundef %rtwdev, i32 noundef %cond.i, i8 noundef zeroext %or43) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false22.i.cleanup_crit_edge, %if.end17.i.cleanup_crit_edge, %if.end17.i.cleanup_crit_edge60, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -14, %lor.lhs.false22.i.cleanup_crit_edge ], [ -14, %if.end17.i.cleanup_crit_edge ], [ -14, %if.end17.i.cleanup_crit_edge60 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw89_mac_cfg_sb(ptr noundef %rtwdev, i32 noundef %val) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %hci.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 7
  %0 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hci.i, align 8
  %read32.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %read32.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %read32.i, align 4
  %call.i = tail call i32 %3(ptr noundef %rtwdev, i32 noundef 172) #7
  %flags = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 26
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %flags, align 4
  %and1.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  %and = lshr i32 %call.i, 24
  %and13 = and i32 %and, 126
  %or = or i32 %and13, 128
  %or15 = or i32 %and, 129
  %fw_sb.0 = select i1 %tobool.not, i32 %or, i32 %or15
  %and32 = and i32 %val, 16777215
  %shl78 = shl nuw i32 %fw_sb.0, 24
  %or55 = or i32 %shl78, %and32
  %6 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hci.i, align 8
  %write32.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %7, i32 0, i32 12
  %8 = ptrtoint ptr %write32.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %write32.i, align 4
  tail call void %9(ptr noundef %rtwdev, i32 noundef 172, i32 noundef %or55) #7
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtw89_mac_get_sb(ptr noundef %rtwdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %hci.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 7
  %0 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hci.i, align 8
  %read32.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %read32.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %read32.i, align 4
  %call.i = tail call i32 %3(ptr noundef %rtwdev, i32 noundef 172) #7
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtw89_mac_cfg_ctrl_path(ptr noundef %rtwdev, i1 noundef zeroext %wl) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %hci.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 7
  %0 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hci.i, align 8
  %read8.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %read8.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %read8.i, align 4
  %call.i = tail call zeroext i8 %3(ptr noundef %rtwdev, i32 noundef 115) #7
  %4 = and i8 %call.i, -5
  %masksel = select i1 %wl, i8 4, i8 0
  %cond = or i8 %4, %masksel
  %5 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hci.i, align 8
  %write8.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %6, i32 0, i32 10
  %7 = ptrtoint ptr %write8.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %write8.i, align 4
  tail call void %8(ptr noundef %rtwdev, i32 noundef 115, i8 noundef zeroext %cond) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @rtw89_mac_get_ctrl_path(ptr noundef %rtwdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %hci.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 7
  %0 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hci.i, align 8
  %read8.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %read8.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %read8.i, align 4
  %call.i = tail call zeroext i8 %3(ptr noundef %rtwdev, i32 noundef 115) #7
  %4 = and i8 %call.i, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool = icmp ne i8 %4, 0
  ret i1 %tobool
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i16 @rtw89_mac_get_plt_cnt(ptr noundef %rtwdev, i8 noundef zeroext %band) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %band)
  %cmp.i = icmp eq i8 %band, 0
  %cond.i = select i1 %cmp.i, i32 50812, i32 59004
  %hci.i.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 7
  %0 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hci.i.i, align 8
  %read32.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %read32.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %read32.i.i, align 4
  %call.i.i = tail call i32 %3(ptr noundef %rtwdev, i32 noundef %cond.i) #7
  %shr.i = lshr i32 %call.i.i, 16
  %conv = trunc i32 %shr.i to i16
  %4 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hci.i.i, align 8
  %read16.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %read16.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %read16.i.i, align 4
  %call.i.i5 = tail call zeroext i16 %7(ptr noundef %rtwdev, i32 noundef %cond.i) #7
  %or5.i = or i16 %call.i.i5, 512
  %8 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hci.i.i, align 8
  %write16.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %9, i32 0, i32 11
  %10 = ptrtoint ptr %write16.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %write16.i.i, align 4
  tail call void %11(ptr noundef %rtwdev, i32 noundef %cond.i, i16 noundef zeroext %or5.i) #7
  ret i16 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw89_mac_bf_assoc(ptr noundef %rtwdev, ptr nocapture noundef readonly %vif, ptr nocapture noundef readonly %sta) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %cap.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 5, i32 1
  %0 = ptrtoint ptr %cap.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cap.i, align 4
  %2 = and i32 %1, 526336
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %lor.lhs.false5.i, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

lor.lhs.false5.i:                                 ; preds = %entry
  %arrayidx.i = getelementptr %struct.ieee80211_sta, ptr %sta, i32 0, i32 6, i32 1, i32 1, i32 3
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %5)
  %tobool7.not.i = icmp sgt i8 %5, -1
  br i1 %tobool7.not.i, label %rtw89_sta_has_beamformer_cap.exit, label %lor.lhs.false5.i.if.then_crit_edge

lor.lhs.false5.i.if.then_crit_edge:               ; preds = %lor.lhs.false5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

rtw89_sta_has_beamformer_cap.exit:                ; preds = %lor.lhs.false5.i
  %arrayidx12.i = getelementptr %struct.ieee80211_sta, ptr %sta, i32 0, i32 6, i32 1, i32 1, i32 4
  %6 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx12.i, align 1
  %8 = and i8 %7, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool15.not.i.not = icmp eq i8 %8, 0
  br i1 %tobool15.not.i.not, label %rtw89_sta_has_beamformer_cap.exit.if.end_crit_edge, label %rtw89_sta_has_beamformer_cap.exit.if.then_crit_edge

rtw89_sta_has_beamformer_cap.exit.if.then_crit_edge: ; preds = %rtw89_sta_has_beamformer_cap.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

rtw89_sta_has_beamformer_cap.exit.if.end_crit_edge: ; preds = %rtw89_sta_has_beamformer_cap.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %rtw89_sta_has_beamformer_cap.exit.if.then_crit_edge, %lor.lhs.false5.i.if.then_crit_edge, %entry.if.then_crit_edge
  tail call void (ptr, i32, ptr, ...) @__rtw89_debug(ptr noundef %rtwdev, i32 noundef 16384, ptr noundef nonnull @.str.45) #7
  %mac_idx = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 10
  %9 = ptrtoint ptr %mac_idx to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %mac_idx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %cmp2.i.i = icmp eq i8 %10, 0
  br i1 %cmp2.i.i, label %if.then.if.end17.i.i_crit_edge, label %if.else6.i.i

if.then.if.end17.i.i_crit_edge:                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17.i.i

if.else6.i.i:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %10)
  %cmp11.i.i = icmp eq i8 %10, 1
  br i1 %cmp11.i.i, label %if.else6.i.i.if.end17.i.i_crit_edge, label %if.else6.i.i.if.end_crit_edge

if.else6.i.i.if.end_crit_edge:                    ; preds = %if.else6.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.else6.i.i.if.end17.i.i_crit_edge:              ; preds = %if.else6.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17.i.i

if.end17.i.i:                                     ; preds = %if.else6.i.i.if.end17.i.i_crit_edge, %if.then.if.end17.i.i_crit_edge
  %.sink.i.i = phi i32 [ 49152, %if.then.if.end17.i.i_crit_edge ], [ 128, %if.else6.i.i.if.end17.i.i_crit_edge ]
  %hci.i37.i.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 7
  %11 = ptrtoint ptr %hci.i37.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hci.i37.i.i, align 8
  %read32.i38.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %12, i32 0, i32 9
  %13 = ptrtoint ptr %read32.i38.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %read32.i38.i.i, align 4
  %call.i39.i.i = tail call i32 %14(ptr noundef %rtwdev, i32 noundef %.sink.i.i) #7
  %15 = zext i32 %call.i39.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.473)
  switch i32 %call.i39.i.i, label %lor.lhs.false22.i.i [
    i32 -353703190, label %if.end17.i.i.rtw89_mac_init_bfee.exit_crit_edge
    i32 -559038737, label %if.end17.i.i.rtw89_mac_init_bfee.exit_crit_edge65
  ]

if.end17.i.i.rtw89_mac_init_bfee.exit_crit_edge65: ; preds = %if.end17.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtw89_mac_init_bfee.exit

if.end17.i.i.rtw89_mac_init_bfee.exit_crit_edge:  ; preds = %if.end17.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtw89_mac_init_bfee.exit

lor.lhs.false22.i.i:                              ; preds = %if.end17.i.i
  %and.i.i = and i32 %call.i39.i.i, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %cmp23.not.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %cmp23.not.i.not.i, label %lor.lhs.false22.i.i.rtw89_mac_init_bfee.exit_crit_edge, label %if.end.i

lor.lhs.false22.i.i.rtw89_mac_init_bfee.exit_crit_edge: ; preds = %lor.lhs.false22.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtw89_mac_init_bfee.exit

if.end.i:                                         ; preds = %lor.lhs.false22.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %cond.i.i = select i1 %cmp2.i.i, i32 52600, i32 60792
  %16 = ptrtoint ptr %hci.i37.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hci.i37.i.i, align 8
  %read32.i.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %17, i32 0, i32 9
  %18 = ptrtoint ptr %read32.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %read32.i.i.i, align 4
  %call.i.i.i = tail call i32 %19(ptr noundef %rtwdev, i32 noundef %cond.i.i) #7
  %or.i.i = or i32 %call.i.i.i, 4
  %20 = ptrtoint ptr %hci.i37.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hci.i37.i.i, align 8
  %write32.i.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %21, i32 0, i32 12
  %22 = ptrtoint ptr %write32.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %write32.i.i.i, align 4
  tail call void %23(ptr noundef %rtwdev, i32 noundef %cond.i.i, i32 noundef %or.i.i) #7
  %cond.i8.i = select i1 %cmp2.i.i, i32 52620, i32 60812
  %24 = ptrtoint ptr %hci.i37.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %hci.i37.i.i, align 8
  %write32.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %25, i32 0, i32 12
  %26 = ptrtoint ptr %write32.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %write32.i.i, align 4
  tail call void %27(ptr noundef %rtwdev, i32 noundef %cond.i8.i, i32 noundef 690563345) #7
  %cond.i10.i = select i1 %cmp2.i.i, i32 52608, i32 60800
  %28 = ptrtoint ptr %hci.i37.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %hci.i37.i.i, align 8
  %write32.i12.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %29, i32 0, i32 12
  %30 = ptrtoint ptr %write32.i12.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %write32.i12.i, align 4
  tail call void %31(ptr noundef %rtwdev, i32 noundef %cond.i10.i, i32 noundef -16777216) #7
  tail call void (ptr, i32, ptr, ...) @__rtw89_debug(ptr noundef %rtwdev, i32 noundef 16384, ptr noundef nonnull @.str.451, i32 noundef 1) #7
  %flags.i.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 26
  tail call void @_set_bit(i32 noundef 4, ptr noundef %flags.i.i) #7
  %32 = ptrtoint ptr %hci.i37.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %hci.i37.i.i, align 8
  %read32.i.i.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %33, i32 0, i32 9
  %34 = ptrtoint ptr %read32.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %read32.i.i.i.i, align 4
  %call.i.i.i.i = tail call i32 %35(ptr noundef %rtwdev, i32 noundef %cond.i10.i) #7
  %or.i.i.i = or i32 %call.i.i.i.i, 7
  %36 = ptrtoint ptr %hci.i37.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %hci.i37.i.i, align 8
  %write32.i.i14.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %37, i32 0, i32 12
  %38 = ptrtoint ptr %write32.i.i14.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %write32.i.i14.i.i, align 4
  tail call void %39(ptr noundef %rtwdev, i32 noundef %cond.i10.i, i32 noundef %or.i.i.i) #7
  %cond.i14.i = select i1 %cmp2.i.i, i32 52616, i32 60808
  %40 = ptrtoint ptr %hci.i37.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %hci.i37.i.i, align 8
  %read32.i.i16.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %41, i32 0, i32 9
  %42 = ptrtoint ptr %read32.i.i16.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %read32.i.i16.i, align 4
  %call.i.i17.i = tail call i32 %43(ptr noundef %rtwdev, i32 noundef %cond.i14.i) #7
  %or.i18.i = or i32 %call.i.i17.i, 273809408
  %44 = ptrtoint ptr %hci.i37.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %hci.i37.i.i, align 8
  %write32.i.i19.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %45, i32 0, i32 12
  %46 = ptrtoint ptr %write32.i.i19.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %write32.i.i19.i, align 4
  tail call void %47(ptr noundef %rtwdev, i32 noundef %cond.i14.i, i32 noundef %or.i18.i) #7
  %cond.i21.i = select i1 %cmp2.i.i, i32 52624, i32 60816
  %48 = ptrtoint ptr %hci.i37.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %hci.i37.i.i, align 8
  %write32.i23.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %49, i32 0, i32 12
  %50 = ptrtoint ptr %write32.i23.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %write32.i23.i, align 4
  tail call void %51(ptr noundef %rtwdev, i32 noundef %cond.i21.i, i32 noundef 197379) #7
  br label %rtw89_mac_init_bfee.exit

rtw89_mac_init_bfee.exit:                         ; preds = %if.end.i, %lor.lhs.false22.i.i.rtw89_mac_init_bfee.exit_crit_edge, %if.end17.i.i.rtw89_mac_init_bfee.exit_crit_edge, %if.end17.i.i.rtw89_mac_init_bfee.exit_crit_edge65
  %52 = ptrtoint ptr %mac_idx to i32
  call void @__asan_load1_noabort(i32 %52)
  %.pr = load i8, ptr %mac_idx, align 1
  %drv_priv.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 19
  %port.i = getelementptr inbounds %struct.rtw89_vif, ptr %drv_priv.i, i32 0, i32 2
  %53 = ptrtoint ptr %port.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %port.i, align 1
  %55 = zext i8 %.pr to i64
  call void @__sanitizer_cov_trace_switch(i64 %55, ptr @__sancov_gen_cov_switch_values.474)
  switch i8 %.pr, label %rtw89_mac_init_bfee.exit.rtw89_mac_set_csi_para_reg.exit_crit_edge [
    i8 0, label %rtw89_mac_init_bfee.exit.if.end17.i.i18_crit_edge
    i8 1, label %if.end17.i.i18.fold.split
  ]

rtw89_mac_init_bfee.exit.if.end17.i.i18_crit_edge: ; preds = %rtw89_mac_init_bfee.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17.i.i18

rtw89_mac_init_bfee.exit.rtw89_mac_set_csi_para_reg.exit_crit_edge: ; preds = %rtw89_mac_init_bfee.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtw89_mac_set_csi_para_reg.exit

if.end17.i.i18.fold.split:                        ; preds = %rtw89_mac_init_bfee.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17.i.i18

if.end17.i.i18:                                   ; preds = %if.end17.i.i18.fold.split, %rtw89_mac_init_bfee.exit.if.end17.i.i18_crit_edge
  %cmp2.i.i1156 = phi i1 [ true, %rtw89_mac_init_bfee.exit.if.end17.i.i18_crit_edge ], [ false, %if.end17.i.i18.fold.split ]
  %.sink.i.i14 = phi i32 [ 49152, %rtw89_mac_init_bfee.exit.if.end17.i.i18_crit_edge ], [ 128, %if.end17.i.i18.fold.split ]
  %56 = ptrtoint ptr %hci.i37.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %hci.i37.i.i, align 8
  %read32.i38.i.i16 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %57, i32 0, i32 9
  %58 = ptrtoint ptr %read32.i38.i.i16 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %read32.i38.i.i16, align 4
  %call.i39.i.i17 = tail call i32 %59(ptr noundef %rtwdev, i32 noundef %.sink.i.i14) #7
  %60 = zext i32 %call.i39.i.i17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %60, ptr @__sancov_gen_cov_switch_values.475)
  switch i32 %call.i39.i.i17, label %lor.lhs.false22.i.i21 [
    i32 -353703190, label %if.end17.i.i18.rtw89_mac_set_csi_para_reg.exitthread-pre-split_crit_edge
    i32 -559038737, label %if.end17.i.i18.rtw89_mac_set_csi_para_reg.exitthread-pre-split_crit_edge66
  ]

if.end17.i.i18.rtw89_mac_set_csi_para_reg.exitthread-pre-split_crit_edge66: ; preds = %if.end17.i.i18
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtw89_mac_set_csi_para_reg.exitthread-pre-split

if.end17.i.i18.rtw89_mac_set_csi_para_reg.exitthread-pre-split_crit_edge: ; preds = %if.end17.i.i18
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtw89_mac_set_csi_para_reg.exitthread-pre-split

lor.lhs.false22.i.i21:                            ; preds = %if.end17.i.i18
  %and.i.i19 = and i32 %call.i39.i.i17, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i19)
  %cmp23.not.i.not.i20 = icmp eq i32 %and.i.i19, 0
  br i1 %cmp23.not.i.not.i20, label %lor.lhs.false22.i.i21.rtw89_mac_set_csi_para_reg.exitthread-pre-split_crit_edge, label %if.end.i23

lor.lhs.false22.i.i21.rtw89_mac_set_csi_para_reg.exitthread-pre-split_crit_edge: ; preds = %lor.lhs.false22.i.i21
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtw89_mac_set_csi_para_reg.exitthread-pre-split

if.end.i23:                                       ; preds = %lor.lhs.false22.i.i21
  %arrayidx.i22 = getelementptr %struct.ieee80211_sta, ptr %sta, i32 0, i32 6, i32 1, i32 1, i32 3
  %61 = ptrtoint ptr %arrayidx.i22 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %arrayidx.i22, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %62)
  %tobool3.not.i = icmp sgt i8 %62, -1
  br i1 %tobool3.not.i, label %lor.lhs.false.i, label %if.end.i23.if.then8.i_crit_edge

if.end.i23.if.then8.i_crit_edge:                  ; preds = %if.end.i23
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then8.i

lor.lhs.false.i:                                  ; preds = %if.end.i23
  %arrayidx4.i = getelementptr %struct.ieee80211_sta, ptr %sta, i32 0, i32 6, i32 1, i32 1, i32 4
  %63 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %arrayidx4.i, align 1
  %65 = and i8 %64, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %65)
  %tobool7.not.i24 = icmp eq i8 %65, 0
  br i1 %tobool7.not.i24, label %lor.lhs.false.i.if.end51.i_crit_edge, label %lor.lhs.false.i.if.then8.i_crit_edge

lor.lhs.false.i.if.then8.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then8.i

lor.lhs.false.i.if.end51.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end51.i

if.then8.i:                                       ; preds = %lor.lhs.false.i.if.then8.i_crit_edge, %if.end.i23.if.then8.i_crit_edge
  %arrayidx9.i = getelementptr %struct.ieee80211_sta, ptr %sta, i32 0, i32 6, i32 1, i32 1, i32 1
  %66 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %arrayidx9.i, align 1
  %68 = lshr i8 %67, 5
  %69 = and i8 %68, 1
  %arrayidx17.i = getelementptr %struct.ieee80211_sta, ptr %sta, i32 0, i32 6, i32 1, i32 1, i32 2
  %70 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %arrayidx17.i, align 1
  %72 = lshr i8 %71, 3
  %73 = and i8 %72, 1
  %arrayidx40.i = getelementptr %struct.ieee80211_sta, ptr %sta, i32 0, i32 6, i32 1, i32 1, i32 5
  %74 = ptrtoint ptr %arrayidx40.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %arrayidx40.i, align 1
  %76 = and i8 %75, 7
  %77 = tail call i8 @llvm.umin.i8(i8 %76, i8 3) #7
  br label %if.end51.i

if.end51.i:                                       ; preds = %if.then8.i, %lor.lhs.false.i.if.end51.i_crit_edge
  %sound_dim.0.i = phi i8 [ %77, %if.then8.i ], [ 3, %lor.lhs.false.i.if.end51.i_crit_edge ]
  %stbc_en.0.i = phi i8 [ %73, %if.then8.i ], [ 1, %lor.lhs.false.i.if.end51.i_crit_edge ]
  %ldpc_en.0.i = phi i8 [ %69, %if.then8.i ], [ 1, %lor.lhs.false.i.if.end51.i_crit_edge ]
  %78 = ptrtoint ptr %cap.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %cap.i, align 4
  %80 = and i32 %79, 526336
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %if.end51.i.do.end321.i_crit_edge, label %if.then59.i

if.end51.i.do.end321.i_crit_edge:                 ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end321.i

if.then59.i:                                      ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #9
  %82 = trunc i32 %79 to i8
  %83 = lshr i8 %82, 4
  %conv70.i = and i8 %83, %ldpc_en.0.i
  %and73.i = and i32 %79, 1792
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and73.i)
  %tobool74.i = icmp ne i32 %and73.i, 0
  %lnot.ext78.i = zext i1 %tobool74.i to i8
  %and80.i = and i8 %stbc_en.0.i, %lnot.ext78.i
  %and100.i = lshr i32 %79, 16
  %conv102.i = and i32 %and100.i, 7
  %conv104.i = zext i8 %sound_dim.0.i to i32
  %84 = tail call i32 @llvm.umin.i32(i32 %conv102.i, i32 %conv104.i) #7
  %conv114.i = trunc i32 %84 to i8
  br label %do.end321.i

do.end321.i:                                      ; preds = %if.then59.i, %if.end51.i.do.end321.i_crit_edge
  %sound_dim.1.i = phi i8 [ %conv114.i, %if.then59.i ], [ %sound_dim.0.i, %if.end51.i.do.end321.i_crit_edge ]
  %stbc_en.1.i = phi i8 [ %and80.i, %if.then59.i ], [ %stbc_en.0.i, %if.end51.i.do.end321.i_crit_edge ]
  %ldpc_en.1.i = phi i8 [ %conv70.i, %if.then59.i ], [ %ldpc_en.0.i, %if.end51.i.do.end321.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %sound_dim.1.i)
  %85 = icmp ne i8 %sound_dim.1.i, 0
  %cond.i.i26 = select i1 %cmp2.i.i1156, i32 52616, i32 60808
  %86 = ptrtoint ptr %hci.i37.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %hci.i37.i.i, align 8
  %read32.i.i.i27 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %87, i32 0, i32 9
  %88 = ptrtoint ptr %read32.i.i.i27 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %read32.i.i.i27, align 4
  %call.i.i.i28 = tail call i32 %89(ptr noundef %rtwdev, i32 noundef %cond.i.i26) #7
  %or.i.i29 = or i32 %call.i.i.i28, 268435456
  %90 = ptrtoint ptr %hci.i37.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %hci.i37.i.i, align 8
  %write32.i.i.i30 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %91, i32 0, i32 12
  %92 = ptrtoint ptr %write32.i.i.i30 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %write32.i.i.i30, align 4
  tail call void %93(ptr noundef %rtwdev, i32 noundef %cond.i.i26, i32 noundef %or.i.i29) #7
  %and165.i = zext i1 %85 to i16
  %conv189.i = zext i8 %sound_dim.1.i to i16
  %shl190.i = shl nuw nsw i16 %conv189.i, 3
  %and191.i = and i16 %shl190.i, 56
  %conv296.i = zext i8 %ldpc_en.1.i to i16
  %shl297.i = shl nuw nsw i16 %conv296.i, 12
  %and298.i = and i16 %shl297.i, 4096
  %conv323.i = zext i8 %stbc_en.1.i to i16
  %shl324.i = shl nuw nsw i16 %conv323.i, 13
  %and325.i = and i16 %shl324.i, 8192
  %or.i = or i16 %and191.i, %and165.i
  %or272.i = or i16 %or.i, %and325.i
  %or299.i = or i16 %or272.i, %and298.i
  %or326.i = or i16 %or299.i, 1280
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %cmp329.i = icmp eq i8 %54, 0
  %cond.i11.i = select i1 %cmp2.i.i1156, i32 52628, i32 60820
  %spec.select.i = select i1 %cmp329.i, i32 %cond.i.i26, i32 %cond.i11.i
  %94 = ptrtoint ptr %hci.i37.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %hci.i37.i.i, align 8
  %write16.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %95, i32 0, i32 11
  %96 = ptrtoint ptr %write16.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %write16.i.i, align 4
  tail call void %97(ptr noundef %rtwdev, i32 noundef %spec.select.i, i16 noundef zeroext %or326.i) #7
  br label %rtw89_mac_set_csi_para_reg.exitthread-pre-split

rtw89_mac_set_csi_para_reg.exitthread-pre-split:  ; preds = %do.end321.i, %lor.lhs.false22.i.i21.rtw89_mac_set_csi_para_reg.exitthread-pre-split_crit_edge, %if.end17.i.i18.rtw89_mac_set_csi_para_reg.exitthread-pre-split_crit_edge, %if.end17.i.i18.rtw89_mac_set_csi_para_reg.exitthread-pre-split_crit_edge66
  %98 = ptrtoint ptr %mac_idx to i32
  call void @__asan_load1_noabort(i32 %98)
  %.pr59.pr = load i8, ptr %mac_idx, align 1
  br label %rtw89_mac_set_csi_para_reg.exit

rtw89_mac_set_csi_para_reg.exit:                  ; preds = %rtw89_mac_set_csi_para_reg.exitthread-pre-split, %rtw89_mac_init_bfee.exit.rtw89_mac_set_csi_para_reg.exit_crit_edge
  %.pr59 = phi i8 [ %.pr59.pr, %rtw89_mac_set_csi_para_reg.exitthread-pre-split ], [ %.pr, %rtw89_mac_init_bfee.exit.rtw89_mac_set_csi_para_reg.exit_crit_edge ]
  %99 = zext i8 %.pr59 to i64
  call void @__sanitizer_cov_trace_switch(i64 %99, ptr @__sancov_gen_cov_switch_values.476)
  switch i8 %.pr59, label %rtw89_mac_set_csi_para_reg.exit.if.end_crit_edge [
    i8 0, label %rtw89_mac_set_csi_para_reg.exit.if.end17.i.i39_crit_edge
    i8 1, label %if.end17.i.i39.fold.split
  ]

rtw89_mac_set_csi_para_reg.exit.if.end17.i.i39_crit_edge: ; preds = %rtw89_mac_set_csi_para_reg.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17.i.i39

rtw89_mac_set_csi_para_reg.exit.if.end_crit_edge: ; preds = %rtw89_mac_set_csi_para_reg.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end17.i.i39.fold.split:                        ; preds = %rtw89_mac_set_csi_para_reg.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17.i.i39

if.end17.i.i39:                                   ; preds = %if.end17.i.i39.fold.split, %rtw89_mac_set_csi_para_reg.exit.if.end17.i.i39_crit_edge
  %cmp2.i.i3262 = phi i1 [ true, %rtw89_mac_set_csi_para_reg.exit.if.end17.i.i39_crit_edge ], [ false, %if.end17.i.i39.fold.split ]
  %.sink.i.i35 = phi i32 [ 49152, %rtw89_mac_set_csi_para_reg.exit.if.end17.i.i39_crit_edge ], [ 128, %if.end17.i.i39.fold.split ]
  %100 = ptrtoint ptr %hci.i37.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %hci.i37.i.i, align 8
  %read32.i38.i.i37 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %101, i32 0, i32 9
  %102 = ptrtoint ptr %read32.i38.i.i37 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %read32.i38.i.i37, align 4
  %call.i39.i.i38 = tail call i32 %103(ptr noundef %rtwdev, i32 noundef %.sink.i.i35) #7
  %104 = zext i32 %call.i39.i.i38 to i64
  call void @__sanitizer_cov_trace_switch(i64 %104, ptr @__sancov_gen_cov_switch_values.477)
  switch i32 %call.i39.i.i38, label %lor.lhs.false22.i.i42 [
    i32 -353703190, label %if.end17.i.i39.if.end_crit_edge
    i32 -559038737, label %if.end17.i.i39.if.end_crit_edge67
  ]

if.end17.i.i39.if.end_crit_edge67:                ; preds = %if.end17.i.i39
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end17.i.i39.if.end_crit_edge:                  ; preds = %if.end17.i.i39
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

lor.lhs.false22.i.i42:                            ; preds = %if.end17.i.i39
  %and.i.i40 = and i32 %call.i39.i.i38, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i40)
  %cmp23.not.i.not.i41 = icmp eq i32 %and.i.i40, 0
  br i1 %cmp23.not.i.not.i41, label %lor.lhs.false22.i.i42.if.end_crit_edge, label %if.end.i50

lor.lhs.false22.i.i42.if.end_crit_edge:           ; preds = %lor.lhs.false22.i.i42
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i50:                                       ; preds = %lor.lhs.false22.i.i42
  call void @__sanitizer_cov_trace_pc() #9
  %he_cap.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 6
  %105 = ptrtoint ptr %he_cap.i to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %he_cap.i, align 4, !range !744
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %106)
  %tobool2.not.i = icmp eq i8 %106, 0
  %spec.select.i43 = select i1 %tobool2.not.i, i32 17, i32 687865873
  %vht_cap.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 5
  %107 = ptrtoint ptr %vht_cap.i to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %vht_cap.i, align 4, !range !744
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %108)
  %tobool5.not.i = icmp eq i8 %108, 0
  %or7.i = or i32 %spec.select.i43, 2686976
  %rrsc.1.i = select i1 %tobool5.not.i, i32 %spec.select.i43, i32 %or7.i
  %ht_supported.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 3, i32 1
  %109 = ptrtoint ptr %ht_supported.i to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %ht_supported.i, align 2, !range !744
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %110)
  %tobool9.not.i = icmp eq i8 %110, 0
  %or11.i = or i32 %rrsc.1.i, 10496
  %rrsc.2.i = select i1 %tobool9.not.i, i32 %rrsc.1.i, i32 %or11.i
  %cond.i.i44 = select i1 %cmp2.i.i3262, i32 52616, i32 60808
  %111 = ptrtoint ptr %hci.i37.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %hci.i37.i.i, align 8
  %read32.i.i.i45 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %112, i32 0, i32 9
  %113 = ptrtoint ptr %read32.i.i.i45 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %read32.i.i.i45, align 4
  %call.i.i.i46 = tail call i32 %114(ptr noundef %rtwdev, i32 noundef %cond.i.i44) #7
  %or.i.i47 = or i32 %call.i.i.i46, 268435456
  %115 = ptrtoint ptr %hci.i37.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %hci.i37.i.i, align 8
  %write32.i.i.i48 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %116, i32 0, i32 12
  %117 = ptrtoint ptr %write32.i.i.i48 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %write32.i.i.i48, align 4
  tail call void %118(ptr noundef %rtwdev, i32 noundef %cond.i.i44, i32 noundef %or.i.i47) #7
  %119 = ptrtoint ptr %hci.i37.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %hci.i37.i.i, align 8
  %read32.i.i2.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %120, i32 0, i32 9
  %121 = ptrtoint ptr %read32.i.i2.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %read32.i.i2.i, align 4
  %call.i.i3.i = tail call i32 %122(ptr noundef %rtwdev, i32 noundef %cond.i.i44) #7
  %and.i4.i = and i32 %call.i.i3.i, -131073
  %123 = ptrtoint ptr %hci.i37.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %hci.i37.i.i, align 8
  %write32.i.i5.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %124, i32 0, i32 12
  %125 = ptrtoint ptr %write32.i.i5.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %write32.i.i5.i, align 4
  tail call void %126(ptr noundef %rtwdev, i32 noundef %cond.i.i44, i32 noundef %and.i4.i) #7
  %cond.i7.i = select i1 %cmp2.i.i3262, i32 52620, i32 60812
  %127 = ptrtoint ptr %hci.i37.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %hci.i37.i.i, align 8
  %write32.i.i49 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %128, i32 0, i32 12
  %129 = ptrtoint ptr %write32.i.i49 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %write32.i.i49, align 4
  tail call void %130(ptr noundef %rtwdev, i32 noundef %cond.i7.i, i32 noundef %rrsc.2.i) #7
  br label %if.end

if.end:                                           ; preds = %if.end.i50, %lor.lhs.false22.i.i42.if.end_crit_edge, %if.end17.i.i39.if.end_crit_edge, %if.end17.i.i39.if.end_crit_edge67, %rtw89_mac_set_csi_para_reg.exit.if.end_crit_edge, %if.else6.i.i.if.end_crit_edge, %rtw89_sta_has_beamformer_cap.exit.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw89_mac_bf_disassoc(ptr noundef %rtwdev, ptr nocapture noundef readonly %vif, ptr nocapture noundef readnone %sta) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mac_idx = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 10
  %0 = ptrtoint ptr %mac_idx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %mac_idx, align 1
  tail call void (ptr, i32, ptr, ...) @__rtw89_debug(ptr noundef %rtwdev, i32 noundef 16384, ptr noundef nonnull @.str.451, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp.i.i = icmp eq i8 %1, 0
  %cond.i.i = select i1 %cmp.i.i, i32 52608, i32 60800
  %flags.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 26
  tail call void @_clear_bit(i32 noundef 4, ptr noundef %flags.i) #7
  %hci.i.i11.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 7
  %2 = ptrtoint ptr %hci.i.i11.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hci.i.i11.i, align 8
  %read32.i.i12.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %read32.i.i12.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %read32.i.i12.i, align 4
  %call.i.i13.i = tail call i32 %5(ptr noundef %rtwdev, i32 noundef %cond.i.i) #7
  %and.i.i = and i32 %call.i.i13.i, -8
  %6 = ptrtoint ptr %hci.i.i11.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hci.i.i11.i, align 8
  %write32.i.i14.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %7, i32 0, i32 12
  %8 = ptrtoint ptr %write32.i.i14.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %write32.i.i14.i, align 4
  tail call void %9(ptr noundef %rtwdev, i32 noundef %cond.i.i, i32 noundef %and.i.i) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw89_mac_bf_set_gid_table(ptr noundef %rtwdev, ptr nocapture noundef readonly %vif, ptr nocapture noundef readonly %conf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mac_idx1 = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 10
  %0 = ptrtoint ptr %mac_idx1 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %mac_idx1, align 1
  tail call void (ptr, i32, ptr, ...) @__rtw89_debug(ptr noundef %rtwdev, i32 noundef 16384, ptr noundef nonnull @.str.46) #7
  %mu_group = getelementptr inbounds %struct.ieee80211_bss_conf, ptr %conf, i32 0, i32 33
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp.i = icmp eq i8 %1, 0
  %cond.i = select i1 %cmp.i, i32 49280, i32 57472
  %2 = ptrtoint ptr %mu_group to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mu_group, align 4
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %hci.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 7
  %5 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hci.i, align 8
  %write32.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %6, i32 0, i32 12
  %7 = ptrtoint ptr %write32.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %write32.i, align 4
  tail call void %8(ptr noundef %rtwdev, i32 noundef %cond.i, i32 noundef %4) #7
  %cond.i33 = select i1 %cmp.i, i32 49284, i32 57476
  %arrayidx4 = getelementptr %struct.ieee80211_bss_conf, ptr %conf, i32 0, i32 33, i32 0, i32 4
  %9 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx4, align 4
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  %12 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hci.i, align 8
  %write32.i35 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %13, i32 0, i32 12
  %14 = ptrtoint ptr %write32.i35 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %write32.i35, align 4
  tail call void %15(ptr noundef %rtwdev, i32 noundef %cond.i33, i32 noundef %11) #7
  %position = getelementptr inbounds %struct.ieee80211_bss_conf, ptr %conf, i32 0, i32 33, i32 1
  %cond.i37 = select i1 %cmp.i, i32 49264, i32 57456
  %16 = ptrtoint ptr %position to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %position, align 4
  %18 = tail call i32 @llvm.bswap.i32(i32 %17)
  %19 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %hci.i, align 8
  %write32.i39 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %20, i32 0, i32 12
  %21 = ptrtoint ptr %write32.i39 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %write32.i39, align 4
  tail call void %22(ptr noundef %rtwdev, i32 noundef %cond.i37, i32 noundef %18) #7
  %cond.i41 = select i1 %cmp.i, i32 49268, i32 57460
  %arrayidx10 = getelementptr %struct.ieee80211_bss_conf, ptr %conf, i32 0, i32 33, i32 1, i32 4
  %23 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx10, align 4
  %25 = tail call i32 @llvm.bswap.i32(i32 %24)
  %26 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %hci.i, align 8
  %write32.i43 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %27, i32 0, i32 12
  %28 = ptrtoint ptr %write32.i43 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %write32.i43, align 4
  tail call void %29(ptr noundef %rtwdev, i32 noundef %cond.i41, i32 noundef %25) #7
  %cond.i45 = select i1 %cmp.i, i32 49272, i32 57464
  %arrayidx12 = getelementptr %struct.ieee80211_bss_conf, ptr %conf, i32 0, i32 33, i32 1, i32 8
  %30 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx12, align 4
  %32 = tail call i32 @llvm.bswap.i32(i32 %31)
  %33 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %hci.i, align 8
  %write32.i47 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %34, i32 0, i32 12
  %35 = ptrtoint ptr %write32.i47 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %write32.i47, align 4
  tail call void %36(ptr noundef %rtwdev, i32 noundef %cond.i45, i32 noundef %32) #7
  %cond.i49 = select i1 %cmp.i, i32 49276, i32 57468
  %arrayidx14 = getelementptr %struct.ieee80211_bss_conf, ptr %conf, i32 0, i32 33, i32 1, i32 12
  %37 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx14, align 4
  %39 = tail call i32 @llvm.bswap.i32(i32 %38)
  %40 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %hci.i, align 8
  %write32.i51 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %41, i32 0, i32 12
  %42 = ptrtoint ptr %write32.i51 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %write32.i51, align 4
  tail call void %43(ptr noundef %rtwdev, i32 noundef %cond.i49, i32 noundef %39) #7
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw89_mac_bf_monitor_calc(ptr noundef %rtwdev, ptr noundef %sta, i1 noundef zeroext %disconnect) local_unnamed_addr #0 align 64 {
entry:
  %data = alloca %struct.rtw89_mac_bf_monitor_iter_data, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %data) #7
  %0 = getelementptr inbounds %struct.rtw89_mac_bf_monitor_iter_data, ptr %data, i32 0, i32 1
  %1 = getelementptr inbounds %struct.rtw89_mac_bf_monitor_iter_data, ptr %data, i32 0, i32 2
  %2 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %rtwdev, ptr %data, align 4
  %spec.select = select i1 %disconnect, ptr %sta, ptr null
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %spec.select, ptr %0, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %1, align 4
  %5 = ptrtoint ptr %rtwdev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rtwdev, align 128
  call void @ieee80211_iterate_stations_atomic(ptr noundef %6, ptr noundef nonnull @rtw89_mac_bf_monitor_calc_iter, ptr noundef nonnull %data) #7
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %1, align 4
  call void (ptr, i32, ptr, ...) @__rtw89_debug(ptr noundef %rtwdev, i32 noundef 16384, ptr noundef nonnull @.str.47, i32 noundef %8) #7
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool4.not = icmp eq i32 %10, 0
  %flags5 = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 26
  br i1 %tobool4.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @_set_bit(i32 noundef 3, ptr noundef %flags5) #7
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @_clear_bit(i32 noundef 3, ptr noundef %flags5) #7
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %data) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_iterate_stations_atomic(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @rtw89_mac_bf_monitor_calc_iter(ptr nocapture noundef %data, ptr noundef readonly %sta) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %down_sta1 = getelementptr inbounds %struct.rtw89_mac_bf_monitor_iter_data, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %down_sta1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %down_sta1, align 4
  %count2 = getelementptr inbounds %struct.rtw89_mac_bf_monitor_iter_data, ptr %data, i32 0, i32 2
  %cmp = icmp eq ptr %1, %sta
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %cap.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 5, i32 1
  %2 = ptrtoint ptr %cap.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cap.i, align 4
  %4 = and i32 %3, 526336
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %lor.lhs.false5.i, label %if.end.if.then3_crit_edge

if.end.if.then3_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then3

lor.lhs.false5.i:                                 ; preds = %if.end
  %arrayidx.i = getelementptr %struct.ieee80211_sta, ptr %sta, i32 0, i32 6, i32 1, i32 1, i32 3
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %7)
  %tobool7.not.i = icmp sgt i8 %7, -1
  br i1 %tobool7.not.i, label %rtw89_sta_has_beamformer_cap.exit, label %lor.lhs.false5.i.if.then3_crit_edge

lor.lhs.false5.i.if.then3_crit_edge:              ; preds = %lor.lhs.false5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then3

rtw89_sta_has_beamformer_cap.exit:                ; preds = %lor.lhs.false5.i
  %arrayidx12.i = getelementptr %struct.ieee80211_sta, ptr %sta, i32 0, i32 6, i32 1, i32 1, i32 4
  %8 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx12.i, align 1
  %10 = and i8 %9, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool15.not.i.not = icmp eq i8 %10, 0
  br i1 %tobool15.not.i.not, label %rtw89_sta_has_beamformer_cap.exit.cleanup_crit_edge, label %rtw89_sta_has_beamformer_cap.exit.if.then3_crit_edge

rtw89_sta_has_beamformer_cap.exit.if.then3_crit_edge: ; preds = %rtw89_sta_has_beamformer_cap.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then3

rtw89_sta_has_beamformer_cap.exit.cleanup_crit_edge: ; preds = %rtw89_sta_has_beamformer_cap.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then3:                                         ; preds = %rtw89_sta_has_beamformer_cap.exit.if.then3_crit_edge, %lor.lhs.false5.i.if.then3_crit_edge, %if.end.if.then3_crit_edge
  %11 = ptrtoint ptr %count2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %count2, align 4
  %inc = add i32 %12, 1
  store i32 %inc, ptr %count2, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %rtw89_sta_has_beamformer_cap.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @_rtw89_mac_bf_monitor_track(ptr noundef %rtwdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_tfc_lv = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 9, i32 10
  %0 = ptrtoint ptr %tx_tfc_lv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tx_tfc_lv, align 8
  %rx_tfc_lv = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 9, i32 11
  %2 = ptrtoint ptr %rx_tfc_lv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rx_tfc_lv, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp = icmp ule i32 %1, %3
  %flags = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 26
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %flags, align 4
  %6 = and i32 %5, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool = icmp eq i32 %6, 0
  %cmp6 = xor i1 %cmp, %tobool
  br i1 %cmp6, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %rtwvifs_list = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 11
  %7 = ptrtoint ptr %rtwvifs_list to i32
  call void @__asan_load4_noabort(i32 %7)
  %rtwvif.028 = load ptr, ptr %rtwvifs_list, align 4
  %cmp9.not29 = icmp eq ptr %rtwvif.028, %rtwvifs_list
  br i1 %cmp9.not29, label %if.end.cleanup_crit_edge, label %for.body.lr.ph

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end
  %conv.i = zext i1 %cmp to i32
  %hci.i.i11.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 7
  br label %for.body

for.body:                                         ; preds = %rtw89_mac_bfee_ctrl.exit.for.body_crit_edge, %for.body.lr.ph
  %rtwvif.030 = phi ptr [ %rtwvif.028, %for.body.lr.ph ], [ %rtwvif.0, %rtw89_mac_bfee_ctrl.exit.for.body_crit_edge ]
  %mac_idx = getelementptr inbounds %struct.rtw89_vif, ptr %rtwvif.030, i32 0, i32 6
  %8 = ptrtoint ptr %mac_idx to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %mac_idx, align 1
  tail call void (ptr, i32, ptr, ...) @__rtw89_debug(ptr noundef %rtwdev, i32 noundef 16384, ptr noundef nonnull @.str.451, i32 noundef %conv.i) #7
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp.i.i = icmp eq i8 %9, 0
  %cond.i.i = select i1 %cmp.i.i, i32 52608, i32 60800
  br i1 %cmp, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_set_bit(i32 noundef 4, ptr noundef %flags) #7
  %10 = ptrtoint ptr %hci.i.i11.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hci.i.i11.i, align 8
  %read32.i.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %11, i32 0, i32 9
  %12 = ptrtoint ptr %read32.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %read32.i.i.i, align 4
  %call.i.i.i = tail call i32 %13(ptr noundef %rtwdev, i32 noundef %cond.i.i) #7
  %or.i.i = or i32 %call.i.i.i, 7
  br label %rtw89_mac_bfee_ctrl.exit

if.else.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_clear_bit(i32 noundef 4, ptr noundef %flags) #7
  %14 = ptrtoint ptr %hci.i.i11.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hci.i.i11.i, align 8
  %read32.i.i12.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %15, i32 0, i32 9
  %16 = ptrtoint ptr %read32.i.i12.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %read32.i.i12.i, align 4
  %call.i.i13.i = tail call i32 %17(ptr noundef %rtwdev, i32 noundef %cond.i.i) #7
  %and.i.i = and i32 %call.i.i13.i, -8
  br label %rtw89_mac_bfee_ctrl.exit

rtw89_mac_bfee_ctrl.exit:                         ; preds = %if.else.i, %if.then.i
  %and.i.sink.i = phi i32 [ %and.i.i, %if.else.i ], [ %or.i.i, %if.then.i ]
  %18 = ptrtoint ptr %hci.i.i11.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hci.i.i11.i, align 8
  %write32.i.i14.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %19, i32 0, i32 12
  %20 = ptrtoint ptr %write32.i.i14.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %write32.i.i14.i, align 4
  tail call void %21(ptr noundef %rtwdev, i32 noundef %cond.i.i, i32 noundef %and.i.sink.i) #7
  %22 = ptrtoint ptr %rtwvif.030 to i32
  call void @__asan_load4_noabort(i32 %22)
  %rtwvif.0 = load ptr, ptr %rtwvif.030, align 4
  %cmp9.not = icmp eq ptr %rtwvif.0, %rtwvifs_list
  br i1 %cmp9.not, label %rtw89_mac_bfee_ctrl.exit.cleanup_crit_edge, label %rtw89_mac_bfee_ctrl.exit.for.body_crit_edge

rtw89_mac_bfee_ctrl.exit.for.body_crit_edge:      ; preds = %rtw89_mac_bfee_ctrl.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

rtw89_mac_bfee_ctrl.exit.cleanup_crit_edge:       ; preds = %rtw89_mac_bfee_ctrl.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %rtw89_mac_bfee_ctrl.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtw89_mac_set_tx_time(ptr noundef %rtwdev, ptr noundef %rtwsta, i1 noundef zeroext %resume, i32 noundef %tx_time) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %resume, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %cctl_tx_time = getelementptr inbounds %struct.rtw89_sta, ptr %rtwsta, i32 0, i32 14
  %0 = ptrtoint ptr %cctl_tx_time to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %cctl_tx_time, align 4
  %call = tail call fastcc i32 @__rtw89_mac_set_tx_time(ptr noundef %rtwdev, ptr noundef %rtwsta, i32 noundef %tx_time)
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call1 = tail call fastcc i32 @__rtw89_mac_set_tx_time(ptr noundef %rtwdev, ptr noundef %rtwsta, i32 noundef %tx_time)
  %cctl_tx_time2 = getelementptr inbounds %struct.rtw89_sta, ptr %rtwsta, i32 0, i32 14
  %1 = ptrtoint ptr %cctl_tx_time2 to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %cctl_tx_time2, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %ret.0 = phi i32 [ %call1, %if.else ], [ %call, %if.then ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__rtw89_mac_set_tx_time(ptr noundef %rtwdev, ptr noundef %rtwsta, i32 noundef %tx_time) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %rtwvif = getelementptr inbounds %struct.rtw89_sta, ptr %rtwsta, i32 0, i32 2
  %0 = ptrtoint ptr %rtwvif to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rtwvif, align 4
  %mac_idx1 = getelementptr inbounds %struct.rtw89_vif, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %mac_idx1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %mac_idx1, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tx_time)
  %cmp = icmp eq i32 %tx_time, 0
  %spec.select = select i1 %cmp, i32 5280, i32 %tx_time
  %cctl_tx_time = getelementptr inbounds %struct.rtw89_sta, ptr %rtwsta, i32 0, i32 14
  %4 = ptrtoint ptr %cctl_tx_time to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %cctl_tx_time, align 4, !range !744
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %sub = add i32 %spec.select, 7680
  %ampdu_max_time = getelementptr inbounds %struct.rtw89_sta, ptr %rtwsta, i32 0, i32 15
  %6 = ptrtoint ptr %ampdu_max_time to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %ampdu_max_time, align 1
  %sh.diff = lshr i32 %sub, 5
  %tr.sh.diff = trunc i32 %sh.diff to i8
  %bf.shl = and i8 %tr.sh.diff, -16
  %bf.clear = and i8 %bf.load, 15
  %bf.set = or i8 %bf.clear, %bf.shl
  store i8 %bf.set, ptr %ampdu_max_time, align 1
  %call = tail call i32 @rtw89_fw_h2c_txtime_cmac_tbl(ptr noundef %rtwdev, ptr noundef %rtwsta) #7
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp2.i = icmp eq i8 %3, 0
  br i1 %cmp2.i, label %if.else.if.end17.i_crit_edge, label %if.else6.i

if.else.if.end17.i_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17.i

if.else6.i:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %3)
  %cmp11.i = icmp eq i8 %3, 1
  br i1 %cmp11.i, label %if.else6.i.if.end17.i_crit_edge, label %if.else6.i.do.end_crit_edge

if.else6.i.do.end_crit_edge:                      ; preds = %if.else6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.else6.i.if.end17.i_crit_edge:                  ; preds = %if.else6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17.i

if.end17.i:                                       ; preds = %if.else6.i.if.end17.i_crit_edge, %if.else.if.end17.i_crit_edge
  %.sink.i = phi i32 [ 49152, %if.else.if.end17.i_crit_edge ], [ 128, %if.else6.i.if.end17.i_crit_edge ]
  %hci.i37.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 7
  %7 = ptrtoint ptr %hci.i37.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hci.i37.i, align 8
  %read32.i38.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %8, i32 0, i32 9
  %9 = ptrtoint ptr %read32.i38.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %read32.i38.i, align 4
  %call.i39.i = tail call i32 %10(ptr noundef %rtwdev, i32 noundef %.sink.i) #7
  %11 = zext i32 %call.i39.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.478)
  switch i32 %call.i39.i, label %lor.lhs.false22.i [
    i32 -353703190, label %if.end17.i.do.end_crit_edge
    i32 -559038737, label %if.end17.i.do.end_crit_edge25
  ]

if.end17.i.do.end_crit_edge25:                    ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.end17.i.do.end_crit_edge:                      ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

lor.lhs.false22.i:                                ; preds = %if.end17.i
  %and.i = and i32 %call.i39.i, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp23.not.i.not = icmp eq i32 %and.i, 0
  br i1 %cmp23.not.i.not, label %lor.lhs.false22.i.do.end_crit_edge, label %if.end

lor.lhs.false22.i.do.end_crit_edge:               ; preds = %lor.lhs.false22.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false22.i.do.end_crit_edge, %if.end17.i.do.end_crit_edge, %if.end17.i.do.end_crit_edge25, %if.else6.i.do.end_crit_edge
  %retval.0.i.ph = phi i32 [ -14, %lor.lhs.false22.i.do.end_crit_edge ], [ -14, %if.end17.i.do.end_crit_edge ], [ -14, %if.end17.i.do.end_crit_edge25 ], [ -22, %if.else6.i.do.end_crit_edge ]
  %dev = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 1
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %13, ptr noundef nonnull @.str.452) #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false22.i
  call void @__sanitizer_cov_trace_pc() #9
  %cond.i = select i1 %cmp2.i, i32 50704, i32 58896
  %14 = ptrtoint ptr %hci.i37.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hci.i37.i, align 8
  %read32.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %15, i32 0, i32 9
  %16 = ptrtoint ptr %read32.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %read32.i.i, align 4
  %call.i.i = tail call i32 %17(ptr noundef %rtwdev, i32 noundef %cond.i) #7
  %and21.i = and i32 %call.i.i, 16777215
  %18 = shl i32 %spec.select, 19
  %shl.i = and i32 %18, -16777216
  %or.i = or i32 %and21.i, %shl.i
  %19 = ptrtoint ptr %hci.i37.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %hci.i37.i, align 8
  %write32.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %20, i32 0, i32 12
  %21 = ptrtoint ptr %write32.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %write32.i.i, align 4
  tail call void %22(ptr noundef %rtwdev, i32 noundef %cond.i, i32 noundef %or.i) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end, %if.then
  %retval.0 = phi i32 [ %retval.0.i.ph, %do.end ], [ %call, %if.then ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtw89_mac_get_tx_time(ptr noundef %rtwdev, ptr nocapture noundef readonly %rtwsta, ptr nocapture noundef writeonly %tx_time) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %rtwvif = getelementptr inbounds %struct.rtw89_sta, ptr %rtwsta, i32 0, i32 2
  %0 = ptrtoint ptr %rtwvif to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rtwvif, align 4
  %mac_idx1 = getelementptr inbounds %struct.rtw89_vif, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %mac_idx1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %mac_idx1, align 1
  %cctl_tx_time = getelementptr inbounds %struct.rtw89_sta, ptr %rtwsta, i32 0, i32 14
  %4 = ptrtoint ptr %cctl_tx_time to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %cctl_tx_time, align 4, !range !744
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %ampdu_max_time = getelementptr inbounds %struct.rtw89_sta, ptr %rtwsta, i32 0, i32 15
  %6 = ptrtoint ptr %ampdu_max_time to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %ampdu_max_time, align 1
  %bf.lshr = lshr i8 %bf.load, 4
  %narrow = add nuw nsw i8 %bf.lshr, 1
  %add = zext i8 %narrow to i32
  %shl = shl nuw nsw i32 %add, 9
  br label %if.end7

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp2.i = icmp eq i8 %3, 0
  br i1 %cmp2.i, label %if.else.if.end17.i_crit_edge, label %if.else6.i

if.else.if.end17.i_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17.i

if.else6.i:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %3)
  %cmp11.i = icmp eq i8 %3, 1
  br i1 %cmp11.i, label %if.else6.i.if.end17.i_crit_edge, label %if.else6.i.do.end_crit_edge

if.else6.i.do.end_crit_edge:                      ; preds = %if.else6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.else6.i.if.end17.i_crit_edge:                  ; preds = %if.else6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17.i

if.end17.i:                                       ; preds = %if.else6.i.if.end17.i_crit_edge, %if.else.if.end17.i_crit_edge
  %.sink.i = phi i32 [ 49152, %if.else.if.end17.i_crit_edge ], [ 128, %if.else6.i.if.end17.i_crit_edge ]
  %hci.i37.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 7
  %7 = ptrtoint ptr %hci.i37.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hci.i37.i, align 8
  %read32.i38.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %8, i32 0, i32 9
  %9 = ptrtoint ptr %read32.i38.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %read32.i38.i, align 4
  %call.i39.i = tail call i32 %10(ptr noundef %rtwdev, i32 noundef %.sink.i) #7
  %11 = zext i32 %call.i39.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.479)
  switch i32 %call.i39.i, label %lor.lhs.false22.i [
    i32 -353703190, label %if.end17.i.do.end_crit_edge
    i32 -559038737, label %if.end17.i.do.end_crit_edge22
  ]

if.end17.i.do.end_crit_edge22:                    ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.end17.i.do.end_crit_edge:                      ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

lor.lhs.false22.i:                                ; preds = %if.end17.i
  %and.i = and i32 %call.i39.i, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp23.not.i.not = icmp eq i32 %and.i, 0
  br i1 %cmp23.not.i.not, label %lor.lhs.false22.i.do.end_crit_edge, label %if.end

lor.lhs.false22.i.do.end_crit_edge:               ; preds = %lor.lhs.false22.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false22.i.do.end_crit_edge, %if.end17.i.do.end_crit_edge, %if.end17.i.do.end_crit_edge22, %if.else6.i.do.end_crit_edge
  %retval.0.i.ph = phi i32 [ -14, %lor.lhs.false22.i.do.end_crit_edge ], [ -14, %if.end17.i.do.end_crit_edge ], [ -14, %if.end17.i.do.end_crit_edge22 ], [ -22, %if.else6.i.do.end_crit_edge ]
  %dev = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 1
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %13, ptr noundef nonnull @.str.48) #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false22.i
  call void @__sanitizer_cov_trace_pc() #9
  %cond.i = select i1 %cmp2.i, i32 50704, i32 58896
  %14 = ptrtoint ptr %hci.i37.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hci.i37.i, align 8
  %read32.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %15, i32 0, i32 9
  %16 = ptrtoint ptr %read32.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %read32.i.i, align 4
  %call.i.i = tail call i32 %17(ptr noundef %rtwdev, i32 noundef %cond.i) #7
  %18 = lshr i32 %call.i.i, 19
  %shl6 = and i32 %18, 8160
  br label %if.end7

if.end7:                                          ; preds = %if.end, %if.then
  %storemerge = phi i32 [ %shl6, %if.end ], [ %shl, %if.then ]
  %19 = ptrtoint ptr %tx_time to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %storemerge, ptr %tx_time, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %do.end
  %retval.0 = phi i32 [ 0, %if.end7 ], [ %retval.0.i.ph, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtw89_mac_set_tx_retry_limit(ptr noundef %rtwdev, ptr noundef %rtwsta, i1 noundef zeroext %resume, i8 noundef zeroext %tx_retry) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %data_tx_cnt_lmt = getelementptr inbounds %struct.rtw89_sta, ptr %rtwsta, i32 0, i32 17
  %0 = ptrtoint ptr %data_tx_cnt_lmt to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %data_tx_cnt_lmt, align 1
  %bf.shl = shl i8 %tx_retry, 2
  %bf.clear = and i8 %bf.load, 3
  %bf.set = or i8 %bf.clear, %bf.shl
  store i8 %bf.set, ptr %data_tx_cnt_lmt, align 1
  br i1 %resume, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %cctl_tx_retry_limit = getelementptr inbounds %struct.rtw89_sta, ptr %rtwsta, i32 0, i32 16
  %1 = ptrtoint ptr %cctl_tx_retry_limit to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 1, ptr %cctl_tx_retry_limit, align 2
  %call = tail call i32 @rtw89_fw_h2c_txtime_cmac_tbl(ptr noundef %rtwdev, ptr noundef %rtwsta) #7
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call1 = tail call i32 @rtw89_fw_h2c_txtime_cmac_tbl(ptr noundef %rtwdev, ptr noundef %rtwsta) #7
  %cctl_tx_retry_limit2 = getelementptr inbounds %struct.rtw89_sta, ptr %rtwsta, i32 0, i32 16
  %2 = ptrtoint ptr %cctl_tx_retry_limit2 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %cctl_tx_retry_limit2, align 2
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %ret.0 = phi i32 [ %call1, %if.else ], [ %call, %if.then ]
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw89_fw_h2c_txtime_cmac_tbl(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtw89_mac_get_tx_retry_limit(ptr noundef %rtwdev, ptr nocapture noundef readonly %rtwsta, ptr nocapture noundef writeonly %tx_retry) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %rtwvif = getelementptr inbounds %struct.rtw89_sta, ptr %rtwsta, i32 0, i32 2
  %0 = ptrtoint ptr %rtwvif to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rtwvif, align 4
  %mac_idx1 = getelementptr inbounds %struct.rtw89_vif, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %mac_idx1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %mac_idx1, align 1
  %cctl_tx_retry_limit = getelementptr inbounds %struct.rtw89_sta, ptr %rtwsta, i32 0, i32 16
  %4 = ptrtoint ptr %cctl_tx_retry_limit to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %cctl_tx_retry_limit, align 2, !range !744
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %data_tx_cnt_lmt = getelementptr inbounds %struct.rtw89_sta, ptr %rtwsta, i32 0, i32 17
  %6 = ptrtoint ptr %data_tx_cnt_lmt to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %data_tx_cnt_lmt, align 1
  %bf.lshr = lshr i8 %bf.load, 2
  br label %if.end7

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp2.i = icmp eq i8 %3, 0
  br i1 %cmp2.i, label %if.else.if.end17.i_crit_edge, label %if.else6.i

if.else.if.end17.i_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17.i

if.else6.i:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %3)
  %cmp11.i = icmp eq i8 %3, 1
  br i1 %cmp11.i, label %if.else6.i.if.end17.i_crit_edge, label %if.else6.i.do.end_crit_edge

if.else6.i.do.end_crit_edge:                      ; preds = %if.else6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.else6.i.if.end17.i_crit_edge:                  ; preds = %if.else6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17.i

if.end17.i:                                       ; preds = %if.else6.i.if.end17.i_crit_edge, %if.else.if.end17.i_crit_edge
  %.sink.i = phi i32 [ 49152, %if.else.if.end17.i_crit_edge ], [ 128, %if.else6.i.if.end17.i_crit_edge ]
  %hci.i37.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 7
  %7 = ptrtoint ptr %hci.i37.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hci.i37.i, align 8
  %read32.i38.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %8, i32 0, i32 9
  %9 = ptrtoint ptr %read32.i38.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %read32.i38.i, align 4
  %call.i39.i = tail call i32 %10(ptr noundef %rtwdev, i32 noundef %.sink.i) #7
  %11 = zext i32 %call.i39.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.480)
  switch i32 %call.i39.i, label %lor.lhs.false22.i [
    i32 -353703190, label %if.end17.i.do.end_crit_edge
    i32 -559038737, label %if.end17.i.do.end_crit_edge22
  ]

if.end17.i.do.end_crit_edge22:                    ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.end17.i.do.end_crit_edge:                      ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

lor.lhs.false22.i:                                ; preds = %if.end17.i
  %and.i = and i32 %call.i39.i, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp23.not.i.not = icmp eq i32 %and.i, 0
  br i1 %cmp23.not.i.not, label %lor.lhs.false22.i.do.end_crit_edge, label %if.end

lor.lhs.false22.i.do.end_crit_edge:               ; preds = %lor.lhs.false22.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false22.i.do.end_crit_edge, %if.end17.i.do.end_crit_edge, %if.end17.i.do.end_crit_edge22, %if.else6.i.do.end_crit_edge
  %retval.0.i.ph = phi i32 [ -14, %lor.lhs.false22.i.do.end_crit_edge ], [ -14, %if.end17.i.do.end_crit_edge ], [ -14, %if.end17.i.do.end_crit_edge22 ], [ -22, %if.else6.i.do.end_crit_edge ]
  %dev = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 1
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %13, ptr noundef nonnull @.str.50) #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false22.i
  call void @__sanitizer_cov_trace_pc() #9
  %cond.i = select i1 %cmp2.i, i32 50732, i32 58924
  %14 = ptrtoint ptr %hci.i37.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hci.i37.i, align 8
  %read32.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %15, i32 0, i32 9
  %16 = ptrtoint ptr %read32.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %read32.i.i, align 4
  %call.i.i = tail call i32 %17(ptr noundef %rtwdev, i32 noundef %cond.i) #7
  %and.i18 = lshr i32 %call.i.i, 16
  %18 = trunc i32 %and.i18 to i8
  %conv6 = and i8 %18, 63
  br label %if.end7

if.end7:                                          ; preds = %if.end, %if.then
  %storemerge = phi i8 [ %conv6, %if.end ], [ %bf.lshr, %if.then ]
  %19 = ptrtoint ptr %tx_retry to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %storemerge, ptr %tx_retry, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %do.end
  %retval.0 = phi i32 [ 0, %if.end7 ], [ %retval.0.i.ph, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtw89_mac_set_hw_muedca_ctrl(ptr noundef %rtwdev, ptr nocapture noundef readonly %rtwvif, i1 noundef zeroext %en) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mac_idx1 = getelementptr inbounds %struct.rtw89_vif, ptr %rtwvif, i32 0, i32 6
  %0 = ptrtoint ptr %mac_idx1 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %mac_idx1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp2.i = icmp eq i8 %1, 0
  br i1 %cmp2.i, label %entry.if.end17.i_crit_edge, label %if.else6.i

entry.if.end17.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17.i

if.else6.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %cmp11.i = icmp eq i8 %1, 1
  br i1 %cmp11.i, label %if.else6.i.if.end17.i_crit_edge, label %if.else6.i.cleanup_crit_edge

if.else6.i.cleanup_crit_edge:                     ; preds = %if.else6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.else6.i.if.end17.i_crit_edge:                  ; preds = %if.else6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17.i

if.end17.i:                                       ; preds = %if.else6.i.if.end17.i_crit_edge, %entry.if.end17.i_crit_edge
  %.sink.i = phi i32 [ 49152, %entry.if.end17.i_crit_edge ], [ 128, %if.else6.i.if.end17.i_crit_edge ]
  %hci.i37.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 7
  %2 = ptrtoint ptr %hci.i37.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hci.i37.i, align 8
  %read32.i38.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %read32.i38.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %read32.i38.i, align 4
  %call.i39.i = tail call i32 %5(ptr noundef %rtwdev, i32 noundef %.sink.i) #7
  %6 = zext i32 %call.i39.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.481)
  switch i32 %call.i39.i, label %lor.lhs.false22.i [
    i32 -353703190, label %if.end17.i.cleanup_crit_edge
    i32 -559038737, label %if.end17.i.cleanup_crit_edge22
  ]

if.end17.i.cleanup_crit_edge22:                   ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end17.i.cleanup_crit_edge:                     ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false22.i:                                ; preds = %if.end17.i
  %and.i = and i32 %call.i39.i, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp23.not.i.not = icmp eq i32 %and.i, 0
  br i1 %cmp23.not.i.not, label %lor.lhs.false22.i.cleanup_crit_edge, label %if.end

lor.lhs.false22.i.cleanup_crit_edge:              ; preds = %lor.lhs.false22.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false22.i
  call void @__sanitizer_cov_trace_pc() #9
  %cond.i = select i1 %cmp2.i, i32 50032, i32 58224
  %7 = ptrtoint ptr %hci.i37.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hci.i37.i, align 8
  %read16.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %8, i32 0, i32 8
  %9 = ptrtoint ptr %read16.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %read16.i.i, align 4
  %call.i.i = tail call zeroext i16 %10(ptr noundef %rtwdev, i32 noundef %cond.i) #7
  %and.i18 = and i16 %call.i.i, -18
  %masksel = select i1 %en, i16 17, i16 0
  %or5.i.sink = or i16 %and.i18, %masksel
  %11 = ptrtoint ptr %hci.i37.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hci.i37.i, align 8
  %write16.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %12, i32 0, i32 11
  %13 = ptrtoint ptr %write16.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %write16.i.i, align 4
  tail call void %14(ptr noundef %rtwdev, i32 noundef %cond.i, i16 noundef zeroext %or5.i.sink) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false22.i.cleanup_crit_edge, %if.end17.i.cleanup_crit_edge, %if.end17.i.cleanup_crit_edge22, %if.else6.i.cleanup_crit_edge
  %retval.0 = phi i32 [ -14, %lor.lhs.false22.i.cleanup_crit_edge ], [ -14, %if.end17.i.cleanup_crit_edge ], [ -14, %if.end17.i.cleanup_crit_edge22 ], [ -22, %if.else6.i.cleanup_crit_edge ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dump_err_status_dispatcher(ptr noundef %rtwdev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %hci.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 7
  %2 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hci.i, align 8
  %read32.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %read32.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %read32.i, align 4
  %call.i = tail call i32 %5(ptr noundef %rtwdev, i32 noundef 34896) #7
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1, ptr noundef nonnull @.str.240, i32 noundef %call.i) #10
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %8 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hci.i, align 8
  %read32.i33 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %9, i32 0, i32 9
  %10 = ptrtoint ptr %read32.i33 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %read32.i33, align 4
  %call.i34 = tail call i32 %11(ptr noundef %rtwdev, i32 noundef 34824) #7
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %7, ptr noundef nonnull @.str.243, i32 noundef %call.i34) #10
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  %14 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hci.i, align 8
  %read32.i36 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %15, i32 0, i32 9
  %16 = ptrtoint ptr %read32.i36 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %read32.i36, align 4
  %call.i37 = tail call i32 %17(ptr noundef %rtwdev, i32 noundef 34900) #7
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %13, ptr noundef nonnull @.str.246, i32 noundef %call.i37) #10
  %18 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev, align 4
  %20 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hci.i, align 8
  %read32.i39 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %21, i32 0, i32 9
  %22 = ptrtoint ptr %read32.i39 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %read32.i39, align 4
  %call.i40 = tail call i32 %23(ptr noundef %rtwdev, i32 noundef 34828) #7
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %19, ptr noundef nonnull @.str.249, i32 noundef %call.i40) #10
  %24 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev, align 4
  %26 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %hci.i, align 8
  %read32.i42 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %27, i32 0, i32 9
  %28 = ptrtoint ptr %read32.i42 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %read32.i42, align 4
  %call.i43 = tail call i32 %29(ptr noundef %rtwdev, i32 noundef 34904) #7
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %25, ptr noundef nonnull @.str.252, i32 noundef %call.i43) #10
  %30 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev, align 4
  %32 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %hci.i, align 8
  %read32.i45 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %33, i32 0, i32 9
  %34 = ptrtoint ptr %read32.i45 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %read32.i45, align 4
  %call.i46 = tail call i32 %35(ptr noundef %rtwdev, i32 noundef 34820) #7
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %31, ptr noundef nonnull @.str.255, i32 noundef %call.i46) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dle_dfi_ctrl(ptr noundef %rtwdev, ptr nocapture noundef %ctrl) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ctrl, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.482)
  switch i32 %1, label %do.end102 [
    i32 0, label %entry.sw.epilog_crit_edge
    i32 1, label %do.end66
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

do.end66:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

do.end102:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 1
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %4, ptr noundef nonnull @.str.282, i32 noundef %1) #10
  br label %cleanup

sw.epilog:                                        ; preds = %do.end66, %entry.sw.epilog_crit_edge
  %data_reg.0 = phi i32 [ 37140, %do.end66 ], [ 36116, %entry.sw.epilog_crit_edge ]
  %ctrl_reg.0 = phi i32 [ 37136, %do.end66 ], [ 36112, %entry.sw.epilog_crit_edge ]
  %.sink188.in = getelementptr inbounds %struct.rtw89_mac_dle_dfi_ctrl, ptr %ctrl, i32 0, i32 1
  %5 = ptrtoint ptr %.sink188.in to i32
  call void @__asan_load4_noabort(i32 %5)
  %.sink188 = load i32, ptr %.sink188.in, align 4
  %.sink.in = getelementptr inbounds %struct.rtw89_mac_dle_dfi_ctrl, ptr %ctrl, i32 0, i32 2
  %6 = ptrtoint ptr %.sink.in to i32
  call void @__asan_load4_noabort(i32 %6)
  %.sink = load i32, ptr %.sink.in, align 4
  %shl69 = shl i32 %.sink188, 16
  %and70 = and i32 %shl69, 983040
  %and97 = and i32 %.sink, 65535
  %or98 = or i32 %and97, %and70
  %ctrl_data.0 = or i32 %or98, -2147483648
  %hci.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 7
  %7 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hci.i, align 8
  %write32.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %8, i32 0, i32 12
  %9 = ptrtoint ptr %write32.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %write32.i, align 4
  tail call void %10(ptr noundef %rtwdev, i32 noundef %ctrl_reg.0, i32 noundef %ctrl_data.0) #7
  %call = tail call i64 @ktime_get() #7
  %add.i = add i64 %call, 1000000
  %11 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hci.i, align 8
  %read32.i185 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %12, i32 0, i32 9
  %13 = ptrtoint ptr %read32.i185 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %read32.i185, align 4
  %call.i186 = tail call i32 %14(ptr noundef %rtwdev, i32 noundef %ctrl_reg.0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i186)
  %tobool107.not187 = icmp sgt i32 %call.i186, -1
  br i1 %tobool107.not187, label %sw.epilog.if.end134_crit_edge, label %sw.epilog.land.lhs.true_crit_edge

sw.epilog.land.lhs.true_crit_edge:                ; preds = %sw.epilog
  br label %land.lhs.true

sw.epilog.if.end134_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end134

land.lhs.true:                                    ; preds = %cond.false121.land.lhs.true_crit_edge, %sw.epilog.land.lhs.true_crit_edge
  %call111 = tail call i64 @ktime_get() #7
  call void @__sanitizer_cov_trace_cmp8(i64 %call111, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call111, %add.i
  br i1 %cmp3.i, label %for.end, label %cond.false121

cond.false121:                                    ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %15(i32 noundef 214748) #7
  %16 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hci.i, align 8
  %read32.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %17, i32 0, i32 9
  %18 = ptrtoint ptr %read32.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %read32.i, align 4
  %call.i = tail call i32 %19(ptr noundef %rtwdev, i32 noundef %ctrl_reg.0) #7
  %tobool107.not = icmp sgt i32 %call.i, -1
  br i1 %tobool107.not, label %cond.false121.if.end134_crit_edge, label %cond.false121.land.lhs.true_crit_edge

cond.false121.land.lhs.true_crit_edge:            ; preds = %cond.false121
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true

cond.false121.if.end134_crit_edge:                ; preds = %cond.false121
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end134

for.end:                                          ; preds = %land.lhs.true
  %20 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hci.i, align 8
  %read32.i178 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %21, i32 0, i32 9
  %22 = ptrtoint ptr %read32.i178 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %read32.i178, align 4
  %call.i179 = tail call i32 %23(ptr noundef %rtwdev, i32 noundef %ctrl_reg.0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i179)
  %tobool127.not = icmp sgt i32 %call.i179, -1
  br i1 %tobool127.not, label %for.end.if.end134_crit_edge, label %do.end132

for.end.if.end134_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end134

do.end132:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %dev133 = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 1
  %24 = ptrtoint ptr %dev133 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev133, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %25, ptr noundef nonnull @.str.285, i32 noundef %ctrl_reg.0, i32 noundef %ctrl_data.0) #10
  br label %cleanup

if.end134:                                        ; preds = %for.end.if.end134_crit_edge, %cond.false121.if.end134_crit_edge, %sw.epilog.if.end134_crit_edge
  %26 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %hci.i, align 8
  %read32.i181 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %27, i32 0, i32 9
  %28 = ptrtoint ptr %read32.i181 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %read32.i181, align 4
  %call.i182 = tail call i32 %29(ptr noundef %rtwdev, i32 noundef %data_reg.0) #7
  %out_data = getelementptr inbounds %struct.rtw89_mac_dle_dfi_ctrl, ptr %ctrl, i32 0, i32 3
  %30 = ptrtoint ptr %out_data to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %call.i182, ptr %out_data, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end134, %do.end132, %do.end102
  %retval.0 = phi i32 [ -22, %do.end102 ], [ -110, %do.end132 ], [ 0, %if.end134 ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__rtw89_leave_ps_mode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw89_fw_msg_reg(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dle_init(ptr noundef %rtwdev, i32 noundef %mode, i32 noundef %ext_mode) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %hci.i37.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 7
  %0 = ptrtoint ptr %hci.i37.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hci.i37.i, align 8
  %read32.i38.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %read32.i38.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %read32.i38.i, align 4
  %call.i39.i = tail call i32 %3(ptr noundef %rtwdev, i32 noundef 33792) #7
  %4 = zext i32 %call.i39.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.483)
  switch i32 %call.i39.i, label %lor.lhs.false22.i [
    i32 -353703190, label %entry.cleanup_crit_edge
    i32 -559038737, label %entry.cleanup_crit_edge268
  ]

entry.cleanup_crit_edge268:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false22.i:                                ; preds = %entry
  %and.i = and i32 %call.i39.i, 1610612736
  call void @__sanitizer_cov_trace_const_cmp4(i32 1610612736, i32 %and.i)
  %cmp23.not.i = icmp eq i32 %and.i, 1610612736
  br i1 %cmp23.not.i, label %if.end, label %lor.lhs.false22.i.cleanup_crit_edge

lor.lhs.false22.i.cleanup_crit_edge:              ; preds = %lor.lhs.false22.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false22.i
  %mac1.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 5
  %chip.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 3
  %5 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %chip.i, align 4
  %dle_mem.i = getelementptr inbounds %struct.rtw89_chip_info, ptr %6, i32 0, i32 7
  %7 = ptrtoint ptr %dle_mem.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dle_mem.i, align 4
  %arrayidx.i = getelementptr %struct.rtw89_dle_mem, ptr %8, i32 %mode
  %tobool.not.i = icmp eq ptr %arrayidx.i, null
  br i1 %tobool.not.i, label %if.end.do.end_crit_edge, label %if.end.i

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.end.i:                                         ; preds = %if.end
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %mode)
  %cmp.not.i = icmp eq i32 %10, %mode
  br i1 %cmp.not.i, label %if.end4, label %do.end.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 1
  %11 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %12, ptr noundef nonnull @.str.326) #10
  br label %do.end

do.end:                                           ; preds = %do.end.i, %if.end.do.end_crit_edge
  %dev = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 1
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.303) #10
  br label %error

if.end4:                                          ; preds = %if.end.i
  %wde_size.i = getelementptr %struct.rtw89_dle_mem, ptr %8, i32 %mode, i32 1
  %15 = ptrtoint ptr %wde_size.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %wde_size.i, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %16, align 2
  %wde_pg_size.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 5, i32 0, i32 1
  %19 = ptrtoint ptr %wde_pg_size.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %18, ptr %wde_pg_size.i, align 4
  %ple_size.i = getelementptr %struct.rtw89_dle_mem, ptr %8, i32 %mode, i32 2
  %20 = ptrtoint ptr %ple_size.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ple_size.i, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %21, align 2
  %ple_pg_size.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 5, i32 0, i32 2
  %24 = ptrtoint ptr %ple_pg_size.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %23, ptr %ple_pg_size.i, align 2
  %25 = ptrtoint ptr %mac1.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %mode, ptr %mac1.i, align 4
  %ple_min_qt.i = getelementptr %struct.rtw89_dle_mem, ptr %8, i32 %mode, i32 5
  %26 = ptrtoint ptr %ple_min_qt.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ple_min_qt.i, align 4
  %cma0_dma.i = getelementptr inbounds %struct.rtw89_ple_quota, ptr %27, i32 0, i32 6
  %28 = ptrtoint ptr %cma0_dma.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %cma0_dma.i, align 2
  %c0_rx_qta.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 5, i32 0, i32 3
  %30 = ptrtoint ptr %c0_rx_qta.i to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %29, ptr %c0_rx_qta.i, align 4
  %31 = load ptr, ptr %ple_min_qt.i, align 4
  %cma1_dma.i = getelementptr inbounds %struct.rtw89_ple_quota, ptr %31, i32 0, i32 7
  %32 = ptrtoint ptr %cma1_dma.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %cma1_dma.i, align 2
  %c1_rx_qta.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 5, i32 0, i32 4
  %34 = ptrtoint ptr %c1_rx_qta.i to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %33, ptr %c1_rx_qta.i, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %mode)
  %cmp = icmp eq i32 %mode, 1
  br i1 %cmp, label %if.then5, label %if.end4.if.end14_crit_edge

if.end4.if.end14_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

if.then5:                                         ; preds = %if.end4
  %35 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %chip.i, align 4
  %dle_mem.i181 = getelementptr inbounds %struct.rtw89_chip_info, ptr %36, i32 0, i32 7
  %37 = ptrtoint ptr %dle_mem.i181 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dle_mem.i181, align 4
  %arrayidx.i182 = getelementptr %struct.rtw89_dle_mem, ptr %38, i32 %ext_mode
  %tobool.not.i183 = icmp eq ptr %arrayidx.i182, null
  br i1 %tobool.not.i183, label %if.then5.do.end11_crit_edge, label %if.end.i185

if.then5.do.end11_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end11

if.end.i185:                                      ; preds = %if.then5
  %39 = ptrtoint ptr %arrayidx.i182 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx.i182, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %40, i32 %ext_mode)
  %cmp.not.i184 = icmp eq i32 %40, %ext_mode
  br i1 %cmp.not.i184, label %if.end13, label %do.end.i187

do.end.i187:                                      ; preds = %if.end.i185
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i186 = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 1
  %41 = ptrtoint ptr %dev.i186 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev.i186, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %42, ptr noundef nonnull @.str.326) #10
  br label %do.end11

do.end11:                                         ; preds = %do.end.i187, %if.then5.do.end11_crit_edge
  %dev12 = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 1
  %43 = ptrtoint ptr %dev12 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev12, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %44, ptr noundef nonnull @.str.306, i32 noundef %ext_mode) #10
  br label %error

if.end13:                                         ; preds = %if.end.i185
  call void @__sanitizer_cov_trace_pc() #9
  %wde_size.i188 = getelementptr %struct.rtw89_dle_mem, ptr %38, i32 %ext_mode, i32 1
  %45 = ptrtoint ptr %wde_size.i188 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %wde_size.i188, align 4
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %46, align 2
  %49 = ptrtoint ptr %wde_pg_size.i to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 %48, ptr %wde_pg_size.i, align 4
  %ple_size.i190 = getelementptr %struct.rtw89_dle_mem, ptr %38, i32 %ext_mode, i32 2
  %50 = ptrtoint ptr %ple_size.i190 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %ple_size.i190, align 4
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %51, align 2
  %54 = ptrtoint ptr %ple_pg_size.i to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 %53, ptr %ple_pg_size.i, align 2
  %55 = ptrtoint ptr %mac1.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %ext_mode, ptr %mac1.i, align 4
  %ple_min_qt.i192 = getelementptr %struct.rtw89_dle_mem, ptr %38, i32 %ext_mode, i32 5
  %56 = ptrtoint ptr %ple_min_qt.i192 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %ple_min_qt.i192, align 4
  %cma0_dma.i193 = getelementptr inbounds %struct.rtw89_ple_quota, ptr %57, i32 0, i32 6
  %58 = ptrtoint ptr %cma0_dma.i193 to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %cma0_dma.i193, align 2
  %60 = ptrtoint ptr %c0_rx_qta.i to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 %59, ptr %c0_rx_qta.i, align 4
  %61 = load ptr, ptr %ple_min_qt.i192, align 4
  %cma1_dma.i195 = getelementptr inbounds %struct.rtw89_ple_quota, ptr %61, i32 0, i32 7
  %62 = ptrtoint ptr %cma1_dma.i195 to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %cma1_dma.i195, align 2
  %64 = ptrtoint ptr %c1_rx_qta.i to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 %63, ptr %c1_rx_qta.i, align 2
  %wde_min_qt = getelementptr %struct.rtw89_dle_mem, ptr %38, i32 %ext_mode, i32 3
  %65 = ptrtoint ptr %wde_min_qt to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %wde_min_qt, align 4
  %wcpu = getelementptr inbounds %struct.rtw89_wde_quota, ptr %66, i32 0, i32 1
  %67 = ptrtoint ptr %wcpu to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %wcpu, align 2
  br label %if.end14

if.end14:                                         ; preds = %if.end13, %if.end4.if.end14_crit_edge
  %ext_wde_min_qt_wcpu.0 = phi i16 [ %68, %if.end13 ], [ -1, %if.end4.if.end14_crit_edge ]
  %69 = ptrtoint ptr %wde_size.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %wde_size.i, align 4
  %71 = ptrtoint ptr %ple_size.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %ple_size.i, align 4
  %73 = ptrtoint ptr %70 to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %70, align 2
  %conv.i = zext i16 %74 to i32
  %lnk_pge_num.i = getelementptr inbounds %struct.rtw89_dle_size, ptr %70, i32 0, i32 1
  %75 = ptrtoint ptr %lnk_pge_num.i to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %lnk_pge_num.i, align 2
  %conv1.i = zext i16 %76 to i32
  %unlnk_pge_num.i = getelementptr inbounds %struct.rtw89_dle_size, ptr %70, i32 0, i32 2
  %77 = ptrtoint ptr %unlnk_pge_num.i to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %unlnk_pge_num.i, align 2
  %conv2.i = zext i16 %78 to i32
  %add.i = add nuw nsw i32 %conv2.i, %conv1.i
  %mul.i = mul i32 %add.i, %conv.i
  %79 = ptrtoint ptr %72 to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %72, align 2
  %conv4.i = zext i16 %80 to i32
  %lnk_pge_num5.i = getelementptr inbounds %struct.rtw89_dle_size, ptr %72, i32 0, i32 1
  %81 = ptrtoint ptr %lnk_pge_num5.i to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %lnk_pge_num5.i, align 2
  %conv6.i = zext i16 %82 to i32
  %unlnk_pge_num7.i = getelementptr inbounds %struct.rtw89_dle_size, ptr %72, i32 0, i32 2
  %83 = ptrtoint ptr %unlnk_pge_num7.i to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %unlnk_pge_num7.i, align 2
  %conv8.i = zext i16 %84 to i32
  %add9.i = add nuw nsw i32 %conv8.i, %conv6.i
  %mul10.i = mul i32 %add9.i, %conv4.i
  %add11.i = add i32 %mul10.i, %mul.i
  %85 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %chip.i, align 4
  %fifo_size = getelementptr inbounds %struct.rtw89_chip_info, ptr %86, i32 0, i32 3
  %87 = ptrtoint ptr %fifo_size to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %fifo_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add11.i, i32 %88)
  %cmp16.not = icmp eq i32 %add11.i, %88
  br i1 %cmp16.not, label %if.end22, label %do.end20

do.end20:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  %dev21 = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 1
  %89 = ptrtoint ptr %dev21 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %dev21, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %90, ptr noundef nonnull @.str.309) #10
  br label %error

if.end22:                                         ; preds = %if.end14
  %91 = ptrtoint ptr %hci.i37.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %hci.i37.i, align 8
  %read32.i.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %92, i32 0, i32 9
  %93 = ptrtoint ptr %read32.i.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %read32.i.i.i, align 4
  %call.i.i.i = tail call i32 %94(ptr noundef %rtwdev, i32 noundef 33792) #7
  %and.i.i = and i32 %call.i.i.i, -75497473
  %95 = ptrtoint ptr %hci.i37.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %hci.i37.i, align 8
  %write32.i.i5.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %96, i32 0, i32 12
  %97 = ptrtoint ptr %write32.i.i5.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %write32.i.i5.i, align 4
  tail call void %98(ptr noundef %rtwdev, i32 noundef 33792, i32 noundef %and.i.i) #7
  %99 = ptrtoint ptr %hci.i37.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %hci.i37.i, align 8
  %read32.i.i.i201 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %100, i32 0, i32 9
  %101 = ptrtoint ptr %read32.i.i.i201 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %read32.i.i.i201, align 4
  %call.i.i.i202 = tail call i32 %102(ptr noundef %rtwdev, i32 noundef 33796) #7
  %or.i.i = or i32 %call.i.i.i202, 75497472
  %103 = ptrtoint ptr %hci.i37.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %hci.i37.i, align 8
  %write32.i.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %104, i32 0, i32 12
  %105 = ptrtoint ptr %write32.i.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %write32.i.i.i, align 4
  tail call void %106(ptr noundef %rtwdev, i32 noundef 33796, i32 noundef %or.i.i) #7
  %107 = ptrtoint ptr %hci.i37.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %hci.i37.i, align 8
  %read32.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %108, i32 0, i32 9
  %109 = ptrtoint ptr %read32.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %read32.i.i, align 4
  %call.i.i = tail call i32 %110(ptr noundef %rtwdev, i32 noundef 35848) #7
  %111 = ptrtoint ptr %wde_size.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %wde_size.i, align 4
  %113 = ptrtoint ptr %112 to i32
  call void @__asan_load2_noabort(i32 %113)
  %114 = load i16, ptr %112, align 2
  %115 = zext i16 %114 to i64
  call void @__sanitizer_cov_trace_switch(i64 %115, ptr @__sancov_gen_cov_switch_values.484)
  switch i16 %114, label %sw.bb.i [
    i16 256, label %if.end22.do.end28_crit_edge
    i16 128, label %sw.bb2.i
  ]

if.end22.do.end28_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end28

sw.bb.i:                                          ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  %and.i.i204 = and i32 %call.i.i, -4
  br label %u32_replace_bits.exit.i

sw.bb2.i:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  %and.i62.i = and i32 %call.i.i, -4
  %or.i.i205 = or i32 %and.i62.i, 1
  br label %u32_replace_bits.exit.i

u32_replace_bits.exit.i:                          ; preds = %sw.bb2.i, %sw.bb.i
  %val.0.i = phi i32 [ %and.i.i204, %sw.bb.i ], [ %or.i.i205, %sw.bb2.i ]
  %lnk_pge_num.i208 = getelementptr inbounds %struct.rtw89_dle_size, ptr %112, i32 0, i32 1
  %116 = ptrtoint ptr %lnk_pge_num.i208 to i32
  call void @__asan_load2_noabort(i32 %116)
  %117 = load i16, ptr %lnk_pge_num.i208, align 2
  %and.i72.i = and i32 %val.0.i, -536821505
  %118 = and i16 %117, 8191
  %and528.i.i73.i = zext i16 %118 to i32
  %mul.i.i74.i = shl nuw nsw i32 %and528.i.i73.i, 16
  %or.i76.i = or i32 %mul.i.i74.i, %and.i72.i
  %119 = ptrtoint ptr %hci.i37.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %hci.i37.i, align 8
  %write32.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %120, i32 0, i32 12
  %121 = ptrtoint ptr %write32.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %write32.i.i, align 4
  tail call void %122(ptr noundef %rtwdev, i32 noundef 35848, i32 noundef %or.i76.i) #7
  %123 = ptrtoint ptr %hci.i37.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %hci.i37.i, align 8
  %read32.i133.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %124, i32 0, i32 9
  %125 = ptrtoint ptr %read32.i133.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %read32.i133.i, align 4
  %call.i134.i = tail call i32 %126(ptr noundef %rtwdev, i32 noundef 36872) #7
  %127 = ptrtoint ptr %lnk_pge_num.i208 to i32
  call void @__asan_load2_noabort(i32 %127)
  %128 = load i16, ptr %lnk_pge_num.i208, align 2
  %conv11.i = zext i16 %128 to i32
  %unlnk_pge_num.i209 = getelementptr inbounds %struct.rtw89_dle_size, ptr %112, i32 0, i32 2
  %129 = ptrtoint ptr %unlnk_pge_num.i209 to i32
  call void @__asan_load2_noabort(i32 %129)
  %130 = load i16, ptr %unlnk_pge_num.i209, align 2
  %conv12.i = zext i16 %130 to i32
  %add.i210 = add nuw nsw i32 %conv12.i, %conv11.i
  %131 = ptrtoint ptr %112 to i32
  call void @__asan_load2_noabort(i32 %131)
  %132 = load i16, ptr %112, align 2
  %conv14.i = zext i16 %132 to i32
  %mul.i211 = mul i32 %add.i210, %conv14.i
  %div.i = sdiv i32 %mul.i211, 8192
  %133 = ptrtoint ptr %ple_size.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %ple_size.i, align 4
  %135 = ptrtoint ptr %134 to i32
  call void @__asan_load2_noabort(i32 %135)
  %136 = load i16, ptr %134, align 2
  %137 = zext i16 %136 to i64
  call void @__sanitizer_cov_trace_switch(i64 %137, ptr @__sancov_gen_cov_switch_values.485)
  switch i16 %136, label %u32_replace_bits.exit.i.do.end28_crit_edge [
    i16 256, label %sw.bb26.i
    i16 128, label %u32_replace_bits.exit.i.if.end30_crit_edge
  ]

u32_replace_bits.exit.i.if.end30_crit_edge:       ; preds = %u32_replace_bits.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30

u32_replace_bits.exit.i.do.end28_crit_edge:       ; preds = %u32_replace_bits.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end28

sw.bb26.i:                                        ; preds = %u32_replace_bits.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30

do.end28:                                         ; preds = %u32_replace_bits.exit.i.do.end28_crit_edge, %if.end22.do.end28_crit_edge
  %.str.331.sink = phi ptr [ @.str.328, %if.end22.do.end28_crit_edge ], [ @.str.331, %u32_replace_bits.exit.i.do.end28_crit_edge ]
  %dev23.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 1
  %138 = ptrtoint ptr %dev23.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %dev23.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %139, ptr noundef nonnull %.str.331.sink) #10
  %dev29 = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 1
  %140 = ptrtoint ptr %dev29 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %dev29, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %141, ptr noundef nonnull @.str.312) #10
  br label %error

if.end30:                                         ; preds = %sw.bb26.i, %u32_replace_bits.exit.i.if.end30_crit_edge
  %.sink.i = phi i32 [ 2, %sw.bb26.i ], [ 1, %u32_replace_bits.exit.i.if.end30_crit_edge ]
  %lnk_pge_num31.i = getelementptr inbounds %struct.rtw89_dle_size, ptr %134, i32 0, i32 1
  %142 = ptrtoint ptr %lnk_pge_num31.i to i32
  call void @__asan_load2_noabort(i32 %142)
  %143 = load i16, ptr %lnk_pge_num31.i, align 2
  %144 = shl nsw i32 %div.i, 8
  %145 = and i32 %144, 16128
  %and.i92.i = and i32 %call.i134.i, -536821508
  %or.i96.i = or i32 %and.i92.i, %.sink.i
  %or.i112.i = or i32 %145, %or.i96.i
  %146 = and i16 %143, 8191
  %and528.i.i126.i = zext i16 %146 to i32
  %mul.i.i127.i = shl nuw nsw i32 %and528.i.i126.i, 16
  %or.i129.i = or i32 %mul.i.i127.i, %or.i112.i
  %147 = ptrtoint ptr %hci.i37.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %hci.i37.i, align 8
  %write32.i136.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %148, i32 0, i32 12
  %149 = ptrtoint ptr %write32.i136.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %write32.i136.i, align 4
  tail call void %150(ptr noundef %rtwdev, i32 noundef 36872, i32 noundef %or.i129.i) #7
  tail call fastcc void @dle_quota_cfg(ptr noundef %rtwdev, ptr noundef nonnull %arrayidx.i, i16 noundef zeroext %ext_wde_min_qt_wcpu.0)
  %151 = ptrtoint ptr %hci.i37.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %hci.i37.i, align 8
  %read32.i.i.i215 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %152, i32 0, i32 9
  %153 = ptrtoint ptr %read32.i.i.i215 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %read32.i.i.i215, align 4
  %call.i.i.i216 = tail call i32 %154(ptr noundef %rtwdev, i32 noundef 33792) #7
  %and.i.sink.i = or i32 %call.i.i.i216, 75497472
  %155 = ptrtoint ptr %hci.i37.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %hci.i37.i, align 8
  %write32.i.i5.i218 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %156, i32 0, i32 12
  %157 = ptrtoint ptr %write32.i.i5.i218 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %write32.i.i5.i218, align 4
  tail call void %158(ptr noundef %rtwdev, i32 noundef 33792, i32 noundef %and.i.sink.i) #7
  %call31 = tail call i64 @ktime_get() #7
  %add.i219 = add i64 %call31, 2000000
  tail call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 1399) #7
  %159 = ptrtoint ptr %hci.i37.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %hci.i37.i, align 8
  %read32.i257 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %160, i32 0, i32 9
  %161 = ptrtoint ptr %read32.i257 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %read32.i257, align 4
  %call.i258 = tail call i32 %162(ptr noundef %rtwdev, i32 noundef 36096) #7
  %and259 = and i32 %call.i258, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and259)
  %cmp46260 = icmp eq i32 %and259, 3
  br i1 %cmp46260, label %if.end30.for.end_crit_edge, label %if.end30.land.lhs.true_crit_edge

if.end30.land.lhs.true_crit_edge:                 ; preds = %if.end30
  br label %land.lhs.true

if.end30.for.end_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

land.lhs.true:                                    ; preds = %if.then57.land.lhs.true_crit_edge, %if.end30.land.lhs.true_crit_edge
  %call50 = tail call i64 @ktime_get() #7
  call void @__sanitizer_cov_trace_cmp8(i64 %call50, i64 %add.i219)
  %cmp3.i = icmp sgt i64 %call50, %add.i219
  br i1 %cmp3.i, label %if.then53, label %if.then57

if.then53:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %163 = ptrtoint ptr %hci.i37.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %hci.i37.i, align 8
  %read32.i222 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %164, i32 0, i32 9
  %165 = ptrtoint ptr %read32.i222 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %read32.i222, align 4
  %call.i223 = tail call i32 %166(ptr noundef %rtwdev, i32 noundef 36096) #7
  br label %for.end

if.then57:                                        ; preds = %land.lhs.true
  tail call void @usleep_range_state(i32 noundef 1, i32 noundef 1, i32 noundef 2) #7
  %167 = ptrtoint ptr %hci.i37.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %hci.i37.i, align 8
  %read32.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %168, i32 0, i32 9
  %169 = ptrtoint ptr %read32.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %read32.i, align 4
  %call.i = tail call i32 %170(ptr noundef %rtwdev, i32 noundef 36096) #7
  %and = and i32 %call.i, 3
  %cmp46 = icmp eq i32 %and, 3
  br i1 %cmp46, label %if.then57.for.end_crit_edge, label %if.then57.land.lhs.true_crit_edge

if.then57.land.lhs.true_crit_edge:                ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true

if.then57.for.end_crit_edge:                      ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %if.then57.for.end_crit_edge, %if.then53, %if.end30.for.end_crit_edge
  %ini.0 = phi i32 [ %call.i223, %if.then53 ], [ %call.i258, %if.end30.for.end_crit_edge ], [ %call.i, %if.then57.for.end_crit_edge ]
  %and59 = and i32 %ini.0, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and59)
  %cmp60 = icmp eq i32 %and59, 3
  br i1 %cmp60, label %if.end67, label %do.end65

do.end65:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %dev66 = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 1
  %171 = ptrtoint ptr %dev66 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %dev66, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %172, ptr noundef nonnull @.str.315) #10
  br label %cleanup

if.end67:                                         ; preds = %for.end
  %call71 = tail call i64 @ktime_get() #7
  %add.i224 = add i64 %call71, 2000000
  tail call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 1407) #7
  %173 = ptrtoint ptr %hci.i37.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %hci.i37.i, align 8
  %read32.i226261 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %174, i32 0, i32 9
  %175 = ptrtoint ptr %read32.i226261 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %read32.i226261, align 4
  %call.i227262 = tail call i32 %176(ptr noundef %rtwdev, i32 noundef 37120) #7
  %and87263 = and i32 %call.i227262, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and87263)
  %cmp88264 = icmp eq i32 %and87263, 3
  br i1 %cmp88264, label %if.end67.cleanup_crit_edge, label %if.end67.land.lhs.true92_crit_edge

if.end67.land.lhs.true92_crit_edge:               ; preds = %if.end67
  br label %land.lhs.true92

if.end67.cleanup_crit_edge:                       ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true92:                                  ; preds = %if.then100.land.lhs.true92_crit_edge, %if.end67.land.lhs.true92_crit_edge
  %call93 = tail call i64 @ktime_get() #7
  call void @__sanitizer_cov_trace_cmp8(i64 %call93, i64 %add.i224)
  %cmp3.i229 = icmp sgt i64 %call93, %add.i224
  br i1 %cmp3.i229, label %for.end104, label %if.then100

if.then100:                                       ; preds = %land.lhs.true92
  tail call void @usleep_range_state(i32 noundef 1, i32 noundef 1, i32 noundef 2) #7
  %177 = ptrtoint ptr %hci.i37.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %hci.i37.i, align 8
  %read32.i226 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %178, i32 0, i32 9
  %179 = ptrtoint ptr %read32.i226 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %read32.i226, align 4
  %call.i227 = tail call i32 %180(ptr noundef %rtwdev, i32 noundef 37120) #7
  %and87 = and i32 %call.i227, 3
  %cmp88 = icmp eq i32 %and87, 3
  br i1 %cmp88, label %if.then100.cleanup_crit_edge, label %if.then100.land.lhs.true92_crit_edge

if.then100.land.lhs.true92_crit_edge:             ; preds = %if.then100
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true92

if.then100.cleanup_crit_edge:                     ; preds = %if.then100
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end104:                                       ; preds = %land.lhs.true92
  %181 = ptrtoint ptr %hci.i37.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %hci.i37.i, align 8
  %read32.i233 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %182, i32 0, i32 9
  %183 = ptrtoint ptr %read32.i233 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %read32.i233, align 4
  %call.i234 = tail call i32 %184(ptr noundef %rtwdev, i32 noundef 37120) #7
  %.pre = and i32 %call.i234, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pre)
  %cmp107 = icmp eq i32 %.pre, 3
  br i1 %cmp107, label %for.end104.cleanup_crit_edge, label %do.end113

for.end104.cleanup_crit_edge:                     ; preds = %for.end104
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end113:                                        ; preds = %for.end104
  call void @__sanitizer_cov_trace_pc() #9
  %dev114 = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 1
  %185 = ptrtoint ptr %dev114 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %dev114, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %186, ptr noundef nonnull @.str.318) #10
  br label %cleanup

error:                                            ; preds = %do.end28, %do.end20, %do.end11, %do.end
  %187 = ptrtoint ptr %hci.i37.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %hci.i37.i, align 8
  %read32.i.i.i236 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %188, i32 0, i32 9
  %189 = ptrtoint ptr %read32.i.i.i236 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %read32.i.i.i236, align 4
  %call.i.i.i237 = tail call i32 %190(ptr noundef %rtwdev, i32 noundef 33792) #7
  %and.i.i238 = and i32 %call.i.i.i237, -75497473
  %191 = ptrtoint ptr %hci.i37.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %hci.i37.i, align 8
  %write32.i.i5.i239 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %192, i32 0, i32 12
  %193 = ptrtoint ptr %write32.i.i5.i239 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %write32.i.i5.i239, align 4
  tail call void %194(ptr noundef %rtwdev, i32 noundef 33792, i32 noundef %and.i.i238) #7
  %dev119 = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 1
  %195 = ptrtoint ptr %dev119 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %dev119, align 4
  %197 = ptrtoint ptr %hci.i37.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %hci.i37.i, align 8
  %read32.i241 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %198, i32 0, i32 9
  %199 = ptrtoint ptr %read32.i241 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %read32.i241, align 4
  %call.i242 = tail call i32 %200(ptr noundef %rtwdev, i32 noundef 36096) #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %196, ptr noundef nonnull @.str.321, i32 noundef %call.i242) #10
  %201 = ptrtoint ptr %dev119 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %dev119, align 4
  %203 = ptrtoint ptr %hci.i37.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %hci.i37.i, align 8
  %read32.i244 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %204, i32 0, i32 9
  %205 = ptrtoint ptr %read32.i244 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %read32.i244, align 4
  %call.i245 = tail call i32 %206(ptr noundef %rtwdev, i32 noundef 37120) #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %202, ptr noundef nonnull @.str.324, i32 noundef %call.i245) #10
  br label %cleanup

cleanup:                                          ; preds = %error, %do.end113, %for.end104.cleanup_crit_edge, %if.then100.cleanup_crit_edge, %if.end67.cleanup_crit_edge, %do.end65, %lor.lhs.false22.i.cleanup_crit_edge, %entry.cleanup_crit_edge, %entry.cleanup_crit_edge268
  %retval.0 = phi i32 [ -22, %error ], [ -110, %do.end65 ], [ -110, %do.end113 ], [ 0, %for.end104.cleanup_crit_edge ], [ -14, %entry.cleanup_crit_edge ], [ -14, %entry.cleanup_crit_edge268 ], [ -14, %lor.lhs.false22.i.cleanup_crit_edge ], [ 0, %if.end67.cleanup_crit_edge ], [ 0, %if.then100.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @hfc_init(ptr noundef %rtwdev, i1 noundef zeroext %en) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %type.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 7, i32 1
  %0 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cond.i = icmp eq i32 %1, 0
  br i1 %cond.i, label %sw.bb.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb.i:                                          ; preds = %entry
  %hfc_param.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 5, i32 1
  %mac.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 5
  %2 = ptrtoint ptr %mac.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mac.i, align 16
  %chip.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 3
  %4 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %chip.i, align 4
  %hfc_param_ini.i = getelementptr inbounds %struct.rtw89_chip_info, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %hfc_param_ini.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hfc_param_ini.i, align 4
  %idxprom.i = and i32 %3, 255
  %arrayidx.i = getelementptr %struct.rtw89_hfc_param_ini, ptr %7, i32 %idxprom.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %param_ini.sroa.0.0.copyload.i = load ptr, ptr %arrayidx.i, align 4
  %param_ini.sroa.6.0.arrayidx.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx.i, i32 4
  %9 = ptrtoint ptr %param_ini.sroa.6.0.arrayidx.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %param_ini.sroa.6.0.copyload.i = load ptr, ptr %param_ini.sroa.6.0.arrayidx.sroa_idx.i, align 4
  %param_ini.sroa.8.0.arrayidx.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx.i, i32 8
  %10 = ptrtoint ptr %param_ini.sroa.8.0.arrayidx.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %param_ini.sroa.8.0.copyload.i = load ptr, ptr %param_ini.sroa.8.0.arrayidx.sroa_idx.i, align 4
  %param_ini.sroa.10.0.arrayidx.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx.i, i32 12
  %11 = ptrtoint ptr %param_ini.sroa.10.0.arrayidx.sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %param_ini.sroa.10.0.copyload.i = load i8, ptr %param_ini.sroa.10.0.arrayidx.sroa_idx.i, align 4
  %12 = ptrtoint ptr %hfc_param.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %hfc_param.i, align 4
  %tobool.not.i = icmp eq ptr %param_ini.sroa.6.0.copyload.i, null
  br i1 %tobool.not.i, label %sw.bb.i.if.end.i_crit_edge, label %if.then.i

sw.bb.i.if.end.i_crit_edge:                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i:                                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  %pub_cfg3.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 5, i32 1, i32 5
  %13 = ptrtoint ptr %param_ini.sroa.6.0.copyload.i to i32
  call void @__asan_loadN_noabort(i32 %13, i32 8)
  %14 = load i64, ptr %param_ini.sroa.6.0.copyload.i, align 2
  %15 = ptrtoint ptr %pub_cfg3.i to i32
  call void @__asan_storeN_noabort(i32 %15, i32 8)
  store i64 %14, ptr %pub_cfg3.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %sw.bb.i.if.end.i_crit_edge
  %tobool5.not.i = icmp eq ptr %param_ini.sroa.8.0.copyload.i, null
  br i1 %tobool5.not.i, label %if.end.i.if.end11.i_crit_edge, label %if.then6.i

if.end.i.if.end11.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11.i

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %prec_cfg7.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 5, i32 1, i32 7
  %16 = call ptr @memcpy(ptr %prec_cfg7.i, ptr %param_ini.sroa.8.0.copyload.i, i32 12)
  %wp_ch07_prec.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 5, i32 1, i32 7, i32 2
  %17 = ptrtoint ptr %wp_ch07_prec.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %wp_ch07_prec.i, align 4
  %conv10.i = zext i16 %18 to i32
  %mul.i = shl nuw nsw i32 %conv10.i, 6
  %sw_amsdu_max_size.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 4, i32 8
  %19 = ptrtoint ptr %sw_amsdu_max_size.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %mul.i, ptr %sw_amsdu_max_size.i, align 16
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.then6.i, %if.end.i.if.end11.i_crit_edge
  %tobool12.not.i = icmp eq ptr %param_ini.sroa.0.0.copyload.i, null
  br i1 %tobool12.not.i, label %if.end11.i.if.end5_crit_edge, label %if.then13.i

if.end11.i.if.end5_crit_edge:                     ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

if.then13.i:                                      ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #9
  %ch_cfg15.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 5, i32 1, i32 3
  %20 = ptrtoint ptr %ch_cfg15.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %param_ini.sroa.0.0.copyload.i, ptr %ch_cfg15.i, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then13.i, %if.end11.i.if.end5_crit_edge
  %ch_info.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 5, i32 1, i32 4
  %21 = call ptr @memset(ptr %ch_info.i, i32 0, i32 52)
  %pub_info.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 5, i32 1, i32 6
  %22 = call ptr @memset(ptr %pub_info.i, i32 0, i32 12)
  %mode17.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 5, i32 1, i32 2
  %23 = ptrtoint ptr %mode17.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %param_ini.sroa.10.0.copyload.i, ptr %mode17.i, align 2
  %hci.i37.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 7
  %24 = ptrtoint ptr %hci.i37.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %hci.i37.i, align 8
  %read32.i38.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %25, i32 0, i32 9
  %26 = ptrtoint ptr %read32.i38.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %read32.i38.i, align 4
  %call.i39.i = tail call i32 %27(ptr noundef %rtwdev, i32 noundef 33792) #7
  %28 = zext i32 %call.i39.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.486)
  switch i32 %call.i39.i, label %lor.lhs.false22.i [
    i32 -353703190, label %if.end5.cleanup_crit_edge
    i32 -559038737, label %if.end5.cleanup_crit_edge76
  ]

if.end5.cleanup_crit_edge76:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false22.i:                                ; preds = %if.end5
  %and.i = and i32 %call.i39.i, 1610612736
  call void @__sanitizer_cov_trace_const_cmp4(i32 1610612736, i32 %and.i)
  %cmp23.not.i = icmp eq i32 %and.i, 1610612736
  br i1 %cmp23.not.i, label %if.end9, label %lor.lhs.false22.i.cleanup_crit_edge

lor.lhs.false22.i.cleanup_crit_edge:              ; preds = %lor.lhs.false22.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end9:                                          ; preds = %lor.lhs.false22.i
  %29 = ptrtoint ptr %hci.i37.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %hci.i37.i, align 8
  %read32.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %30, i32 0, i32 9
  %31 = ptrtoint ptr %read32.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %read32.i.i, align 4
  %call.i.i = tail call i32 %32(ptr noundef %rtwdev, i32 noundef 35328) #7
  %33 = ptrtoint ptr %hfc_param.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 0, ptr %hfc_param.i, align 4
  %h2c_en5.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 5, i32 1, i32 1
  %34 = ptrtoint ptr %h2c_en5.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 0, ptr %h2c_en5.i, align 1
  %and.i3 = and i32 %call.i.i, -10
  %35 = ptrtoint ptr %hci.i37.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %hci.i37.i, align 8
  %write32.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %36, i32 0, i32 12
  %37 = ptrtoint ptr %write32.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %write32.i.i, align 4
  tail call void %38(ptr noundef %rtwdev, i32 noundef 35328, i32 noundef %and.i3) #7
  br i1 %en, label %for.cond.preheader, label %hfc_h2c_cfg.exit

for.cond.preheader:                               ; preds = %if.end9
  %ch_cfg.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 5, i32 1, i32 3
  %prec_cfg3.i.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 5, i32 1, i32 7
  %pub_max.i.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 5, i32 1, i32 5, i32 2
  br label %for.body

hfc_h2c_cfg.exit:                                 ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  %h2c_prec.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 5, i32 1, i32 7, i32 1
  %39 = ptrtoint ptr %h2c_prec.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %h2c_prec.i, align 2
  %41 = and i16 %40, 511
  %and528.i.i = zext i16 %41 to i32
  %mul.i.i = shl nuw nsw i32 %and528.i.i, 16
  %42 = ptrtoint ptr %hci.i37.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %hci.i37.i, align 8
  %write32.i.i5 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %43, i32 0, i32 12
  %44 = ptrtoint ptr %write32.i.i5 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %write32.i.i5, align 4
  tail call void %45(ptr noundef %rtwdev, i32 noundef 35332, i32 noundef %mul.i.i) #7
  %h2c_full_cond.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 5, i32 1, i32 7, i32 5
  %46 = ptrtoint ptr %h2c_full_cond.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %h2c_full_cond.i, align 1
  %conv2.i = zext i8 %47 to i32
  %48 = ptrtoint ptr %hci.i37.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %hci.i37.i, align 8
  %read32.i.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %49, i32 0, i32 9
  %50 = ptrtoint ptr %read32.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %read32.i.i.i, align 4
  %call.i.i.i = tail call i32 %51(ptr noundef %rtwdev, i32 noundef 35328) #7
  %and21.i.i = and i32 %call.i.i.i, -3073
  %shl.i.i = shl nuw nsw i32 %conv2.i, 10
  %and22.i.i = and i32 %shl.i.i, 3072
  %or.i.i = or i32 %and21.i.i, %and22.i.i
  %52 = ptrtoint ptr %hci.i37.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %hci.i37.i, align 8
  %write32.i.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %53, i32 0, i32 12
  %54 = ptrtoint ptr %write32.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %write32.i.i.i, align 4
  tail call void %55(ptr noundef %rtwdev, i32 noundef 35328, i32 noundef %or.i.i) #7
  %56 = ptrtoint ptr %hci.i37.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %hci.i37.i, align 8
  %read32.i.i8 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %57, i32 0, i32 9
  %58 = ptrtoint ptr %read32.i.i8 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %read32.i.i8, align 4
  %call.i.i9 = tail call i32 %59(ptr noundef %rtwdev, i32 noundef 35328) #7
  %60 = ptrtoint ptr %hfc_param.i to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 0, ptr %hfc_param.i, align 4
  %61 = ptrtoint ptr %h2c_en5.i to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 1, ptr %h2c_en5.i, align 1
  %and.i11 = and i32 %call.i.i9, -10
  %cond14.i = or i32 %and.i11, 8
  %62 = ptrtoint ptr %hci.i37.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %hci.i37.i, align 8
  %write32.i.i12 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %63, i32 0, i32 12
  %64 = ptrtoint ptr %write32.i.i12 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %write32.i.i12, align 4
  tail call void %65(ptr noundef %rtwdev, i32 noundef 35328, i32 noundef %cond14.i) #7
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader
  %indvars.iv = phi i32 [ 0, %for.cond.preheader ], [ %indvars.iv.next, %for.inc.for.body_crit_edge ]
  %66 = ptrtoint ptr %ch_cfg.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %ch_cfg.i, align 4
  %68 = ptrtoint ptr %hci.i37.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %hci.i37.i, align 8
  %read32.i38.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %69, i32 0, i32 9
  %70 = ptrtoint ptr %read32.i38.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %read32.i38.i.i, align 4
  %call.i39.i.i = tail call i32 %71(ptr noundef %rtwdev, i32 noundef 33792) #7
  %72 = zext i32 %call.i39.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %72, ptr @__sancov_gen_cov_switch_values.487)
  switch i32 %call.i39.i.i, label %lor.lhs.false22.i.i [
    i32 -353703190, label %for.body.cleanup_crit_edge
    i32 -559038737, label %for.body.cleanup_crit_edge77
  ]

for.body.cleanup_crit_edge77:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false22.i.i:                              ; preds = %for.body
  %and.i47.i = and i32 %call.i39.i.i, 1610612736
  call void @__sanitizer_cov_trace_const_cmp4(i32 1610612736, i32 %and.i47.i)
  %cmp23.not.i.i = icmp eq i32 %and.i47.i, 1610612736
  br i1 %cmp23.not.i.i, label %if.end.i.i, label %lor.lhs.false22.i.i.cleanup_crit_edge

lor.lhs.false22.i.i.cleanup_crit_edge:            ; preds = %lor.lhs.false22.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i.i:                                       ; preds = %lor.lhs.false22.i.i
  %73 = ptrtoint ptr %ch_cfg.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %ch_cfg.i, align 4
  %arrayidx.i.i = getelementptr %struct.rtw89_hfc_ch_cfg, ptr %74, i32 %indvars.iv
  %75 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %arrayidx.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %76)
  %tobool.not.i49.i = icmp eq i16 %76, 0
  br i1 %tobool.not.i49.i, label %if.end.i.i.lor.lhs.false.i.i_crit_edge, label %land.lhs.true.i50.i

if.end.i.i.lor.lhs.false.i.i_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false.i.i

land.lhs.true.i50.i:                              ; preds = %if.end.i.i
  %77 = ptrtoint ptr %prec_cfg3.i.i to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %prec_cfg3.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %76, i16 %78)
  %cmp11.i.i = icmp ult i16 %76, %78
  br i1 %cmp11.i.i, label %land.lhs.true.i50.i.cleanup_crit_edge, label %land.lhs.true.i50.i.lor.lhs.false.i.i_crit_edge

land.lhs.true.i50.i.lor.lhs.false.i.i_crit_edge:  ; preds = %land.lhs.true.i50.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false.i.i

land.lhs.true.i50.i.cleanup_crit_edge:            ; preds = %land.lhs.true.i50.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false.i.i:                                ; preds = %land.lhs.true.i50.i.lor.lhs.false.i.i_crit_edge, %if.end.i.i.lor.lhs.false.i.i_crit_edge
  %max.i.i = getelementptr %struct.rtw89_hfc_ch_cfg, ptr %74, i32 %indvars.iv, i32 1
  %79 = ptrtoint ptr %max.i.i to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %max.i.i, align 2
  %81 = ptrtoint ptr %pub_max.i.i to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %pub_max.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %80, i16 %82)
  %cmp17.i.i = icmp ugt i16 %80, %82
  br i1 %cmp17.i.i, label %lor.lhs.false.i.i.cleanup_crit_edge, label %if.end20.i.i

lor.lhs.false.i.i.cleanup_crit_edge:              ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end20.i.i:                                     ; preds = %lor.lhs.false.i.i
  %grp.i.i = getelementptr %struct.rtw89_hfc_ch_cfg, ptr %74, i32 %indvars.iv, i32 2
  %83 = ptrtoint ptr %grp.i.i to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %grp.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %84)
  %cmp24.i.i = icmp ugt i8 %84, 1
  br i1 %cmp24.i.i, label %if.end20.i.i.cleanup_crit_edge, label %for.inc

if.end20.i.i.cleanup_crit_edge:                   ; preds = %if.end20.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.inc:                                          ; preds = %if.end20.i.i
  %max.i = getelementptr %struct.rtw89_hfc_ch_cfg, ptr %67, i32 %indvars.iv, i32 1
  %85 = ptrtoint ptr %max.i to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %max.i, align 2
  %arrayidx.i15 = getelementptr %struct.rtw89_hfc_ch_cfg, ptr %67, i32 %indvars.iv
  %87 = ptrtoint ptr %arrayidx.i15 to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %arrayidx.i15, align 2
  %89 = and i16 %88, 8191
  %conv8.i.i = zext i16 %89 to i32
  %90 = and i16 %86, 8191
  %and528.i43.i = zext i16 %90 to i32
  %mul.i44.i = shl nuw nsw i32 %and528.i43.i, 16
  %or.i = or i32 %mul.i44.i, %conv8.i.i
  %grp.i = getelementptr %struct.rtw89_hfc_ch_cfg, ptr %67, i32 %indvars.iv, i32 2
  %91 = ptrtoint ptr %grp.i to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %grp.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %92)
  %tobool17.not.i = icmp eq i8 %92, 0
  %cond.i19 = select i1 %tobool17.not.i, i32 0, i32 -2147483648
  %or18.i = or i32 %cond.i19, %or.i
  %mul.i20 = shl nuw nsw i32 %indvars.iv, 2
  %add.i = add nuw nsw i32 %mul.i20, 35344
  %93 = ptrtoint ptr %hci.i37.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %hci.i37.i, align 8
  %write32.i.i21 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %94, i32 0, i32 12
  %95 = ptrtoint ptr %write32.i.i21 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %write32.i.i21, align 4
  tail call void %96(ptr noundef %rtwdev, i32 noundef %add.i, i32 noundef %or18.i) #7
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, 12
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc
  %pub_cfg.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 5, i32 1, i32 5
  %97 = ptrtoint ptr %hci.i37.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %hci.i37.i, align 8
  %read32.i38.i.i24 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %98, i32 0, i32 9
  %99 = ptrtoint ptr %read32.i38.i.i24 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %read32.i38.i.i24, align 4
  %call.i39.i.i25 = tail call i32 %100(ptr noundef %rtwdev, i32 noundef 33792) #7
  %101 = zext i32 %call.i39.i.i25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %101, ptr @__sancov_gen_cov_switch_values.488)
  switch i32 %call.i39.i.i25, label %lor.lhs.false22.i.i27 [
    i32 -353703190, label %for.end.cleanup_crit_edge
    i32 -559038737, label %for.end.cleanup_crit_edge78
  ]

for.end.cleanup_crit_edge78:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false22.i.i27:                            ; preds = %for.end
  %and.i44.i = and i32 %call.i39.i.i25, 1610612736
  call void @__sanitizer_cov_trace_const_cmp4(i32 1610612736, i32 %and.i44.i)
  %cmp23.not.i.i26 = icmp eq i32 %and.i44.i, 1610612736
  br i1 %cmp23.not.i.i26, label %if.end.i29, label %lor.lhs.false22.i.i27.cleanup_crit_edge

lor.lhs.false22.i.i27.cleanup_crit_edge:          ; preds = %lor.lhs.false22.i.i27
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i29:                                       ; preds = %lor.lhs.false22.i.i27
  %102 = ptrtoint ptr %pub_cfg.i to i32
  call void @__asan_load2_noabort(i32 %102)
  %103 = load i16, ptr %pub_cfg.i, align 2
  %conv.i45.i = zext i16 %103 to i32
  %grp1.i.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 5, i32 1, i32 5, i32 1
  %104 = ptrtoint ptr %grp1.i.i to i32
  call void @__asan_load2_noabort(i32 %104)
  %105 = load i16, ptr %grp1.i.i, align 2
  %conv2.i46.i = zext i16 %105 to i32
  %add.i.i = add nuw nsw i32 %conv2.i46.i, %conv.i45.i
  %106 = ptrtoint ptr %pub_max.i.i to i32
  call void @__asan_load2_noabort(i32 %106)
  %107 = load i16, ptr %pub_max.i.i, align 2
  %conv3.i.i = zext i16 %107 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %conv3.i.i)
  %cmp.not.i.i = icmp eq i32 %add.i.i, %conv3.i.i
  br i1 %cmp.not.i.i, label %u32_encode_bits.exit32.i, label %if.end.i29.cleanup_crit_edge

if.end.i29.cleanup_crit_edge:                     ; preds = %if.end.i29
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

u32_encode_bits.exit32.i:                         ; preds = %if.end.i29
  %108 = ptrtoint ptr %grp1.i.i to i32
  call void @__asan_load2_noabort(i32 %108)
  %109 = load i16, ptr %grp1.i.i, align 2
  %110 = and i16 %103, 8191
  %conv8.i.i34 = zext i16 %110 to i32
  %111 = and i16 %109, 8191
  %and528.i29.i = zext i16 %111 to i32
  %mul.i30.i = shl nuw nsw i32 %and528.i29.i, 16
  %or.i36 = or i32 %mul.i30.i, %conv8.i.i34
  %112 = ptrtoint ptr %hci.i37.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %hci.i37.i, align 8
  %write32.i.i37 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %113, i32 0, i32 12
  %114 = ptrtoint ptr %write32.i.i37 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %write32.i.i37, align 4
  tail call void %115(ptr noundef %rtwdev, i32 noundef 35472, i32 noundef %or.i36) #7
  %wp_thrd.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 5, i32 1, i32 5, i32 3
  %116 = ptrtoint ptr %wp_thrd.i to i32
  call void @__asan_load2_noabort(i32 %116)
  %117 = load i16, ptr %wp_thrd.i, align 2
  %118 = and i16 %117, 8191
  %conv8.i42.i = zext i16 %118 to i32
  %119 = ptrtoint ptr %hci.i37.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %hci.i37.i, align 8
  %write32.i48.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %120, i32 0, i32 12
  %121 = ptrtoint ptr %write32.i48.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %write32.i48.i, align 4
  tail call void %122(ptr noundef %rtwdev, i32 noundef 35492, i32 noundef %conv8.i42.i) #7
  tail call fastcc void @hfc_mix_cfg(ptr noundef %rtwdev)
  tail call fastcc void @hfc_func_en(ptr noundef %rtwdev, i1 noundef zeroext true, i1 noundef zeroext true)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %123 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %123(i32 noundef 2147480) #7
  br label %for.body37

for.body37:                                       ; preds = %for.inc42.for.body37_crit_edge, %u32_encode_bits.exit32.i
  %indvars.iv70 = phi i32 [ 0, %u32_encode_bits.exit32.i ], [ %indvars.iv.next71, %for.inc42.for.body37_crit_edge ]
  %124 = ptrtoint ptr %hci.i37.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %hci.i37.i, align 8
  %read32.i38.i.i43 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %125, i32 0, i32 9
  %126 = ptrtoint ptr %read32.i38.i.i43 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %read32.i38.i.i43, align 4
  %call.i39.i.i44 = tail call i32 %127(ptr noundef %rtwdev, i32 noundef 33792) #7
  %128 = zext i32 %call.i39.i.i44 to i64
  call void @__sanitizer_cov_trace_switch(i64 %128, ptr @__sancov_gen_cov_switch_values.489)
  switch i32 %call.i39.i.i44, label %lor.lhs.false22.i.i46 [
    i32 -353703190, label %for.body37.cleanup_crit_edge
    i32 -559038737, label %for.body37.cleanup_crit_edge79
  ]

for.body37.cleanup_crit_edge79:                   ; preds = %for.body37
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body37.cleanup_crit_edge:                     ; preds = %for.body37
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false22.i.i46:                            ; preds = %for.body37
  %and.i48.i = and i32 %call.i39.i.i44, 1610612736
  call void @__sanitizer_cov_trace_const_cmp4(i32 1610612736, i32 %and.i48.i)
  %cmp23.not.i.i45 = icmp eq i32 %and.i48.i, 1610612736
  br i1 %cmp23.not.i.i45, label %for.inc42, label %lor.lhs.false22.i.i46.cleanup_crit_edge

lor.lhs.false22.i.i46.cleanup_crit_edge:          ; preds = %lor.lhs.false22.i.i46
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.inc42:                                        ; preds = %lor.lhs.false22.i.i46
  %mul.i50 = shl nuw nsw i32 %indvars.iv70, 2
  %add.i51 = add nuw nsw i32 %mul.i50, 35408
  %129 = ptrtoint ptr %hci.i37.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %hci.i37.i, align 8
  %read32.i.i52 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %130, i32 0, i32 9
  %131 = ptrtoint ptr %read32.i.i52 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %read32.i.i52, align 4
  %call.i.i53 = tail call i32 %132(ptr noundef %rtwdev, i32 noundef %add.i51) #7
  %and.i.i = lshr i32 %call.i.i53, 16
  %133 = trunc i32 %and.i.i to i16
  %conv7.i = and i16 %133, 4095
  %arrayidx.i54 = getelementptr %struct.rtw89_hfc_ch_info, ptr %ch_info.i, i32 %indvars.iv70
  %134 = ptrtoint ptr %arrayidx.i54 to i32
  call void @__asan_store2_noabort(i32 %134)
  store i16 %conv7.i, ptr %arrayidx.i54, align 2
  %135 = trunc i32 %call.i.i53 to i16
  %conv13.i = and i16 %135, 8191
  %used.i = getelementptr %struct.rtw89_hfc_ch_info, ptr %ch_info.i, i32 %indvars.iv70, i32 1
  %136 = ptrtoint ptr %used.i to i32
  call void @__asan_store2_noabort(i32 %136)
  store i16 %conv13.i, ptr %used.i, align 2
  %indvars.iv.next71 = add nuw nsw i32 %indvars.iv70, 1
  %exitcond72.not = icmp eq i32 %indvars.iv.next71, 12
  br i1 %exitcond72.not, label %for.end44, label %for.inc42.for.body37_crit_edge

for.inc42.for.body37_crit_edge:                   ; preds = %for.inc42
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body37

for.end44:                                        ; preds = %for.inc42
  call void @__sanitizer_cov_trace_pc() #9
  %call45 = tail call fastcc i32 @hfc_upd_mix_info(ptr noundef %rtwdev)
  br label %cleanup

cleanup:                                          ; preds = %for.end44, %lor.lhs.false22.i.i46.cleanup_crit_edge, %for.body37.cleanup_crit_edge, %for.body37.cleanup_crit_edge79, %if.end.i29.cleanup_crit_edge, %lor.lhs.false22.i.i27.cleanup_crit_edge, %for.end.cleanup_crit_edge, %for.end.cleanup_crit_edge78, %if.end20.i.i.cleanup_crit_edge, %lor.lhs.false.i.i.cleanup_crit_edge, %land.lhs.true.i50.i.cleanup_crit_edge, %lor.lhs.false22.i.i.cleanup_crit_edge, %for.body.cleanup_crit_edge, %for.body.cleanup_crit_edge77, %hfc_h2c_cfg.exit, %lor.lhs.false22.i.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.end5.cleanup_crit_edge76, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call45, %for.end44 ], [ 0, %hfc_h2c_cfg.exit ], [ -22, %entry.cleanup_crit_edge ], [ -14, %if.end5.cleanup_crit_edge ], [ -14, %if.end5.cleanup_crit_edge76 ], [ -14, %lor.lhs.false22.i.cleanup_crit_edge ], [ -14, %if.end.i29.cleanup_crit_edge ], [ -14, %for.end.cleanup_crit_edge ], [ -14, %for.end.cleanup_crit_edge78 ], [ -14, %lor.lhs.false22.i.i27.cleanup_crit_edge ], [ -14, %for.body37.cleanup_crit_edge ], [ -14, %for.body37.cleanup_crit_edge79 ], [ -14, %lor.lhs.false22.i.i46.cleanup_crit_edge ], [ -14, %for.body.cleanup_crit_edge ], [ -14, %for.body.cleanup_crit_edge77 ], [ -14, %lor.lhs.false22.i.i.cleanup_crit_edge ], [ -22, %lor.lhs.false.i.i.cleanup_crit_edge ], [ -22, %land.lhs.true.i50.i.cleanup_crit_edge ], [ -22, %if.end20.i.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dle_quota_cfg(ptr noundef %rtwdev, ptr nocapture noundef readonly %cfg, i16 noundef zeroext %ext_wde_min_qt_wcpu) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %wde_min_qt = getelementptr inbounds %struct.rtw89_dle_mem, ptr %cfg, i32 0, i32 3
  %0 = ptrtoint ptr %wde_min_qt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wde_min_qt, align 4
  %wde_max_qt = getelementptr inbounds %struct.rtw89_dle_mem, ptr %cfg, i32 0, i32 4
  %2 = ptrtoint ptr %wde_max_qt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wde_max_qt, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %ext_wde_min_qt_wcpu)
  %cmp.not.i = icmp eq i16 %ext_wde_min_qt_wcpu, -1
  br i1 %cmp.not.i, label %cond.false.i, label %entry.wde_quota_cfg.exit_crit_edge

entry.wde_quota_cfg.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %wde_quota_cfg.exit

cond.false.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %wcpu.i = getelementptr inbounds %struct.rtw89_wde_quota, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %wcpu.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %wcpu.i, align 2
  br label %wde_quota_cfg.exit

wde_quota_cfg.exit:                               ; preds = %cond.false.i, %entry.wde_quota_cfg.exit_crit_edge
  %cond.in.i = phi i16 [ %5, %cond.false.i ], [ %ext_wde_min_qt_wcpu, %entry.wde_quota_cfg.exit_crit_edge ]
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %1, align 2
  %8 = and i16 %7, 4095
  %and.i = zext i16 %8 to i32
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %3, align 2
  %conv7.i = zext i16 %10 to i32
  %shl.i = shl nuw i32 %conv7.i, 16
  %and8.i = and i32 %shl.i, 268369920
  %or.i = or i32 %and8.i, %and.i
  %hci.i.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 7
  %11 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hci.i.i, align 8
  %write32.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %12, i32 0, i32 12
  %13 = ptrtoint ptr %write32.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %write32.i.i, align 4
  tail call void %14(ptr noundef %rtwdev, i32 noundef 35904, i32 noundef %or.i) #7
  %15 = and i16 %cond.in.i, 4095
  %and11.i = zext i16 %15 to i32
  %wcpu12.i = getelementptr inbounds %struct.rtw89_wde_quota, ptr %3, i32 0, i32 1
  %16 = ptrtoint ptr %wcpu12.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %wcpu12.i, align 2
  %conv13.i = zext i16 %17 to i32
  %shl14.i = shl nuw i32 %conv13.i, 16
  %and15.i = and i32 %shl14.i, 268369920
  %or16.i = or i32 %and15.i, %and11.i
  %18 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hci.i.i, align 8
  %write32.i53.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %19, i32 0, i32 12
  %20 = ptrtoint ptr %write32.i53.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %write32.i53.i, align 4
  tail call void %21(ptr noundef %rtwdev, i32 noundef 35908, i32 noundef %or16.i) #7
  %pkt_in.i = getelementptr inbounds %struct.rtw89_wde_quota, ptr %1, i32 0, i32 2
  %22 = ptrtoint ptr %pkt_in.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %pkt_in.i, align 2
  %24 = and i16 %23, 4095
  %and21.i = zext i16 %24 to i32
  %pkt_in22.i = getelementptr inbounds %struct.rtw89_wde_quota, ptr %3, i32 0, i32 2
  %25 = ptrtoint ptr %pkt_in22.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %pkt_in22.i, align 2
  %conv23.i = zext i16 %26 to i32
  %shl24.i = shl nuw i32 %conv23.i, 16
  %and25.i = and i32 %shl24.i, 268369920
  %or26.i = or i32 %and25.i, %and21.i
  %27 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %hci.i.i, align 8
  %write32.i55.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %28, i32 0, i32 12
  %29 = ptrtoint ptr %write32.i55.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %write32.i55.i, align 4
  tail call void %30(ptr noundef %rtwdev, i32 noundef 35916, i32 noundef %or26.i) #7
  %cpu_io.i = getelementptr inbounds %struct.rtw89_wde_quota, ptr %1, i32 0, i32 3
  %31 = ptrtoint ptr %cpu_io.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %cpu_io.i, align 2
  %33 = and i16 %32, 4095
  %and31.i = zext i16 %33 to i32
  %cpu_io32.i = getelementptr inbounds %struct.rtw89_wde_quota, ptr %3, i32 0, i32 3
  %34 = ptrtoint ptr %cpu_io32.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %cpu_io32.i, align 2
  %conv33.i = zext i16 %35 to i32
  %shl34.i = shl nuw i32 %conv33.i, 16
  %and35.i = and i32 %shl34.i, 268369920
  %or36.i = or i32 %and35.i, %and31.i
  %36 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %hci.i.i, align 8
  %write32.i57.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %37, i32 0, i32 12
  %38 = ptrtoint ptr %write32.i57.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %write32.i57.i, align 4
  tail call void %39(ptr noundef %rtwdev, i32 noundef 35920, i32 noundef %or36.i) #7
  %ple_min_qt = getelementptr inbounds %struct.rtw89_dle_mem, ptr %cfg, i32 0, i32 5
  %40 = ptrtoint ptr %ple_min_qt to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ple_min_qt, align 4
  %ple_max_qt = getelementptr inbounds %struct.rtw89_dle_mem, ptr %cfg, i32 0, i32 6
  %42 = ptrtoint ptr %ple_max_qt to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ple_max_qt, align 4
  %44 = ptrtoint ptr %41 to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %41, align 2
  %46 = and i16 %45, 4095
  %and.i5 = zext i16 %46 to i32
  %47 = ptrtoint ptr %43 to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %43, align 2
  %conv2.i = zext i16 %48 to i32
  %shl.i6 = shl nuw i32 %conv2.i, 16
  %and3.i = and i32 %shl.i6, 268369920
  %or.i7 = or i32 %and3.i, %and.i5
  %49 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %hci.i.i, align 8
  %write32.i.i9 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %50, i32 0, i32 12
  %51 = ptrtoint ptr %write32.i.i9 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %write32.i.i9, align 4
  tail call void %52(ptr noundef %rtwdev, i32 noundef 36928, i32 noundef %or.i7) #7
  %cma1_tx.i = getelementptr inbounds %struct.rtw89_ple_quota, ptr %41, i32 0, i32 1
  %53 = ptrtoint ptr %cma1_tx.i to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %cma1_tx.i, align 2
  %55 = and i16 %54, 4095
  %and6.i = zext i16 %55 to i32
  %cma1_tx7.i = getelementptr inbounds %struct.rtw89_ple_quota, ptr %43, i32 0, i32 1
  %56 = ptrtoint ptr %cma1_tx7.i to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %cma1_tx7.i, align 2
  %conv8.i = zext i16 %57 to i32
  %shl9.i = shl nuw i32 %conv8.i, 16
  %and10.i = and i32 %shl9.i, 268369920
  %or11.i = or i32 %and10.i, %and6.i
  %58 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %hci.i.i, align 8
  %write32.i145.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %59, i32 0, i32 12
  %60 = ptrtoint ptr %write32.i145.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %write32.i145.i, align 4
  tail call void %61(ptr noundef %rtwdev, i32 noundef 36932, i32 noundef %or11.i) #7
  %c2h.i = getelementptr inbounds %struct.rtw89_ple_quota, ptr %41, i32 0, i32 2
  %62 = ptrtoint ptr %c2h.i to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %c2h.i, align 2
  %64 = and i16 %63, 4095
  %and16.i = zext i16 %64 to i32
  %c2h17.i = getelementptr inbounds %struct.rtw89_ple_quota, ptr %43, i32 0, i32 2
  %65 = ptrtoint ptr %c2h17.i to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %c2h17.i, align 2
  %conv18.i = zext i16 %66 to i32
  %shl19.i = shl nuw i32 %conv18.i, 16
  %and20.i = and i32 %shl19.i, 268369920
  %or21.i = or i32 %and20.i, %and16.i
  %67 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %hci.i.i, align 8
  %write32.i147.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %68, i32 0, i32 12
  %69 = ptrtoint ptr %write32.i147.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %write32.i147.i, align 4
  tail call void %70(ptr noundef %rtwdev, i32 noundef 36936, i32 noundef %or21.i) #7
  %h2c.i = getelementptr inbounds %struct.rtw89_ple_quota, ptr %41, i32 0, i32 3
  %71 = ptrtoint ptr %h2c.i to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %h2c.i, align 2
  %73 = and i16 %72, 4095
  %and26.i = zext i16 %73 to i32
  %h2c27.i = getelementptr inbounds %struct.rtw89_ple_quota, ptr %43, i32 0, i32 3
  %74 = ptrtoint ptr %h2c27.i to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %h2c27.i, align 2
  %conv28.i = zext i16 %75 to i32
  %shl29.i = shl nuw i32 %conv28.i, 16
  %and30.i = and i32 %shl29.i, 268369920
  %or31.i = or i32 %and30.i, %and26.i
  %76 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %hci.i.i, align 8
  %write32.i149.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %77, i32 0, i32 12
  %78 = ptrtoint ptr %write32.i149.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %write32.i149.i, align 4
  tail call void %79(ptr noundef %rtwdev, i32 noundef 36940, i32 noundef %or31.i) #7
  %wcpu.i10 = getelementptr inbounds %struct.rtw89_ple_quota, ptr %41, i32 0, i32 4
  %80 = ptrtoint ptr %wcpu.i10 to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %wcpu.i10, align 2
  %82 = and i16 %81, 4095
  %and36.i = zext i16 %82 to i32
  %wcpu37.i = getelementptr inbounds %struct.rtw89_ple_quota, ptr %43, i32 0, i32 4
  %83 = ptrtoint ptr %wcpu37.i to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %wcpu37.i, align 2
  %conv38.i = zext i16 %84 to i32
  %shl39.i = shl nuw i32 %conv38.i, 16
  %and40.i = and i32 %shl39.i, 268369920
  %or41.i = or i32 %and40.i, %and36.i
  %85 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %hci.i.i, align 8
  %write32.i151.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %86, i32 0, i32 12
  %87 = ptrtoint ptr %write32.i151.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %write32.i151.i, align 4
  tail call void %88(ptr noundef %rtwdev, i32 noundef 36944, i32 noundef %or41.i) #7
  %mpdu_proc.i = getelementptr inbounds %struct.rtw89_ple_quota, ptr %41, i32 0, i32 5
  %89 = ptrtoint ptr %mpdu_proc.i to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %mpdu_proc.i, align 2
  %91 = and i16 %90, 4095
  %and46.i = zext i16 %91 to i32
  %mpdu_proc47.i = getelementptr inbounds %struct.rtw89_ple_quota, ptr %43, i32 0, i32 5
  %92 = ptrtoint ptr %mpdu_proc47.i to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %mpdu_proc47.i, align 2
  %conv48.i = zext i16 %93 to i32
  %shl49.i = shl nuw i32 %conv48.i, 16
  %and50.i = and i32 %shl49.i, 268369920
  %or51.i = or i32 %and50.i, %and46.i
  %94 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %hci.i.i, align 8
  %write32.i153.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %95, i32 0, i32 12
  %96 = ptrtoint ptr %write32.i153.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %write32.i153.i, align 4
  tail call void %97(ptr noundef %rtwdev, i32 noundef 36948, i32 noundef %or51.i) #7
  %cma0_dma.i = getelementptr inbounds %struct.rtw89_ple_quota, ptr %41, i32 0, i32 6
  %98 = ptrtoint ptr %cma0_dma.i to i32
  call void @__asan_load2_noabort(i32 %98)
  %99 = load i16, ptr %cma0_dma.i, align 2
  %100 = and i16 %99, 4095
  %and56.i = zext i16 %100 to i32
  %cma0_dma57.i = getelementptr inbounds %struct.rtw89_ple_quota, ptr %43, i32 0, i32 6
  %101 = ptrtoint ptr %cma0_dma57.i to i32
  call void @__asan_load2_noabort(i32 %101)
  %102 = load i16, ptr %cma0_dma57.i, align 2
  %conv58.i = zext i16 %102 to i32
  %shl59.i = shl nuw i32 %conv58.i, 16
  %and60.i = and i32 %shl59.i, 268369920
  %or61.i = or i32 %and60.i, %and56.i
  %103 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %hci.i.i, align 8
  %write32.i155.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %104, i32 0, i32 12
  %105 = ptrtoint ptr %write32.i155.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %write32.i155.i, align 4
  tail call void %106(ptr noundef %rtwdev, i32 noundef 36952, i32 noundef %or61.i) #7
  %cma1_dma.i = getelementptr inbounds %struct.rtw89_ple_quota, ptr %41, i32 0, i32 7
  %107 = ptrtoint ptr %cma1_dma.i to i32
  call void @__asan_load2_noabort(i32 %107)
  %108 = load i16, ptr %cma1_dma.i, align 2
  %109 = and i16 %108, 4095
  %and66.i = zext i16 %109 to i32
  %cma1_dma67.i = getelementptr inbounds %struct.rtw89_ple_quota, ptr %43, i32 0, i32 7
  %110 = ptrtoint ptr %cma1_dma67.i to i32
  call void @__asan_load2_noabort(i32 %110)
  %111 = load i16, ptr %cma1_dma67.i, align 2
  %conv68.i = zext i16 %111 to i32
  %shl69.i = shl nuw i32 %conv68.i, 16
  %and70.i = and i32 %shl69.i, 268369920
  %or71.i = or i32 %and70.i, %and66.i
  %112 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %hci.i.i, align 8
  %write32.i157.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %113, i32 0, i32 12
  %114 = ptrtoint ptr %write32.i157.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %write32.i157.i, align 4
  tail call void %115(ptr noundef %rtwdev, i32 noundef 36956, i32 noundef %or71.i) #7
  %bb_rpt.i = getelementptr inbounds %struct.rtw89_ple_quota, ptr %41, i32 0, i32 8
  %116 = ptrtoint ptr %bb_rpt.i to i32
  call void @__asan_load2_noabort(i32 %116)
  %117 = load i16, ptr %bb_rpt.i, align 2
  %118 = and i16 %117, 4095
  %and76.i = zext i16 %118 to i32
  %bb_rpt77.i = getelementptr inbounds %struct.rtw89_ple_quota, ptr %43, i32 0, i32 8
  %119 = ptrtoint ptr %bb_rpt77.i to i32
  call void @__asan_load2_noabort(i32 %119)
  %120 = load i16, ptr %bb_rpt77.i, align 2
  %conv78.i = zext i16 %120 to i32
  %shl79.i = shl nuw i32 %conv78.i, 16
  %and80.i = and i32 %shl79.i, 268369920
  %or81.i = or i32 %and80.i, %and76.i
  %121 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %hci.i.i, align 8
  %write32.i159.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %122, i32 0, i32 12
  %123 = ptrtoint ptr %write32.i159.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %write32.i159.i, align 4
  tail call void %124(ptr noundef %rtwdev, i32 noundef 36960, i32 noundef %or81.i) #7
  %wd_rel.i = getelementptr inbounds %struct.rtw89_ple_quota, ptr %41, i32 0, i32 9
  %125 = ptrtoint ptr %wd_rel.i to i32
  call void @__asan_load2_noabort(i32 %125)
  %126 = load i16, ptr %wd_rel.i, align 2
  %127 = and i16 %126, 4095
  %and86.i = zext i16 %127 to i32
  %wd_rel87.i = getelementptr inbounds %struct.rtw89_ple_quota, ptr %43, i32 0, i32 9
  %128 = ptrtoint ptr %wd_rel87.i to i32
  call void @__asan_load2_noabort(i32 %128)
  %129 = load i16, ptr %wd_rel87.i, align 2
  %conv88.i = zext i16 %129 to i32
  %shl89.i = shl nuw i32 %conv88.i, 16
  %and90.i = and i32 %shl89.i, 268369920
  %or91.i = or i32 %and90.i, %and86.i
  %130 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %hci.i.i, align 8
  %write32.i161.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %131, i32 0, i32 12
  %132 = ptrtoint ptr %write32.i161.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %write32.i161.i, align 4
  tail call void %133(ptr noundef %rtwdev, i32 noundef 36964, i32 noundef %or91.i) #7
  %cpu_io.i11 = getelementptr inbounds %struct.rtw89_ple_quota, ptr %41, i32 0, i32 10
  %134 = ptrtoint ptr %cpu_io.i11 to i32
  call void @__asan_load2_noabort(i32 %134)
  %135 = load i16, ptr %cpu_io.i11, align 2
  %136 = and i16 %135, 4095
  %and96.i = zext i16 %136 to i32
  %cpu_io97.i = getelementptr inbounds %struct.rtw89_ple_quota, ptr %43, i32 0, i32 10
  %137 = ptrtoint ptr %cpu_io97.i to i32
  call void @__asan_load2_noabort(i32 %137)
  %138 = load i16, ptr %cpu_io97.i, align 2
  %conv98.i = zext i16 %138 to i32
  %shl99.i = shl nuw i32 %conv98.i, 16
  %and100.i = and i32 %shl99.i, 268369920
  %or101.i = or i32 %and100.i, %and96.i
  %139 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %hci.i.i, align 8
  %write32.i163.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %140, i32 0, i32 12
  %141 = ptrtoint ptr %write32.i163.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %write32.i163.i, align 4
  tail call void %142(ptr noundef %rtwdev, i32 noundef 36968, i32 noundef %or101.i) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hfc_func_en(ptr noundef %rtwdev, i1 noundef zeroext %en, i1 noundef zeroext %h2c_en) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %en to i8
  %frombool1 = zext i1 %h2c_en to i8
  %hfc_param = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 5, i32 1
  %hci.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 7
  %0 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hci.i, align 8
  %read32.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %read32.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %read32.i, align 4
  %call.i = tail call i32 %3(ptr noundef %rtwdev, i32 noundef 35328) #7
  %4 = ptrtoint ptr %hfc_param to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %frombool, ptr %hfc_param, align 4
  %h2c_en5 = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 5, i32 1, i32 1
  %5 = ptrtoint ptr %h2c_en5 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %frombool1, ptr %h2c_en5, align 1
  %and = and i32 %call.i, -10
  %masksel = zext i1 %en to i32
  %masksel25 = select i1 %h2c_en, i32 8, i32 0
  %cond = or i32 %masksel25, %masksel
  %cond14 = or i32 %cond, %and
  %6 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hci.i, align 8
  %write32.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %7, i32 0, i32 12
  %8 = ptrtoint ptr %write32.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %write32.i, align 4
  tail call void %9(ptr noundef %rtwdev, i32 noundef 35328, i32 noundef %cond14) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hfc_mix_cfg(ptr noundef %rtwdev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %h2c_prec = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 5, i32 1, i32 7, i32 1
  %0 = ptrtoint ptr %h2c_prec to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %h2c_prec, align 2
  %prec_cfg2 = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 5, i32 1, i32 7
  %2 = ptrtoint ptr %prec_cfg2 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %prec_cfg2, align 2
  %4 = and i16 %3, 511
  %conv8.i = zext i16 %4 to i32
  %5 = and i16 %1, 511
  %and528.i51 = zext i16 %5 to i32
  %mul.i52 = shl nuw nsw i32 %and528.i51, 16
  %or = or i32 %mul.i52, %conv8.i
  %hci.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 7
  %6 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hci.i, align 8
  %write32.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %7, i32 0, i32 12
  %8 = ptrtoint ptr %write32.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %write32.i, align 4
  tail call void %9(ptr noundef %rtwdev, i32 noundef 35332, i32 noundef %or) #7
  %pub_max = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 5, i32 1, i32 5, i32 2
  %10 = ptrtoint ptr %pub_max to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %pub_max, align 2
  %12 = and i16 %11, 8191
  %conv8.i64 = zext i16 %12 to i32
  %13 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hci.i, align 8
  %write32.i158 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %14, i32 0, i32 12
  %15 = ptrtoint ptr %write32.i158 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %write32.i158, align 4
  tail call void %16(ptr noundef %rtwdev, i32 noundef 35476, i32 noundef %conv8.i64) #7
  %wp_ch811_prec = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 5, i32 1, i32 7, i32 3
  %17 = ptrtoint ptr %wp_ch811_prec to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %wp_ch811_prec, align 2
  %wp_ch07_prec = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 5, i32 1, i32 7, i32 2
  %19 = ptrtoint ptr %wp_ch07_prec to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %wp_ch07_prec, align 2
  %21 = and i16 %20, 511
  %conv8.i75 = zext i16 %21 to i32
  %22 = and i16 %18, 511
  %and528.i84 = zext i16 %22 to i32
  %mul.i85 = shl nuw nsw i32 %and528.i84, 16
  %or11 = or i32 %mul.i85, %conv8.i75
  %23 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %hci.i, align 8
  %write32.i160 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %24, i32 0, i32 12
  %25 = ptrtoint ptr %write32.i160 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %write32.i160, align 4
  tail call void %26(ptr noundef %rtwdev, i32 noundef 35488, i32 noundef %or11) #7
  %27 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %hci.i, align 8
  %read32.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %28, i32 0, i32 9
  %29 = ptrtoint ptr %read32.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %read32.i, align 4
  %call.i = tail call i32 %30(ptr noundef %rtwdev, i32 noundef 35328) #7
  %mode = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 5, i32 1, i32 2
  %31 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %mode, align 2
  %ch011_full_cond = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 5, i32 1, i32 7, i32 4
  %33 = ptrtoint ptr %ch011_full_cond to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %ch011_full_cond, align 2
  %h2c_full_cond = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 5, i32 1, i32 7, i32 5
  %35 = ptrtoint ptr %h2c_full_cond to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %h2c_full_cond, align 1
  %wp_ch07_full_cond = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 5, i32 1, i32 7, i32 6
  %37 = ptrtoint ptr %wp_ch07_full_cond to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %wp_ch07_full_cond, align 2
  %wp_ch811_full_cond = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 5, i32 1, i32 7, i32 7
  %39 = ptrtoint ptr %wp_ch811_full_cond to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %wp_ch811_full_cond, align 1
  %and.i88 = and i32 %call.i, -4087
  %41 = shl i8 %32, 1
  %42 = and i8 %41, 6
  %conv8.i.i = zext i8 %42 to i32
  %or.i = or i32 %and.i88, %conv8.i.i
  %43 = shl i8 %34, 4
  %44 = and i8 %43, 48
  %conv8.i.i103.masked = zext i8 %44 to i32
  %or.i104.masked = or i32 %or.i, %conv8.i.i103.masked
  %45 = and i8 %36, 3
  %and528.i.i118 = zext i8 %45 to i32
  %mul.i.i119 = shl nuw nsw i32 %and528.i.i118, 10
  %and.i133 = or i32 %or.i104.masked, %mul.i.i119
  %46 = shl i8 %38, 6
  %conv8.i.i137 = zext i8 %46 to i32
  %or.i138 = or i32 %and.i133, %conv8.i.i137
  %47 = and i8 %40, 3
  %and528.i.i152 = zext i8 %47 to i32
  %mul.i.i153 = shl nuw nsw i32 %and528.i.i152, 8
  %or.i155 = or i32 %or.i138, %mul.i.i153
  %48 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %hci.i, align 8
  %write32.i163 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %49, i32 0, i32 12
  %50 = ptrtoint ptr %write32.i163 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %write32.i163, align 4
  tail call void %51(ptr noundef %rtwdev, i32 noundef 35328, i32 noundef %or.i155) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @hfc_upd_mix_info(ptr noundef %rtwdev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %hci.i37.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 7
  %0 = ptrtoint ptr %hci.i37.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hci.i37.i, align 8
  %read32.i38.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %read32.i38.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %read32.i38.i, align 4
  %call.i39.i = tail call i32 %3(ptr noundef %rtwdev, i32 noundef 33792) #7
  %4 = zext i32 %call.i39.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.490)
  switch i32 %call.i39.i, label %lor.lhs.false22.i [
    i32 -353703190, label %entry.cleanup_crit_edge
    i32 -559038737, label %entry.cleanup_crit_edge199
  ]

entry.cleanup_crit_edge199:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false22.i:                                ; preds = %entry
  %and.i151 = and i32 %call.i39.i, 1610612736
  call void @__sanitizer_cov_trace_const_cmp4(i32 1610612736, i32 %and.i151)
  %cmp23.not.i = icmp eq i32 %and.i151, 1610612736
  br i1 %cmp23.not.i, label %if.end, label %lor.lhs.false22.i.cleanup_crit_edge

lor.lhs.false22.i.cleanup_crit_edge:              ; preds = %lor.lhs.false22.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false22.i
  %hfc_param = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 5, i32 1
  %pub_info = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 5, i32 1, i32 6
  %prec_cfg2 = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 5, i32 1, i32 7
  %pub_cfg1 = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 5, i32 1, i32 5
  %5 = ptrtoint ptr %hci.i37.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hci.i37.i, align 8
  %read32.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %6, i32 0, i32 9
  %7 = ptrtoint ptr %read32.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %read32.i, align 4
  %call.i = tail call i32 %8(ptr noundef %rtwdev, i32 noundef 35480) #7
  %9 = trunc i32 %call.i to i16
  %conv = and i16 %9, 8191
  %10 = ptrtoint ptr %pub_info to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv, ptr %pub_info, align 2
  %and.i123 = lshr i32 %call.i, 16
  %11 = trunc i32 %and.i123 to i16
  %conv6 = and i16 %11, 8191
  %g1_used = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 5, i32 1, i32 6, i32 1
  %12 = ptrtoint ptr %g1_used to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %conv6, ptr %g1_used, align 2
  %13 = ptrtoint ptr %hci.i37.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hci.i37.i, align 8
  %read32.i153 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %14, i32 0, i32 9
  %15 = ptrtoint ptr %read32.i153 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %read32.i153, align 4
  %call.i154 = tail call i32 %16(ptr noundef %rtwdev, i32 noundef 35468) #7
  %17 = trunc i32 %call.i154 to i16
  %conv9 = and i16 %17, 8191
  %g0_aval = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 5, i32 1, i32 6, i32 2
  %18 = ptrtoint ptr %g0_aval to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %conv9, ptr %g0_aval, align 2
  %and.i125 = lshr i32 %call.i154, 16
  %19 = trunc i32 %and.i125 to i16
  %conv11 = and i16 %19, 8191
  %g1_aval = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 5, i32 1, i32 6, i32 3
  %20 = ptrtoint ptr %g1_aval to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %conv11, ptr %g1_aval, align 2
  %21 = ptrtoint ptr %hci.i37.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %hci.i37.i, align 8
  %read32.i156 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %22, i32 0, i32 9
  %23 = ptrtoint ptr %read32.i156 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %read32.i156, align 4
  %call.i157 = tail call i32 %24(ptr noundef %rtwdev, i32 noundef 35484) #7
  %25 = trunc i32 %call.i157 to i16
  %conv14 = and i16 %25, 8191
  %pub_aval = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 5, i32 1, i32 6, i32 4
  %26 = ptrtoint ptr %pub_aval to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %conv14, ptr %pub_aval, align 2
  %27 = ptrtoint ptr %hci.i37.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %hci.i37.i, align 8
  %read32.i159 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %28, i32 0, i32 9
  %29 = ptrtoint ptr %read32.i159 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %read32.i159, align 4
  %call.i160 = tail call i32 %30(ptr noundef %rtwdev, i32 noundef 35496) #7
  %and.i128 = lshr i32 %call.i160, 16
  %31 = trunc i32 %and.i128 to i16
  %conv17 = and i16 %31, 8191
  %wp_aval = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 5, i32 1, i32 6, i32 5
  %32 = ptrtoint ptr %wp_aval to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %conv17, ptr %wp_aval, align 2
  %33 = ptrtoint ptr %hci.i37.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %hci.i37.i, align 8
  %read32.i162 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %34, i32 0, i32 9
  %35 = ptrtoint ptr %read32.i162 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %read32.i162, align 4
  %call.i163 = tail call i32 %36(ptr noundef %rtwdev, i32 noundef 35328) #7
  %37 = trunc i32 %call.i163 to i8
  %38 = and i8 %37, 1
  %39 = ptrtoint ptr %hfc_param to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %38, ptr %hfc_param, align 4
  %h2c_en = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 5, i32 1, i32 1
  %40 = lshr i8 %37, 3
  %41 = and i8 %40, 1
  %42 = ptrtoint ptr %h2c_en to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %41, ptr %h2c_en, align 1
  %div4.i131.lhs.trunc = lshr i8 %37, 1
  %div4.i131182190 = and i8 %div4.i131.lhs.trunc, 3
  %mode = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 5, i32 1, i32 2
  %43 = ptrtoint ptr %mode to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %div4.i131182190, ptr %mode, align 2
  %div4.i133.lhs.trunc = lshr i8 %37, 4
  %div4.i133183191 = and i8 %div4.i133.lhs.trunc, 3
  %ch011_full_cond = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 5, i32 1, i32 7, i32 4
  %44 = ptrtoint ptr %ch011_full_cond to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %div4.i133183191, ptr %ch011_full_cond, align 2
  %45 = trunc i32 %call.i163 to i16
  %div4.i135.lhs.trunc = lshr i16 %45, 10
  %46 = trunc i16 %div4.i135.lhs.trunc to i8
  %conv31 = and i8 %46, 3
  %h2c_full_cond = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 5, i32 1, i32 7, i32 5
  %47 = ptrtoint ptr %h2c_full_cond to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %conv31, ptr %h2c_full_cond, align 1
  %div4.i137185193 = lshr i8 %37, 6
  %wp_ch07_full_cond = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 5, i32 1, i32 7, i32 6
  %48 = ptrtoint ptr %wp_ch07_full_cond to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %div4.i137185193, ptr %wp_ch07_full_cond, align 2
  %div4.i139.lhs.trunc195 = lshr i32 %call.i163, 8
  %49 = trunc i32 %div4.i139.lhs.trunc195 to i8
  %conv35 = and i8 %49, 3
  %wp_ch811_full_cond = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 5, i32 1, i32 7, i32 7
  %50 = ptrtoint ptr %wp_ch811_full_cond to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %conv35, ptr %wp_ch811_full_cond, align 1
  %51 = ptrtoint ptr %hci.i37.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %hci.i37.i, align 8
  %read32.i165 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %52, i32 0, i32 9
  %53 = ptrtoint ptr %read32.i165 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %read32.i165, align 4
  %call.i166 = tail call i32 %54(ptr noundef %rtwdev, i32 noundef 35332) #7
  %55 = trunc i32 %call.i166 to i16
  %conv38 = and i16 %55, 511
  %56 = ptrtoint ptr %prec_cfg2 to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 %conv38, ptr %prec_cfg2, align 2
  %and.i141 = lshr i32 %call.i166, 16
  %57 = trunc i32 %and.i141 to i16
  %conv40 = and i16 %57, 511
  %h2c_prec = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 5, i32 1, i32 7, i32 1
  %58 = ptrtoint ptr %h2c_prec to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 %conv40, ptr %h2c_prec, align 2
  %59 = ptrtoint ptr %hci.i37.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %hci.i37.i, align 8
  %read32.i168 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %60, i32 0, i32 9
  %61 = ptrtoint ptr %read32.i168 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %read32.i168, align 4
  %call.i169 = tail call i32 %62(ptr noundef %rtwdev, i32 noundef 35476) #7
  %63 = trunc i32 %call.i169 to i16
  %conv43 = and i16 %63, 8191
  %pub_max = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 5, i32 1, i32 5, i32 2
  %64 = ptrtoint ptr %pub_max to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 %conv43, ptr %pub_max, align 2
  %65 = ptrtoint ptr %hci.i37.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %hci.i37.i, align 8
  %read32.i171 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %66, i32 0, i32 9
  %67 = ptrtoint ptr %read32.i171 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %read32.i171, align 4
  %call.i172 = tail call i32 %68(ptr noundef %rtwdev, i32 noundef 35488) #7
  %69 = trunc i32 %call.i172 to i16
  %conv46 = and i16 %69, 511
  %wp_ch07_prec = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 5, i32 1, i32 7, i32 2
  %70 = ptrtoint ptr %wp_ch07_prec to i32
  call void @__asan_store2_noabort(i32 %70)
  store i16 %conv46, ptr %wp_ch07_prec, align 2
  %and.i145 = lshr i32 %call.i172, 16
  %71 = trunc i32 %and.i145 to i16
  %conv48 = and i16 %71, 511
  %wp_ch811_prec = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 5, i32 1, i32 7, i32 3
  %72 = ptrtoint ptr %wp_ch811_prec to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 %conv48, ptr %wp_ch811_prec, align 2
  %73 = ptrtoint ptr %hci.i37.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %hci.i37.i, align 8
  %read32.i174 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %74, i32 0, i32 9
  %75 = ptrtoint ptr %read32.i174 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %read32.i174, align 4
  %call.i175 = tail call i32 %76(ptr noundef %rtwdev, i32 noundef 35492) #7
  %77 = trunc i32 %call.i175 to i16
  %conv51 = and i16 %77, 8191
  %wp_thrd = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 5, i32 1, i32 5, i32 3
  %78 = ptrtoint ptr %wp_thrd to i32
  call void @__asan_store2_noabort(i32 %78)
  store i16 %conv51, ptr %wp_thrd, align 2
  %79 = ptrtoint ptr %hci.i37.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %hci.i37.i, align 8
  %read32.i177 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %80, i32 0, i32 9
  %81 = ptrtoint ptr %read32.i177 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %read32.i177, align 4
  %call.i178 = tail call i32 %82(ptr noundef %rtwdev, i32 noundef 35472) #7
  %83 = trunc i32 %call.i178 to i16
  %conv54 = and i16 %83, 8191
  %84 = ptrtoint ptr %pub_cfg1 to i32
  call void @__asan_store2_noabort(i32 %84)
  store i16 %conv54, ptr %pub_cfg1, align 2
  %and.i149 = lshr i32 %call.i178, 16
  %85 = trunc i32 %and.i149 to i16
  %conv56 = and i16 %85, 8191
  %grp1 = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 5, i32 1, i32 5, i32 1
  %86 = ptrtoint ptr %grp1 to i32
  call void @__asan_store2_noabort(i32 %86)
  store i16 %conv56, ptr %grp1, align 2
  %87 = ptrtoint ptr %pub_info to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %pub_info, align 2
  %conv.i = zext i16 %88 to i32
  %89 = ptrtoint ptr %g1_used to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %g1_used, align 2
  %conv1.i = zext i16 %90 to i32
  %add.i = add nuw nsw i32 %conv1.i, %conv.i
  %91 = ptrtoint ptr %pub_aval to i32
  call void @__asan_load2_noabort(i32 %91)
  %92 = load i16, ptr %pub_aval, align 2
  %conv2.i = zext i16 %92 to i32
  %add3.i = add nuw nsw i32 %add.i, %conv2.i
  %93 = ptrtoint ptr %pub_max to i32
  call void @__asan_load2_noabort(i32 %93)
  %94 = load i16, ptr %pub_max, align 2
  %conv4.i = zext i16 %94 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add3.i, i32 %conv4.i)
  %cmp.not.i = icmp eq i32 %add3.i, %conv4.i
  br i1 %cmp.not.i, label %if.end.hfc_pub_info_chk.exit_crit_edge, label %if.then.i

if.end.hfc_pub_info_chk.exit_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %hfc_pub_info_chk.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %chip.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 3
  %95 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %chip.i, align 4
  %97 = ptrtoint ptr %96 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %96, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %98)
  %cmp6.i = icmp eq i32 %98, 0
  %..i = select i1 %cmp6.i, i32 0, i32 -14
  br label %hfc_pub_info_chk.exit

hfc_pub_info_chk.exit:                            ; preds = %if.then.i, %if.end.hfc_pub_info_chk.exit_crit_edge
  %retval.0.i179 = phi i32 [ %..i, %if.then.i ], [ 0, %if.end.hfc_pub_info_chk.exit_crit_edge ]
  %99 = ptrtoint ptr %hfc_param to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %hfc_param, align 4, !range !744
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %100)
  %tobool59.not = icmp eq i8 %100, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i179)
  %tobool61.not = icmp eq i32 %retval.0.i179, 0
  %or.cond = select i1 %tobool59.not, i1 true, i1 %tobool61.not
  %spec.select = select i1 %or.cond, i32 0, i32 %retval.0.i179
  br label %cleanup

cleanup:                                          ; preds = %hfc_pub_info_chk.exit, %lor.lhs.false22.i.cleanup_crit_edge, %entry.cleanup_crit_edge, %entry.cleanup_crit_edge199
  %retval.0 = phi i32 [ %spec.select, %hfc_pub_info_chk.exit ], [ -14, %entry.cleanup_crit_edge ], [ -14, %entry.cleanup_crit_edge199 ], [ -14, %lor.lhs.false22.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cmac_init(ptr noundef %rtwdev, i8 noundef zeroext %mac_idx) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %mac_idx)
  %cmp2.i.i = icmp eq i8 %mac_idx, 0
  br i1 %cmp2.i.i, label %entry.if.end17.i.i_crit_edge, label %if.else6.i.i

entry.if.end17.i.i_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17.i.i

if.else6.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %mac_idx)
  %cmp11.i.i = icmp eq i8 %mac_idx, 1
  br i1 %cmp11.i.i, label %if.else6.i.i.if.end17.i.i_crit_edge, label %if.else6.i.i.do.end_crit_edge

if.else6.i.i.do.end_crit_edge:                    ; preds = %if.else6.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.else6.i.i.if.end17.i.i_crit_edge:              ; preds = %if.else6.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17.i.i

if.end17.i.i:                                     ; preds = %if.else6.i.i.if.end17.i.i_crit_edge, %entry.if.end17.i.i_crit_edge
  %.sink.i.i = phi i32 [ 49152, %entry.if.end17.i.i_crit_edge ], [ 128, %if.else6.i.i.if.end17.i.i_crit_edge ]
  %hci.i37.i.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 7
  %0 = ptrtoint ptr %hci.i37.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hci.i37.i.i, align 8
  %read32.i38.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %read32.i38.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %read32.i38.i.i, align 4
  %call.i39.i.i = tail call i32 %3(ptr noundef %rtwdev, i32 noundef %.sink.i.i) #7
  %4 = zext i32 %call.i39.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.491)
  switch i32 %call.i39.i.i, label %lor.lhs.false22.i.i [
    i32 -353703190, label %if.end17.i.i.do.end_crit_edge
    i32 -559038737, label %if.end17.i.i.do.end_crit_edge351
  ]

if.end17.i.i.do.end_crit_edge351:                 ; preds = %if.end17.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.end17.i.i.do.end_crit_edge:                    ; preds = %if.end17.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

lor.lhs.false22.i.i:                              ; preds = %if.end17.i.i
  %and.i.i = and i32 %call.i39.i.i, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %cmp23.not.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %cmp23.not.i.not.i, label %lor.lhs.false22.i.i.do.end_crit_edge, label %if.end

lor.lhs.false22.i.i.do.end_crit_edge:             ; preds = %lor.lhs.false22.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false22.i.i.do.end_crit_edge, %if.end17.i.i.do.end_crit_edge, %if.end17.i.i.do.end_crit_edge351, %if.else6.i.i.do.end_crit_edge
  %retval.0.i.ph = phi i32 [ -22, %if.else6.i.i.do.end_crit_edge ], [ -14, %if.end17.i.i.do.end_crit_edge ], [ -14, %if.end17.i.i.do.end_crit_edge351 ], [ -14, %lor.lhs.false22.i.i.do.end_crit_edge ]
  %dev = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 1
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 4
  %conv = zext i8 %mac_idx to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.366, i32 noundef %conv, i32 noundef %retval.0.i.ph) #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false22.i.i
  %cond.i.i = select i1 %cmp2.i.i, i32 49976, i32 58168
  %7 = ptrtoint ptr %hci.i37.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hci.i37.i.i, align 8
  %read32.i.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %8, i32 0, i32 9
  %9 = ptrtoint ptr %read32.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %read32.i.i.i, align 4
  %call.i.i.i = tail call i32 %10(ptr noundef %rtwdev, i32 noundef %cond.i.i) #7
  %and21.i.i = and i32 %call.i.i.i, -32
  %or.i.i = or i32 %and21.i.i, 24
  %11 = ptrtoint ptr %hci.i37.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hci.i37.i.i, align 8
  %write32.i.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %12, i32 0, i32 12
  %13 = ptrtoint ptr %write32.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %write32.i.i.i, align 4
  tail call void %14(ptr noundef %rtwdev, i32 noundef %cond.i.i, i32 noundef %or.i.i) #7
  %spec.select = select i1 %cmp2.i.i, i32 49152, i32 128
  %15 = ptrtoint ptr %hci.i37.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hci.i37.i.i, align 8
  %read32.i38.i.i155 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %16, i32 0, i32 9
  %17 = ptrtoint ptr %read32.i38.i.i155 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %read32.i38.i.i155, align 4
  %call.i39.i.i156 = tail call i32 %18(ptr noundef %rtwdev, i32 noundef %spec.select) #7
  %19 = zext i32 %call.i39.i.i156 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.492)
  switch i32 %call.i39.i.i156, label %lor.lhs.false22.i.i160 [
    i32 -353703190, label %if.end.do.end6_crit_edge
    i32 -559038737, label %if.end.do.end6_crit_edge352
  ]

if.end.do.end6_crit_edge352:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end6

if.end.do.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end6

lor.lhs.false22.i.i160:                           ; preds = %if.end
  %and.i.i158 = and i32 %call.i39.i.i156, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i158)
  %cmp23.not.i.not.i159 = icmp eq i32 %and.i.i158, 0
  br i1 %cmp23.not.i.not.i159, label %lor.lhs.false22.i.i160.do.end6_crit_edge, label %if.end.i162

lor.lhs.false22.i.i160.do.end6_crit_edge:         ; preds = %lor.lhs.false22.i.i160
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end6

if.end.i162:                                      ; preds = %lor.lhs.false22.i.i160
  %cond.i.i161 = select i1 %cmp2.i.i, i32 52788, i32 60980
  %20 = ptrtoint ptr %hci.i37.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hci.i37.i.i, align 8
  %read32.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %21, i32 0, i32 9
  %22 = ptrtoint ptr %read32.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %read32.i.i, align 4
  %call.i.i = tail call i32 %23(ptr noundef %rtwdev, i32 noundef %cond.i.i161) #7
  %or5.i = or i32 %call.i.i, 8323329
  %24 = ptrtoint ptr %hci.i37.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %hci.i37.i.i, align 8
  %write32.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %25, i32 0, i32 12
  %26 = ptrtoint ptr %write32.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %write32.i.i, align 4
  tail call void %27(ptr noundef %rtwdev, i32 noundef %cond.i.i161, i32 noundef %or5.i) #7
  %call6.i = tail call i64 @ktime_get() #7
  %add.i.i = add i64 %call6.i, 2000000
  tail call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 1576) #7
  %28 = ptrtoint ptr %hci.i37.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %hci.i37.i.i, align 8
  %read16.i70.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %29, i32 0, i32 8
  %30 = ptrtoint ptr %read16.i70.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %read16.i70.i, align 4
  %call.i6171.i = tail call zeroext i16 %31(ptr noundef %rtwdev, i32 noundef 256) #7
  %32 = and i16 %call.i6171.i, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %32)
  %tobool17.not72.i = icmp eq i16 %32, 0
  br i1 %tobool17.not72.i, label %if.end.i162.if.end9_crit_edge, label %if.end.i162.land.lhs.true.i_crit_edge

if.end.i162.land.lhs.true.i_crit_edge:            ; preds = %if.end.i162
  br label %land.lhs.true.i

if.end.i162.if.end9_crit_edge:                    ; preds = %if.end.i162
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

land.lhs.true.i:                                  ; preds = %if.then29.i.land.lhs.true.i_crit_edge, %if.end.i162.land.lhs.true.i_crit_edge
  %call21.i = tail call i64 @ktime_get() #7
  call void @__sanitizer_cov_trace_cmp8(i64 %call21.i, i64 %add.i.i)
  %cmp3.i.i = icmp sgt i64 %call21.i, %add.i.i
  br i1 %cmp3.i.i, label %for.end.i, label %if.then29.i

if.then29.i:                                      ; preds = %land.lhs.true.i
  tail call void @usleep_range_state(i32 noundef 1, i32 noundef 1, i32 noundef 2) #7
  %33 = ptrtoint ptr %hci.i37.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %hci.i37.i.i, align 8
  %read16.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %34, i32 0, i32 8
  %35 = ptrtoint ptr %read16.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %read16.i.i, align 4
  %call.i61.i = tail call zeroext i16 %36(ptr noundef %rtwdev, i32 noundef 256) #7
  %37 = and i16 %call.i61.i, 256
  %tobool17.not.i = icmp eq i16 %37, 0
  br i1 %tobool17.not.i, label %if.then29.i.if.end9_crit_edge, label %if.then29.i.land.lhs.true.i_crit_edge

if.then29.i.land.lhs.true.i_crit_edge:            ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true.i

if.then29.i.if.end9_crit_edge:                    ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

for.end.i:                                        ; preds = %land.lhs.true.i
  %38 = ptrtoint ptr %hci.i37.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %hci.i37.i.i, align 8
  %read16.i65.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %39, i32 0, i32 8
  %40 = ptrtoint ptr %read16.i65.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %read16.i65.i, align 4
  %call.i66.i = tail call zeroext i16 %41(ptr noundef %rtwdev, i32 noundef 256) #7
  %.pre.i = and i16 %call.i66.i, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %.pre.i)
  %tobool33.not.i = icmp eq i16 %.pre.i, 0
  br i1 %tobool33.not.i, label %for.end.i.if.end9_crit_edge, label %do.end38.i

for.end.i.if.end9_crit_edge:                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

do.end38.i:                                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 1
  %42 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %43, ptr noundef nonnull @.str.395) #10
  br label %do.end6

do.end6:                                          ; preds = %do.end38.i, %lor.lhs.false22.i.i160.do.end6_crit_edge, %if.end.do.end6_crit_edge, %if.end.do.end6_crit_edge352
  %retval.0.i163 = phi i32 [ -110, %do.end38.i ], [ -14, %lor.lhs.false22.i.i160.do.end6_crit_edge ], [ -14, %if.end.do.end6_crit_edge ], [ -14, %if.end.do.end6_crit_edge352 ]
  %dev7 = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 1
  %44 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev7, align 4
  %conv8 = zext i8 %mac_idx to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %45, ptr noundef nonnull @.str.369, i32 noundef %conv8, i32 noundef %retval.0.i163) #10
  br label %cleanup

if.end9:                                          ; preds = %for.end.i.if.end9_crit_edge, %if.then29.i.if.end9_crit_edge, %if.end.i162.if.end9_crit_edge
  br i1 %cmp2.i.i, label %if.end9.if.end17.i.i171_crit_edge, label %if.else6.i.i166

if.end9.if.end17.i.i171_crit_edge:                ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17.i.i171

if.else6.i.i166:                                  ; preds = %if.end9
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %mac_idx)
  %cmp11.i.i165 = icmp eq i8 %mac_idx, 1
  br i1 %cmp11.i.i165, label %if.else6.i.i166.if.end17.i.i171_crit_edge, label %if.else6.i.i166.do.end15_crit_edge

if.else6.i.i166.do.end15_crit_edge:               ; preds = %if.else6.i.i166
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end15

if.else6.i.i166.if.end17.i.i171_crit_edge:        ; preds = %if.else6.i.i166
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17.i.i171

if.end17.i.i171:                                  ; preds = %if.else6.i.i166.if.end17.i.i171_crit_edge, %if.end9.if.end17.i.i171_crit_edge
  %.sink.i.i167 = phi i32 [ 49152, %if.end9.if.end17.i.i171_crit_edge ], [ 128, %if.else6.i.i166.if.end17.i.i171_crit_edge ]
  %46 = ptrtoint ptr %hci.i37.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %hci.i37.i.i, align 8
  %read32.i38.i.i169 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %47, i32 0, i32 9
  %48 = ptrtoint ptr %read32.i38.i.i169 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %read32.i38.i.i169, align 4
  %call.i39.i.i170 = tail call i32 %49(ptr noundef %rtwdev, i32 noundef %.sink.i.i167) #7
  %50 = zext i32 %call.i39.i.i170 to i64
  call void @__sanitizer_cov_trace_switch(i64 %50, ptr @__sancov_gen_cov_switch_values.493)
  switch i32 %call.i39.i.i170, label %lor.lhs.false22.i.i174 [
    i32 -353703190, label %if.end17.i.i171.do.end15_crit_edge
    i32 -559038737, label %if.end17.i.i171.do.end15_crit_edge353
  ]

if.end17.i.i171.do.end15_crit_edge353:            ; preds = %if.end17.i.i171
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end15

if.end17.i.i171.do.end15_crit_edge:               ; preds = %if.end17.i.i171
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end15

lor.lhs.false22.i.i174:                           ; preds = %if.end17.i.i171
  %and.i.i172 = and i32 %call.i39.i.i170, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i172)
  %cmp23.not.i.not.i173 = icmp eq i32 %and.i.i172, 0
  br i1 %cmp23.not.i.not.i173, label %lor.lhs.false22.i.i174.do.end15_crit_edge, label %if.end18

lor.lhs.false22.i.i174.do.end15_crit_edge:        ; preds = %lor.lhs.false22.i.i174
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end15

do.end15:                                         ; preds = %lor.lhs.false22.i.i174.do.end15_crit_edge, %if.end17.i.i171.do.end15_crit_edge, %if.end17.i.i171.do.end15_crit_edge353, %if.else6.i.i166.do.end15_crit_edge
  %retval.0.i178.ph = phi i32 [ -22, %if.else6.i.i166.do.end15_crit_edge ], [ -14, %if.end17.i.i171.do.end15_crit_edge ], [ -14, %if.end17.i.i171.do.end15_crit_edge353 ], [ -14, %lor.lhs.false22.i.i174.do.end15_crit_edge ]
  %dev16 = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 1
  %51 = ptrtoint ptr %dev16 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dev16, align 4
  %conv17 = zext i8 %mac_idx to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %52, ptr noundef nonnull @.str.372, i32 noundef %conv17, i32 noundef %retval.0.i178.ph) #10
  br label %cleanup

if.end18:                                         ; preds = %lor.lhs.false22.i.i174
  %cond.i4.i.i = select i1 %cmp2.i.i, i32 52780, i32 60972
  %cond.i2.i.i = select i1 %cmp2.i.i, i32 52772, i32 60964
  %cond.i.i.i = select i1 %cmp2.i.i, i32 52776, i32 60968
  %53 = ptrtoint ptr %hci.i37.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %hci.i37.i.i, align 8
  %write32.i.i.i175 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %54, i32 0, i32 12
  %55 = ptrtoint ptr %write32.i.i.i175 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %write32.i.i.i175, align 4
  tail call void %56(ptr noundef %rtwdev, i32 noundef %cond.i.i.i, i32 noundef 1431655765) #7
  %57 = ptrtoint ptr %hci.i37.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %hci.i37.i.i, align 8
  %write32.i.i.1.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %58, i32 0, i32 12
  %59 = ptrtoint ptr %write32.i.i.1.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %write32.i.i.1.i, align 4
  tail call void %60(ptr noundef %rtwdev, i32 noundef %cond.i2.i.i, i32 noundef 1431655765) #7
  %61 = ptrtoint ptr %hci.i37.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %hci.i37.i.i, align 8
  %write32.i.i.2.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %62, i32 0, i32 12
  %63 = ptrtoint ptr %write32.i.i.2.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %write32.i.i.2.i, align 4
  tail call void %64(ptr noundef %rtwdev, i32 noundef %cond.i4.i.i, i32 noundef 1431655765) #7
  %hal.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 4
  %65 = ptrtoint ptr %hal.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %hal.i, align 16
  %cond.i.i176 = select i1 %cmp2.i.i, i32 52768, i32 60960
  %67 = ptrtoint ptr %hci.i37.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %hci.i37.i.i, align 8
  %write32.i.i177 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %68, i32 0, i32 12
  %69 = ptrtoint ptr %write32.i.i177 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %write32.i.i177, align 4
  tail call void %70(ptr noundef %rtwdev, i32 noundef %cond.i.i176, i32 noundef %66) #7
  %cond.i24.i = select i1 %cmp2.i.i, i32 52740, i32 60932
  %71 = ptrtoint ptr %hci.i37.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %hci.i37.i.i, align 8
  %write16.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %72, i32 0, i32 11
  %73 = ptrtoint ptr %write16.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %write16.i.i, align 4
  tail call void %74(ptr noundef %rtwdev, i32 noundef %cond.i24.i, i16 noundef zeroext 127) #7
  %75 = ptrtoint ptr %hci.i37.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %hci.i37.i.i, align 8
  %read32.i38.i.i184 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %76, i32 0, i32 9
  %77 = ptrtoint ptr %read32.i38.i.i184 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %read32.i38.i.i184, align 4
  %call.i39.i.i185 = tail call i32 %78(ptr noundef %rtwdev, i32 noundef %spec.select) #7
  %79 = zext i32 %call.i39.i.i185 to i64
  call void @__sanitizer_cov_trace_switch(i64 %79, ptr @__sancov_gen_cov_switch_values.494)
  switch i32 %call.i39.i.i185, label %lor.lhs.false22.i.i189 [
    i32 -353703190, label %if.end18.do.end24_crit_edge
    i32 -559038737, label %if.end18.do.end24_crit_edge354
  ]

if.end18.do.end24_crit_edge354:                   ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end24

if.end18.do.end24_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end24

lor.lhs.false22.i.i189:                           ; preds = %if.end18
  %and.i.i187 = and i32 %call.i39.i.i185, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i187)
  %cmp23.not.i.not.i188 = icmp eq i32 %and.i.i187, 0
  br i1 %cmp23.not.i.not.i188, label %lor.lhs.false22.i.i189.do.end24_crit_edge, label %if.end.i197

lor.lhs.false22.i.i189.do.end24_crit_edge:        ; preds = %lor.lhs.false22.i.i189
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end24

if.end.i197:                                      ; preds = %lor.lhs.false22.i.i189
  %cond.i.i190 = select i1 %cmp2.i.i, i32 50064, i32 58256
  %80 = ptrtoint ptr %hci.i37.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %hci.i37.i.i, align 8
  %read32.i.i191 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %81, i32 0, i32 9
  %82 = ptrtoint ptr %read32.i.i191 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %read32.i.i191, align 4
  %call.i.i192 = tail call i32 %83(ptr noundef %rtwdev, i32 noundef %cond.i.i190) #7
  %or.i = and i32 %call.i.i192, 12647936
  %and.i = or i32 %or.i, 1899036927
  %84 = ptrtoint ptr %hci.i37.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %hci.i37.i.i, align 8
  %write32.i.i193 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %85, i32 0, i32 12
  %86 = ptrtoint ptr %write32.i.i193 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %write32.i.i193, align 4
  tail call void %87(ptr noundef %rtwdev, i32 noundef %cond.i.i190, i32 noundef %and.i) #7
  %chip.i.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 3
  %88 = ptrtoint ptr %chip.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %chip.i.i, align 4
  %90 = ptrtoint ptr %89 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %89, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %91)
  %switch.i.i = icmp ult i32 %91, 2
  %cond.i.i.i194 = select i1 %cmp2.i.i, i32 52224, i32 60416
  %92 = ptrtoint ptr %hci.i37.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %hci.i37.i.i, align 8
  %read32.i.i.i195 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %93, i32 0, i32 9
  %94 = ptrtoint ptr %read32.i.i.i195 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %read32.i.i.i195, align 4
  %call.i.i.i196 = tail call i32 %95(ptr noundef %rtwdev, i32 noundef %cond.i.i.i194) #7
  br i1 %switch.i.i, label %sw.bb.i.i, label %sw.default.i.i

sw.bb.i.i:                                        ; preds = %if.end.i197
  call void @__sanitizer_cov_trace_pc() #9
  %and.i15.i = and i32 %call.i.i.i196, -3670017
  %96 = ptrtoint ptr %hci.i37.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %hci.i37.i.i, align 8
  %write32.i.i.i198 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %97, i32 0, i32 12
  %98 = ptrtoint ptr %write32.i.i.i198 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %write32.i.i.i198, align 4
  tail call void %99(ptr noundef %rtwdev, i32 noundef %cond.i.i.i194, i32 noundef %and.i15.i) #7
  %cond.i36.i.i = select i1 %cmp2.i.i, i32 52228, i32 60420
  %100 = ptrtoint ptr %hci.i37.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %hci.i37.i.i, align 8
  %read32.i38.i16.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %101, i32 0, i32 9
  %102 = ptrtoint ptr %read32.i38.i16.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %read32.i38.i16.i, align 4
  %call.i39.i17.i = tail call i32 %103(ptr noundef %rtwdev, i32 noundef %cond.i36.i.i) #7
  %and5.i.i = and i32 %call.i39.i17.i, -528482305
  %104 = ptrtoint ptr %hci.i37.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %hci.i37.i.i, align 8
  %write32.i41.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %105, i32 0, i32 12
  %106 = ptrtoint ptr %write32.i41.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %write32.i41.i.i, align 4
  tail call void %107(ptr noundef %rtwdev, i32 noundef %cond.i36.i.i, i32 noundef %and5.i.i) #7
  br label %if.end27

sw.default.i.i:                                   ; preds = %if.end.i197
  call void @__sanitizer_cov_trace_pc() #9
  %or.i.i199 = or i32 %call.i.i.i196, 3670016
  %108 = ptrtoint ptr %hci.i37.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %hci.i37.i.i, align 8
  %write32.i48.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %109, i32 0, i32 12
  %110 = ptrtoint ptr %write32.i48.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %write32.i48.i.i, align 4
  tail call void %111(ptr noundef %rtwdev, i32 noundef %cond.i.i.i194, i32 noundef %or.i.i199) #7
  %cond.i50.i.i = select i1 %cmp2.i.i, i32 52228, i32 60420
  %112 = ptrtoint ptr %hci.i37.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %hci.i37.i.i, align 8
  %read32.i52.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %113, i32 0, i32 9
  %114 = ptrtoint ptr %read32.i52.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %read32.i52.i.i, align 4
  %call.i53.i.i = tail call i32 %115(ptr noundef %rtwdev, i32 noundef %cond.i50.i.i) #7
  %or10.i.i = or i32 %call.i53.i.i, 528482304
  %116 = ptrtoint ptr %hci.i37.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %hci.i37.i.i, align 8
  %write32.i55.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %117, i32 0, i32 12
  %118 = ptrtoint ptr %write32.i55.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %write32.i55.i.i, align 4
  tail call void %119(ptr noundef %rtwdev, i32 noundef %cond.i50.i.i, i32 noundef %or10.i.i) #7
  br label %if.end27

do.end24:                                         ; preds = %lor.lhs.false22.i.i189.do.end24_crit_edge, %if.end18.do.end24_crit_edge, %if.end18.do.end24_crit_edge354
  %dev25 = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 1
  %120 = ptrtoint ptr %dev25 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %dev25, align 4
  %conv26 = zext i8 %mac_idx to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %121, ptr noundef nonnull @.str.375, i32 noundef %conv26, i32 noundef -14) #10
  br label %cleanup

if.end27:                                         ; preds = %sw.default.i.i, %sw.bb.i.i
  %122 = ptrtoint ptr %hci.i37.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %hci.i37.i.i, align 8
  %read32.i38.i.i206 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %123, i32 0, i32 9
  %124 = ptrtoint ptr %read32.i38.i.i206 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %read32.i38.i.i206, align 4
  %call.i39.i.i207 = tail call i32 %125(ptr noundef %rtwdev, i32 noundef %spec.select) #7
  %126 = zext i32 %call.i39.i.i207 to i64
  call void @__sanitizer_cov_trace_switch(i64 %126, ptr @__sancov_gen_cov_switch_values.495)
  switch i32 %call.i39.i.i207, label %lor.lhs.false22.i.i211 [
    i32 -353703190, label %if.end27.do.end33_crit_edge
    i32 -559038737, label %if.end27.do.end33_crit_edge355
  ]

if.end27.do.end33_crit_edge355:                   ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end33

if.end27.do.end33_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end33

lor.lhs.false22.i.i211:                           ; preds = %if.end27
  %and.i.i209 = and i32 %call.i39.i.i207, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i209)
  %cmp23.not.i.not.i210 = icmp eq i32 %and.i.i209, 0
  br i1 %cmp23.not.i.not.i210, label %lor.lhs.false22.i.i211.do.end33_crit_edge, label %if.end36

lor.lhs.false22.i.i211.do.end33_crit_edge:        ; preds = %lor.lhs.false22.i.i211
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end33

do.end33:                                         ; preds = %lor.lhs.false22.i.i211.do.end33_crit_edge, %if.end27.do.end33_crit_edge, %if.end27.do.end33_crit_edge355
  %dev34 = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 1
  %127 = ptrtoint ptr %dev34 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %dev34, align 4
  %conv35 = zext i8 %mac_idx to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %128, ptr noundef nonnull @.str.378, i32 noundef %conv35, i32 noundef -14) #10
  br label %cleanup

if.end36:                                         ; preds = %lor.lhs.false22.i.i211
  %cond.i.i212 = select i1 %cmp2.i.i, i32 52810, i32 61002
  %129 = ptrtoint ptr %hci.i37.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %hci.i37.i.i, align 8
  %read8.i.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %130, i32 0, i32 7
  %131 = ptrtoint ptr %read8.i.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %read8.i.i.i, align 4
  %call.i.i.i213 = tail call zeroext i8 %132(ptr noundef %rtwdev, i32 noundef %cond.i.i212) #7
  %and.i6.i = and i8 %call.i.i.i213, -2
  %133 = ptrtoint ptr %hci.i37.i.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %hci.i37.i.i, align 8
  %write8.i.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %134, i32 0, i32 10
  %135 = ptrtoint ptr %write8.i.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %write8.i.i.i, align 4
  tail call void %136(ptr noundef %rtwdev, i32 noundef %cond.i.i212, i8 noundef zeroext %and.i6.i) #7
  %137 = ptrtoint ptr %hci.i37.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %hci.i37.i.i, align 8
  %read32.i38.i.i221 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %138, i32 0, i32 9
  %139 = ptrtoint ptr %read32.i38.i.i221 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %read32.i38.i.i221, align 4
  %call.i39.i.i222 = tail call i32 %140(ptr noundef %rtwdev, i32 noundef %spec.select) #7
  %141 = zext i32 %call.i39.i.i222 to i64
  call void @__sanitizer_cov_trace_switch(i64 %141, ptr @__sancov_gen_cov_switch_values.496)
  switch i32 %call.i39.i.i222, label %lor.lhs.false22.i.i226 [
    i32 -353703190, label %if.end36.do.end42_crit_edge
    i32 -559038737, label %if.end36.do.end42_crit_edge356
  ]

if.end36.do.end42_crit_edge356:                   ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end42

if.end36.do.end42_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end42

lor.lhs.false22.i.i226:                           ; preds = %if.end36
  %and.i.i224 = and i32 %call.i39.i.i222, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i224)
  %cmp23.not.i.not.i225 = icmp eq i32 %and.i.i224, 0
  br i1 %cmp23.not.i.not.i225, label %lor.lhs.false22.i.i226.do.end42_crit_edge, label %if.end45

lor.lhs.false22.i.i226.do.end42_crit_edge:        ; preds = %lor.lhs.false22.i.i226
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end42

do.end42:                                         ; preds = %lor.lhs.false22.i.i226.do.end42_crit_edge, %if.end36.do.end42_crit_edge, %if.end36.do.end42_crit_edge356
  %dev43 = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 1
  %142 = ptrtoint ptr %dev43 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %dev43, align 4
  %conv44 = zext i8 %mac_idx to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %143, ptr noundef nonnull @.str.381, i32 noundef %conv44, i32 noundef -14) #10
  br label %cleanup

if.end45:                                         ; preds = %lor.lhs.false22.i.i226
  %cond.i.i227 = select i1 %cmp2.i.i, i32 52256, i32 60448
  %144 = ptrtoint ptr %hci.i37.i.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %hci.i37.i.i, align 8
  %read32.i.i.i228 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %145, i32 0, i32 9
  %146 = ptrtoint ptr %read32.i.i.i228 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %read32.i.i.i228, align 4
  %call.i.i.i229 = tail call i32 %147(ptr noundef %rtwdev, i32 noundef %cond.i.i227) #7
  %and.i6.i230 = and i32 %call.i.i.i229, -2
  %148 = ptrtoint ptr %hci.i37.i.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %hci.i37.i.i, align 8
  %write32.i.i.i231 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %149, i32 0, i32 12
  %150 = ptrtoint ptr %write32.i.i.i231 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %write32.i.i.i231, align 4
  tail call void %151(ptr noundef %rtwdev, i32 noundef %cond.i.i227, i32 noundef %and.i6.i230) #7
  %152 = ptrtoint ptr %hci.i37.i.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %hci.i37.i.i, align 8
  %read32.i38.i.i239 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %153, i32 0, i32 9
  %154 = ptrtoint ptr %read32.i38.i.i239 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %read32.i38.i.i239, align 4
  %call.i39.i.i240 = tail call i32 %155(ptr noundef %rtwdev, i32 noundef %spec.select) #7
  %156 = zext i32 %call.i39.i.i240 to i64
  call void @__sanitizer_cov_trace_switch(i64 %156, ptr @__sancov_gen_cov_switch_values.497)
  switch i32 %call.i39.i.i240, label %lor.lhs.false22.i.i244 [
    i32 -353703190, label %if.end45.do.end51_crit_edge
    i32 -559038737, label %if.end45.do.end51_crit_edge357
  ]

if.end45.do.end51_crit_edge357:                   ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end51

if.end45.do.end51_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end51

lor.lhs.false22.i.i244:                           ; preds = %if.end45
  %and.i.i242 = and i32 %call.i39.i.i240, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i242)
  %cmp23.not.i.not.i243 = icmp eq i32 %and.i.i242, 0
  br i1 %cmp23.not.i.not.i243, label %lor.lhs.false22.i.i244.do.end51_crit_edge, label %if.end54

lor.lhs.false22.i.i244.do.end51_crit_edge:        ; preds = %lor.lhs.false22.i.i244
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end51

do.end51:                                         ; preds = %lor.lhs.false22.i.i244.do.end51_crit_edge, %if.end45.do.end51_crit_edge, %if.end45.do.end51_crit_edge357
  %dev52 = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 1
  %157 = ptrtoint ptr %dev52 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %dev52, align 4
  %conv53 = zext i8 %mac_idx to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %158, ptr noundef nonnull @.str.384, i32 noundef %conv53, i32 noundef -14) #10
  br label %cleanup

if.end54:                                         ; preds = %lor.lhs.false22.i.i244
  %cond.i.i245 = select i1 %cmp2.i.i, i32 52228, i32 60420
  %159 = ptrtoint ptr %hci.i37.i.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %hci.i37.i.i, align 8
  %read32.i.i246 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %160, i32 0, i32 9
  %161 = ptrtoint ptr %read32.i.i246 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %read32.i.i246, align 4
  %call.i.i247 = tail call i32 %162(ptr noundef %rtwdev, i32 noundef %cond.i.i245) #7
  %and.i248 = and i32 %call.i.i247, -65536
  %163 = ptrtoint ptr %chip.i.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %chip.i.i, align 4
  %165 = ptrtoint ptr %164 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %164, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %166)
  %switch.selectcmp58.i = icmp eq i32 %166, 0
  %switch.select59.i = select i1 %switch.selectcmp58.i, i32 5376, i32 4352
  %or.i249 = or i32 %and.i248, %switch.select59.i
  %or38.i = or i32 %or.i249, 10
  %167 = ptrtoint ptr %hci.i37.i.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %hci.i37.i.i, align 8
  %write32.i.i250 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %168, i32 0, i32 12
  %169 = ptrtoint ptr %write32.i.i250 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %write32.i.i250, align 4
  tail call void %170(ptr noundef %rtwdev, i32 noundef %cond.i.i245, i32 noundef %or38.i) #7
  %cond.i62.i = select i1 %cmp2.i.i, i32 52400, i32 60592
  %171 = ptrtoint ptr %hci.i37.i.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %hci.i37.i.i, align 8
  %read32.i.i.i251 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %172, i32 0, i32 9
  %173 = ptrtoint ptr %read32.i.i.i251 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %read32.i.i.i251, align 4
  %call.i.i.i252 = tail call i32 %174(ptr noundef %rtwdev, i32 noundef %cond.i62.i) #7
  %or.i.i253 = or i32 %call.i.i.i252, 1048576
  %175 = ptrtoint ptr %hci.i37.i.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %hci.i37.i.i, align 8
  %write32.i.i.i254 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %176, i32 0, i32 12
  %177 = ptrtoint ptr %write32.i.i.i254 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %write32.i.i.i254, align 4
  tail call void %178(ptr noundef %rtwdev, i32 noundef %cond.i62.i, i32 noundef %or.i.i253) #7
  %179 = ptrtoint ptr %hci.i37.i.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %hci.i37.i.i, align 8
  %read32.i38.i.i262 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %180, i32 0, i32 9
  %181 = ptrtoint ptr %read32.i38.i.i262 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %read32.i38.i.i262, align 4
  %call.i39.i.i263 = tail call i32 %182(ptr noundef %rtwdev, i32 noundef %spec.select) #7
  %183 = zext i32 %call.i39.i.i263 to i64
  call void @__sanitizer_cov_trace_switch(i64 %183, ptr @__sancov_gen_cov_switch_values.498)
  switch i32 %call.i39.i.i263, label %lor.lhs.false22.i.i266 [
    i32 -353703190, label %if.end54.do.end60_crit_edge
    i32 -559038737, label %if.end54.do.end60_crit_edge358
  ]

if.end54.do.end60_crit_edge358:                   ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end60

if.end54.do.end60_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end60

lor.lhs.false22.i.i266:                           ; preds = %if.end54
  %and.i84.i = and i32 %call.i39.i.i263, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i84.i)
  %cmp23.not.i.not.i265 = icmp eq i32 %and.i84.i, 0
  br i1 %cmp23.not.i.not.i265, label %lor.lhs.false22.i.i266.do.end60_crit_edge, label %if.end.i279

lor.lhs.false22.i.i266.do.end60_crit_edge:        ; preds = %lor.lhs.false22.i.i266
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end60

if.end.i279:                                      ; preds = %lor.lhs.false22.i.i266
  %cond.i.i267 = select i1 %cmp2.i.i, i32 52796, i32 60988
  %184 = ptrtoint ptr %hci.i37.i.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %hci.i37.i.i, align 8
  %read8.i.i.i268 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %185, i32 0, i32 7
  %186 = ptrtoint ptr %read8.i.i.i268 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %read8.i.i.i268, align 4
  %call.i.i.i269 = tail call zeroext i8 %187(ptr noundef %rtwdev, i32 noundef %cond.i.i267) #7
  %or5.i.i = or i8 %call.i.i.i269, 4
  %188 = ptrtoint ptr %hci.i37.i.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %hci.i37.i.i, align 8
  %write8.i.i.i270 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %189, i32 0, i32 10
  %190 = ptrtoint ptr %write8.i.i.i270 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %write8.i.i.i270, align 4
  tail call void %191(ptr noundef %rtwdev, i32 noundef %cond.i.i267, i8 noundef zeroext %or5.i.i) #7
  %cond.i86.i = select i1 %cmp2.i.i, i32 52738, i32 60930
  %192 = ptrtoint ptr %hci.i37.i.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %hci.i37.i.i, align 8
  %read16.i.i271 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %193, i32 0, i32 8
  %194 = ptrtoint ptr %read16.i.i271 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %read16.i.i271, align 4
  %call.i.i272 = tail call zeroext i16 %195(ptr noundef %rtwdev, i32 noundef %cond.i86.i) #7
  %or.i.i273 = and i16 %call.i.i272, 15
  %or.i83.i = or i16 %or.i.i273, 8432
  %196 = ptrtoint ptr %hci.i37.i.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %hci.i37.i.i, align 8
  %write16.i.i274 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %197, i32 0, i32 11
  %198 = ptrtoint ptr %write16.i.i274 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %write16.i.i274, align 4
  tail call void %199(ptr noundef %rtwdev, i32 noundef %cond.i86.i, i16 noundef zeroext %or.i83.i) #7
  %cond.i89.i = select i1 %cmp2.i.i, i32 52736, i32 60928
  %200 = ptrtoint ptr %hci.i37.i.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %hci.i37.i.i, align 8
  %read8.i.i91.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %201, i32 0, i32 7
  %202 = ptrtoint ptr %read8.i.i91.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %read8.i.i91.i, align 4
  %call.i.i92.i = tail call zeroext i8 %203(ptr noundef %rtwdev, i32 noundef %cond.i89.i) #7
  %204 = and i8 %call.i.i92.i, -16
  %conv5.i.i = or i8 %204, 1
  %205 = ptrtoint ptr %hci.i37.i.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %hci.i37.i.i, align 8
  %write8.i.i93.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %206, i32 0, i32 10
  %207 = ptrtoint ptr %write8.i.i93.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %write8.i.i93.i, align 4
  tail call void %208(ptr noundef %rtwdev, i32 noundef %cond.i89.i, i8 noundef zeroext %conv5.i.i) #7
  %c0_rx_qta.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 5, i32 0, i32 3
  %c1_rx_qta.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 5, i32 0, i32 4
  %rx_qta.0.in.in.i = select i1 %cmp2.i.i, ptr %c0_rx_qta.i, ptr %c1_rx_qta.i
  %209 = ptrtoint ptr %rx_qta.0.in.in.i to i32
  call void @__asan_load2_noabort(i32 %209)
  %rx_qta.0.in.i = load i16, ptr %rx_qta.0.in.in.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 127, i16 %rx_qta.0.in.i)
  %cmp15.i = icmp ugt i16 %rx_qta.0.in.i, 127
  %rx_qta.0.i = zext i16 %rx_qta.0.in.i to i32
  %phi.bo.i = add nsw i32 %rx_qta.0.i, -1
  %cond.i = select i1 %cmp15.i, i32 126, i32 %phi.bo.i
  %ple_pg_size.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 5, i32 0, i32 2
  %210 = ptrtoint ptr %ple_pg_size.i to i32
  call void @__asan_load2_noabort(i32 %210)
  %211 = load i16, ptr %ple_pg_size.i, align 2
  %conv19.i = zext i16 %211 to i32
  %mul.i = mul i32 %cond.i, %conv19.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 32767, i32 %mul.i)
  %cmp20.i = icmp ugt i32 %mul.i, 32767
  %212 = ptrtoint ptr %hci.i37.i.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %hci.i37.i.i, align 8
  %read32.i.i.i275 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %213, i32 0, i32 9
  %214 = ptrtoint ptr %read32.i.i.i275 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %read32.i.i.i275, align 4
  %call.i.i97.i = tail call i32 %215(ptr noundef %rtwdev, i32 noundef %cond.i.i176) #7
  %and21.i.i276 = and i32 %call.i.i97.i, -4128769
  %216 = shl i32 %mul.i, 7
  %.op.i = and i32 %216, 4128768
  %and22.i.i = select i1 %cmp20.i, i32 4128768, i32 %.op.i
  %or.i98.i = or i32 %and22.i.i, %and21.i.i276
  %217 = ptrtoint ptr %hci.i37.i.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %hci.i37.i.i, align 8
  %write32.i.i.i277 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %218, i32 0, i32 12
  %219 = ptrtoint ptr %write32.i.i.i277 to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %write32.i.i.i277, align 4
  tail call void %220(ptr noundef %rtwdev, i32 noundef %cond.i.i176, i32 noundef %or.i98.i) #7
  %221 = ptrtoint ptr %chip.i.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %chip.i.i, align 4
  %223 = ptrtoint ptr %222 to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load i32, ptr %222, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %224)
  %cmp26.i = icmp eq i32 %224, 0
  br i1 %cmp26.i, label %land.lhs.true.i280, label %if.end.i279.if.end63_crit_edge

if.end.i279.if.end63_crit_edge:                   ; preds = %if.end.i279
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end63

land.lhs.true.i280:                               ; preds = %if.end.i279
  %cv.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 4, i32 1
  %225 = ptrtoint ptr %cv.i to i32
  call void @__asan_load1_noabort(i32 %225)
  %226 = load i8, ptr %cv.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %226)
  %cmp29.i = icmp eq i8 %226, 1
  br i1 %cmp29.i, label %if.then31.i, label %land.lhs.true.i280.if.end63_crit_edge

land.lhs.true.i280.if.end63_crit_edge:            ; preds = %land.lhs.true.i280
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end63

if.then31.i:                                      ; preds = %land.lhs.true.i280
  call void @__sanitizer_cov_trace_pc() #9
  %227 = ptrtoint ptr %hci.i37.i.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %hci.i37.i.i, align 8
  %read16.i.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %228, i32 0, i32 8
  %229 = ptrtoint ptr %read16.i.i.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %read16.i.i.i, align 4
  %call.i.i102.i = tail call zeroext i16 %230(ptr noundef %rtwdev, i32 noundef %cond.i86.i) #7
  %231 = and i16 %call.i.i102.i, 255
  %232 = ptrtoint ptr %hci.i37.i.i to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %hci.i37.i.i, align 8
  %write16.i.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %233, i32 0, i32 11
  %234 = ptrtoint ptr %write16.i.i.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %write16.i.i.i, align 4
  tail call void %235(ptr noundef %rtwdev, i32 noundef %cond.i86.i, i16 noundef zeroext %231) #7
  %236 = ptrtoint ptr %hci.i37.i.i to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %hci.i37.i.i, align 8
  %read16.i.i107.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %237, i32 0, i32 8
  %238 = ptrtoint ptr %read16.i.i107.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %read16.i.i107.i, align 4
  %call.i.i108.i = tail call zeroext i16 %239(ptr noundef %rtwdev, i32 noundef %cond.i89.i) #7
  %or5.i109.i = or i16 %call.i.i108.i, 4096
  %240 = ptrtoint ptr %hci.i37.i.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %hci.i37.i.i, align 8
  %write16.i.i110.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %241, i32 0, i32 11
  %242 = ptrtoint ptr %write16.i.i110.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %write16.i.i110.i, align 4
  tail call void %243(ptr noundef %rtwdev, i32 noundef %cond.i89.i, i16 noundef zeroext %or5.i109.i) #7
  br label %if.end63

do.end60:                                         ; preds = %lor.lhs.false22.i.i266.do.end60_crit_edge, %if.end54.do.end60_crit_edge, %if.end54.do.end60_crit_edge358
  %dev61 = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 1
  %244 = ptrtoint ptr %dev61 to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %dev61, align 4
  %conv62 = zext i8 %mac_idx to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %245, ptr noundef nonnull @.str.387, i32 noundef %conv62, i32 noundef -14) #10
  br label %cleanup

if.end63:                                         ; preds = %if.then31.i, %land.lhs.true.i280.if.end63_crit_edge, %if.end.i279.if.end63_crit_edge
  %246 = ptrtoint ptr %hci.i37.i.i to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %hci.i37.i.i, align 8
  %read8.i.i114.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %247, i32 0, i32 7
  %248 = ptrtoint ptr %read8.i.i114.i to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %read8.i.i114.i, align 4
  %call.i.i115.i = tail call zeroext i8 %249(ptr noundef %rtwdev, i32 noundef %cond.i24.i) #7
  %and.i116.i = and i8 %call.i.i115.i, -17
  %250 = ptrtoint ptr %hci.i37.i.i to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %hci.i37.i.i, align 8
  %write8.i.i117.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %251, i32 0, i32 10
  %252 = ptrtoint ptr %write8.i.i117.i to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %write8.i.i117.i, align 4
  tail call void %253(ptr noundef %rtwdev, i32 noundef %cond.i24.i, i8 noundef zeroext %and.i116.i) #7
  %254 = ptrtoint ptr %hci.i37.i.i to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %hci.i37.i.i, align 8
  %read32.i38.i.i286 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %255, i32 0, i32 9
  %256 = ptrtoint ptr %read32.i38.i.i286 to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %read32.i38.i.i286, align 4
  %call.i39.i.i287 = tail call i32 %257(ptr noundef %rtwdev, i32 noundef %spec.select) #7
  %258 = zext i32 %call.i39.i.i287 to i64
  call void @__sanitizer_cov_trace_switch(i64 %258, ptr @__sancov_gen_cov_switch_values.499)
  switch i32 %call.i39.i.i287, label %lor.lhs.false22.i.i290 [
    i32 -353703190, label %if.end63.do.end69_crit_edge
    i32 -559038737, label %if.end63.do.end69_crit_edge359
  ]

if.end63.do.end69_crit_edge359:                   ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end69

if.end63.do.end69_crit_edge:                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end69

lor.lhs.false22.i.i290:                           ; preds = %if.end63
  %and.i26.i = and i32 %call.i39.i.i287, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i26.i)
  %cmp23.not.i.not.i289 = icmp eq i32 %and.i26.i, 0
  br i1 %cmp23.not.i.not.i289, label %lor.lhs.false22.i.i290.do.end69_crit_edge, label %if.end72

lor.lhs.false22.i.i290.do.end69_crit_edge:        ; preds = %lor.lhs.false22.i.i290
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end69

do.end69:                                         ; preds = %lor.lhs.false22.i.i290.do.end69_crit_edge, %if.end63.do.end69_crit_edge, %if.end63.do.end69_crit_edge359
  %dev70 = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 1
  %259 = ptrtoint ptr %dev70 to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load ptr, ptr %dev70, align 4
  %conv71 = zext i8 %mac_idx to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %260, ptr noundef nonnull @.str.390, i32 noundef %conv71, i32 noundef -14) #10
  br label %cleanup

if.end72:                                         ; preds = %lor.lhs.false22.i.i290
  %cond.i.i291 = select i1 %cmp2.i.i, i32 49288, i32 57480
  %261 = ptrtoint ptr %hci.i37.i.i to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load ptr, ptr %hci.i37.i.i, align 8
  %read32.i.i292 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %262, i32 0, i32 9
  %263 = ptrtoint ptr %read32.i.i292 to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load ptr, ptr %read32.i.i292, align 4
  %call.i.i293 = tail call i32 %264(ptr noundef %rtwdev, i32 noundef %cond.i.i291) #7
  %and.i25.i = and i32 %call.i.i293, -4096
  %265 = ptrtoint ptr %hci.i37.i.i to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load ptr, ptr %hci.i37.i.i, align 8
  %write32.i.i294 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %266, i32 0, i32 12
  %267 = ptrtoint ptr %write32.i.i294 to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load ptr, ptr %write32.i.i294, align 4
  tail call void %268(ptr noundef %rtwdev, i32 noundef %cond.i.i291, i32 noundef %and.i25.i) #7
  %269 = ptrtoint ptr %hci.i37.i.i to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load ptr, ptr %hci.i37.i.i, align 8
  %read32.i38.i.i302 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %270, i32 0, i32 9
  %271 = ptrtoint ptr %read32.i38.i.i302 to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load ptr, ptr %read32.i38.i.i302, align 4
  %call.i39.i.i303 = tail call i32 %272(ptr noundef %rtwdev, i32 noundef %spec.select) #7
  %273 = zext i32 %call.i39.i.i303 to i64
  call void @__sanitizer_cov_trace_switch(i64 %273, ptr @__sancov_gen_cov_switch_values.500)
  switch i32 %call.i39.i.i303, label %lor.lhs.false22.i.i306 [
    i32 -353703190, label %if.end72.do.end78_crit_edge
    i32 -559038737, label %if.end72.do.end78_crit_edge360
  ]

if.end72.do.end78_crit_edge360:                   ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end78

if.end72.do.end78_crit_edge:                      ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end78

lor.lhs.false22.i.i306:                           ; preds = %if.end72
  %and.i57.i = and i32 %call.i39.i.i303, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i57.i)
  %cmp23.not.i.not.i305 = icmp eq i32 %and.i57.i, 0
  br i1 %cmp23.not.i.not.i305, label %lor.lhs.false22.i.i306.do.end78_crit_edge, label %if.end.i308

lor.lhs.false22.i.i306.do.end78_crit_edge:        ; preds = %lor.lhs.false22.i.i306
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end78

if.end.i308:                                      ; preds = %lor.lhs.false22.i.i306
  %type.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 7, i32 1
  %274 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %275)
  %cmp.i = icmp eq i32 %275, 0
  %cond.i.i307 = select i1 %cmp2.i.i, i32 50724, i32 58916
  br i1 %cmp.i, label %if.then1.i, label %if.end.i308.ptcl_init.exit_crit_edge

if.end.i308.ptcl_init.exit_crit_edge:             ; preds = %if.end.i308
  call void @__sanitizer_cov_trace_pc() #9
  br label %ptcl_init.exit

if.then1.i:                                       ; preds = %if.end.i308
  call void @__sanitizer_cov_trace_pc() #9
  %276 = ptrtoint ptr %hci.i37.i.i to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load ptr, ptr %hci.i37.i.i, align 8
  %read32.i.i309 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %277, i32 0, i32 9
  %278 = ptrtoint ptr %read32.i.i309 to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load ptr, ptr %read32.i.i309, align 4
  %call.i.i310 = tail call i32 %279(ptr noundef %rtwdev, i32 noundef %cond.i.i307) #7
  %and.i.i311 = and i32 %call.i.i310, 16711679
  %or.i312 = or i32 %and.i.i311, 67174400
  %280 = ptrtoint ptr %hci.i37.i.i to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load ptr, ptr %hci.i37.i.i, align 8
  %write32.i.i313 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %281, i32 0, i32 12
  %282 = ptrtoint ptr %write32.i.i313 to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load ptr, ptr %write32.i.i313, align 4
  tail call void %283(ptr noundef %rtwdev, i32 noundef %cond.i.i307, i32 noundef %or.i312) #7
  %cond.i60.i = select i1 %cmp2.i.i, i32 50920, i32 59112
  %284 = ptrtoint ptr %hci.i37.i.i to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load ptr, ptr %hci.i37.i.i, align 8
  %read32.i62.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %285, i32 0, i32 9
  %286 = ptrtoint ptr %read32.i62.i to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load ptr, ptr %read32.i62.i, align 4
  %call.i63.i = tail call i32 %287(ptr noundef %rtwdev, i32 noundef %cond.i60.i) #7
  %or.i47.i = and i32 %call.i63.i, -128
  %and.i314 = or i32 %or.i47.i, 63
  %288 = ptrtoint ptr %hci.i37.i.i to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load ptr, ptr %hci.i37.i.i, align 8
  %write32.i65.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %289, i32 0, i32 12
  %290 = ptrtoint ptr %write32.i65.i to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load ptr, ptr %write32.i65.i, align 4
  tail call void %291(ptr noundef %rtwdev, i32 noundef %cond.i60.i, i32 noundef %and.i314) #7
  br label %ptcl_init.exit

ptcl_init.exit:                                   ; preds = %if.then1.i, %if.end.i308.ptcl_init.exit_crit_edge
  %292 = ptrtoint ptr %hci.i37.i.i to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load ptr, ptr %hci.i37.i.i, align 8
  %read32.i69.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %293, i32 0, i32 9
  %294 = ptrtoint ptr %read32.i69.i to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load ptr, ptr %read32.i69.i, align 4
  %call.i70.i = tail call i32 %295(ptr noundef %rtwdev, i32 noundef %cond.i.i307) #7
  %and.i52.i = and i32 %call.i70.i, -16580609
  %or12.i = or i32 %and.i52.i, 327680
  %296 = ptrtoint ptr %hci.i37.i.i to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load ptr, ptr %hci.i37.i.i, align 8
  %write32.i72.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %297, i32 0, i32 12
  %298 = ptrtoint ptr %write32.i72.i to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load ptr, ptr %write32.i72.i, align 4
  tail call void %299(ptr noundef %rtwdev, i32 noundef %cond.i.i307, i32 noundef %or12.i) #7
  br label %cleanup

do.end78:                                         ; preds = %lor.lhs.false22.i.i306.do.end78_crit_edge, %if.end72.do.end78_crit_edge, %if.end72.do.end78_crit_edge360
  %dev79 = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 1
  %300 = ptrtoint ptr %dev79 to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load ptr, ptr %dev79, align 4
  %conv80 = zext i8 %mac_idx to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %301, ptr noundef nonnull @.str.393, i32 noundef %conv80, i32 noundef -14) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end78, %ptcl_init.exit, %do.end69, %do.end60, %do.end51, %do.end42, %do.end33, %do.end24, %do.end15, %do.end6, %do.end
  %retval.0 = phi i32 [ %retval.0.i.ph, %do.end ], [ %retval.0.i163, %do.end6 ], [ %retval.0.i178.ph, %do.end15 ], [ -14, %do.end24 ], [ -14, %do.end33 ], [ -14, %do.end42 ], [ -14, %do.end51 ], [ -14, %do.end60 ], [ -14, %do.end69 ], [ -14, %do.end78 ], [ 0, %ptcl_init.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rtw89_mac_enable_imr(ptr noundef %rtwdev, i8 noundef zeroext %mac_idx, i32 noundef %sel) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sel)
  %cmp.i = icmp eq i32 %sel, 0
  br i1 %cmp.i, label %entry.if.end17.i_crit_edge, label %if.else.i

entry.if.end17.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17.i

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sel)
  %cmp1.i = icmp eq i32 %sel, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %mac_idx)
  %cmp2.i = icmp eq i8 %mac_idx, 0
  %or.cond.i = and i1 %cmp2.i, %cmp1.i
  br i1 %or.cond.i, label %if.else.i.if.end17.i_crit_edge, label %if.else6.i

if.else.i.if.end17.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17.i

if.else6.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %mac_idx)
  %cmp11.i = icmp eq i8 %mac_idx, 1
  %or.cond36.i = and i1 %cmp11.i, %cmp1.i
  br i1 %or.cond36.i, label %if.else6.i.if.end17.i_crit_edge, label %if.else6.i.do.end_crit_edge

if.else6.i.do.end_crit_edge:                      ; preds = %if.else6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.else6.i.if.end17.i_crit_edge:                  ; preds = %if.else6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17.i

if.end17.i:                                       ; preds = %if.else6.i.if.end17.i_crit_edge, %if.else.i.if.end17.i_crit_edge, %entry.if.end17.i_crit_edge
  %.sink.i = phi i32 [ 33792, %entry.if.end17.i_crit_edge ], [ 49152, %if.else.i.if.end17.i_crit_edge ], [ 128, %if.else6.i.if.end17.i_crit_edge ]
  %val.0.i = phi i32 [ 1610612736, %entry.if.end17.i_crit_edge ], [ 1073741824, %if.else.i.if.end17.i_crit_edge ], [ 1073741824, %if.else6.i.if.end17.i_crit_edge ]
  %hci.i37.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 7
  %0 = ptrtoint ptr %hci.i37.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hci.i37.i, align 8
  %read32.i38.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %read32.i38.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %read32.i38.i, align 4
  %call.i39.i = tail call i32 %3(ptr noundef %rtwdev, i32 noundef %.sink.i) #7
  %4 = zext i32 %call.i39.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.501)
  switch i32 %call.i39.i, label %lor.lhs.false22.i [
    i32 -353703190, label %if.end17.i.do.end_crit_edge
    i32 -559038737, label %if.end17.i.do.end_crit_edge115
  ]

if.end17.i.do.end_crit_edge115:                   ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.end17.i.do.end_crit_edge:                      ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

lor.lhs.false22.i:                                ; preds = %if.end17.i
  %and.i = and i32 %call.i39.i, %val.0.i
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %val.0.i)
  %cmp23.not.i = icmp eq i32 %and.i, %val.0.i
  br i1 %cmp23.not.i, label %if.end, label %lor.lhs.false22.i.do.end_crit_edge

lor.lhs.false22.i.do.end_crit_edge:               ; preds = %lor.lhs.false22.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false22.i.do.end_crit_edge, %if.end17.i.do.end_crit_edge, %if.end17.i.do.end_crit_edge115, %if.else6.i.do.end_crit_edge
  %retval.0.i.ph = phi i32 [ -14, %lor.lhs.false22.i.do.end_crit_edge ], [ -14, %if.end17.i.do.end_crit_edge ], [ -14, %if.end17.i.do.end_crit_edge115 ], [ -22, %if.else6.i.do.end_crit_edge ]
  %dev = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 1
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 4
  %conv = zext i8 %mac_idx to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.443, i32 noundef %sel, i32 noundef %conv) #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false22.i
  br i1 %cmp.i, label %if.then2, label %if.then5

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %hci.i37.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hci.i37.i, align 8
  %read32.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %8, i32 0, i32 9
  %9 = ptrtoint ptr %read32.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %read32.i.i, align 4
  %call.i.i = tail call i32 %10(ptr noundef %rtwdev, i32 noundef 40732) #7
  %and.i50 = and i32 %call.i.i, -525
  %11 = ptrtoint ptr %hci.i37.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hci.i37.i, align 8
  %write32.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %12, i32 0, i32 12
  %13 = ptrtoint ptr %write32.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %write32.i.i, align 4
  tail call void %14(ptr noundef %rtwdev, i32 noundef 40732, i32 noundef %and.i50) #7
  %15 = ptrtoint ptr %hci.i37.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hci.i37.i, align 8
  %read32.i.i52 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %16, i32 0, i32 9
  %17 = ptrtoint ptr %read32.i.i52 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %read32.i.i52, align 4
  %call.i.i53 = tail call i32 %18(ptr noundef %rtwdev, i32 noundef 40748) #7
  %and.i54 = and i32 %call.i.i53, -13
  %19 = ptrtoint ptr %hci.i37.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %hci.i37.i, align 8
  %write32.i.i55 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %20, i32 0, i32 12
  %21 = ptrtoint ptr %write32.i.i55 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %write32.i.i55, align 4
  tail call void %22(ptr noundef %rtwdev, i32 noundef 40748, i32 noundef %and.i54) #7
  %23 = ptrtoint ptr %hci.i37.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %hci.i37.i, align 8
  %read32.i.i57 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %24, i32 0, i32 9
  %25 = ptrtoint ptr %read32.i.i57 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %read32.i.i57, align 4
  %call.i.i58 = tail call i32 %26(ptr noundef %rtwdev, i32 noundef 34896) #7
  %and.i59 = and i32 %call.i.i58, -133
  %27 = ptrtoint ptr %hci.i37.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %hci.i37.i, align 8
  %write32.i.i60 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %28, i32 0, i32 12
  %29 = ptrtoint ptr %write32.i.i60 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %write32.i.i60, align 4
  tail call void %30(ptr noundef %rtwdev, i32 noundef 34896, i32 noundef %and.i59) #7
  %31 = ptrtoint ptr %hci.i37.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %hci.i37.i, align 8
  %read32.i.i62 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %32, i32 0, i32 9
  %33 = ptrtoint ptr %read32.i.i62 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %read32.i.i62, align 4
  %call.i.i63 = tail call i32 %34(ptr noundef %rtwdev, i32 noundef 34900) #7
  %and.i64 = and i32 %call.i.i63, -33554433
  %35 = ptrtoint ptr %hci.i37.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %hci.i37.i, align 8
  %write32.i.i65 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %36, i32 0, i32 12
  %37 = ptrtoint ptr %write32.i.i65 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %write32.i.i65, align 4
  tail call void %38(ptr noundef %rtwdev, i32 noundef 34900, i32 noundef %and.i64) #7
  %39 = ptrtoint ptr %hci.i37.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %hci.i37.i, align 8
  %read32.i.i67 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %40, i32 0, i32 9
  %41 = ptrtoint ptr %read32.i.i67 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %read32.i.i67, align 4
  %call.i.i68 = tail call i32 %42(ptr noundef %rtwdev, i32 noundef 36920) #7
  %and.i69 = and i32 %call.i.i68, -33
  %43 = ptrtoint ptr %hci.i37.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %hci.i37.i, align 8
  %write32.i.i70 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %44, i32 0, i32 12
  %45 = ptrtoint ptr %write32.i.i70 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %write32.i.i70, align 4
  tail call void %46(ptr noundef %rtwdev, i32 noundef 36920, i32 noundef %and.i69) #7
  %47 = ptrtoint ptr %hci.i37.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %hci.i37.i, align 8
  %read32.i.i72 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %48, i32 0, i32 9
  %49 = ptrtoint ptr %read32.i.i72 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %read32.i.i72, align 4
  %call.i.i73 = tail call i32 %50(ptr noundef %rtwdev, i32 noundef 37936) #7
  %and.i74 = and i32 %call.i.i73, -17
  %51 = ptrtoint ptr %hci.i37.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %hci.i37.i, align 8
  %write32.i.i75 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %52, i32 0, i32 12
  %53 = ptrtoint ptr %write32.i.i75 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %write32.i.i75, align 4
  tail call void %54(ptr noundef %rtwdev, i32 noundef 37936, i32 noundef %and.i74) #7
  %55 = ptrtoint ptr %hci.i37.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %hci.i37.i, align 8
  %read32.i.i77 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %56, i32 0, i32 9
  %57 = ptrtoint ptr %read32.i.i77 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %read32.i.i77, align 4
  %call.i.i78 = tail call i32 %58(ptr noundef %rtwdev, i32 noundef 33040) #7
  %or.i = or i32 %call.i.i78, 32
  %59 = ptrtoint ptr %hci.i37.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %hci.i37.i, align 8
  %write32.i.i79 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %60, i32 0, i32 12
  %61 = ptrtoint ptr %write32.i.i79 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %write32.i.i79, align 4
  tail call void %62(ptr noundef %rtwdev, i32 noundef 33040, i32 noundef %or.i) #7
  %63 = ptrtoint ptr %hci.i37.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %hci.i37.i, align 8
  %read32.i.i81 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %64, i32 0, i32 9
  %65 = ptrtoint ptr %read32.i.i81 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %read32.i.i81, align 4
  %call.i.i82 = tail call i32 %66(ptr noundef %rtwdev, i32 noundef 40732) #7
  %and.i83 = and i32 %call.i.i82, -3
  %67 = ptrtoint ptr %hci.i37.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %hci.i37.i, align 8
  %write32.i.i84 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %68, i32 0, i32 12
  %69 = ptrtoint ptr %write32.i.i84 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %write32.i.i84, align 4
  tail call void %70(ptr noundef %rtwdev, i32 noundef 40732, i32 noundef %and.i83) #7
  br label %cleanup

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %mac_idx)
  %cmp.i85 = icmp eq i8 %mac_idx, 0
  %cond.i = select i1 %cmp.i85, i32 50152, i32 58344
  %71 = ptrtoint ptr %hci.i37.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %hci.i37.i, align 8
  %read32.i.i87 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %72, i32 0, i32 9
  %73 = ptrtoint ptr %read32.i.i87 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %read32.i.i87, align 4
  %call.i.i88 = tail call i32 %74(ptr noundef %rtwdev, i32 noundef %cond.i) #7
  %and.i89 = and i32 %call.i.i88, -3
  %75 = ptrtoint ptr %hci.i37.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %hci.i37.i, align 8
  %write32.i.i90 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %76, i32 0, i32 12
  %77 = ptrtoint ptr %write32.i.i90 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %write32.i.i90, align 4
  tail call void %78(ptr noundef %rtwdev, i32 noundef %cond.i, i32 noundef %and.i89) #7
  %cond.i92 = select i1 %cmp.i85, i32 51200, i32 59392
  %79 = ptrtoint ptr %hci.i37.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %hci.i37.i, align 8
  %read32.i.i94 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %80, i32 0, i32 9
  %81 = ptrtoint ptr %read32.i.i94 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %read32.i.i94, align 4
  %call.i.i95 = tail call i32 %82(ptr noundef %rtwdev, i32 noundef %cond.i92) #7
  %and.i96 = and i32 %call.i.i95, -8421377
  %83 = ptrtoint ptr %hci.i37.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %hci.i37.i, align 8
  %write32.i.i97 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %84, i32 0, i32 12
  %85 = ptrtoint ptr %write32.i.i97 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %write32.i.i97, align 4
  tail call void %86(ptr noundef %rtwdev, i32 noundef %cond.i92, i32 noundef %and.i96) #7
  %cond.i99 = select i1 %cmp.i85, i32 50880, i32 59072
  %87 = ptrtoint ptr %hci.i37.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %hci.i37.i, align 8
  %write32.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %88, i32 0, i32 12
  %89 = ptrtoint ptr %write32.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %write32.i, align 4
  tail call void %90(ptr noundef %rtwdev, i32 noundef %cond.i99, i32 noundef 276824065) #7
  %cond.i101 = select i1 %cmp.i85, i32 52476, i32 60668
  %91 = ptrtoint ptr %hci.i37.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %hci.i37.i, align 8
  %read32.i.i103 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %92, i32 0, i32 9
  %93 = ptrtoint ptr %read32.i.i103 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %read32.i.i103, align 4
  %call.i.i104 = tail call i32 %94(ptr noundef %rtwdev, i32 noundef %cond.i101) #7
  %or.i105 = or i32 %call.i.i104, 4128768
  %95 = ptrtoint ptr %hci.i37.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %hci.i37.i, align 8
  %write32.i.i106 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %96, i32 0, i32 12
  %97 = ptrtoint ptr %write32.i.i106 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %write32.i.i106, align 4
  tail call void %98(ptr noundef %rtwdev, i32 noundef %cond.i101, i32 noundef %or.i105) #7
  %cond.i108 = select i1 %cmp.i85, i32 52980, i32 61172
  %99 = ptrtoint ptr %hci.i37.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %hci.i37.i, align 8
  %read32.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %100, i32 0, i32 9
  %101 = ptrtoint ptr %read32.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %read32.i, align 4
  %call.i = tail call i32 %102(ptr noundef %rtwdev, i32 noundef %cond.i108) #7
  %or = and i32 %call.i, -1028097
  %and = or i32 %or, 917504
  %103 = ptrtoint ptr %hci.i37.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %hci.i37.i, align 8
  %write32.i111 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %104, i32 0, i32 12
  %105 = ptrtoint ptr %write32.i111 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %write32.i111, align 4
  tail call void %106(ptr noundef %rtwdev, i32 noundef %cond.i108, i32 noundef %and) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then5, %if.then2, %do.end
  %retval.0 = phi i32 [ %retval.0.i.ph, %do.end ], [ 0, %if.then5 ], [ 0, %if.then2 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i16 @rtw89_mac_dle_buf_req(ptr noundef %rtwdev, i1 noundef zeroext %wd) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %cond = select i1 %wd, i32 38912, i32 38944
  %hci.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 7
  %0 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hci.i, align 8
  %write32.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %write32.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %write32.i, align 4
  tail call void %3(ptr noundef %rtwdev, i32 noundef %cond, i32 noundef -2147483616) #7
  %cond3 = select i1 %wd, i32 38916, i32 38948
  %call = tail call i64 @ktime_get() #7
  %add.i = add i64 %call, 2000000
  tail call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 2145) #7
  %4 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hci.i, align 8
  %read32.i6 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %5, i32 0, i32 9
  %6 = ptrtoint ptr %read32.i6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %read32.i6, align 4
  %call.i7 = tail call i32 %7(ptr noundef %rtwdev, i32 noundef %cond3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i7)
  %tobool13.not8 = icmp sgt i32 %call.i7, -1
  br i1 %tobool13.not8, label %entry.land.lhs.true_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then25.land.lhs.true_crit_edge, %entry.land.lhs.true_crit_edge
  %call17 = tail call i64 @ktime_get() #7
  call void @__sanitizer_cov_trace_cmp8(i64 %call17, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call17, %add.i
  br i1 %cmp3.i, label %if.then21, label %if.then25

if.then21:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hci.i, align 8
  %read32.i3 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %9, i32 0, i32 9
  %10 = ptrtoint ptr %read32.i3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %read32.i3, align 4
  %call.i4 = tail call i32 %11(ptr noundef %rtwdev, i32 noundef %cond3) #7
  br label %for.end

if.then25:                                        ; preds = %land.lhs.true
  tail call void @usleep_range_state(i32 noundef 1, i32 noundef 1, i32 noundef 2) #7
  %12 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hci.i, align 8
  %read32.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %13, i32 0, i32 9
  %14 = ptrtoint ptr %read32.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %read32.i, align 4
  %call.i = tail call i32 %15(ptr noundef %rtwdev, i32 noundef %cond3) #7
  %tobool13.not = icmp sgt i32 %call.i, -1
  br i1 %tobool13.not, label %if.then25.land.lhs.true_crit_edge, label %if.then25.for.end_crit_edge

if.then25.for.end_crit_edge:                      ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.then25.land.lhs.true_crit_edge:                ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true

for.end:                                          ; preds = %if.then25.for.end_crit_edge, %if.then21, %entry.for.end_crit_edge
  %val.0 = phi i32 [ %call.i4, %if.then21 ], [ %call.i7, %entry.for.end_crit_edge ], [ %call.i, %if.then25.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val.0)
  %tobool28.not.inv = icmp slt i32 %val.0, 0
  %16 = trunc i32 %val.0 to i16
  %conv51 = and i16 %16, 4095
  %retval.0 = select i1 %tobool28.not.inv, i16 %conv51, i16 -1
  ret i16 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rtw89_mac_set_cpuio(ptr noundef %rtwdev, ptr nocapture noundef %ctrl_para, i1 noundef zeroext %wd) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %cmd_type1 = getelementptr inbounds %struct.rtw89_cpuio_ctrl, ptr %ctrl_para, i32 0, i32 3
  %0 = ptrtoint ptr %cmd_type1 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %cmd_type1, align 2
  %cond = select i1 %wd, i32 38936, i32 38968
  %end_pktid = getelementptr inbounds %struct.rtw89_cpuio_ctrl, ptr %ctrl_para, i32 0, i32 2
  %2 = ptrtoint ptr %end_pktid to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %end_pktid, align 2
  %start_pktid = getelementptr inbounds %struct.rtw89_cpuio_ctrl, ptr %ctrl_para, i32 0, i32 1
  %4 = ptrtoint ptr %start_pktid to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %start_pktid, align 2
  %6 = and i16 %5, 4095
  %and528.i.i = zext i16 %6 to i32
  %mul.i.i = shl nuw nsw i32 %and528.i.i, 16
  %7 = and i16 %3, 4095
  %conv8.i.i141 = zext i16 %7 to i32
  %or.i = or i32 %mul.i.i, %conv8.i.i141
  %hci.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 7
  %8 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hci.i, align 8
  %write32.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %9, i32 0, i32 12
  %10 = ptrtoint ptr %write32.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %write32.i, align 4
  tail call void %11(ptr noundef %rtwdev, i32 noundef %cond, i32 noundef %or.i) #7
  %cond8 = select i1 %wd, i32 38932, i32 38964
  %dst_qid = getelementptr inbounds %struct.rtw89_cpuio_ctrl, ptr %ctrl_para, i32 0, i32 8
  %12 = ptrtoint ptr %dst_qid to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %dst_qid, align 1
  %dst_pid = getelementptr inbounds %struct.rtw89_cpuio_ctrl, ptr %ctrl_para, i32 0, i32 7
  %14 = ptrtoint ptr %dst_pid to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %dst_pid, align 2
  %16 = and i8 %15, 7
  %and528.i.i187 = zext i8 %16 to i32
  %mul.i.i188 = shl nuw nsw i32 %and528.i.i187, 6
  %src_qid = getelementptr inbounds %struct.rtw89_cpuio_ctrl, ptr %ctrl_para, i32 0, i32 6
  %17 = ptrtoint ptr %src_qid to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %src_qid, align 1
  %19 = and i8 %18, 63
  %and528.i.i170 = zext i8 %19 to i32
  %mul.i.i171 = shl nuw nsw i32 %and528.i.i170, 16
  %src_pid = getelementptr inbounds %struct.rtw89_cpuio_ctrl, ptr %ctrl_para, i32 0, i32 5
  %20 = ptrtoint ptr %src_pid to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %src_pid, align 2
  %22 = and i8 %21, 7
  %and528.i.i154 = zext i8 %22 to i32
  %mul.i.i155 = shl nuw nsw i32 %and528.i.i154, 22
  %or.i173 = or i32 %mul.i.i171, %mul.i.i155
  %or.i190 = or i32 %mul.i.i188, %or.i173
  %23 = and i8 %13, 63
  %conv8.i.i206 = zext i8 %23 to i32
  %or.i207 = or i32 %or.i190, %conv8.i.i206
  %24 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %hci.i, align 8
  %write32.i259 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %25, i32 0, i32 12
  %26 = ptrtoint ptr %write32.i259 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %write32.i259, align 4
  tail call void %27(ptr noundef %rtwdev, i32 noundef %cond8, i32 noundef %or.i207) #7
  %cond19 = select i1 %wd, i32 38928, i32 38960
  %28 = ptrtoint ptr %ctrl_para to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %ctrl_para, align 2
  %macid = getelementptr inbounds %struct.rtw89_cpuio_ctrl, ptr %ctrl_para, i32 0, i32 4
  %30 = ptrtoint ptr %macid to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %macid, align 1
  %conv2.i.i235 = zext i8 %31 to i32
  %mul.i.i237 = shl nuw nsw i32 %conv2.i.i235, 16
  %32 = and i8 %1, 15
  %and528.i.i220 = zext i8 %32 to i32
  %mul.i.i221 = shl nuw nsw i32 %and528.i.i220, 24
  %or.i239 = or i32 %mul.i.i237, %mul.i.i221
  %33 = and i16 %29, 255
  %conv8.i.i255 = zext i16 %33 to i32
  %or.i256 = or i32 %or.i239, %conv8.i.i255
  %or = or i32 %or.i256, -2147483648
  %34 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %hci.i, align 8
  %write32.i261 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %35, i32 0, i32 12
  %36 = ptrtoint ptr %write32.i261 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %write32.i261, align 4
  tail call void %37(ptr noundef %rtwdev, i32 noundef %cond19, i32 noundef %or) #7
  %cond27 = select i1 %wd, i32 38940, i32 38972
  %call28 = tail call i64 @ktime_get() #7
  %add.i = add i64 %call28, 2000000
  tail call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 2195) #7
  %38 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %hci.i, align 8
  %read32.i284 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %39, i32 0, i32 9
  %40 = ptrtoint ptr %read32.i284 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %read32.i284, align 4
  %call.i285 = tail call i32 %41(ptr noundef %rtwdev, i32 noundef %cond27) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i285)
  %tobool38.not286 = icmp sgt i32 %call.i285, -1
  br i1 %tobool38.not286, label %entry.land.lhs.true_crit_edge, label %entry.if.end57_crit_edge

entry.if.end57_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end57

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then50.land.lhs.true_crit_edge, %entry.land.lhs.true_crit_edge
  %call42 = tail call i64 @ktime_get() #7
  call void @__sanitizer_cov_trace_cmp8(i64 %call42, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call42, %add.i
  br i1 %cmp3.i, label %for.end, label %if.then50

if.then50:                                        ; preds = %land.lhs.true
  tail call void @usleep_range_state(i32 noundef 1, i32 noundef 1, i32 noundef 2) #7
  %42 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %hci.i, align 8
  %read32.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %43, i32 0, i32 9
  %44 = ptrtoint ptr %read32.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %read32.i, align 4
  %call.i = tail call i32 %45(ptr noundef %rtwdev, i32 noundef %cond27) #7
  %tobool38.not = icmp sgt i32 %call.i, -1
  br i1 %tobool38.not, label %if.then50.land.lhs.true_crit_edge, label %if.then50.if.end57_crit_edge

if.then50.if.end57_crit_edge:                     ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end57

if.then50.land.lhs.true_crit_edge:                ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true

for.end:                                          ; preds = %land.lhs.true
  %46 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %hci.i, align 8
  %read32.i264 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %47, i32 0, i32 9
  %48 = ptrtoint ptr %read32.i264 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %read32.i264, align 4
  %call.i265 = tail call i32 %49(ptr noundef %rtwdev, i32 noundef %cond27) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i265)
  %tobool53.not.inv = icmp slt i32 %call.i265, 0
  br i1 %tobool53.not.inv, label %for.end.if.end57_crit_edge, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end.if.end57_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end57

if.end57:                                         ; preds = %for.end.if.end57_crit_edge, %if.then50.if.end57_crit_edge, %entry.if.end57_crit_edge
  %val.0268 = phi i32 [ %call.i265, %for.end.if.end57_crit_edge ], [ %call.i285, %entry.if.end57_crit_edge ], [ %call.i, %if.then50.if.end57_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %1)
  %switch = icmp ult i8 %1, 2
  br i1 %switch, label %do.end77, label %if.end57.cleanup_crit_edge

if.end57.cleanup_crit_edge:                       ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end77:                                         ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #9
  %50 = trunc i32 %val.0268 to i16
  %conv81 = and i16 %50, 4095
  %pktid = getelementptr inbounds %struct.rtw89_cpuio_ctrl, ptr %ctrl_para, i32 0, i32 9
  %51 = ptrtoint ptr %pktid to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 %conv81, ptr %pktid, align 2
  br label %cleanup

cleanup:                                          ; preds = %do.end77, %if.end57.cleanup_crit_edge, %for.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -110, %for.end.cleanup_crit_edge ], [ 0, %if.end57.cleanup_crit_edge ], [ 0, %do.end77 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw89_fw_h2c_macid_pause(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtw89_mac_c2h_rec_ack(ptr noundef %rtwdev, ptr nocapture noundef readonly %c2h, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.sk_buff, ptr %c2h, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %add.ptr = getelementptr i32, ptr %1, i32 2
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %add.ptr, align 4
  %4 = tail call i32 @llvm.bswap.i32(i32 %3) #7
  %and.i = and i32 %4, 3
  %div4.i1820 = lshr i32 %4, 2
  %div4.i.zext = and i32 %div4.i1820, 63
  %div4.i151921 = lshr i32 %4, 8
  %div4.i15.zext = and i32 %div4.i151921, 255
  %and.i16 = lshr i32 %4, 16
  %div4.i1722 = and i32 %and.i16, 255
  tail call void (ptr, i32, ptr, ...) @__rtw89_debug(ptr noundef %rtwdev, i32 noundef 4096, ptr noundef nonnull @.str.445, i32 noundef %and.i, i32 noundef %div4.i.zext, i32 noundef %div4.i15.zext, i32 noundef %div4.i1722) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtw89_mac_c2h_done_ack(ptr noundef %rtwdev, ptr nocapture noundef readonly %c2h, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.sk_buff, ptr %c2h, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %add.ptr = getelementptr i32, ptr %1, i32 2
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %add.ptr, align 4
  %4 = tail call i32 @llvm.bswap.i32(i32 %3) #7
  %and.i = and i32 %4, 3
  %div4.i2426 = lshr i32 %4, 2
  %div4.i.zext = and i32 %div4.i2426, 63
  %div4.i192527 = lshr i32 %4, 8
  %div4.i19.zext = and i32 %div4.i192527, 255
  %and.i20 = lshr i32 %4, 16
  %div4.i2128 = and i32 %and.i20, 255
  %div4.i2329 = lshr i32 %4, 24
  tail call void (ptr, i32, ptr, ...) @__rtw89_debug(ptr noundef %rtwdev, i32 noundef 4096, ptr noundef nonnull @.str.446, i32 noundef %and.i, i32 noundef %div4.i.zext, i32 noundef %div4.i19.zext, i32 noundef %div4.i2128, i32 noundef %div4.i2329) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtw89_mac_c2h_log(ptr nocapture noundef readonly %rtwdev, ptr nocapture noundef readonly %c2h, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %sub = add i32 %len, -8
  %data = getelementptr inbounds %struct.sk_buff, ptr %c2h, i32 0, i32 19
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %add.ptr = getelementptr i32, ptr %3, i32 2
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1, ptr noundef nonnull @.str.447, i32 noundef %sub, ptr noundef %add.ptr) #10
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @rtw89_mac_c2h_macid_pause(ptr nocapture noundef %rtwdev, ptr nocapture noundef %c2h, i32 noundef %len) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

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

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 377)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 377)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !11, !12, !13, !15, !16, !17, !18, !19, !21, !23, !24, !25, !26, !28, !29, !30, !32, !34, !36, !37, !38, !39, !40, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !64, !65, !66, !67, !69, !70, !71, !73, !74, !75, !76, !78, !79, !80, !82, !83, !84, !86, !87, !88, !89, !91, !92, !93, !94, !96, !97, !98, !100, !101, !102, !103, !105, !106, !107, !109, !111, !113, !115, !116, !117, !118, !120, !121, !122, !123, !125, !126, !127, !128, !130, !131, !132, !134, !135, !136, !138, !139, !140, !142, !143, !144, !146, !147, !148, !150, !151, !152, !154, !155, !156, !158, !159, !160, !162, !163, !164, !166, !167, !168, !170, !171, !172, !174, !175, !176, !178, !179, !180, !182, !183, !184, !186, !187, !188, !190, !191, !192, !194, !195, !196, !198, !199, !200, !202, !203, !204, !206, !207, !208, !210, !211, !212, !214, !215, !216, !218, !219, !220, !222, !223, !224, !226, !227, !228, !230, !231, !232, !234, !235, !236, !238, !239, !240, !242, !243, !244, !246, !247, !249, !250, !252, !253, !255, !256, !258, !259, !260, !262, !263, !264, !266, !267, !268, !270, !271, !272, !274, !275, !276, !278, !279, !280, !282, !283, !284, !286, !287, !288, !290, !291, !292, !294, !295, !296, !298, !299, !300, !302, !303, !304, !306, !307, !308, !310, !311, !313, !314, !316, !317, !318, !320, !321, !322, !324, !325, !326, !328, !329, !330, !332, !333, !334, !336, !337, !338, !340, !341, !342, !344, !345, !346, !348, !349, !350, !352, !353, !354, !356, !357, !358, !360, !361, !362, !364, !365, !366, !368, !369, !370, !372, !373, !374, !376, !377, !378, !380, !381, !382, !383, !385, !386, !387, !389, !390, !391, !393, !394, !395, !397, !398, !399, !401, !402, !403, !405, !406, !407, !408, !410, !411, !412, !413, !415, !416, !417, !419, !420, !422, !423, !424, !426, !427, !429, !430, !431, !433, !434, !435, !437, !438, !439, !441, !442, !443, !444, !446, !447, !448, !449, !451, !452, !453, !455, !456, !457, !459, !460, !461, !462, !464, !465, !466, !467, !469, !470, !471, !473, !474, !475, !477, !478, !479, !480, !482, !483, !484, !486, !487, !488, !489, !491, !492, !493, !495, !496, !497, !499, !500, !501, !503, !504, !505, !507, !508, !509, !511, !512, !513, !515, !516, !517, !519, !520, !521, !522, !524, !525, !526, !527, !529, !530, !531, !533, !534, !535, !536, !538, !539, !540, !542, !543, !544, !546, !547, !548, !550, !551, !552, !554, !555, !556, !558, !559, !560, !561, !563, !564, !565, !567, !568, !569, !571, !572, !573, !575, !576, !577, !579, !580, !581, !582, !584, !585, !586, !587, !589, !590, !591, !593, !594, !595, !597, !598, !599, !601, !602, !603, !605, !606, !607, !609, !610, !611, !613, !614, !615, !617, !618, !619, !621, !622, !623, !625, !626, !627, !628, !630, !631, !632, !633, !635, !636, !637, !639, !640, !641, !643, !644, !645, !646, !648, !649, !650, !652, !653, !654, !656, !657, !658, !659, !661, !662, !663, !665, !666, !667, !669, !670, !671, !673, !674, !675, !677, !678, !679, !681, !682, !683, !685, !686, !688, !689, !690, !692, !693, !694, !696, !697, !698, !700, !701, !702, !704, !705, !706, !707, !709, !711, !713, !715, !717, !719, !720, !721, !722, !724, !726, !727, !729, !731, !732, !733}
!llvm.module.flags = !{!734, !735, !736, !737, !738, !739, !740, !741}
!llvm.ident = !{!742}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/realtek/rtw89/mac.c", i32 42, i32 8}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/realtek/rtw89/mac.c", i32 45, i32 3}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @rtw89_mac_write_lte._entry, !3, !"_entry", i1 false, i1 false}
!8 = !{ptr @rtw89_mac_write_lte._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!9 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/net/wireless/realtek/rtw89/mac.c", i32 61, i32 3}
!11 = !{ptr @rtw89_mac_read_lte._entry, !10, !"_entry", i1 false, i1 false}
!12 = !{ptr @rtw89_mac_read_lte._entry_ptr, !10, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/net/wireless/realtek/rtw89/mac.c", i32 446, i32 3}
!15 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.8, !14, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @rtw89_mac_get_err_status._entry, !14, !"_entry", i1 false, i1 false}
!18 = !{ptr @rtw89_mac_get_err_status._entry_ptr, !14, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @__ksymtab_rtw89_mac_get_err_status, !20, !"__ksymtab_rtw89_mac_get_err_status", i1 false, i1 false}
!20 = !{!"../drivers/net/wireless/realtek/rtw89/mac.c", i32 458, i32 1}
!21 = !{ptr @.str.9, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/net/wireless/realtek/rtw89/mac.c", i32 466, i32 3}
!23 = !{ptr @.str.10, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @rtw89_mac_set_err_status._entry, !22, !"_entry", i1 false, i1 false}
!25 = !{ptr @rtw89_mac_set_err_status._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.12, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/wireless/realtek/rtw89/mac.c", i32 473, i32 3}
!28 = !{ptr @rtw89_mac_set_err_status._entry.11, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @rtw89_mac_set_err_status._entry_ptr.13, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @__ksymtab_rtw89_mac_set_err_status, !31, !"__ksymtab_rtw89_mac_set_err_status", i1 false, i1 false}
!31 = !{!"../drivers/net/wireless/realtek/rtw89/mac.c", i32 482, i32 1}
!32 = !{ptr @rtw_hfc_preccfg_pcie, !33, !"rtw_hfc_preccfg_pcie", i1 false, i1 false}
!33 = !{!"../drivers/net/wireless/realtek/rtw89/mac.c", i32 484, i32 33}
!34 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/wireless/realtek/rtw89/mac.c", i32 998, i32 3}
!36 = !{ptr @.str.15, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @rtw89_mac_power_mode_change._entry, !35, !"_entry", i1 false, i1 false}
!38 = !{ptr @rtw89_mac_power_mode_change._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.16, !35, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.17, !35, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @wde_size0, !42, !"wde_size0", i1 false, i1 false}
!42 = !{!"../drivers/net/wireless/realtek/rtw89/mac.c", i32 1139, i32 29}
!43 = !{ptr @wde_size4, !44, !"wde_size4", i1 false, i1 false}
!44 = !{!"../drivers/net/wireless/realtek/rtw89/mac.c", i32 1144, i32 29}
!45 = !{ptr @ple_size0, !46, !"ple_size0", i1 false, i1 false}
!46 = !{!"../drivers/net/wireless/realtek/rtw89/mac.c", i32 1149, i32 29}
!47 = !{ptr @ple_size4, !48, !"ple_size4", i1 false, i1 false}
!48 = !{!"../drivers/net/wireless/realtek/rtw89/mac.c", i32 1154, i32 29}
!49 = !{ptr @wde_qt0, !50, !"wde_qt0", i1 false, i1 false}
!50 = !{!"../drivers/net/wireless/realtek/rtw89/mac.c", i32 1159, i32 30}
!51 = !{ptr @wde_qt4, !52, !"wde_qt4", i1 false, i1 false}
!52 = !{!"../drivers/net/wireless/realtek/rtw89/mac.c", i32 1164, i32 30}
!53 = !{ptr @ple_qt4, !54, !"ple_qt4", i1 false, i1 false}
!54 = !{!"../drivers/net/wireless/realtek/rtw89/mac.c", i32 1169, i32 30}
!55 = !{ptr @ple_qt5, !56, !"ple_qt5", i1 false, i1 false}
!56 = !{!"../drivers/net/wireless/realtek/rtw89/mac.c", i32 1174, i32 30}
!57 = !{ptr @ple_qt13, !58, !"ple_qt13", i1 false, i1 false}
!58 = !{!"../drivers/net/wireless/realtek/rtw89/mac.c", i32 1179, i32 30}
!59 = !{ptr @.str.18, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/net/wireless/realtek/rtw89/mac.c", i32 2027, i32 2}
!61 = !{ptr @.str.19, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/net/wireless/realtek/rtw89/mac.c", i32 3153, i32 3}
!63 = !{ptr @.str.20, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @.str.21, !62, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @rtw89_mac_c2h_handle._entry, !62, !"_entry", i1 false, i1 false}
!66 = !{ptr @rtw89_mac_c2h_handle._entry_ptr, !62, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.23, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/net/wireless/realtek/rtw89/mac.c", i32 3157, i32 3}
!69 = !{ptr @rtw89_mac_c2h_handle._entry.22, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @rtw89_mac_c2h_handle._entry_ptr.24, !68, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.25, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/net/wireless/realtek/rtw89/mac.c", i32 3173, i32 3}
!73 = !{ptr @.str.26, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @rtw89_mac_get_txpwr_cr._entry, !72, !"_entry", i1 false, i1 false}
!75 = !{ptr @rtw89_mac_get_txpwr_cr._entry_ptr, !72, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.28, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/net/wireless/realtek/rtw89/mac.c", i32 3180, i32 4}
!78 = !{ptr @rtw89_mac_get_txpwr_cr._entry.27, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @rtw89_mac_get_txpwr_cr._entry_ptr.29, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.31, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/net/wireless/realtek/rtw89/mac.c", i32 3190, i32 2}
!82 = !{ptr @rtw89_mac_get_txpwr_cr._entry.30, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @rtw89_mac_get_txpwr_cr._entry_ptr.32, !81, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.33, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/net/wireless/realtek/rtw89/mac.c", i32 3260, i32 3}
!86 = !{ptr @.str.34, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @rtw89_mac_flush_txq._entry, !85, !"_entry", i1 false, i1 false}
!88 = !{ptr @rtw89_mac_flush_txq._entry_ptr, !85, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.35, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/net/wireless/realtek/rtw89/mac.c", i32 3283, i32 3}
!91 = !{ptr @.str.36, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @rtw89_mac_coex_init._entry, !90, !"_entry", i1 false, i1 false}
!93 = !{ptr @rtw89_mac_coex_init._entry_ptr, !90, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.38, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/net/wireless/realtek/rtw89/mac.c", i32 3289, i32 3}
!96 = !{ptr @rtw89_mac_coex_init._entry.37, !95, !"_entry", i1 false, i1 false}
!97 = !{ptr @rtw89_mac_coex_init._entry_ptr.39, !95, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.40, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/net/wireless/realtek/rtw89/mac.c", i32 3360, i32 3}
!100 = !{ptr @.str.41, !99, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @rtw89_mac_cfg_gnt._entry, !99, !"_entry", i1 false, i1 false}
!102 = !{ptr @rtw89_mac_cfg_gnt._entry_ptr, !99, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.43, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/net/wireless/realtek/rtw89/mac.c", i32 3381, i32 3}
!105 = !{ptr @rtw89_mac_cfg_gnt._entry.42, !104, !"_entry", i1 false, i1 false}
!106 = !{ptr @rtw89_mac_cfg_gnt._entry_ptr.44, !104, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.45, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/net/wireless/realtek/rtw89/mac.c", i32 3623, i32 3}
!109 = !{ptr @.str.46, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/net/wireless/realtek/rtw89/mac.c", i32 3646, i32 2}
!111 = !{ptr @.str.47, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/net/wireless/realtek/rtw89/mac.c", i32 3698, i32 2}
!113 = !{ptr @.str.48, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/net/wireless/realtek/rtw89/mac.c", i32 3775, i32 4}
!115 = !{ptr @.str.49, !114, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @rtw89_mac_get_tx_time._entry, !114, !"_entry", i1 false, i1 false}
!117 = !{ptr @rtw89_mac_get_tx_time._entry_ptr, !114, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @.str.50, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/net/wireless/realtek/rtw89/mac.c", i32 3817, i32 4}
!120 = !{ptr @.str.51, !119, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @rtw89_mac_get_tx_retry_limit._entry, !119, !"_entry", i1 false, i1 false}
!122 = !{ptr @rtw89_mac_get_tx_retry_limit._entry_ptr, !119, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @.str.52, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/net/wireless/realtek/rtw89/mac.c", i32 242, i32 2}
!125 = !{ptr @.str.53, !124, !"<string literal>", i1 false, i1 false}
!126 = !{ptr @rtw89_mac_dump_err_status._entry, !124, !"_entry", i1 false, i1 false}
!127 = !{ptr @rtw89_mac_dump_err_status._entry_ptr, !124, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @.str.55, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/net/wireless/realtek/rtw89/mac.c", i32 243, i32 2}
!130 = !{ptr @rtw89_mac_dump_err_status._entry.54, !129, !"_entry", i1 false, i1 false}
!131 = !{ptr @rtw89_mac_dump_err_status._entry_ptr.56, !129, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @.str.58, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/net/wireless/realtek/rtw89/mac.c", i32 247, i32 2}
!134 = !{ptr @rtw89_mac_dump_err_status._entry.57, !133, !"_entry", i1 false, i1 false}
!135 = !{ptr @rtw89_mac_dump_err_status._entry_ptr.59, !133, !"_entry_ptr", i1 false, i1 false}
!136 = !{ptr @.str.61, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/net/wireless/realtek/rtw89/mac.c", i32 249, i32 2}
!138 = !{ptr @rtw89_mac_dump_err_status._entry.60, !137, !"_entry", i1 false, i1 false}
!139 = !{ptr @rtw89_mac_dump_err_status._entry_ptr.62, !137, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @.str.64, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/net/wireless/realtek/rtw89/mac.c", i32 252, i32 3}
!142 = !{ptr @rtw89_mac_dump_err_status._entry.63, !141, !"_entry", i1 false, i1 false}
!143 = !{ptr @rtw89_mac_dump_err_status._entry_ptr.65, !141, !"_entry_ptr", i1 false, i1 false}
!144 = !{ptr @.str.67, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/net/wireless/realtek/rtw89/mac.c", i32 254, i32 3}
!146 = !{ptr @rtw89_mac_dump_err_status._entry.66, !145, !"_entry", i1 false, i1 false}
!147 = !{ptr @rtw89_mac_dump_err_status._entry_ptr.68, !145, !"_entry_ptr", i1 false, i1 false}
!148 = !{ptr @.str.70, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/net/wireless/realtek/rtw89/mac.c", i32 259, i32 3}
!150 = !{ptr @rtw89_mac_dump_err_status._entry.69, !149, !"_entry", i1 false, i1 false}
!151 = !{ptr @rtw89_mac_dump_err_status._entry_ptr.71, !149, !"_entry_ptr", i1 false, i1 false}
!152 = !{ptr @.str.73, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/net/wireless/realtek/rtw89/mac.c", i32 261, i32 3}
!154 = !{ptr @rtw89_mac_dump_err_status._entry.72, !153, !"_entry", i1 false, i1 false}
!155 = !{ptr @rtw89_mac_dump_err_status._entry_ptr.74, !153, !"_entry_ptr", i1 false, i1 false}
!156 = !{ptr @.str.76, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/net/wireless/realtek/rtw89/mac.c", i32 266, i32 3}
!158 = !{ptr @rtw89_mac_dump_err_status._entry.75, !157, !"_entry", i1 false, i1 false}
!159 = !{ptr @rtw89_mac_dump_err_status._entry_ptr.77, !157, !"_entry_ptr", i1 false, i1 false}
!160 = !{ptr @.str.79, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/net/wireless/realtek/rtw89/mac.c", i32 268, i32 3}
!162 = !{ptr @rtw89_mac_dump_err_status._entry.78, !161, !"_entry", i1 false, i1 false}
!163 = !{ptr @rtw89_mac_dump_err_status._entry_ptr.80, !161, !"_entry_ptr", i1 false, i1 false}
!164 = !{ptr @.str.82, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/net/wireless/realtek/rtw89/mac.c", i32 270, i32 3}
!166 = !{ptr @rtw89_mac_dump_err_status._entry.81, !165, !"_entry", i1 false, i1 false}
!167 = !{ptr @rtw89_mac_dump_err_status._entry_ptr.83, !165, !"_entry_ptr", i1 false, i1 false}
!168 = !{ptr @.str.85, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/net/wireless/realtek/rtw89/mac.c", i32 272, i32 3}
!170 = !{ptr @rtw89_mac_dump_err_status._entry.84, !169, !"_entry", i1 false, i1 false}
!171 = !{ptr @rtw89_mac_dump_err_status._entry_ptr.86, !169, !"_entry_ptr", i1 false, i1 false}
!172 = !{ptr @.str.88, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/net/wireless/realtek/rtw89/mac.c", i32 274, i32 3}
!174 = !{ptr @rtw89_mac_dump_err_status._entry.87, !173, !"_entry", i1 false, i1 false}
!175 = !{ptr @rtw89_mac_dump_err_status._entry_ptr.89, !173, !"_entry_ptr", i1 false, i1 false}
!176 = !{ptr @.str.91, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/net/wireless/realtek/rtw89/mac.c", i32 276, i32 3}
!178 = !{ptr @rtw89_mac_dump_err_status._entry.90, !177, !"_entry", i1 false, i1 false}
!179 = !{ptr @rtw89_mac_dump_err_status._entry_ptr.92, !177, !"_entry_ptr", i1 false, i1 false}
!180 = !{ptr @.str.94, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/net/wireless/realtek/rtw89/mac.c", i32 278, i32 3}
!182 = !{ptr @rtw89_mac_dump_err_status._entry.93, !181, !"_entry", i1 false, i1 false}
!183 = !{ptr @rtw89_mac_dump_err_status._entry_ptr.95, !181, !"_entry_ptr", i1 false, i1 false}
!184 = !{ptr @.str.97, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/net/wireless/realtek/rtw89/mac.c", i32 280, i32 3}
!186 = !{ptr @rtw89_mac_dump_err_status._entry.96, !185, !"_entry", i1 false, i1 false}
!187 = !{ptr @rtw89_mac_dump_err_status._entry_ptr.98, !185, !"_entry_ptr", i1 false, i1 false}
!188 = !{ptr @.str.100, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/net/wireless/realtek/rtw89/mac.c", i32 282, i32 3}
!190 = !{ptr @rtw89_mac_dump_err_status._entry.99, !189, !"_entry", i1 false, i1 false}
!191 = !{ptr @rtw89_mac_dump_err_status._entry_ptr.101, !189, !"_entry_ptr", i1 false, i1 false}
!192 = !{ptr @.str.103, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/net/wireless/realtek/rtw89/mac.c", i32 284, i32 3}
!194 = !{ptr @rtw89_mac_dump_err_status._entry.102, !193, !"_entry", i1 false, i1 false}
!195 = !{ptr @rtw89_mac_dump_err_status._entry_ptr.104, !193, !"_entry_ptr", i1 false, i1 false}
!196 = !{ptr @.str.106, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/net/wireless/realtek/rtw89/mac.c", i32 289, i32 3}
!198 = !{ptr @rtw89_mac_dump_err_status._entry.105, !197, !"_entry", i1 false, i1 false}
!199 = !{ptr @rtw89_mac_dump_err_status._entry_ptr.107, !197, !"_entry_ptr", i1 false, i1 false}
!200 = !{ptr @.str.109, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/net/wireless/realtek/rtw89/mac.c", i32 291, i32 3}
!202 = !{ptr @rtw89_mac_dump_err_status._entry.108, !201, !"_entry", i1 false, i1 false}
!203 = !{ptr @rtw89_mac_dump_err_status._entry_ptr.110, !201, !"_entry_ptr", i1 false, i1 false}
!204 = !{ptr @.str.112, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/net/wireless/realtek/rtw89/mac.c", i32 293, i32 3}
!206 = !{ptr @rtw89_mac_dump_err_status._entry.111, !205, !"_entry", i1 false, i1 false}
!207 = !{ptr @rtw89_mac_dump_err_status._entry_ptr.113, !205, !"_entry_ptr", i1 false, i1 false}
!208 = !{ptr @.str.115, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/net/wireless/realtek/rtw89/mac.c", i32 295, i32 3}
!210 = !{ptr @rtw89_mac_dump_err_status._entry.114, !209, !"_entry", i1 false, i1 false}
!211 = !{ptr @rtw89_mac_dump_err_status._entry_ptr.116, !209, !"_entry_ptr", i1 false, i1 false}
!212 = !{ptr @.str.118, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/net/wireless/realtek/rtw89/mac.c", i32 300, i32 3}
!214 = !{ptr @rtw89_mac_dump_err_status._entry.117, !213, !"_entry", i1 false, i1 false}
!215 = !{ptr @rtw89_mac_dump_err_status._entry_ptr.119, !213, !"_entry_ptr", i1 false, i1 false}
!216 = !{ptr @.str.121, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/net/wireless/realtek/rtw89/mac.c", i32 302, i32 3}
!218 = !{ptr @rtw89_mac_dump_err_status._entry.120, !217, !"_entry", i1 false, i1 false}
!219 = !{ptr @rtw89_mac_dump_err_status._entry_ptr.122, !217, !"_entry_ptr", i1 false, i1 false}
!220 = !{ptr @.str.124, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/net/wireless/realtek/rtw89/mac.c", i32 307, i32 3}
!222 = !{ptr @rtw89_mac_dump_err_status._entry.123, !221, !"_entry", i1 false, i1 false}
!223 = !{ptr @rtw89_mac_dump_err_status._entry_ptr.125, !221, !"_entry_ptr", i1 false, i1 false}
!224 = !{ptr @.str.127, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/net/wireless/realtek/rtw89/mac.c", i32 309, i32 3}
!226 = !{ptr @rtw89_mac_dump_err_status._entry.126, !225, !"_entry", i1 false, i1 false}
!227 = !{ptr @rtw89_mac_dump_err_status._entry_ptr.128, !225, !"_entry_ptr", i1 false, i1 false}
!228 = !{ptr @.str.130, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/net/wireless/realtek/rtw89/mac.c", i32 311, i32 3}
!230 = !{ptr @rtw89_mac_dump_err_status._entry.129, !229, !"_entry", i1 false, i1 false}
!231 = !{ptr @rtw89_mac_dump_err_status._entry_ptr.131, !229, !"_entry_ptr", i1 false, i1 false}
!232 = !{ptr @.str.133, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/net/wireless/realtek/rtw89/mac.c", i32 313, i32 3}
!234 = !{ptr @rtw89_mac_dump_err_status._entry.132, !233, !"_entry", i1 false, i1 false}
!235 = !{ptr @rtw89_mac_dump_err_status._entry_ptr.134, !233, !"_entry_ptr", i1 false, i1 false}
!236 = !{ptr @.str.136, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/net/wireless/realtek/rtw89/mac.c", i32 319, i32 3}
!238 = !{ptr @rtw89_mac_dump_err_status._entry.135, !237, !"_entry", i1 false, i1 false}
!239 = !{ptr @rtw89_mac_dump_err_status._entry_ptr.137, !237, !"_entry_ptr", i1 false, i1 false}
!240 = !{ptr @.str.139, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/net/wireless/realtek/rtw89/mac.c", i32 321, i32 3}
!242 = !{ptr @rtw89_mac_dump_err_status._entry.138, !241, !"_entry", i1 false, i1 false}
!243 = !{ptr @rtw89_mac_dump_err_status._entry_ptr.140, !241, !"_entry_ptr", i1 false, i1 false}
!244 = !{ptr @rtw89_mac_dump_err_status._entry.141, !245, !"_entry", i1 false, i1 false}
!245 = !{!"../drivers/net/wireless/realtek/rtw89/mac.c", i32 326, i32 3}
!246 = !{ptr @rtw89_mac_dump_err_status._entry_ptr.142, !245, !"_entry_ptr", i1 false, i1 false}
!247 = !{ptr @rtw89_mac_dump_err_status._entry.143, !248, !"_entry", i1 false, i1 false}
!248 = !{!"../drivers/net/wireless/realtek/rtw89/mac.c", i32 328, i32 3}
!249 = !{ptr @rtw89_mac_dump_err_status._entry_ptr.144, !248, !"_entry_ptr", i1 false, i1 false}
!250 = !{ptr @rtw89_mac_dump_err_status._entry.145, !251, !"_entry", i1 false, i1 false}
!251 = !{!"../drivers/net/wireless/realtek/rtw89/mac.c", i32 330, i32 3}
!252 = !{ptr @rtw89_mac_dump_err_status._entry_ptr.146, !251, !"_entry_ptr", i1 false, i1 false}
!253 = !{ptr @rtw89_mac_dump_err_status._entry.147, !254, !"_entry", i1 false, i1 false}
!254 = !{!"../drivers/net/wireless/realtek/rtw89/mac.c", i32 332, i32 3}
!255 = !{ptr @rtw89_mac_dump_err_status._entry_ptr.148, !254, !"_entry_ptr", i1 false, i1 false}
!256 = !{ptr @.str.150, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../drivers/net/wireless/realtek/rtw89/mac.c", i32 334, i32 3}
!258 = !{ptr @rtw89_mac_dump_err_status._entry.149, !257, !"_entry", i1 false, i1 false}
!259 = !{ptr @rtw89_mac_dump_err_status._entry_ptr.151, !257, !"_entry_ptr", i1 false, i1 false}
!260 = !{ptr @.str.153, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../drivers/net/wireless/realtek/rtw89/mac.c", i32 336, i32 3}
!262 = !{ptr @rtw89_mac_dump_err_status._entry.152, !261, !"_entry", i1 false, i1 false}
!263 = !{ptr @rtw89_mac_dump_err_status._entry_ptr.154, !261, !"_entry_ptr", i1 false, i1 false}
!264 = !{ptr @.str.156, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../drivers/net/wireless/realtek/rtw89/mac.c", i32 338, i32 3}
!266 = !{ptr @rtw89_mac_dump_err_status._entry.155, !265, !"_entry", i1 false, i1 false}
!267 = !{ptr @rtw89_mac_dump_err_status._entry_ptr.157, !265, !"_entry_ptr", i1 false, i1 false}
!268 = !{ptr @.str.159, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../drivers/net/wireless/realtek/rtw89/mac.c", i32 340, i32 3}
!270 = !{ptr @rtw89_mac_dump_err_status._entry.158, !269, !"_entry", i1 false, i1 false}
!271 = !{ptr @rtw89_mac_dump_err_status._entry_ptr.160, !269, !"_entry_ptr", i1 false, i1 false}
!272 = !{ptr @.str.162, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../drivers/net/wireless/realtek/rtw89/mac.c", i32 342, i32 3}
!274 = !{ptr @rtw89_mac_dump_err_status._entry.161, !273, !"_entry", i1 false, i1 false}
!275 = !{ptr @rtw89_mac_dump_err_status._entry_ptr.163, !273, !"_entry_ptr", i1 false, i1 false}
!276 = !{ptr @.str.165, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../drivers/net/wireless/realtek/rtw89/mac.c", i32 344, i32 3}
!278 = !{ptr @rtw89_mac_dump_err_status._entry.164, !277, !"_entry", i1 false, i1 false}
!279 = !{ptr @rtw89_mac_dump_err_status._entry_ptr.166, !277, !"_entry_ptr", i1 false, i1 false}
!280 = !{ptr @.str.168, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../drivers/net/wireless/realtek/rtw89/mac.c", i32 346, i32 3}
!282 = !{ptr @rtw89_mac_dump_err_status._entry.167, !281, !"_entry", i1 false, i1 false}
!283 = !{ptr @rtw89_mac_dump_err_status._entry_ptr.169, !281, !"_entry_ptr", i1 false, i1 false}
!284 = !{ptr @.str.171, !285, !"<string literal>", i1 false, i1 false}
!285 = !{!"../drivers/net/wireless/realtek/rtw89/mac.c", i32 348, i32 3}
!286 = !{ptr @rtw89_mac_dump_err_status._entry.170, !285, !"_entry", i1 false, i1 false}
!287 = !{ptr @rtw89_mac_dump_err_status._entry_ptr.172, !285, !"_entry_ptr", i1 false, i1 false}
!288 = !{ptr @.str.174, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../drivers/net/wireless/realtek/rtw89/mac.c", i32 350, i32 3}
!290 = !{ptr @rtw89_mac_dump_err_status._entry.173, !289, !"_entry", i1 false, i1 false}
!291 = !{ptr @rtw89_mac_dump_err_status._entry_ptr.175, !289, !"_entry_ptr", i1 false, i1 false}
!292 = !{ptr @.str.177, !293, !"<string literal>", i1 false, i1 false}
!293 = !{!"../drivers/net/wireless/realtek/rtw89/mac.c", i32 352, i32 3}
!294 = !{ptr @rtw89_mac_dump_err_status._entry.176, !293, !"_entry", i1 false, i1 false}
!295 = !{ptr @rtw89_mac_dump_err_status._entry_ptr.178, !293, !"_entry_ptr", i1 false, i1 false}
!296 = !{ptr @.str.180, !297, !"<string literal>", i1 false, i1 false}
!297 = !{!"../drivers/net/wireless/realtek/rtw89/mac.c", i32 354, i32 3}
!298 = !{ptr @rtw89_mac_dump_err_status._entry.179, !297, !"_entry", i1 false, i1 false}
!299 = !{ptr @rtw89_mac_dump_err_status._entry_ptr.181, !297, !"_entry_ptr", i1 false, i1 false}
!300 = !{ptr @.str.183, !301, !"<string literal>", i1 false, i1 false}
!301 = !{!"../drivers/net/wireless/realtek/rtw89/mac.c", i32 360, i32 3}
!302 = !{ptr @rtw89_mac_dump_err_status._entry.182, !301, !"_entry", i1 false, i1 false}
!303 = !{ptr @rtw89_mac_dump_err_status._entry_ptr.184, !301, !"_entry_ptr", i1 false, i1 false}
!304 = !{ptr @.str.186, !305, !"<string literal>", i1 false, i1 false}
!305 = !{!"../drivers/net/wireless/realtek/rtw89/mac.c", i32 362, i32 3}
!306 = !{ptr @rtw89_mac_dump_err_status._entry.185, !305, !"_entry", i1 false, i1 false}
!307 = !{ptr @rtw89_mac_dump_err_status._entry_ptr.187, !305, !"_entry_ptr", i1 false, i1 false}
!308 = !{ptr @rtw89_mac_dump_err_status._entry.188, !309, !"_entry", i1 false, i1 false}
!309 = !{!"../drivers/net/wireless/realtek/rtw89/mac.c", i32 364, i32 3}
!310 = !{ptr @rtw89_mac_dump_err_status._entry_ptr.189, !309, !"_entry_ptr", i1 false, i1 false}
!311 = !{ptr @rtw89_mac_dump_err_status._entry.190, !312, !"_entry", i1 false, i1 false}
!312 = !{!"../drivers/net/wireless/realtek/rtw89/mac.c", i32 366, i32 3}
!313 = !{ptr @rtw89_mac_dump_err_status._entry_ptr.191, !312, !"_entry_ptr", i1 false, i1 false}
!314 = !{ptr @.str.193, !315, !"<string literal>", i1 false, i1 false}
!315 = !{!"../drivers/net/wireless/realtek/rtw89/mac.c", i32 374, i32 3}
!316 = !{ptr @rtw89_mac_dump_err_status._entry.192, !315, !"_entry", i1 false, i1 false}
!317 = !{ptr @rtw89_mac_dump_err_status._entry_ptr.194, !315, !"_entry_ptr", i1 false, i1 false}
!318 = !{ptr @.str.196, !319, !"<string literal>", i1 false, i1 false}
!319 = !{!"../drivers/net/wireless/realtek/rtw89/mac.c", i32 376, i32 3}
!320 = !{ptr @rtw89_mac_dump_err_status._entry.195, !319, !"_entry", i1 false, i1 false}
!321 = !{ptr @rtw89_mac_dump_err_status._entry_ptr.197, !319, !"_entry_ptr", i1 false, i1 false}
!322 = !{ptr @.str.199, !323, !"<string literal>", i1 false, i1 false}
!323 = !{!"../drivers/net/wireless/realtek/rtw89/mac.c", i32 381, i32 3}
!324 = !{ptr @rtw89_mac_dump_err_status._entry.198, !323, !"_entry", i1 false, i1 false}
!325 = !{ptr @rtw89_mac_dump_err_status._entry_ptr.200, !323, !"_entry_ptr", i1 false, i1 false}
!326 = !{ptr @.str.202, !327, !"<string literal>", i1 false, i1 false}
!327 = !{!"../drivers/net/wireless/realtek/rtw89/mac.c", i32 386, i32 3}
!328 = !{ptr @rtw89_mac_dump_err_status._entry.201, !327, !"_entry", i1 false, i1 false}
!329 = !{ptr @rtw89_mac_dump_err_status._entry_ptr.203, !327, !"_entry_ptr", i1 false, i1 false}
!330 = !{ptr @.str.205, !331, !"<string literal>", i1 false, i1 false}
!331 = !{!"../drivers/net/wireless/realtek/rtw89/mac.c", i32 388, i32 3}
!332 = !{ptr @rtw89_mac_dump_err_status._entry.204, !331, !"_entry", i1 false, i1 false}
!333 = !{ptr @rtw89_mac_dump_err_status._entry_ptr.206, !331, !"_entry_ptr", i1 false, i1 false}
!334 = !{ptr @.str.208, !335, !"<string literal>", i1 false, i1 false}
!335 = !{!"../drivers/net/wireless/realtek/rtw89/mac.c", i32 393, i32 3}
!336 = !{ptr @rtw89_mac_dump_err_status._entry.207, !335, !"_entry", i1 false, i1 false}
!337 = !{ptr @rtw89_mac_dump_err_status._entry_ptr.209, !335, !"_entry_ptr", i1 false, i1 false}
!338 = !{ptr @.str.211, !339, !"<string literal>", i1 false, i1 false}
!339 = !{!"../drivers/net/wireless/realtek/rtw89/mac.c", i32 395, i32 3}
!340 = !{ptr @rtw89_mac_dump_err_status._entry.210, !339, !"_entry", i1 false, i1 false}
!341 = !{ptr @rtw89_mac_dump_err_status._entry_ptr.212, !339, !"_entry_ptr", i1 false, i1 false}
!342 = !{ptr @.str.214, !343, !"<string literal>", i1 false, i1 false}
!343 = !{!"../drivers/net/wireless/realtek/rtw89/mac.c", i32 400, i32 3}
!344 = !{ptr @rtw89_mac_dump_err_status._entry.213, !343, !"_entry", i1 false, i1 false}
!345 = !{ptr @rtw89_mac_dump_err_status._entry_ptr.215, !343, !"_entry_ptr", i1 false, i1 false}
!346 = !{ptr @.str.217, !347, !"<string literal>", i1 false, i1 false}
!347 = !{!"../drivers/net/wireless/realtek/rtw89/mac.c", i32 405, i32 3}
!348 = !{ptr @rtw89_mac_dump_err_status._entry.216, !347, !"_entry", i1 false, i1 false}
!349 = !{ptr @rtw89_mac_dump_err_status._entry_ptr.218, !347, !"_entry_ptr", i1 false, i1 false}
!350 = !{ptr @.str.220, !351, !"<string literal>", i1 false, i1 false}
!351 = !{!"../drivers/net/wireless/realtek/rtw89/mac.c", i32 410, i32 3}
!352 = !{ptr @rtw89_mac_dump_err_status._entry.219, !351, !"_entry", i1 false, i1 false}
!353 = !{ptr @rtw89_mac_dump_err_status._entry_ptr.221, !351, !"_entry_ptr", i1 false, i1 false}
!354 = !{ptr @.str.223, !355, !"<string literal>", i1 false, i1 false}
!355 = !{!"../drivers/net/wireless/realtek/rtw89/mac.c", i32 412, i32 3}
!356 = !{ptr @rtw89_mac_dump_err_status._entry.222, !355, !"_entry", i1 false, i1 false}
!357 = !{ptr @rtw89_mac_dump_err_status._entry_ptr.224, !355, !"_entry_ptr", i1 false, i1 false}
!358 = !{ptr @.str.226, !359, !"<string literal>", i1 false, i1 false}
!359 = !{!"../drivers/net/wireless/realtek/rtw89/mac.c", i32 417, i32 3}
!360 = !{ptr @rtw89_mac_dump_err_status._entry.225, !359, !"_entry", i1 false, i1 false}
!361 = !{ptr @rtw89_mac_dump_err_status._entry_ptr.227, !359, !"_entry_ptr", i1 false, i1 false}
!362 = !{ptr @.str.229, !363, !"<string literal>", i1 false, i1 false}
!363 = !{!"../drivers/net/wireless/realtek/rtw89/mac.c", i32 419, i32 3}
!364 = !{ptr @rtw89_mac_dump_err_status._entry.228, !363, !"_entry", i1 false, i1 false}
!365 = !{ptr @rtw89_mac_dump_err_status._entry_ptr.230, !363, !"_entry_ptr", i1 false, i1 false}
!366 = !{ptr @.str.232, !367, !"<string literal>", i1 false, i1 false}
!367 = !{!"../drivers/net/wireless/realtek/rtw89/mac.c", i32 424, i32 3}
!368 = !{ptr @rtw89_mac_dump_err_status._entry.231, !367, !"_entry", i1 false, i1 false}
!369 = !{ptr @rtw89_mac_dump_err_status._entry_ptr.233, !367, !"_entry_ptr", i1 false, i1 false}
!370 = !{ptr @.str.235, !371, !"<string literal>", i1 false, i1 false}
!371 = !{!"../drivers/net/wireless/realtek/rtw89/mac.c", i32 426, i32 3}
!372 = !{ptr @rtw89_mac_dump_err_status._entry.234, !371, !"_entry", i1 false, i1 false}
!373 = !{ptr @rtw89_mac_dump_err_status._entry_ptr.236, !371, !"_entry_ptr", i1 false, i1 false}
!374 = !{ptr @.str.238, !375, !"<string literal>", i1 false, i1 false}
!375 = !{!"../drivers/net/wireless/realtek/rtw89/mac.c", i32 435, i32 2}
!376 = !{ptr @rtw89_mac_dump_err_status._entry.237, !375, !"_entry", i1 false, i1 false}
!377 = !{ptr @rtw89_mac_dump_err_status._entry_ptr.239, !375, !"_entry_ptr", i1 false, i1 false}
!378 = !{ptr @.str.240, !379, !"<string literal>", i1 false, i1 false}
!379 = !{!"../drivers/net/wireless/realtek/rtw89/mac.c", i32 151, i32 2}
!380 = !{ptr @.str.241, !379, !"<string literal>", i1 false, i1 false}
!381 = !{ptr @dump_err_status_dispatcher._entry, !379, !"_entry", i1 false, i1 false}
!382 = !{ptr @dump_err_status_dispatcher._entry_ptr, !379, !"_entry_ptr", i1 false, i1 false}
!383 = !{ptr @.str.243, !384, !"<string literal>", i1 false, i1 false}
!384 = !{!"../drivers/net/wireless/realtek/rtw89/mac.c", i32 153, i32 2}
!385 = !{ptr @dump_err_status_dispatcher._entry.242, !384, !"_entry", i1 false, i1 false}
!386 = !{ptr @dump_err_status_dispatcher._entry_ptr.244, !384, !"_entry_ptr", i1 false, i1 false}
!387 = !{ptr @.str.246, !388, !"<string literal>", i1 false, i1 false}
!388 = !{!"../drivers/net/wireless/realtek/rtw89/mac.c", i32 155, i32 2}
!389 = !{ptr @dump_err_status_dispatcher._entry.245, !388, !"_entry", i1 false, i1 false}
!390 = !{ptr @dump_err_status_dispatcher._entry_ptr.247, !388, !"_entry_ptr", i1 false, i1 false}
!391 = !{ptr @.str.249, !392, !"<string literal>", i1 false, i1 false}
!392 = !{!"../drivers/net/wireless/realtek/rtw89/mac.c", i32 157, i32 2}
!393 = !{ptr @dump_err_status_dispatcher._entry.248, !392, !"_entry", i1 false, i1 false}
!394 = !{ptr @dump_err_status_dispatcher._entry_ptr.250, !392, !"_entry_ptr", i1 false, i1 false}
!395 = !{ptr @.str.252, !396, !"<string literal>", i1 false, i1 false}
!396 = !{!"../drivers/net/wireless/realtek/rtw89/mac.c", i32 159, i32 2}
!397 = !{ptr @dump_err_status_dispatcher._entry.251, !396, !"_entry", i1 false, i1 false}
!398 = !{ptr @dump_err_status_dispatcher._entry_ptr.253, !396, !"_entry_ptr", i1 false, i1 false}
!399 = !{ptr @.str.255, !400, !"<string literal>", i1 false, i1 false}
!400 = !{!"../drivers/net/wireless/realtek/rtw89/mac.c", i32 161, i32 2}
!401 = !{ptr @dump_err_status_dispatcher._entry.254, !400, !"_entry", i1 false, i1 false}
!402 = !{ptr @dump_err_status_dispatcher._entry_ptr.256, !400, !"_entry_ptr", i1 false, i1 false}
!403 = !{ptr @.str.257, !404, !"<string literal>", i1 false, i1 false}
!404 = !{!"../drivers/net/wireless/realtek/rtw89/mac.c", i32 225, i32 3}
!405 = !{ptr @.str.258, !404, !"<string literal>", i1 false, i1 false}
!406 = !{ptr @rtw89_mac_dump_l0_to_l1._entry, !404, !"_entry", i1 false, i1 false}
!407 = !{ptr @rtw89_mac_dump_l0_to_l1._entry_ptr, !404, !"_entry_ptr", i1 false, i1 false}
!408 = !{ptr @.str.259, !409, !"<string literal>", i1 false, i1 false}
!409 = !{!"../drivers/net/wireless/realtek/rtw89/mac.c", i32 177, i32 3}
!410 = !{ptr @.str.260, !409, !"<string literal>", i1 false, i1 false}
!411 = !{ptr @rtw89_mac_dump_qta_lost._entry, !409, !"_entry", i1 false, i1 false}
!412 = !{ptr @rtw89_mac_dump_qta_lost._entry_ptr, !409, !"_entry_ptr", i1 false, i1 false}
!413 = !{ptr @.str.262, !414, !"<string literal>", i1 false, i1 false}
!414 = !{!"../drivers/net/wireless/realtek/rtw89/mac.c", i32 179, i32 3}
!415 = !{ptr @rtw89_mac_dump_qta_lost._entry.261, !414, !"_entry", i1 false, i1 false}
!416 = !{ptr @rtw89_mac_dump_qta_lost._entry_ptr.263, !414, !"_entry_ptr", i1 false, i1 false}
!417 = !{ptr @rtw89_mac_dump_qta_lost._entry.264, !418, !"_entry", i1 false, i1 false}
!418 = !{!"../drivers/net/wireless/realtek/rtw89/mac.c", i32 190, i32 4}
!419 = !{ptr @rtw89_mac_dump_qta_lost._entry_ptr.265, !418, !"_entry_ptr", i1 false, i1 false}
!420 = !{ptr @.str.267, !421, !"<string literal>", i1 false, i1 false}
!421 = !{!"../drivers/net/wireless/realtek/rtw89/mac.c", i32 192, i32 4}
!422 = !{ptr @rtw89_mac_dump_qta_lost._entry.266, !421, !"_entry", i1 false, i1 false}
!423 = !{ptr @rtw89_mac_dump_qta_lost._entry_ptr.268, !421, !"_entry_ptr", i1 false, i1 false}
!424 = !{ptr @rtw89_mac_dump_qta_lost._entry.269, !425, !"_entry", i1 false, i1 false}
!425 = !{!"../drivers/net/wireless/realtek/rtw89/mac.c", i32 201, i32 3}
!426 = !{ptr @rtw89_mac_dump_qta_lost._entry_ptr.270, !425, !"_entry_ptr", i1 false, i1 false}
!427 = !{ptr @.str.272, !428, !"<string literal>", i1 false, i1 false}
!428 = !{!"../drivers/net/wireless/realtek/rtw89/mac.c", i32 203, i32 3}
!429 = !{ptr @rtw89_mac_dump_qta_lost._entry.271, !428, !"_entry", i1 false, i1 false}
!430 = !{ptr @rtw89_mac_dump_qta_lost._entry_ptr.273, !428, !"_entry_ptr", i1 false, i1 false}
!431 = !{ptr @.str.275, !432, !"<string literal>", i1 false, i1 false}
!432 = !{!"../drivers/net/wireless/realtek/rtw89/mac.c", i32 207, i32 2}
!433 = !{ptr @rtw89_mac_dump_qta_lost._entry.274, !432, !"_entry", i1 false, i1 false}
!434 = !{ptr @rtw89_mac_dump_qta_lost._entry_ptr.276, !432, !"_entry_ptr", i1 false, i1 false}
!435 = !{ptr @.str.278, !436, !"<string literal>", i1 false, i1 false}
!436 = !{!"../drivers/net/wireless/realtek/rtw89/mac.c", i32 209, i32 2}
!437 = !{ptr @rtw89_mac_dump_qta_lost._entry.277, !436, !"_entry", i1 false, i1 false}
!438 = !{ptr @rtw89_mac_dump_qta_lost._entry_ptr.279, !436, !"_entry_ptr", i1 false, i1 false}
!439 = !{ptr @.str.280, !440, !"<string literal>", i1 false, i1 false}
!440 = !{!"../drivers/net/wireless/realtek/rtw89/mac.c", i32 141, i32 3}
!441 = !{ptr @.str.281, !440, !"<string literal>", i1 false, i1 false}
!442 = !{ptr @dle_dfi_qempty._entry, !440, !"_entry", i1 false, i1 false}
!443 = !{ptr @dle_dfi_qempty._entry_ptr, !440, !"_entry_ptr", i1 false, i1 false}
!444 = !{ptr @.str.282, !445, !"<string literal>", i1 false, i1 false}
!445 = !{!"../drivers/net/wireless/realtek/rtw89/mac.c", i32 92, i32 3}
!446 = !{ptr @.str.283, !445, !"<string literal>", i1 false, i1 false}
!447 = !{ptr @dle_dfi_ctrl._entry, !445, !"_entry", i1 false, i1 false}
!448 = !{ptr @dle_dfi_ctrl._entry_ptr, !445, !"_entry_ptr", i1 false, i1 false}
!449 = !{ptr @.str.285, !450, !"<string literal>", i1 false, i1 false}
!450 = !{!"../drivers/net/wireless/realtek/rtw89/mac.c", i32 101, i32 3}
!451 = !{ptr @dle_dfi_ctrl._entry.284, !450, !"_entry", i1 false, i1 false}
!452 = !{ptr @dle_dfi_ctrl._entry_ptr.286, !450, !"_entry_ptr", i1 false, i1 false}
!453 = !{ptr @.str.287, !454, !"<string literal>", i1 false, i1 false}
!454 = !{!"../drivers/net/wireless/realtek/rtw89/mac.c", i32 121, i32 3}
!455 = !{ptr @dle_dfi_quota._entry, !454, !"_entry", i1 false, i1 false}
!456 = !{ptr @dle_dfi_quota._entry_ptr, !454, !"_entry_ptr", i1 false, i1 false}
!457 = !{ptr @.str.288, !458, !"<string literal>", i1 false, i1 false}
!458 = !{!"../drivers/net/wireless/realtek/rtw89/mac.c", i32 1021, i32 3}
!459 = !{ptr @.str.289, !458, !"<string literal>", i1 false, i1 false}
!460 = !{ptr @rtw89_mac_power_switch._entry, !458, !"_entry", i1 false, i1 false}
!461 = !{ptr @rtw89_mac_power_switch._entry_ptr, !458, !"_entry_ptr", i1 false, i1 false}
!462 = !{ptr @.str.290, !463, !"<string literal>", i1 false, i1 false}
!463 = !{!"../drivers/net/wireless/realtek/rtw89/mac.c", i32 830, i32 2}
!464 = !{ptr @.str.291, !463, !"<string literal>", i1 false, i1 false}
!465 = !{ptr @pwr_cmd_poll._entry, !463, !"_entry", i1 false, i1 false}
!466 = !{ptr @pwr_cmd_poll._entry_ptr, !463, !"_entry_ptr", i1 false, i1 false}
!467 = !{ptr @.str.293, !468, !"<string literal>", i1 false, i1 false}
!468 = !{!"../drivers/net/wireless/realtek/rtw89/mac.c", i32 831, i32 2}
!469 = !{ptr @pwr_cmd_poll._entry.292, !468, !"_entry", i1 false, i1 false}
!470 = !{ptr @pwr_cmd_poll._entry_ptr.294, !468, !"_entry_ptr", i1 false, i1 false}
!471 = !{ptr @.str.296, !472, !"<string literal>", i1 false, i1 false}
!472 = !{!"../drivers/net/wireless/realtek/rtw89/mac.c", i32 832, i32 2}
!473 = !{ptr @pwr_cmd_poll._entry.295, !472, !"_entry", i1 false, i1 false}
!474 = !{ptr @pwr_cmd_poll._entry_ptr.297, !472, !"_entry_ptr", i1 false, i1 false}
!475 = !{ptr @.str.298, !476, !"<string literal>", i1 false, i1 false}
!476 = !{!"../drivers/net/wireless/realtek/rtw89/mac.c", i32 2574, i32 3}
!477 = !{ptr @.str.299, !476, !"<string literal>", i1 false, i1 false}
!478 = !{ptr @rtw89_mac_fw_dl_pre_init._entry, !476, !"_entry", i1 false, i1 false}
!479 = !{ptr @rtw89_mac_fw_dl_pre_init._entry_ptr, !476, !"_entry_ptr", i1 false, i1 false}
!480 = !{ptr @.str.301, !481, !"<string literal>", i1 false, i1 false}
!481 = !{!"../drivers/net/wireless/realtek/rtw89/mac.c", i32 2580, i32 3}
!482 = !{ptr @rtw89_mac_fw_dl_pre_init._entry.300, !481, !"_entry", i1 false, i1 false}
!483 = !{ptr @rtw89_mac_fw_dl_pre_init._entry_ptr.302, !481, !"_entry_ptr", i1 false, i1 false}
!484 = !{ptr @.str.303, !485, !"<string literal>", i1 false, i1 false}
!485 = !{!"../drivers/net/wireless/realtek/rtw89/mac.c", i32 1363, i32 3}
!486 = !{ptr @.str.304, !485, !"<string literal>", i1 false, i1 false}
!487 = !{ptr @dle_init._entry, !485, !"_entry", i1 false, i1 false}
!488 = !{ptr @dle_init._entry_ptr, !485, !"_entry_ptr", i1 false, i1 false}
!489 = !{ptr @.str.306, !490, !"<string literal>", i1 false, i1 false}
!490 = !{!"../drivers/net/wireless/realtek/rtw89/mac.c", i32 1371, i32 4}
!491 = !{ptr @dle_init._entry.305, !490, !"_entry", i1 false, i1 false}
!492 = !{ptr @dle_init._entry_ptr.307, !490, !"_entry_ptr", i1 false, i1 false}
!493 = !{ptr @.str.309, !494, !"<string literal>", i1 false, i1 false}
!494 = !{!"../drivers/net/wireless/realtek/rtw89/mac.c", i32 1380, i32 3}
!495 = !{ptr @dle_init._entry.308, !494, !"_entry", i1 false, i1 false}
!496 = !{ptr @dle_init._entry_ptr.310, !494, !"_entry_ptr", i1 false, i1 false}
!497 = !{ptr @.str.312, !498, !"<string literal>", i1 false, i1 false}
!498 = !{!"../drivers/net/wireless/realtek/rtw89/mac.c", i32 1390, i32 3}
!499 = !{ptr @dle_init._entry.311, !498, !"_entry", i1 false, i1 false}
!500 = !{ptr @dle_init._entry_ptr.313, !498, !"_entry_ptr", i1 false, i1 false}
!501 = !{ptr @.str.315, !502, !"<string literal>", i1 false, i1 false}
!502 = !{!"../drivers/net/wireless/realtek/rtw89/mac.c", i32 1401, i32 3}
!503 = !{ptr @dle_init._entry.314, !502, !"_entry", i1 false, i1 false}
!504 = !{ptr @dle_init._entry_ptr.316, !502, !"_entry_ptr", i1 false, i1 false}
!505 = !{ptr @.str.318, !506, !"<string literal>", i1 false, i1 false}
!506 = !{!"../drivers/net/wireless/realtek/rtw89/mac.c", i32 1409, i32 3}
!507 = !{ptr @dle_init._entry.317, !506, !"_entry", i1 false, i1 false}
!508 = !{ptr @dle_init._entry_ptr.319, !506, !"_entry_ptr", i1 false, i1 false}
!509 = !{ptr @.str.321, !510, !"<string literal>", i1 false, i1 false}
!510 = !{!"../drivers/net/wireless/realtek/rtw89/mac.c", i32 1416, i32 2}
!511 = !{ptr @dle_init._entry.320, !510, !"_entry", i1 false, i1 false}
!512 = !{ptr @dle_init._entry_ptr.322, !510, !"_entry_ptr", i1 false, i1 false}
!513 = !{ptr @.str.324, !514, !"<string literal>", i1 false, i1 false}
!514 = !{!"../drivers/net/wireless/realtek/rtw89/mac.c", i32 1418, i32 2}
!515 = !{ptr @dle_init._entry.323, !514, !"_entry", i1 false, i1 false}
!516 = !{ptr @dle_init._entry_ptr.325, !514, !"_entry_ptr", i1 false, i1 false}
!517 = !{ptr @.str.326, !518, !"<string literal>", i1 false, i1 false}
!518 = !{!"../drivers/net/wireless/realtek/rtw89/mac.c", i32 1194, i32 3}
!519 = !{ptr @.str.327, !518, !"<string literal>", i1 false, i1 false}
!520 = !{ptr @get_dle_mem_cfg._entry, !518, !"_entry", i1 false, i1 false}
!521 = !{ptr @get_dle_mem_cfg._entry_ptr, !518, !"_entry_ptr", i1 false, i1 false}
!522 = !{ptr @.str.328, !523, !"<string literal>", i1 false, i1 false}
!523 = !{!"../drivers/net/wireless/realtek/rtw89/mac.c", i32 1254, i32 3}
!524 = !{ptr @.str.329, !523, !"<string literal>", i1 false, i1 false}
!525 = !{ptr @dle_mix_cfg._entry, !523, !"_entry", i1 false, i1 false}
!526 = !{ptr @dle_mix_cfg._entry_ptr, !523, !"_entry_ptr", i1 false, i1 false}
!527 = !{ptr @.str.331, !528, !"<string literal>", i1 false, i1 false}
!528 = !{!"../drivers/net/wireless/realtek/rtw89/mac.c", i32 1271, i32 3}
!529 = !{ptr @dle_mix_cfg._entry.330, !528, !"_entry", i1 false, i1 false}
!530 = !{ptr @dle_mix_cfg._entry_ptr.332, !528, !"_entry_ptr", i1 false, i1 false}
!531 = !{ptr @.str.333, !532, !"<string literal>", i1 false, i1 false}
!532 = !{!"../drivers/net/wireless/realtek/rtw89/mac.c", i32 2475, i32 3}
!533 = !{ptr @.str.334, !532, !"<string literal>", i1 false, i1 false}
!534 = !{ptr @rtw89_mac_trx_init._entry, !532, !"_entry", i1 false, i1 false}
!535 = !{ptr @rtw89_mac_trx_init._entry_ptr, !532, !"_entry_ptr", i1 false, i1 false}
!536 = !{ptr @.str.336, !537, !"<string literal>", i1 false, i1 false}
!537 = !{!"../drivers/net/wireless/realtek/rtw89/mac.c", i32 2481, i32 3}
!538 = !{ptr @rtw89_mac_trx_init._entry.335, !537, !"_entry", i1 false, i1 false}
!539 = !{ptr @rtw89_mac_trx_init._entry_ptr.337, !537, !"_entry_ptr", i1 false, i1 false}
!540 = !{ptr @.str.339, !541, !"<string literal>", i1 false, i1 false}
!541 = !{!"../drivers/net/wireless/realtek/rtw89/mac.c", i32 2488, i32 4}
!542 = !{ptr @rtw89_mac_trx_init._entry.338, !541, !"_entry", i1 false, i1 false}
!543 = !{ptr @rtw89_mac_trx_init._entry_ptr.340, !541, !"_entry_ptr", i1 false, i1 false}
!544 = !{ptr @.str.342, !545, !"<string literal>", i1 false, i1 false}
!545 = !{!"../drivers/net/wireless/realtek/rtw89/mac.c", i32 2495, i32 3}
!546 = !{ptr @rtw89_mac_trx_init._entry.341, !545, !"_entry", i1 false, i1 false}
!547 = !{ptr @rtw89_mac_trx_init._entry_ptr.343, !545, !"_entry_ptr", i1 false, i1 false}
!548 = !{ptr @.str.345, !549, !"<string literal>", i1 false, i1 false}
!549 = !{!"../drivers/net/wireless/realtek/rtw89/mac.c", i32 2501, i32 3}
!550 = !{ptr @rtw89_mac_trx_init._entry.344, !549, !"_entry", i1 false, i1 false}
!551 = !{ptr @rtw89_mac_trx_init._entry_ptr.346, !549, !"_entry_ptr", i1 false, i1 false}
!552 = !{ptr @.str.348, !553, !"<string literal>", i1 false, i1 false}
!553 = !{!"../drivers/net/wireless/realtek/rtw89/mac.c", i32 2507, i32 3}
!554 = !{ptr @rtw89_mac_trx_init._entry.347, !553, !"_entry", i1 false, i1 false}
!555 = !{ptr @rtw89_mac_trx_init._entry_ptr.349, !553, !"_entry_ptr", i1 false, i1 false}
!556 = !{ptr @.str.350, !557, !"<string literal>", i1 false, i1 false}
!557 = !{!"../drivers/net/wireless/realtek/rtw89/mac.c", i32 1527, i32 3}
!558 = !{ptr @.str.351, !557, !"<string literal>", i1 false, i1 false}
!559 = !{ptr @dmac_init._entry, !557, !"_entry", i1 false, i1 false}
!560 = !{ptr @dmac_init._entry_ptr, !557, !"_entry_ptr", i1 false, i1 false}
!561 = !{ptr @.str.353, !562, !"<string literal>", i1 false, i1 false}
!562 = !{!"../drivers/net/wireless/realtek/rtw89/mac.c", i32 1533, i32 3}
!563 = !{ptr @dmac_init._entry.352, !562, !"_entry", i1 false, i1 false}
!564 = !{ptr @dmac_init._entry_ptr.354, !562, !"_entry_ptr", i1 false, i1 false}
!565 = !{ptr @.str.356, !566, !"<string literal>", i1 false, i1 false}
!566 = !{!"../drivers/net/wireless/realtek/rtw89/mac.c", i32 1539, i32 3}
!567 = !{ptr @dmac_init._entry.355, !566, !"_entry", i1 false, i1 false}
!568 = !{ptr @dmac_init._entry_ptr.357, !566, !"_entry_ptr", i1 false, i1 false}
!569 = !{ptr @.str.359, !570, !"<string literal>", i1 false, i1 false}
!570 = !{!"../drivers/net/wireless/realtek/rtw89/mac.c", i32 1545, i32 3}
!571 = !{ptr @dmac_init._entry.358, !570, !"_entry", i1 false, i1 false}
!572 = !{ptr @dmac_init._entry_ptr.360, !570, !"_entry_ptr", i1 false, i1 false}
!573 = !{ptr @.str.362, !574, !"<string literal>", i1 false, i1 false}
!574 = !{!"../drivers/net/wireless/realtek/rtw89/mac.c", i32 1551, i32 3}
!575 = !{ptr @dmac_init._entry.361, !574, !"_entry", i1 false, i1 false}
!576 = !{ptr @dmac_init._entry_ptr.363, !574, !"_entry_ptr", i1 false, i1 false}
!577 = !{ptr @.str.364, !578, !"<string literal>", i1 false, i1 false}
!578 = !{!"../drivers/net/wireless/realtek/rtw89/mac.c", i32 1467, i32 3}
!579 = !{ptr @.str.365, !578, !"<string literal>", i1 false, i1 false}
!580 = !{ptr @sta_sch_init._entry, !578, !"_entry", i1 false, i1 false}
!581 = !{ptr @sta_sch_init._entry_ptr, !578, !"_entry_ptr", i1 false, i1 false}
!582 = !{ptr @.str.366, !583, !"<string literal>", i1 false, i1 false}
!583 = !{!"../drivers/net/wireless/realtek/rtw89/mac.c", i32 1925, i32 3}
!584 = !{ptr @.str.367, !583, !"<string literal>", i1 false, i1 false}
!585 = !{ptr @cmac_init._entry, !583, !"_entry", i1 false, i1 false}
!586 = !{ptr @cmac_init._entry_ptr, !583, !"_entry_ptr", i1 false, i1 false}
!587 = !{ptr @.str.369, !588, !"<string literal>", i1 false, i1 false}
!588 = !{!"../drivers/net/wireless/realtek/rtw89/mac.c", i32 1931, i32 3}
!589 = !{ptr @cmac_init._entry.368, !588, !"_entry", i1 false, i1 false}
!590 = !{ptr @cmac_init._entry_ptr.370, !588, !"_entry_ptr", i1 false, i1 false}
!591 = !{ptr @.str.372, !592, !"<string literal>", i1 false, i1 false}
!592 = !{!"../drivers/net/wireless/realtek/rtw89/mac.c", i32 1938, i32 3}
!593 = !{ptr @cmac_init._entry.371, !592, !"_entry", i1 false, i1 false}
!594 = !{ptr @cmac_init._entry_ptr.373, !592, !"_entry_ptr", i1 false, i1 false}
!595 = !{ptr @.str.375, !596, !"<string literal>", i1 false, i1 false}
!596 = !{!"../drivers/net/wireless/realtek/rtw89/mac.c", i32 1945, i32 3}
!597 = !{ptr @cmac_init._entry.374, !596, !"_entry", i1 false, i1 false}
!598 = !{ptr @cmac_init._entry_ptr.376, !596, !"_entry_ptr", i1 false, i1 false}
!599 = !{ptr @.str.378, !600, !"<string literal>", i1 false, i1 false}
!600 = !{!"../drivers/net/wireless/realtek/rtw89/mac.c", i32 1952, i32 3}
!601 = !{ptr @cmac_init._entry.377, !600, !"_entry", i1 false, i1 false}
!602 = !{ptr @cmac_init._entry_ptr.379, !600, !"_entry_ptr", i1 false, i1 false}
!603 = !{ptr @.str.381, !604, !"<string literal>", i1 false, i1 false}
!604 = !{!"../drivers/net/wireless/realtek/rtw89/mac.c", i32 1959, i32 3}
!605 = !{ptr @cmac_init._entry.380, !604, !"_entry", i1 false, i1 false}
!606 = !{ptr @cmac_init._entry_ptr.382, !604, !"_entry_ptr", i1 false, i1 false}
!607 = !{ptr @.str.384, !608, !"<string literal>", i1 false, i1 false}
!608 = !{!"../drivers/net/wireless/realtek/rtw89/mac.c", i32 1965, i32 3}
!609 = !{ptr @cmac_init._entry.383, !608, !"_entry", i1 false, i1 false}
!610 = !{ptr @cmac_init._entry_ptr.385, !608, !"_entry_ptr", i1 false, i1 false}
!611 = !{ptr @.str.387, !612, !"<string literal>", i1 false, i1 false}
!612 = !{!"../drivers/net/wireless/realtek/rtw89/mac.c", i32 1971, i32 3}
!613 = !{ptr @cmac_init._entry.386, !612, !"_entry", i1 false, i1 false}
!614 = !{ptr @cmac_init._entry_ptr.388, !612, !"_entry_ptr", i1 false, i1 false}
!615 = !{ptr @.str.390, !616, !"<string literal>", i1 false, i1 false}
!616 = !{!"../drivers/net/wireless/realtek/rtw89/mac.c", i32 1977, i32 3}
!617 = !{ptr @cmac_init._entry.389, !616, !"_entry", i1 false, i1 false}
!618 = !{ptr @cmac_init._entry_ptr.391, !616, !"_entry_ptr", i1 false, i1 false}
!619 = !{ptr @.str.393, !620, !"<string literal>", i1 false, i1 false}
!620 = !{!"../drivers/net/wireless/realtek/rtw89/mac.c", i32 1983, i32 3}
!621 = !{ptr @cmac_init._entry.392, !620, !"_entry", i1 false, i1 false}
!622 = !{ptr @cmac_init._entry_ptr.394, !620, !"_entry_ptr", i1 false, i1 false}
!623 = !{ptr @.str.395, !624, !"<string literal>", i1 false, i1 false}
!624 = !{!"../drivers/net/wireless/realtek/rtw89/mac.c", i32 1578, i32 3}
!625 = !{ptr @.str.396, !624, !"<string literal>", i1 false, i1 false}
!626 = !{ptr @addr_cam_init._entry, !624, !"_entry", i1 false, i1 false}
!627 = !{ptr @addr_cam_init._entry_ptr, !624, !"_entry_ptr", i1 false, i1 false}
!628 = !{ptr @.str.397, !629, !"<string literal>", i1 false, i1 false}
!629 = !{!"../drivers/net/wireless/realtek/rtw89/mac.c", i32 1619, i32 3}
!630 = !{ptr @.str.398, !629, !"<string literal>", i1 false, i1 false}
!631 = !{ptr @rtw89_mac_typ_fltr_opt._entry, !629, !"_entry", i1 false, i1 false}
!632 = !{ptr @rtw89_mac_typ_fltr_opt._entry_ptr, !629, !"_entry_ptr", i1 false, i1 false}
!633 = !{ptr @.str.400, !634, !"<string literal>", i1 false, i1 false}
!634 = !{!"../drivers/net/wireless/realtek/rtw89/mac.c", i32 1634, i32 3}
!635 = !{ptr @rtw89_mac_typ_fltr_opt._entry.399, !634, !"_entry", i1 false, i1 false}
!636 = !{ptr @rtw89_mac_typ_fltr_opt._entry_ptr.401, !634, !"_entry_ptr", i1 false, i1 false}
!637 = !{ptr @.str.402, !638, !"<string literal>", i1 false, i1 false}
!638 = !{!"../drivers/net/wireless/realtek/rtw89/mac.c", i32 1879, i32 3}
!639 = !{ptr @is_qta_dbcc._entry, !638, !"_entry", i1 false, i1 false}
!640 = !{ptr @is_qta_dbcc._entry_ptr, !638, !"_entry_ptr", i1 false, i1 false}
!641 = !{ptr @.str.403, !642, !"<string literal>", i1 false, i1 false}
!642 = !{!"../drivers/net/wireless/realtek/rtw89/mac.c", i32 2431, i32 4}
!643 = !{ptr @.str.404, !642, !"<string literal>", i1 false, i1 false}
!644 = !{ptr @rtw89_mac_dbcc_enable._entry, !642, !"_entry", i1 false, i1 false}
!645 = !{ptr @rtw89_mac_dbcc_enable._entry_ptr, !642, !"_entry_ptr", i1 false, i1 false}
!646 = !{ptr @.str.406, !647, !"<string literal>", i1 false, i1 false}
!647 = !{!"../drivers/net/wireless/realtek/rtw89/mac.c", i32 2437, i32 4}
!648 = !{ptr @rtw89_mac_dbcc_enable._entry.405, !647, !"_entry", i1 false, i1 false}
!649 = !{ptr @rtw89_mac_dbcc_enable._entry_ptr.407, !647, !"_entry_ptr", i1 false, i1 false}
!650 = !{ptr @.str.409, !651, !"<string literal>", i1 false, i1 false}
!651 = !{!"../drivers/net/wireless/realtek/rtw89/mac.c", i32 2441, i32 3}
!652 = !{ptr @rtw89_mac_dbcc_enable._entry.408, !651, !"_entry", i1 false, i1 false}
!653 = !{ptr @rtw89_mac_dbcc_enable._entry_ptr.410, !651, !"_entry_ptr", i1 false, i1 false}
!654 = !{ptr @.str.411, !655, !"<string literal>", i1 false, i1 false}
!655 = !{!"../drivers/net/wireless/realtek/rtw89/mac.c", i32 2297, i32 3}
!656 = !{ptr @.str.412, !655, !"<string literal>", i1 false, i1 false}
!657 = !{ptr @band1_enable._entry, !655, !"_entry", i1 false, i1 false}
!658 = !{ptr @band1_enable._entry_ptr, !655, !"_entry_ptr", i1 false, i1 false}
!659 = !{ptr @.str.414, !660, !"<string literal>", i1 false, i1 false}
!660 = !{!"../drivers/net/wireless/realtek/rtw89/mac.c", i32 2310, i32 3}
!661 = !{ptr @band1_enable._entry.413, !660, !"_entry", i1 false, i1 false}
!662 = !{ptr @band1_enable._entry_ptr.415, !660, !"_entry_ptr", i1 false, i1 false}
!663 = !{ptr @.str.417, !664, !"<string literal>", i1 false, i1 false}
!664 = !{!"../drivers/net/wireless/realtek/rtw89/mac.c", i32 2316, i32 3}
!665 = !{ptr @band1_enable._entry.416, !664, !"_entry", i1 false, i1 false}
!666 = !{ptr @band1_enable._entry_ptr.418, !664, !"_entry_ptr", i1 false, i1 false}
!667 = !{ptr @.str.420, !668, !"<string literal>", i1 false, i1 false}
!668 = !{!"../drivers/net/wireless/realtek/rtw89/mac.c", i32 2327, i32 3}
!669 = !{ptr @band1_enable._entry.419, !668, !"_entry", i1 false, i1 false}
!670 = !{ptr @band1_enable._entry_ptr.421, !668, !"_entry_ptr", i1 false, i1 false}
!671 = !{ptr @.str.423, !672, !"<string literal>", i1 false, i1 false}
!672 = !{!"../drivers/net/wireless/realtek/rtw89/mac.c", i32 2333, i32 3}
!673 = !{ptr @band1_enable._entry.422, !672, !"_entry", i1 false, i1 false}
!674 = !{ptr @band1_enable._entry_ptr.424, !672, !"_entry_ptr", i1 false, i1 false}
!675 = !{ptr @.str.426, !676, !"<string literal>", i1 false, i1 false}
!676 = !{!"../drivers/net/wireless/realtek/rtw89/mac.c", i32 2339, i32 3}
!677 = !{ptr @band1_enable._entry.425, !676, !"_entry", i1 false, i1 false}
!678 = !{ptr @band1_enable._entry_ptr.427, !676, !"_entry_ptr", i1 false, i1 false}
!679 = !{ptr @.str.428, !680, !"<string literal>", i1 false, i1 false}
!680 = !{!"../drivers/net/wireless/realtek/rtw89/mac.c", i32 2215, i32 3}
!681 = !{ptr @dle_quota_change._entry, !680, !"_entry", i1 false, i1 false}
!682 = !{ptr @dle_quota_change._entry_ptr, !680, !"_entry_ptr", i1 false, i1 false}
!683 = !{ptr @dle_quota_change._entry.429, !684, !"_entry", i1 false, i1 false}
!684 = !{!"../drivers/net/wireless/realtek/rtw89/mac.c", i32 2220, i32 3}
!685 = !{ptr @dle_quota_change._entry_ptr.430, !684, !"_entry_ptr", i1 false, i1 false}
!686 = !{ptr @.str.432, !687, !"<string literal>", i1 false, i1 false}
!687 = !{!"../drivers/net/wireless/realtek/rtw89/mac.c", i32 2228, i32 3}
!688 = !{ptr @dle_quota_change._entry.431, !687, !"_entry", i1 false, i1 false}
!689 = !{ptr @dle_quota_change._entry_ptr.433, !687, !"_entry_ptr", i1 false, i1 false}
!690 = !{ptr @.str.435, !691, !"<string literal>", i1 false, i1 false}
!691 = !{!"../drivers/net/wireless/realtek/rtw89/mac.c", i32 2240, i32 3}
!692 = !{ptr @dle_quota_change._entry.434, !691, !"_entry", i1 false, i1 false}
!693 = !{ptr @dle_quota_change._entry_ptr.436, !691, !"_entry_ptr", i1 false, i1 false}
!694 = !{ptr @.str.438, !695, !"<string literal>", i1 false, i1 false}
!695 = !{!"../drivers/net/wireless/realtek/rtw89/mac.c", i32 2246, i32 3}
!696 = !{ptr @dle_quota_change._entry.437, !695, !"_entry", i1 false, i1 false}
!697 = !{ptr @dle_quota_change._entry_ptr.439, !695, !"_entry_ptr", i1 false, i1 false}
!698 = !{ptr @.str.441, !699, !"<string literal>", i1 false, i1 false}
!699 = !{!"../drivers/net/wireless/realtek/rtw89/mac.c", i32 2258, i32 3}
!700 = !{ptr @dle_quota_change._entry.440, !699, !"_entry", i1 false, i1 false}
!701 = !{ptr @dle_quota_change._entry_ptr.442, !699, !"_entry_ptr", i1 false, i1 false}
!702 = !{ptr @.str.443, !703, !"<string literal>", i1 false, i1 false}
!703 = !{!"../drivers/net/wireless/realtek/rtw89/mac.c", i32 2357, i32 3}
!704 = !{ptr @.str.444, !703, !"<string literal>", i1 false, i1 false}
!705 = !{ptr @rtw89_mac_enable_imr._entry, !703, !"_entry", i1 false, i1 false}
!706 = !{ptr @rtw89_mac_enable_imr._entry_ptr, !703, !"_entry_ptr", i1 false, i1 false}
!707 = distinct !{null, !708, !"rtw_port_base", i1 false, i1 false}
!708 = !{!"../drivers/net/wireless/realtek/rtw89/mac.c", i32 2723, i32 36}
!709 = !{ptr @rtw89_mac_port_cfg_bss_color.masks, !710, !"masks", i1 false, i1 false}
!710 = !{!"../drivers/net/wireless/realtek/rtw89/mac.c", i32 2907, i32 19}
!711 = !{ptr @rtw89_mac_c2h_info_handler, !712, !"rtw89_mac_c2h_info_handler", i1 false, i1 false}
!712 = !{!"../drivers/net/wireless/realtek/rtw89/mac.c", i32 3128, i32 15}
!713 = !{ptr @.str.445, !714, !"<string literal>", i1 false, i1 false}
!714 = !{!"../drivers/net/wireless/realtek/rtw89/mac.c", i32 3090, i32 2}
!715 = !{ptr @.str.446, !716, !"<string literal>", i1 false, i1 false}
!716 = !{!"../drivers/net/wireless/realtek/rtw89/mac.c", i32 3101, i32 2}
!717 = !{ptr @.str.447, !718, !"<string literal>", i1 false, i1 false}
!718 = !{!"../drivers/net/wireless/realtek/rtw89/mac.c", i32 3113, i32 2}
!719 = !{ptr @.str.448, !718, !"<string literal>", i1 false, i1 false}
!720 = !{ptr @rtw89_mac_c2h_log._entry, !718, !"_entry", i1 false, i1 false}
!721 = !{ptr @rtw89_mac_c2h_log._entry_ptr, !718, !"_entry_ptr", i1 false, i1 false}
!722 = !{ptr @rtw89_mac_c2h_ofld_handler, !723, !"rtw89_mac_c2h_ofld_handler", i1 false, i1 false}
!723 = !{!"../drivers/net/wireless/realtek/rtw89/mac.c", i32 3118, i32 15}
!724 = distinct !{null, !725, !"<string literal>", i1 false, i1 false}
!725 = !{!"../drivers/net/wireless/realtek/rtw89/core.h", i32 3031, i32 2}
!726 = distinct !{null, !725, !"<string literal>", i1 false, i1 false}
!727 = !{ptr @.str.451, !728, !"<string literal>", i1 false, i1 false}
!728 = !{!"../drivers/net/wireless/realtek/rtw89/mac.c", i32 3471, i32 2}
!729 = !{ptr @.str.452, !730, !"<string literal>", i1 false, i1 false}
!730 = !{!"../drivers/net/wireless/realtek/rtw89/mac.c", i32 3735, i32 4}
!731 = !{ptr @.str.453, !730, !"<string literal>", i1 false, i1 false}
!732 = !{ptr @__rtw89_mac_set_tx_time._entry, !730, !"_entry", i1 false, i1 false}
!733 = !{ptr @__rtw89_mac_set_tx_time._entry_ptr, !730, !"_entry_ptr", i1 false, i1 false}
!734 = !{i32 1, !"wchar_size", i32 2}
!735 = !{i32 1, !"min_enum_size", i32 4}
!736 = !{i32 8, !"branch-target-enforcement", i32 0}
!737 = !{i32 8, !"sign-return-address", i32 0}
!738 = !{i32 8, !"sign-return-address-all", i32 0}
!739 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!740 = !{i32 7, !"uwtable", i32 1}
!741 = !{i32 7, !"frame-pointer", i32 2}
!742 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!743 = !{i32 0, i32 33}
!744 = !{i8 0, i8 2}
!745 = !{!"auto-init"}
