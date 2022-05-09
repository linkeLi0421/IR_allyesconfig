; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/realtek/rtw89/rtw8852a.c_pt.bc'
source_filename = "../drivers/net/wireless/realtek/rtw89/rtw8852a.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+rtw8852a_chip_info\22, \22a\22\09"
module asm "\09.weak\09__crc_rtw8852a_chip_info\09\09\09\09"
module asm "\09.long\09__crc_rtw8852a_chip_info\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rtw8852a_chip_info:\09\09\09\09\09"
module asm "\09.asciz \09\22rtw8852a_chip_info\22\09\09\09\09\09"
module asm "__kstrtabns_rtw8852a_chip_info:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.rtw89_reg2_def = type { i32, i32 }
%struct.rtw89_chip_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rtw89_hfc_param_ini = type { ptr, ptr, ptr, i8 }
%struct.rtw89_dle_mem = type { i32, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rtw89_phy_table = type { ptr, i32, i32 }
%struct.rtw89_txpwr_table = type { ptr, i32, ptr }
%struct.rtw89_phy_dig_gain_table = type { ptr, ptr, ptr, ptr }
%struct.rtw89_btc_fbtc_mreg = type { i16, i16, i32 }
%struct.rtw89_btc_rf_trx_para = type { i32, i32, i8, i8 }
%struct.rtw89_chip_info = type { i32, ptr, ptr, i32, i16, i8, ptr, ptr, [2 x i32], i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, ptr, ptr, ptr, [4 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i32, i32, i8, i8, i8, i8, ptr, ptr, i8, i8, ptr, i8, ptr, i8, ptr, i8 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.rtw89_phy_reg3_tbl = type { ptr, i32 }
%struct.rtw89_reg3_def = type { i32, i32, i32 }
%struct.rtw89_hfc_ch_cfg = type { i16, i16, i8 }
%struct.rtw89_hfc_pub_cfg = type { i16, i16, i16, i16 }
%struct.rtw89_hfc_prec_cfg = type { i16, i16, i16, i16, i8, i8, i8, i8 }
%struct.rtw89_dle_size = type { i16, i16, i16 }
%struct.rtw89_wde_quota = type { i16, i16, i16, i16 }
%struct.rtw89_ple_quota = type { i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16 }
%struct.rtw89_pwr_cfg = type { i16, i8, i8, i8, i8, i8 }
%struct.rtw89_dev = type { ptr, ptr, i8, ptr, %struct.rtw89_hal, %struct.rtw89_mac_info, %struct.rtw89_fw_info, %struct.rtw89_hci_info, %struct.rtw89_efuse, %struct.rtw89_traffic_stats, %struct.mutex, %struct.list_head, %struct.mutex, ptr, %struct.work_struct, %struct.delayed_work, %struct.spinlock, %struct.list_head, %struct.work_struct, %struct.rtw89_cam_info, %struct.sk_buff_head, %struct.work_struct, %struct.list_head, %struct.rtw89_ser, [1 x i32], [4 x i32], [1 x i32], %struct.rtw89_phy_stat, %struct.rtw89_dack_info, %struct.rtw89_iqk_info, %struct.rtw89_dpk_info, [4 x i8], i8, %struct.rtw89_fem_info, [2 x %struct.rtw89_txpwr_byrate], %struct.rtw89_tssi_info, %struct.rtw89_power_trim_info, %struct.rtw89_cfo_tracking_info, %struct.rtw89_env_monitor_info, %struct.rtw89_dig_info, %struct.rtw89_phy_ch_info, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.rtw89_ppdu_sts_info, i8, i8, ptr, %struct.rtw89_sar_info, %struct.rtw89_btc, i32, i8, [67 x i8], %struct.net_device, %struct.napi_struct, i32, [0 x i8], [28 x i8] }
%struct.rtw89_hal = type { i32, i8, i8, i8, i8, i32, i8, i8, i32, i32, i32, i8, i8 }
%struct.rtw89_mac_info = type { %struct.rtw89_dle_info, %struct.rtw89_hfc_param, i32, i8, i8 }
%struct.rtw89_dle_info = type { i32, i16, i16, i16, i16 }
%struct.rtw89_hfc_param = type { i8, i8, i8, ptr, [13 x %struct.rtw89_hfc_ch_info], %struct.rtw89_hfc_pub_cfg, %struct.rtw89_hfc_pub_info, %struct.rtw89_hfc_prec_cfg }
%struct.rtw89_hfc_ch_info = type { i16, i16 }
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
%struct.rtw8852a_bb_pmac_info = type { i8, i16, i16, i16, i8 }
%struct.rtw89_channel_params = type { i8, i8, i8, i8 }
%struct.rtw8852a_efuse = type { [528 x i8], %struct.rtw8852a_tssi_offset, [10 x i8], %struct.rtw8852a_tssi_offset, [94 x i8], i8, i8, i8, i8, [5 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [2 x i8], [3 x i8], i8, i8, [46 x i8], [6 x i8], [5 x i8], [3 x i8], [242 x i8], %union.anon.133 }
%struct.rtw8852a_tssi_offset = type { [6 x i8], [5 x i8], [7 x i8], [14 x i8] }
%union.anon.133 = type { %struct.rtw8852au_efuse }
%struct.rtw8852au_efuse = type { [56 x i8], [6 x i8] }
%struct.rtw89_txpwr_limit_ru = type { [8 x i8], [8 x i8], [8 x i8] }
%struct.rtw89_txpwr_limit = type { [2 x i8], [2 x i8], [2 x i8], [8 x [2 x i8]], [4 x [2 x i8]], [2 x [2 x i8]], [2 x i8], [2 x i8], [2 x i8] }
%struct.rtw89_rate_desc = type { i32, i32, i8 }
%struct.rtw89_rx_phy_ppdu = type { ptr, i32, i8, [4 x i8], i8, i8, i8, i16, i8, i8 }
%struct.ieee80211_rx_status = type <{ i64, i64, i32, i32, i32, i16, i8, i16, i8, i8, i8, i8, i8, i8, i8, [4 x i8], i8, i8, [2 x i8] }>
%struct.rtw89_mac_ax_coex = type { i8, i8 }

@rtw8852a_pmac_ht20_mcs7_tbl = internal constant { [69 x %struct.rtw89_reg2_def], [152 x i8] } { [69 x %struct.rtw89_reg2_def] [%struct.rtw89_reg2_def { i32 17580, i32 0 }, %struct.rtw89_reg2_def { i32 17584, i32 0 }, %struct.rtw89_reg2_def { i32 17588, i32 0 }, %struct.rtw89_reg2_def { i32 17592, i32 0 }, %struct.rtw89_reg2_def { i32 17596, i32 0 }, %struct.rtw89_reg2_def { i32 17600, i32 0 }, %struct.rtw89_reg2_def { i32 17604, i32 0 }, %struct.rtw89_reg2_def { i32 17608, i32 0 }, %struct.rtw89_reg2_def { i32 17612, i32 0 }, %struct.rtw89_reg2_def { i32 17616, i32 0 }, %struct.rtw89_reg2_def { i32 17620, i32 0 }, %struct.rtw89_reg2_def { i32 17624, i32 0 }, %struct.rtw89_reg2_def { i32 17628, i32 0 }, %struct.rtw89_reg2_def { i32 17632, i32 0 }, %struct.rtw89_reg2_def { i32 17636, i32 0 }, %struct.rtw89_reg2_def { i32 17640, i32 0 }, %struct.rtw89_reg2_def { i32 17644, i32 0 }, %struct.rtw89_reg2_def { i32 17648, i32 0 }, %struct.rtw89_reg2_def { i32 17652, i32 0 }, %struct.rtw89_reg2_def { i32 17656, i32 0 }, %struct.rtw89_reg2_def { i32 17660, i32 0 }, %struct.rtw89_reg2_def { i32 17664, i32 0 }, %struct.rtw89_reg2_def { i32 17668, i32 0 }, %struct.rtw89_reg2_def { i32 17672, i32 0 }, %struct.rtw89_reg2_def { i32 17676, i32 0 }, %struct.rtw89_reg2_def { i32 17680, i32 0 }, %struct.rtw89_reg2_def { i32 17684, i32 0 }, %struct.rtw89_reg2_def { i32 17688, i32 0 }, %struct.rtw89_reg2_def { i32 17692, i32 0 }, %struct.rtw89_reg2_def { i32 17696, i32 0 }, %struct.rtw89_reg2_def { i32 17700, i32 0 }, %struct.rtw89_reg2_def { i32 17704, i32 0 }, %struct.rtw89_reg2_def { i32 17708, i32 0 }, %struct.rtw89_reg2_def { i32 17712, i32 1310670465 }, %struct.rtw89_reg2_def { i32 17716, i32 0 }, %struct.rtw89_reg2_def { i32 17720, i32 90 }, %struct.rtw89_reg2_def { i32 17724, i32 0 }, %struct.rtw89_reg2_def { i32 17728, i32 0 }, %struct.rtw89_reg2_def { i32 17732, i32 0 }, %struct.rtw89_reg2_def { i32 17736, i32 0 }, %struct.rtw89_reg2_def { i32 17740, i32 0 }, %struct.rtw89_reg2_def { i32 17744, i32 0 }, %struct.rtw89_reg2_def { i32 17748, i32 0 }, %struct.rtw89_reg2_def { i32 17752, i32 0 }, %struct.rtw89_reg2_def { i32 17756, i32 0 }, %struct.rtw89_reg2_def { i32 17760, i32 1080033306 }, %struct.rtw89_reg2_def { i32 17764, i32 1073741824 }, %struct.rtw89_reg2_def { i32 17768, i32 0 }, %struct.rtw89_reg2_def { i32 17772, i32 0 }, %struct.rtw89_reg2_def { i32 17776, i32 67108871 }, %struct.rtw89_reg2_def { i32 17780, i32 56455 }, %struct.rtw89_reg2_def { i32 17784, i32 2987 }, %struct.rtw89_reg2_def { i32 17788, i32 65011712 }, %struct.rtw89_reg2_def { i32 17792, i32 72 }, %struct.rtw89_reg2_def { i32 17796, i32 0 }, %struct.rtw89_reg2_def { i32 17800, i32 1000 }, %struct.rtw89_reg2_def { i32 17804, i32 805306368 }, %struct.rtw89_reg2_def { i32 17808, i32 0 }, %struct.rtw89_reg2_def { i32 17812, i32 268435456 }, %struct.rtw89_reg2_def { i32 17816, i32 1 }, %struct.rtw89_reg2_def { i32 17820, i32 196608 }, %struct.rtw89_reg2_def { i32 17824, i32 16777216 }, %struct.rtw89_reg2_def { i32 17828, i32 50332160 }, %struct.rtw89_reg2_def { i32 17832, i32 -1073741376 }, %struct.rtw89_reg2_def { i32 17836, i32 2013364224 }, %struct.rtw89_reg2_def { i32 17840, i32 -2147483648 }, %struct.rtw89_reg2_def { i32 17844, i32 29885952 }, %struct.rtw89_reg2_def { i32 17848, i32 2 }, %struct.rtw89_reg2_def { i32 17812, i32 268435456 }], [152 x i8] zeroinitializer }, align 32
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"PMAC Tx Enable\00", [17 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"PMAC CFG Tx PWR = %d\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"PMAC CFG Tx Path = %d\00", [42 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Error Tx Path\00", [18 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Tx mode switch\00", [17 x i8] zeroinitializer }, align 32
@rtw8852a_chip_ops = internal constant { %struct.rtw89_chip_ops, [36 x i8] } { %struct.rtw89_chip_ops { ptr @rtw8852a_bb_reset, ptr @rtw8852a_bb_sethw, ptr @rtw89_phy_read_rf, ptr @rtw89_phy_write_rf, ptr @rtw8852a_set_channel, ptr @rtw8852a_set_channel_help, ptr @rtw8852a_read_efuse, ptr @rtw8852a_read_phycap, ptr @rtw8852a_fem_setup, ptr @rtw8852a_rfk_init, ptr @rtw8852a_rfk_channel, ptr @rtw8852a_rfk_band_changed, ptr @rtw8852a_rfk_scan, ptr @rtw8852a_rfk_track, ptr @rtw8852a_power_trim, ptr @rtw8852a_set_txpwr, ptr @rtw8852a_set_txpwr_ctrl, ptr @rtw8852a_init_txpwr_unit, ptr @rtw8852a_get_thermal, ptr @rtw8852a_ctrl_btg, ptr @rtw8852a_query_ppdu, ptr @rtw8852a_bb_ctrl_btc_preagc, ptr @rtw8852a_set_txpwr_ul_tb_offset, ptr @rtw8852a_btc_set_rfe, ptr @rtw8852a_btc_init_cfg, ptr @rtw8852a_btc_set_wl_pri, ptr @rtw8852a_btc_set_wl_txpwr_ctrl, ptr @rtw8852a_btc_get_bt_rssi, ptr @rtw8852a_btc_bt_aci_imp, ptr @rtw8852a_btc_update_bt_cnt, ptr @rtw8852a_btc_wl_s1_standby }, [36 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rtw89/rtw8852a_fw.bin\00", [42 x i8] zeroinitializer }, align 32
@rtw8852a_hfc_param_ini_pcie = internal constant { [3 x %struct.rtw89_hfc_param_ini], [48 x i8] } { [3 x %struct.rtw89_hfc_param_ini] [%struct.rtw89_hfc_param_ini { ptr @rtw8852a_hfc_chcfg_pcie, ptr @rtw8852a_hfc_pubcfg_pcie, ptr @rtw_hfc_preccfg_pcie, i8 0 }, %struct.rtw89_hfc_param_ini { ptr null, ptr null, ptr @rtw_hfc_preccfg_pcie, i8 0 }, %struct.rtw89_hfc_param_ini zeroinitializer], [48 x i8] zeroinitializer }, align 32
@rtw8852a_dle_mem_pcie = internal constant { [3 x %struct.rtw89_dle_mem], [44 x i8] } { [3 x %struct.rtw89_dle_mem] [%struct.rtw89_dle_mem { i32 0, ptr @wde_size0, ptr @ple_size0, ptr @wde_qt0, ptr @wde_qt0, ptr @ple_qt4, ptr @ple_qt5 }, %struct.rtw89_dle_mem { i32 1, ptr @wde_size4, ptr @ple_size4, ptr @wde_qt4, ptr @wde_qt4, ptr @ple_qt13, ptr @ple_qt13 }, %struct.rtw89_dle_mem { i32 2, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }], [44 x i8] zeroinitializer }, align 32
@pwr_on_seq_8852a = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @rtw8852a_pwron, ptr null], [24 x i8] zeroinitializer }, align 32
@pwr_off_seq_8852a = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @rtw8852a_pwroff, ptr null], [24 x i8] zeroinitializer }, align 32
@rtw89_8852a_phy_bb_table = external dso_local constant %struct.rtw89_phy_table, align 4
@rtw89_8852a_phy_radioa_table = external dso_local constant %struct.rtw89_phy_table, align 4
@rtw89_8852a_phy_radiob_table = external dso_local constant %struct.rtw89_phy_table, align 4
@rtw89_8852a_phy_nctl_table = external dso_local constant %struct.rtw89_phy_table, align 4
@rtw89_8852a_byr_table = external dso_local constant %struct.rtw89_txpwr_table, align 4
@rtw89_8852a_phy_dig_table = external dso_local constant %struct.rtw89_phy_dig_gain_table, align 4
@rtw89_8852a_txpwr_lmt_2g = external dso_local constant [2 x [2 x [3 x [2 x [14 x [14 x i8]]]]]], align 1
@rtw89_8852a_txpwr_lmt_5g = external dso_local constant [3 x [2 x [3 x [2 x [14 x [53 x i8]]]]]], align 1
@rtw89_8852a_txpwr_lmt_ru_2g = external dso_local constant [3 x [2 x [14 x [14 x i8]]]], align 1
@rtw89_8852a_txpwr_lmt_ru_5g = external dso_local constant [3 x [2 x [14 x [53 x i8]]]], align 1
@rtw89_btc_8852a_wl_rssi_thres = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"<2(\1E", [28 x i8] zeroinitializer }, align 32
@rtw89_btc_8852a_bt_rssi_thres = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"($\1F\1C", [28 x i8] zeroinitializer }, align 32
@rtw89_btc_8852a_mon_reg = internal global { [12 x %struct.rtw89_btc_fbtc_mreg], [32 x i8] } { [12 x %struct.rtw89_btc_fbtc_mreg] [%struct.rtw89_btc_fbtc_mreg { i16 0, i16 1024, i32 618266624 }, %struct.rtw89_btc_fbtc_mreg { i16 0, i16 1024, i32 685375488 }, %struct.rtw89_btc_fbtc_mreg { i16 0, i16 1024, i32 752484352 }, %struct.rtw89_btc_fbtc_mreg { i16 0, i16 1024, i32 819593216 }, %struct.rtw89_btc_fbtc_mreg { i16 0, i16 1024, i32 1289355264 }, %struct.rtw89_btc_fbtc_mreg { i16 0, i16 1024, i32 282722304 }, %struct.rtw89_btc_fbtc_mreg { i16 0, i16 1024, i32 551157760 }, %struct.rtw89_btc_fbtc_mreg { i16 0, i16 1024, i32 886702080 }, %struct.rtw89_btc_fbtc_mreg { i16 0, i16 1024, i32 -187826176 }, %struct.rtw89_btc_fbtc_mreg { i16 0, i16 1024, i32 612630528 }, %struct.rtw89_btc_fbtc_mreg { i16 256, i16 1024, i32 -2146893824 }, %struct.rtw89_btc_fbtc_mreg { i16 1024, i16 1024, i32 2013331456 }], [32 x i8] zeroinitializer }, align 32
@rtw89_btc_8852a_rf_ul = internal global { [9 x %struct.rtw89_btc_rf_trx_para], [52 x i8] } { [9 x %struct.rtw89_btc_rf_trx_para] [%struct.rtw89_btc_rf_trx_para { i32 255, i32 0, i8 0, i8 7 }, %struct.rtw89_btc_rf_trx_para { i32 255, i32 2, i8 0, i8 7 }, %struct.rtw89_btc_rf_trx_para { i32 255, i32 0, i8 0, i8 7 }, %struct.rtw89_btc_rf_trx_para { i32 255, i32 0, i8 0, i8 7 }, %struct.rtw89_btc_rf_trx_para { i32 255, i32 0, i8 0, i8 7 }, %struct.rtw89_btc_rf_trx_para { i32 255, i32 0, i8 0, i8 7 }, %struct.rtw89_btc_rf_trx_para { i32 6, i32 1, i8 0, i8 7 }, %struct.rtw89_btc_rf_trx_para { i32 13, i32 1, i8 0, i8 7 }, %struct.rtw89_btc_rf_trx_para { i32 13, i32 1, i8 0, i8 7 }], [52 x i8] zeroinitializer }, align 32
@rtw89_btc_8852a_rf_dl = internal global { [9 x %struct.rtw89_btc_rf_trx_para], [52 x i8] } { [9 x %struct.rtw89_btc_rf_trx_para] [%struct.rtw89_btc_rf_trx_para { i32 255, i32 0, i8 0, i8 7 }, %struct.rtw89_btc_rf_trx_para { i32 255, i32 2, i8 0, i8 7 }, %struct.rtw89_btc_rf_trx_para { i32 255, i32 0, i8 0, i8 7 }, %struct.rtw89_btc_rf_trx_para { i32 255, i32 0, i8 0, i8 7 }, %struct.rtw89_btc_rf_trx_para { i32 255, i32 0, i8 0, i8 7 }, %struct.rtw89_btc_rf_trx_para { i32 255, i32 0, i8 0, i8 7 }, %struct.rtw89_btc_rf_trx_para { i32 255, i32 1, i8 0, i8 7 }, %struct.rtw89_btc_rf_trx_para { i32 255, i32 1, i8 0, i8 7 }, %struct.rtw89_btc_rf_trx_para { i32 255, i32 1, i8 0, i8 7 }], [52 x i8] zeroinitializer }, align 32
@rtw8852a_chip_info = dso_local constant { %struct.rtw89_chip_info, [52 x i8] } { %struct.rtw89_chip_info { i32 0, ptr @rtw8852a_chip_ops, ptr @.str.5, i32 458752, i16 3500, i8 1, ptr @rtw8852a_hfc_param_ini_pcie, ptr @rtw8852a_dle_mem_pcie, [2 x i32] [i32 49152, i32 53248], i8 2, i8 2, i8 2, i8 -128, i8 10, i8 -128, i8 4, i32 1216, i32 1536, i32 1152, i32 1408, i32 128, ptr @pwr_on_seq_8852a, ptr @pwr_off_seq_8852a, ptr @rtw89_8852a_phy_bb_table, [4 x ptr] [ptr @rtw89_8852a_phy_radioa_table, ptr @rtw89_8852a_phy_radiob_table, ptr null, ptr null], ptr @rtw89_8852a_phy_nctl_table, ptr @rtw89_8852a_byr_table, ptr @rtw89_8852a_phy_dig_table, ptr @rtw89_8852a_txpwr_lmt_2g, ptr @rtw89_8852a_txpwr_lmt_5g, ptr @rtw89_8852a_txpwr_lmt_ru_2g, ptr @rtw89_8852a_txpwr_lmt_ru_5g, i8 2, i8 1, i32 84215908, i32 84213760, i8 5, i8 1, i8 1, i8 6, ptr @rtw89_btc_8852a_wl_rssi_thres, ptr @rtw89_btc_8852a_bt_rssi_thres, i8 2, i8 12, ptr @rtw89_btc_8852a_mon_reg, i8 9, ptr @rtw89_btc_8852a_rf_ul, i8 9, ptr @rtw89_btc_8852a_rf_dl, i8 14 }, [52 x i8] zeroinitializer }, align 32
@__kstrtab_rtw8852a_chip_info = external dso_local constant [0 x i8], align 1
@__kstrtabns_rtw8852a_chip_info = external dso_local constant [0 x i8], align 1
@__ksymtab_rtw8852a_chip_info = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rtw8852a_chip_info to i32), ptr @__kstrtab_rtw8852a_chip_info, ptr @__kstrtabns_rtw8852a_chip_info }, section "___ksymtab+rtw8852a_chip_info", align 4
@__UNIQUE_ID_firmware473 = internal constant [42 x i8] c"rtw89_core.firmware=rtw89/rtw8852a_fw.bin\00", section ".modinfo", align 1
@.str.6 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"PMAC Stop Tx\00", [19 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"PMAC CTx Start\00", [17 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"PMAC PTx Start\00", [17 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"drivers/net/wireless/realtek/rtw89/core.h\00", [54 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"should be 4-byte aligned, addr = 0x%08x\0A\00", [55 x i8] zeroinitializer }, align 32
@rtw8852a_ctrl_sco_cck._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.13, i32 653, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Invalid BW:%d for CCK\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rtw8852a_ctrl_sco_cck\00", [42 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"drivers/net/wireless/realtek/rtw89/rtw8852a.c\00", [50 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rtw8852a_ctrl_sco_cck._entry_ptr = internal global ptr @rtw8852a_ctrl_sco_cck._entry, section ".printk_index", align 4
@rtw8852a_sco_barker_threshold = internal constant { [14 x i32], [40 x i8] } { [14 x i32] [i32 118762, i32 119009, i32 119255, i32 119501, i32 119747, i32 119993, i32 120240, i32 120486, i32 120732, i32 120978, i32 121224, i32 121471, i32 121717, i32 122308], [40 x i8] zeroinitializer }, align 32
@rtw8852a_sco_cck_threshold = internal constant { [14 x i32], [40 x i8] } { [14 x i32] [i32 163299, i32 163637, i32 163976, i32 164314, i32 164653, i32 164991, i32 165330, i32 165668, i32 166007, i32 166345, i32 166684, i32 167022, i32 167361, i32 168173], [40 x i8] zeroinitializer }, align 32
@rtw8852a_ch_setting._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.13, i32 671, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Invalid RF_0x18 for Path-%d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rtw8852a_ch_setting\00", [44 x i8] zeroinitializer }, align 32
@rtw8852a_ch_setting._entry_ptr = internal global ptr @rtw8852a_ch_setting._entry, section ".printk_index", align 4
@rtw8852a_ctrl_bw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.13, i32 909, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Fail to switch bw (bw:%d, pri ch:%d)\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rtw8852a_ctrl_bw\00", [47 x i8] zeroinitializer }, align 32
@rtw8852a_ctrl_bw._entry_ptr = internal global ptr @rtw8852a_ctrl_bw._entry, section ".printk_index", align 4
@__const.rtw8852a_bw_setting.adc_sel = private unnamed_addr constant [2 x i32] [i32 4816, i32 13008], align 4
@__const.rtw8852a_bw_setting.wbadc_sel = private unnamed_addr constant [2 x i32] [i32 4844, i32 13036], align 4
@rtw8852a_bw_setting._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.20, ptr @.str.13, i32 818, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rtw8852a_bw_setting\00", [44 x i8] zeroinitializer }, align 32
@rtw8852a_bw_setting._entry_ptr = internal global ptr @rtw8852a_bw_setting._entry, section ".printk_index", align 4
@rtw8852a_bw_setting._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.20, ptr @.str.13, i32 849, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Fail to set ADC\0A\00", [47 x i8] zeroinitializer }, align 32
@rtw8852a_bw_setting._entry_ptr.23 = internal global ptr @rtw8852a_bw_setting._entry.21, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@rtw8852a_read_efuse._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.13, i32 434, ptr @.str.26, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"chip rfe_type is %d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rtw8852a_read_efuse\00", [44 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@rtw8852a_read_efuse._entry_ptr = internal global ptr @rtw8852a_read_efuse._entry, section ".printk_index", align 4
@.str.27 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"[TSSI][EFUSE] path=%d cck[%d]=0x%x\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"[TSSI][EFUSE] path=%d mcs[%d]=0x%x\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"[TSSI][TRIM] no PG, set all trim info to 0\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"[TSSI] path=%d idx=%d trim=0x%x addr=0x%x\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"[THERMAL][TRIM] path=%d thermal_trim=0x%x\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"[PA_BIAS][TRIM] path=%d pa_bias_trim=0x%x\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"[THERMAL][TRIM] no PG, do nothing\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"[THERMAL][TRIM] path=%d thermal_setting=0x%x\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"[PA_BIAS][TRIM] no PG, do nothing\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"[PA_BIAS][TRIM] path=%d 2G=0x%x 5G=0x%x\0A\00", [55 x i8] zeroinitializer }, align 32
@rtw8852a_set_txpwr_byrate.rs = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\00\01\02\03", [28 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"[TXPWR] set txpwr byrate with ch=%d\0A\00", [59 x i8] zeroinitializer }, align 32
@rtw89_rs_nss_max = external dso_local local_unnamed_addr constant [5 x i8], align 1
@rtw89_rs_idx_max = external dso_local local_unnamed_addr constant [5 x i8], align 1
@.str.38 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"[TXPWR] set txpwr limit with ch=%d bw=%d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"[TXPWR] set txpwr limit ru with ch=%d bw=%d\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"[TXPWR] set txpwr reference\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"[TXPWR] set bb ofdm txpwr ref\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"[TXPWR] set bb cck txpwr ref\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"[TXPWR] tssi_ofst_cw=%d rf_cw=0x%x bb_cw=0x%x\0A\00", [49 x i8] zeroinitializer }, align 32
@__const.rtw8852a_set_txpwr_offset.desc = private unnamed_addr constant { i32, i32, i8, [3 x i8] } { i32 0, i32 4, i8 0, [3 x i8] zeroinitializer }, align 4
@.str.44 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"[TXPWR] set txpwr offset\0A\00", [38 x i8] zeroinitializer }, align 32
@rtw8852a_btc_preagc_en_defs_tbl = internal constant { %struct.rtw89_phy_reg3_tbl, [24 x i8] } { %struct.rtw89_phy_reg3_tbl { ptr @rtw8852a_btc_preagc_en_defs, i32 8 }, [24 x i8] zeroinitializer }, align 32
@rtw8852a_btc_preagc_dis_defs_tbl = internal constant { %struct.rtw89_phy_reg3_tbl, [24 x i8] } { %struct.rtw89_phy_reg3_tbl { ptr @rtw8852a_btc_preagc_dis_defs, i32 8 }, [24 x i8] zeroinitializer }, align 32
@rtw8852a_btc_preagc_en_defs = internal constant { [8 x %struct.rtw89_reg3_def], [32 x i8] } { [8 x %struct.rtw89_reg3_def] [%struct.rtw89_reg3_def { i32 17956, i32 2080768, i32 64 }, %struct.rtw89_reg3_def { i32 18168, i32 2080768, i32 64 }, %struct.rtw89_reg3_def { i32 18036, i32 1572864, i32 2 }, %struct.rtw89_reg3_def { i32 18248, i32 1572864, i32 2 }, %struct.rtw89_reg3_def { i32 18000, i32 31744, i32 24 }, %struct.rtw89_reg3_def { i32 18212, i32 31744, i32 24 }, %struct.rtw89_reg3_def { i32 18056, i32 3, i32 3 }, %struct.rtw89_reg3_def { i32 18268, i32 3, i32 3 }], [32 x i8] zeroinitializer }, align 32
@rtw8852a_btc_preagc_dis_defs = internal constant { [8 x %struct.rtw89_reg3_def], [32 x i8] } { [8 x %struct.rtw89_reg3_def] [%struct.rtw89_reg3_def { i32 17956, i32 2080768, i32 26 }, %struct.rtw89_reg3_def { i32 18168, i32 2080768, i32 26 }, %struct.rtw89_reg3_def { i32 18036, i32 1572864, i32 1 }, %struct.rtw89_reg3_def { i32 18248, i32 1572864, i32 1 }, %struct.rtw89_reg3_def { i32 18000, i32 31744, i32 18 }, %struct.rtw89_reg3_def { i32 18212, i32 31744, i32 18 }, %struct.rtw89_reg3_def { i32 18056, i32 3, i32 0 }, %struct.rtw89_reg3_def { i32 18268, i32 3, i32 0 }], [32 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"[ULTB] Err pwr_offset=%d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"[ULTB] Set TB pwr_offset=(%d, %d)\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"btc ctrl %s: 0x%x\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"all_time\00", [23 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"btc ctrl ori 0x%x: 0x%x\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"btc ctrl set 0x%x: 0x%x\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gnt_bt\00", [25 x i8] zeroinitializer }, align 32
@rtw8852a_hfc_chcfg_pcie = internal constant { [13 x %struct.rtw89_hfc_ch_cfg], [50 x i8] } { [13 x %struct.rtw89_hfc_ch_cfg] [%struct.rtw89_hfc_ch_cfg { i16 128, i16 1896, i8 0 }, %struct.rtw89_hfc_ch_cfg { i16 128, i16 1896, i8 0 }, %struct.rtw89_hfc_ch_cfg { i16 128, i16 1896, i8 0 }, %struct.rtw89_hfc_ch_cfg { i16 128, i16 1896, i8 0 }, %struct.rtw89_hfc_ch_cfg { i16 128, i16 1896, i8 1 }, %struct.rtw89_hfc_ch_cfg { i16 128, i16 1896, i8 1 }, %struct.rtw89_hfc_ch_cfg { i16 128, i16 1896, i8 1 }, %struct.rtw89_hfc_ch_cfg { i16 128, i16 1896, i8 1 }, %struct.rtw89_hfc_ch_cfg { i16 32, i16 1896, i8 0 }, %struct.rtw89_hfc_ch_cfg { i16 128, i16 1896, i8 0 }, %struct.rtw89_hfc_ch_cfg { i16 32, i16 1896, i8 1 }, %struct.rtw89_hfc_ch_cfg { i16 128, i16 1896, i8 1 }, %struct.rtw89_hfc_ch_cfg { i16 40, i16 0, i8 0 }], [50 x i8] zeroinitializer }, align 32
@rtw8852a_hfc_pubcfg_pcie = internal constant { %struct.rtw89_hfc_pub_cfg, [24 x i8] } { %struct.rtw89_hfc_pub_cfg { i16 1896, i16 1896, i16 3792, i16 0 }, [24 x i8] zeroinitializer }, align 32
@rtw_hfc_preccfg_pcie = external dso_local constant %struct.rtw89_hfc_prec_cfg, align 2
@wde_size0 = external dso_local constant %struct.rtw89_dle_size, align 2
@ple_size0 = external dso_local constant %struct.rtw89_dle_size, align 2
@wde_qt0 = external dso_local constant %struct.rtw89_wde_quota, align 2
@ple_qt4 = external dso_local constant %struct.rtw89_ple_quota, align 2
@ple_qt5 = external dso_local constant %struct.rtw89_ple_quota, align 2
@wde_size4 = external dso_local constant %struct.rtw89_dle_size, align 2
@ple_size4 = external dso_local constant %struct.rtw89_dle_size, align 2
@wde_qt4 = external dso_local constant %struct.rtw89_wde_quota, align 2
@ple_qt13 = external dso_local constant %struct.rtw89_ple_quota, align 2
@rtw8852a_pwron = internal constant { [25 x %struct.rtw89_pwr_cfg], [56 x i8] } { [25 x %struct.rtw89_pwr_cfg] [%struct.rtw89_pwr_cfg { i16 198, i8 2, i8 4, i8 0, i8 64, i8 64 }, %struct.rtw89_pwr_cfg { i16 4230, i8 -1, i8 1, i8 0, i8 1, i8 0 }, %struct.rtw89_pwr_cfg { i16 4230, i8 -1, i8 1, i8 1, i8 2, i8 2 }, %struct.rtw89_pwr_cfg { i16 5, i8 -1, i8 7, i8 0, i8 24, i8 0 }, %struct.rtw89_pwr_cfg { i16 5, i8 -1, i8 7, i8 0, i8 -128, i8 0 }, %struct.rtw89_pwr_cfg { i16 5, i8 -1, i8 7, i8 0, i8 4, i8 0 }, %struct.rtw89_pwr_cfg { i16 6, i8 -1, i8 7, i8 1, i8 2, i8 2 }, %struct.rtw89_pwr_cfg { i16 6, i8 -1, i8 7, i8 0, i8 1, i8 1 }, %struct.rtw89_pwr_cfg { i16 5, i8 -1, i8 7, i8 0, i8 1, i8 1 }, %struct.rtw89_pwr_cfg { i16 5, i8 -1, i8 7, i8 1, i8 1, i8 0 }, %struct.rtw89_pwr_cfg { i16 4205, i8 6, i8 2, i8 0, i8 64, i8 0 }, %struct.rtw89_pwr_cfg { i16 136, i8 -1, i8 7, i8 0, i8 1, i8 1 }, %struct.rtw89_pwr_cfg { i16 136, i8 -1, i8 7, i8 0, i8 1, i8 0 }, %struct.rtw89_pwr_cfg { i16 136, i8 -1, i8 7, i8 0, i8 1, i8 1 }, %struct.rtw89_pwr_cfg { i16 136, i8 -1, i8 7, i8 0, i8 1, i8 0 }, %struct.rtw89_pwr_cfg { i16 136, i8 -1, i8 7, i8 0, i8 1, i8 1 }, %struct.rtw89_pwr_cfg { i16 131, i8 -1, i8 7, i8 0, i8 64, i8 0 }, %struct.rtw89_pwr_cfg { i16 128, i8 -1, i8 7, i8 0, i8 32, i8 32 }, %struct.rtw89_pwr_cfg { i16 36, i8 -1, i8 7, i8 0, i8 31, i8 0 }, %struct.rtw89_pwr_cfg { i16 672, i8 -1, i8 7, i8 0, i8 2, i8 2 }, %struct.rtw89_pwr_cfg { i16 674, i8 -1, i8 7, i8 0, i8 -32, i8 0 }, %struct.rtw89_pwr_cfg { i16 113, i8 -1, i8 4, i8 0, i8 16, i8 0 }, %struct.rtw89_pwr_cfg { i16 16, i8 1, i8 4, i8 0, i8 4, i8 4 }, %struct.rtw89_pwr_cfg { i16 672, i8 1, i8 7, i8 0, i8 -64, i8 0 }, %struct.rtw89_pwr_cfg { i16 -1, i8 -1, i8 7, i8 3, i8 0, i8 0 }], [56 x i8] zeroinitializer }, align 32
@rtw8852a_pwroff = internal constant { [17 x %struct.rtw89_pwr_cfg], [56 x i8] } { [17 x %struct.rtw89_pwr_cfg] [%struct.rtw89_pwr_cfg { i16 752, i8 -1, i8 7, i8 0, i8 -1, i8 0 }, %struct.rtw89_pwr_cfg { i16 753, i8 -1, i8 7, i8 0, i8 -1, i8 0 }, %struct.rtw89_pwr_cfg { i16 6, i8 -1, i8 7, i8 0, i8 1, i8 1 }, %struct.rtw89_pwr_cfg { i16 2, i8 -1, i8 7, i8 0, i8 3, i8 0 }, %struct.rtw89_pwr_cfg { i16 130, i8 -1, i8 7, i8 0, i8 3, i8 0 }, %struct.rtw89_pwr_cfg { i16 4205, i8 6, i8 2, i8 0, i8 64, i8 64 }, %struct.rtw89_pwr_cfg { i16 5, i8 -1, i8 7, i8 0, i8 2, i8 2 }, %struct.rtw89_pwr_cfg { i16 5, i8 -1, i8 7, i8 1, i8 2, i8 0 }, %struct.rtw89_pwr_cfg { i16 145, i8 -1, i8 4, i8 0, i8 1, i8 0 }, %struct.rtw89_pwr_cfg { i16 5, i8 -1, i8 4, i8 0, i8 4, i8 4 }, %struct.rtw89_pwr_cfg { i16 7, i8 -1, i8 2, i8 0, i8 16, i8 0 }, %struct.rtw89_pwr_cfg { i16 7, i8 -1, i8 1, i8 0, i8 80, i8 0 }, %struct.rtw89_pwr_cfg { i16 5, i8 -1, i8 1, i8 0, i8 24, i8 8 }, %struct.rtw89_pwr_cfg { i16 5, i8 124, i8 2, i8 0, i8 24, i8 8 }, %struct.rtw89_pwr_cfg { i16 4230, i8 -1, i8 1, i8 0, i8 1, i8 1 }, %struct.rtw89_pwr_cfg { i16 4230, i8 -1, i8 1, i8 1, i8 2, i8 0 }, %struct.rtw89_pwr_cfg { i16 -1, i8 -1, i8 7, i8 3, i8 0, i8 0 }], [56 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 3, i64 1, i64 3]
@__sancov_gen_cov_switch_values.52 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 4]
@__sancov_gen_cov_switch_values.53 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.54 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.55 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.56 = internal global [5 x i64] [i64 3, i64 8, i64 151, i64 153, i64 155]
@__sancov_gen_cov_switch_values.57 = internal global [12 x i64] [i64 10, i64 8, i64 9, i64 10, i64 11, i64 12, i64 15, i64 16, i64 17, i64 18, i64 51, i64 53]
@__sancov_gen_cov_switch_values.58 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.59 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.60 = internal global [4 x i64] [i64 2, i64 8, i64 36, i64 38]
@__sancov_gen_cov_switch_values.61 = internal global [4 x i64] [i64 2, i64 8, i64 100, i64 102]
@__sancov_gen_cov_switch_values.62 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.63 = internal global [4 x i64] [i64 2, i64 8, i64 36, i64 38]
@__sancov_gen_cov_switch_values.64 = internal global [4 x i64] [i64 2, i64 8, i64 100, i64 102]
@__sancov_gen_cov_switch_values.65 = internal global [7 x i64] [i64 5, i64 8, i64 0, i64 1, i64 2, i64 5, i64 6]
@__sancov_gen_cov_switch_values.66 = internal global [7 x i64] [i64 5, i64 8, i64 0, i64 1, i64 2, i64 5, i64 6]
@___asan_gen_.67 = private unnamed_addr constant [28 x i8] c"rtw8852a_pmac_ht20_mcs7_tbl\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 53, i32 37 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 1522, i32 2 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 1552, i32 2 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 1564, i32 2 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 1582, i32 4 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 1610, i32 2 }
@___asan_gen_.85 = private unnamed_addr constant [18 x i8] c"rtw8852a_chip_ops\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 1963, i32 36 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 2001, i32 14 }
@___asan_gen_.91 = private unnamed_addr constant [28 x i8] c"rtw8852a_hfc_param_ini_pcie\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 37, i32 41 }
@___asan_gen_.94 = private unnamed_addr constant [22 x i8] c"rtw8852a_dle_mem_pcie\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 44, i32 35 }
@___asan_gen_.97 = private unnamed_addr constant [17 x i8] c"pwr_on_seq_8852a\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 368, i32 43 }
@___asan_gen_.100 = private unnamed_addr constant [18 x i8] c"pwr_off_seq_8852a\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 372, i32 43 }
@___asan_gen_.103 = private unnamed_addr constant [30 x i8] c"rtw89_btc_8852a_wl_rssi_thres\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 1860, i32 4 }
@___asan_gen_.106 = private unnamed_addr constant [30 x i8] c"rtw89_btc_8852a_bt_rssi_thres\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 1862, i32 4 }
@___asan_gen_.109 = private unnamed_addr constant [24 x i8] c"rtw89_btc_8852a_mon_reg\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 1864, i32 35 }
@___asan_gen_.112 = private unnamed_addr constant [22 x i8] c"rtw89_btc_8852a_rf_ul\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 1835, i32 37 }
@___asan_gen_.115 = private unnamed_addr constant [22 x i8] c"rtw89_btc_8852a_rf_dl\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 1847, i32 37 }
@___asan_gen_.118 = private unnamed_addr constant [19 x i8] c"rtw8852a_chip_info\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 1998, i32 30 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 1477, i32 2 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 1497, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 1505, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant [45 x i8] c"../drivers/net/wireless/realtek/rtw89/core.h\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 3031, i32 2 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 653, i32 3 }
@___asan_gen_.154 = private unnamed_addr constant [30 x i8] c"rtw8852a_sco_barker_threshold\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 630, i32 18 }
@___asan_gen_.157 = private unnamed_addr constant [27 x i8] c"rtw8852a_sco_cck_threshold\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 635, i32 18 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 671, i32 3 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 908, i32 3 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 818, i32 3 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 849, i32 3 }
@___asan_gen_.190 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 434, i32 2 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 399, i32 4 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 409, i32 4 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 461, i32 3 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 467, i32 4 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 484, i32 3 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 532, i32 3 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 504, i32 3 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 514, i32 3 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 548, i32 3 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 558, i32 3 }
@___asan_gen_.232 = private unnamed_addr constant [3 x i8] c"rs\00", align 1
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 1304, i32 18 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 1315, i32 2 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 1375, i32 2 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 1406, i32 2 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 1280, i32 2 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 1285, i32 2 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 1292, i32 2 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 1236, i32 2 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 1353, i32 2 }
@___asan_gen_.259 = private unnamed_addr constant [32 x i8] c"rtw8852a_btc_preagc_en_defs_tbl\00", align 1
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 136, i32 8 }
@___asan_gen_.262 = private unnamed_addr constant [33 x i8] c"rtw8852a_btc_preagc_dis_defs_tbl\00", align 1
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 149, i32 8 }
@___asan_gen_.265 = private unnamed_addr constant [28 x i8] c"rtw8852a_btc_preagc_en_defs\00", align 1
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 125, i32 36 }
@___asan_gen_.268 = private unnamed_addr constant [29 x i8] c"rtw8852a_btc_preagc_dis_defs\00", align 1
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 138, i32 36 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 1252, i32 3 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 1264, i32 2 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 1822, i32 2 }
@___asan_gen_.289 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 1823, i32 2 }
@___asan_gen_.292 = private unnamed_addr constant [24 x i8] c"rtw8852a_hfc_chcfg_pcie\00", align 1
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 14, i32 38 }
@___asan_gen_.295 = private unnamed_addr constant [25 x i8] c"rtw8852a_hfc_pubcfg_pcie\00", align 1
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 30, i32 39 }
@___asan_gen_.298 = private unnamed_addr constant [15 x i8] c"rtw8852a_pwron\00", align 1
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 151, i32 35 }
@___asan_gen_.301 = private unnamed_addr constant [16 x i8] c"rtw8852a_pwroff\00", align 1
@___asan_gen_.302 = private constant [49 x i8] c"../drivers/net/wireless/realtek/rtw89/rtw8852a.c\00", align 1
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 279, i32 35 }
@llvm.compiler.used = appending global [87 x ptr] [ptr @__UNIQUE_ID_firmware473, ptr @__ksymtab_rtw8852a_chip_info, ptr @rtw8852a_bw_setting._entry, ptr @rtw8852a_bw_setting._entry.21, ptr @rtw8852a_bw_setting._entry_ptr, ptr @rtw8852a_bw_setting._entry_ptr.23, ptr @rtw8852a_ch_setting._entry, ptr @rtw8852a_ch_setting._entry_ptr, ptr @rtw8852a_ctrl_bw._entry, ptr @rtw8852a_ctrl_bw._entry_ptr, ptr @rtw8852a_ctrl_sco_cck._entry, ptr @rtw8852a_ctrl_sco_cck._entry_ptr, ptr @rtw8852a_read_efuse._entry, ptr @rtw8852a_read_efuse._entry_ptr, ptr @rtw8852a_pmac_ht20_mcs7_tbl, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @rtw8852a_chip_ops, ptr @.str.5, ptr @rtw8852a_hfc_param_ini_pcie, ptr @rtw8852a_dle_mem_pcie, ptr @pwr_on_seq_8852a, ptr @pwr_off_seq_8852a, ptr @rtw89_btc_8852a_wl_rssi_thres, ptr @rtw89_btc_8852a_bt_rssi_thres, ptr @rtw89_btc_8852a_mon_reg, ptr @rtw89_btc_8852a_rf_ul, ptr @rtw89_btc_8852a_rf_dl, ptr @rtw8852a_chip_info, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @rtw8852a_sco_barker_threshold, ptr @rtw8852a_sco_cck_threshold, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @rtw8852a_set_txpwr_byrate.rs, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @rtw8852a_btc_preagc_en_defs_tbl, ptr @rtw8852a_btc_preagc_dis_defs_tbl, ptr @rtw8852a_btc_preagc_en_defs, ptr @rtw8852a_btc_preagc_dis_defs, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @rtw8852a_hfc_chcfg_pcie, ptr @rtw8852a_hfc_pubcfg_pcie, ptr @rtw8852a_pwron, ptr @rtw8852a_pwroff], section "llvm.metadata"
@0 = internal global [79 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw8852a_pmac_ht20_mcs7_tbl to i32), i32 552, i32 704, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw8852a_chip_ops to i32), i32 124, i32 160, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw8852a_hfc_param_ini_pcie to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw8852a_dle_mem_pcie to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwr_on_seq_8852a to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwr_off_seq_8852a to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_btc_8852a_wl_rssi_thres to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_btc_8852a_bt_rssi_thres to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_btc_8852a_mon_reg to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_btc_8852a_rf_ul to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_btc_8852a_rf_dl to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw8852a_chip_info to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw8852a_ctrl_sco_cck._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw8852a_sco_barker_threshold to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw8852a_sco_cck_threshold to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw8852a_ch_setting._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw8852a_ctrl_bw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw8852a_bw_setting._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw8852a_bw_setting._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw8852a_read_efuse._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw8852a_set_txpwr_byrate.rs to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw8852a_btc_preagc_en_defs_tbl to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw8852a_btc_preagc_dis_defs_tbl to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw8852a_btc_preagc_en_defs to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw8852a_btc_preagc_dis_defs to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw8852a_hfc_chcfg_pcie to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw8852a_hfc_pubcfg_pcie to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw8852a_pwron to i32), i32 200, i32 256, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw8852a_pwroff to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw8852a_bb_set_plcp_tx(ptr noundef %rtwdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %hci.i.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 7
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %indvars.iv = phi i32 [ 0, %entry ], [ %indvars.iv.next, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr [69 x %struct.rtw89_reg2_def], ptr @rtw8852a_pmac_ht20_mcs7_tbl, i32 0, i32 %indvars.iv
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %data = getelementptr [69 x %struct.rtw89_reg2_def], ptr @rtw8852a_pmac_ht20_mcs7_tbl, i32 0, i32 %indvars.iv, i32 1
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %data, align 4
  %or.i = or i32 %1, 65536
  %4 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hci.i.i, align 8
  %write32.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %5, i32 0, i32 12
  %6 = ptrtoint ptr %write32.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %write32.i.i, align 4
  tail call void %7(ptr noundef %rtwdev, i32 noundef %or.i, i32 noundef %3) #7
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, 69
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw8852a_bb_set_pmac_tx(ptr noundef %rtwdev, ptr nocapture noundef readonly %tx_info, i32 noundef %idx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %tx_info to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %tx_info, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %if.then, label %if.end3

if.then:                                          ; preds = %entry
  tail call void (ptr, i32, ptr, ...) @__rtw89_debug(ptr noundef %rtwdev, i32 noundef 16, ptr noundef nonnull @.str.6) #7
  %1 = ptrtoint ptr %tx_info to i32
  call void @__asan_load1_noabort(i32 %1)
  %bf.load.i = load i8, ptr %tx_info, align 2
  %bf.lshr.i = lshr i8 %bf.load.i, 3
  %trunc.i = trunc i8 %bf.lshr.i to i3
  %2 = zext i3 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i3 %trunc.i, label %if.then.rtw8852a_stop_pmac_tx.exit_crit_edge [
    i3 3, label %if.then.if.end9.sink.split.i_crit_edge
    i3 1, label %if.then8.i
  ]

if.then.if.end9.sink.split.i_crit_edge:           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9.sink.split.i

if.then.rtw8852a_stop_pmac_tx.exit_crit_edge:     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtw8852a_stop_pmac_tx.exit

if.then8.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9.sink.split.i

if.end9.sink.split.i:                             ; preds = %if.then8.i, %if.then.if.end9.sink.split.i_crit_edge
  %.sink.i = phi i32 [ 16, %if.then8.i ], [ 1, %if.then.if.end9.sink.split.i_crit_edge ]
  tail call void @rtw89_phy_write32_idx(ptr noundef %rtwdev, i32 noundef 2500, i32 noundef %.sink.i, i32 noundef 0, i32 noundef %idx) #7
  br label %rtw8852a_stop_pmac_tx.exit

rtw8852a_stop_pmac_tx.exit:                       ; preds = %if.end9.sink.split.i, %if.then.rtw8852a_stop_pmac_tx.exit_crit_edge
  tail call void @rtw89_phy_write32_idx(ptr noundef %rtwdev, i32 noundef 3132, i32 noundef 512, i32 noundef 0, i32 noundef %idx) #7
  %current_band_type = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 4, i32 7
  %3 = ptrtoint ptr %current_band_type to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %current_band_type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %cmp = icmp eq i8 %4, 0
  br i1 %cmp, label %if.then2, label %rtw8852a_stop_pmac_tx.exit.return_crit_edge

rtw8852a_stop_pmac_tx.exit.return_crit_edge:      ; preds = %rtw8852a_stop_pmac_tx.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.then2:                                         ; preds = %rtw8852a_stop_pmac_tx.exit
  call void @__sanitizer_cov_trace_pc() #9
  %hci.i.i.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 7
  %5 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hci.i.i.i, align 8
  %read32.i.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %6, i32 0, i32 9
  %7 = ptrtoint ptr %read32.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %read32.i.i.i, align 4
  %call.i.i.i = tail call i32 %8(ptr noundef %rtwdev, i32 noundef 74564) #7
  %and.i.i = and i32 %call.i.i.i, 2147483647
  %9 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hci.i.i.i, align 8
  %write32.i.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %10, i32 0, i32 12
  %11 = ptrtoint ptr %write32.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %write32.i.i.i, align 4
  tail call void %12(ptr noundef %rtwdev, i32 noundef 74564, i32 noundef %and.i.i) #7
  br label %return

if.end3:                                          ; preds = %entry
  tail call void (ptr, i32, ptr, ...) @__rtw89_debug(ptr noundef %rtwdev, i32 noundef 16, ptr noundef nonnull @.str) #7
  tail call void @rtw89_phy_write32_idx(ptr noundef %rtwdev, i32 noundef 2432, i32 noundef 1, i32 noundef 1, i32 noundef %idx) #7
  tail call void @rtw89_phy_write32_idx(ptr noundef %rtwdev, i32 noundef 2432, i32 noundef 65536, i32 noundef 1, i32 noundef %idx) #7
  tail call void @rtw89_phy_write32_idx(ptr noundef %rtwdev, i32 noundef 2440, i32 noundef 4095, i32 noundef 63, i32 noundef %idx) #7
  tail call void @rtw89_phy_write32_idx(ptr noundef %rtwdev, i32 noundef 1796, i32 noundef 2, i32 noundef 0, i32 noundef %idx) #7
  tail call void @rtw89_phy_write32_idx(ptr noundef %rtwdev, i32 noundef 3132, i32 noundef 512, i32 noundef 1, i32 noundef %idx) #7
  %hci.i.i.i26 = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 7
  %13 = ptrtoint ptr %hci.i.i.i26 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hci.i.i.i26, align 8
  %read32.i.i.i27 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %14, i32 0, i32 9
  %15 = ptrtoint ptr %read32.i.i.i27 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %read32.i.i.i27, align 4
  %call.i.i.i28 = tail call i32 %16(ptr noundef %rtwdev, i32 noundef 74564) #7
  %or.i.i = or i32 %call.i.i.i28, -2147483648
  %17 = ptrtoint ptr %hci.i.i.i26 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %hci.i.i.i26, align 8
  %write32.i.i.i29 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %18, i32 0, i32 12
  %19 = ptrtoint ptr %write32.i.i.i29 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %write32.i.i.i29, align 4
  tail call void %20(ptr noundef %rtwdev, i32 noundef 74564, i32 noundef %or.i.i) #7
  tail call void @rtw89_phy_write32_idx(ptr noundef %rtwdev, i32 noundef 1796, i32 noundef 2, i32 noundef 1, i32 noundef %idx) #7
  %21 = ptrtoint ptr %tx_info to i32
  call void @__asan_load1_noabort(i32 %21)
  %bf.load.i30 = load i8, ptr %tx_info, align 2
  %bf.lshr.i31 = lshr i8 %bf.load.i30, 3
  %bf.clear.i = and i8 %bf.lshr.i31, 7
  %tx_cnt.i = getelementptr inbounds %struct.rtw8852a_bb_pmac_info, ptr %tx_info, i32 0, i32 1
  %22 = ptrtoint ptr %tx_cnt.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %tx_cnt.i, align 2
  %conv1.i = zext i16 %23 to i32
  %period2.i = getelementptr inbounds %struct.rtw8852a_bb_pmac_info, ptr %tx_info, i32 0, i32 2
  %24 = ptrtoint ptr %period2.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %period2.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %bf.clear.i)
  %cmp.i = icmp eq i8 %bf.clear.i, 3
  %26 = and i8 %bf.load.i30, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool.not.i = icmp eq i8 %26, 0
  %or.cond.i = select i1 %cmp.i, i1 %tobool.not.i, i1 false
  br i1 %or.cond.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @rtw89_phy_write32_idx(ptr noundef %rtwdev, i32 noundef 2500, i32 noundef 1, i32 noundef 1, i32 noundef %idx) #7
  br label %if.end11.sink.split.i

if.else.i:                                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %bf.clear.i)
  %cmp7.i = icmp eq i8 %bf.clear.i, 1
  br i1 %cmp7.i, label %if.then9.i, label %if.else.i.rtw8852a_start_pmac_tx.exit_crit_edge

if.else.i.rtw8852a_start_pmac_tx.exit_crit_edge:  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtw8852a_start_pmac_tx.exit

if.then9.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @rtw89_phy_write32_idx(ptr noundef %rtwdev, i32 noundef 2500, i32 noundef 16, i32 noundef 1, i32 noundef %idx) #7
  %conv10.i = zext i16 %25 to i32
  tail call void @rtw89_phy_write32_idx(ptr noundef %rtwdev, i32 noundef 2500, i32 noundef -256, i32 noundef %conv10.i, i32 noundef %idx) #7
  tail call void @rtw89_phy_write32_idx(ptr noundef %rtwdev, i32 noundef 2504, i32 noundef -1, i32 noundef %conv1.i, i32 noundef %idx) #7
  br label %if.end11.sink.split.i

if.end11.sink.split.i:                            ; preds = %if.then9.i, %if.then.i
  %.str.8.sink.i = phi ptr [ @.str.8, %if.then9.i ], [ @.str.7, %if.then.i ]
  tail call void (ptr, i32, ptr, ...) @__rtw89_debug(ptr noundef %rtwdev, i32 noundef 16, ptr noundef nonnull %.str.8.sink.i) #7
  br label %rtw8852a_start_pmac_tx.exit

rtw8852a_start_pmac_tx.exit:                      ; preds = %if.end11.sink.split.i, %if.else.i.rtw8852a_start_pmac_tx.exit_crit_edge
  tail call void @rtw89_phy_write32_idx(ptr noundef %rtwdev, i32 noundef 2496, i32 noundef 1, i32 noundef 1, i32 noundef %idx) #7
  tail call void @rtw89_phy_write32_idx(ptr noundef %rtwdev, i32 noundef 2496, i32 noundef 1, i32 noundef 0, i32 noundef %idx) #7
  br label %return

return:                                           ; preds = %rtw8852a_start_pmac_tx.exit, %if.then2, %rtw8852a_stop_pmac_tx.exit.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw89_phy_write32_idx(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__rtw89_debug(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw8852a_bb_set_pmac_pkt_tx(ptr noundef %rtwdev, i8 noundef zeroext %enable, i16 noundef zeroext %tx_cnt, i16 noundef zeroext %period, i16 noundef zeroext %tx_time, i32 noundef %idx) local_unnamed_addr #0 align 64 {
entry:
  %tx_info = alloca %struct.rtw8852a_bb_pmac_info, align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %tx_info) #7
  %0 = call ptr @memset(ptr %tx_info, i32 0, i32 10)
  %bf.shl = shl i8 %enable, 7
  %bf.set6 = or i8 %bf.shl, 8
  %1 = ptrtoint ptr %tx_info to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %bf.set6, ptr %tx_info, align 2
  %tx_cnt7 = getelementptr inbounds %struct.rtw8852a_bb_pmac_info, ptr %tx_info, i32 0, i32 1
  %2 = ptrtoint ptr %tx_cnt7 to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %tx_cnt, ptr %tx_cnt7, align 2
  %period8 = getelementptr inbounds %struct.rtw8852a_bb_pmac_info, ptr %tx_info, i32 0, i32 2
  %3 = ptrtoint ptr %period8 to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 %period, ptr %period8, align 2
  %tx_time9 = getelementptr inbounds %struct.rtw8852a_bb_pmac_info, ptr %tx_info, i32 0, i32 3
  %4 = ptrtoint ptr %tx_time9 to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %tx_time, ptr %tx_time9, align 2
  call void @rtw8852a_bb_set_pmac_tx(ptr noundef %rtwdev, ptr noundef nonnull %tx_info, i32 noundef %idx)
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %tx_info) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw8852a_bb_set_power(ptr noundef %rtwdev, i16 noundef signext %pwr_dbm, i32 noundef %idx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = sext i16 %pwr_dbm to i32
  tail call void (ptr, i32, ptr, ...) @__rtw89_debug(ptr noundef %rtwdev, i32 noundef 16, ptr noundef nonnull @.str.1, i32 noundef %conv) #7
  tail call void @rtw89_phy_write32_idx(ptr noundef %rtwdev, i32 noundef 2468, i32 noundef 65536, i32 noundef 1, i32 noundef %idx) #7
  tail call void @rtw89_phy_write32_idx(ptr noundef %rtwdev, i32 noundef 17812, i32 noundef 2143289344, i32 noundef %conv, i32 noundef %idx) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw8852a_bb_cfg_tx_path(ptr noundef %rtwdev, i8 noundef zeroext %tx_path) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @rtw89_phy_write32_idx(ptr noundef %rtwdev, i32 noundef 2468, i32 noundef 28, i32 noundef 7, i32 noundef 0) #7
  tail call void @rtw89_phy_write32_idx(ptr noundef %rtwdev, i32 noundef 2468, i32 noundef 28, i32 noundef 7, i32 noundef 1) #7
  %conv = zext i8 %tx_path to i32
  tail call void (ptr, i32, ptr, ...) @__rtw89_debug(ptr noundef %rtwdev, i32 noundef 16, ptr noundef nonnull @.str.2, i32 noundef %conv) #7
  %dbcc_en = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 2
  %0 = ptrtoint ptr %dbcc_en to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %dbcc_en, align 8, !range !171
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.then, label %if.end17

if.then:                                          ; preds = %entry
  %2 = zext i8 %tx_path to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.52)
  switch i8 %tx_path, label %if.else13 [
    i8 0, label %if.end17.thread112
    i8 1, label %if.then7
    i8 4, label %if.then12
  ]

if.end17.thread112:                               ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %hci.i.i.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 7
  %3 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hci.i.i.i, align 8
  %read32.i.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %4, i32 0, i32 9
  %5 = ptrtoint ptr %read32.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %read32.i.i.i, align 4
  %call.i.i.i = tail call i32 %6(ptr noundef %rtwdev, i32 noundef 83340) #7
  %and21.i.i = and i32 %call.i.i.i, 268435455
  %or.i.i = or i32 %and21.i.i, 268435456
  %7 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hci.i.i.i, align 8
  %write32.i.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %8, i32 0, i32 12
  %9 = ptrtoint ptr %write32.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %write32.i.i.i, align 4
  tail call void %10(ptr noundef %rtwdev, i32 noundef 83340, i32 noundef %or.i.i) #7
  %11 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hci.i.i.i, align 8
  %read32.i.i.i49 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %12, i32 0, i32 9
  %13 = ptrtoint ptr %read32.i.i.i49 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %read32.i.i.i49, align 4
  %call.i.i.i50 = tail call i32 %14(ptr noundef %rtwdev, i32 noundef 83380) #7
  %and21.i.i51 = and i32 %call.i.i.i50, -1966081
  %15 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hci.i.i.i, align 8
  %write32.i.i.i52 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %16, i32 0, i32 12
  %17 = ptrtoint ptr %write32.i.i.i52 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %write32.i.i.i52, align 4
  tail call void %18(ptr noundef %rtwdev, i32 noundef 83380, i32 noundef %and21.i.i51) #7
  br label %if.end23

if.then7:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %hci.i.i.i53 = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 7
  %19 = ptrtoint ptr %hci.i.i.i53 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %hci.i.i.i53, align 8
  %read32.i.i.i54 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %20, i32 0, i32 9
  %21 = ptrtoint ptr %read32.i.i.i54 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %read32.i.i.i54, align 4
  %call.i.i.i55 = tail call i32 %22(ptr noundef %rtwdev, i32 noundef 83340) #7
  %and21.i.i56 = and i32 %call.i.i.i55, 268435455
  %or.i.i57 = or i32 %and21.i.i56, 536870912
  %23 = ptrtoint ptr %hci.i.i.i53 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %hci.i.i.i53, align 8
  %write32.i.i.i58 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %24, i32 0, i32 12
  %25 = ptrtoint ptr %write32.i.i.i58 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %write32.i.i.i58, align 4
  tail call void %26(ptr noundef %rtwdev, i32 noundef 83340, i32 noundef %or.i.i57) #7
  %27 = ptrtoint ptr %hci.i.i.i53 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %hci.i.i.i53, align 8
  %read32.i.i.i60 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %28, i32 0, i32 9
  %29 = ptrtoint ptr %read32.i.i.i60 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %read32.i.i.i60, align 4
  %call.i.i.i61 = tail call i32 %30(ptr noundef %rtwdev, i32 noundef 83380) #7
  %and21.i.i62 = and i32 %call.i.i.i61, -1966081
  %31 = ptrtoint ptr %hci.i.i.i53 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %hci.i.i.i53, align 8
  %write32.i.i.i63 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %32, i32 0, i32 12
  %33 = ptrtoint ptr %write32.i.i.i63 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %write32.i.i.i63, align 4
  tail call void %34(ptr noundef %rtwdev, i32 noundef 83380, i32 noundef %and21.i.i62) #7
  br label %if.else22

if.then12:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %hci.i.i.i64 = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 7
  %35 = ptrtoint ptr %hci.i.i.i64 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %hci.i.i.i64, align 8
  %read32.i.i.i65 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %36, i32 0, i32 9
  %37 = ptrtoint ptr %read32.i.i.i65 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %read32.i.i.i65, align 4
  %call.i.i.i66 = tail call i32 %38(ptr noundef %rtwdev, i32 noundef 83340) #7
  %and21.i.i67 = and i32 %call.i.i.i66, 268435455
  %or.i.i68 = or i32 %and21.i.i67, 805306368
  %39 = ptrtoint ptr %hci.i.i.i64 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %hci.i.i.i64, align 8
  %write32.i.i.i69 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %40, i32 0, i32 12
  %41 = ptrtoint ptr %write32.i.i.i69 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %write32.i.i.i69, align 4
  tail call void %42(ptr noundef %rtwdev, i32 noundef 83340, i32 noundef %or.i.i68) #7
  %43 = ptrtoint ptr %hci.i.i.i64 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %hci.i.i.i64, align 8
  %read32.i.i.i71 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %44, i32 0, i32 9
  %45 = ptrtoint ptr %read32.i.i.i71 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %read32.i.i.i71, align 4
  %call.i.i.i72 = tail call i32 %46(ptr noundef %rtwdev, i32 noundef 83380) #7
  %and21.i.i73 = and i32 %call.i.i.i72, -1966081
  %or.i.i74 = or i32 %and21.i.i73, 524288
  %47 = ptrtoint ptr %hci.i.i.i64 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %hci.i.i.i64, align 8
  %write32.i.i.i75 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %48, i32 0, i32 12
  %49 = ptrtoint ptr %write32.i.i.i75 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %write32.i.i.i75, align 4
  tail call void %50(ptr noundef %rtwdev, i32 noundef 83380, i32 noundef %or.i.i74) #7
  br label %if.else22

if.else13:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, ptr, ...) @__rtw89_debug(ptr noundef %rtwdev, i32 noundef 16, ptr noundef nonnull @.str.3) #7
  br label %if.else22

if.end17:                                         ; preds = %entry
  %hci.i.i.i76 = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 7
  %51 = ptrtoint ptr %hci.i.i.i76 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %hci.i.i.i76, align 8
  %read32.i.i.i77 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %52, i32 0, i32 9
  %53 = ptrtoint ptr %read32.i.i.i77 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %read32.i.i.i77, align 4
  %call.i.i.i78 = tail call i32 %54(ptr noundef %rtwdev, i32 noundef 83340) #7
  %and21.i.i79 = and i32 %call.i.i.i78, 268435455
  %or.i.i80 = or i32 %and21.i.i79, 268435456
  %55 = ptrtoint ptr %hci.i.i.i76 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %hci.i.i.i76, align 8
  %write32.i.i.i81 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %56, i32 0, i32 12
  %57 = ptrtoint ptr %write32.i.i.i81 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %write32.i.i.i81, align 4
  tail call void %58(ptr noundef %rtwdev, i32 noundef 83340, i32 noundef %or.i.i80) #7
  tail call void @rtw89_phy_write32_idx(ptr noundef %rtwdev, i32 noundef 17804, i32 noundef -268435456, i32 noundef 2, i32 noundef 1) #7
  %59 = ptrtoint ptr %hci.i.i.i76 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %hci.i.i.i76, align 8
  %read32.i.i.i83 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %60, i32 0, i32 9
  %61 = ptrtoint ptr %read32.i.i.i83 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %read32.i.i.i83, align 4
  %call.i.i.i84 = tail call i32 %62(ptr noundef %rtwdev, i32 noundef 83380) #7
  %and21.i.i85 = and i32 %call.i.i.i84, -1966081
  %63 = ptrtoint ptr %hci.i.i.i76 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %hci.i.i.i76, align 8
  %write32.i.i.i86 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %64, i32 0, i32 12
  %65 = ptrtoint ptr %write32.i.i.i86 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %write32.i.i.i86, align 4
  tail call void %66(ptr noundef %rtwdev, i32 noundef 83380, i32 noundef %and21.i.i85) #7
  tail call void @rtw89_phy_write32_idx(ptr noundef %rtwdev, i32 noundef 17844, i32 noundef 1966080, i32 noundef 4, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %tx_path)
  %cmp19 = icmp eq i8 %tx_path, 0
  br i1 %cmp19, label %if.end17.if.end23_crit_edge, label %if.end17.if.else22_crit_edge

if.end17.if.else22_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else22

if.end17.if.end23_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23

if.else22:                                        ; preds = %if.end17.if.else22_crit_edge, %if.else13, %if.then12, %if.then7
  br label %if.end23

if.end23:                                         ; preds = %if.else22, %if.end17.if.end23_crit_edge, %if.end17.thread112
  %.sink124 = phi i32 [ 96476, %if.else22 ], [ 88284, %if.end17.thread112 ], [ 88284, %if.end17.if.end23_crit_edge ]
  %hci.i.i.i99 = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 7
  %67 = ptrtoint ptr %hci.i.i.i99 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %hci.i.i.i99, align 8
  %read32.i.i.i100 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %68, i32 0, i32 9
  %69 = ptrtoint ptr %read32.i.i.i100 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %read32.i.i.i100, align 4
  %call.i.i.i101 = tail call i32 %70(ptr noundef %rtwdev, i32 noundef %.sink124) #7
  %and21.i.i102 = and i32 %call.i.i.i101, 1073741823
  %or.i.i103 = or i32 %and21.i.i102, 1073741824
  %71 = ptrtoint ptr %hci.i.i.i99 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %hci.i.i.i99, align 8
  %write32.i.i.i104 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %72, i32 0, i32 12
  %73 = ptrtoint ptr %write32.i.i.i104 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %write32.i.i.i104, align 4
  tail call void %74(ptr noundef %rtwdev, i32 noundef %.sink124, i32 noundef %or.i.i103) #7
  %75 = ptrtoint ptr %hci.i.i.i99 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %hci.i.i.i99, align 8
  %read32.i.i.i106 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %76, i32 0, i32 9
  %77 = ptrtoint ptr %read32.i.i.i106 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %read32.i.i.i106, align 4
  %call.i.i.i107 = tail call i32 %78(ptr noundef %rtwdev, i32 noundef %.sink124) #7
  %or.i.i109 = or i32 %call.i.i.i107, -1073741824
  %79 = ptrtoint ptr %hci.i.i.i99 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %hci.i.i.i99, align 8
  %write32.i.i.i110 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %80, i32 0, i32 12
  %81 = ptrtoint ptr %write32.i.i.i110 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %write32.i.i.i110, align 4
  tail call void %82(ptr noundef %rtwdev, i32 noundef %.sink124, i32 noundef %or.i.i109) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw8852a_bb_tx_mode_switch(ptr noundef %rtwdev, i32 noundef %idx, i8 noundef zeroext %mode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %mode)
  %cmp.not = icmp eq i8 %mode, 0
  br i1 %cmp.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, ptr, ...) @__rtw89_debug(ptr noundef %rtwdev, i32 noundef 16, ptr noundef nonnull @.str.4) #7
  tail call void @rtw89_phy_write32_idx(ptr noundef %rtwdev, i32 noundef 2432, i32 noundef 1, i32 noundef 0, i32 noundef %idx) #7
  tail call void @rtw89_phy_write32_idx(ptr noundef %rtwdev, i32 noundef 2432, i32 noundef 65536, i32 noundef 0, i32 noundef %idx) #7
  tail call void @rtw89_phy_write32_idx(ptr noundef %rtwdev, i32 noundef 2440, i32 noundef 4095, i32 noundef 0, i32 noundef %idx) #7
  tail call void @rtw89_phy_write32_idx(ptr noundef %rtwdev, i32 noundef 2452, i32 noundef 240, i32 noundef 0, i32 noundef %idx) #7
  tail call void @rtw89_phy_write32_idx(ptr noundef %rtwdev, i32 noundef 2468, i32 noundef 1024, i32 noundef 0, i32 noundef %idx) #7
  tail call void @rtw89_phy_write32_idx(ptr noundef %rtwdev, i32 noundef 2468, i32 noundef 28, i32 noundef 0, i32 noundef %idx) #7
  tail call void @rtw89_phy_write32_idx(ptr noundef %rtwdev, i32 noundef 2468, i32 noundef 65536, i32 noundef 0, i32 noundef %idx) #7
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtw8852a_bb_reset(ptr noundef %rtwdev, i32 noundef %phy_idx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %hci.i.i.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 7
  %0 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hci.i.i.i, align 8
  %read32.i.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %read32.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %read32.i.i.i, align 4
  %call.i.i.i = tail call i32 %3(ptr noundef %rtwdev, i32 noundef 88284) #7
  %or.i.i = or i32 %call.i.i.i, 1073741824
  %4 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hci.i.i.i, align 8
  %write32.i.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %5, i32 0, i32 12
  %6 = ptrtoint ptr %write32.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %write32.i.i.i, align 4
  tail call void %7(ptr noundef %rtwdev, i32 noundef 88284, i32 noundef %or.i.i) #7
  %8 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hci.i.i.i, align 8
  %read32.i.i.i10 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %9, i32 0, i32 9
  %10 = ptrtoint ptr %read32.i.i.i10 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %read32.i.i.i10, align 4
  %call.i.i.i11 = tail call i32 %11(ptr noundef %rtwdev, i32 noundef 88088) #7
  %or.i.i12 = or i32 %call.i.i.i11, 1073741824
  %12 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hci.i.i.i, align 8
  %write32.i.i.i13 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %13, i32 0, i32 12
  %14 = ptrtoint ptr %write32.i.i.i13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %write32.i.i.i13, align 4
  tail call void %15(ptr noundef %rtwdev, i32 noundef 88088, i32 noundef %or.i.i12) #7
  %16 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hci.i.i.i, align 8
  %read32.i.i.i15 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %17, i32 0, i32 9
  %18 = ptrtoint ptr %read32.i.i.i15 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %read32.i.i.i15, align 4
  %call.i.i.i16 = tail call i32 %19(ptr noundef %rtwdev, i32 noundef 96476) #7
  %or.i.i17 = or i32 %call.i.i.i16, 1073741824
  %20 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hci.i.i.i, align 8
  %write32.i.i.i18 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %21, i32 0, i32 12
  %22 = ptrtoint ptr %write32.i.i.i18 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %write32.i.i.i18, align 4
  tail call void %23(ptr noundef %rtwdev, i32 noundef 96476, i32 noundef %or.i.i17) #7
  %24 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %hci.i.i.i, align 8
  %read32.i.i.i20 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %25, i32 0, i32 9
  %26 = ptrtoint ptr %read32.i.i.i20 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %read32.i.i.i20, align 4
  %call.i.i.i21 = tail call i32 %27(ptr noundef %rtwdev, i32 noundef 96280) #7
  %or.i.i22 = or i32 %call.i.i.i21, 1073741824
  %28 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %hci.i.i.i, align 8
  %write32.i.i.i23 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %29, i32 0, i32 12
  %30 = ptrtoint ptr %write32.i.i.i23 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %write32.i.i.i23, align 4
  tail call void %31(ptr noundef %rtwdev, i32 noundef 96280, i32 noundef %or.i.i22) #7
  tail call void @rtw89_phy_write32_idx(ptr noundef %rtwdev, i32 noundef 1796, i32 noundef 2, i32 noundef 1, i32 noundef %phy_idx) #7
  tail call void @rtw89_phy_write32_idx(ptr noundef %rtwdev, i32 noundef 1796, i32 noundef 2, i32 noundef 0, i32 noundef %phy_idx) #7
  tail call void @rtw89_phy_write32_idx(ptr noundef %rtwdev, i32 noundef 1796, i32 noundef 2, i32 noundef 1, i32 noundef %phy_idx) #7
  %32 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %hci.i.i.i, align 8
  %read32.i.i.i25 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %33, i32 0, i32 9
  %34 = ptrtoint ptr %read32.i.i.i25 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %read32.i.i.i25, align 4
  %call.i.i.i26 = tail call i32 %35(ptr noundef %rtwdev, i32 noundef 88284) #7
  %and.i.i = and i32 %call.i.i.i26, -1073741825
  %36 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %hci.i.i.i, align 8
  %write32.i.i.i27 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %37, i32 0, i32 12
  %38 = ptrtoint ptr %write32.i.i.i27 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %write32.i.i.i27, align 4
  tail call void %39(ptr noundef %rtwdev, i32 noundef 88284, i32 noundef %and.i.i) #7
  %40 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %hci.i.i.i, align 8
  %read32.i.i.i29 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %41, i32 0, i32 9
  %42 = ptrtoint ptr %read32.i.i.i29 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %read32.i.i.i29, align 4
  %call.i.i.i30 = tail call i32 %43(ptr noundef %rtwdev, i32 noundef 88088) #7
  %and.i.i31 = and i32 %call.i.i.i30, -1073741825
  %44 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %hci.i.i.i, align 8
  %write32.i.i.i32 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %45, i32 0, i32 12
  %46 = ptrtoint ptr %write32.i.i.i32 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %write32.i.i.i32, align 4
  tail call void %47(ptr noundef %rtwdev, i32 noundef 88088, i32 noundef %and.i.i31) #7
  %48 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %hci.i.i.i, align 8
  %read32.i.i.i34 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %49, i32 0, i32 9
  %50 = ptrtoint ptr %read32.i.i.i34 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %read32.i.i.i34, align 4
  %call.i.i.i35 = tail call i32 %51(ptr noundef %rtwdev, i32 noundef 96476) #7
  %and.i.i36 = and i32 %call.i.i.i35, -1073741825
  %52 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %hci.i.i.i, align 8
  %write32.i.i.i37 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %53, i32 0, i32 12
  %54 = ptrtoint ptr %write32.i.i.i37 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %write32.i.i.i37, align 4
  tail call void %55(ptr noundef %rtwdev, i32 noundef 96476, i32 noundef %and.i.i36) #7
  %56 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %hci.i.i.i, align 8
  %read32.i.i.i39 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %57, i32 0, i32 9
  %58 = ptrtoint ptr %read32.i.i.i39 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %read32.i.i.i39, align 4
  %call.i.i.i40 = tail call i32 %59(ptr noundef %rtwdev, i32 noundef 96280) #7
  %and.i.i41 = and i32 %call.i.i.i40, -1073741825
  %60 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %hci.i.i.i, align 8
  %write32.i.i.i42 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %61, i32 0, i32 12
  %62 = ptrtoint ptr %write32.i.i.i42 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %write32.i.i.i42, align 4
  tail call void %63(ptr noundef %rtwdev, i32 noundef 96280, i32 noundef %and.i.i41) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtw8852a_bb_sethw(ptr noundef %rtwdev) #0 align 64 {
entry:
  %cr.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %hci.i.i.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 7
  %0 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hci.i.i.i, align 8
  %read32.i.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %read32.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %read32.i.i.i, align 4
  %call.i.i.i = tail call i32 %3(ptr noundef %rtwdev, i32 noundef 68988) #7
  %and.i.i = and i32 %call.i.i.i, -3
  %4 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hci.i.i.i, align 8
  %write32.i.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %5, i32 0, i32 12
  %6 = ptrtoint ptr %write32.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %write32.i.i.i, align 4
  tail call void %7(ptr noundef %rtwdev, i32 noundef 68988, i32 noundef %and.i.i) #7
  %8 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hci.i.i.i, align 8
  %read32.i.i.i19 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %9, i32 0, i32 9
  %10 = ptrtoint ptr %read32.i.i.i19 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %read32.i.i.i19, align 4
  %call.i.i.i20 = tail call i32 %11(ptr noundef %rtwdev, i32 noundef 77180) #7
  %and.i.i21 = and i32 %call.i.i.i20, -3
  %12 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hci.i.i.i, align 8
  %write32.i.i.i22 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %13, i32 0, i32 12
  %14 = ptrtoint ptr %write32.i.i.i22 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %write32.i.i.i22, align 4
  tail call void %15(ptr noundef %rtwdev, i32 noundef 77180, i32 noundef %and.i.i21) #7
  %cv = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 4, i32 1
  %16 = ptrtoint ptr %cv to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %cv, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %17)
  %cmp = icmp ult i8 %17, 3
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hci.i.i.i, align 8
  %read32.i.i.i24 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %19, i32 0, i32 9
  %20 = ptrtoint ptr %read32.i.i.i24 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %read32.i.i.i24, align 4
  %call.i.i.i25 = tail call i32 %21(ptr noundef %rtwdev, i32 noundef 65548) #7
  %or.i.i = or i32 %call.i.i.i25, 1
  %22 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %hci.i.i.i, align 8
  %write32.i.i.i26 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %23, i32 0, i32 12
  %24 = ptrtoint ptr %write32.i.i.i26 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %write32.i.i.i26, align 4
  tail call void %25(ptr noundef %rtwdev, i32 noundef 65548, i32 noundef %or.i.i) #7
  %26 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %hci.i.i.i, align 8
  %write32.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %27, i32 0, i32 12
  %28 = ptrtoint ptr %write32.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %write32.i.i, align 4
  tail call void %29(ptr noundef %rtwdev, i32 noundef 69056, i32 noundef -2041602048) #7
  %30 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %hci.i.i.i, align 8
  %write32.i.i28 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %31, i32 0, i32 12
  %32 = ptrtoint ptr %write32.i.i28 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %write32.i.i28, align 4
  tail call void %33(ptr noundef %rtwdev, i32 noundef 69060, i32 noundef 63) #7
  %34 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %hci.i.i.i, align 8
  %write32.i.i30 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %35, i32 0, i32 12
  %36 = ptrtoint ptr %write32.i.i30 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %write32.i.i30, align 4
  tail call void %37(ptr noundef %rtwdev, i32 noundef 69064, i32 noundef 32767) #7
  %38 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %hci.i.i.i, align 8
  %read32.i.i.i32 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %39, i32 0, i32 9
  %40 = ptrtoint ptr %read32.i.i.i32 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %read32.i.i.i32, align 4
  %call.i.i.i33 = tail call i32 %41(ptr noundef %rtwdev, i32 noundef 68996) #7
  %or.i.i34 = or i32 %call.i.i.i33, 32768
  %42 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %hci.i.i.i, align 8
  %write32.i.i.i35 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %43, i32 0, i32 12
  %44 = ptrtoint ptr %write32.i.i.i35 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %write32.i.i.i35, align 4
  tail call void %45(ptr noundef %rtwdev, i32 noundef 68996, i32 noundef %or.i.i34) #7
  %46 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %hci.i.i.i, align 8
  %read32.i.i.i37 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %47, i32 0, i32 9
  %48 = ptrtoint ptr %read32.i.i.i37 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %read32.i.i.i37, align 4
  %call.i.i.i38 = tail call i32 %49(ptr noundef %rtwdev, i32 noundef 88284) #7
  %or.i.i39 = or i32 %call.i.i.i38, 1073741824
  %50 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %hci.i.i.i, align 8
  %write32.i.i.i40 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %51, i32 0, i32 12
  %52 = ptrtoint ptr %write32.i.i.i40 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %write32.i.i.i40, align 4
  tail call void %53(ptr noundef %rtwdev, i32 noundef 88284, i32 noundef %or.i.i39) #7
  %54 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %hci.i.i.i, align 8
  %read32.i.i.i42 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %55, i32 0, i32 9
  %56 = ptrtoint ptr %read32.i.i.i42 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %read32.i.i.i42, align 4
  %call.i.i.i43 = tail call i32 %57(ptr noundef %rtwdev, i32 noundef 96476) #7
  %or.i.i44 = or i32 %call.i.i.i43, 1073741824
  %58 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %hci.i.i.i, align 8
  %write32.i.i.i45 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %59, i32 0, i32 12
  %60 = ptrtoint ptr %write32.i.i.i45 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %write32.i.i.i45, align 4
  tail call void %61(ptr noundef %rtwdev, i32 noundef 96476, i32 noundef %or.i.i44) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %62 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %hci.i.i.i, align 8
  %read32.i.i.i47 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %63, i32 0, i32 9
  %64 = ptrtoint ptr %read32.i.i.i47 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %read32.i.i.i47, align 4
  %call.i.i.i48 = tail call i32 %65(ptr noundef %rtwdev, i32 noundef 82948) #7
  %or.i.i49 = or i32 %call.i.i.i48, 31744
  %66 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %hci.i.i.i, align 8
  %write32.i.i.i50 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %67, i32 0, i32 12
  %68 = ptrtoint ptr %write32.i.i.i50 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %write32.i.i.i50, align 4
  tail call void %69(ptr noundef %rtwdev, i32 noundef 82948, i32 noundef %or.i.i49) #7
  %70 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %hci.i.i.i, align 8
  %read32.i.i.i52 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %71, i32 0, i32 9
  %72 = ptrtoint ptr %read32.i.i.i52 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %read32.i.i.i52, align 4
  %call.i.i.i53 = tail call i32 %73(ptr noundef %rtwdev, i32 noundef 82956) #7
  %and21.i.i54 = and i32 %call.i.i.i53, -31745
  %or.i.i55 = or i32 %and21.i.i54, 12288
  %74 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %hci.i.i.i, align 8
  %write32.i.i.i56 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %75, i32 0, i32 12
  %76 = ptrtoint ptr %write32.i.i.i56 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %write32.i.i.i56, align 4
  tail call void %77(ptr noundef %rtwdev, i32 noundef 82956, i32 noundef %or.i.i55) #7
  tail call void @rtw89_phy_write32_idx(ptr noundef %rtwdev, i32 noundef 2468, i32 noundef 28, i32 noundef 0, i32 noundef 0) #7
  tail call void @rtw89_phy_write32_idx(ptr noundef %rtwdev, i32 noundef 2468, i32 noundef 28, i32 noundef 0, i32 noundef 1) #7
  %78 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %hci.i.i.i, align 8
  %read32.i.i.i58 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %79, i32 0, i32 9
  %80 = ptrtoint ptr %read32.i.i.i58 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %read32.i.i.i58, align 4
  %call.i.i.i59 = tail call i32 %81(ptr noundef %rtwdev, i32 noundef 69024) #7
  %and.i.i60 = and i32 %call.i.i.i59, -2
  %82 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %hci.i.i.i, align 8
  %write32.i.i.i61 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %83, i32 0, i32 12
  %84 = ptrtoint ptr %write32.i.i.i61 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %write32.i.i.i61, align 4
  tail call void %85(ptr noundef %rtwdev, i32 noundef 69024, i32 noundef %and.i.i60) #7
  %86 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %hci.i.i.i, align 8
  %read32.i.i.i63 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %87, i32 0, i32 9
  %88 = ptrtoint ptr %read32.i.i.i63 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %read32.i.i.i63, align 4
  %call.i.i.i64 = tail call i32 %89(ptr noundef %rtwdev, i32 noundef 69028) #7
  %or.i.i65 = or i32 %call.i.i.i64, 1
  %90 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %hci.i.i.i, align 8
  %write32.i.i.i66 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %91, i32 0, i32 12
  %92 = ptrtoint ptr %write32.i.i.i66 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %write32.i.i.i66, align 4
  tail call void %93(ptr noundef %rtwdev, i32 noundef 69028, i32 noundef %or.i.i65) #7
  br label %for.body.i

for.body.i:                                       ; preds = %rtw89_mac_txpwr_write32.exit.i.for.body.i_crit_edge, %if.end
  %addr.01.i = phi i32 [ 54124, %if.end ], [ %add.i, %rtw89_mac_txpwr_write32.exit.i.for.body.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cr.i.i) #7
  %94 = ptrtoint ptr %cr.i.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 -1, ptr %cr.i.i, align 4, !annotation !172
  %call.i.i = call zeroext i1 @rtw89_mac_get_txpwr_cr(ptr noundef %rtwdev, i32 noundef 0, i32 noundef %addr.01.i, ptr noundef nonnull %cr.i.i) #7
  br i1 %call.i.i, label %if.end.i.i, label %for.body.i.rtw89_mac_txpwr_write32.exit.i_crit_edge

for.body.i.rtw89_mac_txpwr_write32.exit.i_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtw89_mac_txpwr_write32.exit.i

if.end.i.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %95 = ptrtoint ptr %cr.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %cr.i.i, align 4
  %97 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %hci.i.i.i, align 8
  %write32.i.i.i68 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %98, i32 0, i32 12
  %99 = ptrtoint ptr %write32.i.i.i68 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %write32.i.i.i68, align 4
  call void %100(ptr noundef %rtwdev, i32 noundef %96, i32 noundef 0) #7
  br label %rtw89_mac_txpwr_write32.exit.i

rtw89_mac_txpwr_write32.exit.i:                   ; preds = %if.end.i.i, %for.body.i.rtw89_mac_txpwr_write32.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cr.i.i) #7
  %add.i = add nuw nsw i32 %addr.01.i, 4
  %cmp.i = icmp ult i32 %addr.01.i, 54629
  br i1 %cmp.i, label %rtw89_mac_txpwr_write32.exit.i.for.body.i_crit_edge, label %rtw8852a_bb_macid_ctrl_init.exit

rtw89_mac_txpwr_write32.exit.i.for.body.i_crit_edge: ; preds = %rtw89_mac_txpwr_write32.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

rtw8852a_bb_macid_ctrl_init.exit:                 ; preds = %rtw89_mac_txpwr_write32.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw89_phy_read_rf(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rtw89_phy_write_rf(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtw8852a_set_channel(ptr noundef %rtwdev, ptr noundef %params) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %bandwidth.i = getelementptr inbounds %struct.rtw89_channel_params, ptr %params, i32 0, i32 2
  %0 = ptrtoint ptr %bandwidth.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %bandwidth.i, align 1
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.53)
  switch i8 %1, label %entry.sw.epilog.i_crit_edge [
    i8 2, label %sw.bb.i
    i8 1, label %entry.sw.bb4.i_crit_edge
  ]

entry.sw.bb4.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb4.i

entry.sw.epilog.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

sw.bb.i:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call3.i = tail call zeroext i8 @rtw89_phy_get_txsc(ptr noundef %rtwdev, ptr noundef %params, i32 noundef 1) #7
  br label %sw.bb4.i

sw.bb4.i:                                         ; preds = %sw.bb.i, %entry.sw.bb4.i_crit_edge
  %txsc40.0.i = phi i8 [ 0, %entry.sw.bb4.i_crit_edge ], [ %call3.i, %sw.bb.i ]
  %call5.i = tail call zeroext i8 @rtw89_phy_get_txsc(ptr noundef %rtwdev, ptr noundef %params, i32 noundef 0) #7
  %phi.cast.i = zext i8 %call5.i to i32
  %3 = ptrtoint ptr %bandwidth.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %.pr.i = load i8, ptr %bandwidth.i, align 1
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb4.i, %entry.sw.epilog.i_crit_edge
  %4 = phi i8 [ %1, %entry.sw.epilog.i_crit_edge ], [ %.pr.i, %sw.bb4.i ]
  %txsc20.0.i = phi i32 [ 0, %entry.sw.epilog.i_crit_edge ], [ %phi.cast.i, %sw.bb4.i ]
  %txsc40.1.i = phi i8 [ 0, %entry.sw.epilog.i_crit_edge ], [ %txsc40.0.i, %sw.bb4.i ]
  %5 = zext i8 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.54)
  switch i8 %4, label %sw.epilog.i.rtw8852a_set_channel_mac.exit_crit_edge [
    i8 2, label %sw.bb8.i
    i8 1, label %sw.bb11.i
    i8 0, label %sw.bb13.i
  ]

sw.epilog.i.rtw8852a_set_channel_mac.exit_crit_edge: ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtw8852a_set_channel_mac.exit

sw.bb8.i:                                         ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #9
  %hci.i.i.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 7
  %6 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hci.i.i.i, align 8
  %read8.i.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %7, i32 0, i32 7
  %8 = ptrtoint ptr %read8.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %read8.i.i.i, align 4
  %call.i.i.i = tail call zeroext i8 %9(ptr noundef %rtwdev, i32 noundef 49168) #7
  %10 = and i8 %call.i.i.i, -4
  %conv5.i.i = or i8 %10, 2
  %11 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hci.i.i.i, align 8
  %write8.i.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %12, i32 0, i32 10
  %13 = ptrtoint ptr %write8.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %write8.i.i.i, align 4
  tail call void %14(ptr noundef %rtwdev, i32 noundef 49168, i8 noundef zeroext %conv5.i.i) #7
  %conv10.i = zext i8 %txsc40.1.i to i32
  %shl.i = shl nuw nsw i32 %conv10.i, 4
  %or.i = or i32 %shl.i, %txsc20.0.i
  br label %sw.epilog15.sink.split.i

sw.bb11.i:                                        ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #9
  %hci.i.i1.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 7
  %15 = ptrtoint ptr %hci.i.i1.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hci.i.i1.i, align 8
  %read8.i.i2.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %16, i32 0, i32 7
  %17 = ptrtoint ptr %read8.i.i2.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %read8.i.i2.i, align 4
  %call.i.i3.i = tail call zeroext i8 %18(ptr noundef %rtwdev, i32 noundef 49168) #7
  %19 = and i8 %call.i.i3.i, -4
  %conv5.i4.i = or i8 %19, 1
  %20 = ptrtoint ptr %hci.i.i1.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hci.i.i1.i, align 8
  %write8.i.i5.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %21, i32 0, i32 10
  %22 = ptrtoint ptr %write8.i.i5.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %write8.i.i5.i, align 4
  tail call void %23(ptr noundef %rtwdev, i32 noundef 49168, i8 noundef zeroext %conv5.i4.i) #7
  br label %sw.epilog15.sink.split.i

sw.bb13.i:                                        ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #9
  %hci.i.i8.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 7
  %24 = ptrtoint ptr %hci.i.i8.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %hci.i.i8.i, align 8
  %read8.i.i9.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %25, i32 0, i32 7
  %26 = ptrtoint ptr %read8.i.i9.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %read8.i.i9.i, align 4
  %call.i.i10.i = tail call zeroext i8 %27(ptr noundef %rtwdev, i32 noundef 49168) #7
  %28 = and i8 %call.i.i10.i, -4
  %29 = ptrtoint ptr %hci.i.i8.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %hci.i.i8.i, align 8
  %write8.i.i11.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %30, i32 0, i32 10
  %31 = ptrtoint ptr %write8.i.i11.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %write8.i.i11.i, align 4
  tail call void %32(ptr noundef %rtwdev, i32 noundef 49168, i8 noundef zeroext %28) #7
  br label %sw.epilog15.sink.split.i

sw.epilog15.sink.split.i:                         ; preds = %sw.bb13.i, %sw.bb11.i, %sw.bb8.i
  %hci.i.i8.sink.i = phi ptr [ %hci.i.i8.i, %sw.bb13.i ], [ %hci.i.i1.i, %sw.bb11.i ], [ %hci.i.i.i, %sw.bb8.i ]
  %.sink.i = phi i32 [ 0, %sw.bb13.i ], [ %txsc20.0.i, %sw.bb11.i ], [ %or.i, %sw.bb8.i ]
  %33 = ptrtoint ptr %hci.i.i8.sink.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %hci.i.i8.sink.i, align 8
  %write32.i13.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %34, i32 0, i32 12
  %35 = ptrtoint ptr %write32.i13.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %write32.i13.i, align 4
  tail call void %36(ptr noundef %rtwdev, i32 noundef 49288, i32 noundef %.sink.i) #7
  br label %rtw8852a_set_channel_mac.exit

rtw8852a_set_channel_mac.exit:                    ; preds = %sw.epilog15.sink.split.i, %sw.epilog.i.rtw8852a_set_channel_mac.exit_crit_edge
  %37 = ptrtoint ptr %params to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %params, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 14, i8 %38)
  %cmp.i = icmp ugt i8 %38, 14
  %hci.i.i14.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 7
  %39 = ptrtoint ptr %hci.i.i14.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %hci.i.i14.i, align 8
  %read8.i.i15.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %40, i32 0, i32 7
  %41 = ptrtoint ptr %read8.i.i15.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %read8.i.i15.i, align 4
  %call.i.i16.i = tail call zeroext i8 %42(ptr noundef %rtwdev, i32 noundef 50728) #7
  %43 = and i8 %call.i.i16.i, -4
  %masksel.i = select i1 %cmp.i, i8 3, i8 0
  %.sink24.i = or i8 %43, %masksel.i
  %44 = ptrtoint ptr %hci.i.i14.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %hci.i.i14.i, align 8
  %write8.i.i21.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %45, i32 0, i32 10
  %46 = ptrtoint ptr %write8.i.i21.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %write8.i.i21.i, align 4
  tail call void %47(ptr noundef %rtwdev, i32 noundef 50728, i8 noundef zeroext %.sink24.i) #7
  %48 = ptrtoint ptr %params to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %params, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %49)
  %cmp.i3 = icmp ult i8 %49, 15
  %pri_ch_idx2.i = getelementptr inbounds %struct.rtw89_channel_params, ptr %params, i32 0, i32 3
  %50 = ptrtoint ptr %pri_ch_idx2.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %pri_ch_idx2.i, align 1
  br i1 %cmp.i3, label %if.then.i, label %if.else.critedge.i

if.then.i:                                        ; preds = %rtw8852a_set_channel_mac.exit
  %52 = ptrtoint ptr %bandwidth.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %bandwidth.i, align 1
  %54 = zext i8 %53 to i64
  call void @__sanitizer_cov_trace_switch(i64 %54, ptr @__sancov_gen_cov_switch_values.55)
  switch i8 %53, label %do.end.i.i [
    i8 0, label %if.then.i.if.end19.i.i_crit_edge
    i8 1, label %if.then4.i.i
  ]

if.then.i.if.end19.i.i_crit_edge:                 ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19.i.i

if.then4.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %primary_chan.i = getelementptr inbounds %struct.rtw89_channel_params, ptr %params, i32 0, i32 1
  %55 = ptrtoint ptr %primary_chan.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %primary_chan.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %56)
  %cmp6.i.i = icmp eq i8 %56, 1
  %..i.i = select i1 %cmp6.i.i, i8 1, i8 -3
  br label %if.end19.i.i

do.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv4.i = zext i8 %53 to i32
  %dev.i.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 1
  %57 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %dev.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %58, ptr noundef nonnull @.str.11, i32 noundef %conv4.i) #10
  br label %rtw8852a_ctrl_sco_cck.exit.i

if.end19.i.i:                                     ; preds = %if.then4.i.i, %if.then.i.if.end19.i.i_crit_edge
  %.sink.i.i = phi i8 [ -1, %if.then.i.if.end19.i.i_crit_edge ], [ %..i.i, %if.then4.i.i ]
  %sub15.i.i = add nsw i8 %.sink.i.i, %49
  %idxprom.i.i = zext i8 %sub15.i.i to i32
  %arrayidx.i.i = getelementptr [14 x i32], ptr @rtw8852a_sco_barker_threshold, i32 0, i32 %idxprom.i.i
  %59 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %arrayidx.i.i, align 4
  %61 = ptrtoint ptr %hci.i.i14.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %hci.i.i14.i, align 8
  %read32.i.i.i.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %62, i32 0, i32 9
  %63 = ptrtoint ptr %read32.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %read32.i.i.i.i.i, align 4
  %call.i.i.i.i.i = tail call i32 %64(ptr noundef %rtwdev, i32 noundef 74672) #7
  %and21.i.i.i.i = and i32 %call.i.i.i.i.i, -524288
  %and22.i.i.i.i = and i32 %60, 524287
  %or.i.i.i.i = or i32 %and21.i.i.i.i, %and22.i.i.i.i
  %65 = ptrtoint ptr %hci.i.i14.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %hci.i.i14.i, align 8
  %write32.i.i.i.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %66, i32 0, i32 12
  %67 = ptrtoint ptr %write32.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %write32.i.i.i.i.i, align 4
  tail call void %68(ptr noundef %rtwdev, i32 noundef 74672, i32 noundef %or.i.i.i.i) #7
  %arrayidx21.i.i = getelementptr [14 x i32], ptr @rtw8852a_sco_cck_threshold, i32 0, i32 %idxprom.i.i
  %69 = ptrtoint ptr %arrayidx21.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %arrayidx21.i.i, align 4
  %71 = ptrtoint ptr %hci.i.i14.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %hci.i.i14.i, align 8
  %read32.i.i.i2.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %72, i32 0, i32 9
  %73 = ptrtoint ptr %read32.i.i.i2.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %read32.i.i.i2.i.i, align 4
  %call.i.i.i3.i.i = tail call i32 %74(ptr noundef %rtwdev, i32 noundef 74676) #7
  %and21.i.i4.i.i = and i32 %call.i.i.i3.i.i, -524288
  %and22.i.i5.i.i = and i32 %70, 524287
  %or.i.i6.i.i = or i32 %and21.i.i4.i.i, %and22.i.i5.i.i
  %75 = ptrtoint ptr %hci.i.i14.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %hci.i.i14.i, align 8
  %write32.i.i.i7.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %76, i32 0, i32 12
  %77 = ptrtoint ptr %write32.i.i.i7.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %write32.i.i.i7.i.i, align 4
  tail call void %78(ptr noundef %rtwdev, i32 noundef 74676, i32 noundef %or.i.i6.i.i) #7
  br label %rtw8852a_ctrl_sco_cck.exit.i

rtw8852a_ctrl_sco_cck.exit.i:                     ; preds = %if.end19.i.i, %do.end.i.i
  %79 = ptrtoint ptr %params to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %params, align 1
  tail call fastcc void @rtw8852a_ctrl_ch(ptr noundef %rtwdev, i8 noundef zeroext %80) #7
  %81 = ptrtoint ptr %bandwidth.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %bandwidth.i, align 1
  tail call fastcc void @rtw8852a_ctrl_bw(ptr noundef %rtwdev, i8 noundef zeroext %51, i8 noundef zeroext %82) #7
  %83 = ptrtoint ptr %hci.i.i14.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %hci.i.i14.i, align 8
  %read32.i.i.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %84, i32 0, i32 9
  %85 = ptrtoint ptr %read32.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %read32.i.i.i.i, align 4
  %call.i.i.i.i = tail call i32 %86(ptr noundef %rtwdev, i32 noundef 74564) #7
  %and21.i.i.i = and i32 %call.i.i.i.i, 2147483647
  %87 = ptrtoint ptr %hci.i.i14.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %hci.i.i14.i, align 8
  %write32.i.i.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %88, i32 0, i32 12
  %89 = ptrtoint ptr %write32.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %write32.i.i.i.i, align 4
  tail call void %90(ptr noundef %rtwdev, i32 noundef 74564, i32 noundef %and21.i.i.i) #7
  br label %if.end9.i

if.else.critedge.i:                               ; preds = %rtw8852a_set_channel_mac.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @rtw8852a_ctrl_ch(ptr noundef %rtwdev, i8 noundef zeroext %49) #7
  %91 = ptrtoint ptr %bandwidth.i to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %bandwidth.i, align 1
  tail call fastcc void @rtw8852a_ctrl_bw(ptr noundef %rtwdev, i8 noundef zeroext %51, i8 noundef zeroext %92) #7
  %93 = ptrtoint ptr %hci.i.i14.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %hci.i.i14.i, align 8
  %read32.i.i.i3.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %94, i32 0, i32 9
  %95 = ptrtoint ptr %read32.i.i.i3.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %read32.i.i.i3.i, align 4
  %call.i.i.i4.i = tail call i32 %96(ptr noundef %rtwdev, i32 noundef 74564) #7
  %or.i.i.i = or i32 %call.i.i.i4.i, -2147483648
  %97 = ptrtoint ptr %hci.i.i14.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %hci.i.i14.i, align 8
  %write32.i.i.i6.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %98, i32 0, i32 12
  %99 = ptrtoint ptr %write32.i.i.i6.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %write32.i.i.i6.i, align 4
  tail call void %100(ptr noundef %rtwdev, i32 noundef 74564, i32 noundef %or.i.i.i) #7
  %101 = ptrtoint ptr %hci.i.i14.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %hci.i.i14.i, align 8
  %read32.i.i.i.i8.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %102, i32 0, i32 9
  %103 = ptrtoint ptr %read32.i.i.i.i8.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %read32.i.i.i.i8.i, align 4
  %call.i.i.i.i9.i = tail call i32 %104(ptr noundef %rtwdev, i32 noundef 88088) #7
  %or.i.i.i10.i = or i32 %call.i.i.i.i9.i, 1073741824
  %105 = ptrtoint ptr %hci.i.i14.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %hci.i.i14.i, align 8
  %write32.i.i.i.i11.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %106, i32 0, i32 12
  %107 = ptrtoint ptr %write32.i.i.i.i11.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %write32.i.i.i.i11.i, align 4
  tail call void %108(ptr noundef %rtwdev, i32 noundef 88088, i32 noundef %or.i.i.i10.i) #7
  %109 = ptrtoint ptr %hci.i.i14.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %hci.i.i14.i, align 8
  %read32.i.i.i2.i12.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %110, i32 0, i32 9
  %111 = ptrtoint ptr %read32.i.i.i2.i12.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %read32.i.i.i2.i12.i, align 4
  %call.i.i.i3.i13.i = tail call i32 %112(ptr noundef %rtwdev, i32 noundef 96280) #7
  %or.i.i4.i.i = or i32 %call.i.i.i3.i13.i, 1073741824
  %113 = ptrtoint ptr %hci.i.i14.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %hci.i.i14.i, align 8
  %write32.i.i.i5.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %114, i32 0, i32 12
  %115 = ptrtoint ptr %write32.i.i.i5.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %write32.i.i.i5.i.i, align 4
  tail call void %116(ptr noundef %rtwdev, i32 noundef 96280, i32 noundef %or.i.i4.i.i) #7
  tail call void @rtw89_phy_write32_idx(ptr noundef %rtwdev, i32 noundef 1796, i32 noundef 2, i32 noundef 1, i32 noundef 0) #7
  tail call void @rtw89_phy_write32_idx(ptr noundef %rtwdev, i32 noundef 1796, i32 noundef 2, i32 noundef 0, i32 noundef 0) #7
  tail call void @rtw89_phy_write32_idx(ptr noundef %rtwdev, i32 noundef 1796, i32 noundef 2, i32 noundef 1, i32 noundef 0) #7
  %117 = ptrtoint ptr %hci.i.i14.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %hci.i.i14.i, align 8
  %read32.i.i.i7.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %118, i32 0, i32 9
  %119 = ptrtoint ptr %read32.i.i.i7.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %read32.i.i.i7.i.i, align 4
  %call.i.i.i8.i.i = tail call i32 %120(ptr noundef %rtwdev, i32 noundef 88088) #7
  %and.i.i.i.i = and i32 %call.i.i.i8.i.i, -1073741825
  %121 = ptrtoint ptr %hci.i.i14.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %hci.i.i14.i, align 8
  %write32.i.i.i9.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %122, i32 0, i32 12
  %123 = ptrtoint ptr %write32.i.i.i9.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %write32.i.i.i9.i.i, align 4
  tail call void %124(ptr noundef %rtwdev, i32 noundef 88088, i32 noundef %and.i.i.i.i) #7
  %125 = ptrtoint ptr %hci.i.i14.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %hci.i.i14.i, align 8
  %read32.i.i.i11.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %126, i32 0, i32 9
  %127 = ptrtoint ptr %read32.i.i.i11.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %read32.i.i.i11.i.i, align 4
  %call.i.i.i12.i.i = tail call i32 %128(ptr noundef %rtwdev, i32 noundef 96280) #7
  %and.i.i13.i.i = and i32 %call.i.i.i12.i.i, -1073741825
  %129 = ptrtoint ptr %hci.i.i14.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %hci.i.i14.i, align 8
  %write32.i.i.i14.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %130, i32 0, i32 12
  %131 = ptrtoint ptr %write32.i.i.i14.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %write32.i.i.i14.i.i, align 4
  tail call void %132(ptr noundef %rtwdev, i32 noundef 96280, i32 noundef %and.i.i13.i.i) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %133 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %133(i32 noundef 214748) #7
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.else.critedge.i, %rtw8852a_ctrl_sco_cck.exit.i
  %134 = ptrtoint ptr %params to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %params, align 1
  %136 = zext i8 %135 to i64
  call void @__sanitizer_cov_trace_switch(i64 %136, ptr @__sancov_gen_cov_switch_values.56)
  switch i8 %135, label %if.else11.i.i [
    i8 -103, label %if.then.i.i
    i8 -105, label %if.then5.i.i
    i8 -101, label %if.then10.i.i
  ]

if.then.i.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #9
  %137 = ptrtoint ptr %hci.i.i14.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %hci.i.i14.i, align 8
  %read32.i.i.i.i15.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %138, i32 0, i32 9
  %139 = ptrtoint ptr %read32.i.i.i.i15.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %read32.i.i.i.i15.i, align 4
  %call.i.i.i.i16.i = tail call i32 %140(ptr noundef %rtwdev, i32 noundef 83612) #7
  %and21.i.i.i17.i = and i32 %call.i.i.i.i16.i, -4096
  %or.i.i.i18.i = or i32 %and21.i.i.i17.i, 528
  %141 = ptrtoint ptr %hci.i.i14.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %hci.i.i14.i, align 8
  %write32.i.i.i.i19.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %142, i32 0, i32 12
  %143 = ptrtoint ptr %write32.i.i.i.i19.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %write32.i.i.i.i19.i, align 4
  tail call void %144(ptr noundef %rtwdev, i32 noundef 83612, i32 noundef %or.i.i.i18.i) #7
  %145 = ptrtoint ptr %hci.i.i14.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %hci.i.i14.i, align 8
  %read32.i.i.i37.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %146, i32 0, i32 9
  %147 = ptrtoint ptr %read32.i.i.i37.i.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %read32.i.i.i37.i.i, align 4
  %call.i.i.i38.i.i = tail call i32 %148(ptr noundef %rtwdev, i32 noundef 83824) #7
  %and21.i.i39.i.i = and i32 %call.i.i.i38.i.i, -4096
  %or.i.i40.i.i = or i32 %and21.i.i39.i.i, 528
  %149 = ptrtoint ptr %hci.i.i14.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %hci.i.i14.i, align 8
  %write32.i.i.i41.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %150, i32 0, i32 12
  %151 = ptrtoint ptr %write32.i.i.i41.i.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %write32.i.i.i41.i.i, align 4
  tail call void %152(ptr noundef %rtwdev, i32 noundef 83824, i32 noundef %or.i.i40.i.i) #7
  %153 = ptrtoint ptr %hci.i.i14.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %hci.i.i14.i, align 8
  %read32.i.i.i43.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %154, i32 0, i32 9
  %155 = ptrtoint ptr %read32.i.i.i43.i.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %read32.i.i.i43.i.i, align 4
  %call.i.i.i44.i.i = tail call i32 %156(ptr noundef %rtwdev, i32 noundef 82604) #7
  %and21.i.i45.i.i = and i32 %call.i.i.i44.i.i, -4096
  %or.i.i46.i.i = or i32 %and21.i.i45.i.i, 1984
  %157 = ptrtoint ptr %hci.i.i14.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %hci.i.i14.i, align 8
  %write32.i.i.i47.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %158, i32 0, i32 12
  %159 = ptrtoint ptr %write32.i.i.i47.i.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %write32.i.i.i47.i.i, align 4
  tail call void %160(ptr noundef %rtwdev, i32 noundef 82604, i32 noundef %or.i.i46.i.i) #7
  %161 = ptrtoint ptr %hci.i.i14.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %hci.i.i14.i, align 8
  %read32.i.i.i49.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %162, i32 0, i32 9
  %163 = ptrtoint ptr %read32.i.i.i49.i.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %read32.i.i.i49.i.i, align 4
  %call.i.i.i50.i.i = tail call i32 %164(ptr noundef %rtwdev, i32 noundef 83612) #7
  %or.i.i52.i.i = or i32 %call.i.i.i50.i.i, 4096
  %165 = ptrtoint ptr %hci.i.i14.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %hci.i.i14.i, align 8
  %write32.i.i.i53.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %166, i32 0, i32 12
  %167 = ptrtoint ptr %write32.i.i.i53.i.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %write32.i.i.i53.i.i, align 4
  tail call void %168(ptr noundef %rtwdev, i32 noundef 83612, i32 noundef %or.i.i52.i.i) #7
  %169 = ptrtoint ptr %hci.i.i14.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %hci.i.i14.i, align 8
  %read32.i.i.i55.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %170, i32 0, i32 9
  %171 = ptrtoint ptr %read32.i.i.i55.i.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %read32.i.i.i55.i.i, align 4
  %call.i.i.i56.i.i = tail call i32 %172(ptr noundef %rtwdev, i32 noundef 83824) #7
  %or.i.i58.i.i = or i32 %call.i.i.i56.i.i, 4096
  %173 = ptrtoint ptr %hci.i.i14.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %hci.i.i14.i, align 8
  %write32.i.i.i59.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %174, i32 0, i32 12
  %175 = ptrtoint ptr %write32.i.i.i59.i.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %write32.i.i.i59.i.i, align 4
  tail call void %176(ptr noundef %rtwdev, i32 noundef 83824, i32 noundef %or.i.i58.i.i) #7
  %177 = ptrtoint ptr %hci.i.i14.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %hci.i.i14.i, align 8
  %read32.i.i.i61.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %178, i32 0, i32 9
  %179 = ptrtoint ptr %read32.i.i.i61.i.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %read32.i.i.i61.i.i, align 4
  %call.i.i.i62.i.i = tail call i32 %180(ptr noundef %rtwdev, i32 noundef 82628) #7
  %or.i.i64.i.i = or i32 %call.i.i.i62.i.i, 8388608
  br label %rtw8852a_set_channel_bb.exit

if.then5.i.i:                                     ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #9
  %181 = ptrtoint ptr %hci.i.i14.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %hci.i.i14.i, align 8
  %read32.i.i.i67.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %182, i32 0, i32 9
  %183 = ptrtoint ptr %read32.i.i.i67.i.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %read32.i.i.i67.i.i, align 4
  %call.i.i.i68.i.i = tail call i32 %184(ptr noundef %rtwdev, i32 noundef 83612) #7
  %and21.i.i69.i.i = and i32 %call.i.i.i68.i.i, -4096
  %or.i.i70.i.i = or i32 %and21.i.i69.i.i, 528
  %185 = ptrtoint ptr %hci.i.i14.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %hci.i.i14.i, align 8
  %write32.i.i.i71.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %186, i32 0, i32 12
  %187 = ptrtoint ptr %write32.i.i.i71.i.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %write32.i.i.i71.i.i, align 4
  tail call void %188(ptr noundef %rtwdev, i32 noundef 83612, i32 noundef %or.i.i70.i.i) #7
  %189 = ptrtoint ptr %hci.i.i14.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %hci.i.i14.i, align 8
  %read32.i.i.i73.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %190, i32 0, i32 9
  %191 = ptrtoint ptr %read32.i.i.i73.i.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %read32.i.i.i73.i.i, align 4
  %call.i.i.i74.i.i = tail call i32 %192(ptr noundef %rtwdev, i32 noundef 83824) #7
  %and21.i.i75.i.i = and i32 %call.i.i.i74.i.i, -4096
  %or.i.i76.i.i = or i32 %and21.i.i75.i.i, 528
  %193 = ptrtoint ptr %hci.i.i14.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %hci.i.i14.i, align 8
  %write32.i.i.i77.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %194, i32 0, i32 12
  %195 = ptrtoint ptr %write32.i.i.i77.i.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %write32.i.i.i77.i.i, align 4
  tail call void %196(ptr noundef %rtwdev, i32 noundef 83824, i32 noundef %or.i.i76.i.i) #7
  %197 = ptrtoint ptr %hci.i.i14.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %hci.i.i14.i, align 8
  %read32.i.i.i79.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %198, i32 0, i32 9
  %199 = ptrtoint ptr %read32.i.i.i79.i.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %read32.i.i.i79.i.i, align 4
  %call.i.i.i80.i.i = tail call i32 %200(ptr noundef %rtwdev, i32 noundef 82604) #7
  %and21.i.i81.i.i = and i32 %call.i.i.i80.i.i, -4096
  %or.i.i82.i.i = or i32 %and21.i.i81.i.i, 64
  %201 = ptrtoint ptr %hci.i.i14.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %hci.i.i14.i, align 8
  %write32.i.i.i83.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %202, i32 0, i32 12
  %203 = ptrtoint ptr %write32.i.i.i83.i.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %write32.i.i.i83.i.i, align 4
  tail call void %204(ptr noundef %rtwdev, i32 noundef 82604, i32 noundef %or.i.i82.i.i) #7
  %205 = ptrtoint ptr %hci.i.i14.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %hci.i.i14.i, align 8
  %read32.i.i.i85.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %206, i32 0, i32 9
  %207 = ptrtoint ptr %read32.i.i.i85.i.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %read32.i.i.i85.i.i, align 4
  %call.i.i.i86.i.i = tail call i32 %208(ptr noundef %rtwdev, i32 noundef 83612) #7
  %or.i.i88.i.i = or i32 %call.i.i.i86.i.i, 4096
  %209 = ptrtoint ptr %hci.i.i14.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %hci.i.i14.i, align 8
  %write32.i.i.i89.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %210, i32 0, i32 12
  %211 = ptrtoint ptr %write32.i.i.i89.i.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %write32.i.i.i89.i.i, align 4
  tail call void %212(ptr noundef %rtwdev, i32 noundef 83612, i32 noundef %or.i.i88.i.i) #7
  %213 = ptrtoint ptr %hci.i.i14.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %hci.i.i14.i, align 8
  %read32.i.i.i91.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %214, i32 0, i32 9
  %215 = ptrtoint ptr %read32.i.i.i91.i.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %read32.i.i.i91.i.i, align 4
  %call.i.i.i92.i.i = tail call i32 %216(ptr noundef %rtwdev, i32 noundef 83824) #7
  %or.i.i94.i.i = or i32 %call.i.i.i92.i.i, 4096
  %217 = ptrtoint ptr %hci.i.i14.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %hci.i.i14.i, align 8
  %write32.i.i.i95.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %218, i32 0, i32 12
  %219 = ptrtoint ptr %write32.i.i.i95.i.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %write32.i.i.i95.i.i, align 4
  tail call void %220(ptr noundef %rtwdev, i32 noundef 83824, i32 noundef %or.i.i94.i.i) #7
  %221 = ptrtoint ptr %hci.i.i14.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %hci.i.i14.i, align 8
  %read32.i.i.i97.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %222, i32 0, i32 9
  %223 = ptrtoint ptr %read32.i.i.i97.i.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %read32.i.i.i97.i.i, align 4
  %call.i.i.i98.i.i = tail call i32 %224(ptr noundef %rtwdev, i32 noundef 82628) #7
  %or.i.i100.i.i = or i32 %call.i.i.i98.i.i, 8388608
  br label %rtw8852a_set_channel_bb.exit

if.then10.i.i:                                    ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #9
  %225 = ptrtoint ptr %hci.i.i14.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %hci.i.i14.i, align 8
  %read32.i.i.i103.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %226, i32 0, i32 9
  %227 = ptrtoint ptr %read32.i.i.i103.i.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %read32.i.i.i103.i.i, align 4
  %call.i.i.i104.i.i = tail call i32 %228(ptr noundef %rtwdev, i32 noundef 83612) #7
  %and21.i.i105.i.i = and i32 %call.i.i.i104.i.i, -4096
  %or.i.i106.i.i = or i32 %and21.i.i105.i.i, 720
  %229 = ptrtoint ptr %hci.i.i14.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %hci.i.i14.i, align 8
  %write32.i.i.i107.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %230, i32 0, i32 12
  %231 = ptrtoint ptr %write32.i.i.i107.i.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %write32.i.i.i107.i.i, align 4
  tail call void %232(ptr noundef %rtwdev, i32 noundef 83612, i32 noundef %or.i.i106.i.i) #7
  %233 = ptrtoint ptr %hci.i.i14.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %hci.i.i14.i, align 8
  %read32.i.i.i109.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %234, i32 0, i32 9
  %235 = ptrtoint ptr %read32.i.i.i109.i.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %read32.i.i.i109.i.i, align 4
  %call.i.i.i110.i.i = tail call i32 %236(ptr noundef %rtwdev, i32 noundef 83824) #7
  %and21.i.i111.i.i = and i32 %call.i.i.i110.i.i, -4096
  %or.i.i112.i.i = or i32 %and21.i.i111.i.i, 720
  %237 = ptrtoint ptr %hci.i.i14.i to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %hci.i.i14.i, align 8
  %write32.i.i.i113.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %238, i32 0, i32 12
  %239 = ptrtoint ptr %write32.i.i.i113.i.i to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %write32.i.i.i113.i.i, align 4
  tail call void %240(ptr noundef %rtwdev, i32 noundef 83824, i32 noundef %or.i.i112.i.i) #7
  %241 = ptrtoint ptr %hci.i.i14.i to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %hci.i.i14.i, align 8
  %read32.i.i.i115.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %242, i32 0, i32 9
  %243 = ptrtoint ptr %read32.i.i.i115.i.i to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %read32.i.i.i115.i.i, align 4
  %call.i.i.i116.i.i = tail call i32 %244(ptr noundef %rtwdev, i32 noundef 82604) #7
  %and21.i.i117.i.i = and i32 %call.i.i.i116.i.i, -4096
  %or.i.i118.i.i = or i32 %and21.i.i117.i.i, 1856
  %245 = ptrtoint ptr %hci.i.i14.i to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %hci.i.i14.i, align 8
  %write32.i.i.i119.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %246, i32 0, i32 12
  %247 = ptrtoint ptr %write32.i.i.i119.i.i to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %write32.i.i.i119.i.i, align 4
  tail call void %248(ptr noundef %rtwdev, i32 noundef 82604, i32 noundef %or.i.i118.i.i) #7
  %249 = ptrtoint ptr %hci.i.i14.i to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load ptr, ptr %hci.i.i14.i, align 8
  %read32.i.i.i121.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %250, i32 0, i32 9
  %251 = ptrtoint ptr %read32.i.i.i121.i.i to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %read32.i.i.i121.i.i, align 4
  %call.i.i.i122.i.i = tail call i32 %252(ptr noundef %rtwdev, i32 noundef 83612) #7
  %or.i.i124.i.i = or i32 %call.i.i.i122.i.i, 4096
  %253 = ptrtoint ptr %hci.i.i14.i to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %hci.i.i14.i, align 8
  %write32.i.i.i125.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %254, i32 0, i32 12
  %255 = ptrtoint ptr %write32.i.i.i125.i.i to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load ptr, ptr %write32.i.i.i125.i.i, align 4
  tail call void %256(ptr noundef %rtwdev, i32 noundef 83612, i32 noundef %or.i.i124.i.i) #7
  %257 = ptrtoint ptr %hci.i.i14.i to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load ptr, ptr %hci.i.i14.i, align 8
  %read32.i.i.i127.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %258, i32 0, i32 9
  %259 = ptrtoint ptr %read32.i.i.i127.i.i to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load ptr, ptr %read32.i.i.i127.i.i, align 4
  %call.i.i.i128.i.i = tail call i32 %260(ptr noundef %rtwdev, i32 noundef 83824) #7
  %or.i.i130.i.i = or i32 %call.i.i.i128.i.i, 4096
  %261 = ptrtoint ptr %hci.i.i14.i to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load ptr, ptr %hci.i.i14.i, align 8
  %write32.i.i.i131.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %262, i32 0, i32 12
  %263 = ptrtoint ptr %write32.i.i.i131.i.i to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load ptr, ptr %write32.i.i.i131.i.i, align 4
  tail call void %264(ptr noundef %rtwdev, i32 noundef 83824, i32 noundef %or.i.i130.i.i) #7
  %265 = ptrtoint ptr %hci.i.i14.i to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load ptr, ptr %hci.i.i14.i, align 8
  %read32.i.i.i133.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %266, i32 0, i32 9
  %267 = ptrtoint ptr %read32.i.i.i133.i.i to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load ptr, ptr %read32.i.i.i133.i.i, align 4
  %call.i.i.i134.i.i = tail call i32 %268(ptr noundef %rtwdev, i32 noundef 82628) #7
  %or.i.i136.i.i = or i32 %call.i.i.i134.i.i, 8388608
  br label %rtw8852a_set_channel_bb.exit

if.else11.i.i:                                    ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #9
  %269 = ptrtoint ptr %hci.i.i14.i to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load ptr, ptr %hci.i.i14.i, align 8
  %read32.i.i.i139.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %270, i32 0, i32 9
  %271 = ptrtoint ptr %read32.i.i.i139.i.i to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load ptr, ptr %read32.i.i.i139.i.i, align 4
  %call.i.i.i140.i.i = tail call i32 %272(ptr noundef %rtwdev, i32 noundef 83612) #7
  %and21.i.i141.i.i = and i32 %call.i.i.i140.i.i, -4097
  %273 = ptrtoint ptr %hci.i.i14.i to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load ptr, ptr %hci.i.i14.i, align 8
  %write32.i.i.i142.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %274, i32 0, i32 12
  %275 = ptrtoint ptr %write32.i.i.i142.i.i to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load ptr, ptr %write32.i.i.i142.i.i, align 4
  tail call void %276(ptr noundef %rtwdev, i32 noundef 83612, i32 noundef %and21.i.i141.i.i) #7
  %277 = ptrtoint ptr %hci.i.i14.i to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load ptr, ptr %hci.i.i14.i, align 8
  %read32.i.i.i144.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %278, i32 0, i32 9
  %279 = ptrtoint ptr %read32.i.i.i144.i.i to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load ptr, ptr %read32.i.i.i144.i.i, align 4
  %call.i.i.i145.i.i = tail call i32 %280(ptr noundef %rtwdev, i32 noundef 83824) #7
  %and21.i.i146.i.i = and i32 %call.i.i.i145.i.i, -4097
  %281 = ptrtoint ptr %hci.i.i14.i to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load ptr, ptr %hci.i.i14.i, align 8
  %write32.i.i.i147.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %282, i32 0, i32 12
  %283 = ptrtoint ptr %write32.i.i.i147.i.i to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load ptr, ptr %write32.i.i.i147.i.i, align 4
  tail call void %284(ptr noundef %rtwdev, i32 noundef 83824, i32 noundef %and21.i.i146.i.i) #7
  %285 = ptrtoint ptr %hci.i.i14.i to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load ptr, ptr %hci.i.i14.i, align 8
  %read32.i.i.i149.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %286, i32 0, i32 9
  %287 = ptrtoint ptr %read32.i.i.i149.i.i to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load ptr, ptr %read32.i.i.i149.i.i, align 4
  %call.i.i.i150.i.i = tail call i32 %288(ptr noundef %rtwdev, i32 noundef 82628) #7
  %and21.i.i151.i.i = and i32 %call.i.i.i150.i.i, -8388609
  br label %rtw8852a_set_channel_bb.exit

rtw8852a_set_channel_bb.exit:                     ; preds = %if.else11.i.i, %if.then10.i.i, %if.then5.i.i, %if.then.i.i
  %or.i.i100.sink.i.i = phi i32 [ %or.i.i100.i.i, %if.then5.i.i ], [ %and21.i.i151.i.i, %if.else11.i.i ], [ %or.i.i136.i.i, %if.then10.i.i ], [ %or.i.i64.i.i, %if.then.i.i ]
  %289 = ptrtoint ptr %hci.i.i14.i to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load ptr, ptr %hci.i.i14.i, align 8
  %write32.i.i.i101.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %290, i32 0, i32 12
  %291 = ptrtoint ptr %write32.i.i.i101.i.i to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load ptr, ptr %write32.i.i.i101.i.i, align 4
  tail call void %292(ptr noundef %rtwdev, i32 noundef 82628, i32 noundef %or.i.i100.sink.i.i) #7
  %primary_chan11.i = getelementptr inbounds %struct.rtw89_channel_params, ptr %params, i32 0, i32 1
  %293 = ptrtoint ptr %primary_chan11.i to i32
  call void @__asan_load1_noabort(i32 %293)
  %294 = load i8, ptr %primary_chan11.i, align 1
  %conv12.i = zext i8 %294 to i32
  %295 = ptrtoint ptr %hci.i.i14.i to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load ptr, ptr %hci.i.i14.i, align 8
  %read32.i.i.i21.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %296, i32 0, i32 9
  %297 = ptrtoint ptr %read32.i.i.i21.i to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load ptr, ptr %read32.i.i.i21.i, align 4
  %call.i.i.i22.i = tail call i32 %298(ptr noundef %rtwdev, i32 noundef 67380) #7
  %and21.i.i23.i = and i32 %call.i.i.i22.i, -16711681
  %shl.i.i.i = shl nuw nsw i32 %conv12.i, 16
  %or.i.i24.i = or i32 %and21.i.i23.i, %shl.i.i.i
  %299 = ptrtoint ptr %hci.i.i14.i to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load ptr, ptr %hci.i.i14.i, align 8
  %write32.i.i.i25.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %300, i32 0, i32 12
  %301 = ptrtoint ptr %write32.i.i.i25.i to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load ptr, ptr %write32.i.i.i25.i, align 4
  tail call void %302(ptr noundef %rtwdev, i32 noundef 67380, i32 noundef %or.i.i24.i) #7
  tail call void @rtw89_phy_write32_idx(ptr noundef %rtwdev, i32 noundef 1796, i32 noundef 2, i32 noundef 1, i32 noundef 0) #7
  tail call void @rtw89_phy_write32_idx(ptr noundef %rtwdev, i32 noundef 1796, i32 noundef 2, i32 noundef 0, i32 noundef 0) #7
  tail call void @rtw89_phy_write32_idx(ptr noundef %rtwdev, i32 noundef 1796, i32 noundef 2, i32 noundef 1, i32 noundef 0) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtw8852a_set_channel_help(ptr noundef %rtwdev, i1 noundef zeroext %enter, ptr noundef %p) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %enter, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call = tail call i32 @rtw89_mac_stop_sch_tx(ptr noundef %rtwdev, i8 noundef zeroext 0, ptr noundef %p, i32 noundef 0) #7
  %call1 = tail call i32 @rtw89_mac_cfg_ppdu_status(ptr noundef %rtwdev, i8 noundef zeroext 0, i1 noundef zeroext false) #7
  %hci.i.i.i.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 7
  %0 = ptrtoint ptr %hci.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hci.i.i.i.i, align 8
  %read32.i.i.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %read32.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %read32.i.i.i.i, align 4
  %call.i.i.i.i = tail call i32 %3(ptr noundef %rtwdev, i32 noundef 65536) #7
  %and21.i.i5.i = and i32 %call.i.i.i.i, 2147483647
  %4 = ptrtoint ptr %hci.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hci.i.i.i.i, align 8
  %write32.i.i.i6.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %5, i32 0, i32 12
  %6 = ptrtoint ptr %write32.i.i.i6.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %write32.i.i.i6.i, align 4
  tail call void %7(ptr noundef %rtwdev, i32 noundef 65536, i32 noundef %and21.i.i5.i) #7
  %dbcc_en.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 2
  %8 = ptrtoint ptr %dbcc_en.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %dbcc_en.i, align 8, !range !171
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not.i = icmp eq i8 %9, 0
  %10 = ptrtoint ptr %hci.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hci.i.i.i.i, align 8
  %read32.i.i.i25.i40 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %11, i32 0, i32 9
  %12 = ptrtoint ptr %read32.i.i.i25.i40 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %read32.i.i.i25.i40, align 4
  %call.i.i.i26.i41 = tail call i32 %13(ptr noundef %rtwdev, i32 noundef 88284) #7
  %or.i.i.i42 = or i32 %call.i.i.i26.i41, 1073741824
  %14 = ptrtoint ptr %hci.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hci.i.i.i.i, align 8
  %write32.i.i.i28.i43 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %15, i32 0, i32 12
  %16 = ptrtoint ptr %write32.i.i.i28.i43 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %write32.i.i.i28.i43, align 4
  tail call void %17(ptr noundef %rtwdev, i32 noundef 88284, i32 noundef %or.i.i.i42) #7
  %18 = ptrtoint ptr %hci.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hci.i.i.i.i, align 8
  %read32.i.i.i35.i44 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %19, i32 0, i32 9
  %20 = ptrtoint ptr %read32.i.i.i35.i44 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %read32.i.i.i35.i44, align 4
  %call.i.i.i36.i45 = tail call i32 %21(ptr noundef %rtwdev, i32 noundef 88088) #7
  %or.i.i38.i46 = or i32 %call.i.i.i36.i45, 1073741824
  %22 = ptrtoint ptr %hci.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %hci.i.i.i.i, align 8
  %write32.i.i.i39.i47 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %23, i32 0, i32 12
  %24 = ptrtoint ptr %write32.i.i.i39.i47 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %write32.i.i.i39.i47, align 4
  tail call void %25(ptr noundef %rtwdev, i32 noundef 88088, i32 noundef %or.i.i38.i46) #7
  br i1 %tobool.not.i, label %if.then.i, label %if.then.rtw8852a_tssi_cont_en_phyidx.exit_crit_edge

if.then.rtw8852a_tssi_cont_en_phyidx.exit_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtw8852a_tssi_cont_en_phyidx.exit

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %26 = ptrtoint ptr %hci.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %hci.i.i.i.i, align 8
  %read32.i.i.i25.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %27, i32 0, i32 9
  %28 = ptrtoint ptr %read32.i.i.i25.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %read32.i.i.i25.i, align 4
  %call.i.i.i26.i = tail call i32 %29(ptr noundef %rtwdev, i32 noundef 96476) #7
  %or.i.i.i38 = or i32 %call.i.i.i26.i, 1073741824
  %30 = ptrtoint ptr %hci.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %hci.i.i.i.i, align 8
  %write32.i.i.i28.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %31, i32 0, i32 12
  %32 = ptrtoint ptr %write32.i.i.i28.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %write32.i.i.i28.i, align 4
  tail call void %33(ptr noundef %rtwdev, i32 noundef 96476, i32 noundef %or.i.i.i38) #7
  %34 = ptrtoint ptr %hci.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %hci.i.i.i.i, align 8
  %read32.i.i.i35.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %35, i32 0, i32 9
  %36 = ptrtoint ptr %read32.i.i.i35.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %read32.i.i.i35.i, align 4
  %call.i.i.i36.i = tail call i32 %37(ptr noundef %rtwdev, i32 noundef 96280) #7
  %or.i.i38.i = or i32 %call.i.i.i36.i, 1073741824
  %38 = ptrtoint ptr %hci.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %hci.i.i.i.i, align 8
  %write32.i.i.i39.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %39, i32 0, i32 12
  %40 = ptrtoint ptr %write32.i.i.i39.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %write32.i.i.i39.i, align 4
  tail call void %41(ptr noundef %rtwdev, i32 noundef 96280, i32 noundef %or.i.i38.i) #7
  br label %rtw8852a_tssi_cont_en_phyidx.exit

rtw8852a_tssi_cont_en_phyidx.exit:                ; preds = %if.then.i, %if.then.rtw8852a_tssi_cont_en_phyidx.exit_crit_edge
  %42 = ptrtoint ptr %hci.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %hci.i.i.i.i, align 8
  %read32.i.i.i.i20 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %43, i32 0, i32 9
  %44 = ptrtoint ptr %read32.i.i.i.i20 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %read32.i.i.i.i20, align 4
  %call.i.i.i.i21 = tail call i32 %45(ptr noundef %rtwdev, i32 noundef 73980) #7
  %and21.i.i.i = and i32 %call.i.i.i.i21, 16777215
  %or.i.i.i = or i32 %and21.i.i.i, 251658240
  %46 = ptrtoint ptr %hci.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %hci.i.i.i.i, align 8
  %write32.i.i.i6.i22 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %47, i32 0, i32 12
  %48 = ptrtoint ptr %write32.i.i.i6.i22 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %write32.i.i.i6.i22, align 4
  tail call void %49(ptr noundef %rtwdev, i32 noundef 73980, i32 noundef %or.i.i.i) #7
  tail call void @usleep_range_state(i32 noundef 40, i32 noundef 80, i32 noundef 2) #7
  tail call void @rtw89_phy_write32_idx(ptr noundef %rtwdev, i32 noundef 1796, i32 noundef 2, i32 noundef 0, i32 noundef 0) #7
  br label %if.end

if.else:                                          ; preds = %entry
  %call2 = tail call i32 @rtw89_mac_cfg_ppdu_status(ptr noundef %rtwdev, i8 noundef zeroext 0, i1 noundef zeroext true) #7
  %hci.i.i.i.i23 = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 7
  %50 = ptrtoint ptr %hci.i.i.i.i23 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %hci.i.i.i.i23, align 8
  %read32.i.i.i.i24 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %51, i32 0, i32 9
  %52 = ptrtoint ptr %read32.i.i.i.i24 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %read32.i.i.i.i24, align 4
  %call.i.i.i.i25 = tail call i32 %53(ptr noundef %rtwdev, i32 noundef 73980) #7
  %and21.i.i.i26 = and i32 %call.i.i.i.i25, 16777215
  %54 = ptrtoint ptr %hci.i.i.i.i23 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %hci.i.i.i.i23, align 8
  %write32.i.i.i6.i28 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %55, i32 0, i32 12
  %56 = ptrtoint ptr %write32.i.i.i6.i28 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %write32.i.i.i6.i28, align 4
  tail call void %57(ptr noundef %rtwdev, i32 noundef 73980, i32 noundef %and21.i.i.i26) #7
  %58 = ptrtoint ptr %hci.i.i.i.i23 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %hci.i.i.i.i23, align 8
  %read32.i.i.i.i30 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %59, i32 0, i32 9
  %60 = ptrtoint ptr %read32.i.i.i.i30 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %read32.i.i.i.i30, align 4
  %call.i.i.i.i31 = tail call i32 %61(ptr noundef %rtwdev, i32 noundef 65536) #7
  %and21.i.i5.sink.i = or i32 %call.i.i.i.i31, -2147483648
  %62 = ptrtoint ptr %hci.i.i.i.i23 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %hci.i.i.i.i23, align 8
  %write32.i.i.i6.i33 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %63, i32 0, i32 12
  %64 = ptrtoint ptr %write32.i.i.i6.i33 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %write32.i.i.i6.i33, align 4
  tail call void %65(ptr noundef %rtwdev, i32 noundef 65536, i32 noundef %and21.i.i5.sink.i) #7
  %dbcc_en.i34 = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 2
  %66 = ptrtoint ptr %dbcc_en.i34 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %dbcc_en.i34, align 8, !range !171
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %67)
  %tobool.not.i35 = icmp eq i8 %67, 0
  %68 = ptrtoint ptr %hci.i.i.i.i23 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %hci.i.i.i.i23, align 8
  %read32.i.i.i.i55 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %69, i32 0, i32 9
  %70 = ptrtoint ptr %read32.i.i.i.i55 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %read32.i.i.i.i55, align 4
  %call.i.i.i.i56 = tail call i32 %71(ptr noundef %rtwdev, i32 noundef 88284) #7
  %and21.i.i.i57 = and i32 %call.i.i.i.i56, -1073741825
  %72 = ptrtoint ptr %hci.i.i.i.i23 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %hci.i.i.i.i23, align 8
  %write32.i.i.i.i58 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %73, i32 0, i32 12
  %74 = ptrtoint ptr %write32.i.i.i.i58 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %write32.i.i.i.i58, align 4
  tail call void %75(ptr noundef %rtwdev, i32 noundef 88284, i32 noundef %and21.i.i.i57) #7
  %76 = ptrtoint ptr %hci.i.i.i.i23 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %hci.i.i.i.i23, align 8
  %read32.i.i.i15.i59 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %77, i32 0, i32 9
  %78 = ptrtoint ptr %read32.i.i.i15.i59 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %read32.i.i.i15.i59, align 4
  %call.i.i.i16.i60 = tail call i32 %79(ptr noundef %rtwdev, i32 noundef 88088) #7
  %and21.i.i17.i61 = and i32 %call.i.i.i16.i60, -1073741825
  %80 = ptrtoint ptr %hci.i.i.i.i23 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %hci.i.i.i.i23, align 8
  %write32.i.i.i18.i62 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %81, i32 0, i32 12
  %82 = ptrtoint ptr %write32.i.i.i18.i62 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %write32.i.i.i18.i62, align 4
  tail call void %83(ptr noundef %rtwdev, i32 noundef 88088, i32 noundef %and21.i.i17.i61) #7
  br i1 %tobool.not.i35, label %if.then.i36, label %if.else.rtw8852a_tssi_cont_en_phyidx.exit37_crit_edge

if.else.rtw8852a_tssi_cont_en_phyidx.exit37_crit_edge: ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtw8852a_tssi_cont_en_phyidx.exit37

if.then.i36:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %84 = ptrtoint ptr %hci.i.i.i.i23 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %hci.i.i.i.i23, align 8
  %read32.i.i.i.i50 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %85, i32 0, i32 9
  %86 = ptrtoint ptr %read32.i.i.i.i50 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %read32.i.i.i.i50, align 4
  %call.i.i.i.i51 = tail call i32 %87(ptr noundef %rtwdev, i32 noundef 96476) #7
  %and21.i.i.i52 = and i32 %call.i.i.i.i51, -1073741825
  %88 = ptrtoint ptr %hci.i.i.i.i23 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %hci.i.i.i.i23, align 8
  %write32.i.i.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %89, i32 0, i32 12
  %90 = ptrtoint ptr %write32.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %write32.i.i.i.i, align 4
  tail call void %91(ptr noundef %rtwdev, i32 noundef 96476, i32 noundef %and21.i.i.i52) #7
  %92 = ptrtoint ptr %hci.i.i.i.i23 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %hci.i.i.i.i23, align 8
  %read32.i.i.i15.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %93, i32 0, i32 9
  %94 = ptrtoint ptr %read32.i.i.i15.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %read32.i.i.i15.i, align 4
  %call.i.i.i16.i = tail call i32 %95(ptr noundef %rtwdev, i32 noundef 96280) #7
  %and21.i.i17.i = and i32 %call.i.i.i16.i, -1073741825
  %96 = ptrtoint ptr %hci.i.i.i.i23 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %hci.i.i.i.i23, align 8
  %write32.i.i.i18.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %97, i32 0, i32 12
  %98 = ptrtoint ptr %write32.i.i.i18.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %write32.i.i.i18.i, align 4
  tail call void %99(ptr noundef %rtwdev, i32 noundef 96280, i32 noundef %and21.i.i17.i) #7
  br label %rtw8852a_tssi_cont_en_phyidx.exit37

rtw8852a_tssi_cont_en_phyidx.exit37:              ; preds = %if.then.i36, %if.else.rtw8852a_tssi_cont_en_phyidx.exit37_crit_edge
  tail call void @rtw89_phy_write32_idx(ptr noundef %rtwdev, i32 noundef 1796, i32 noundef 2, i32 noundef 1, i32 noundef 0) #7
  %100 = ptrtoint ptr %p to i32
  call void @__asan_load2_noabort(i32 %100)
  %101 = load i16, ptr %p, align 2
  %call5 = tail call i32 @rtw89_mac_resume_sch_tx(ptr noundef %rtwdev, i8 noundef zeroext 0, i16 noundef zeroext %101) #7
  br label %if.end

if.end:                                           ; preds = %rtw8852a_tssi_cont_en_phyidx.exit37, %rtw8852a_tssi_cont_en_phyidx.exit
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtw8852a_read_efuse(ptr noundef %rtwdev, ptr noundef %log_map) #0 align 64 {
entry:
  %ofst.i = alloca [2 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %country_code = getelementptr inbounds %struct.rtw8852a_efuse, ptr %log_map, i32 0, i32 20
  %0 = ptrtoint ptr %country_code to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %country_code, align 1
  %country_code2 = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 8, i32 4
  %2 = ptrtoint ptr %country_code2 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %1, ptr %country_code2, align 1
  %arrayidx5 = getelementptr %struct.rtw8852a_efuse, ptr %log_map, i32 0, i32 20, i32 1
  %3 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx5, align 1
  %arrayidx7 = getelementptr %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 8, i32 4, i32 1
  %5 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %4, ptr %arrayidx7, align 1
  %tssi1.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 35
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ofst.i) #7
  %6 = getelementptr inbounds [2 x ptr], ptr %ofst.i, i32 0, i32 1
  %path_a_tssi.i = getelementptr inbounds %struct.rtw8852a_efuse, ptr %log_map, i32 0, i32 1
  %7 = ptrtoint ptr %ofst.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %path_a_tssi.i, ptr %ofst.i, align 4
  %path_b_tssi.i = getelementptr inbounds %struct.rtw8852a_efuse, ptr %log_map, i32 0, i32 3
  %8 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %path_b_tssi.i, ptr %6, align 4
  %path_a_therm.i = getelementptr inbounds %struct.rtw8852a_efuse, ptr %log_map, i32 0, i32 22
  %9 = ptrtoint ptr %path_a_therm.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %path_a_therm.i, align 1
  %11 = ptrtoint ptr %tssi1.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %tssi1.i, align 4
  %path_b_therm.i = getelementptr inbounds %struct.rtw8852a_efuse, ptr %log_map, i32 0, i32 23
  %12 = ptrtoint ptr %path_b_therm.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %path_b_therm.i, align 1
  %arrayidx3.i = getelementptr %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 35, i32 0, i32 1
  %14 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %arrayidx3.i, align 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry
  %indvars.iv.i = phi i32 [ 0, %entry ], [ %indvars.iv.next.i, %for.body.i.for.body.i_crit_edge ]
  %arrayidx5.i = getelementptr %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 35, i32 2, i32 %indvars.iv.i
  %arrayidx7.i = getelementptr [2 x ptr], ptr %ofst.i, i32 0, i32 %indvars.iv.i
  %15 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx7.i, align 4
  %17 = call ptr @memcpy(ptr %arrayidx5.i, ptr %16, i32 6)
  %18 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx5.i, align 1
  %conv21.i = sext i8 %19 to i32
  tail call void (ptr, i32, ptr, ...) @__rtw89_debug(ptr noundef %rtwdev, i32 noundef 16, ptr noundef nonnull @.str.27, i32 noundef %indvars.iv.i, i32 noundef 0, i32 noundef %conv21.i) #7
  %arrayidx20.1.i = getelementptr %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 35, i32 2, i32 %indvars.iv.i, i32 1
  %20 = ptrtoint ptr %arrayidx20.1.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx20.1.i, align 1
  %conv21.1.i = sext i8 %21 to i32
  tail call void (ptr, i32, ptr, ...) @__rtw89_debug(ptr noundef %rtwdev, i32 noundef 16, ptr noundef nonnull @.str.27, i32 noundef %indvars.iv.i, i32 noundef 1, i32 noundef %conv21.1.i) #7
  %arrayidx20.2.i = getelementptr %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 35, i32 2, i32 %indvars.iv.i, i32 2
  %22 = ptrtoint ptr %arrayidx20.2.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx20.2.i, align 1
  %conv21.2.i = sext i8 %23 to i32
  tail call void (ptr, i32, ptr, ...) @__rtw89_debug(ptr noundef %rtwdev, i32 noundef 16, ptr noundef nonnull @.str.27, i32 noundef %indvars.iv.i, i32 noundef 2, i32 noundef %conv21.2.i) #7
  %arrayidx20.3.i = getelementptr %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 35, i32 2, i32 %indvars.iv.i, i32 3
  %24 = ptrtoint ptr %arrayidx20.3.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx20.3.i, align 1
  %conv21.3.i = sext i8 %25 to i32
  tail call void (ptr, i32, ptr, ...) @__rtw89_debug(ptr noundef %rtwdev, i32 noundef 16, ptr noundef nonnull @.str.27, i32 noundef %indvars.iv.i, i32 noundef 3, i32 noundef %conv21.3.i) #7
  %arrayidx20.4.i = getelementptr %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 35, i32 2, i32 %indvars.iv.i, i32 4
  %26 = ptrtoint ptr %arrayidx20.4.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx20.4.i, align 1
  %conv21.4.i = sext i8 %27 to i32
  tail call void (ptr, i32, ptr, ...) @__rtw89_debug(ptr noundef %rtwdev, i32 noundef 16, ptr noundef nonnull @.str.27, i32 noundef %indvars.iv.i, i32 noundef 4, i32 noundef %conv21.4.i) #7
  %arrayidx20.5.i = getelementptr %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 35, i32 2, i32 %indvars.iv.i, i32 5
  %28 = ptrtoint ptr %arrayidx20.5.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx20.5.i, align 1
  %conv21.5.i = sext i8 %29 to i32
  tail call void (ptr, i32, ptr, ...) @__rtw89_debug(ptr noundef %rtwdev, i32 noundef 16, ptr noundef nonnull @.str.27, i32 noundef %indvars.iv.i, i32 noundef 5, i32 noundef %conv21.5.i) #7
  %arrayidx23.i = getelementptr %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 35, i32 3, i32 %indvars.iv.i
  %bw40_tssi.i = getelementptr inbounds %struct.rtw8852a_tssi_offset, ptr %16, i32 0, i32 1
  %30 = call ptr @memcpy(ptr %arrayidx23.i, ptr %bw40_tssi.i, i32 5)
  %add.ptr.i = getelementptr i8, ptr %arrayidx23.i, i32 5
  %bw40_1s_tssi_5g.i = getelementptr inbounds %struct.rtw8852a_tssi_offset, ptr %16, i32 0, i32 3
  %31 = call ptr @memcpy(ptr %add.ptr.i, ptr %bw40_1s_tssi_5g.i, i32 14)
  %32 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx23.i, align 1
  %conv47.i = sext i8 %33 to i32
  tail call void (ptr, i32, ptr, ...) @__rtw89_debug(ptr noundef %rtwdev, i32 noundef 16, ptr noundef nonnull @.str.28, i32 noundef %indvars.iv.i, i32 noundef 0, i32 noundef %conv47.i) #7
  %arrayidx46.1.i = getelementptr %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 35, i32 3, i32 %indvars.iv.i, i32 1
  %34 = ptrtoint ptr %arrayidx46.1.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx46.1.i, align 1
  %conv47.1.i = sext i8 %35 to i32
  tail call void (ptr, i32, ptr, ...) @__rtw89_debug(ptr noundef %rtwdev, i32 noundef 16, ptr noundef nonnull @.str.28, i32 noundef %indvars.iv.i, i32 noundef 1, i32 noundef %conv47.1.i) #7
  %arrayidx46.2.i = getelementptr %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 35, i32 3, i32 %indvars.iv.i, i32 2
  %36 = ptrtoint ptr %arrayidx46.2.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx46.2.i, align 1
  %conv47.2.i = sext i8 %37 to i32
  tail call void (ptr, i32, ptr, ...) @__rtw89_debug(ptr noundef %rtwdev, i32 noundef 16, ptr noundef nonnull @.str.28, i32 noundef %indvars.iv.i, i32 noundef 2, i32 noundef %conv47.2.i) #7
  %arrayidx46.3.i = getelementptr %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 35, i32 3, i32 %indvars.iv.i, i32 3
  %38 = ptrtoint ptr %arrayidx46.3.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx46.3.i, align 1
  %conv47.3.i = sext i8 %39 to i32
  tail call void (ptr, i32, ptr, ...) @__rtw89_debug(ptr noundef %rtwdev, i32 noundef 16, ptr noundef nonnull @.str.28, i32 noundef %indvars.iv.i, i32 noundef 3, i32 noundef %conv47.3.i) #7
  %arrayidx46.4.i = getelementptr %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 35, i32 3, i32 %indvars.iv.i, i32 4
  %40 = ptrtoint ptr %arrayidx46.4.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx46.4.i, align 1
  %conv47.4.i = sext i8 %41 to i32
  tail call void (ptr, i32, ptr, ...) @__rtw89_debug(ptr noundef %rtwdev, i32 noundef 16, ptr noundef nonnull @.str.28, i32 noundef %indvars.iv.i, i32 noundef 4, i32 noundef %conv47.4.i) #7
  %arrayidx46.5.i = getelementptr %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 35, i32 3, i32 %indvars.iv.i, i32 5
  %42 = ptrtoint ptr %arrayidx46.5.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx46.5.i, align 1
  %conv47.5.i = sext i8 %43 to i32
  tail call void (ptr, i32, ptr, ...) @__rtw89_debug(ptr noundef %rtwdev, i32 noundef 16, ptr noundef nonnull @.str.28, i32 noundef %indvars.iv.i, i32 noundef 5, i32 noundef %conv47.5.i) #7
  %arrayidx46.6.i = getelementptr %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 35, i32 3, i32 %indvars.iv.i, i32 6
  %44 = ptrtoint ptr %arrayidx46.6.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx46.6.i, align 1
  %conv47.6.i = sext i8 %45 to i32
  tail call void (ptr, i32, ptr, ...) @__rtw89_debug(ptr noundef %rtwdev, i32 noundef 16, ptr noundef nonnull @.str.28, i32 noundef %indvars.iv.i, i32 noundef 6, i32 noundef %conv47.6.i) #7
  %arrayidx46.7.i = getelementptr %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 35, i32 3, i32 %indvars.iv.i, i32 7
  %46 = ptrtoint ptr %arrayidx46.7.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx46.7.i, align 1
  %conv47.7.i = sext i8 %47 to i32
  tail call void (ptr, i32, ptr, ...) @__rtw89_debug(ptr noundef %rtwdev, i32 noundef 16, ptr noundef nonnull @.str.28, i32 noundef %indvars.iv.i, i32 noundef 7, i32 noundef %conv47.7.i) #7
  %arrayidx46.8.i = getelementptr %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 35, i32 3, i32 %indvars.iv.i, i32 8
  %48 = ptrtoint ptr %arrayidx46.8.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %arrayidx46.8.i, align 1
  %conv47.8.i = sext i8 %49 to i32
  tail call void (ptr, i32, ptr, ...) @__rtw89_debug(ptr noundef %rtwdev, i32 noundef 16, ptr noundef nonnull @.str.28, i32 noundef %indvars.iv.i, i32 noundef 8, i32 noundef %conv47.8.i) #7
  %arrayidx46.9.i = getelementptr %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 35, i32 3, i32 %indvars.iv.i, i32 9
  %50 = ptrtoint ptr %arrayidx46.9.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx46.9.i, align 1
  %conv47.9.i = sext i8 %51 to i32
  tail call void (ptr, i32, ptr, ...) @__rtw89_debug(ptr noundef %rtwdev, i32 noundef 16, ptr noundef nonnull @.str.28, i32 noundef %indvars.iv.i, i32 noundef 9, i32 noundef %conv47.9.i) #7
  %arrayidx46.10.i = getelementptr %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 35, i32 3, i32 %indvars.iv.i, i32 10
  %52 = ptrtoint ptr %arrayidx46.10.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %arrayidx46.10.i, align 1
  %conv47.10.i = sext i8 %53 to i32
  tail call void (ptr, i32, ptr, ...) @__rtw89_debug(ptr noundef %rtwdev, i32 noundef 16, ptr noundef nonnull @.str.28, i32 noundef %indvars.iv.i, i32 noundef 10, i32 noundef %conv47.10.i) #7
  %arrayidx46.11.i = getelementptr %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 35, i32 3, i32 %indvars.iv.i, i32 11
  %54 = ptrtoint ptr %arrayidx46.11.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx46.11.i, align 1
  %conv47.11.i = sext i8 %55 to i32
  tail call void (ptr, i32, ptr, ...) @__rtw89_debug(ptr noundef %rtwdev, i32 noundef 16, ptr noundef nonnull @.str.28, i32 noundef %indvars.iv.i, i32 noundef 11, i32 noundef %conv47.11.i) #7
  %arrayidx46.12.i = getelementptr %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 35, i32 3, i32 %indvars.iv.i, i32 12
  %56 = ptrtoint ptr %arrayidx46.12.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %arrayidx46.12.i, align 1
  %conv47.12.i = sext i8 %57 to i32
  tail call void (ptr, i32, ptr, ...) @__rtw89_debug(ptr noundef %rtwdev, i32 noundef 16, ptr noundef nonnull @.str.28, i32 noundef %indvars.iv.i, i32 noundef 12, i32 noundef %conv47.12.i) #7
  %arrayidx46.13.i = getelementptr %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 35, i32 3, i32 %indvars.iv.i, i32 13
  %58 = ptrtoint ptr %arrayidx46.13.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %arrayidx46.13.i, align 1
  %conv47.13.i = sext i8 %59 to i32
  tail call void (ptr, i32, ptr, ...) @__rtw89_debug(ptr noundef %rtwdev, i32 noundef 16, ptr noundef nonnull @.str.28, i32 noundef %indvars.iv.i, i32 noundef 13, i32 noundef %conv47.13.i) #7
  %arrayidx46.14.i = getelementptr %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 35, i32 3, i32 %indvars.iv.i, i32 14
  %60 = ptrtoint ptr %arrayidx46.14.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %arrayidx46.14.i, align 1
  %conv47.14.i = sext i8 %61 to i32
  tail call void (ptr, i32, ptr, ...) @__rtw89_debug(ptr noundef %rtwdev, i32 noundef 16, ptr noundef nonnull @.str.28, i32 noundef %indvars.iv.i, i32 noundef 14, i32 noundef %conv47.14.i) #7
  %arrayidx46.15.i = getelementptr %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 35, i32 3, i32 %indvars.iv.i, i32 15
  %62 = ptrtoint ptr %arrayidx46.15.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %arrayidx46.15.i, align 1
  %conv47.15.i = sext i8 %63 to i32
  tail call void (ptr, i32, ptr, ...) @__rtw89_debug(ptr noundef %rtwdev, i32 noundef 16, ptr noundef nonnull @.str.28, i32 noundef %indvars.iv.i, i32 noundef 15, i32 noundef %conv47.15.i) #7
  %arrayidx46.16.i = getelementptr %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 35, i32 3, i32 %indvars.iv.i, i32 16
  %64 = ptrtoint ptr %arrayidx46.16.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %arrayidx46.16.i, align 1
  %conv47.16.i = sext i8 %65 to i32
  tail call void (ptr, i32, ptr, ...) @__rtw89_debug(ptr noundef %rtwdev, i32 noundef 16, ptr noundef nonnull @.str.28, i32 noundef %indvars.iv.i, i32 noundef 16, i32 noundef %conv47.16.i) #7
  %arrayidx46.17.i = getelementptr %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 35, i32 3, i32 %indvars.iv.i, i32 17
  %66 = ptrtoint ptr %arrayidx46.17.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %arrayidx46.17.i, align 1
  %conv47.17.i = sext i8 %67 to i32
  tail call void (ptr, i32, ptr, ...) @__rtw89_debug(ptr noundef %rtwdev, i32 noundef 16, ptr noundef nonnull @.str.28, i32 noundef %indvars.iv.i, i32 noundef 17, i32 noundef %conv47.17.i) #7
  %arrayidx46.18.i = getelementptr %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 35, i32 3, i32 %indvars.iv.i, i32 18
  %68 = ptrtoint ptr %arrayidx46.18.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %arrayidx46.18.i, align 1
  %conv47.18.i = sext i8 %69 to i32
  tail call void (ptr, i32, ptr, ...) @__rtw89_debug(ptr noundef %rtwdev, i32 noundef 16, ptr noundef nonnull @.str.28, i32 noundef %indvars.iv.i, i32 noundef 18, i32 noundef %conv47.18.i) #7
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i32 %indvars.iv.next.i, 2
  br i1 %exitcond.not.i, label %rtw8852a_efuse_parsing_tssi.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

rtw8852a_efuse_parsing_tssi.exit:                 ; preds = %for.body.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ofst.i) #7
  %type = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 7, i32 1
  %70 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %cond = icmp eq i32 %71, 0
  br i1 %cond, label %sw.bb, label %rtw8852a_efuse_parsing_tssi.exit.cleanup_crit_edge

rtw8852a_efuse_parsing_tssi.exit.cleanup_crit_edge: ; preds = %rtw8852a_efuse_parsing_tssi.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %rtw8852a_efuse_parsing_tssi.exit
  call void @__sanitizer_cov_trace_pc() #9
  %addr.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 8, i32 2
  %72 = getelementptr inbounds %struct.rtw8852a_efuse, ptr %log_map, i32 0, i32 29
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %72, align 4
  %75 = ptrtoint ptr %addr.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %74, ptr %addr.i, align 4
  %add.ptr.i.i = getelementptr %struct.rtw8852a_efuse, ptr %log_map, i32 0, i32 29, i32 0, i32 0, i32 4
  %76 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %add.ptr.i.i, align 2
  %add.ptr1.i.i = getelementptr %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 8, i32 2, i32 4
  %78 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_store2_noabort(i32 %78)
  store i16 %77, ptr %add.ptr1.i.i, align 2
  %rfe_type.i = getelementptr inbounds %struct.rtw8852a_efuse, ptr %log_map, i32 0, i32 19
  %79 = ptrtoint ptr %rfe_type.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %rfe_type.i, align 1
  %rfe_type2.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 8, i32 3
  %81 = ptrtoint ptr %rfe_type2.i to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 %80, ptr %rfe_type2.i, align 1
  %xtal_k.i = getelementptr inbounds %struct.rtw8852a_efuse, ptr %log_map, i32 0, i32 6
  %82 = ptrtoint ptr %xtal_k.i to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %xtal_k.i, align 1
  %xtal_cap.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 8, i32 1
  %84 = ptrtoint ptr %xtal_cap.i to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 %83, ptr %xtal_cap.i, align 1
  %dev = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 1
  %85 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %dev, align 4
  %conv = zext i8 %80 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %86, ptr noundef nonnull @.str.24, i32 noundef %conv) #10
  br label %cleanup

cleanup:                                          ; preds = %sw.bb, %rtw8852a_efuse_parsing_tssi.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.bb ], [ -524, %rtw8852a_efuse_parsing_tssi.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtw8852a_read_phycap(ptr noundef %rtwdev, ptr nocapture noundef readonly %phycap_map) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %chip.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 3
  %0 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip.i, align 4
  %phycap_addr.i = getelementptr inbounds %struct.rtw89_chip_info, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %phycap_addr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %phycap_addr.i, align 4
  %sub9.i = sub i32 1494, %3
  %arrayidx10.i = getelementptr i8, ptr %phycap_map, i32 %sub9.i
  %4 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx10.i, align 1
  %arrayidx14.i = getelementptr %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 35, i32 1, i32 0, i32 0
  %6 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %5, ptr %arrayidx14.i, align 1
  %7 = load i8, ptr %arrayidx10.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %7)
  %cmp17.not.i = icmp ne i8 %7, -1
  %sub9.1.i = sub i32 1493, %3
  %arrayidx10.1.i = getelementptr i8, ptr %phycap_map, i32 %sub9.1.i
  %8 = ptrtoint ptr %arrayidx10.1.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx10.1.i, align 1
  %arrayidx14.1.i = getelementptr %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 35, i32 1, i32 0, i32 1
  %10 = ptrtoint ptr %arrayidx14.1.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %9, ptr %arrayidx14.1.i, align 1
  %11 = load i8, ptr %arrayidx10.1.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %11)
  %cmp17.not.1.i = icmp ne i8 %11, -1
  %sub9.2.i = sub i32 1492, %3
  %arrayidx10.2.i = getelementptr i8, ptr %phycap_map, i32 %sub9.2.i
  %12 = ptrtoint ptr %arrayidx10.2.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx10.2.i, align 1
  %arrayidx14.2.i = getelementptr %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 35, i32 1, i32 0, i32 2
  %14 = ptrtoint ptr %arrayidx14.2.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %arrayidx14.2.i, align 1
  %15 = load i8, ptr %arrayidx10.2.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %15)
  %cmp17.not.2.i = icmp ne i8 %15, -1
  %sub9.3.i = sub i32 1491, %3
  %arrayidx10.3.i = getelementptr i8, ptr %phycap_map, i32 %sub9.3.i
  %16 = ptrtoint ptr %arrayidx10.3.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx10.3.i, align 1
  %arrayidx14.3.i = getelementptr %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 35, i32 1, i32 0, i32 3
  %18 = ptrtoint ptr %arrayidx14.3.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %17, ptr %arrayidx14.3.i, align 1
  %19 = load i8, ptr %arrayidx10.3.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %19)
  %cmp17.not.3.i = icmp ne i8 %19, -1
  %sub9.4.i = sub i32 1490, %3
  %arrayidx10.4.i = getelementptr i8, ptr %phycap_map, i32 %sub9.4.i
  %20 = ptrtoint ptr %arrayidx10.4.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx10.4.i, align 1
  %arrayidx14.4.i = getelementptr %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 35, i32 1, i32 0, i32 4
  %22 = ptrtoint ptr %arrayidx14.4.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %21, ptr %arrayidx14.4.i, align 1
  %23 = load i8, ptr %arrayidx10.4.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %23)
  %cmp17.not.4.i = icmp ne i8 %23, -1
  %sub9.5.i = sub i32 1489, %3
  %arrayidx10.5.i = getelementptr i8, ptr %phycap_map, i32 %sub9.5.i
  %24 = ptrtoint ptr %arrayidx10.5.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx10.5.i, align 1
  %arrayidx14.5.i = getelementptr %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 35, i32 1, i32 0, i32 5
  %26 = ptrtoint ptr %arrayidx14.5.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %25, ptr %arrayidx14.5.i, align 1
  %27 = load i8, ptr %arrayidx10.5.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %27)
  %cmp17.not.5.i = icmp ne i8 %27, -1
  %sub9.6.i = sub i32 1488, %3
  %arrayidx10.6.i = getelementptr i8, ptr %phycap_map, i32 %sub9.6.i
  %28 = ptrtoint ptr %arrayidx10.6.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx10.6.i, align 1
  %arrayidx14.6.i = getelementptr %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 35, i32 1, i32 0, i32 6
  %30 = ptrtoint ptr %arrayidx14.6.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %29, ptr %arrayidx14.6.i, align 1
  %31 = load i8, ptr %arrayidx10.6.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %31)
  %cmp17.not.6.i = icmp ne i8 %31, -1
  %sub9.7.i = sub i32 1487, %3
  %arrayidx10.7.i = getelementptr i8, ptr %phycap_map, i32 %sub9.7.i
  %32 = ptrtoint ptr %arrayidx10.7.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx10.7.i, align 1
  %arrayidx14.7.i = getelementptr %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 35, i32 1, i32 0, i32 7
  %34 = ptrtoint ptr %arrayidx14.7.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %33, ptr %arrayidx14.7.i, align 1
  %35 = load i8, ptr %arrayidx10.7.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %35)
  %cmp17.not.7.i = icmp ne i8 %35, -1
  %sub9.188.i = sub i32 1451, %3
  %arrayidx10.189.i = getelementptr i8, ptr %phycap_map, i32 %sub9.188.i
  %36 = ptrtoint ptr %arrayidx10.189.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx10.189.i, align 1
  %arrayidx14.190.i = getelementptr %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 35, i32 1, i32 1, i32 0
  %38 = ptrtoint ptr %arrayidx14.190.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %37, ptr %arrayidx14.190.i, align 1
  %39 = load i8, ptr %arrayidx10.189.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %39)
  %cmp17.not.191.i = icmp ne i8 %39, -1
  %sub9.1.1.i = sub i32 1450, %3
  %arrayidx10.1.1.i = getelementptr i8, ptr %phycap_map, i32 %sub9.1.1.i
  %40 = ptrtoint ptr %arrayidx10.1.1.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx10.1.1.i, align 1
  %arrayidx14.1.1.i = getelementptr %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 35, i32 1, i32 1, i32 1
  %42 = ptrtoint ptr %arrayidx14.1.1.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %41, ptr %arrayidx14.1.1.i, align 1
  %43 = load i8, ptr %arrayidx10.1.1.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %43)
  %cmp17.not.1.1.i = icmp ne i8 %43, -1
  %sub9.2.1.i = sub i32 1449, %3
  %arrayidx10.2.1.i = getelementptr i8, ptr %phycap_map, i32 %sub9.2.1.i
  %44 = ptrtoint ptr %arrayidx10.2.1.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx10.2.1.i, align 1
  %arrayidx14.2.1.i = getelementptr %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 35, i32 1, i32 1, i32 2
  %46 = ptrtoint ptr %arrayidx14.2.1.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %45, ptr %arrayidx14.2.1.i, align 1
  %47 = load i8, ptr %arrayidx10.2.1.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %47)
  %cmp17.not.2.1.i = icmp ne i8 %47, -1
  %sub9.3.1.i = sub i32 1448, %3
  %arrayidx10.3.1.i = getelementptr i8, ptr %phycap_map, i32 %sub9.3.1.i
  %48 = ptrtoint ptr %arrayidx10.3.1.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %arrayidx10.3.1.i, align 1
  %arrayidx14.3.1.i = getelementptr %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 35, i32 1, i32 1, i32 3
  %50 = ptrtoint ptr %arrayidx14.3.1.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %49, ptr %arrayidx14.3.1.i, align 1
  %51 = load i8, ptr %arrayidx10.3.1.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %51)
  %cmp17.not.3.1.i = icmp ne i8 %51, -1
  %sub9.4.1.i = sub i32 1447, %3
  %arrayidx10.4.1.i = getelementptr i8, ptr %phycap_map, i32 %sub9.4.1.i
  %52 = ptrtoint ptr %arrayidx10.4.1.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %arrayidx10.4.1.i, align 1
  %arrayidx14.4.1.i = getelementptr %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 35, i32 1, i32 1, i32 4
  %54 = ptrtoint ptr %arrayidx14.4.1.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %53, ptr %arrayidx14.4.1.i, align 1
  %55 = load i8, ptr %arrayidx10.4.1.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %55)
  %cmp17.not.4.1.i = icmp ne i8 %55, -1
  %sub9.5.1.i = sub i32 1446, %3
  %arrayidx10.5.1.i = getelementptr i8, ptr %phycap_map, i32 %sub9.5.1.i
  %56 = ptrtoint ptr %arrayidx10.5.1.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %arrayidx10.5.1.i, align 1
  %arrayidx14.5.1.i = getelementptr %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 35, i32 1, i32 1, i32 5
  %58 = ptrtoint ptr %arrayidx14.5.1.i to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %57, ptr %arrayidx14.5.1.i, align 1
  %59 = load i8, ptr %arrayidx10.5.1.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %59)
  %cmp17.not.5.1.i = icmp ne i8 %59, -1
  %sub9.6.1.i = sub i32 1445, %3
  %arrayidx10.6.1.i = getelementptr i8, ptr %phycap_map, i32 %sub9.6.1.i
  %60 = ptrtoint ptr %arrayidx10.6.1.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %arrayidx10.6.1.i, align 1
  %arrayidx14.6.1.i = getelementptr %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 35, i32 1, i32 1, i32 6
  %62 = ptrtoint ptr %arrayidx14.6.1.i to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %61, ptr %arrayidx14.6.1.i, align 1
  %63 = load i8, ptr %arrayidx10.6.1.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %63)
  %cmp17.not.6.1.i = icmp ne i8 %63, -1
  %sub9.7.1.i = sub i32 1444, %3
  %arrayidx10.7.1.i = getelementptr i8, ptr %phycap_map, i32 %sub9.7.1.i
  %64 = ptrtoint ptr %arrayidx10.7.1.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %arrayidx10.7.1.i, align 1
  %arrayidx14.7.1.i = getelementptr %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 35, i32 1, i32 1, i32 7
  %66 = ptrtoint ptr %arrayidx14.7.1.i to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %65, ptr %arrayidx14.7.1.i, align 1
  %67 = load i8, ptr %arrayidx10.7.1.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %67)
  %cmp17.not.7.1.i = icmp ne i8 %67, -1
  %68 = select i1 %cmp17.not.7.1.i, i1 true, i1 %cmp17.not.6.1.i
  %69 = select i1 %68, i1 true, i1 %cmp17.not.5.1.i
  %70 = select i1 %69, i1 true, i1 %cmp17.not.4.1.i
  %71 = select i1 %70, i1 true, i1 %cmp17.not.3.1.i
  %72 = select i1 %71, i1 true, i1 %cmp17.not.2.1.i
  %73 = select i1 %72, i1 true, i1 %cmp17.not.1.1.i
  %74 = select i1 %73, i1 true, i1 %cmp17.not.191.i
  %75 = select i1 %74, i1 true, i1 %cmp17.not.7.i
  %76 = select i1 %75, i1 true, i1 %cmp17.not.6.i
  %77 = select i1 %76, i1 true, i1 %cmp17.not.5.i
  %78 = select i1 %77, i1 true, i1 %cmp17.not.4.i
  %79 = select i1 %78, i1 true, i1 %cmp17.not.3.i
  %80 = select i1 %79, i1 true, i1 %cmp17.not.2.i
  %81 = select i1 %80, i1 true, i1 %cmp17.not.1.i
  %spec.select.7.1.i = select i1 %81, i1 true, i1 %cmp17.not.i
  br i1 %spec.select.7.1.i, label %entry.rtw8852a_phycap_parsing_tssi.exit_crit_edge, label %if.then22.i

entry.rtw8852a_phycap_parsing_tssi.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtw8852a_phycap_parsing_tssi.exit

if.then22.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %82 = call ptr @memset(ptr %arrayidx14.i, i32 0, i32 32)
  tail call void (ptr, i32, ptr, ...) @__rtw89_debug(ptr noundef %rtwdev, i32 noundef 16, ptr noundef nonnull @.str.29) #7
  br label %rtw8852a_phycap_parsing_tssi.exit

rtw8852a_phycap_parsing_tssi.exit:                ; preds = %if.then22.i, %entry.rtw8852a_phycap_parsing_tssi.exit_crit_edge
  %83 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %arrayidx14.i, align 1
  %conv42.i = sext i8 %84 to i32
  tail call void (ptr, i32, ptr, ...) @__rtw89_debug(ptr noundef %rtwdev, i32 noundef 16, ptr noundef nonnull @.str.30, i32 noundef 0, i32 noundef 0, i32 noundef %conv42.i, i32 noundef 1494) #7
  %85 = ptrtoint ptr %arrayidx14.1.i to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %arrayidx14.1.i, align 1
  %conv42.1.i = sext i8 %86 to i32
  tail call void (ptr, i32, ptr, ...) @__rtw89_debug(ptr noundef %rtwdev, i32 noundef 16, ptr noundef nonnull @.str.30, i32 noundef 0, i32 noundef 1, i32 noundef %conv42.1.i, i32 noundef 1493) #7
  %87 = ptrtoint ptr %arrayidx14.2.i to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %arrayidx14.2.i, align 1
  %conv42.2.i = sext i8 %88 to i32
  tail call void (ptr, i32, ptr, ...) @__rtw89_debug(ptr noundef %rtwdev, i32 noundef 16, ptr noundef nonnull @.str.30, i32 noundef 0, i32 noundef 2, i32 noundef %conv42.2.i, i32 noundef 1492) #7
  %89 = ptrtoint ptr %arrayidx14.3.i to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %arrayidx14.3.i, align 1
  %conv42.3.i = sext i8 %90 to i32
  tail call void (ptr, i32, ptr, ...) @__rtw89_debug(ptr noundef %rtwdev, i32 noundef 16, ptr noundef nonnull @.str.30, i32 noundef 0, i32 noundef 3, i32 noundef %conv42.3.i, i32 noundef 1491) #7
  %91 = ptrtoint ptr %arrayidx14.4.i to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %arrayidx14.4.i, align 1
  %conv42.4.i = sext i8 %92 to i32
  tail call void (ptr, i32, ptr, ...) @__rtw89_debug(ptr noundef %rtwdev, i32 noundef 16, ptr noundef nonnull @.str.30, i32 noundef 0, i32 noundef 4, i32 noundef %conv42.4.i, i32 noundef 1490) #7
  %93 = ptrtoint ptr %arrayidx14.5.i to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %arrayidx14.5.i, align 1
  %conv42.5.i = sext i8 %94 to i32
  tail call void (ptr, i32, ptr, ...) @__rtw89_debug(ptr noundef %rtwdev, i32 noundef 16, ptr noundef nonnull @.str.30, i32 noundef 0, i32 noundef 5, i32 noundef %conv42.5.i, i32 noundef 1489) #7
  %95 = ptrtoint ptr %arrayidx14.6.i to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %arrayidx14.6.i, align 1
  %conv42.6.i = sext i8 %96 to i32
  tail call void (ptr, i32, ptr, ...) @__rtw89_debug(ptr noundef %rtwdev, i32 noundef 16, ptr noundef nonnull @.str.30, i32 noundef 0, i32 noundef 6, i32 noundef %conv42.6.i, i32 noundef 1488) #7
  %97 = ptrtoint ptr %arrayidx14.7.i to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %arrayidx14.7.i, align 1
  %conv42.7.i = sext i8 %98 to i32
  tail call void (ptr, i32, ptr, ...) @__rtw89_debug(ptr noundef %rtwdev, i32 noundef 16, ptr noundef nonnull @.str.30, i32 noundef 0, i32 noundef 7, i32 noundef %conv42.7.i, i32 noundef 1487) #7
  %99 = ptrtoint ptr %arrayidx14.190.i to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %arrayidx14.190.i, align 1
  %conv42.194.i = sext i8 %100 to i32
  tail call void (ptr, i32, ptr, ...) @__rtw89_debug(ptr noundef %rtwdev, i32 noundef 16, ptr noundef nonnull @.str.30, i32 noundef 1, i32 noundef 0, i32 noundef %conv42.194.i, i32 noundef 1451) #7
  %101 = ptrtoint ptr %arrayidx14.1.1.i to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %arrayidx14.1.1.i, align 1
  %conv42.1.1.i = sext i8 %102 to i32
  tail call void (ptr, i32, ptr, ...) @__rtw89_debug(ptr noundef %rtwdev, i32 noundef 16, ptr noundef nonnull @.str.30, i32 noundef 1, i32 noundef 1, i32 noundef %conv42.1.1.i, i32 noundef 1450) #7
  %103 = ptrtoint ptr %arrayidx14.2.1.i to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %arrayidx14.2.1.i, align 1
  %conv42.2.1.i = sext i8 %104 to i32
  tail call void (ptr, i32, ptr, ...) @__rtw89_debug(ptr noundef %rtwdev, i32 noundef 16, ptr noundef nonnull @.str.30, i32 noundef 1, i32 noundef 2, i32 noundef %conv42.2.1.i, i32 noundef 1449) #7
  %105 = ptrtoint ptr %arrayidx14.3.1.i to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %arrayidx14.3.1.i, align 1
  %conv42.3.1.i = sext i8 %106 to i32
  tail call void (ptr, i32, ptr, ...) @__rtw89_debug(ptr noundef %rtwdev, i32 noundef 16, ptr noundef nonnull @.str.30, i32 noundef 1, i32 noundef 3, i32 noundef %conv42.3.1.i, i32 noundef 1448) #7
  %107 = ptrtoint ptr %arrayidx14.4.1.i to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %arrayidx14.4.1.i, align 1
  %conv42.4.1.i = sext i8 %108 to i32
  tail call void (ptr, i32, ptr, ...) @__rtw89_debug(ptr noundef %rtwdev, i32 noundef 16, ptr noundef nonnull @.str.30, i32 noundef 1, i32 noundef 4, i32 noundef %conv42.4.1.i, i32 noundef 1447) #7
  %109 = ptrtoint ptr %arrayidx14.5.1.i to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %arrayidx14.5.1.i, align 1
  %conv42.5.1.i = sext i8 %110 to i32
  tail call void (ptr, i32, ptr, ...) @__rtw89_debug(ptr noundef %rtwdev, i32 noundef 16, ptr noundef nonnull @.str.30, i32 noundef 1, i32 noundef 5, i32 noundef %conv42.5.1.i, i32 noundef 1446) #7
  %111 = ptrtoint ptr %arrayidx14.6.1.i to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %arrayidx14.6.1.i, align 1
  %conv42.6.1.i = sext i8 %112 to i32
  tail call void (ptr, i32, ptr, ...) @__rtw89_debug(ptr noundef %rtwdev, i32 noundef 16, ptr noundef nonnull @.str.30, i32 noundef 1, i32 noundef 6, i32 noundef %conv42.6.1.i, i32 noundef 1445) #7
  %113 = ptrtoint ptr %arrayidx14.7.1.i to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %arrayidx14.7.1.i, align 1
  %conv42.7.1.i = sext i8 %114 to i32
  tail call void (ptr, i32, ptr, ...) @__rtw89_debug(ptr noundef %rtwdev, i32 noundef 16, ptr noundef nonnull @.str.30, i32 noundef 1, i32 noundef 7, i32 noundef %conv42.7.1.i, i32 noundef 1444) #7
  %pwr_trim.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 36
  %115 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %chip.i, align 4
  %phycap_addr.i6 = getelementptr inbounds %struct.rtw89_chip_info, ptr %116, i32 0, i32 19
  %117 = ptrtoint ptr %phycap_addr.i6 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %phycap_addr.i6, align 4
  %sub.i = sub i32 1503, %118
  %arrayidx2.i = getelementptr i8, ptr %phycap_map, i32 %sub.i
  %119 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %arrayidx2.i, align 1
  %arrayidx4.i = getelementptr %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 36, i32 2, i32 0
  %121 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 %120, ptr %arrayidx4.i, align 1
  %conv9.i = zext i8 %120 to i32
  tail call void (ptr, i32, ptr, ...) @__rtw89_debug(ptr noundef %rtwdev, i32 noundef 2, ptr noundef nonnull @.str.31, i32 noundef 0, i32 noundef %conv9.i) #7
  %122 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %arrayidx4.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %123)
  %cmp14.not.i = icmp eq i8 %123, -1
  br i1 %cmp14.not.i, label %rtw8852a_phycap_parsing_tssi.exit.for.inc.i_crit_edge, label %if.then.i

rtw8852a_phycap_parsing_tssi.exit.for.inc.i_crit_edge: ; preds = %rtw8852a_phycap_parsing_tssi.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.then.i:                                        ; preds = %rtw8852a_phycap_parsing_tssi.exit
  call void @__sanitizer_cov_trace_pc() #9
  %124 = ptrtoint ptr %pwr_trim.i to i32
  call void @__asan_store1_noabort(i32 %124)
  store i8 1, ptr %pwr_trim.i, align 1
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %rtw8852a_phycap_parsing_tssi.exit.for.inc.i_crit_edge
  %sub.1.i = sub i32 1500, %118
  %arrayidx2.1.i = getelementptr i8, ptr %phycap_map, i32 %sub.1.i
  %125 = ptrtoint ptr %arrayidx2.1.i to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %arrayidx2.1.i, align 1
  %arrayidx4.1.i = getelementptr %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 36, i32 2, i32 1
  %127 = ptrtoint ptr %arrayidx4.1.i to i32
  call void @__asan_store1_noabort(i32 %127)
  store i8 %126, ptr %arrayidx4.1.i, align 1
  %conv9.1.i = zext i8 %126 to i32
  tail call void (ptr, i32, ptr, ...) @__rtw89_debug(ptr noundef %rtwdev, i32 noundef 2, ptr noundef nonnull @.str.31, i32 noundef 1, i32 noundef %conv9.1.i) #7
  %128 = ptrtoint ptr %arrayidx4.1.i to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %arrayidx4.1.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %129)
  %cmp14.not.1.i = icmp eq i8 %129, -1
  br i1 %cmp14.not.1.i, label %for.inc.i.rtw8852a_phycap_parsing_thermal_trim.exit_crit_edge, label %if.then.1.i

for.inc.i.rtw8852a_phycap_parsing_thermal_trim.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtw8852a_phycap_parsing_thermal_trim.exit

if.then.1.i:                                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  %130 = ptrtoint ptr %pwr_trim.i to i32
  call void @__asan_store1_noabort(i32 %130)
  store i8 1, ptr %pwr_trim.i, align 1
  br label %rtw8852a_phycap_parsing_thermal_trim.exit

rtw8852a_phycap_parsing_thermal_trim.exit:        ; preds = %if.then.1.i, %for.inc.i.rtw8852a_phycap_parsing_thermal_trim.exit_crit_edge
  %131 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %chip.i, align 4
  %phycap_addr.i8 = getelementptr inbounds %struct.rtw89_chip_info, ptr %132, i32 0, i32 19
  %133 = ptrtoint ptr %phycap_addr.i8 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %phycap_addr.i8, align 4
  %pg_pa_bias_trim.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 36, i32 1
  %sub.i9 = sub i32 1502, %134
  %arrayidx2.i10 = getelementptr i8, ptr %phycap_map, i32 %sub.i9
  %135 = ptrtoint ptr %arrayidx2.i10 to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %arrayidx2.i10, align 1
  %arrayidx4.i11 = getelementptr %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 36, i32 3, i32 0
  %137 = ptrtoint ptr %arrayidx4.i11 to i32
  call void @__asan_store1_noabort(i32 %137)
  store i8 %136, ptr %arrayidx4.i11, align 1
  %conv9.i12 = zext i8 %136 to i32
  tail call void (ptr, i32, ptr, ...) @__rtw89_debug(ptr noundef %rtwdev, i32 noundef 2, ptr noundef nonnull @.str.32, i32 noundef 0, i32 noundef %conv9.i12) #7
  %138 = ptrtoint ptr %arrayidx4.i11 to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %arrayidx4.i11, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %139)
  %cmp14.not.i13 = icmp eq i8 %139, -1
  br i1 %cmp14.not.i13, label %rtw8852a_phycap_parsing_thermal_trim.exit.for.inc.i20_crit_edge, label %if.then.i14

rtw8852a_phycap_parsing_thermal_trim.exit.for.inc.i20_crit_edge: ; preds = %rtw8852a_phycap_parsing_thermal_trim.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i20

if.then.i14:                                      ; preds = %rtw8852a_phycap_parsing_thermal_trim.exit
  call void @__sanitizer_cov_trace_pc() #9
  %140 = ptrtoint ptr %pg_pa_bias_trim.i to i32
  call void @__asan_store1_noabort(i32 %140)
  store i8 1, ptr %pg_pa_bias_trim.i, align 1
  br label %for.inc.i20

for.inc.i20:                                      ; preds = %if.then.i14, %rtw8852a_phycap_parsing_thermal_trim.exit.for.inc.i20_crit_edge
  %sub.1.i15 = sub i32 1499, %134
  %arrayidx2.1.i16 = getelementptr i8, ptr %phycap_map, i32 %sub.1.i15
  %141 = ptrtoint ptr %arrayidx2.1.i16 to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %arrayidx2.1.i16, align 1
  %arrayidx4.1.i17 = getelementptr %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 36, i32 3, i32 1
  %143 = ptrtoint ptr %arrayidx4.1.i17 to i32
  call void @__asan_store1_noabort(i32 %143)
  store i8 %142, ptr %arrayidx4.1.i17, align 1
  %conv9.1.i18 = zext i8 %142 to i32
  tail call void (ptr, i32, ptr, ...) @__rtw89_debug(ptr noundef %rtwdev, i32 noundef 2, ptr noundef nonnull @.str.32, i32 noundef 1, i32 noundef %conv9.1.i18) #7
  %144 = ptrtoint ptr %arrayidx4.1.i17 to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %arrayidx4.1.i17, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %145)
  %cmp14.not.1.i19 = icmp eq i8 %145, -1
  br i1 %cmp14.not.1.i19, label %for.inc.i20.rtw8852a_phycap_parsing_pa_bias_trim.exit_crit_edge, label %if.then.1.i21

for.inc.i20.rtw8852a_phycap_parsing_pa_bias_trim.exit_crit_edge: ; preds = %for.inc.i20
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtw8852a_phycap_parsing_pa_bias_trim.exit

if.then.1.i21:                                    ; preds = %for.inc.i20
  call void @__sanitizer_cov_trace_pc() #9
  %146 = ptrtoint ptr %pg_pa_bias_trim.i to i32
  call void @__asan_store1_noabort(i32 %146)
  store i8 1, ptr %pg_pa_bias_trim.i, align 1
  br label %rtw8852a_phycap_parsing_pa_bias_trim.exit

rtw8852a_phycap_parsing_pa_bias_trim.exit:        ; preds = %if.then.1.i21, %for.inc.i20.rtw8852a_phycap_parsing_pa_bias_trim.exit_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @rtw8852a_fem_setup(ptr nocapture noundef %rtwdev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %rfe_type = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 8, i32 3
  %0 = ptrtoint ptr %rfe_type to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %rfe_type, align 1
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.57)
  switch i8 %1, label %entry.sw.epilog_crit_edge [
    i8 11, label %entry.sw.bb_crit_edge
    i8 12, label %entry.sw.bb_crit_edge10
    i8 17, label %entry.sw.bb_crit_edge11
    i8 18, label %entry.sw.bb_crit_edge12
    i8 51, label %entry.sw.bb_crit_edge13
    i8 53, label %entry.sw.bb_crit_edge14
    i8 9, label %entry.sw.bb3_crit_edge
    i8 10, label %entry.sw.bb3_crit_edge15
    i8 15, label %entry.sw.bb3_crit_edge16
    i8 16, label %entry.sw.bb3_crit_edge17
  ]

entry.sw.bb3_crit_edge17:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb3

entry.sw.bb3_crit_edge16:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb3

entry.sw.bb3_crit_edge15:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb3

entry.sw.bb3_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb3

entry.sw.bb_crit_edge14:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.sw.bb_crit_edge13:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.sw.bb_crit_edge12:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.sw.bb_crit_edge11:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.sw.bb_crit_edge10:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge10, %entry.sw.bb_crit_edge11, %entry.sw.bb_crit_edge12, %entry.sw.bb_crit_edge13, %entry.sw.bb_crit_edge14
  %fem = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 33
  %epa_2g = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 33, i32 2
  %3 = ptrtoint ptr %epa_2g to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %epa_2g, align 1
  %4 = ptrtoint ptr %fem to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %fem, align 1
  br label %sw.bb3

sw.bb3:                                           ; preds = %sw.bb, %entry.sw.bb3_crit_edge, %entry.sw.bb3_crit_edge15, %entry.sw.bb3_crit_edge16, %entry.sw.bb3_crit_edge17
  %epa_5g = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 33, i32 3
  %5 = ptrtoint ptr %epa_5g to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %epa_5g, align 1
  %elna_5g = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 33, i32 1
  %6 = ptrtoint ptr %elna_5g to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %elna_5g, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb3, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtw8852a_rfk_init(ptr noundef %rtwdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %is_tssi_mode = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 31
  %0 = ptrtoint ptr %is_tssi_mode to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %is_tssi_mode, align 8
  %arrayidx2 = getelementptr %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 31, i32 1
  %1 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %arrayidx2, align 1
  tail call void @rtw8852a_rck(ptr noundef %rtwdev) #7
  tail call void @rtw8852a_dack(ptr noundef %rtwdev) #7
  tail call void @rtw8852a_rx_dck(ptr noundef %rtwdev, i32 noundef 0, i1 noundef zeroext true) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtw8852a_rfk_channel(ptr noundef %rtwdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @rtw8852a_rx_dck(ptr noundef %rtwdev, i32 noundef 0, i1 noundef zeroext true) #7
  tail call void @rtw8852a_iqk(ptr noundef %rtwdev, i32 noundef 0) #7
  tail call void @rtw8852a_tssi(ptr noundef %rtwdev, i32 noundef 0) #7
  tail call void @rtw8852a_dpk(ptr noundef %rtwdev, i32 noundef 0) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtw8852a_rfk_band_changed(ptr noundef %rtwdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @rtw8852a_tssi_scan(ptr noundef %rtwdev, i32 noundef 0) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtw8852a_rfk_scan(ptr noundef %rtwdev, i1 noundef zeroext %start) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @rtw8852a_wifi_scan_notify(ptr noundef %rtwdev, i1 noundef zeroext %start, i32 noundef 0) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtw8852a_rfk_track(ptr noundef %rtwdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @rtw8852a_dpk_track(ptr noundef %rtwdev) #7
  tail call void @rtw8852a_iqk_track(ptr noundef %rtwdev) #7
  tail call void @rtw8852a_tssi_track(ptr noundef %rtwdev) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtw8852a_power_trim(ptr noundef %rtwdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pwr_trim.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 36
  %0 = ptrtoint ptr %pwr_trim.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pwr_trim.i, align 1, !range !171
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i = icmp eq i8 %1, 0
  br i1 %tobool.not.i, label %if.then.i, label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %rf_mutex.i.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 12
  %chip.i.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 3
  %arrayidx.i = getelementptr %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 36, i32 2, i32 0
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx.i, align 1
  %and.i = shl i8 %3, 3
  %shl.i = and i8 %and.i, 8
  %and4.i = lshr i8 %3, 1
  %4 = and i8 %and4.i, 15
  %or.i = or i8 %shl.i, %4
  %conv7.i = zext i8 %or.i to i32
  tail call void @mutex_lock_nested(ptr noundef %rf_mutex.i.i, i32 noundef 0) #7
  %5 = ptrtoint ptr %chip.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %chip.i.i, align 4
  %ops.i.i = getelementptr inbounds %struct.rtw89_chip_info, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ops.i.i, align 4
  %write_rf.i.i = getelementptr inbounds %struct.rtw89_chip_ops, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %write_rf.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %write_rf.i.i, align 4
  %call.i.i = tail call zeroext i1 %10(ptr noundef %rtwdev, i32 noundef 0, i32 noundef 67, i32 noundef 983040, i32 noundef %conv7.i) #7
  tail call void @mutex_unlock(ptr noundef %rf_mutex.i.i) #7
  tail call void (ptr, i32, ptr, ...) @__rtw89_debug(ptr noundef %rtwdev, i32 noundef 2, ptr noundef nonnull @.str.34, i32 noundef 0, i32 noundef %conv7.i) #7
  %arrayidx.1.i = getelementptr %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 36, i32 2, i32 1
  %11 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx.1.i, align 1
  %and.1.i = shl i8 %12, 3
  %shl.1.i = and i8 %and.1.i, 8
  %and4.1.i = lshr i8 %12, 1
  %13 = and i8 %and4.1.i, 15
  %or.1.i = or i8 %shl.1.i, %13
  %conv7.1.i = zext i8 %or.1.i to i32
  tail call void @mutex_lock_nested(ptr noundef %rf_mutex.i.i, i32 noundef 0) #7
  %14 = ptrtoint ptr %chip.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %chip.i.i, align 4
  %ops.i.1.i = getelementptr inbounds %struct.rtw89_chip_info, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %ops.i.1.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ops.i.1.i, align 4
  %write_rf.i.1.i = getelementptr inbounds %struct.rtw89_chip_ops, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %write_rf.i.1.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %write_rf.i.1.i, align 4
  %call.i.1.i = tail call zeroext i1 %19(ptr noundef %rtwdev, i32 noundef 1, i32 noundef 67, i32 noundef 983040, i32 noundef %conv7.1.i) #7
  tail call void @mutex_unlock(ptr noundef %rf_mutex.i.i) #7
  tail call void (ptr, i32, ptr, ...) @__rtw89_debug(ptr noundef %rtwdev, i32 noundef 2, ptr noundef nonnull @.str.34, i32 noundef 1, i32 noundef %conv7.1.i) #7
  br label %rtw8852a_thermal_trim.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, ptr, ...) @__rtw89_debug(ptr noundef %rtwdev, i32 noundef 2, ptr noundef nonnull @.str.33) #7
  br label %rtw8852a_thermal_trim.exit

rtw8852a_thermal_trim.exit:                       ; preds = %if.then.i, %for.cond.preheader.i
  %pg_pa_bias_trim.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 36, i32 1
  %20 = ptrtoint ptr %pg_pa_bias_trim.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %pg_pa_bias_trim.i, align 1, !range !171
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool.not.i2 = icmp eq i8 %21, 0
  br i1 %tobool.not.i2, label %if.then.i16, label %for.cond.preheader.i15

for.cond.preheader.i15:                           ; preds = %rtw8852a_thermal_trim.exit
  call void @__sanitizer_cov_trace_pc() #9
  %rf_mutex.i.i3 = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 12
  %chip.i.i4 = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 3
  %arrayidx.i5 = getelementptr %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 36, i32 3, i32 0
  %22 = ptrtoint ptr %arrayidx.i5 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx.i5, align 1
  %and.i6 = and i8 %23, 15
  %24 = lshr i8 %23, 4
  %conv40.i = zext i8 %and.i6 to i32
  %conv41.i = zext i8 %24 to i32
  tail call void (ptr, i32, ptr, ...) @__rtw89_debug(ptr noundef %rtwdev, i32 noundef 2, ptr noundef nonnull @.str.36, i32 noundef 0, i32 noundef %conv40.i, i32 noundef %conv41.i) #7
  tail call void @mutex_lock_nested(ptr noundef %rf_mutex.i.i3, i32 noundef 0) #7
  %25 = ptrtoint ptr %chip.i.i4 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %chip.i.i4, align 4
  %ops.i.i7 = getelementptr inbounds %struct.rtw89_chip_info, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %ops.i.i7 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ops.i.i7, align 4
  %write_rf.i.i8 = getelementptr inbounds %struct.rtw89_chip_ops, ptr %28, i32 0, i32 3
  %29 = ptrtoint ptr %write_rf.i.i8 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %write_rf.i.i8, align 4
  %call.i.i9 = tail call zeroext i1 %30(ptr noundef %rtwdev, i32 noundef 0, i32 noundef 96, i32 noundef 61440, i32 noundef %conv40.i) #7
  tail call void @mutex_unlock(ptr noundef %rf_mutex.i.i3) #7
  tail call void @mutex_lock_nested(ptr noundef %rf_mutex.i.i3, i32 noundef 0) #7
  %31 = ptrtoint ptr %chip.i.i4 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %chip.i.i4, align 4
  %ops.i65.i = getelementptr inbounds %struct.rtw89_chip_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %ops.i65.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ops.i65.i, align 4
  %write_rf.i66.i = getelementptr inbounds %struct.rtw89_chip_ops, ptr %34, i32 0, i32 3
  %35 = ptrtoint ptr %write_rf.i66.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %write_rf.i66.i, align 4
  %call.i67.i = tail call zeroext i1 %36(ptr noundef %rtwdev, i32 noundef 0, i32 noundef 96, i32 noundef 983040, i32 noundef %conv41.i) #7
  tail call void @mutex_unlock(ptr noundef %rf_mutex.i.i3) #7
  %arrayidx.1.i10 = getelementptr %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 36, i32 3, i32 1
  %37 = ptrtoint ptr %arrayidx.1.i10 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx.1.i10, align 1
  %and.1.i11 = and i8 %38, 15
  %39 = lshr i8 %38, 4
  %conv40.1.i = zext i8 %and.1.i11 to i32
  %conv41.1.i = zext i8 %39 to i32
  tail call void (ptr, i32, ptr, ...) @__rtw89_debug(ptr noundef %rtwdev, i32 noundef 2, ptr noundef nonnull @.str.36, i32 noundef 1, i32 noundef %conv40.1.i, i32 noundef %conv41.1.i) #7
  tail call void @mutex_lock_nested(ptr noundef %rf_mutex.i.i3, i32 noundef 0) #7
  %40 = ptrtoint ptr %chip.i.i4 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %chip.i.i4, align 4
  %ops.i.1.i12 = getelementptr inbounds %struct.rtw89_chip_info, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %ops.i.1.i12 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ops.i.1.i12, align 4
  %write_rf.i.1.i13 = getelementptr inbounds %struct.rtw89_chip_ops, ptr %43, i32 0, i32 3
  %44 = ptrtoint ptr %write_rf.i.1.i13 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %write_rf.i.1.i13, align 4
  %call.i.1.i14 = tail call zeroext i1 %45(ptr noundef %rtwdev, i32 noundef 1, i32 noundef 96, i32 noundef 61440, i32 noundef %conv40.1.i) #7
  tail call void @mutex_unlock(ptr noundef %rf_mutex.i.i3) #7
  tail call void @mutex_lock_nested(ptr noundef %rf_mutex.i.i3, i32 noundef 0) #7
  %46 = ptrtoint ptr %chip.i.i4 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %chip.i.i4, align 4
  %ops.i65.1.i = getelementptr inbounds %struct.rtw89_chip_info, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %ops.i65.1.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %ops.i65.1.i, align 4
  %write_rf.i66.1.i = getelementptr inbounds %struct.rtw89_chip_ops, ptr %49, i32 0, i32 3
  %50 = ptrtoint ptr %write_rf.i66.1.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %write_rf.i66.1.i, align 4
  %call.i67.1.i = tail call zeroext i1 %51(ptr noundef %rtwdev, i32 noundef 1, i32 noundef 96, i32 noundef 983040, i32 noundef %conv41.1.i) #7
  tail call void @mutex_unlock(ptr noundef %rf_mutex.i.i3) #7
  br label %rtw8852a_pa_bias_trim.exit

if.then.i16:                                      ; preds = %rtw8852a_thermal_trim.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, ptr, ...) @__rtw89_debug(ptr noundef %rtwdev, i32 noundef 2, ptr noundef nonnull @.str.35) #7
  br label %rtw8852a_pa_bias_trim.exit

rtw8852a_pa_bias_trim.exit:                       ; preds = %if.then.i16, %for.cond.preheader.i15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtw8852a_set_txpwr(ptr noundef %rtwdev) #0 align 64 {
entry:
  %cr.i.i11 = alloca i32, align 4
  %lmt_ru.i = alloca [2 x %struct.rtw89_txpwr_limit_ru], align 1
  %cr.i.i3 = alloca i32, align 4
  %lmt.i = alloca [2 x %struct.rtw89_txpwr_limit], align 1
  %cr.i.i = alloca i32, align 4
  %cur.i = alloca %struct.rtw89_rate_desc, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %current_channel.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 4, i32 2
  %0 = ptrtoint ptr %current_channel.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %current_channel.i, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %cur.i) #7
  %2 = getelementptr inbounds i8, ptr %cur.i, i32 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_storeN_noabort(i32 %3, i32 8)
  store i64 -1, ptr %2, align 4
  %conv.i = zext i8 %1 to i32
  tail call void (ptr, i32, ptr, ...) @__rtw89_debug(ptr noundef %rtwdev, i32 noundef 32, ptr noundef nonnull @.str.37, i32 noundef %conv.i) #7
  %idx.i = getelementptr inbounds %struct.rtw89_rate_desc, ptr %cur.i, i32 0, i32 2
  %hci.i.i.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 7
  %4 = ptrtoint ptr %cur.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %cur.i, align 4
  br label %for.body7.i

for.body7.i:                                      ; preds = %for.body7.i.backedge, %entry
  %indvars.iv8.i = phi i32 [ 0, %entry ], [ %indvars.iv8.i.be, %for.body7.i.backedge ]
  %addr.16.i = phi i32 [ 53952, %entry ], [ %addr.4.i, %for.body7.i.backedge ]
  %5 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %cur.i, align 4
  %arrayidx.i = getelementptr [4 x i8], ptr @rtw8852a_set_txpwr_byrate.rs, i32 0, i32 %indvars.iv8.i
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx.i, align 1
  %idxprom9.i = zext i8 %8 to i32
  %arrayidx10.i = getelementptr [5 x i8], ptr @rtw89_rs_nss_max, i32 0, i32 %idxprom9.i
  %9 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx10.i, align 1
  %conv11.i = zext i8 %10 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %conv11.i)
  %cmp12.not.i = icmp ult i32 %6, %conv11.i
  br i1 %cmp12.not.i, label %if.end.i, label %for.body7.i.for.inc35.i_crit_edge

for.body7.i.for.inc35.i_crit_edge:                ; preds = %for.body7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc35.i

if.end.i:                                         ; preds = %for.body7.i
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %idxprom9.i, ptr %2, align 4
  %arrayidx22.i = getelementptr [5 x i8], ptr @rtw89_rs_idx_max, i32 0, i32 %idxprom9.i
  %12 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx22.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %cmp241.not.i = icmp eq i8 %13, 0
  br i1 %cmp241.not.i, label %if.end.i.for.inc35.i_crit_edge, label %for.body26.preheader.i

if.end.i.for.inc35.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc35.i

for.body26.preheader.i:                           ; preds = %if.end.i
  %wide.trip.count.i = zext i8 %13 to i32
  br label %for.body26.i

for.body26.i:                                     ; preds = %for.inc.i.for.body26.i_crit_edge, %for.body26.preheader.i
  %indvars.iv.i = phi i32 [ 0, %for.body26.preheader.i ], [ %add.i, %for.inc.i.for.body26.i_crit_edge ]
  %addr.24.i = phi i32 [ %addr.16.i, %for.body26.preheader.i ], [ %addr.3.i, %for.inc.i.for.body26.i_crit_edge ]
  %val.03.i = phi i32 [ 0, %for.body26.preheader.i ], [ %val.1.i, %for.inc.i.for.body26.i_crit_edge ]
  %14 = trunc i32 %indvars.iv.i to i8
  %15 = ptrtoint ptr %idx.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %14, ptr %idx.i, align 4
  %rem.i = shl nuw nsw i32 %indvars.iv.i, 3
  %mul.i = and i32 %rem.i, 24
  %call.i = call signext i8 @rtw89_phy_read_txpwr_byrate(ptr noundef %rtwdev, ptr noundef nonnull %cur.i) #7
  %conv28.i = sext i8 %call.i to i32
  %shl.i = shl nsw i32 %conv28.i, %mul.i
  %or.i = or i32 %shl.i, %val.03.i
  %add.i = add nuw nsw i32 %indvars.iv.i, 1
  %rem30.i = and i32 %add.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem30.i)
  %tobool.not.i = icmp eq i32 %rem30.i, 0
  br i1 %tobool.not.i, label %if.end32.i, label %for.body26.i.for.inc.i_crit_edge

for.body26.i.for.inc.i_crit_edge:                 ; preds = %for.body26.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.end32.i:                                       ; preds = %for.body26.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cr.i.i) #7
  %16 = ptrtoint ptr %cr.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -1, ptr %cr.i.i, align 4, !annotation !172
  %call.i.i = call zeroext i1 @rtw89_mac_get_txpwr_cr(ptr noundef %rtwdev, i32 noundef 0, i32 noundef %addr.24.i, ptr noundef nonnull %cr.i.i) #7
  br i1 %call.i.i, label %if.end.i.i, label %if.end32.i.rtw89_mac_txpwr_write32.exit.i_crit_edge

if.end32.i.rtw89_mac_txpwr_write32.exit.i_crit_edge: ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtw89_mac_txpwr_write32.exit.i

if.end.i.i:                                       ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #9
  %17 = ptrtoint ptr %cr.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %cr.i.i, align 4
  %19 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %hci.i.i.i, align 8
  %write32.i.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %20, i32 0, i32 12
  %21 = ptrtoint ptr %write32.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %write32.i.i.i, align 4
  call void %22(ptr noundef %rtwdev, i32 noundef %18, i32 noundef %or.i) #7
  br label %rtw89_mac_txpwr_write32.exit.i

rtw89_mac_txpwr_write32.exit.i:                   ; preds = %if.end.i.i, %if.end32.i.rtw89_mac_txpwr_write32.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cr.i.i) #7
  %add34.i = add i32 %addr.24.i, 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %rtw89_mac_txpwr_write32.exit.i, %for.body26.i.for.inc.i_crit_edge
  %val.1.i = phi i32 [ %or.i, %for.body26.i.for.inc.i_crit_edge ], [ 0, %rtw89_mac_txpwr_write32.exit.i ]
  %addr.3.i = phi i32 [ %addr.24.i, %for.body26.i.for.inc.i_crit_edge ], [ %add34.i, %rtw89_mac_txpwr_write32.exit.i ]
  %exitcond.not.i = icmp eq i32 %add.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %for.inc.i.for.inc35.i_crit_edge, label %for.inc.i.for.body26.i_crit_edge

for.inc.i.for.body26.i_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body26.i

for.inc.i.for.inc35.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc35.i

for.inc35.i:                                      ; preds = %for.inc.i.for.inc35.i_crit_edge, %if.end.i.for.inc35.i_crit_edge, %for.body7.i.for.inc35.i_crit_edge
  %addr.4.i = phi i32 [ %addr.16.i, %for.body7.i.for.inc35.i_crit_edge ], [ %addr.16.i, %if.end.i.for.inc35.i_crit_edge ], [ %addr.3.i, %for.inc.i.for.inc35.i_crit_edge ]
  %indvars.iv.next9.i = add nuw nsw i32 %indvars.iv8.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %indvars.iv.next9.i)
  %exitcond10.not.i = icmp eq i32 %indvars.iv.next9.i, 4
  br i1 %exitcond10.not.i, label %for.inc38.i, label %for.inc35.i.for.body7.i.backedge_crit_edge

for.inc35.i.for.body7.i.backedge_crit_edge:       ; preds = %for.inc35.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body7.i.backedge

for.body7.i.backedge:                             ; preds = %for.inc38.i.for.body7.i.backedge_crit_edge, %for.inc35.i.for.body7.i.backedge_crit_edge
  %indvars.iv8.i.be = phi i32 [ %indvars.iv.next9.i, %for.inc35.i.for.body7.i.backedge_crit_edge ], [ 0, %for.inc38.i.for.body7.i.backedge_crit_edge ]
  br label %for.body7.i

for.inc38.i:                                      ; preds = %for.inc35.i
  %23 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %cur.i, align 4
  %inc40.i = add i32 %24, 1
  store i32 %inc40.i, ptr %cur.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %inc40.i)
  %cmp.i = icmp ult i32 %inc40.i, 2
  br i1 %cmp.i, label %for.inc38.i.for.body7.i.backedge_crit_edge, label %rtw8852a_set_txpwr_byrate.exit

for.inc38.i.for.body7.i.backedge_crit_edge:       ; preds = %for.inc38.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body7.i.backedge

rtw8852a_set_txpwr_byrate.exit:                   ; preds = %for.inc38.i
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %cur.i) #7
  %25 = ptrtoint ptr %current_channel.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %current_channel.i, align 1
  %current_band_width.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 4, i32 6
  %27 = ptrtoint ptr %current_band_width.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %current_band_width.i, align 4
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %lmt.i) #7
  %29 = call ptr @memset(ptr %lmt.i, i32 255, i32 80)
  %conv.i5 = zext i8 %26 to i32
  %conv2.i = zext i8 %28 to i32
  call void (ptr, i32, ptr, ...) @__rtw89_debug(ptr noundef %rtwdev, i32 noundef 32, ptr noundef nonnull @.str.38, i32 noundef %conv.i5, i32 noundef %conv2.i) #7
  call void @rtw89_phy_fill_txpwr_limit(ptr noundef %rtwdev, ptr noundef nonnull %lmt.i, i8 noundef zeroext 0) #7
  br label %for.body9.i

for.body9.i:                                      ; preds = %rtw89_mac_txpwr_write32.exit.i10.for.body9.i_crit_edge, %rtw8852a_set_txpwr_byrate.exit
  %conv63.i = phi i32 [ 0, %rtw8852a_set_txpwr_byrate.exit ], [ %conv6.i, %rtw89_mac_txpwr_write32.exit.i10.for.body9.i_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %lmt.i, i32 %conv63.i
  %30 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %add.ptr.i, align 1
  %arrayidx22.1.i = getelementptr i8, ptr %add.ptr.i, i32 1
  %32 = ptrtoint ptr %arrayidx22.1.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx22.1.i, align 1
  %arrayidx22.2.i = getelementptr i8, ptr %add.ptr.i, i32 2
  %34 = ptrtoint ptr %arrayidx22.2.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx22.2.i, align 1
  %arrayidx22.3.i = getelementptr i8, ptr %add.ptr.i, i32 3
  %36 = ptrtoint ptr %arrayidx22.3.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx22.3.i, align 1
  %add12.i = add nuw nsw i32 %conv63.i, 53996
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cr.i.i3) #7
  %38 = ptrtoint ptr %cr.i.i3 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 -1, ptr %cr.i.i3, align 4, !annotation !172
  %call.i.i7 = call zeroext i1 @rtw89_mac_get_txpwr_cr(ptr noundef %rtwdev, i32 noundef 0, i32 noundef %add12.i, ptr noundef nonnull %cr.i.i3) #7
  br i1 %call.i.i7, label %if.end.i.i9, label %for.body9.i.rtw89_mac_txpwr_write32.exit.i10_crit_edge

for.body9.i.rtw89_mac_txpwr_write32.exit.i10_crit_edge: ; preds = %for.body9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtw89_mac_txpwr_write32.exit.i10

if.end.i.i9:                                      ; preds = %for.body9.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv23.3.i = sext i8 %37 to i32
  %shl.3.i = shl nsw i32 %conv23.3.i, 24
  %conv23.2.i = sext i8 %35 to i32
  %shl.2.i = shl nsw i32 %conv23.2.i, 16
  %conv23.1.i = sext i8 %33 to i32
  %shl.1.i = shl nsw i32 %conv23.1.i, 8
  %conv23.i = sext i8 %31 to i32
  %or.1.i = or i32 %shl.1.i, %conv23.i
  %or.2.i = or i32 %or.1.i, %shl.2.i
  %or.3.i = or i32 %or.2.i, %shl.3.i
  %39 = ptrtoint ptr %cr.i.i3 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %cr.i.i3, align 4
  %41 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %hci.i.i.i, align 8
  %write32.i.i.i8 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %42, i32 0, i32 12
  %43 = ptrtoint ptr %write32.i.i.i8 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %write32.i.i.i8, align 4
  call void %44(ptr noundef %rtwdev, i32 noundef %40, i32 noundef %or.3.i) #7
  br label %rtw89_mac_txpwr_write32.exit.i10

rtw89_mac_txpwr_write32.exit.i10:                 ; preds = %if.end.i.i9, %for.body9.i.rtw89_mac_txpwr_write32.exit.i10_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cr.i.i3) #7
  %add28.i = add nuw nsw i32 %conv63.i, 4
  %conv6.i = and i32 %add28.i, 255
  %cmp7.i = icmp ult i32 %conv6.i, 40
  br i1 %cmp7.i, label %rtw89_mac_txpwr_write32.exit.i10.for.body9.i_crit_edge, label %for.inc31.i

rtw89_mac_txpwr_write32.exit.i10.for.body9.i_crit_edge: ; preds = %rtw89_mac_txpwr_write32.exit.i10
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body9.i

for.inc31.i:                                      ; preds = %rtw89_mac_txpwr_write32.exit.i10
  %arrayidx.1.i = getelementptr inbounds [2 x %struct.rtw89_txpwr_limit], ptr %lmt.i, i32 0, i32 1
  call void @rtw89_phy_fill_txpwr_limit(ptr noundef %rtwdev, ptr noundef %arrayidx.1.i, i8 noundef zeroext 1) #7
  br label %for.body9.1.i

for.body9.1.i:                                    ; preds = %rtw89_mac_txpwr_write32.exit.1.i.for.body9.1.i_crit_edge, %for.inc31.i
  %conv63.1.i = phi i32 [ 0, %for.inc31.i ], [ %conv6.1.i, %rtw89_mac_txpwr_write32.exit.1.i.for.body9.1.i_crit_edge ]
  %add.ptr.1.i = getelementptr i8, ptr %arrayidx.1.i, i32 %conv63.1.i
  %45 = ptrtoint ptr %add.ptr.1.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %add.ptr.1.i, align 1
  %arrayidx22.1.1.i = getelementptr i8, ptr %add.ptr.1.i, i32 1
  %47 = ptrtoint ptr %arrayidx22.1.1.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx22.1.1.i, align 1
  %arrayidx22.2.1.i = getelementptr i8, ptr %add.ptr.1.i, i32 2
  %49 = ptrtoint ptr %arrayidx22.2.1.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx22.2.1.i, align 1
  %arrayidx22.3.1.i = getelementptr i8, ptr %add.ptr.1.i, i32 3
  %51 = ptrtoint ptr %arrayidx22.3.1.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %arrayidx22.3.1.i, align 1
  %add12.1.i = add nuw nsw i32 %conv63.1.i, 54036
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cr.i.i3) #7
  %53 = ptrtoint ptr %cr.i.i3 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 -1, ptr %cr.i.i3, align 4, !annotation !172
  %call.i.1.i = call zeroext i1 @rtw89_mac_get_txpwr_cr(ptr noundef %rtwdev, i32 noundef 0, i32 noundef %add12.1.i, ptr noundef nonnull %cr.i.i3) #7
  br i1 %call.i.1.i, label %if.end.i.1.i, label %for.body9.1.i.rtw89_mac_txpwr_write32.exit.1.i_crit_edge

for.body9.1.i.rtw89_mac_txpwr_write32.exit.1.i_crit_edge: ; preds = %for.body9.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtw89_mac_txpwr_write32.exit.1.i

if.end.i.1.i:                                     ; preds = %for.body9.1.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv23.3.1.i = sext i8 %52 to i32
  %shl.3.1.i = shl nsw i32 %conv23.3.1.i, 24
  %conv23.2.1.i = sext i8 %50 to i32
  %shl.2.1.i = shl nsw i32 %conv23.2.1.i, 16
  %conv23.1.1.i = sext i8 %48 to i32
  %shl.1.1.i = shl nsw i32 %conv23.1.1.i, 8
  %conv23.16.i = sext i8 %46 to i32
  %or.1.1.i = or i32 %shl.1.1.i, %conv23.16.i
  %or.2.1.i = or i32 %or.1.1.i, %shl.2.1.i
  %or.3.1.i = or i32 %or.2.1.i, %shl.3.1.i
  %54 = ptrtoint ptr %cr.i.i3 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %cr.i.i3, align 4
  %56 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %hci.i.i.i, align 8
  %write32.i.i.1.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %57, i32 0, i32 12
  %58 = ptrtoint ptr %write32.i.i.1.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %write32.i.i.1.i, align 4
  call void %59(ptr noundef %rtwdev, i32 noundef %55, i32 noundef %or.3.1.i) #7
  br label %rtw89_mac_txpwr_write32.exit.1.i

rtw89_mac_txpwr_write32.exit.1.i:                 ; preds = %if.end.i.1.i, %for.body9.1.i.rtw89_mac_txpwr_write32.exit.1.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cr.i.i3) #7
  %add28.1.i = add nuw nsw i32 %conv63.1.i, 4
  %conv6.1.i = and i32 %add28.1.i, 255
  %cmp7.1.i = icmp ult i32 %conv6.1.i, 40
  br i1 %cmp7.1.i, label %rtw89_mac_txpwr_write32.exit.1.i.for.body9.1.i_crit_edge, label %rtw8852a_set_txpwr_limit.exit

rtw89_mac_txpwr_write32.exit.1.i.for.body9.1.i_crit_edge: ; preds = %rtw89_mac_txpwr_write32.exit.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body9.1.i

rtw8852a_set_txpwr_limit.exit:                    ; preds = %rtw89_mac_txpwr_write32.exit.1.i
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %lmt.i) #7
  %60 = ptrtoint ptr %current_channel.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %current_channel.i, align 1
  %62 = ptrtoint ptr %current_band_width.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %current_band_width.i, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %lmt_ru.i) #7
  %64 = call ptr @memset(ptr %lmt_ru.i, i32 255, i32 48)
  %conv.i14 = zext i8 %61 to i32
  %conv2.i15 = zext i8 %63 to i32
  call void (ptr, i32, ptr, ...) @__rtw89_debug(ptr noundef %rtwdev, i32 noundef 32, ptr noundef nonnull @.str.39, i32 noundef %conv.i14, i32 noundef %conv2.i15) #7
  call void @rtw89_phy_fill_txpwr_limit_ru(ptr noundef %rtwdev, ptr noundef nonnull %lmt_ru.i, i8 noundef zeroext 0) #7
  br label %for.body9.i24

for.body9.i24:                                    ; preds = %rtw89_mac_txpwr_write32.exit.i40.for.body9.i24_crit_edge, %rtw8852a_set_txpwr_limit.exit
  %conv63.i17 = phi i32 [ 0, %rtw8852a_set_txpwr_limit.exit ], [ %conv6.i38, %rtw89_mac_txpwr_write32.exit.i40.for.body9.i24_crit_edge ]
  %add.ptr.i18 = getelementptr i8, ptr %lmt_ru.i, i32 %conv63.i17
  %65 = ptrtoint ptr %add.ptr.i18 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %add.ptr.i18, align 1
  %arrayidx22.1.i19 = getelementptr i8, ptr %add.ptr.i18, i32 1
  %67 = ptrtoint ptr %arrayidx22.1.i19 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %arrayidx22.1.i19, align 1
  %arrayidx22.2.i20 = getelementptr i8, ptr %add.ptr.i18, i32 2
  %69 = ptrtoint ptr %arrayidx22.2.i20 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %arrayidx22.2.i20, align 1
  %arrayidx22.3.i21 = getelementptr i8, ptr %add.ptr.i18, i32 3
  %71 = ptrtoint ptr %arrayidx22.3.i21 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %arrayidx22.3.i21, align 1
  %add12.i22 = add nuw nsw i32 %conv63.i17, 54076
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cr.i.i11) #7
  %73 = ptrtoint ptr %cr.i.i11 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 -1, ptr %cr.i.i11, align 4, !annotation !172
  %call.i.i23 = call zeroext i1 @rtw89_mac_get_txpwr_cr(ptr noundef %rtwdev, i32 noundef 0, i32 noundef %add12.i22, ptr noundef nonnull %cr.i.i11) #7
  br i1 %call.i.i23, label %if.end.i.i36, label %for.body9.i24.rtw89_mac_txpwr_write32.exit.i40_crit_edge

for.body9.i24.rtw89_mac_txpwr_write32.exit.i40_crit_edge: ; preds = %for.body9.i24
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtw89_mac_txpwr_write32.exit.i40

if.end.i.i36:                                     ; preds = %for.body9.i24
  call void @__sanitizer_cov_trace_pc() #9
  %conv23.3.i25 = sext i8 %72 to i32
  %shl.3.i26 = shl nsw i32 %conv23.3.i25, 24
  %conv23.2.i27 = sext i8 %70 to i32
  %shl.2.i28 = shl nsw i32 %conv23.2.i27, 16
  %conv23.1.i29 = sext i8 %68 to i32
  %shl.1.i30 = shl nsw i32 %conv23.1.i29, 8
  %conv23.i31 = sext i8 %66 to i32
  %or.1.i32 = or i32 %shl.1.i30, %conv23.i31
  %or.2.i33 = or i32 %or.1.i32, %shl.2.i28
  %or.3.i34 = or i32 %or.2.i33, %shl.3.i26
  %74 = ptrtoint ptr %cr.i.i11 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %cr.i.i11, align 4
  %76 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %hci.i.i.i, align 8
  %write32.i.i.i35 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %77, i32 0, i32 12
  %78 = ptrtoint ptr %write32.i.i.i35 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %write32.i.i.i35, align 4
  call void %79(ptr noundef %rtwdev, i32 noundef %75, i32 noundef %or.3.i34) #7
  br label %rtw89_mac_txpwr_write32.exit.i40

rtw89_mac_txpwr_write32.exit.i40:                 ; preds = %if.end.i.i36, %for.body9.i24.rtw89_mac_txpwr_write32.exit.i40_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cr.i.i11) #7
  %add28.i37 = add nuw nsw i32 %conv63.i17, 4
  %conv6.i38 = and i32 %add28.i37, 255
  %cmp7.i39 = icmp ult i32 %conv6.i38, 24
  br i1 %cmp7.i39, label %rtw89_mac_txpwr_write32.exit.i40.for.body9.i24_crit_edge, label %for.inc31.i42

rtw89_mac_txpwr_write32.exit.i40.for.body9.i24_crit_edge: ; preds = %rtw89_mac_txpwr_write32.exit.i40
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body9.i24

for.inc31.i42:                                    ; preds = %rtw89_mac_txpwr_write32.exit.i40
  %arrayidx.1.i41 = getelementptr inbounds [2 x %struct.rtw89_txpwr_limit_ru], ptr %lmt_ru.i, i32 0, i32 1
  call void @rtw89_phy_fill_txpwr_limit_ru(ptr noundef %rtwdev, ptr noundef %arrayidx.1.i41, i8 noundef zeroext 1) #7
  br label %for.body9.1.i50

for.body9.1.i50:                                  ; preds = %rtw89_mac_txpwr_write32.exit.1.i66.for.body9.1.i50_crit_edge, %for.inc31.i42
  %conv63.1.i43 = phi i32 [ 0, %for.inc31.i42 ], [ %conv6.1.i64, %rtw89_mac_txpwr_write32.exit.1.i66.for.body9.1.i50_crit_edge ]
  %add.ptr.1.i44 = getelementptr i8, ptr %arrayidx.1.i41, i32 %conv63.1.i43
  %80 = ptrtoint ptr %add.ptr.1.i44 to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %add.ptr.1.i44, align 1
  %arrayidx22.1.1.i45 = getelementptr i8, ptr %add.ptr.1.i44, i32 1
  %82 = ptrtoint ptr %arrayidx22.1.1.i45 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %arrayidx22.1.1.i45, align 1
  %arrayidx22.2.1.i46 = getelementptr i8, ptr %add.ptr.1.i44, i32 2
  %84 = ptrtoint ptr %arrayidx22.2.1.i46 to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %arrayidx22.2.1.i46, align 1
  %arrayidx22.3.1.i47 = getelementptr i8, ptr %add.ptr.1.i44, i32 3
  %86 = ptrtoint ptr %arrayidx22.3.1.i47 to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %arrayidx22.3.1.i47, align 1
  %add12.1.i48 = add nuw nsw i32 %conv63.1.i43, 54100
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cr.i.i11) #7
  %88 = ptrtoint ptr %cr.i.i11 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 -1, ptr %cr.i.i11, align 4, !annotation !172
  %call.i.1.i49 = call zeroext i1 @rtw89_mac_get_txpwr_cr(ptr noundef %rtwdev, i32 noundef 0, i32 noundef %add12.1.i48, ptr noundef nonnull %cr.i.i11) #7
  br i1 %call.i.1.i49, label %if.end.i.1.i62, label %for.body9.1.i50.rtw89_mac_txpwr_write32.exit.1.i66_crit_edge

for.body9.1.i50.rtw89_mac_txpwr_write32.exit.1.i66_crit_edge: ; preds = %for.body9.1.i50
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtw89_mac_txpwr_write32.exit.1.i66

if.end.i.1.i62:                                   ; preds = %for.body9.1.i50
  call void @__sanitizer_cov_trace_pc() #9
  %conv23.3.1.i51 = sext i8 %87 to i32
  %shl.3.1.i52 = shl nsw i32 %conv23.3.1.i51, 24
  %conv23.2.1.i53 = sext i8 %85 to i32
  %shl.2.1.i54 = shl nsw i32 %conv23.2.1.i53, 16
  %conv23.1.1.i55 = sext i8 %83 to i32
  %shl.1.1.i56 = shl nsw i32 %conv23.1.1.i55, 8
  %conv23.16.i57 = sext i8 %81 to i32
  %or.1.1.i58 = or i32 %shl.1.1.i56, %conv23.16.i57
  %or.2.1.i59 = or i32 %or.1.1.i58, %shl.2.1.i54
  %or.3.1.i60 = or i32 %or.2.1.i59, %shl.3.1.i52
  %89 = ptrtoint ptr %cr.i.i11 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %cr.i.i11, align 4
  %91 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %hci.i.i.i, align 8
  %write32.i.i.1.i61 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %92, i32 0, i32 12
  %93 = ptrtoint ptr %write32.i.i.1.i61 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %write32.i.i.1.i61, align 4
  call void %94(ptr noundef %rtwdev, i32 noundef %90, i32 noundef %or.3.1.i60) #7
  br label %rtw89_mac_txpwr_write32.exit.1.i66

rtw89_mac_txpwr_write32.exit.1.i66:               ; preds = %if.end.i.1.i62, %for.body9.1.i50.rtw89_mac_txpwr_write32.exit.1.i66_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cr.i.i11) #7
  %add28.1.i63 = add nuw nsw i32 %conv63.1.i43, 4
  %conv6.1.i64 = and i32 %add28.1.i63, 255
  %cmp7.1.i65 = icmp ult i32 %conv6.1.i64, 24
  br i1 %cmp7.1.i65, label %rtw89_mac_txpwr_write32.exit.1.i66.for.body9.1.i50_crit_edge, label %rtw8852a_set_txpwr_limit_ru.exit

rtw89_mac_txpwr_write32.exit.1.i66.for.body9.1.i50_crit_edge: ; preds = %rtw89_mac_txpwr_write32.exit.1.i66
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body9.1.i50

rtw8852a_set_txpwr_limit_ru.exit:                 ; preds = %rtw89_mac_txpwr_write32.exit.1.i66
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %lmt_ru.i) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtw8852a_set_txpwr_ctrl(ptr noundef %rtwdev) #0 align 64 {
entry:
  %cr.i.i2 = alloca i32, align 4
  %desc.i = alloca %struct.rtw89_rate_desc, align 4
  %cr.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (ptr, i32, ptr, ...) @__rtw89_debug(ptr noundef %rtwdev, i32 noundef 32, ptr noundef nonnull @.str.40) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cr.i.i) #7
  %0 = ptrtoint ptr %cr.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %cr.i.i, align 4, !annotation !172
  %call.i.i = call zeroext i1 @rtw89_mac_get_txpwr_cr(ptr noundef %rtwdev, i32 noundef 0, i32 noundef 53760, ptr noundef nonnull %cr.i.i) #7
  br i1 %call.i.i, label %if.end.i.i, label %entry.rtw8852a_set_txpwr_ref.exit_crit_edge

entry.rtw8852a_set_txpwr_ref.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtw8852a_set_txpwr_ref.exit

if.end.i.i:                                       ; preds = %entry
  %1 = ptrtoint ptr %cr.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %cr.i.i, align 4
  %and.i.i.i = and i32 %2, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.rtw89_write32_mask.exit.i.i_crit_edge, label %do.end.i.i.i, !prof !173

if.end.i.i.rtw89_write32_mask.exit.i.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtw89_write32_mask.exit.i.i

do.end.i.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 3031, i32 noundef 9, ptr noundef nonnull @.str.10, i32 noundef %2) #7
  br label %rtw89_write32_mask.exit.i.i

rtw89_write32_mask.exit.i.i:                      ; preds = %do.end.i.i.i, %if.end.i.i.rtw89_write32_mask.exit.i.i_crit_edge
  %hci.i.i.i.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 7
  %3 = ptrtoint ptr %hci.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hci.i.i.i.i, align 8
  %read32.i.i.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %4, i32 0, i32 9
  %5 = ptrtoint ptr %read32.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %read32.i.i.i.i, align 4
  %call.i.i.i.i = call i32 %6(ptr noundef %rtwdev, i32 noundef %2) #7
  %and21.i.i.i = and i32 %call.i.i.i.i, -268434433
  %7 = ptrtoint ptr %hci.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hci.i.i.i.i, align 8
  %write32.i.i.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %8, i32 0, i32 12
  %9 = ptrtoint ptr %write32.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %write32.i.i.i.i, align 4
  call void %10(ptr noundef %rtwdev, i32 noundef %2, i32 noundef %and21.i.i.i) #7
  br label %rtw8852a_set_txpwr_ref.exit

rtw8852a_set_txpwr_ref.exit:                      ; preds = %rtw89_write32_mask.exit.i.i, %entry.rtw8852a_set_txpwr_ref.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cr.i.i) #7
  call void (ptr, i32, ptr, ...) @__rtw89_debug(ptr noundef %rtwdev, i32 noundef 32, ptr noundef nonnull @.str.41) #7
  call void (ptr, i32, ptr, ...) @__rtw89_debug(ptr noundef %rtwdev, i32 noundef 32, ptr noundef nonnull @.str.43, i32 noundef 172, i32 noundef 39, i32 noundef 0) #7
  call void @rtw89_phy_write32_idx(ptr noundef %rtwdev, i32 noundef 22532, i32 noundef 134217727, i32 noundef 45248512, i32 noundef 0) #7
  call void @rtw89_phy_write32_idx(ptr noundef %rtwdev, i32 noundef 30724, i32 noundef 134217727, i32 noundef 45248512, i32 noundef 0) #7
  call void (ptr, i32, ptr, ...) @__rtw89_debug(ptr noundef %rtwdev, i32 noundef 32, ptr noundef nonnull @.str.42) #7
  call void (ptr, i32, ptr, ...) @__rtw89_debug(ptr noundef %rtwdev, i32 noundef 32, ptr noundef nonnull @.str.43, i32 noundef 172, i32 noundef 39, i32 noundef 0) #7
  call void @rtw89_phy_write32_idx(ptr noundef %rtwdev, i32 noundef 22536, i32 noundef 134217727, i32 noundef 45248512, i32 noundef 0) #7
  call void @rtw89_phy_write32_idx(ptr noundef %rtwdev, i32 noundef 30728, i32 noundef 134217727, i32 noundef 45248512, i32 noundef 0) #7
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %desc.i) #7
  %11 = call ptr @memcpy(ptr %desc.i, ptr @__const.rtw8852a_set_txpwr_offset.desc, i32 12)
  call void (ptr, i32, ptr, ...) @__rtw89_debug(ptr noundef %rtwdev, i32 noundef 32, ptr noundef nonnull @.str.44) #7
  %idx.i = getelementptr inbounds %struct.rtw89_rate_desc, ptr %desc.i, i32 0, i32 2
  %12 = ptrtoint ptr %idx.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %idx.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %rtw8852a_set_txpwr_ref.exit
  %val.02.i = phi i32 [ 0, %rtw8852a_set_txpwr_ref.exit ], [ %or.i, %for.body.i.for.body.i_crit_edge ]
  %call.i = call signext i8 @rtw89_phy_read_txpwr_byrate(ptr noundef %rtwdev, ptr noundef nonnull %desc.i) #7
  %13 = and i8 %call.i, 15
  %and.i = zext i8 %13 to i32
  %14 = ptrtoint ptr %idx.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %idx.i, align 4
  %conv5.i = zext i8 %15 to i32
  %mul.i = shl nuw nsw i32 %conv5.i, 2
  %shl.i = shl i32 %and.i, %mul.i
  %or.i = or i32 %shl.i, %val.02.i
  %inc.i = add i8 %15, 1
  store i8 %inc.i, ptr %idx.i, align 4
  %cmp.i = icmp ult i8 %inc.i, 5
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.end.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cr.i.i2) #7
  %16 = ptrtoint ptr %cr.i.i2 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -1, ptr %cr.i.i2, align 4, !annotation !172
  %call.i.i3 = call zeroext i1 @rtw89_mac_get_txpwr_cr(ptr noundef %rtwdev, i32 noundef 0, i32 noundef 53764, ptr noundef nonnull %cr.i.i2) #7
  br i1 %call.i.i3, label %if.end.i.i6, label %for.end.i.rtw8852a_set_txpwr_offset.exit_crit_edge

for.end.i.rtw8852a_set_txpwr_offset.exit_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtw8852a_set_txpwr_offset.exit

if.end.i.i6:                                      ; preds = %for.end.i
  %17 = ptrtoint ptr %cr.i.i2 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %cr.i.i2, align 4
  %and.i.i.i4 = and i32 %18, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i4)
  %tobool.not.i.i.i5 = icmp eq i32 %and.i.i.i4, 0
  br i1 %tobool.not.i.i.i5, label %if.end.i.i6.rtw89_write32_mask.exit.i.i13_crit_edge, label %do.end.i.i.i7, !prof !173

if.end.i.i6.rtw89_write32_mask.exit.i.i13_crit_edge: ; preds = %if.end.i.i6
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtw89_write32_mask.exit.i.i13

do.end.i.i.i7:                                    ; preds = %if.end.i.i6
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 3031, i32 noundef 9, ptr noundef nonnull @.str.10, i32 noundef %18) #7
  br label %rtw89_write32_mask.exit.i.i13

rtw89_write32_mask.exit.i.i13:                    ; preds = %do.end.i.i.i7, %if.end.i.i6.rtw89_write32_mask.exit.i.i13_crit_edge
  %hci.i.i.i.i8 = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 7
  %19 = ptrtoint ptr %hci.i.i.i.i8 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %hci.i.i.i.i8, align 8
  %read32.i.i.i.i9 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %20, i32 0, i32 9
  %21 = ptrtoint ptr %read32.i.i.i.i9 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %read32.i.i.i.i9, align 4
  %call.i.i.i.i10 = call i32 %22(ptr noundef %rtwdev, i32 noundef %18) #7
  %and21.i.i.i11 = and i32 %call.i.i.i.i10, -1048576
  %and22.i.i.i = and i32 %or.i, 1048575
  %or.i.i.i = or i32 %and21.i.i.i11, %and22.i.i.i
  %23 = ptrtoint ptr %hci.i.i.i.i8 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %hci.i.i.i.i8, align 8
  %write32.i.i.i.i12 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %24, i32 0, i32 12
  %25 = ptrtoint ptr %write32.i.i.i.i12 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %write32.i.i.i.i12, align 4
  call void %26(ptr noundef %rtwdev, i32 noundef %18, i32 noundef %or.i.i.i) #7
  br label %rtw8852a_set_txpwr_offset.exit

rtw8852a_set_txpwr_offset.exit:                   ; preds = %rtw89_write32_mask.exit.i.i13, %for.end.i.rtw8852a_set_txpwr_offset.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cr.i.i2) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %desc.i) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtw8852a_init_txpwr_unit(ptr noundef %rtwdev, i32 noundef %phy_idx) #0 align 64 {
entry:
  %cr.i25 = alloca i32, align 4
  %cr.i18 = alloca i32, align 4
  %cr.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cr.i) #7
  %0 = ptrtoint ptr %cr.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %cr.i, align 4, !annotation !172
  %call.i = call zeroext i1 @rtw89_mac_get_txpwr_cr(ptr noundef %rtwdev, i32 noundef %phy_idx, i32 noundef 53832, ptr noundef nonnull %cr.i) #7
  br i1 %call.i, label %if.end, label %rtw89_mac_txpwr_write32.exit

rtw89_mac_txpwr_write32.exit:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cr.i) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %cr.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %cr.i, align 4
  %hci.i.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 7
  %3 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hci.i.i, align 8
  %write32.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %4, i32 0, i32 12
  %5 = ptrtoint ptr %write32.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %write32.i.i, align 4
  call void %6(ptr noundef %rtwdev, i32 noundef %2, i32 noundef 125186867) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cr.i) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cr.i18) #7
  %7 = ptrtoint ptr %cr.i18 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %cr.i18, align 4, !annotation !172
  %call.i19 = call zeroext i1 @rtw89_mac_get_txpwr_cr(ptr noundef %rtwdev, i32 noundef %phy_idx, i32 noundef 53792, ptr noundef nonnull %cr.i18) #7
  br i1 %call.i19, label %if.end4, label %rtw89_mac_txpwr_write32.exit24

rtw89_mac_txpwr_write32.exit24:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cr.i18) #7
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %8 = ptrtoint ptr %cr.i18 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cr.i18, align 4
  %10 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hci.i.i, align 8
  %write32.i.i21 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %11, i32 0, i32 12
  %12 = ptrtoint ptr %write32.i.i21 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %write32.i.i21, align 4
  call void %13(ptr noundef %rtwdev, i32 noundef %9, i32 noundef 32239620) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cr.i18) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cr.i25) #7
  %14 = ptrtoint ptr %cr.i25 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -1, ptr %cr.i25, align 4, !annotation !172
  %call.i26 = call zeroext i1 @rtw89_mac_get_txpwr_cr(ptr noundef %rtwdev, i32 noundef %phy_idx, i32 noundef 53824, ptr noundef nonnull %cr.i25) #7
  br i1 %call.i26, label %if.end.i29, label %if.end4.rtw89_mac_txpwr_write32.exit31_crit_edge

if.end4.rtw89_mac_txpwr_write32.exit31_crit_edge: ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtw89_mac_txpwr_write32.exit31

if.end.i29:                                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %cr.i25 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %cr.i25, align 4
  %17 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %hci.i.i, align 8
  %write32.i.i28 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %18, i32 0, i32 12
  %19 = ptrtoint ptr %write32.i.i28 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %write32.i.i28, align 4
  call void %20(ptr noundef %rtwdev, i32 noundef %16, i32 noundef 194815) #7
  br label %rtw89_mac_txpwr_write32.exit31

rtw89_mac_txpwr_write32.exit31:                   ; preds = %if.end.i29, %if.end4.rtw89_mac_txpwr_write32.exit31_crit_edge
  %retval.0.i30 = phi i32 [ 0, %if.end.i29 ], [ -22, %if.end4.rtw89_mac_txpwr_write32.exit31_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cr.i25) #7
  br label %cleanup

cleanup:                                          ; preds = %rtw89_mac_txpwr_write32.exit31, %rtw89_mac_txpwr_write32.exit24, %rtw89_mac_txpwr_write32.exit
  %retval.0 = phi i32 [ -22, %rtw89_mac_txpwr_write32.exit ], [ -22, %rtw89_mac_txpwr_write32.exit24 ], [ %retval.0.i30, %rtw89_mac_txpwr_write32.exit31 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @rtw8852a_get_thermal(ptr noundef %rtwdev, i32 noundef %rf_path) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 31, i32 %rf_path
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1, !range !171
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %shl = shl i32 %rf_path, 13
  %or.i = or i32 %shl, 72720
  %hci.i.i.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 7
  %2 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hci.i.i.i, align 8
  %read32.i.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %read32.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %read32.i.i.i, align 4
  %call.i.i.i = tail call i32 %5(ptr noundef %rtwdev, i32 noundef %or.i) #7
  %and.i.i = lshr i32 %call.i.i.i, 24
  %shr.i.i = and i32 %and.i.i, 63
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %rf_mutex.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 12
  tail call void @mutex_lock_nested(ptr noundef %rf_mutex.i, i32 noundef 0) #7
  %chip.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 3
  %6 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %chip.i, align 4
  %ops.i = getelementptr inbounds %struct.rtw89_chip_info, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops.i, align 4
  %write_rf.i = getelementptr inbounds %struct.rtw89_chip_ops, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %write_rf.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %write_rf.i, align 4
  %call.i = tail call zeroext i1 %11(ptr noundef %rtwdev, i32 noundef %rf_path, i32 noundef 66, i32 noundef 524288, i32 noundef 1) #7
  tail call void @mutex_unlock(ptr noundef %rf_mutex.i) #7
  tail call void @mutex_lock_nested(ptr noundef %rf_mutex.i, i32 noundef 0) #7
  %12 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %chip.i, align 4
  %ops.i15 = getelementptr inbounds %struct.rtw89_chip_info, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %ops.i15 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ops.i15, align 4
  %write_rf.i16 = getelementptr inbounds %struct.rtw89_chip_ops, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %write_rf.i16 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %write_rf.i16, align 4
  %call.i17 = tail call zeroext i1 %17(ptr noundef %rtwdev, i32 noundef %rf_path, i32 noundef 66, i32 noundef 524288, i32 noundef 0) #7
  tail call void @mutex_unlock(ptr noundef %rf_mutex.i) #7
  tail call void @mutex_lock_nested(ptr noundef %rf_mutex.i, i32 noundef 0) #7
  %18 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %chip.i, align 4
  %ops.i20 = getelementptr inbounds %struct.rtw89_chip_info, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %ops.i20 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ops.i20, align 4
  %write_rf.i21 = getelementptr inbounds %struct.rtw89_chip_ops, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %write_rf.i21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %write_rf.i21, align 4
  %call.i22 = tail call zeroext i1 %23(ptr noundef %rtwdev, i32 noundef %rf_path, i32 noundef 66, i32 noundef 524288, i32 noundef 1) #7
  tail call void @mutex_unlock(ptr noundef %rf_mutex.i) #7
  tail call void @usleep_range_state(i32 noundef 200, i32 noundef 400, i32 noundef 2) #7
  tail call void @mutex_lock_nested(ptr noundef %rf_mutex.i, i32 noundef 0) #7
  %24 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %chip.i, align 4
  %ops.i25 = getelementptr inbounds %struct.rtw89_chip_info, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %ops.i25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ops.i25, align 4
  %read_rf.i = getelementptr inbounds %struct.rtw89_chip_ops, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %read_rf.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %read_rf.i, align 4
  %call.i26 = tail call i32 %29(ptr noundef %rtwdev, i32 noundef %rf_path, i32 noundef 66, i32 noundef 126) #7
  tail call void @mutex_unlock(ptr noundef %rf_mutex.i) #7
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0.in = phi i32 [ %shr.i.i, %if.then ], [ %call.i26, %if.end ]
  %retval.0 = trunc i32 %retval.0.in to i8
  ret i8 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtw8852a_ctrl_btg(ptr noundef %rtwdev, i1 noundef zeroext %btg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %hci.i.i.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 7
  %0 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hci.i.i.i, align 8
  %read32.i.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %read32.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %read32.i.i.i, align 4
  %call.i.i.i = tail call i32 %3(ptr noundef %rtwdev, i32 noundef 83564) #7
  %and21.i.i = and i32 %call.i.i.i, -393217
  br i1 %btg, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %or.i.i = or i32 %and21.i.i, 131072
  %4 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hci.i.i.i, align 8
  %write32.i.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %5, i32 0, i32 12
  %6 = ptrtoint ptr %write32.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %write32.i.i.i, align 4
  tail call void %7(ptr noundef %rtwdev, i32 noundef 83564, i32 noundef %or.i.i) #7
  %8 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hci.i.i.i, align 8
  %read32.i.i.i8 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %9, i32 0, i32 9
  %10 = ptrtoint ptr %read32.i.i.i8 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %read32.i.i.i8, align 4
  %call.i.i.i9 = tail call i32 %11(ptr noundef %rtwdev, i32 noundef 83776) #7
  %or.i.i11 = or i32 %call.i.i.i9, 393216
  %12 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hci.i.i.i, align 8
  %write32.i.i.i12 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %13, i32 0, i32 12
  %14 = ptrtoint ptr %write32.i.i.i12 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %write32.i.i.i12, align 4
  tail call void %15(ptr noundef %rtwdev, i32 noundef 83776, i32 noundef %or.i.i11) #7
  %16 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hci.i.i.i, align 8
  %read32.i.i.i14 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %17, i32 0, i32 9
  %18 = ptrtoint ptr %read32.i.i.i14 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %read32.i.i.i14, align 4
  %call.i.i.i15 = tail call i32 %19(ptr noundef %rtwdev, i32 noundef 67968) #7
  %and21.i.i16 = and i32 %call.i.i.i15, -1966081
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hci.i.i.i, align 8
  %write32.i.i.i22 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %21, i32 0, i32 12
  %22 = ptrtoint ptr %write32.i.i.i22 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %write32.i.i.i22, align 4
  tail call void %23(ptr noundef %rtwdev, i32 noundef 83564, i32 noundef %and21.i.i) #7
  %24 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %hci.i.i.i, align 8
  %read32.i.i.i24 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %25, i32 0, i32 9
  %26 = ptrtoint ptr %read32.i.i.i24 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %read32.i.i.i24, align 4
  %call.i.i.i25 = tail call i32 %27(ptr noundef %rtwdev, i32 noundef 83776) #7
  %and21.i.i26 = and i32 %call.i.i.i25, -393217
  %28 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %hci.i.i.i, align 8
  %write32.i.i.i27 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %29, i32 0, i32 12
  %30 = ptrtoint ptr %write32.i.i.i27 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %write32.i.i.i27, align 4
  tail call void %31(ptr noundef %rtwdev, i32 noundef 83776, i32 noundef %and21.i.i26) #7
  %32 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %hci.i.i.i, align 8
  %read32.i.i.i29 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %33, i32 0, i32 9
  %34 = ptrtoint ptr %read32.i.i.i29 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %read32.i.i.i29, align 4
  %call.i.i.i30 = tail call i32 %35(ptr noundef %rtwdev, i32 noundef 67968) #7
  %or.i.i32 = or i32 %call.i.i.i30, 1966080
  %36 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %hci.i.i.i, align 8
  %write32.i.i.i33 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %37, i32 0, i32 12
  %38 = ptrtoint ptr %write32.i.i.i33 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %write32.i.i.i33, align 4
  tail call void %39(ptr noundef %rtwdev, i32 noundef 67968, i32 noundef %or.i.i32) #7
  %40 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %hci.i.i.i, align 8
  %read32.i.i.i35 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %41, i32 0, i32 9
  %42 = ptrtoint ptr %read32.i.i.i35 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %read32.i.i.i35, align 4
  %call.i.i.i36 = tail call i32 %43(ptr noundef %rtwdev, i32 noundef 67968) #7
  %and21.i.i37 = and i32 %call.i.i.i36, -1006632961
  %or.i.i38 = or i32 %and21.i.i37, 268435456
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %or.i.i38.sink = phi i32 [ %or.i.i38, %if.else ], [ %and21.i.i16, %if.then ]
  %44 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %hci.i.i.i, align 8
  %write32.i.i.i39 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %45, i32 0, i32 12
  %46 = ptrtoint ptr %write32.i.i.i39 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %write32.i.i.i39, align 4
  tail call void %47(ptr noundef %rtwdev, i32 noundef 67968, i32 noundef %or.i.i38.sink) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtw8852a_query_ppdu(ptr nocapture noundef readonly %rtwdev, ptr nocapture noundef readonly %phy_ppdu, ptr nocapture noundef %status) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %rssi = getelementptr inbounds %struct.rtw89_rx_phy_ppdu, ptr %phy_ppdu, i32 0, i32 3
  %0 = ptrtoint ptr %rssi to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %rssi, align 1
  %arrayidx1 = getelementptr %struct.rtw89_rx_phy_ppdu, ptr %phy_ppdu, i32 0, i32 3, i32 1
  %2 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx1, align 1
  %4 = tail call i8 @llvm.smax.i8(i8 %1, i8 %3)
  %signal = getelementptr inbounds %struct.ieee80211_rx_status, ptr %status, i32 0, i32 13
  %5 = ptrtoint ptr %signal to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %4, ptr %signal, align 2
  %chip = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 3
  %6 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %chip, align 4
  %rf_path_num31 = getelementptr inbounds %struct.rtw89_chip_info, ptr %7, i32 0, i32 9
  %8 = ptrtoint ptr %rf_path_num31 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %rf_path_num31, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp932.not = icmp eq i8 %9, 0
  br i1 %cmp932.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %chains = getelementptr inbounds %struct.ieee80211_rx_status, ptr %status, i32 0, i32 14
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %indvars.iv = phi i32 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.body.for.body_crit_edge ]
  %shl = shl nuw i32 1, %indvars.iv
  %10 = ptrtoint ptr %chains to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %chains, align 1
  %12 = trunc i32 %shl to i8
  %conv13 = or i8 %11, %12
  store i8 %conv13, ptr %chains, align 1
  %arrayidx14 = getelementptr i8, ptr %rssi, i32 %indvars.iv
  %13 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx14, align 1
  %arrayidx16 = getelementptr %struct.ieee80211_rx_status, ptr %status, i32 0, i32 15, i32 %indvars.iv
  %15 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %14, ptr %arrayidx16, align 1
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %16 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %chip, align 4
  %rf_path_num = getelementptr inbounds %struct.rtw89_chip_info, ptr %17, i32 0, i32 9
  %18 = ptrtoint ptr %rf_path_num to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %rf_path_num, align 4
  %20 = zext i8 %19 to i32
  %cmp9 = icmp ult i32 %indvars.iv.next, %20
  br i1 %cmp9, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %valid = getelementptr inbounds %struct.rtw89_rx_phy_ppdu, ptr %phy_ppdu, i32 0, i32 9
  %21 = ptrtoint ptr %valid to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %valid, align 1, !range !171
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool.not = icmp eq i8 %22, 0
  br i1 %tobool.not, label %for.end.if.end_crit_edge, label %if.then

for.end.if.end_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %for.end
  %chan_idx.i = getelementptr inbounds %struct.rtw89_rx_phy_ppdu, ptr %phy_ppdu, i32 0, i32 5
  %23 = ptrtoint ptr %chan_idx.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %chan_idx.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %cmp.i = icmp eq i8 %24, 0
  br i1 %cmp.i, label %if.then.if.end_crit_edge, label %if.end.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %conv1.i = zext i8 %24 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 14, i8 %24)
  %cmp4.i = icmp ugt i8 %24, 14
  %conv6.i = zext i1 %cmp4.i to i8
  %conv8.i = zext i1 %cmp4.i to i32
  %call.i.i = tail call i32 @ieee80211_channel_to_freq_khz(i32 noundef %conv1.i, i32 noundef %conv8.i) #7
  %div.i.i = udiv i32 %call.i.i, 1000
  %conv9.i = trunc i32 %div.i.i to i16
  %freq.i = getelementptr inbounds %struct.ieee80211_rx_status, ptr %status, i32 0, i32 5
  %25 = ptrtoint ptr %freq.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %bf.load.i = load i16, ptr %freq.i, align 4
  %bf.shl.i = shl i16 %conv9.i, 3
  %bf.clear.i = and i16 %bf.load.i, 7
  %bf.set.i = or i16 %bf.shl.i, %bf.clear.i
  store i16 %bf.set.i, ptr %freq.i, align 4
  %band10.i = getelementptr inbounds %struct.ieee80211_rx_status, ptr %status, i32 0, i32 11
  %26 = ptrtoint ptr %band10.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv6.i, ptr %band10.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.end.i, %if.then.if.end_crit_edge, %for.end.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtw8852a_bb_ctrl_btc_preagc(ptr noundef %rtwdev, i1 noundef zeroext %bt_en) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %cond = select i1 %bt_en, ptr @rtw8852a_btc_preagc_en_defs_tbl, ptr @rtw8852a_btc_preagc_dis_defs_tbl
  tail call void @rtw89_phy_write_reg3_tbl(ptr noundef %rtwdev, ptr noundef nonnull %cond) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtw8852a_set_txpwr_ul_tb_offset(ptr noundef %rtwdev, i16 noundef signext %pw_ofst, i32 noundef %mac_idx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = sext i16 %pw_ofst to i32
  %0 = add i16 %pw_ofst, -16
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32, i16 %0)
  %1 = icmp ult i16 %0, -32
  br i1 %1, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, ptr, ...) @__rtw89_debug(ptr noundef %rtwdev, i32 noundef 32, ptr noundef nonnull @.str.45, i32 noundef %conv) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %conv6 = trunc i32 %mac_idx to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv6)
  %cmp.i = icmp eq i8 %conv6, 0
  %cond.i = select i1 %cmp.i, i32 53896, i32 62088
  %hci.i.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 7
  %2 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hci.i.i, align 8
  %read32.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %read32.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %read32.i.i, align 4
  %call.i.i = tail call i32 %5(ptr noundef %rtwdev, i32 noundef %cond.i) #7
  %or.i = or i32 %call.i.i, -2147483648
  %6 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hci.i.i, align 8
  %write32.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %7, i32 0, i32 12
  %8 = ptrtoint ptr %write32.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %write32.i.i, align 4
  tail call void %9(ptr noundef %rtwdev, i32 noundef %cond.i, i32 noundef %or.i) #7
  %cond.i33 = select i1 %cmp.i, i32 53900, i32 62092
  %10 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hci.i.i, align 8
  %read32.i.i35 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %11, i32 0, i32 9
  %12 = ptrtoint ptr %read32.i.i35 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %read32.i.i35, align 4
  %call.i.i36 = tail call i32 %13(ptr noundef %rtwdev, i32 noundef %cond.i33) #7
  %and21.i = and i32 %call.i.i36, -32
  %and22.i = and i32 %conv, 31
  %or.i37 = or i32 %and21.i, %and22.i
  %14 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hci.i.i, align 8
  %write32.i.i38 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %15, i32 0, i32 12
  %16 = ptrtoint ptr %write32.i.i38 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %write32.i.i38, align 4
  tail call void %17(ptr noundef %rtwdev, i32 noundef %cond.i33, i32 noundef %or.i37) #7
  call void @__sanitizer_cov_trace_const_cmp2(i16 -13, i16 %pw_ofst)
  %cmp10 = icmp sgt i16 %pw_ofst, -13
  %sub = add nsw i32 %conv, -3
  %cond = select i1 %cmp10, i32 %sub, i32 -16
  %cond.i40 = select i1 %cmp.i, i32 53904, i32 62096
  %18 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hci.i.i, align 8
  %read32.i.i42 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %19, i32 0, i32 9
  %20 = ptrtoint ptr %read32.i.i42 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %read32.i.i42, align 4
  %call.i.i43 = tail call i32 %21(ptr noundef %rtwdev, i32 noundef %cond.i40) #7
  %and21.i44 = and i32 %call.i.i43, -32
  %and22.i45 = and i32 %cond, 31
  %or.i46 = or i32 %and21.i44, %and22.i45
  %22 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %hci.i.i, align 8
  %write32.i.i47 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %23, i32 0, i32 12
  %24 = ptrtoint ptr %write32.i.i47 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %write32.i.i47, align 4
  tail call void %25(ptr noundef %rtwdev, i32 noundef %cond.i40, i32 noundef %or.i46) #7
  tail call void (ptr, i32, ptr, ...) @__rtw89_debug(ptr noundef %rtwdev, i32 noundef 32, ptr noundef nonnull @.str.46, i32 noundef %conv, i32 noundef %cond) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @rtw8852a_btc_set_rfe(ptr nocapture noundef %rtwdev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mdinfo = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 51, i32 3
  %rfe_type = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 8, i32 3
  %0 = ptrtoint ptr %rfe_type to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %rfe_type, align 8
  %rfe_type2 = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 51, i32 3, i32 1
  %2 = ptrtoint ptr %rfe_type2 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %1, ptr %rfe_type2, align 1
  %cv = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 4, i32 1
  %3 = ptrtoint ptr %cv to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %cv, align 4
  %cv3 = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 51, i32 3, i32 2
  %5 = ptrtoint ptr %cv3 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %4, ptr %cv3, align 1
  %bt_solo = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 51, i32 3, i32 3
  %6 = ptrtoint ptr %bt_solo to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %bt_solo, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp.not = icmp eq i8 %1, 0
  %7 = and i8 %1, 1
  %8 = xor i8 %7, 3
  %.sink = select i1 %cmp.not, i8 2, i8 %8
  %9 = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 51, i32 3, i32 0, i32 1
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %.sink, ptr %9, align 1
  %diversity = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 51, i32 3, i32 0, i32 3
  %11 = ptrtoint ptr %diversity to i32
  call void @__asan_load1_noabort(i32 %11)
  %bf.load15 = load i8, ptr %diversity, align 1
  %bf.clear16 = and i8 %bf.load15, -65
  store i8 %bf.clear16, ptr %diversity, align 1
  %isolation = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 51, i32 3, i32 0, i32 2
  %12 = ptrtoint ptr %isolation to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 10, ptr %isolation, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %.sink)
  %cmp22 = icmp eq i8 %.sink, 3
  br i1 %cmp22, label %if.then24, label %if.else29

if.then24:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %mdinfo to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %mdinfo, align 1
  %bf.clear27 = and i8 %bf.load, 31
  br label %if.end36

if.else29:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %bf.clear5 = and i8 %bf.load, 31
  %14 = ptrtoint ptr %mdinfo to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %mdinfo, align 1
  %bf.set35 = or i8 %bf.clear5, 64
  br label %if.end36

if.end36:                                         ; preds = %if.else29, %if.then24
  %storemerge = phi i8 [ %bf.set35, %if.else29 ], [ %bf.clear27, %if.then24 ]
  %15 = ptrtoint ptr %bt_solo to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %storemerge, ptr %bt_solo, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtw8852a_btc_init_cfg(ptr noundef %rtwdev) #0 align 64 {
entry:
  %coex_params = alloca %struct.rtw89_mac_ax_coex, align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mdinfo = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 51, i32 3
  %chip2 = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 3
  %0 = ptrtoint ptr %chip2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip2, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %coex_params) #7
  %2 = ptrtoint ptr %coex_params to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 0, ptr %coex_params, align 2
  %call = call i32 @rtw89_mac_coex_init(ptr noundef %rtwdev, ptr noundef nonnull %coex_params) #7
  %ops = getelementptr inbounds %struct.rtw89_chip_info, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ops, align 4
  %btc_set_wl_pri = getelementptr inbounds %struct.rtw89_chip_ops, ptr %4, i32 0, i32 25
  %5 = ptrtoint ptr %btc_set_wl_pri to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %btc_set_wl_pri, align 4
  call void %6(ptr noundef %rtwdev, i8 noundef zeroext 1, i1 noundef zeroext true) #7
  %7 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ops, align 4
  %btc_set_wl_pri4 = getelementptr inbounds %struct.rtw89_chip_ops, ptr %8, i32 0, i32 25
  %9 = ptrtoint ptr %btc_set_wl_pri4 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %btc_set_wl_pri4, align 4
  call void %10(ptr noundef %rtwdev, i8 noundef zeroext 2, i1 noundef zeroext true) #7
  %rf_mutex.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 12
  call void @mutex_lock_nested(ptr noundef %rf_mutex.i, i32 noundef 0) #7
  %11 = ptrtoint ptr %chip2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %chip2, align 4
  %ops.i = getelementptr inbounds %struct.rtw89_chip_info, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ops.i, align 4
  %write_rf.i = getelementptr inbounds %struct.rtw89_chip_ops, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %write_rf.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %write_rf.i, align 4
  %call.i = call zeroext i1 %16(ptr noundef %rtwdev, i32 noundef 0, i32 noundef 2, i32 noundef 1048575, i32 noundef 0) #7
  call void @mutex_unlock(ptr noundef %rf_mutex.i) #7
  call void @mutex_lock_nested(ptr noundef %rf_mutex.i, i32 noundef 0) #7
  %17 = ptrtoint ptr %chip2 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %chip2, align 4
  %ops.i22 = getelementptr inbounds %struct.rtw89_chip_info, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %ops.i22 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ops.i22, align 4
  %write_rf.i23 = getelementptr inbounds %struct.rtw89_chip_ops, ptr %20, i32 0, i32 3
  %21 = ptrtoint ptr %write_rf.i23 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %write_rf.i23, align 4
  %call.i24 = call zeroext i1 %22(ptr noundef %rtwdev, i32 noundef 1, i32 noundef 2, i32 noundef 1048575, i32 noundef 0) #7
  call void @mutex_unlock(ptr noundef %rf_mutex.i) #7
  %23 = ptrtoint ptr %mdinfo to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %mdinfo, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %cmp = icmp eq i8 %24, 0
  %. = select i1 %cmp, i32 1535, i32 1503
  call fastcc void @rtw8852a_set_trx_mask(ptr noundef %rtwdev, i8 noundef zeroext 0, i32 noundef %.)
  call fastcc void @rtw8852a_set_trx_mask(ptr noundef %rtwdev, i8 noundef zeroext 1, i32 noundef %.)
  %hci.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 7
  %25 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %hci.i, align 8
  %write32.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %26, i32 0, i32 12
  %27 = ptrtoint ptr %write32.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %write32.i, align 4
  call void %28(ptr noundef %rtwdev, i32 noundef 55852, i32 noundef -251658241) #7
  %29 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %hci.i, align 8
  %read32.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %30, i32 0, i32 9
  %31 = ptrtoint ptr %read32.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %read32.i.i, align 4
  %call.i.i = call i32 %32(ptr noundef %rtwdev, i32 noundef 55872) #7
  %or.i = or i32 %call.i.i, 65540
  %33 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %hci.i, align 8
  %write32.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %34, i32 0, i32 12
  %35 = ptrtoint ptr %write32.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %write32.i.i, align 4
  call void %36(ptr noundef %rtwdev, i32 noundef 55872, i32 noundef %or.i) #7
  %status = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 51, i32 0, i32 0, i32 8
  %37 = ptrtoint ptr %status to i32
  call void @__asan_load2_noabort(i32 %37)
  %bf.load = load i16, ptr %status, align 8
  %bf.set = or i16 %bf.load, 128
  store i16 %bf.set, ptr %status, align 8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %coex_params) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtw8852a_btc_set_wl_pri(ptr noundef %rtwdev, i8 noundef zeroext %map, i1 noundef zeroext %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i8 %map to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.58)
  switch i8 %map, label %entry.cleanup_crit_edge [
    i8 1, label %entry.sw.epilog_crit_edge
    i8 2, label %sw.bb1
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb1, %entry.sw.epilog_crit_edge
  %bitmap.0 = phi i32 [ 256, %sw.bb1 ], [ 8, %entry.sw.epilog_crit_edge ]
  %reg.0 = phi i32 [ 55824, %sw.bb1 ], [ 55856, %entry.sw.epilog_crit_edge ]
  %hci.i.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 7
  %1 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hci.i.i, align 8
  %read32.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %2, i32 0, i32 9
  %3 = ptrtoint ptr %read32.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %read32.i.i, align 4
  %call.i.i = tail call i32 %4(ptr noundef %rtwdev, i32 noundef %reg.0) #7
  %or.i = or i32 %call.i.i, %bitmap.0
  %neg.i = xor i32 %bitmap.0, -1
  %and.i = and i32 %call.i.i, %neg.i
  %or.i.sink = select i1 %state, i32 %or.i, i32 %and.i
  %5 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hci.i.i, align 8
  %write32.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %6, i32 0, i32 12
  %7 = ptrtoint ptr %write32.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %write32.i.i, align 4
  tail call void %8(ptr noundef %rtwdev, i32 noundef %reg.0, i32 noundef %or.i.sink) #7
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtw8852a_btc_set_wl_txpwr_ctrl(ptr noundef %rtwdev, i32 noundef %txpwr_val) #0 align 64 {
entry:
  %cr.i54 = alloca i32, align 4
  %cr.i44 = alloca i32, align 4
  %cr.i40 = alloca i32, align 4
  %cr.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %and.i = and i32 %txpwr_val, 65535
  tail call void (ptr, i32, ptr, ...) @__rtw89_debug(ptr noundef %rtwdev, i32 noundef 32, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.48, i32 noundef %and.i) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cr.i) #7
  %0 = ptrtoint ptr %cr.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %cr.i, align 4, !annotation !172
  %call.i = call zeroext i1 @rtw89_mac_get_txpwr_cr(ptr noundef %rtwdev, i32 noundef 0, i32 noundef 53760, ptr noundef nonnull %cr.i) #7
  br i1 %call.i, label %if.end.i, label %entry.rtw89_mac_txpwr_read32.exit_crit_edge

entry.rtw89_mac_txpwr_read32.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtw89_mac_txpwr_read32.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %1 = ptrtoint ptr %cr.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %cr.i, align 4
  %hci.i.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 7
  %3 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hci.i.i, align 8
  %read32.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %4, i32 0, i32 9
  %5 = ptrtoint ptr %read32.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %read32.i.i, align 4
  %call.i.i = call i32 %6(ptr noundef %rtwdev, i32 noundef %2) #7
  br label %rtw89_mac_txpwr_read32.exit

rtw89_mac_txpwr_read32.exit:                      ; preds = %if.end.i, %entry.rtw89_mac_txpwr_read32.exit_crit_edge
  %_cur.0 = phi i32 [ %call.i.i, %if.end.i ], [ -1, %entry.rtw89_mac_txpwr_read32.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cr.i) #7
  call void (ptr, i32, ptr, ...) @__rtw89_debug(ptr noundef %rtwdev, i32 noundef 32, ptr noundef nonnull @.str.49, i32 noundef 53760, i32 noundef %_cur.0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %and.i)
  %cmp = icmp eq i32 %and.i, 65535
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %rtw89_mac_txpwr_read32.exit
  call void @__sanitizer_cov_trace_pc() #9
  %and.i38 = and i32 %_cur.0, -513
  br label %cond.end

cond.false:                                       ; preds = %rtw89_mac_txpwr_read32.exit
  call void @__sanitizer_cov_trace_pc() #9
  %and.i39 = and i32 %_cur.0, -1024
  %and1.i = and i32 %txpwr_val, 511
  %or.i = or i32 %and1.i, %and.i39
  %or2.i = or i32 %or.i, 512
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %and.i38, %cond.true ], [ %or2.i, %cond.false ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cr.i40) #7
  %7 = ptrtoint ptr %cr.i40 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %cr.i40, align 4, !annotation !172
  %call.i41 = call zeroext i1 @rtw89_mac_get_txpwr_cr(ptr noundef %rtwdev, i32 noundef 0, i32 noundef 53760, ptr noundef nonnull %cr.i40) #7
  br i1 %call.i41, label %if.end.i43, label %cond.end.rtw89_mac_txpwr_write32.exit_crit_edge

cond.end.rtw89_mac_txpwr_write32.exit_crit_edge:  ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtw89_mac_txpwr_write32.exit

if.end.i43:                                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %cr.i40 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cr.i40, align 4
  %hci.i.i42 = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 7
  %10 = ptrtoint ptr %hci.i.i42 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hci.i.i42, align 8
  %write32.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %11, i32 0, i32 12
  %12 = ptrtoint ptr %write32.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %write32.i.i, align 4
  call void %13(ptr noundef %rtwdev, i32 noundef %9, i32 noundef %cond) #7
  br label %rtw89_mac_txpwr_write32.exit

rtw89_mac_txpwr_write32.exit:                     ; preds = %if.end.i43, %cond.end.rtw89_mac_txpwr_write32.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cr.i40) #7
  call void (ptr, i32, ptr, ...) @__rtw89_debug(ptr noundef %rtwdev, i32 noundef 32, ptr noundef nonnull @.str.50, i32 noundef 53760, i32 noundef %cond) #7
  %shr.i = lshr i32 %txpwr_val, 16
  call void (ptr, i32, ptr, ...) @__rtw89_debug(ptr noundef %rtwdev, i32 noundef 32, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.51, i32 noundef %shr.i) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cr.i44) #7
  %14 = ptrtoint ptr %cr.i44 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -1, ptr %cr.i44, align 4, !annotation !172
  %call.i45 = call zeroext i1 @rtw89_mac_get_txpwr_cr(ptr noundef %rtwdev, i32 noundef 0, i32 noundef 53792, ptr noundef nonnull %cr.i44) #7
  br i1 %call.i45, label %if.end.i49, label %rtw89_mac_txpwr_write32.exit.rtw89_mac_txpwr_read32.exit50_crit_edge

rtw89_mac_txpwr_write32.exit.rtw89_mac_txpwr_read32.exit50_crit_edge: ; preds = %rtw89_mac_txpwr_write32.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtw89_mac_txpwr_read32.exit50

if.end.i49:                                       ; preds = %rtw89_mac_txpwr_write32.exit
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %cr.i44 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %cr.i44, align 4
  %hci.i.i46 = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 7
  %17 = ptrtoint ptr %hci.i.i46 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %hci.i.i46, align 8
  %read32.i.i47 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %18, i32 0, i32 9
  %19 = ptrtoint ptr %read32.i.i47 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %read32.i.i47, align 4
  %call.i.i48 = call i32 %20(ptr noundef %rtwdev, i32 noundef %16) #7
  br label %rtw89_mac_txpwr_read32.exit50

rtw89_mac_txpwr_read32.exit50:                    ; preds = %if.end.i49, %rtw89_mac_txpwr_write32.exit.rtw89_mac_txpwr_read32.exit50_crit_edge
  %_cur9.0 = phi i32 [ %call.i.i48, %if.end.i49 ], [ -1, %rtw89_mac_txpwr_write32.exit.rtw89_mac_txpwr_read32.exit50_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cr.i44) #7
  call void (ptr, i32, ptr, ...) @__rtw89_debug(ptr noundef %rtwdev, i32 noundef 32, ptr noundef nonnull @.str.49, i32 noundef 53792, i32 noundef %_cur9.0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %shr.i)
  %cmp12 = icmp eq i32 %shr.i, 65535
  br i1 %cmp12, label %cond.true13, label %__btc_ctrl_gen_gnt_bt.exit

cond.true13:                                      ; preds = %rtw89_mac_txpwr_read32.exit50
  call void @__sanitizer_cov_trace_pc() #9
  %and.i51 = and i32 %_cur9.0, -3
  br label %cond.end17

__btc_ctrl_gen_gnt_bt.exit:                       ; preds = %rtw89_mac_txpwr_read32.exit50
  call void @__sanitizer_cov_trace_pc() #9
  %and.i52 = and i32 %_cur9.0, -4091
  %shl.i = shl nuw nsw i32 %shr.i, 3
  %and14.i = and i32 %shl.i, 4088
  %or.i53 = or i32 %and14.i, %and.i52
  %or15.i = or i32 %or.i53, 2
  br label %cond.end17

cond.end17:                                       ; preds = %__btc_ctrl_gen_gnt_bt.exit, %cond.true13
  %cond18 = phi i32 [ %and.i51, %cond.true13 ], [ %or15.i, %__btc_ctrl_gen_gnt_bt.exit ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cr.i54) #7
  %21 = ptrtoint ptr %cr.i54 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 -1, ptr %cr.i54, align 4, !annotation !172
  %call.i55 = call zeroext i1 @rtw89_mac_get_txpwr_cr(ptr noundef %rtwdev, i32 noundef 0, i32 noundef 53792, ptr noundef nonnull %cr.i54) #7
  br i1 %call.i55, label %if.end.i58, label %cond.end17.rtw89_mac_txpwr_write32.exit60_crit_edge

cond.end17.rtw89_mac_txpwr_write32.exit60_crit_edge: ; preds = %cond.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtw89_mac_txpwr_write32.exit60

if.end.i58:                                       ; preds = %cond.end17
  call void @__sanitizer_cov_trace_pc() #9
  %22 = ptrtoint ptr %cr.i54 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %cr.i54, align 4
  %hci.i.i56 = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 7
  %24 = ptrtoint ptr %hci.i.i56 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %hci.i.i56, align 8
  %write32.i.i57 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %25, i32 0, i32 12
  %26 = ptrtoint ptr %write32.i.i57 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %write32.i.i57, align 4
  call void %27(ptr noundef %rtwdev, i32 noundef %23, i32 noundef %cond18) #7
  br label %rtw89_mac_txpwr_write32.exit60

rtw89_mac_txpwr_write32.exit60:                   ; preds = %if.end.i58, %cond.end17.rtw89_mac_txpwr_write32.exit60_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cr.i54) #7
  call void (ptr, i32, ptr, ...) @__rtw89_debug(ptr noundef %rtwdev, i32 noundef 32, ptr noundef nonnull @.str.50, i32 noundef 53792, i32 noundef %cond18) #7
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal signext i8 @rtw8852a_btc_get_bt_rssi(ptr nocapture noundef readnone %rtwdev, i8 noundef signext %val) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i8 @llvm.smax.i8(i8 %val, i8 -100)
  %1 = tail call i8 @llvm.smin.i8(i8 %0, i8 0)
  %conv17 = add nsw i8 %1, 100
  ret i8 %conv17
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @rtw8852a_btc_bt_aci_imp(ptr nocapture noundef %rtwdev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %wl_btg_rx = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 51, i32 1, i32 14
  %0 = ptrtoint ptr %wl_btg_rx to i32
  call void @__asan_load4_noabort(i32 %0)
  %bf.load = load i32, ptr %wl_btg_rx, align 8
  %1 = and i32 %bf.load, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %bt3 = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 51, i32 0, i32 1
  %2 = ptrtoint ptr %bt3 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %bt3, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp.not = icmp eq i8 %3, 0
  br i1 %cmp.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %bf.clear7 = and i32 %bf.load, -4081
  %bf.set = or i32 %bf.clear7, 16
  %4 = ptrtoint ptr %wl_btg_rx to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %bf.set, ptr %wl_btg_rx, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtw8852a_btc_update_bt_cnt(ptr noundef %rtwdev) #0 align 64 {
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
  %call.i = tail call i32 %3(ptr noundef %rtwdev, i32 noundef 55876) #7
  %and = and i32 %call.i, 65535
  %arrayidx = getelementptr %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 51, i32 0, i32 4, i32 14
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %and, ptr %arrayidx, align 4
  %shr32 = lshr i32 %call.i, 16
  %arrayidx34 = getelementptr %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 51, i32 0, i32 4, i32 15
  %5 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %shr32, ptr %arrayidx34, align 4
  %6 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hci.i, align 8
  %read32.i89 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %7, i32 0, i32 9
  %8 = ptrtoint ptr %read32.i89 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %read32.i89, align 4
  %call.i90 = tail call i32 %9(ptr noundef %rtwdev, i32 noundef 55880) #7
  %and52 = and i32 %call.i90, 65535
  %arrayidx55 = getelementptr %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 51, i32 0, i32 4, i32 16
  %10 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %and52, ptr %arrayidx55, align 4
  %shr73 = lshr i32 %call.i90, 16
  %arrayidx75 = getelementptr %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 51, i32 0, i32 4, i32 17
  %11 = ptrtoint ptr %arrayidx75 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %shr73, ptr %arrayidx75, align 4
  %12 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hci.i, align 8
  %read32.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %13, i32 0, i32 9
  %14 = ptrtoint ptr %read32.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %read32.i.i, align 4
  %call.i.i = tail call i32 %15(ptr noundef %rtwdev, i32 noundef 55808) #7
  %or.i = or i32 %call.i.i, 4
  %16 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hci.i, align 8
  %write32.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %17, i32 0, i32 12
  %18 = ptrtoint ptr %write32.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %write32.i.i, align 4
  tail call void %19(ptr noundef %rtwdev, i32 noundef 55808, i32 noundef %or.i) #7
  %20 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hci.i, align 8
  %read32.i.i92 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %21, i32 0, i32 9
  %22 = ptrtoint ptr %read32.i.i92 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %read32.i.i92, align 4
  %call.i.i93 = tail call i32 %23(ptr noundef %rtwdev, i32 noundef 55872) #7
  %and.i = and i32 %call.i.i93, -65537
  %24 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %hci.i, align 8
  %write32.i.i94 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %25, i32 0, i32 12
  %26 = ptrtoint ptr %write32.i.i94 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %write32.i.i94, align 4
  tail call void %27(ptr noundef %rtwdev, i32 noundef 55872, i32 noundef %and.i) #7
  %28 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %hci.i, align 8
  %read32.i.i96 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %29, i32 0, i32 9
  %30 = ptrtoint ptr %read32.i.i96 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %read32.i.i96, align 4
  %call.i.i97 = tail call i32 %31(ptr noundef %rtwdev, i32 noundef 55872) #7
  %or.i98 = or i32 %call.i.i97, 65536
  %32 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %hci.i, align 8
  %write32.i.i99 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %33, i32 0, i32 12
  %34 = ptrtoint ptr %write32.i.i99 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %write32.i.i99, align 4
  tail call void %35(ptr noundef %rtwdev, i32 noundef 55872, i32 noundef %or.i98) #7
  %36 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %hci.i, align 8
  %read32.i.i101 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %37, i32 0, i32 9
  %38 = ptrtoint ptr %read32.i.i101 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %read32.i.i101, align 4
  %call.i.i102 = tail call i32 %39(ptr noundef %rtwdev, i32 noundef 55808) #7
  %and.i103 = and i32 %call.i.i102, -5
  %40 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %hci.i, align 8
  %write32.i.i104 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %41, i32 0, i32 12
  %42 = ptrtoint ptr %write32.i.i104 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %write32.i.i104, align 4
  tail call void %43(ptr noundef %rtwdev, i32 noundef 55808, i32 noundef %and.i103) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtw8852a_btc_wl_s1_standby(ptr noundef %rtwdev, i1 noundef zeroext %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %rf_mutex.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 12
  tail call void @mutex_lock_nested(ptr noundef %rf_mutex.i, i32 noundef 0) #7
  %chip.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 3
  %0 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip.i, align 4
  %ops.i = getelementptr inbounds %struct.rtw89_chip_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops.i, align 4
  %write_rf.i = getelementptr inbounds %struct.rtw89_chip_ops, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %write_rf.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %write_rf.i, align 4
  %call.i = tail call zeroext i1 %5(ptr noundef %rtwdev, i32 noundef 1, i32 noundef 239, i32 noundef 1048575, i32 noundef 524288) #7
  tail call void @mutex_unlock(ptr noundef %rf_mutex.i) #7
  tail call void @mutex_lock_nested(ptr noundef %rf_mutex.i, i32 noundef 0) #7
  %6 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %chip.i, align 4
  %ops.i8 = getelementptr inbounds %struct.rtw89_chip_info, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %ops.i8 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops.i8, align 4
  %write_rf.i9 = getelementptr inbounds %struct.rtw89_chip_ops, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %write_rf.i9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %write_rf.i9, align 4
  %call.i10 = tail call zeroext i1 %11(ptr noundef %rtwdev, i32 noundef 1, i32 noundef 51, i32 noundef 1048575, i32 noundef 1) #7
  tail call void @mutex_unlock(ptr noundef %rf_mutex.i) #7
  tail call void @mutex_lock_nested(ptr noundef %rf_mutex.i, i32 noundef 0) #7
  %12 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %chip.i, align 4
  %ops.i13 = getelementptr inbounds %struct.rtw89_chip_info, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %ops.i13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ops.i13, align 4
  %write_rf.i14 = getelementptr inbounds %struct.rtw89_chip_ops, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %write_rf.i14 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %write_rf.i14, align 4
  %call.i15 = tail call zeroext i1 %17(ptr noundef %rtwdev, i32 noundef 1, i32 noundef 62, i32 noundef 1048575, i32 noundef 1) #7
  tail call void @mutex_unlock(ptr noundef %rf_mutex.i) #7
  tail call void @mutex_lock_nested(ptr noundef %rf_mutex.i, i32 noundef 0) #7
  %18 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %chip.i, align 4
  %ops.i18 = getelementptr inbounds %struct.rtw89_chip_info, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %ops.i18 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ops.i18, align 4
  %write_rf.i19 = getelementptr inbounds %struct.rtw89_chip_ops, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %write_rf.i19 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %write_rf.i19, align 4
  %. = select i1 %state, i32 667004, i32 663584
  %call.i25 = tail call zeroext i1 %23(ptr noundef %rtwdev, i32 noundef 1, i32 noundef 63, i32 noundef 1048575, i32 noundef %.) #7
  tail call void @mutex_unlock(ptr noundef %rf_mutex.i) #7
  tail call void @mutex_lock_nested(ptr noundef %rf_mutex.i, i32 noundef 0) #7
  %24 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %chip.i, align 4
  %ops.i28 = getelementptr inbounds %struct.rtw89_chip_info, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %ops.i28 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ops.i28, align 4
  %write_rf.i29 = getelementptr inbounds %struct.rtw89_chip_ops, ptr %27, i32 0, i32 3
  %28 = ptrtoint ptr %write_rf.i29 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %write_rf.i29, align 4
  %call.i30 = tail call zeroext i1 %29(ptr noundef %rtwdev, i32 noundef 1, i32 noundef 239, i32 noundef 1048575, i32 noundef 0) #7
  tail call void @mutex_unlock(ptr noundef %rf_mutex.i) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rtw89_mac_get_txpwr_cr(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @rtw89_phy_get_txsc(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rtw8852a_ctrl_ch(ptr noundef %rtwdev, i8 noundef zeroext %central_ch) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %central_ch)
  %cmp = icmp ult i8 %central_ch, 15
  tail call fastcc void @rtw8852a_ch_setting(ptr noundef %rtwdev, i8 noundef zeroext %central_ch, i8 noundef zeroext 0)
  br i1 %cmp, label %if.end, label %if.end.thread

if.end:                                           ; preds = %entry
  tail call void @rtw89_phy_write32_idx(ptr noundef %rtwdev, i32 noundef 17988, i32 noundef -1073741824, i32 noundef 1, i32 noundef 0) #7
  %dbcc_en = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 2
  %0 = ptrtoint ptr %dbcc_en to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %dbcc_en, align 8, !range !171
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool5.not = icmp eq i8 %1, 0
  br i1 %tobool5.not, label %if.then8, label %if.then13

if.end.thread:                                    ; preds = %entry
  tail call void @rtw89_phy_write32_idx(ptr noundef %rtwdev, i32 noundef 17988, i32 noundef -1073741824, i32 noundef 0, i32 noundef 0) #7
  %dbcc_en156 = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 2
  %2 = ptrtoint ptr %dbcc_en156 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %dbcc_en156, align 8, !range !171
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool5.not157 = icmp eq i8 %3, 0
  br i1 %tobool5.not157, label %if.else9, label %if.else14

if.then8:                                         ; preds = %if.end
  tail call fastcc void @rtw8852a_ch_setting(ptr noundef %rtwdev, i8 noundef zeroext %central_ch, i8 noundef zeroext 1)
  tail call void @rtw89_phy_write32_idx(ptr noundef %rtwdev, i32 noundef 18200, i32 noundef -1073741824, i32 noundef 1, i32 noundef 0) #7
  %4 = zext i8 %central_ch to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.59)
  switch i8 %central_ch, label %land.lhs.true.i [
    i8 1, label %if.then8.if.end29_crit_edge
    i8 0, label %if.else80.i
  ]

if.then8.if.end29_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29

land.lhs.true.i:                                  ; preds = %if.then8
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %central_ch)
  %cmp6.i = icmp ult i8 %central_ch, 7
  br i1 %cmp6.i, label %land.lhs.true.i.if.end29_crit_edge, label %if.else9.i

land.lhs.true.i.if.end29_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29

if.else9.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp1(i8 11, i8 %central_ch)
  %cmp15.i = icmp ult i8 %central_ch, 11
  %spec.select = select i1 %cmp15.i, i32 107, i32 106
  br label %if.end29

if.else80.i:                                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29

if.else9:                                         ; preds = %if.end.thread
  tail call fastcc void @rtw8852a_ch_setting(ptr noundef %rtwdev, i8 noundef zeroext %central_ch, i8 noundef zeroext 1)
  tail call void @rtw89_phy_write32_idx(ptr noundef %rtwdev, i32 noundef 18200, i32 noundef -1073741824, i32 noundef 0, i32 noundef 0) #7
  %5 = zext i8 %central_ch to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.60)
  switch i8 %central_ch, label %if.else35.i16 [
    i8 36, label %if.else9.if.end29_crit_edge
    i8 38, label %if.else9.if.end29_crit_edge221
  ]

if.else9.if.end29_crit_edge221:                   ; preds = %if.else9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29

if.else9.if.end29_crit_edge:                      ; preds = %if.else9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29

if.else35.i16:                                    ; preds = %if.else9
  %6 = add i8 %central_ch, -40
  call void @__sanitizer_cov_trace_const_cmp1(i8 19, i8 %6)
  %7 = icmp ult i8 %6, 19
  br i1 %7, label %if.else35.i16.if.end29_crit_edge, label %if.else44.i17

if.else35.i16.if.end29_crit_edge:                 ; preds = %if.else35.i16
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29

if.else44.i17:                                    ; preds = %if.else35.i16
  %8 = add i8 %central_ch, -60
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %8)
  %9 = icmp ult i8 %8, 5
  br i1 %9, label %if.else44.i17.if.end29_crit_edge, label %if.else53.i18

if.else44.i17.if.end29_crit_edge:                 ; preds = %if.else44.i17
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29

if.else53.i18:                                    ; preds = %if.else44.i17
  %10 = zext i8 %central_ch to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.61)
  switch i8 %central_ch, label %if.else62.i19 [
    i8 100, label %if.else53.i18.if.end29_crit_edge
    i8 102, label %if.else53.i18.if.end29_crit_edge222
  ]

if.else53.i18.if.end29_crit_edge222:              ; preds = %if.else53.i18
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29

if.else53.i18.if.end29_crit_edge:                 ; preds = %if.else53.i18
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29

if.else62.i19:                                    ; preds = %if.else53.i18
  %11 = add i8 %central_ch, -104
  call void @__sanitizer_cov_trace_const_cmp1(i8 23, i8 %11)
  %12 = icmp ult i8 %11, 23
  br i1 %12, label %if.else62.i19.if.end29_crit_edge, label %if.else71.i20

if.else62.i19.if.end29_crit_edge:                 ; preds = %if.else62.i19
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29

if.else71.i20:                                    ; preds = %if.else62.i19
  call void @__sanitizer_cov_trace_const_cmp1(i8 -104, i8 %central_ch)
  %13 = icmp slt i8 %central_ch, -104
  br i1 %13, label %if.else71.i20.if.end29_crit_edge, label %if.else80.i22

if.else71.i20.if.end29_crit_edge:                 ; preds = %if.else71.i20
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29

if.else80.i22:                                    ; preds = %if.else71.i20
  call void @__sanitizer_cov_trace_pc() #9
  %14 = add i8 %central_ch, 103
  call void @__sanitizer_cov_trace_const_cmp1(i8 25, i8 %14)
  %15 = icmp ult i8 %14, 25
  %spec.select.i21 = select i1 %15, i32 45, i32 0
  br label %if.end29

if.then13:                                        ; preds = %if.end
  %hci.i.i.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 7
  %16 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hci.i.i.i, align 8
  %read32.i.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %17, i32 0, i32 9
  %18 = ptrtoint ptr %read32.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %read32.i.i.i, align 4
  %call.i.i.i = tail call i32 %19(ptr noundef %rtwdev, i32 noundef 84336) #7
  %and.i.i = and i32 %call.i.i.i, -3
  %20 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hci.i.i.i, align 8
  %write32.i.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %21, i32 0, i32 12
  %22 = ptrtoint ptr %write32.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %write32.i.i.i, align 4
  tail call void %23(ptr noundef %rtwdev, i32 noundef 84336, i32 noundef %and.i.i) #7
  %24 = zext i8 %central_ch to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.62)
  switch i8 %central_ch, label %land.lhs.true.i26 [
    i8 1, label %if.then13.if.end29_crit_edge
    i8 0, label %if.else80.i38
  ]

if.then13.if.end29_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29

land.lhs.true.i26:                                ; preds = %if.then13
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %central_ch)
  %cmp6.i25 = icmp ult i8 %central_ch, 7
  br i1 %cmp6.i25, label %land.lhs.true.i26.if.end29_crit_edge, label %if.else9.i28

land.lhs.true.i26.if.end29_crit_edge:             ; preds = %land.lhs.true.i26
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29

if.else9.i28:                                     ; preds = %land.lhs.true.i26
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp1(i8 11, i8 %central_ch)
  %cmp15.i27 = icmp ult i8 %central_ch, 11
  %spec.select158 = select i1 %cmp15.i27, i32 107, i32 106
  br label %if.end29

if.else80.i38:                                    ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29

if.else14:                                        ; preds = %if.end.thread
  %hci.i.i.i41 = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 7
  %25 = ptrtoint ptr %hci.i.i.i41 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %hci.i.i.i41, align 8
  %read32.i.i.i42 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %26, i32 0, i32 9
  %27 = ptrtoint ptr %read32.i.i.i42 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %read32.i.i.i42, align 4
  %call.i.i.i43 = tail call i32 %28(ptr noundef %rtwdev, i32 noundef 84336) #7
  %or.i.i = or i32 %call.i.i.i43, 2
  %29 = ptrtoint ptr %hci.i.i.i41 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %hci.i.i.i41, align 8
  %write32.i.i.i44 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %30, i32 0, i32 12
  %31 = ptrtoint ptr %write32.i.i.i44 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %write32.i.i.i44, align 4
  tail call void %32(ptr noundef %rtwdev, i32 noundef 84336, i32 noundef %or.i.i) #7
  %33 = zext i8 %central_ch to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.63)
  switch i8 %central_ch, label %if.else35.i52 [
    i8 36, label %if.else14.if.end29_crit_edge
    i8 38, label %if.else14.if.end29_crit_edge223
  ]

if.else14.if.end29_crit_edge223:                  ; preds = %if.else14
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29

if.else14.if.end29_crit_edge:                     ; preds = %if.else14
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29

if.else35.i52:                                    ; preds = %if.else14
  %34 = add i8 %central_ch, -40
  call void @__sanitizer_cov_trace_const_cmp1(i8 19, i8 %34)
  %35 = icmp ult i8 %34, 19
  br i1 %35, label %if.else35.i52.if.end29_crit_edge, label %if.else44.i53

if.else35.i52.if.end29_crit_edge:                 ; preds = %if.else35.i52
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29

if.else44.i53:                                    ; preds = %if.else35.i52
  %36 = add i8 %central_ch, -60
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %36)
  %37 = icmp ult i8 %36, 5
  br i1 %37, label %if.else44.i53.if.end29_crit_edge, label %if.else53.i54

if.else44.i53.if.end29_crit_edge:                 ; preds = %if.else44.i53
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29

if.else53.i54:                                    ; preds = %if.else44.i53
  %38 = zext i8 %central_ch to i64
  call void @__sanitizer_cov_trace_switch(i64 %38, ptr @__sancov_gen_cov_switch_values.64)
  switch i8 %central_ch, label %if.else62.i55 [
    i8 100, label %if.else53.i54.if.end29_crit_edge
    i8 102, label %if.else53.i54.if.end29_crit_edge224
  ]

if.else53.i54.if.end29_crit_edge224:              ; preds = %if.else53.i54
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29

if.else53.i54.if.end29_crit_edge:                 ; preds = %if.else53.i54
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29

if.else62.i55:                                    ; preds = %if.else53.i54
  %39 = add i8 %central_ch, -104
  call void @__sanitizer_cov_trace_const_cmp1(i8 23, i8 %39)
  %40 = icmp ult i8 %39, 23
  br i1 %40, label %if.else62.i55.if.end29_crit_edge, label %if.else71.i56

if.else62.i55.if.end29_crit_edge:                 ; preds = %if.else62.i55
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29

if.else71.i56:                                    ; preds = %if.else62.i55
  call void @__sanitizer_cov_trace_const_cmp1(i8 -104, i8 %central_ch)
  %41 = icmp slt i8 %central_ch, -104
  br i1 %41, label %if.else71.i56.if.end29_crit_edge, label %if.else80.i58

if.else71.i56.if.end29_crit_edge:                 ; preds = %if.else71.i56
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29

if.else80.i58:                                    ; preds = %if.else71.i56
  call void @__sanitizer_cov_trace_pc() #9
  %42 = add i8 %central_ch, 103
  call void @__sanitizer_cov_trace_const_cmp1(i8 25, i8 %42)
  %43 = icmp ult i8 %42, 25
  %spec.select.i57 = select i1 %43, i32 45, i32 0
  br label %if.end29

if.end29:                                         ; preds = %if.else80.i58, %if.else71.i56.if.end29_crit_edge, %if.else62.i55.if.end29_crit_edge, %if.else53.i54.if.end29_crit_edge, %if.else53.i54.if.end29_crit_edge224, %if.else44.i53.if.end29_crit_edge, %if.else35.i52.if.end29_crit_edge, %if.else14.if.end29_crit_edge, %if.else14.if.end29_crit_edge223, %if.else80.i38, %if.else9.i28, %land.lhs.true.i26.if.end29_crit_edge, %if.then13.if.end29_crit_edge, %if.else80.i22, %if.else71.i20.if.end29_crit_edge, %if.else62.i19.if.end29_crit_edge, %if.else53.i18.if.end29_crit_edge, %if.else53.i18.if.end29_crit_edge222, %if.else44.i17.if.end29_crit_edge, %if.else35.i16.if.end29_crit_edge, %if.else9.if.end29_crit_edge, %if.else9.if.end29_crit_edge221, %if.else80.i, %if.else9.i, %land.lhs.true.i.if.end29_crit_edge, %if.then8.if.end29_crit_edge
  %retval.0.i23.sink.sink = phi i32 [ 109, %if.then8.if.end29_crit_edge ], [ 108, %land.lhs.true.i.if.end29_crit_edge ], [ 0, %if.else80.i ], [ %spec.select, %if.else9.i ], [ 109, %if.then13.if.end29_crit_edge ], [ 108, %land.lhs.true.i26.if.end29_crit_edge ], [ 0, %if.else80.i38 ], [ %spec.select158, %if.else9.i28 ], [ 51, %if.else9.if.end29_crit_edge ], [ 51, %if.else9.if.end29_crit_edge221 ], [ 50, %if.else35.i16.if.end29_crit_edge ], [ 49, %if.else44.i17.if.end29_crit_edge ], [ 48, %if.else53.i18.if.end29_crit_edge ], [ 48, %if.else53.i18.if.end29_crit_edge222 ], [ 47, %if.else62.i19.if.end29_crit_edge ], [ 46, %if.else71.i20.if.end29_crit_edge ], [ %spec.select.i21, %if.else80.i22 ], [ 51, %if.else14.if.end29_crit_edge ], [ 51, %if.else14.if.end29_crit_edge223 ], [ 50, %if.else35.i52.if.end29_crit_edge ], [ 49, %if.else44.i53.if.end29_crit_edge ], [ 48, %if.else53.i54.if.end29_crit_edge ], [ 48, %if.else53.i54.if.end29_crit_edge224 ], [ 47, %if.else62.i55.if.end29_crit_edge ], [ 46, %if.else71.i56.if.end29_crit_edge ], [ %spec.select.i57, %if.else80.i58 ]
  %.sink = phi i32 [ 1, %if.then8.if.end29_crit_edge ], [ 1, %land.lhs.true.i.if.end29_crit_edge ], [ 1, %if.else80.i ], [ 1, %if.else9.i ], [ 1, %if.then13.if.end29_crit_edge ], [ 1, %land.lhs.true.i26.if.end29_crit_edge ], [ 1, %if.else80.i38 ], [ 1, %if.else9.i28 ], [ 0, %if.else9.if.end29_crit_edge ], [ 0, %if.else9.if.end29_crit_edge221 ], [ 0, %if.else35.i16.if.end29_crit_edge ], [ 0, %if.else44.i17.if.end29_crit_edge ], [ 0, %if.else53.i18.if.end29_crit_edge ], [ 0, %if.else53.i18.if.end29_crit_edge222 ], [ 0, %if.else62.i19.if.end29_crit_edge ], [ 0, %if.else71.i20.if.end29_crit_edge ], [ 0, %if.else80.i22 ], [ 0, %if.else14.if.end29_crit_edge ], [ 0, %if.else14.if.end29_crit_edge223 ], [ 0, %if.else35.i52.if.end29_crit_edge ], [ 0, %if.else44.i53.if.end29_crit_edge ], [ 0, %if.else53.i54.if.end29_crit_edge ], [ 0, %if.else53.i54.if.end29_crit_edge224 ], [ 0, %if.else62.i55.if.end29_crit_edge ], [ 0, %if.else71.i56.if.end29_crit_edge ], [ 0, %if.else80.i58 ]
  tail call void @rtw89_phy_write32_idx(ptr noundef %rtwdev, i32 noundef 18804, i32 noundef 127, i32 noundef %retval.0.i23.sink.sink, i32 noundef 0) #7
  tail call void @rtw89_phy_write32_idx(ptr noundef %rtwdev, i32 noundef 17560, i32 noundef 1073741824, i32 noundef %.sink, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp1(i8 14, i8 %central_ch)
  %cmp31 = icmp eq i8 %central_ch, 14
  %hci.i.i.i61 = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 7
  %. = select i1 %cmp31, i32 3871743, i32 4006911
  %.214 = select i1 %cmp31, i32 1852126, i32 2732884
  %.215 = select i1 %cmp31, i32 16625837, i32 1032648
  %.216 = select i1 %cmp31, i32 16125806, i32 16625747
  %.217 = select i1 %cmp31, i32 16617362, i32 16281498
  %.218 = select i1 %cmp31, i32 184337, i32 16445330
  %.219 = select i1 %cmp31, i32 114732, i32 16670668
  %.220 = select i1 %cmp31, i32 16773130, i32 16769013
  %44 = ptrtoint ptr %hci.i.i.i61 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %hci.i.i.i61, align 8
  %read32.i.i.i109 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %45, i32 0, i32 9
  %46 = ptrtoint ptr %read32.i.i.i109 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %read32.i.i.i109, align 4
  %call.i.i.i110 = tail call i32 %47(ptr noundef %rtwdev, i32 noundef 74496) #7
  %and21.i.i111 = and i32 %call.i.i.i110, -16777216
  %or.i.i112 = or i32 %and21.i.i111, %.
  %48 = ptrtoint ptr %hci.i.i.i61 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %hci.i.i.i61, align 8
  %write32.i.i.i113 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %49, i32 0, i32 12
  %50 = ptrtoint ptr %write32.i.i.i113 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %write32.i.i.i113, align 4
  tail call void %51(ptr noundef %rtwdev, i32 noundef 74496, i32 noundef %or.i.i112) #7
  %52 = ptrtoint ptr %hci.i.i.i61 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %hci.i.i.i61, align 8
  %read32.i.i.i115 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %53, i32 0, i32 9
  %54 = ptrtoint ptr %read32.i.i.i115 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %read32.i.i.i115, align 4
  %call.i.i.i116 = tail call i32 %55(ptr noundef %rtwdev, i32 noundef 74500) #7
  %and21.i.i117 = and i32 %call.i.i.i116, -16777216
  %or.i.i118 = or i32 %and21.i.i117, %.214
  %56 = ptrtoint ptr %hci.i.i.i61 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %hci.i.i.i61, align 8
  %write32.i.i.i119 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %57, i32 0, i32 12
  %58 = ptrtoint ptr %write32.i.i.i119 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %write32.i.i.i119, align 4
  tail call void %59(ptr noundef %rtwdev, i32 noundef 74500, i32 noundef %or.i.i118) #7
  %60 = ptrtoint ptr %hci.i.i.i61 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %hci.i.i.i61, align 8
  %read32.i.i.i121 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %61, i32 0, i32 9
  %62 = ptrtoint ptr %read32.i.i.i121 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %read32.i.i.i121, align 4
  %call.i.i.i122 = tail call i32 %63(ptr noundef %rtwdev, i32 noundef 74504) #7
  %and21.i.i123 = and i32 %call.i.i.i122, -16777216
  %or.i.i124 = or i32 %and21.i.i123, %.215
  %64 = ptrtoint ptr %hci.i.i.i61 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %hci.i.i.i61, align 8
  %write32.i.i.i125 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %65, i32 0, i32 12
  %66 = ptrtoint ptr %write32.i.i.i125 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %write32.i.i.i125, align 4
  tail call void %67(ptr noundef %rtwdev, i32 noundef 74504, i32 noundef %or.i.i124) #7
  %68 = ptrtoint ptr %hci.i.i.i61 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %hci.i.i.i61, align 8
  %read32.i.i.i127 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %69, i32 0, i32 9
  %70 = ptrtoint ptr %read32.i.i.i127 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %read32.i.i.i127, align 4
  %call.i.i.i128 = tail call i32 %71(ptr noundef %rtwdev, i32 noundef 74508) #7
  %and21.i.i129 = and i32 %call.i.i.i128, -16777216
  %or.i.i130 = or i32 %and21.i.i129, %.216
  %72 = ptrtoint ptr %hci.i.i.i61 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %hci.i.i.i61, align 8
  %write32.i.i.i131 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %73, i32 0, i32 12
  %74 = ptrtoint ptr %write32.i.i.i131 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %write32.i.i.i131, align 4
  tail call void %75(ptr noundef %rtwdev, i32 noundef 74508, i32 noundef %or.i.i130) #7
  %76 = ptrtoint ptr %hci.i.i.i61 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %hci.i.i.i61, align 8
  %read32.i.i.i133 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %77, i32 0, i32 9
  %78 = ptrtoint ptr %read32.i.i.i133 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %read32.i.i.i133, align 4
  %call.i.i.i134 = tail call i32 %79(ptr noundef %rtwdev, i32 noundef 74512) #7
  %and21.i.i135 = and i32 %call.i.i.i134, -16777216
  %or.i.i136 = or i32 %and21.i.i135, %.217
  %80 = ptrtoint ptr %hci.i.i.i61 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %hci.i.i.i61, align 8
  %write32.i.i.i137 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %81, i32 0, i32 12
  %82 = ptrtoint ptr %write32.i.i.i137 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %write32.i.i.i137, align 4
  tail call void %83(ptr noundef %rtwdev, i32 noundef 74512, i32 noundef %or.i.i136) #7
  %84 = ptrtoint ptr %hci.i.i.i61 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %hci.i.i.i61, align 8
  %read32.i.i.i139 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %85, i32 0, i32 9
  %86 = ptrtoint ptr %read32.i.i.i139 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %read32.i.i.i139, align 4
  %call.i.i.i140 = tail call i32 %87(ptr noundef %rtwdev, i32 noundef 74516) #7
  %and21.i.i141 = and i32 %call.i.i.i140, -16777216
  %or.i.i142 = or i32 %and21.i.i141, %.218
  %88 = ptrtoint ptr %hci.i.i.i61 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %hci.i.i.i61, align 8
  %write32.i.i.i143 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %89, i32 0, i32 12
  %90 = ptrtoint ptr %write32.i.i.i143 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %write32.i.i.i143, align 4
  tail call void %91(ptr noundef %rtwdev, i32 noundef 74516, i32 noundef %or.i.i142) #7
  %92 = ptrtoint ptr %hci.i.i.i61 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %hci.i.i.i61, align 8
  %read32.i.i.i145 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %93, i32 0, i32 9
  %94 = ptrtoint ptr %read32.i.i.i145 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %read32.i.i.i145, align 4
  %call.i.i.i146 = tail call i32 %95(ptr noundef %rtwdev, i32 noundef 74520) #7
  %and21.i.i147 = and i32 %call.i.i.i146, -16777216
  %or.i.i148 = or i32 %and21.i.i147, %.219
  %96 = ptrtoint ptr %hci.i.i.i61 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %hci.i.i.i61, align 8
  %write32.i.i.i149 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %97, i32 0, i32 12
  %98 = ptrtoint ptr %write32.i.i.i149 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %write32.i.i.i149, align 4
  tail call void %99(ptr noundef %rtwdev, i32 noundef 74520, i32 noundef %or.i.i148) #7
  %100 = ptrtoint ptr %hci.i.i.i61 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %hci.i.i.i61, align 8
  %read32.i.i.i151 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %101, i32 0, i32 9
  %102 = ptrtoint ptr %read32.i.i.i151 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %read32.i.i.i151, align 4
  %call.i.i.i152 = tail call i32 %103(ptr noundef %rtwdev, i32 noundef 74524) #7
  %and21.i.i153 = and i32 %call.i.i.i152, -16777216
  %or.i.i154 = or i32 %and21.i.i153, %.220
  %104 = ptrtoint ptr %hci.i.i.i61 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %hci.i.i.i61, align 8
  %write32.i.i.i155 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %105, i32 0, i32 12
  %106 = ptrtoint ptr %write32.i.i.i155 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %write32.i.i.i155, align 4
  tail call void %107(ptr noundef %rtwdev, i32 noundef 74524, i32 noundef %or.i.i154) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rtw8852a_ctrl_bw(ptr noundef %rtwdev, i8 noundef zeroext %pri_ch, i8 noundef zeroext %bw) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i8 %bw to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.65)
  switch i8 %bw, label %do.end [
    i8 5, label %sw.bb
    i8 6, label %sw.bb1
    i8 0, label %sw.bb2
    i8 1, label %sw.bb3
    i8 2, label %sw.bb7
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @rtw89_phy_write32_idx(ptr noundef %rtwdev, i32 noundef 18804, i32 noundef -1073741824, i32 noundef 0, i32 noundef 0) #7
  tail call void @rtw89_phy_write32_idx(ptr noundef %rtwdev, i32 noundef 18808, i32 noundef 12288, i32 noundef 1, i32 noundef 0) #7
  tail call void @rtw89_phy_write32_idx(ptr noundef %rtwdev, i32 noundef 18808, i32 noundef 3840, i32 noundef 0, i32 noundef 0) #7
  br label %if.then13

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @rtw89_phy_write32_idx(ptr noundef %rtwdev, i32 noundef 18804, i32 noundef -1073741824, i32 noundef 0, i32 noundef 0) #7
  tail call void @rtw89_phy_write32_idx(ptr noundef %rtwdev, i32 noundef 18808, i32 noundef 12288, i32 noundef 2, i32 noundef 0) #7
  tail call void @rtw89_phy_write32_idx(ptr noundef %rtwdev, i32 noundef 18808, i32 noundef 3840, i32 noundef 0, i32 noundef 0) #7
  br label %if.then13

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @rtw89_phy_write32_idx(ptr noundef %rtwdev, i32 noundef 18804, i32 noundef -1073741824, i32 noundef 0, i32 noundef 0) #7
  tail call void @rtw89_phy_write32_idx(ptr noundef %rtwdev, i32 noundef 18808, i32 noundef 12288, i32 noundef 0, i32 noundef 0) #7
  tail call void @rtw89_phy_write32_idx(ptr noundef %rtwdev, i32 noundef 18808, i32 noundef 3840, i32 noundef 0, i32 noundef 0) #7
  br label %if.then13

sw.bb3:                                           ; preds = %entry
  tail call void @rtw89_phy_write32_idx(ptr noundef %rtwdev, i32 noundef 18804, i32 noundef -1073741824, i32 noundef 1, i32 noundef 0) #7
  tail call void @rtw89_phy_write32_idx(ptr noundef %rtwdev, i32 noundef 18808, i32 noundef 12288, i32 noundef 0, i32 noundef 0) #7
  %conv4 = zext i8 %pri_ch to i32
  tail call void @rtw89_phy_write32_idx(ptr noundef %rtwdev, i32 noundef 18808, i32 noundef 3840, i32 noundef %conv4, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %pri_ch)
  %cmp = icmp eq i8 %pri_ch, 1
  %hci.i.i.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 7
  %1 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hci.i.i.i, align 8
  %read32.i.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %2, i32 0, i32 9
  %3 = ptrtoint ptr %read32.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %read32.i.i.i, align 4
  %call.i.i.i = tail call i32 %4(ptr noundef %rtwdev, i32 noundef 74620) #7
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #9
  %or.i.i = or i32 %call.i.i.i, 1
  %5 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hci.i.i.i, align 8
  %write32.i.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %6, i32 0, i32 12
  %7 = ptrtoint ptr %write32.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %write32.i.i.i, align 4
  tail call void %8(ptr noundef %rtwdev, i32 noundef 74620, i32 noundef %or.i.i) #7
  br label %if.then13

if.else:                                          ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #9
  %and21.i.i4 = and i32 %call.i.i.i, -2
  %9 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hci.i.i.i, align 8
  %write32.i.i.i5 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %10, i32 0, i32 12
  %11 = ptrtoint ptr %write32.i.i.i5 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %write32.i.i.i5, align 4
  tail call void %12(ptr noundef %rtwdev, i32 noundef 74620, i32 noundef %and21.i.i4) #7
  br label %if.then13

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @rtw89_phy_write32_idx(ptr noundef %rtwdev, i32 noundef 18804, i32 noundef -1073741824, i32 noundef 2, i32 noundef 0) #7
  tail call void @rtw89_phy_write32_idx(ptr noundef %rtwdev, i32 noundef 18808, i32 noundef 12288, i32 noundef 0, i32 noundef 0) #7
  %conv8 = zext i8 %pri_ch to i32
  tail call void @rtw89_phy_write32_idx(ptr noundef %rtwdev, i32 noundef 18808, i32 noundef 3840, i32 noundef %conv8, i32 noundef 0) #7
  br label %if.then13

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %conv = zext i8 %bw to i32
  %dev = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 1
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 4
  %conv10 = zext i8 %pri_ch to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %14, ptr noundef nonnull @.str.18, i32 noundef %conv, i32 noundef %conv10) #10
  br label %if.then13

if.then13:                                        ; preds = %do.end, %sw.bb7, %if.else, %if.then, %sw.bb2, %sw.bb1, %sw.bb
  tail call fastcc void @rtw8852a_bw_setting(ptr noundef %rtwdev, i8 noundef zeroext %bw, i8 noundef zeroext 0)
  %dbcc_en = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 2
  %15 = ptrtoint ptr %dbcc_en to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %dbcc_en, align 8, !range !171
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool.not = icmp eq i8 %16, 0
  br i1 %tobool.not, label %if.then14, label %if.then13.if.end17_crit_edge

if.then13.if.end17_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17

if.then14:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @rtw8852a_bw_setting(ptr noundef %rtwdev, i8 noundef zeroext %bw, i8 noundef zeroext 1)
  br label %if.end17

if.end17:                                         ; preds = %if.then14, %if.then13.if.end17_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rtw8852a_ch_setting(ptr noundef %rtwdev, i8 noundef zeroext %central_ch, i8 noundef zeroext %path) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %path to i32
  %rf_mutex.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 12
  tail call void @mutex_lock_nested(ptr noundef %rf_mutex.i, i32 noundef 0) #7
  %chip.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 3
  %0 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip.i, align 4
  %ops.i = getelementptr inbounds %struct.rtw89_chip_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops.i, align 4
  %read_rf.i = getelementptr inbounds %struct.rtw89_chip_ops, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %read_rf.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %read_rf.i, align 4
  %call.i = tail call i32 %5(ptr noundef %rtwdev, i32 noundef %conv, i32 noundef 24, i32 noundef 1048575) #7
  tail call void @mutex_unlock(ptr noundef %rf_mutex.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %cmp = icmp eq i32 %call.i, -1
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 1
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %7, ptr noundef nonnull @.str.16, i32 noundef %conv) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %and = and i32 %call.i, -197632
  %conv3 = zext i8 %central_ch to i32
  %or = or i32 %and, %conv3
  call void @__sanitizer_cov_trace_const_cmp1(i8 14, i8 %central_ch)
  %cmp5 = icmp ugt i8 %central_ch, 14
  %or8 = or i32 %or, 65792
  %spec.select = select i1 %cmp5, i32 %or8, i32 %or
  tail call void @mutex_lock_nested(ptr noundef %rf_mutex.i, i32 noundef 0) #7
  %8 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %chip.i, align 4
  %ops.i22 = getelementptr inbounds %struct.rtw89_chip_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %ops.i22 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ops.i22, align 4
  %write_rf.i = getelementptr inbounds %struct.rtw89_chip_ops, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %write_rf.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %write_rf.i, align 4
  %call.i23 = tail call zeroext i1 %13(ptr noundef %rtwdev, i32 noundef %conv, i32 noundef 24, i32 noundef 1048575, i32 noundef %spec.select) #7
  tail call void @mutex_unlock(ptr noundef %rf_mutex.i) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rtw8852a_bw_setting(ptr noundef %rtwdev, i8 noundef zeroext %bw, i8 noundef zeroext %path) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %path to i32
  %rf_mutex.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 12
  tail call void @mutex_lock_nested(ptr noundef %rf_mutex.i, i32 noundef 0) #7
  %chip.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 3
  %0 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip.i, align 4
  %ops.i = getelementptr inbounds %struct.rtw89_chip_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops.i, align 4
  %read_rf.i = getelementptr inbounds %struct.rtw89_chip_ops, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %read_rf.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %read_rf.i, align 4
  %call.i = tail call i32 %5(ptr noundef %rtwdev, i32 noundef %conv, i32 noundef 24, i32 noundef 1048575) #7
  tail call void @mutex_unlock(ptr noundef %rf_mutex.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %cmp = icmp eq i32 %call.i, -1
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 1
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %7, ptr noundef nonnull @.str.16, i32 noundef %conv) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %and = and i32 %call.i, -3073
  %8 = zext i8 %bw to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.66)
  switch i8 %bw, label %do.end32 [
    i8 5, label %sw.bb
    i8 6, label %sw.bb6
    i8 0, label %sw.bb12
    i8 1, label %sw.bb18
    i8 2, label %sw.bb24
  ]

sw.bb:                                            ; preds = %if.end
  %arrayidx = getelementptr [2 x i32], ptr @__const.rtw8852a_bw_setting.adc_sel, i32 0, i32 %conv
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  %or.i = or i32 %10, 65536
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %path)
  %11 = icmp ult i8 %path, 2
  br i1 %11, label %sw.bb.rtw89_phy_write32_mask.exit_crit_edge, label %do.end.i.i, !prof !173

sw.bb.rtw89_phy_write32_mask.exit_crit_edge:      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtw89_phy_write32_mask.exit

do.end.i.i:                                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 3031, i32 noundef 9, ptr noundef nonnull @.str.10, i32 noundef %or.i) #7
  br label %rtw89_phy_write32_mask.exit

rtw89_phy_write32_mask.exit:                      ; preds = %do.end.i.i, %sw.bb.rtw89_phy_write32_mask.exit_crit_edge
  %hci.i.i.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 7
  %12 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hci.i.i.i, align 8
  %read32.i.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %13, i32 0, i32 9
  %14 = ptrtoint ptr %read32.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %read32.i.i.i, align 4
  %call.i.i.i = tail call i32 %15(ptr noundef %rtwdev, i32 noundef %or.i) #7
  %and21.i.i = and i32 %call.i.i.i, -24577
  %or.i.i = or i32 %and21.i.i, 8192
  %16 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hci.i.i.i, align 8
  %write32.i.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %17, i32 0, i32 12
  %18 = ptrtoint ptr %write32.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %write32.i.i.i, align 4
  tail call void %19(ptr noundef %rtwdev, i32 noundef %or.i, i32 noundef %or.i.i) #7
  %arrayidx5 = getelementptr [2 x i32], ptr @__const.rtw8852a_bw_setting.wbadc_sel, i32 0, i32 %conv
  %20 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx5, align 4
  %or.i69 = or i32 %21, 65536
  br i1 %11, label %rtw89_phy_write32_mask.exit.rtw89_phy_write32_mask.exit78_crit_edge, label %do.end.i.i72, !prof !173

rtw89_phy_write32_mask.exit.rtw89_phy_write32_mask.exit78_crit_edge: ; preds = %rtw89_phy_write32_mask.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtw89_phy_write32_mask.exit78

do.end.i.i72:                                     ; preds = %rtw89_phy_write32_mask.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 3031, i32 noundef 9, ptr noundef nonnull @.str.10, i32 noundef %or.i69) #7
  br label %rtw89_phy_write32_mask.exit78

rtw89_phy_write32_mask.exit78:                    ; preds = %do.end.i.i72, %rtw89_phy_write32_mask.exit.rtw89_phy_write32_mask.exit78_crit_edge
  %22 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %hci.i.i.i, align 8
  %read32.i.i.i74 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %23, i32 0, i32 9
  %24 = ptrtoint ptr %read32.i.i.i74 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %read32.i.i.i74, align 4
  %call.i.i.i75 = tail call i32 %25(ptr noundef %rtwdev, i32 noundef %or.i69) #7
  %and21.i.i76 = and i32 %call.i.i.i75, -49
  %26 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %hci.i.i.i, align 8
  %write32.i.i.i77 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %27, i32 0, i32 12
  %28 = ptrtoint ptr %write32.i.i.i77 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %write32.i.i.i77, align 4
  tail call void %29(ptr noundef %rtwdev, i32 noundef %or.i69, i32 noundef %and21.i.i76) #7
  %or = or i32 %call.i, 3072
  br label %sw.epilog

sw.bb6:                                           ; preds = %if.end
  %arrayidx8 = getelementptr [2 x i32], ptr @__const.rtw8852a_bw_setting.adc_sel, i32 0, i32 %conv
  %30 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx8, align 4
  %or.i79 = or i32 %31, 65536
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %path)
  %32 = icmp ult i8 %path, 2
  br i1 %32, label %sw.bb6.rtw89_phy_write32_mask.exit89_crit_edge, label %do.end.i.i82, !prof !173

sw.bb6.rtw89_phy_write32_mask.exit89_crit_edge:   ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtw89_phy_write32_mask.exit89

do.end.i.i82:                                     ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 3031, i32 noundef 9, ptr noundef nonnull @.str.10, i32 noundef %or.i79) #7
  br label %rtw89_phy_write32_mask.exit89

rtw89_phy_write32_mask.exit89:                    ; preds = %do.end.i.i82, %sw.bb6.rtw89_phy_write32_mask.exit89_crit_edge
  %hci.i.i.i83 = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 7
  %33 = ptrtoint ptr %hci.i.i.i83 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %hci.i.i.i83, align 8
  %read32.i.i.i84 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %34, i32 0, i32 9
  %35 = ptrtoint ptr %read32.i.i.i84 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %read32.i.i.i84, align 4
  %call.i.i.i85 = tail call i32 %36(ptr noundef %rtwdev, i32 noundef %or.i79) #7
  %and21.i.i86 = and i32 %call.i.i.i85, -24577
  %or.i.i87 = or i32 %and21.i.i86, 16384
  %37 = ptrtoint ptr %hci.i.i.i83 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %hci.i.i.i83, align 8
  %write32.i.i.i88 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %38, i32 0, i32 12
  %39 = ptrtoint ptr %write32.i.i.i88 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %write32.i.i.i88, align 4
  tail call void %40(ptr noundef %rtwdev, i32 noundef %or.i79, i32 noundef %or.i.i87) #7
  %arrayidx10 = getelementptr [2 x i32], ptr @__const.rtw8852a_bw_setting.wbadc_sel, i32 0, i32 %conv
  %41 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx10, align 4
  %or.i90 = or i32 %42, 65536
  br i1 %32, label %rtw89_phy_write32_mask.exit89.rtw89_phy_write32_mask.exit100_crit_edge, label %do.end.i.i93, !prof !173

rtw89_phy_write32_mask.exit89.rtw89_phy_write32_mask.exit100_crit_edge: ; preds = %rtw89_phy_write32_mask.exit89
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtw89_phy_write32_mask.exit100

do.end.i.i93:                                     ; preds = %rtw89_phy_write32_mask.exit89
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 3031, i32 noundef 9, ptr noundef nonnull @.str.10, i32 noundef %or.i90) #7
  br label %rtw89_phy_write32_mask.exit100

rtw89_phy_write32_mask.exit100:                   ; preds = %do.end.i.i93, %rtw89_phy_write32_mask.exit89.rtw89_phy_write32_mask.exit100_crit_edge
  %43 = ptrtoint ptr %hci.i.i.i83 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %hci.i.i.i83, align 8
  %read32.i.i.i95 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %44, i32 0, i32 9
  %45 = ptrtoint ptr %read32.i.i.i95 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %read32.i.i.i95, align 4
  %call.i.i.i96 = tail call i32 %46(ptr noundef %rtwdev, i32 noundef %or.i90) #7
  %and21.i.i97 = and i32 %call.i.i.i96, -49
  %or.i.i98 = or i32 %and21.i.i97, 16
  %47 = ptrtoint ptr %hci.i.i.i83 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %hci.i.i.i83, align 8
  %write32.i.i.i99 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %48, i32 0, i32 12
  %49 = ptrtoint ptr %write32.i.i.i99 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %write32.i.i.i99, align 4
  tail call void %50(ptr noundef %rtwdev, i32 noundef %or.i90, i32 noundef %or.i.i98) #7
  %or11 = or i32 %call.i, 3072
  br label %sw.epilog

sw.bb12:                                          ; preds = %if.end
  %arrayidx14 = getelementptr [2 x i32], ptr @__const.rtw8852a_bw_setting.adc_sel, i32 0, i32 %conv
  %51 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx14, align 4
  %or.i101 = or i32 %52, 65536
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %path)
  %53 = icmp ult i8 %path, 2
  br i1 %53, label %sw.bb12.rtw89_phy_write32_mask.exit110_crit_edge, label %do.end.i.i104, !prof !173

sw.bb12.rtw89_phy_write32_mask.exit110_crit_edge: ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtw89_phy_write32_mask.exit110

do.end.i.i104:                                    ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 3031, i32 noundef 9, ptr noundef nonnull @.str.10, i32 noundef %or.i101) #7
  br label %rtw89_phy_write32_mask.exit110

rtw89_phy_write32_mask.exit110:                   ; preds = %do.end.i.i104, %sw.bb12.rtw89_phy_write32_mask.exit110_crit_edge
  %hci.i.i.i105 = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 7
  %54 = ptrtoint ptr %hci.i.i.i105 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %hci.i.i.i105, align 8
  %read32.i.i.i106 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %55, i32 0, i32 9
  %56 = ptrtoint ptr %read32.i.i.i106 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %read32.i.i.i106, align 4
  %call.i.i.i107 = tail call i32 %57(ptr noundef %rtwdev, i32 noundef %or.i101) #7
  %and21.i.i108 = and i32 %call.i.i.i107, -24577
  %58 = ptrtoint ptr %hci.i.i.i105 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %hci.i.i.i105, align 8
  %write32.i.i.i109 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %59, i32 0, i32 12
  %60 = ptrtoint ptr %write32.i.i.i109 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %write32.i.i.i109, align 4
  tail call void %61(ptr noundef %rtwdev, i32 noundef %or.i101, i32 noundef %and21.i.i108) #7
  %arrayidx16 = getelementptr [2 x i32], ptr @__const.rtw8852a_bw_setting.wbadc_sel, i32 0, i32 %conv
  %62 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %arrayidx16, align 4
  %or.i111 = or i32 %63, 65536
  br i1 %53, label %rtw89_phy_write32_mask.exit110.rtw89_phy_write32_mask.exit121_crit_edge, label %do.end.i.i114, !prof !173

rtw89_phy_write32_mask.exit110.rtw89_phy_write32_mask.exit121_crit_edge: ; preds = %rtw89_phy_write32_mask.exit110
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtw89_phy_write32_mask.exit121

do.end.i.i114:                                    ; preds = %rtw89_phy_write32_mask.exit110
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 3031, i32 noundef 9, ptr noundef nonnull @.str.10, i32 noundef %or.i111) #7
  br label %rtw89_phy_write32_mask.exit121

rtw89_phy_write32_mask.exit121:                   ; preds = %do.end.i.i114, %rtw89_phy_write32_mask.exit110.rtw89_phy_write32_mask.exit121_crit_edge
  %64 = ptrtoint ptr %hci.i.i.i105 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %hci.i.i.i105, align 8
  %read32.i.i.i116 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %65, i32 0, i32 9
  %66 = ptrtoint ptr %read32.i.i.i116 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %read32.i.i.i116, align 4
  %call.i.i.i117 = tail call i32 %67(ptr noundef %rtwdev, i32 noundef %or.i111) #7
  %and21.i.i118 = and i32 %call.i.i.i117, -49
  %or.i.i119 = or i32 %and21.i.i118, 32
  %68 = ptrtoint ptr %hci.i.i.i105 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %hci.i.i.i105, align 8
  %write32.i.i.i120 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %69, i32 0, i32 12
  %70 = ptrtoint ptr %write32.i.i.i120 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %write32.i.i.i120, align 4
  tail call void %71(ptr noundef %rtwdev, i32 noundef %or.i111, i32 noundef %or.i.i119) #7
  %or17 = or i32 %call.i, 3072
  br label %sw.epilog

sw.bb18:                                          ; preds = %if.end
  %arrayidx20 = getelementptr [2 x i32], ptr @__const.rtw8852a_bw_setting.adc_sel, i32 0, i32 %conv
  %72 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %arrayidx20, align 4
  %or.i122 = or i32 %73, 65536
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %path)
  %74 = icmp ult i8 %path, 2
  br i1 %74, label %sw.bb18.rtw89_phy_write32_mask.exit131_crit_edge, label %do.end.i.i125, !prof !173

sw.bb18.rtw89_phy_write32_mask.exit131_crit_edge: ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtw89_phy_write32_mask.exit131

do.end.i.i125:                                    ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 3031, i32 noundef 9, ptr noundef nonnull @.str.10, i32 noundef %or.i122) #7
  br label %rtw89_phy_write32_mask.exit131

rtw89_phy_write32_mask.exit131:                   ; preds = %do.end.i.i125, %sw.bb18.rtw89_phy_write32_mask.exit131_crit_edge
  %hci.i.i.i126 = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 7
  %75 = ptrtoint ptr %hci.i.i.i126 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %hci.i.i.i126, align 8
  %read32.i.i.i127 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %76, i32 0, i32 9
  %77 = ptrtoint ptr %read32.i.i.i127 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %read32.i.i.i127, align 4
  %call.i.i.i128 = tail call i32 %78(ptr noundef %rtwdev, i32 noundef %or.i122) #7
  %and21.i.i129 = and i32 %call.i.i.i128, -24577
  %79 = ptrtoint ptr %hci.i.i.i126 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %hci.i.i.i126, align 8
  %write32.i.i.i130 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %80, i32 0, i32 12
  %81 = ptrtoint ptr %write32.i.i.i130 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %write32.i.i.i130, align 4
  tail call void %82(ptr noundef %rtwdev, i32 noundef %or.i122, i32 noundef %and21.i.i129) #7
  %arrayidx22 = getelementptr [2 x i32], ptr @__const.rtw8852a_bw_setting.wbadc_sel, i32 0, i32 %conv
  %83 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %arrayidx22, align 4
  %or.i132 = or i32 %84, 65536
  br i1 %74, label %rtw89_phy_write32_mask.exit131.rtw89_phy_write32_mask.exit142_crit_edge, label %do.end.i.i135, !prof !173

rtw89_phy_write32_mask.exit131.rtw89_phy_write32_mask.exit142_crit_edge: ; preds = %rtw89_phy_write32_mask.exit131
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtw89_phy_write32_mask.exit142

do.end.i.i135:                                    ; preds = %rtw89_phy_write32_mask.exit131
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 3031, i32 noundef 9, ptr noundef nonnull @.str.10, i32 noundef %or.i132) #7
  br label %rtw89_phy_write32_mask.exit142

rtw89_phy_write32_mask.exit142:                   ; preds = %do.end.i.i135, %rtw89_phy_write32_mask.exit131.rtw89_phy_write32_mask.exit142_crit_edge
  %85 = ptrtoint ptr %hci.i.i.i126 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %hci.i.i.i126, align 8
  %read32.i.i.i137 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %86, i32 0, i32 9
  %87 = ptrtoint ptr %read32.i.i.i137 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %read32.i.i.i137, align 4
  %call.i.i.i138 = tail call i32 %88(ptr noundef %rtwdev, i32 noundef %or.i132) #7
  %and21.i.i139 = and i32 %call.i.i.i138, -49
  %or.i.i140 = or i32 %and21.i.i139, 32
  %89 = ptrtoint ptr %hci.i.i.i126 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %hci.i.i.i126, align 8
  %write32.i.i.i141 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %90, i32 0, i32 12
  %91 = ptrtoint ptr %write32.i.i.i141 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %write32.i.i.i141, align 4
  tail call void %92(ptr noundef %rtwdev, i32 noundef %or.i132, i32 noundef %or.i.i140) #7
  %or23 = or i32 %and, 2048
  br label %sw.epilog

sw.bb24:                                          ; preds = %if.end
  %arrayidx26 = getelementptr [2 x i32], ptr @__const.rtw8852a_bw_setting.adc_sel, i32 0, i32 %conv
  %93 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %arrayidx26, align 4
  %or.i143 = or i32 %94, 65536
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %path)
  %95 = icmp ult i8 %path, 2
  br i1 %95, label %sw.bb24.rtw89_phy_write32_mask.exit152_crit_edge, label %do.end.i.i146, !prof !173

sw.bb24.rtw89_phy_write32_mask.exit152_crit_edge: ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtw89_phy_write32_mask.exit152

do.end.i.i146:                                    ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 3031, i32 noundef 9, ptr noundef nonnull @.str.10, i32 noundef %or.i143) #7
  br label %rtw89_phy_write32_mask.exit152

rtw89_phy_write32_mask.exit152:                   ; preds = %do.end.i.i146, %sw.bb24.rtw89_phy_write32_mask.exit152_crit_edge
  %hci.i.i.i147 = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 7
  %96 = ptrtoint ptr %hci.i.i.i147 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %hci.i.i.i147, align 8
  %read32.i.i.i148 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %97, i32 0, i32 9
  %98 = ptrtoint ptr %read32.i.i.i148 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %read32.i.i.i148, align 4
  %call.i.i.i149 = tail call i32 %99(ptr noundef %rtwdev, i32 noundef %or.i143) #7
  %and21.i.i150 = and i32 %call.i.i.i149, -24577
  %100 = ptrtoint ptr %hci.i.i.i147 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %hci.i.i.i147, align 8
  %write32.i.i.i151 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %101, i32 0, i32 12
  %102 = ptrtoint ptr %write32.i.i.i151 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %write32.i.i.i151, align 4
  tail call void %103(ptr noundef %rtwdev, i32 noundef %or.i143, i32 noundef %and21.i.i150) #7
  %arrayidx28 = getelementptr [2 x i32], ptr @__const.rtw8852a_bw_setting.wbadc_sel, i32 0, i32 %conv
  %104 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %arrayidx28, align 4
  %or.i153 = or i32 %105, 65536
  br i1 %95, label %rtw89_phy_write32_mask.exit152.rtw89_phy_write32_mask.exit163_crit_edge, label %do.end.i.i156, !prof !173

rtw89_phy_write32_mask.exit152.rtw89_phy_write32_mask.exit163_crit_edge: ; preds = %rtw89_phy_write32_mask.exit152
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtw89_phy_write32_mask.exit163

do.end.i.i156:                                    ; preds = %rtw89_phy_write32_mask.exit152
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 3031, i32 noundef 9, ptr noundef nonnull @.str.10, i32 noundef %or.i153) #7
  br label %rtw89_phy_write32_mask.exit163

rtw89_phy_write32_mask.exit163:                   ; preds = %do.end.i.i156, %rtw89_phy_write32_mask.exit152.rtw89_phy_write32_mask.exit163_crit_edge
  %106 = ptrtoint ptr %hci.i.i.i147 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %hci.i.i.i147, align 8
  %read32.i.i.i158 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %107, i32 0, i32 9
  %108 = ptrtoint ptr %read32.i.i.i158 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %read32.i.i.i158, align 4
  %call.i.i.i159 = tail call i32 %109(ptr noundef %rtwdev, i32 noundef %or.i153) #7
  %and21.i.i160 = and i32 %call.i.i.i159, -49
  %or.i.i161 = or i32 %and21.i.i160, 32
  %110 = ptrtoint ptr %hci.i.i.i147 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %hci.i.i.i147, align 8
  %write32.i.i.i162 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %111, i32 0, i32 12
  %112 = ptrtoint ptr %write32.i.i.i162 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %write32.i.i.i162, align 4
  tail call void %113(ptr noundef %rtwdev, i32 noundef %or.i153, i32 noundef %or.i.i161) #7
  %or29 = or i32 %and, 1024
  br label %sw.epilog

do.end32:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %dev33 = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 1
  %114 = ptrtoint ptr %dev33 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %dev33, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %115, ptr noundef nonnull @.str.22) #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end32, %rtw89_phy_write32_mask.exit163, %rtw89_phy_write32_mask.exit142, %rtw89_phy_write32_mask.exit121, %rtw89_phy_write32_mask.exit100, %rtw89_phy_write32_mask.exit78
  %val.0 = phi i32 [ %and, %do.end32 ], [ %or29, %rtw89_phy_write32_mask.exit163 ], [ %or23, %rtw89_phy_write32_mask.exit142 ], [ %or17, %rtw89_phy_write32_mask.exit121 ], [ %or11, %rtw89_phy_write32_mask.exit100 ], [ %or, %rtw89_phy_write32_mask.exit78 ]
  tail call void @mutex_lock_nested(ptr noundef %rf_mutex.i, i32 noundef 0) #7
  %116 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %chip.i, align 4
  %ops.i166 = getelementptr inbounds %struct.rtw89_chip_info, ptr %117, i32 0, i32 1
  %118 = ptrtoint ptr %ops.i166 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %ops.i166, align 4
  %write_rf.i = getelementptr inbounds %struct.rtw89_chip_ops, ptr %119, i32 0, i32 3
  %120 = ptrtoint ptr %write_rf.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %write_rf.i, align 4
  %call.i167 = tail call zeroext i1 %121(ptr noundef %rtwdev, i32 noundef %conv, i32 noundef 24, i32 noundef 1048575, i32 noundef %val.0) #7
  tail call void @mutex_unlock(ptr noundef %rf_mutex.i) #7
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw89_mac_stop_sch_tx(ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw89_mac_cfg_ppdu_status(ptr noundef, i8 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw89_mac_resume_sch_tx(ptr noundef, i8 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw8852a_rck(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw8852a_dack(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw8852a_rx_dck(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw8852a_iqk(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw8852a_tssi(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw8852a_dpk(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw8852a_tssi_scan(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw8852a_wifi_scan_notify(ptr noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw8852a_dpk_track(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw8852a_iqk_track(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw8852a_tssi_track(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local signext i8 @rtw89_phy_read_txpwr_byrate(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw89_phy_fill_txpwr_limit(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw89_phy_fill_txpwr_limit_ru(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_channel_to_freq_khz(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw89_phy_write_reg3_tbl(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw89_mac_coex_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rtw8852a_set_trx_mask(ptr noundef %rtwdev, i8 noundef zeroext %path, i32 noundef %val) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %path to i32
  %rf_mutex.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 12
  tail call void @mutex_lock_nested(ptr noundef %rf_mutex.i, i32 noundef 0) #7
  %chip.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 3
  %0 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip.i, align 4
  %ops.i = getelementptr inbounds %struct.rtw89_chip_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops.i, align 4
  %write_rf.i = getelementptr inbounds %struct.rtw89_chip_ops, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %write_rf.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %write_rf.i, align 4
  %call.i = tail call zeroext i1 %5(ptr noundef %rtwdev, i32 noundef %conv, i32 noundef 239, i32 noundef 1048575, i32 noundef 131072) #7
  tail call void @mutex_unlock(ptr noundef %rf_mutex.i) #7
  tail call void @mutex_lock_nested(ptr noundef %rf_mutex.i, i32 noundef 0) #7
  %6 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %chip.i, align 4
  %ops.i3 = getelementptr inbounds %struct.rtw89_chip_info, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %ops.i3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops.i3, align 4
  %write_rf.i4 = getelementptr inbounds %struct.rtw89_chip_ops, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %write_rf.i4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %write_rf.i4, align 4
  %call.i5 = tail call zeroext i1 %11(ptr noundef %rtwdev, i32 noundef %conv, i32 noundef 51, i32 noundef 1048575, i32 noundef 0) #7
  tail call void @mutex_unlock(ptr noundef %rf_mutex.i) #7
  tail call void @mutex_lock_nested(ptr noundef %rf_mutex.i, i32 noundef 0) #7
  %12 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %chip.i, align 4
  %ops.i8 = getelementptr inbounds %struct.rtw89_chip_info, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %ops.i8 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ops.i8, align 4
  %write_rf.i9 = getelementptr inbounds %struct.rtw89_chip_ops, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %write_rf.i9 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %write_rf.i9, align 4
  %call.i10 = tail call zeroext i1 %17(ptr noundef %rtwdev, i32 noundef %conv, i32 noundef 63, i32 noundef 1048575, i32 noundef %val) #7
  tail call void @mutex_unlock(ptr noundef %rf_mutex.i) #7
  tail call void @mutex_lock_nested(ptr noundef %rf_mutex.i, i32 noundef 0) #7
  %18 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %chip.i, align 4
  %ops.i13 = getelementptr inbounds %struct.rtw89_chip_info, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %ops.i13 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ops.i13, align 4
  %write_rf.i14 = getelementptr inbounds %struct.rtw89_chip_ops, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %write_rf.i14 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %write_rf.i14, align 4
  %call.i15 = tail call zeroext i1 %23(ptr noundef %rtwdev, i32 noundef %conv, i32 noundef 239, i32 noundef 1048575, i32 noundef 0) #7
  tail call void @mutex_unlock(ptr noundef %rf_mutex.i) #7
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.smax.i8(i8, i8) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.smin.i8(i8, i8) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 79)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 79)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !29, !31, !33, !34, !35, !36, !37, !38, !39, !41, !43, !45, !46, !47, !48, !50, !51, !52, !53, !55, !56, !57, !59, !60, !61, !63, !65, !67, !68, !69, !70, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !132, !133, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160}
!llvm.module.flags = !{!162, !163, !164, !165, !166, !167, !168, !169}
!llvm.ident = !{!170}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/realtek/rtw89/rtw8852a.c", i32 1522, i32 2}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/realtek/rtw89/rtw8852a.c", i32 1552, i32 2}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/realtek/rtw89/rtw8852a.c", i32 1564, i32 2}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/realtek/rtw89/rtw8852a.c", i32 1582, i32 4}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/realtek/rtw89/rtw8852a.c", i32 1610, i32 2}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/realtek/rtw89/rtw8852a.c", i32 2001, i32 14}
!12 = !{ptr @rtw8852a_chip_info, !13, !"rtw8852a_chip_info", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/realtek/rtw89/rtw8852a.c", i32 1998, i32 30}
!14 = !{ptr @__ksymtab_rtw8852a_chip_info, !15, !"__ksymtab_rtw8852a_chip_info", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/realtek/rtw89/rtw8852a.c", i32 2053, i32 1}
!16 = !{ptr @__UNIQUE_ID_firmware473, !17, !"__UNIQUE_ID_firmware473", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/realtek/rtw89/rtw8852a.c", i32 2055, i32 1}
!18 = !{ptr @rtw8852a_pmac_ht20_mcs7_tbl, !19, !"rtw8852a_pmac_ht20_mcs7_tbl", i1 false, i1 false}
!19 = !{!"../drivers/net/wireless/realtek/rtw89/rtw8852a.c", i32 53, i32 37}
!20 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/realtek/rtw89/rtw8852a.c", i32 1477, i32 2}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/wireless/realtek/rtw89/rtw8852a.c", i32 1497, i32 3}
!24 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/wireless/realtek/rtw89/rtw8852a.c", i32 1505, i32 3}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/wireless/realtek/rtw89/core.h", i32 3031, i32 2}
!28 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @rtw8852a_chip_ops, !30, !"rtw8852a_chip_ops", i1 false, i1 false}
!30 = !{!"../drivers/net/wireless/realtek/rtw89/rtw8852a.c", i32 1963, i32 36}
!31 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/net/wireless/realtek/rtw89/rtw8852a.c", i32 653, i32 3}
!33 = !{ptr @.str.12, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.13, !32, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.14, !32, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.15, !32, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @rtw8852a_ctrl_sco_cck._entry, !32, !"_entry", i1 false, i1 false}
!38 = !{ptr @rtw8852a_ctrl_sco_cck._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @rtw8852a_sco_barker_threshold, !40, !"rtw8852a_sco_barker_threshold", i1 false, i1 false}
!40 = !{!"../drivers/net/wireless/realtek/rtw89/rtw8852a.c", i32 630, i32 18}
!41 = !{ptr @rtw8852a_sco_cck_threshold, !42, !"rtw8852a_sco_cck_threshold", i1 false, i1 false}
!42 = !{!"../drivers/net/wireless/realtek/rtw89/rtw8852a.c", i32 635, i32 18}
!43 = !{ptr @.str.16, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/net/wireless/realtek/rtw89/rtw8852a.c", i32 671, i32 3}
!45 = !{ptr @.str.17, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @rtw8852a_ch_setting._entry, !44, !"_entry", i1 false, i1 false}
!47 = !{ptr @rtw8852a_ch_setting._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.18, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/wireless/realtek/rtw89/rtw8852a.c", i32 908, i32 3}
!50 = !{ptr @.str.19, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @rtw8852a_ctrl_bw._entry, !49, !"_entry", i1 false, i1 false}
!52 = !{ptr @rtw8852a_ctrl_bw._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.20, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/net/wireless/realtek/rtw89/rtw8852a.c", i32 818, i32 3}
!55 = !{ptr @rtw8852a_bw_setting._entry, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @rtw8852a_bw_setting._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.22, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/net/wireless/realtek/rtw89/rtw8852a.c", i32 849, i32 3}
!59 = !{ptr @rtw8852a_bw_setting._entry.21, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @rtw8852a_bw_setting._entry_ptr.23, !58, !"_entry_ptr", i1 false, i1 false}
!61 = distinct !{null, !62, !"tssi_trk", i1 false, i1 false}
!62 = !{!"../drivers/net/wireless/realtek/rtw89/rtw8852a.c", i32 1095, i32 19}
!63 = distinct !{null, !64, !"ctrl_bbrst", i1 false, i1 false}
!64 = !{!"../drivers/net/wireless/realtek/rtw89/rtw8852a.c", i32 1096, i32 19}
!65 = !{ptr @.str.24, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/net/wireless/realtek/rtw89/rtw8852a.c", i32 434, i32 2}
!67 = !{ptr @.str.25, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @.str.26, !66, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @rtw8852a_read_efuse._entry, !66, !"_entry", i1 false, i1 false}
!70 = !{ptr @rtw8852a_read_efuse._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.27, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/net/wireless/realtek/rtw89/rtw8852a.c", i32 399, i32 4}
!73 = !{ptr @.str.28, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/net/wireless/realtek/rtw89/rtw8852a.c", i32 409, i32 4}
!75 = distinct !{null, !76, !"tssi_trim_addr", i1 false, i1 false}
!76 = !{!"../drivers/net/wireless/realtek/rtw89/rtw8852a.c", i32 442, i32 19}
!77 = !{ptr @.str.29, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/net/wireless/realtek/rtw89/rtw8852a.c", i32 461, i32 3}
!79 = !{ptr @.str.30, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/net/wireless/realtek/rtw89/rtw8852a.c", i32 467, i32 4}
!81 = distinct !{null, !82, !"thm_trim_addr", i1 false, i1 false}
!82 = !{!"../drivers/net/wireless/realtek/rtw89/rtw8852a.c", i32 477, i32 19}
!83 = !{ptr @.str.31, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/net/wireless/realtek/rtw89/rtw8852a.c", i32 484, i32 3}
!85 = distinct !{null, !86, !"pabias_trim_addr", i1 false, i1 false}
!86 = !{!"../drivers/net/wireless/realtek/rtw89/rtw8852a.c", i32 525, i32 19}
!87 = !{ptr @.str.32, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/net/wireless/realtek/rtw89/rtw8852a.c", i32 532, i32 3}
!89 = !{ptr @.str.33, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/net/wireless/realtek/rtw89/rtw8852a.c", i32 504, i32 3}
!91 = !{ptr @.str.34, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/net/wireless/realtek/rtw89/rtw8852a.c", i32 514, i32 3}
!93 = !{ptr @.str.35, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/net/wireless/realtek/rtw89/rtw8852a.c", i32 548, i32 3}
!95 = !{ptr @.str.36, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/net/wireless/realtek/rtw89/rtw8852a.c", i32 558, i32 3}
!97 = !{ptr @rtw8852a_set_txpwr_byrate.rs, !98, !"rs", i1 false, i1 false}
!98 = !{!"../drivers/net/wireless/realtek/rtw89/rtw8852a.c", i32 1304, i32 18}
!99 = !{ptr @.str.37, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/net/wireless/realtek/rtw89/rtw8852a.c", i32 1315, i32 2}
!101 = !{ptr @.str.38, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/net/wireless/realtek/rtw89/rtw8852a.c", i32 1375, i32 2}
!103 = !{ptr @.str.39, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/net/wireless/realtek/rtw89/rtw8852a.c", i32 1406, i32 2}
!105 = distinct !{null, !106, !"addr", i1 false, i1 false}
!106 = !{!"../drivers/net/wireless/realtek/rtw89/rtw8852a.c", i32 1271, i32 19}
!107 = !{ptr @.str.40, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/net/wireless/realtek/rtw89/rtw8852a.c", i32 1280, i32 2}
!109 = !{ptr @.str.41, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/net/wireless/realtek/rtw89/rtw8852a.c", i32 1285, i32 2}
!111 = !{ptr @.str.42, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/net/wireless/realtek/rtw89/rtw8852a.c", i32 1292, i32 2}
!113 = !{ptr @.str.43, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/net/wireless/realtek/rtw89/rtw8852a.c", i32 1236, i32 2}
!115 = !{ptr @.str.44, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/net/wireless/realtek/rtw89/rtw8852a.c", i32 1353, i32 2}
!117 = !{ptr @rtw8852a_btc_preagc_en_defs_tbl, !118, !"rtw8852a_btc_preagc_en_defs_tbl", i1 false, i1 false}
!118 = !{!"../drivers/net/wireless/realtek/rtw89/rtw8852a.c", i32 136, i32 8}
!119 = !{ptr @rtw8852a_btc_preagc_en_defs, !120, !"rtw8852a_btc_preagc_en_defs", i1 false, i1 false}
!120 = !{!"../drivers/net/wireless/realtek/rtw89/rtw8852a.c", i32 125, i32 36}
!121 = !{ptr @rtw8852a_btc_preagc_dis_defs_tbl, !122, !"rtw8852a_btc_preagc_dis_defs_tbl", i1 false, i1 false}
!122 = !{!"../drivers/net/wireless/realtek/rtw89/rtw8852a.c", i32 149, i32 8}
!123 = !{ptr @rtw8852a_btc_preagc_dis_defs, !124, !"rtw8852a_btc_preagc_dis_defs", i1 false, i1 false}
!124 = !{!"../drivers/net/wireless/realtek/rtw89/rtw8852a.c", i32 138, i32 36}
!125 = !{ptr @.str.45, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/net/wireless/realtek/rtw89/rtw8852a.c", i32 1252, i32 3}
!127 = !{ptr @.str.46, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/net/wireless/realtek/rtw89/rtw8852a.c", i32 1264, i32 2}
!129 = !{ptr @.str.47, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/net/wireless/realtek/rtw89/rtw8852a.c", i32 1822, i32 2}
!131 = !{ptr @.str.48, !130, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @.str.49, !130, !"<string literal>", i1 false, i1 false}
!133 = !{ptr @.str.50, !130, !"<string literal>", i1 false, i1 false}
!134 = !{ptr @.str.51, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/net/wireless/realtek/rtw89/rtw8852a.c", i32 1823, i32 2}
!136 = !{ptr @rtw8852a_hfc_param_ini_pcie, !137, !"rtw8852a_hfc_param_ini_pcie", i1 false, i1 false}
!137 = !{!"../drivers/net/wireless/realtek/rtw89/rtw8852a.c", i32 37, i32 41}
!138 = !{ptr @rtw8852a_hfc_chcfg_pcie, !139, !"rtw8852a_hfc_chcfg_pcie", i1 false, i1 false}
!139 = !{!"../drivers/net/wireless/realtek/rtw89/rtw8852a.c", i32 14, i32 38}
!140 = !{ptr @rtw8852a_hfc_pubcfg_pcie, !141, !"rtw8852a_hfc_pubcfg_pcie", i1 false, i1 false}
!141 = !{!"../drivers/net/wireless/realtek/rtw89/rtw8852a.c", i32 30, i32 39}
!142 = !{ptr @rtw8852a_dle_mem_pcie, !143, !"rtw8852a_dle_mem_pcie", i1 false, i1 false}
!143 = !{!"../drivers/net/wireless/realtek/rtw89/rtw8852a.c", i32 44, i32 35}
!144 = !{ptr @pwr_on_seq_8852a, !145, !"pwr_on_seq_8852a", i1 false, i1 false}
!145 = !{!"../drivers/net/wireless/realtek/rtw89/rtw8852a.c", i32 368, i32 43}
!146 = !{ptr @rtw8852a_pwron, !147, !"rtw8852a_pwron", i1 false, i1 false}
!147 = !{!"../drivers/net/wireless/realtek/rtw89/rtw8852a.c", i32 151, i32 35}
!148 = !{ptr @pwr_off_seq_8852a, !149, !"pwr_off_seq_8852a", i1 false, i1 false}
!149 = !{!"../drivers/net/wireless/realtek/rtw89/rtw8852a.c", i32 372, i32 43}
!150 = !{ptr @rtw8852a_pwroff, !151, !"rtw8852a_pwroff", i1 false, i1 false}
!151 = !{!"../drivers/net/wireless/realtek/rtw89/rtw8852a.c", i32 279, i32 35}
!152 = !{ptr @rtw89_btc_8852a_wl_rssi_thres, !153, !"rtw89_btc_8852a_wl_rssi_thres", i1 false, i1 false}
!153 = !{!"../drivers/net/wireless/realtek/rtw89/rtw8852a.c", i32 1860, i32 4}
!154 = !{ptr @rtw89_btc_8852a_bt_rssi_thres, !155, !"rtw89_btc_8852a_bt_rssi_thres", i1 false, i1 false}
!155 = !{!"../drivers/net/wireless/realtek/rtw89/rtw8852a.c", i32 1862, i32 4}
!156 = !{ptr @rtw89_btc_8852a_mon_reg, !157, !"rtw89_btc_8852a_mon_reg", i1 false, i1 false}
!157 = !{!"../drivers/net/wireless/realtek/rtw89/rtw8852a.c", i32 1864, i32 35}
!158 = !{ptr @rtw89_btc_8852a_rf_ul, !159, !"rtw89_btc_8852a_rf_ul", i1 false, i1 false}
!159 = !{!"../drivers/net/wireless/realtek/rtw89/rtw8852a.c", i32 1835, i32 37}
!160 = !{ptr @rtw89_btc_8852a_rf_dl, !161, !"rtw89_btc_8852a_rf_dl", i1 false, i1 false}
!161 = !{!"../drivers/net/wireless/realtek/rtw89/rtw8852a.c", i32 1847, i32 37}
!162 = !{i32 1, !"wchar_size", i32 2}
!163 = !{i32 1, !"min_enum_size", i32 4}
!164 = !{i32 8, !"branch-target-enforcement", i32 0}
!165 = !{i32 8, !"sign-return-address", i32 0}
!166 = !{i32 8, !"sign-return-address-all", i32 0}
!167 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!168 = !{i32 7, !"uwtable", i32 1}
!169 = !{i32 7, !"frame-pointer", i32 2}
!170 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!171 = !{i8 0, i8 2}
!172 = !{!"auto-init"}
!173 = !{!"branch_weights", i32 2000, i32 1}
