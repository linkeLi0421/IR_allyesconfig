; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/realtek/rtw89/phy.c_pt.bc'
source_filename = "../drivers/net/wireless/realtek/rtw89/phy.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+rtw89_phy_read_rf\22, \22a\22\09"
module asm "\09.weak\09__crc_rtw89_phy_read_rf\09\09\09\09"
module asm "\09.long\09__crc_rtw89_phy_read_rf\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rtw89_phy_read_rf:\09\09\09\09\09"
module asm "\09.asciz \09\22rtw89_phy_read_rf\22\09\09\09\09\09"
module asm "__kstrtabns_rtw89_phy_read_rf:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+rtw89_phy_write_rf\22, \22a\22\09"
module asm "\09.weak\09__crc_rtw89_phy_write_rf\09\09\09\09"
module asm "\09.long\09__crc_rtw89_phy_write_rf\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rtw89_phy_write_rf:\09\09\09\09\09"
module asm "\09.asciz \09\22rtw89_phy_write_rf\22\09\09\09\09\09"
module asm "__kstrtabns_rtw89_phy_write_rf:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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
%struct.rtw89_ra_info = type { i8, i8, i16, i64, i8, i8, i8, i8 }
%struct.rtw89_vif = type { %struct.list_head, i8, i8, [6 x i8], [6 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.rtw89_addr_cam_entry, %struct.rtw89_bssid_cam_entry, [4 x %struct.ieee80211_tx_queue_params], %struct.rtw89_traffic_stats, %struct.rtw89_phy_rate_pattern }
%struct.list_head = type { ptr, ptr }
%struct.rtw89_addr_cam_entry = type <{ i8, i8, i8, i16, [6 x i8], i8, [1 x i32], [7 x i8], [7 x i8], [2 x i8], [7 x ptr] }>
%struct.rtw89_bssid_cam_entry = type { [6 x i8], i8, i8, i8, i8, i8, i8 }
%struct.ieee80211_tx_queue_params = type { i16, i16, i16, i8, i8, i8, i8, %struct.ieee80211_he_mu_edca_param_ac_rec }
%struct.ieee80211_he_mu_edca_param_ac_rec = type { i8, i8, i8 }
%struct.rtw89_traffic_stats = type { i64, i64, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, %struct.ewma_tp, %struct.ewma_tp, i16, i16 }
%struct.ewma_tp = type { i32 }
%struct.rtw89_phy_rate_pattern = type { i64, i16, i8, i8 }
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
%struct.anon.130 = type { i32, [10 x i8], [8 x i16], [8 x i16], i32, i32, i32 }
%struct.ieee80211_hw = type { %struct.ieee80211_conf, ptr, ptr, ptr, [2 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i8, i16, %struct.anon.128, i64, i8, i8, i8, ptr, i8, i8, i8, i32 }
%struct.ieee80211_conf = type { i32, i32, i32, i16, i8, i8, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.anon.128 = type { i32, i16 }
%struct.wiphy = type { %struct.mutex, [6 x i8], [6 x i8], ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i32, i32, [8 x i8], i32, i32, i32, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i8, i8, i32, i32, i8, [32 x i8], i32, ptr, ptr, i16, i8, i32, i32, i32, ptr, ptr, i8, ptr, i32, ptr, [6 x ptr], ptr, ptr, %struct.device, i8, ptr, ptr, ptr, %struct.list_head, %struct.possible_net_t, ptr, ptr, ptr, ptr, i32, i32, i16, i8, i32, i8, i32, i32, i32, i32, i8, ptr, %struct.anon.127, i8, ptr, ptr, i8, i8, [18 x i8], [0 x i8] }
%struct.anon.127 = type { i64, i64, i8 }
%struct.ieee80211_supported_band = type { ptr, ptr, i32, i32, i32, %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_s1g_cap, %struct.ieee80211_edmg, i16, ptr }
%struct.ieee80211_sta_s1g_cap = type { i8, [10 x i8], [5 x i8] }
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
%struct.ieee80211_tx_pwr_env = type { i8, [8 x i8] }
%struct.rtw89_channel_params = type { i8, i8, i8, i8 }
%struct.rtw89_chip_info = type { i32, ptr, ptr, i32, i16, i8, ptr, ptr, [2 x i32], i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, ptr, ptr, ptr, [4 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i32, i32, i8, i8, i8, i8, ptr, ptr, i8, i8, ptr, i8, ptr, i8, ptr, i8 }
%struct.rtw89_hci_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rtw89_chip_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rtw89_phy_table = type { ptr, i32, i32 }
%struct.rtw89_reg2_def = type { i32, i32 }
%struct.rtw89_fw_h2c_rf_reg_info = type { i32, [3 x [500 x i32]], i16 }
%struct.rtw89_phy_reg3_tbl = type { ptr, i32 }
%struct.rtw89_reg3_def = type { i32, i32, i32 }
%struct.rtw89_txpwr_table = type { ptr, i32, ptr }
%struct.rtw89_txpwr_byrate_cfg = type { i32, i32, i32, i8, i8, i32 }
%struct.rtw89_rate_desc = type { i32, i32, i8 }
%struct.rtw89_regulatory = type { [3 x i8], [2 x i8] }
%struct.rtw89_txpwr_limit = type { [2 x i8], [2 x i8], [2 x i8], [8 x [2 x i8]], [4 x [2 x i8]], [2 x [2 x i8]], [2 x i8], [2 x i8], [2 x i8] }
%struct.rtw89_txpwr_limit_ru = type { [8 x i8], [8 x i8], [8 x i8] }
%struct.rtw89_rx_phy_ppdu = type { ptr, i32, i8, [4 x i8], i8, i8, i8, i16, i8, i8 }
%struct.rtw89_phy_iter_rssi_data = type { ptr, ptr, i8 }
%struct.rtw89_phy_dig_gain_table = type { ptr, ptr, ptr, ptr }
%struct.rtw89_phy_dig_gain_cfg = type { ptr, i8 }
%struct.rtw89_reg_def = type { i32, i32 }
%struct.rtw89_sta = type { i8, i8, ptr, %struct.rtw89_ra_info, %struct.rtw89_ra_report, i32, i8, %struct.ewma_rssi, [16 x %struct.rtw89_ampdu_params], %struct.ieee80211_rx_status, i16, i32, i8, %struct.cfg80211_bitrate_mask, i8, i8, i8, i8 }
%struct.rtw89_ra_report = type { %struct.rate_info, i32, i16 }
%struct.rate_info = type { i8, i8, i16, i8, i8, i8, i8, i8, i8 }
%struct.ewma_rssi = type { i32 }
%struct.rtw89_ampdu_params = type { i16, i8 }
%struct.ieee80211_rx_status = type <{ i64, i64, i32, i32, i32, i16, i8, i16, i8, i8, i8, i8, i8, i8, i8, [4 x i8], i8, i8, [2 x i8] }>
%struct.rtw89_phy_iter_ra_data = type { ptr, ptr }
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

@.str = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"ra updat: macid = %d, bw = %d, nss = %d, gi = %d %d\00", [44 x i8] zeroinitializer }, align 32
@rtw89_phy_rate_pattern_vif.hw_rate_he = internal constant { [4 x i16], [24 x i8] } { [4 x i16] [i16 384, i16 400, i16 416, i16 432], [24 x i8] zeroinitializer }, align 32
@rtw89_phy_rate_pattern_vif.hw_rate_vht = internal constant { [4 x i16], [24 x i8] } { [4 x i16] [i16 256, i16 272, i16 288, i16 304], [24 x i8] zeroinitializer }, align 32
@rtw89_phy_rate_pattern_vif.hw_rate_ht = internal constant { [4 x i16], [24 x i8] } { [4 x i16] [i16 128, i16 136, i16 144, i16 152], [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"configure pattern: rate 0x%x, mask 0x%llx, mode 0x%x\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"unset rate pattern\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"ra assoc: macid = %d, mode = %d, bw = %d, nss = %d, lv = %d\00", [36 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"ra assoc: dcm = %d, er = %d, ldpc = %d, stbc = %d, gi = %d %d\00", [34 x i8] zeroinitializer }, align 32
@rtw89_phy_read_rf._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.7, i32 580, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"unsupported rf path (%d)\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rtw89_phy_read_rf\00", [46 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/net/wireless/realtek/rtw89/phy.c\00", [55 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rtw89_phy_read_rf._entry_ptr = internal global ptr @rtw89_phy_read_rf._entry, section ".printk_index", align 4
@__kstrtab_rtw89_phy_read_rf = external dso_local constant [0 x i8], align 1
@__kstrtabns_rtw89_phy_read_rf = external dso_local constant [0 x i8], align 1
@__ksymtab_rtw89_phy_read_rf = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rtw89_phy_read_rf to i32), ptr @__kstrtab_rtw89_phy_read_rf, ptr @__kstrtabns_rtw89_phy_read_rf }, section "___ksymtab+rtw89_phy_read_rf", align 4
@rtw89_phy_write_rf._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.10, ptr @.str.7, i32 602, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rtw89_phy_write_rf\00", [45 x i8] zeroinitializer }, align 32
@rtw89_phy_write_rf._entry_ptr = internal global ptr @rtw89_phy_write_rf._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@__kstrtab_rtw89_phy_write_rf = external dso_local constant [0 x i8], align 1
@__kstrtabns_rtw89_phy_write_rf = external dso_local constant [0 x i8], align 1
@__ksymtab_rtw89_phy_write_rf = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rtw89_phy_write_rf to i32), ptr @__kstrtab_rtw89_phy_write_rf, ptr @__kstrtabns_rtw89_phy_write_rf }, section "___ksymtab+rtw89_phy_write_rf", align 4
@rtw89_phy_init_rf_reg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.7, i32 907, ptr @.str.13, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"rf path %d reg h2c config failed\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rtw89_phy_init_rf_reg\00", [42 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@rtw89_phy_init_rf_reg._entry_ptr = internal global ptr @rtw89_phy_init_rf_reg._entry, section ".printk_index", align 4
@rtw89_rs_idx_max = dso_local constant { [5 x i8], [27 x i8] } { [5 x i8] c"\04\08\0C\04\05", [27 x i8] zeroinitializer }, align 32
@rtw89_rs_nss_max = dso_local constant { [5 x i8], [27 x i8] } { [5 x i8] c"\01\01\04\02\01", [27 x i8] zeroinitializer }, align 32
@_byr_of_rs = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\00\04\0C<D", [27 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"[TXPWR] unknown byrate desc rs=%d nss=%d idx=%d\0A\00", [47 x i8] zeroinitializer }, align 32
@rtw89_phy_read_txpwr_limit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.7, i32 1118, ptr @.str.13, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"unknown band type: %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"rtw89_phy_read_txpwr_limit\00", [37 x i8] zeroinitializer }, align 32
@rtw89_phy_read_txpwr_limit._entry_ptr = internal global ptr @rtw89_phy_read_txpwr_limit._entry, section ".printk_index", align 4
@rtw89_phy_c2h_ra_handler = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @rtw89_phy_c2h_ra_rpt, ptr null, ptr null], [20 x i8] zeroinitializer }, align 32
@rtw89_phy_c2h_handle._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.7, i32 1450, ptr @.str.19, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"c2h class %d not support\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"rtw89_phy_c2h_handle\00", [43 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@rtw89_phy_c2h_handle._entry_ptr = internal global ptr @rtw89_phy_c2h_handle._entry, section ".printk_index", align 4
@rtw89_phy_c2h_handle._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.18, ptr @.str.7, i32 1455, ptr @.str.19, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"c2h class %d func %d not support\0A\00", [62 x i8] zeroinitializer }, align 32
@rtw89_phy_c2h_handle._entry_ptr.22 = internal global ptr @rtw89_phy_c2h_handle._entry.20, section ".printk_index", align 4
@.str.23 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"[CFO]WatchDog tp=%d,state=%d,timer_en=%d,trk_cnt=%d,thermal=%ld\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"CCX in manual ctrl\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"get_result=0x%x, chk_result:0x%x\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"First connected\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"First disconnected\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"rssi=%03d, dyn(max,min)=(%d,%d), final_rssi=%d\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Force gaincode index enabled.\0A\00", [33 x i8] zeroinitializer }, align 32
@rtw89_ra_mask_ht_rates = internal constant { [4 x i64], [32 x i8] } { [4 x i64] [i64 1044480, i64 4278190080, i64 17523466567680, i64 71776119061217280], [32 x i8] zeroinitializer }, align 32
@rtw89_ra_mask_he_rates = internal constant { [4 x i64], [32 x i8] } { [4 x i64] [i64 16773120, i64 68702699520, i64 281406257233920, i64 1152640029630136320], [32 x i8] zeroinitializer }, align 32
@rtw89_ra_mask_vht_rates = internal constant { [4 x i64], [32 x i8] } { [4 x i64] [i64 4190208, i64 17163091968, i64 70300024700928, i64 287948901175001088], [32 x i8] zeroinitializer }, align 32
@rtw89_phy_ra_mask_cfg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.7, i32 154, ptr @.str.13, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"unhandled band type %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rtw89_phy_ra_mask_cfg\00", [42 x i8] zeroinitializer }, align 32
@rtw89_phy_ra_mask_cfg._entry_ptr = internal global ptr @rtw89_phy_ra_mask_cfg._entry, section ".printk_index", align 4
@.str.32 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"drivers/net/wireless/realtek/rtw89/core.h\00", [54 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"should be 4-byte aligned, addr = 0x%08x\0A\00", [55 x i8] zeroinitializer }, align 32
@rtw89_phy_init_reg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.7, i32 825, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"invalid PHY package: %d/%d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rtw89_phy_init_reg\00", [45 x i8] zeroinitializer }, align 32
@rtw89_phy_init_reg._entry_ptr = internal global ptr @rtw89_phy_init_reg._entry, section ".printk_index", align 4
@rtw89_phy_init_reg._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.35, ptr @.str.7, i32 842, ptr @.str.13, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed to load CR %x/%x\0A\00", [39 x i8] zeroinitializer }, align 32
@rtw89_phy_init_reg._entry_ptr.38 = internal global ptr @rtw89_phy_init_reg._entry.36, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@rtw89_phy_cofig_rf_reg_store._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.7, i32 659, ptr @.str.13, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"RF parameters exceed size. path=%d, idx=%d\00", [53 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"rtw89_phy_cofig_rf_reg_store\00", [35 x i8] zeroinitializer }, align 32
@rtw89_phy_cofig_rf_reg_store._entry_ptr = internal global ptr @rtw89_phy_cofig_rf_reg_store._entry, section ".printk_index", align 4
@rtw89_phy_config_rf_reg_fw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.7, i32 679, ptr @.str.13, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"rf reg h2c total len %d larger than %d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"rtw89_phy_config_rf_reg_fw\00", [37 x i8] zeroinitializer }, align 32
@rtw89_phy_config_rf_reg_fw._entry_ptr = internal global ptr @rtw89_phy_config_rf_reg_fw._entry, section ".printk_index", align 4
@rtw89_channel_to_idx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.7, i32 1090, ptr @.str.13, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"unknown channel: %d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"rtw89_channel_to_idx\00", [43 x i8] zeroinitializer }, align 32
@rtw89_channel_to_idx._entry_ptr = internal global ptr @rtw89_channel_to_idx._entry, section ".printk_index", align 4
@rtw89_phy_read_txpwr_limit_ru._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.45, ptr @.str.7, i32 1249, ptr @.str.13, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"rtw89_phy_read_txpwr_limit_ru\00", [34 x i8] zeroinitializer }, align 32
@rtw89_phy_read_txpwr_limit_ru._entry_ptr = internal global ptr @rtw89_phy_read_txpwr_limit_ru._entry, section ".printk_index", align 4
@.str.46 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"CFO:total_sta_assoc=%d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Pkt cnt = 0\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Pkt cnt doesn't change\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"curr_cfo=0\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Xcap_up=%d\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Xcap: D:%x C:%x->%x, ofst=%d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"(0x%x) approach to dflt_val=(0x%x)\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Set sc_xi=0x%x\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Set sc_xo=0x%x\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Get xcap_ofst=%d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Set xcap OK\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"one_entry_only\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"CFO track for macid = %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Total cfo=%dK, pkt_cnt=%d, avg_cfo=%dK\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Multi entry cfo_trk\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Pkt based avg mode\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Msta cfo=%d, pkt_cnt=%d, avg_cfo=%d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Entry based avg mode\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Macid=%d, cfo_avg=%d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Msta cfo_acc=%d, ent_cnt=%d, avg_cfo=%d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"TP based avg mode\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"[%d] cfo_avg=%d, tp=tbd\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Assoc sta cnt=%d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Active sta cnt=%d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Msta cfo with tp_wgt=%d, avg_cfo=%d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cfo_lb=%d,cfo_ub=%d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"cfo win_size=%d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"No intersection of cfo tolerance windows\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Target cfo=%d\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Stop CFO tracking\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"X_cap{Curr,Default}={0x%x,0x%x}\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"DCFO: is_linked=%d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"DCFO: curr_cfo=%d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"DCFO: avg_cfo=%d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"path(%d) thermal cur=%u avg=%ld\00", [32 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Get IFS_CLM report Fail\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"IFS-CLM total_ifs = %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"{Tx, EDCCA_exclu_cca} = {%d, %d}\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"IFS-CLM FA{CCK, OFDM} = {%d, %d}\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"IFS-CLM CCA_exclu_FA{CCK, OFDM} = {%d, %d}\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Time:[his, avg, cca]\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"T%d:[%d, %d, %d]\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"IFS-CLM ratio {Tx, EDCCA_exclu_cca} = {%d, %d}\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"IFS-CLM FA ratio {CCK, OFDM} = {%d, %d}\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"IFS-CLM FA permil {CCK, OFDM} = {%d, %d}\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"IFS-CLM CCA_exclu_FA ratio {CCK, OFDM} = {%d, %d}\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Time:[his, ifs_avg(us), cca_avg(us)]\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"lv:(%d)->(0)\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Update IFS-CLM time ((%d)) -> ((%d))\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"ccx_ongoing=%d, level:(%d)->(%d)\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ccx racing success=%d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"[Trigger Time] period:%d, unit_idx:%d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"No need to update IFS_TH\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Update IFS_T%d_th{low, high} : {%d, %d}\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Set (lna,tia,rxb)=((%d,%d,%02d))\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"dyn_max=%d, final_rssi=%d, total=%d, PD_low=%d\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Dynamic PD th disabled, Set PD_low_bd=0\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"sdagc_follow_pagc=%d\0A\00", [42 x i8] zeroinitializer }, align 32
@fa_th_2g = internal constant { [4 x i16], [24 x i8] } { [4 x i16] [i16 22, i16 44, i16 66, i16 88], [24 x i8] zeroinitializer }, align 32
@fa_th_nolink = internal constant { [4 x i16], [24 x i8] } { [4 x i16] [i16 196, i16 352, i16 440, i16 528], [24 x i8] zeroinitializer }, align 32
@fa_th_5g = internal constant { [4 x i16], [24 x i8] } { [4 x i16] [i16 4, i16 8, i16 12, i16 16], [24 x i8] zeroinitializer }, align 32
@igi_rssi_th = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"DTZbh", [27 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"fa_th: [+6 (%d) +4 (%d) +2 (%d) 0 (%d) -2 ]\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"fa(CCK,OFDM,ALL)=(%d,%d,%d)%%, noisy_lv=%d, ofst=%d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"RSSI update : NO Link\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"final_rssi=%03d, (lna,tia,rab)=(%d,%d,%02d)\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"wb_rssi=%03d, rxb_idx_tmp=%03d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ib_pkpwr=%d, ib_pbk=%d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"lna_gain_g\00", [21 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"tia_gain_g\00", [21 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"lna_gain_a\00", [21 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"tia_gain_a\00", [21 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%s[%d]=%d\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Default xcap=%0x\0A\00", [46 x i8] zeroinitializer }, align 32
@rtw89_phy_init_rf_nctl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.118, ptr @.str.119, ptr @.str.7, i32 931, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to poll nctl block\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"rtw89_phy_init_rf_nctl\00", [41 x i8] zeroinitializer }, align 32
@rtw89_phy_init_rf_nctl._entry_ptr = internal global ptr @rtw89_phy_init_rf_nctl._entry, section ".printk_index", align 4
@switch.table.rtw89_phy_get_txsc = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\09\0A\09\0A\0B\0C\0B\0C", [24 x i8] zeroinitializer }, align 32
@switch.table.rtw89_phy_write32_idx = internal constant { [22 x i32], [40 x i8] } { [22 x i32] [i32 8192, i32 8192, i32 8192, i32 8192, i32 8192, i32 8192, i32 8192, i32 8192, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 8192, i32 8192, i32 8192], [40 x i8] zeroinitializer }, align 32
@switch.table.rtw89_phy_set_phy_regs = internal constant { [22 x i32], [40 x i8] } { [22 x i32] [i32 8192, i32 8192, i32 8192, i32 8192, i32 8192, i32 8192, i32 8192, i32 8192, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 8192, i32 8192, i32 8192], [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.120 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.121 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.122 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.123 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.124 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.125 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.126 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.127 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.128 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.129 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.130 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.131 = internal global [6 x i64] [i64 4, i64 8, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.132 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.133 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.134 = internal global [7 x i64] [i64 5, i64 32, i64 4, i64 8, i64 9, i64 10, i64 11]
@__sancov_gen_cov_switch_values.135 = internal global [8 x i64] [i64 6, i64 32, i64 249, i64 250, i64 251, i64 252, i64 253, i64 254]
@__sancov_gen_cov_switch_values.136 = internal global [8 x i64] [i64 6, i64 32, i64 249, i64 250, i64 251, i64 252, i64 253, i64 254]
@__sancov_gen_cov_switch_values.137 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.138 = internal global [119 x i64] [i64 117, i64 8, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 36, i64 37, i64 38, i64 39, i64 40, i64 41, i64 42, i64 43, i64 44, i64 45, i64 46, i64 47, i64 48, i64 49, i64 50, i64 51, i64 52, i64 53, i64 54, i64 55, i64 56, i64 57, i64 58, i64 59, i64 60, i64 61, i64 62, i64 63, i64 64, i64 100, i64 101, i64 102, i64 103, i64 104, i64 105, i64 106, i64 107, i64 108, i64 109, i64 110, i64 111, i64 112, i64 113, i64 114, i64 115, i64 116, i64 117, i64 118, i64 119, i64 120, i64 121, i64 122, i64 123, i64 124, i64 125, i64 126, i64 127, i64 128, i64 129, i64 130, i64 131, i64 132, i64 133, i64 134, i64 135, i64 136, i64 137, i64 138, i64 139, i64 140, i64 141, i64 142, i64 143, i64 144, i64 149, i64 150, i64 151, i64 152, i64 153, i64 154, i64 155, i64 156, i64 157, i64 158, i64 159, i64 160, i64 161, i64 162, i64 163, i64 164, i64 165, i64 166, i64 167, i64 168, i64 169, i64 170, i64 171, i64 172, i64 173, i64 174, i64 175, i64 176, i64 177]
@__sancov_gen_cov_switch_values.139 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.140 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.141 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.142 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.143 = internal global [6 x i64] [i64 4, i64 7, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.144 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.145 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.146 = internal global [6 x i64] [i64 4, i64 2, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.147 = internal global [6 x i64] [i64 4, i64 32, i64 2, i64 3, i64 4, i64 5]
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 333, i32 2 }
@___asan_gen_.151 = private unnamed_addr constant [11 x i8] c"hw_rate_he\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 379, i32 19 }
@___asan_gen_.154 = private unnamed_addr constant [12 x i8] c"hw_rate_vht\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 383, i32 19 }
@___asan_gen_.157 = private unnamed_addr constant [11 x i8] c"hw_rate_ht\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 387, i32 19 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 440, i32 2 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 449, i32 2 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 484, i32 2 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 491, i32 2 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 580, i32 3 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 602, i32 3 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 906, i32 4 }
@___asan_gen_.208 = private unnamed_addr constant [17 x i8] c"rtw89_rs_idx_max\00", align 1
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 999, i32 10 }
@___asan_gen_.211 = private unnamed_addr constant [17 x i8] c"rtw89_rs_nss_max\00", align 1
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 1007, i32 10 }
@___asan_gen_.214 = private unnamed_addr constant [11 x i8] c"_byr_of_rs\00", align 1
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 1015, i32 17 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 1065, i32 3 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 1118, i32 3 }
@___asan_gen_.229 = private unnamed_addr constant [25 x i8] c"rtw89_phy_c2h_ra_handler\00", align 1
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 1431, i32 15 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 1450, i32 3 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 1454, i32 3 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 1859, i32 2 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 2400, i32 3 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 2419, i32 2 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 2912, i32 3 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 2915, i32 3 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 2931, i32 2 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 2938, i32 3 }
@___asan_gen_.271 = private unnamed_addr constant [23 x i8] c"rtw89_ra_mask_ht_rates\00", align 1
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 179, i32 1 }
@___asan_gen_.274 = private unnamed_addr constant [23 x i8] c"rtw89_ra_mask_he_rates\00", align 1
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 185, i32 1 }
@___asan_gen_.277 = private unnamed_addr constant [24 x i8] c"rtw89_ra_mask_vht_rates\00", align 1
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 182, i32 1 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 154, i32 3 }
@___asan_gen_.293 = private unnamed_addr constant [45 x i8] c"../drivers/net/wireless/realtek/rtw89/core.h\00", align 1
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 3031, i32 2 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 825, i32 3 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 841, i32 5 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 658, i32 3 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 677, i32 3 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 1090, i32 3 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 1249, i32 3 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 1763, i32 2 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 1770, i32 3 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 1774, i32 3 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 1782, i32 3 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 1788, i32 2 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 1789, i32 2 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 1521, i32 2 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 1502, i32 2 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 1503, i32 2 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 1504, i32 2 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 1506, i32 2 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 1628, i32 2 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 1637, i32 2 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 1639, i32 2 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 1662, i32 2 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 1664, i32 3 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 1671, i32 4 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 1677, i32 3 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 1684, i32 4 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 1690, i32 3 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 1695, i32 3 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 1710, i32 4 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 1719, i32 3 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 1721, i32 3 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 1723, i32 3 }
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 1726, i32 3 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 1729, i32 4 }
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 1734, i32 4 }
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 1741, i32 2 }
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 1598, i32 3 }
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 1613, i32 2 }
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 1534, i32 3 }
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 1538, i32 2 }
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 1544, i32 2 }
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 1891, i32 3 }
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 2274, i32 3 }
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 2328, i32 2 }
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 2330, i32 2 }
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 2333, i32 2 }
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 2336, i32 2 }
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 2340, i32 2 }
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 2342, i32 3 }
@___asan_gen_.471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 2247, i32 2 }
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 2250, i32 2 }
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 2253, i32 2 }
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 2256, i32 2 }
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 2260, i32 2 }
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 2047, i32 2 }
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 2375, i32 3 }
@___asan_gen_.492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 2170, i32 2 }
@___asan_gen_.495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 2184, i32 2 }
@___asan_gen_.498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 2038, i32 2 }
@___asan_gen_.501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 2103, i32 3 }
@___asan_gen_.504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 2133, i32 3 }
@___asan_gen_.507 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 2819, i32 2 }
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 2874, i32 3 }
@___asan_gen_.513 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 2878, i32 3 }
@___asan_gen_.516 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 2839, i32 2 }
@___asan_gen_.517 = private unnamed_addr constant [9 x i8] c"fa_th_2g\00", align 1
@___asan_gen_.519 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 2606, i32 18 }
@___asan_gen_.520 = private unnamed_addr constant [13 x i8] c"fa_th_nolink\00", align 1
@___asan_gen_.522 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 2608, i32 18 }
@___asan_gen_.523 = private unnamed_addr constant [9 x i8] c"fa_th_5g\00", align 1
@___asan_gen_.525 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 2607, i32 18 }
@___asan_gen_.526 = private unnamed_addr constant [12 x i8] c"igi_rssi_th\00", align 1
@___asan_gen_.528 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 2605, i32 17 }
@___asan_gen_.531 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 2777, i32 2 }
@___asan_gen_.534 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 2781, i32 2 }
@___asan_gen_.537 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 2619, i32 3 }
@___asan_gen_.540 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 2741, i32 2 }
@___asan_gen_.543 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 2728, i32 2 }
@___asan_gen_.546 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 2597, i32 2 }
@___asan_gen_.549 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 2550, i32 9 }
@___asan_gen_.552 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 2556, i32 9 }
@___asan_gen_.555 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 2562, i32 9 }
@___asan_gen_.558 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 2568, i32 9 }
@___asan_gen_.561 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 2581, i32 3 }
@___asan_gen_.564 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 1571, i32 2 }
@___asan_gen_.565 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.571 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.572 = private constant [44 x i8] c"../drivers/net/wireless/realtek/rtw89/phy.c\00", align 1
@___asan_gen_.573 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 931, i32 3 }
@___asan_gen_.574 = private unnamed_addr constant [32 x i8] c"switch.table.rtw89_phy_get_txsc\00", align 1
@___asan_gen_.575 = private unnamed_addr constant [35 x i8] c"switch.table.rtw89_phy_write32_idx\00", align 1
@___asan_gen_.576 = private unnamed_addr constant [36 x i8] c"switch.table.rtw89_phy_set_phy_regs\00", align 1
@llvm.compiler.used = appending global [161 x ptr] [ptr @__ksymtab_rtw89_phy_read_rf, ptr @__ksymtab_rtw89_phy_write_rf, ptr @rtw89_channel_to_idx._entry, ptr @rtw89_channel_to_idx._entry_ptr, ptr @rtw89_phy_c2h_handle._entry, ptr @rtw89_phy_c2h_handle._entry.20, ptr @rtw89_phy_c2h_handle._entry_ptr, ptr @rtw89_phy_c2h_handle._entry_ptr.22, ptr @rtw89_phy_cofig_rf_reg_store._entry, ptr @rtw89_phy_cofig_rf_reg_store._entry_ptr, ptr @rtw89_phy_config_rf_reg_fw._entry, ptr @rtw89_phy_config_rf_reg_fw._entry_ptr, ptr @rtw89_phy_init_reg._entry, ptr @rtw89_phy_init_reg._entry.36, ptr @rtw89_phy_init_reg._entry_ptr, ptr @rtw89_phy_init_reg._entry_ptr.38, ptr @rtw89_phy_init_rf_nctl._entry, ptr @rtw89_phy_init_rf_nctl._entry_ptr, ptr @rtw89_phy_init_rf_reg._entry, ptr @rtw89_phy_init_rf_reg._entry_ptr, ptr @rtw89_phy_ra_mask_cfg._entry, ptr @rtw89_phy_ra_mask_cfg._entry_ptr, ptr @rtw89_phy_read_rf._entry, ptr @rtw89_phy_read_rf._entry_ptr, ptr @rtw89_phy_read_txpwr_limit._entry, ptr @rtw89_phy_read_txpwr_limit._entry_ptr, ptr @rtw89_phy_read_txpwr_limit_ru._entry, ptr @rtw89_phy_read_txpwr_limit_ru._entry_ptr, ptr @rtw89_phy_write_rf._entry, ptr @rtw89_phy_write_rf._entry_ptr, ptr @.str, ptr @rtw89_phy_rate_pattern_vif.hw_rate_he, ptr @rtw89_phy_rate_pattern_vif.hw_rate_vht, ptr @rtw89_phy_rate_pattern_vif.hw_rate_ht, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @rtw89_rs_idx_max, ptr @rtw89_rs_nss_max, ptr @_byr_of_rs, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @rtw89_phy_c2h_ra_handler, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @rtw89_ra_mask_ht_rates, ptr @rtw89_ra_mask_he_rates, ptr @rtw89_ra_mask_vht_rates, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.37, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.95, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @fa_th_2g, ptr @fa_th_nolink, ptr @fa_th_5g, ptr @igi_rssi_th, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @switch.table.rtw89_phy_get_txsc, ptr @switch.table.rtw89_phy_write32_idx, ptr @switch.table.rtw89_phy_set_phy_regs], section "llvm.metadata"
@0 = internal global [145 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_phy_rate_pattern_vif.hw_rate_he to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_phy_rate_pattern_vif.hw_rate_vht to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_phy_rate_pattern_vif.hw_rate_ht to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_phy_read_rf._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_phy_write_rf._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_phy_init_rf_reg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_rs_idx_max to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_rs_nss_max to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_byr_of_rs to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_phy_read_txpwr_limit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_phy_c2h_ra_handler to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_phy_c2h_handle._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_phy_c2h_handle._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_ra_mask_ht_rates to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_ra_mask_he_rates to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_ra_mask_vht_rates to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_phy_ra_mask_cfg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_phy_init_reg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_phy_init_reg._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_phy_cofig_rf_reg_store._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_phy_config_rf_reg_fw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_channel_to_idx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_phy_read_txpwr_limit_ru._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fa_th_2g to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fa_th_nolink to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fa_th_5g to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igi_rssi_th to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_phy_init_rf_nctl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.rtw89_phy_get_txsc to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.rtw89_phy_write32_idx to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.rtw89_phy_set_phy_regs to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw89_phy_ra_updata_sta(ptr noundef %rtwdev, ptr noundef %sta) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ra1 = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 1, i32 0, i32 2
  tail call fastcc void @rtw89_phy_ra_sta_update(ptr noundef %rtwdev, ptr noundef %sta, i1 noundef zeroext false)
  %upd_mask = getelementptr inbounds %struct.rtw89_ra_info, ptr %ra1, i32 0, i32 2
  %0 = ptrtoint ptr %upd_mask to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load = load i16, ptr %upd_mask, align 2
  %bf.set = or i16 %bf.load, 1
  store i16 %bf.set, ptr %upd_mask, align 2
  %macid = getelementptr inbounds %struct.rtw89_ra_info, ptr %ra1, i32 0, i32 1
  %1 = ptrtoint ptr %macid to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %macid, align 1
  %conv = zext i8 %2 to i32
  %3 = ptrtoint ptr %ra1 to i32
  call void @__asan_load1_noabort(i32 %3)
  %bf.load2 = load i8, ptr %ra1, align 8
  %bf.clear3 = and i8 %bf.load2, 3
  %conv4 = zext i8 %bf.clear3 to i32
  %4 = lshr i16 %bf.load, 5
  %5 = and i16 %4, 7
  %conv7 = zext i16 %5 to i32
  %bf.lshr9 = lshr i16 %bf.load, 10
  %6 = and i16 %bf.lshr9, 1
  %bf.cast11 = zext i16 %6 to i32
  %7 = lshr i16 %bf.load, 2
  %8 = and i16 %7, 7
  %bf.cast16 = zext i16 %8 to i32
  tail call void (ptr, i32, ptr, ...) @__rtw89_debug(ptr noundef %rtwdev, i32 noundef 128, ptr noundef nonnull @.str, i32 noundef %conv, i32 noundef %conv4, i32 noundef %conv7, i32 noundef %bf.cast11, i32 noundef %bf.cast16) #10
  %call = tail call i32 @rtw89_fw_h2c_ra(ptr noundef %rtwdev, ptr noundef %ra1, i1 noundef zeroext false) #10
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rtw89_phy_ra_sta_update(ptr nocapture noundef readonly %rtwdev, ptr noundef %sta, i1 noundef zeroext %csi) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 29
  %rtwvif1 = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 1, i32 0, i32 1
  %0 = ptrtoint ptr %rtwvif1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rtwvif1, align 4
  %rate_pattern2 = getelementptr inbounds %struct.rtw89_vif, ptr %1, i32 0, i32 27
  %ra3 = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 1, i32 0, i32 2
  %avg_rssi = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 1, i32 5, i32 1
  %2 = ptrtoint ptr %avg_rssi to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %avg_rssi, align 4
  %shr.i = lshr i32 %3, 10
  %conv = trunc i32 %shr.i to i8
  %4 = call ptr @memset(ptr %ra3, i32 0, i32 24)
  %he_cap = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 6
  %5 = ptrtoint ptr %he_cap to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %he_cap, align 4, !range !291
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %bandwidth.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 14
  %7 = ptrtoint ptr %bandwidth.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %bandwidth.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %8)
  %cond.i = icmp eq i32 %8, 3
  br i1 %cond.i, label %sw.bb.i, label %sw.default.i

sw.bb.i:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %cap.sroa.75.0.he_cap.sroa_idx.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 6, i32 2, i32 4
  %9 = ptrtoint ptr %cap.sroa.75.0.he_cap.sroa_idx.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %cap.sroa.75.0.copyload.i = load i16, ptr %cap.sroa.75.0.he_cap.sroa_idx.i, align 2
  %cap.sroa.64.0.he_cap.sroa_idx.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 6, i32 2, i32 2
  %10 = ptrtoint ptr %cap.sroa.64.0.he_cap.sroa_idx.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %cap.sroa.64.0.copyload.i = load i16, ptr %cap.sroa.64.0.he_cap.sroa_idx.i, align 2
  %cap.sroa.4.0.he_cap.sroa_idx.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 6, i32 1, i32 1
  %11 = ptrtoint ptr %cap.sroa.4.0.he_cap.sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %cap.sroa.4.0.copyload.i = load i8, ptr %cap.sroa.4.0.he_cap.sroa_idx.i, align 1
  %12 = and i8 %cap.sroa.4.0.copyload.i, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not.i = icmp eq i8 %12, 0
  %cap.sroa.64.0.copyload.cap.sroa.75.0.copyload.i = select i1 %tobool.not.i, i16 %cap.sroa.64.0.copyload.i, i16 %cap.sroa.75.0.copyload.i
  br label %sw.epilog.i

sw.default.i:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %cap.sroa.53.0.he_cap.sroa_idx.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 6, i32 2
  %13 = ptrtoint ptr %cap.sroa.53.0.he_cap.sroa_idx.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %cap.sroa.53.0.copyload.i = load i16, ptr %cap.sroa.53.0.he_cap.sroa_idx.i, align 2
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.default.i, %sw.bb.i
  %cap.sroa.75.0.copyload.sink.i = phi i16 [ %cap.sroa.53.0.copyload.i, %sw.default.i ], [ %cap.sroa.64.0.copyload.cap.sroa.75.0.copyload.i, %sw.bb.i ]
  %14 = tail call i16 @llvm.bswap.i16(i16 %cap.sroa.75.0.copyload.sink.i) #10
  %15 = and i16 %14, 3
  %conv1.i.i = zext i16 %15 to i32
  %16 = zext i32 %conv1.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values)
  switch i32 %conv1.i.i, label %sw.epilog.i.for.inc.i.i_crit_edge [
    i32 2, label %sw.bb.i.i
    i32 1, label %sw.bb6.i.i
    i32 0, label %sw.bb18.i.i
  ]

sw.epilog.i.for.inc.i.i_crit_edge:                ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i

sw.bb.i.i:                                        ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i

sw.bb6.i.i:                                       ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i

sw.bb18.i.i:                                      ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %sw.bb18.i.i, %sw.bb6.i.i, %sw.bb.i.i, %sw.epilog.i.for.inc.i.i_crit_edge
  %ra_mask.1.i.i = phi i64 [ 0, %sw.epilog.i.for.inc.i.i_crit_edge ], [ 1044480, %sw.bb18.i.i ], [ 4190208, %sw.bb6.i.i ], [ 16773120, %sw.bb.i.i ]
  %17 = lshr i16 %14, 2
  %18 = and i16 %17, 3
  %conv1.1.i.i = zext i16 %18 to i32
  %19 = zext i32 %conv1.1.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.120)
  switch i32 %conv1.1.i.i, label %for.inc.i.i.for.inc.1.i.i_crit_edge [
    i32 2, label %sw.bb.1.i.i
    i32 1, label %sw.bb6.1.i.i
    i32 0, label %sw.bb18.1.i.i
  ]

for.inc.i.i.for.inc.1.i.i_crit_edge:              ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.1.i.i

sw.bb18.1.i.i:                                    ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %or29.1.i.i = or i64 %ra_mask.1.i.i, 4278190080
  br label %for.inc.1.i.i

sw.bb6.1.i.i:                                     ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %or17.1.i.i = or i64 %ra_mask.1.i.i, 17163091968
  br label %for.inc.1.i.i

sw.bb.1.i.i:                                      ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %or.1.i.i = or i64 %ra_mask.1.i.i, 68702699520
  br label %for.inc.1.i.i

for.inc.1.i.i:                                    ; preds = %sw.bb.1.i.i, %sw.bb6.1.i.i, %sw.bb18.1.i.i, %for.inc.i.i.for.inc.1.i.i_crit_edge
  %ra_mask.1.1.i.i = phi i64 [ %ra_mask.1.i.i, %for.inc.i.i.for.inc.1.i.i_crit_edge ], [ %or29.1.i.i, %sw.bb18.1.i.i ], [ %or17.1.i.i, %sw.bb6.1.i.i ], [ %or.1.i.i, %sw.bb.1.i.i ]
  %20 = lshr i16 %14, 4
  %21 = and i16 %20, 3
  %conv1.2.i.i = zext i16 %21 to i32
  %22 = zext i32 %conv1.2.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.121)
  switch i32 %conv1.2.i.i, label %for.inc.1.i.i.for.inc.2.i.i_crit_edge [
    i32 2, label %sw.bb.2.i.i
    i32 1, label %sw.bb6.2.i.i
    i32 0, label %sw.bb18.2.i.i
  ]

for.inc.1.i.i.for.inc.2.i.i_crit_edge:            ; preds = %for.inc.1.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.2.i.i

sw.bb18.2.i.i:                                    ; preds = %for.inc.1.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %or29.2.i.i = or i64 %ra_mask.1.1.i.i, 17523466567680
  br label %for.inc.2.i.i

sw.bb6.2.i.i:                                     ; preds = %for.inc.1.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %or17.2.i.i = or i64 %ra_mask.1.1.i.i, 70300024700928
  br label %for.inc.2.i.i

sw.bb.2.i.i:                                      ; preds = %for.inc.1.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %or.2.i.i = or i64 %ra_mask.1.1.i.i, 281406257233920
  br label %for.inc.2.i.i

for.inc.2.i.i:                                    ; preds = %sw.bb.2.i.i, %sw.bb6.2.i.i, %sw.bb18.2.i.i, %for.inc.1.i.i.for.inc.2.i.i_crit_edge
  %ra_mask.1.2.i.i = phi i64 [ %ra_mask.1.1.i.i, %for.inc.1.i.i.for.inc.2.i.i_crit_edge ], [ %or29.2.i.i, %sw.bb18.2.i.i ], [ %or17.2.i.i, %sw.bb6.2.i.i ], [ %or.2.i.i, %sw.bb.2.i.i ]
  %23 = lshr i16 %14, 6
  %24 = and i16 %23, 3
  %conv1.3.i.i = zext i16 %24 to i32
  %25 = zext i32 %conv1.3.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.122)
  switch i32 %conv1.3.i.i, label %for.inc.2.i.i.get_he_ra_mask.exit_crit_edge [
    i32 2, label %sw.bb.3.i.i
    i32 1, label %sw.bb6.3.i.i
    i32 0, label %sw.bb18.3.i.i
  ]

for.inc.2.i.i.get_he_ra_mask.exit_crit_edge:      ; preds = %for.inc.2.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %get_he_ra_mask.exit

sw.bb18.3.i.i:                                    ; preds = %for.inc.2.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %or29.3.i.i = or i64 %ra_mask.1.2.i.i, 71776119061217280
  br label %get_he_ra_mask.exit

sw.bb6.3.i.i:                                     ; preds = %for.inc.2.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %or17.3.i.i = or i64 %ra_mask.1.2.i.i, 287948901175001088
  br label %get_he_ra_mask.exit

sw.bb.3.i.i:                                      ; preds = %for.inc.2.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %or.3.i.i = or i64 %ra_mask.1.2.i.i, 1152640029630136320
  br label %get_he_ra_mask.exit

get_he_ra_mask.exit:                              ; preds = %sw.bb.3.i.i, %sw.bb6.3.i.i, %sw.bb18.3.i.i, %for.inc.2.i.i.get_he_ra_mask.exit_crit_edge
  %ra_mask.1.3.i.i = phi i64 [ %ra_mask.1.2.i.i, %for.inc.2.i.i.get_he_ra_mask.exit_crit_edge ], [ %or29.3.i.i, %sw.bb18.3.i.i ], [ %or17.3.i.i, %sw.bb6.3.i.i ], [ %or.3.i.i, %sw.bb.3.i.i ]
  %arrayidx = getelementptr %struct.ieee80211_sta, ptr %sta, i32 0, i32 6, i32 1, i32 1, i32 2
  %26 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx, align 1
  %28 = lshr i8 %27, 3
  %.lobit = and i8 %28, 1
  %arrayidx15 = getelementptr %struct.ieee80211_sta, ptr %sta, i32 0, i32 6, i32 1, i32 1, i32 1
  %29 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx15, align 1
  %31 = lshr i8 %30, 5
  %.lobit383 = and i8 %31, 1
  br label %if.end89

if.else:                                          ; preds = %entry
  %vht_cap = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 5
  %32 = ptrtoint ptr %vht_cap to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %vht_cap, align 4, !range !291
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool21.not = icmp eq i8 %33, 0
  br i1 %tobool21.not, label %if.else40, label %if.then22

if.then22:                                        ; preds = %if.else
  %vht_mcs = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 5, i32 2
  %34 = ptrtoint ptr %vht_mcs to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %vht_mcs, align 4
  %36 = tail call i16 @llvm.bswap.i16(i16 %35)
  %37 = and i16 %36, 3
  %conv1.i = zext i16 %37 to i32
  %38 = zext i32 %conv1.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %38, ptr @__sancov_gen_cov_switch_values.123)
  switch i32 %conv1.i, label %if.then22.for.inc.i_crit_edge [
    i32 2, label %sw.bb.i379
    i32 1, label %sw.bb6.i
    i32 0, label %sw.bb18.i
  ]

if.then22.for.inc.i_crit_edge:                    ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

sw.bb.i379:                                       ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

sw.bb6.i:                                         ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

sw.bb18.i:                                        ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

for.inc.i:                                        ; preds = %sw.bb18.i, %sw.bb6.i, %sw.bb.i379, %if.then22.for.inc.i_crit_edge
  %ra_mask.1.i = phi i64 [ 0, %if.then22.for.inc.i_crit_edge ], [ 1044480, %sw.bb18.i ], [ 2093056, %sw.bb6.i ], [ 4190208, %sw.bb.i379 ]
  %39 = lshr i16 %36, 2
  %40 = and i16 %39, 3
  %conv1.1.i = zext i16 %40 to i32
  %41 = zext i32 %conv1.1.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %41, ptr @__sancov_gen_cov_switch_values.124)
  switch i32 %conv1.1.i, label %for.inc.i.for.inc.1.i_crit_edge [
    i32 2, label %sw.bb.1.i
    i32 1, label %sw.bb6.1.i
    i32 0, label %sw.bb18.1.i
  ]

for.inc.i.for.inc.1.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.1.i

sw.bb18.1.i:                                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  %or29.1.i = or i64 %ra_mask.1.i, 4278190080
  br label %for.inc.1.i

sw.bb6.1.i:                                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  %or17.1.i = or i64 %ra_mask.1.i, 8573157376
  br label %for.inc.1.i

sw.bb.1.i:                                        ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  %or.1.i = or i64 %ra_mask.1.i, 17163091968
  br label %for.inc.1.i

for.inc.1.i:                                      ; preds = %sw.bb.1.i, %sw.bb6.1.i, %sw.bb18.1.i, %for.inc.i.for.inc.1.i_crit_edge
  %ra_mask.1.1.i = phi i64 [ %ra_mask.1.i, %for.inc.i.for.inc.1.i_crit_edge ], [ %or29.1.i, %sw.bb18.1.i ], [ %or17.1.i, %sw.bb6.1.i ], [ %or.1.i, %sw.bb.1.i ]
  %42 = lshr i16 %36, 4
  %43 = and i16 %42, 3
  %conv1.2.i = zext i16 %43 to i32
  %44 = zext i32 %conv1.2.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %44, ptr @__sancov_gen_cov_switch_values.125)
  switch i32 %conv1.2.i, label %for.inc.1.i.for.inc.2.i_crit_edge [
    i32 2, label %sw.bb.2.i
    i32 1, label %sw.bb6.2.i
    i32 0, label %sw.bb18.2.i
  ]

for.inc.1.i.for.inc.2.i_crit_edge:                ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.2.i

sw.bb18.2.i:                                      ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #12
  %or29.2.i = or i64 %ra_mask.1.1.i, 17523466567680
  br label %for.inc.2.i

sw.bb6.2.i:                                       ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #12
  %or17.2.i = or i64 %ra_mask.1.1.i, 35115652612096
  br label %for.inc.2.i

sw.bb.2.i:                                        ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #12
  %or.2.i = or i64 %ra_mask.1.1.i, 70300024700928
  br label %for.inc.2.i

for.inc.2.i:                                      ; preds = %sw.bb.2.i, %sw.bb6.2.i, %sw.bb18.2.i, %for.inc.1.i.for.inc.2.i_crit_edge
  %ra_mask.1.2.i = phi i64 [ %ra_mask.1.1.i, %for.inc.1.i.for.inc.2.i_crit_edge ], [ %or29.2.i, %sw.bb18.2.i ], [ %or17.2.i, %sw.bb6.2.i ], [ %or.2.i, %sw.bb.2.i ]
  %45 = lshr i16 %36, 6
  %46 = and i16 %45, 3
  %conv1.3.i = zext i16 %46 to i32
  %47 = zext i32 %conv1.3.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %47, ptr @__sancov_gen_cov_switch_values.126)
  switch i32 %conv1.3.i, label %for.inc.2.i.get_mcs_ra_mask.exit_crit_edge [
    i32 2, label %sw.bb.3.i
    i32 1, label %sw.bb6.3.i
    i32 0, label %sw.bb18.3.i
  ]

for.inc.2.i.get_mcs_ra_mask.exit_crit_edge:       ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %get_mcs_ra_mask.exit

sw.bb18.3.i:                                      ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #12
  %or29.3.i = or i64 %ra_mask.1.2.i, 71776119061217280
  br label %get_mcs_ra_mask.exit

sw.bb6.3.i:                                       ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #12
  %or17.3.i = or i64 %ra_mask.1.2.i, 143833713099145216
  br label %get_mcs_ra_mask.exit

sw.bb.3.i:                                        ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #12
  %or.3.i = or i64 %ra_mask.1.2.i, 287948901175001088
  br label %get_mcs_ra_mask.exit

get_mcs_ra_mask.exit:                             ; preds = %sw.bb.3.i, %sw.bb6.3.i, %sw.bb18.3.i, %for.inc.2.i.get_mcs_ra_mask.exit_crit_edge
  %ra_mask.1.3.i = phi i64 [ %ra_mask.1.2.i, %for.inc.2.i.get_mcs_ra_mask.exit_crit_edge ], [ %or29.3.i, %sw.bb18.3.i ], [ %or17.3.i, %sw.bb6.3.i ], [ %or.3.i, %sw.bb.3.i ]
  %cap = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 5, i32 1
  %48 = ptrtoint ptr %cap to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %cap, align 4
  %and30 = and i32 %49, 1792
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %tobool31.not = icmp ne i32 %and30, 0
  %spec.select372 = zext i1 %tobool31.not to i8
  %50 = trunc i32 %49 to i8
  %51 = lshr i8 %50, 4
  %52 = and i8 %51, 1
  br label %if.end89

if.else40:                                        ; preds = %if.else
  %ht_supported = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 3, i32 1
  %53 = ptrtoint ptr %ht_supported to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %ht_supported, align 2, !range !291
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool41.not = icmp eq i8 %54, 0
  br i1 %tobool41.not, label %if.else40.if.end89_crit_edge, label %if.then42

if.else40.if.end89_crit_edge:                     ; preds = %if.else40
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end89

if.then42:                                        ; preds = %if.else40
  call void @__sanitizer_cov_trace_pc() #12
  %ht_cap = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 3
  %mcs = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 3, i32 4
  %arrayidx47 = getelementptr %struct.ieee80211_sta, ptr %sta, i32 0, i32 3, i32 4, i32 0, i32 3
  %55 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %arrayidx47, align 1
  %conv48 = zext i8 %56 to i64
  %shl = shl nuw nsw i64 %conv48, 48
  %arrayidx52 = getelementptr %struct.ieee80211_sta, ptr %sta, i32 0, i32 3, i32 4, i32 0, i32 2
  %57 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %arrayidx52, align 1
  %conv53 = zext i8 %58 to i64
  %shl54 = shl nuw nsw i64 %conv53, 36
  %or55 = or i64 %shl54, %shl
  %arrayidx59 = getelementptr %struct.ieee80211_sta, ptr %sta, i32 0, i32 3, i32 4, i32 0, i32 1
  %59 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %arrayidx59, align 1
  %conv60 = zext i8 %60 to i32
  %shl61 = shl nuw i32 %conv60, 24
  %conv62 = sext i32 %shl61 to i64
  %or63 = or i64 %or55, %conv62
  %61 = ptrtoint ptr %mcs to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %mcs, align 1
  %conv68 = zext i8 %62 to i32
  %shl69 = shl nuw nsw i32 %conv68, 12
  %63 = zext i32 %shl69 to i64
  %or71 = or i64 %or63, %63
  %64 = ptrtoint ptr %ht_cap to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %ht_cap, align 4
  %66 = and i16 %65, 768
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %66)
  %tobool77.not = icmp ne i16 %66, 0
  %spec.select373 = zext i1 %tobool77.not to i8
  %67 = trunc i16 %65 to i8
  %68 = and i8 %67, 1
  br label %if.end89

if.end89:                                         ; preds = %if.then42, %if.else40.if.end89_crit_edge, %get_mcs_ra_mask.exit, %get_he_ra_mask.exit
  %high_rate_masks.0 = phi ptr [ @rtw89_ra_mask_vht_rates, %get_mcs_ra_mask.exit ], [ @rtw89_ra_mask_ht_rates, %if.else40.if.end89_crit_edge ], [ @rtw89_ra_mask_he_rates, %get_he_ra_mask.exit ], [ @rtw89_ra_mask_ht_rates, %if.then42 ]
  %ra_mask.0 = phi i64 [ %ra_mask.1.3.i, %get_mcs_ra_mask.exit ], [ 0, %if.else40.if.end89_crit_edge ], [ %ra_mask.1.3.i.i, %get_he_ra_mask.exit ], [ %or71, %if.then42 ]
  %mode.0 = phi i8 [ 8, %get_mcs_ra_mask.exit ], [ 0, %if.else40.if.end89_crit_edge ], [ 16, %get_he_ra_mask.exit ], [ 4, %if.then42 ]
  %csi_mode.0 = phi i8 [ -128, %get_mcs_ra_mask.exit ], [ 0, %if.else40.if.end89_crit_edge ], [ -64, %get_he_ra_mask.exit ], [ 64, %if.then42 ]
  %stbc_en.3 = phi i8 [ %spec.select372, %get_mcs_ra_mask.exit ], [ 0, %if.else40.if.end89_crit_edge ], [ %.lobit, %get_he_ra_mask.exit ], [ %spec.select373, %if.then42 ]
  %ldpc_en.1 = phi i8 [ %52, %get_mcs_ra_mask.exit ], [ 0, %if.else40.if.end89_crit_edge ], [ %.lobit383, %get_he_ra_mask.exit ], [ %68, %if.then42 ]
  %current_band_type = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 4, i32 7
  %69 = ptrtoint ptr %current_band_type to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %current_band_type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %70)
  %cmp = icmp eq i8 %70, 0
  br i1 %cmp, label %if.then92, label %if.end89.if.end109_crit_edge

if.end89.if.end109_crit_edge:                     ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end109

if.then92:                                        ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #12
  %71 = ptrtoint ptr %sta to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %sta, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %72)
  %cmp94 = icmp ult i32 %72, 16
  %. = select i1 %cmp94, i8 1, i8 3
  br label %if.end109

if.end109:                                        ; preds = %if.then92, %if.end89.if.end109_crit_edge
  %.sink = phi i8 [ %., %if.then92 ], [ 2, %if.end89.if.end109_crit_edge ]
  %conv99 = or i8 %mode.0, %.sink
  %conv110 = zext i8 %conv99 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %conv99)
  %cmp111 = icmp ugt i8 %conv99, 3
  br i1 %cmp111, label %for.cond.preheader, label %if.else134

for.cond.preheader:                               ; preds = %if.end109
  %tx_nss = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 4, i32 11
  %73 = ptrtoint ptr %tx_nss to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %tx_nss, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %74)
  %cmp117384.not = icmp eq i8 %74, 0
  br i1 %cmp117384.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.preheader

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.preheader:                               ; preds = %for.cond.preheader
  %wide.trip.count = zext i8 %74 to i32
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %indvars.iv = phi i32 [ 0, %for.body.preheader ], [ %indvars.iv.next, %for.body.for.body_crit_edge ]
  %high_rate_mask.0385 = phi i64 [ 0, %for.body.preheader ], [ %or120, %for.body.for.body_crit_edge ]
  %arrayidx119 = getelementptr i64, ptr %high_rate_masks.0, i32 %indvars.iv
  %75 = ptrtoint ptr %arrayidx119 to i32
  call void @__asan_load8_noabort(i32 %75)
  %76 = load i64, ptr %arrayidx119, align 8
  %or120 = or i64 %76, %high_rate_mask.0385
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %high_rate_mask.0.lcssa = phi i64 [ 0, %for.cond.preheader.for.end_crit_edge ], [ %or120, %for.body.for.end_crit_edge ]
  %and121 = and i64 %high_rate_mask.0.lcssa, %ra_mask.0
  %and123 = shl nuw nsw i32 %conv110, 3
  %77 = and i32 %and123, 16
  %78 = zext i32 %77 to i64
  %79 = or i64 %and121, %78
  %and129 = and i32 %conv110, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and129)
  %tobool130.not = icmp eq i32 %and129, 0
  %or132 = or i64 %79, 5
  %spec.select378 = select i1 %tobool130.not, i64 %79, i64 %or132
  br label %if.end148

if.else134:                                       ; preds = %if.end109
  %and136 = and i32 %conv110, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and136)
  %tobool137.not = icmp eq i32 %and136, 0
  br i1 %tobool137.not, label %if.else134.if.end148_crit_edge, label %if.then138

if.else134.if.end148_crit_edge:                   ; preds = %if.else134
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end148

if.then138:                                       ; preds = %if.else134
  call void @__sanitizer_cov_trace_pc() #12
  %and140 = and i32 %conv110, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and140)
  %tobool141.not = icmp eq i32 %and140, 0
  %or143 = or i64 %ra_mask.0, 5
  %spec.select375 = select i1 %tobool141.not, i64 %ra_mask.0, i64 %or143
  %or145 = or i64 %spec.select375, 4080
  br label %if.end148

if.end148:                                        ; preds = %if.then138, %if.else134.if.end148_crit_edge, %for.end
  %ra_mask.3 = phi i64 [ %or145, %if.then138 ], [ 15, %if.else134.if.end148_crit_edge ], [ %spec.select378, %for.end ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %conv99)
  %cmp150.not = icmp eq i8 %conv99, 1
  br i1 %cmp150.not, label %if.end148.if.end157_crit_edge, label %if.then152

if.end148.if.end157_crit_edge:                    ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end157

if.then152:                                       ; preds = %if.end148
  call void @__sanitizer_cov_trace_const_cmp1(i8 66, i8 %conv)
  %cmp14.i = icmp ult i8 %conv, 66
  br i1 %cmp14.i, label %if.then152.rtw89_phy_ra_mask_rssi.exit_crit_edge, label %for.inc.i380

if.then152.rtw89_phy_ra_mask_rssi.exit_crit_edge: ; preds = %if.then152
  call void @__sanitizer_cov_trace_pc() #12
  br label %rtw89_phy_ra_mask_rssi.exit

for.inc.i380:                                     ; preds = %if.then152
  call void @__sanitizer_cov_trace_const_cmp1(i8 94, i8 %conv)
  %cmp14.1.i = icmp ult i8 %conv, 94
  br i1 %cmp14.1.i, label %for.inc.i380.rtw89_phy_ra_mask_rssi.exit_crit_edge, label %for.inc.1.i381

for.inc.i380.rtw89_phy_ra_mask_rssi.exit_crit_edge: ; preds = %for.inc.i380
  call void @__sanitizer_cov_trace_pc() #12
  br label %rtw89_phy_ra_mask_rssi.exit

for.inc.1.i381:                                   ; preds = %for.inc.i380
  call void @__sanitizer_cov_trace_const_cmp1(i8 102, i8 %conv)
  %cmp14.2.i = icmp ult i8 %conv, 102
  br i1 %cmp14.2.i, label %for.inc.1.i381.rtw89_phy_ra_mask_rssi.exit_crit_edge, label %for.inc.2.i382

for.inc.1.i381.rtw89_phy_ra_mask_rssi.exit_crit_edge: ; preds = %for.inc.1.i381
  call void @__sanitizer_cov_trace_pc() #12
  br label %rtw89_phy_ra_mask_rssi.exit

for.inc.2.i382:                                   ; preds = %for.inc.1.i381
  call void @__sanitizer_cov_trace_const_cmp1(i8 110, i8 %conv)
  %cmp14.3.i = icmp ult i8 %conv, 110
  br i1 %cmp14.3.i, label %for.inc.2.i382.rtw89_phy_ra_mask_rssi.exit_crit_edge, label %for.inc.3.i

for.inc.2.i382.rtw89_phy_ra_mask_rssi.exit_crit_edge: ; preds = %for.inc.2.i382
  call void @__sanitizer_cov_trace_pc() #12
  br label %rtw89_phy_ra_mask_rssi.exit

for.inc.3.i:                                      ; preds = %for.inc.2.i382
  call void @__sanitizer_cov_trace_const_cmp1(i8 118, i8 %conv)
  %cmp14.4.i = icmp ult i8 %conv, 118
  br i1 %cmp14.4.i, label %for.inc.3.i.rtw89_phy_ra_mask_rssi.exit_crit_edge, label %for.inc.4.i

for.inc.3.i.rtw89_phy_ra_mask_rssi.exit_crit_edge: ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rtw89_phy_ra_mask_rssi.exit

for.inc.4.i:                                      ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp1(i8 -50, i8 %conv)
  %cmp14.6.i = icmp ult i8 %conv, -50
  %spec.select.i = select i1 %cmp14.6.i, i64 -256, i64 -1
  br label %rtw89_phy_ra_mask_rssi.exit

rtw89_phy_ra_mask_rssi.exit:                      ; preds = %for.inc.4.i, %for.inc.3.i.rtw89_phy_ra_mask_rssi.exit_crit_edge, %for.inc.2.i382.rtw89_phy_ra_mask_rssi.exit_crit_edge, %for.inc.1.i381.rtw89_phy_ra_mask_rssi.exit_crit_edge, %for.inc.i380.rtw89_phy_ra_mask_rssi.exit_crit_edge, %if.then152.rtw89_phy_ra_mask_rssi.exit_crit_edge
  %retval.0.i = phi i64 [ -16, %for.inc.i380.rtw89_phy_ra_mask_rssi.exit_crit_edge ], [ -32, %for.inc.1.i381.rtw89_phy_ra_mask_rssi.exit_crit_edge ], [ -64, %for.inc.2.i382.rtw89_phy_ra_mask_rssi.exit_crit_edge ], [ -128, %for.inc.3.i.rtw89_phy_ra_mask_rssi.exit_crit_edge ], [ -1, %if.then152.rtw89_phy_ra_mask_rssi.exit_crit_edge ], [ %spec.select.i, %for.inc.4.i ]
  %and154 = and i64 %retval.0.i, %ra_mask.3
  %call155 = tail call fastcc i64 @rtw89_phy_ra_mask_cfg(ptr noundef %rtwdev, ptr noundef %drv_priv)
  %and156 = and i64 %and154, %call155
  br label %if.end157

if.end157:                                        ; preds = %rtw89_phy_ra_mask_rssi.exit, %if.end148.if.end157_crit_edge
  %ra_mask.4 = phi i64 [ %and156, %rtw89_phy_ra_mask_rssi.exit ], [ %ra_mask.3, %if.end148.if.end157_crit_edge ]
  %bandwidth = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 14
  %80 = ptrtoint ptr %bandwidth to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %bandwidth, align 4
  %82 = zext i32 %81 to i64
  call void @__sanitizer_cov_trace_switch(i64 %82, ptr @__sancov_gen_cov_switch_values.127)
  switch i32 %81, label %sw.default [
    i32 2, label %sw.bb
    i32 1, label %sw.bb167
  ]

sw.bb:                                            ; preds = %if.end157
  %vht_cap158 = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 5
  %83 = ptrtoint ptr %vht_cap158 to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %vht_cap158, align 4, !range !291
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %84)
  %tobool160.not = icmp eq i8 %84, 0
  br i1 %tobool160.not, label %sw.bb.sw.epilog_crit_edge, label %land.rhs

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

land.rhs:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  %cap163 = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 5, i32 1
  %85 = ptrtoint ptr %cap163 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %cap163, align 4
  %and164 = and i32 %86, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and164)
  %tobool165 = icmp ne i32 %and164, 0
  br label %sw.epilog

sw.bb167:                                         ; preds = %if.end157
  %ht_supported169 = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 3, i32 1
  %87 = ptrtoint ptr %ht_supported169 to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %ht_supported169, align 2, !range !291
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %88)
  %tobool170.not = icmp eq i8 %88, 0
  br i1 %tobool170.not, label %sw.bb167.sw.epilog_crit_edge, label %land.rhs172

sw.bb167.sw.epilog_crit_edge:                     ; preds = %sw.bb167
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

land.rhs172:                                      ; preds = %sw.bb167
  call void @__sanitizer_cov_trace_pc() #12
  %ht_cap168 = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 3
  %89 = ptrtoint ptr %ht_cap168 to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %ht_cap168, align 4
  %91 = and i16 %90, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %91)
  %tobool177 = icmp ne i16 %91, 0
  br label %sw.epilog

sw.default:                                       ; preds = %if.end157
  %ht_supported181 = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 3, i32 1
  %92 = ptrtoint ptr %ht_supported181 to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %ht_supported181, align 2, !range !291
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %93)
  %tobool182.not = icmp eq i8 %93, 0
  br i1 %tobool182.not, label %sw.default.sw.epilog_crit_edge, label %land.rhs184

sw.default.sw.epilog_crit_edge:                   ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

land.rhs184:                                      ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #12
  %ht_cap180 = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 3
  %94 = ptrtoint ptr %ht_cap180 to i32
  call void @__asan_load2_noabort(i32 %94)
  %95 = load i16, ptr %ht_cap180, align 4
  %96 = and i16 %95, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %96)
  %tobool189 = icmp ne i16 %96, 0
  br label %sw.epilog

sw.epilog:                                        ; preds = %land.rhs184, %sw.default.sw.epilog_crit_edge, %land.rhs172, %sw.bb167.sw.epilog_crit_edge, %land.rhs, %sw.bb.sw.epilog_crit_edge
  %bw_mode.0 = phi i8 [ 2, %land.rhs ], [ 2, %sw.bb.sw.epilog_crit_edge ], [ 1, %land.rhs172 ], [ 1, %sw.bb167.sw.epilog_crit_edge ], [ 0, %land.rhs184 ], [ 0, %sw.default.sw.epilog_crit_edge ]
  %sgi.0.in = phi i1 [ %tobool165, %land.rhs ], [ false, %sw.bb.sw.epilog_crit_edge ], [ %tobool177, %land.rhs172 ], [ false, %sw.bb167.sw.epilog_crit_edge ], [ %tobool189, %land.rhs184 ], [ false, %sw.default.sw.epilog_crit_edge ]
  %arrayidx195 = getelementptr %struct.ieee80211_sta, ptr %sta, i32 0, i32 6, i32 1, i32 1, i32 3
  %97 = ptrtoint ptr %arrayidx195 to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %arrayidx195, align 1
  %99 = and i8 %98, 24
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %99)
  %tobool198.not = icmp eq i8 %99, 0
  br i1 %tobool198.not, label %sw.epilog.if.end200_crit_edge, label %if.then199

sw.epilog.if.end200_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end200

if.then199:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  %dcm_cap = getelementptr inbounds %struct.rtw89_ra_info, ptr %ra3, i32 0, i32 2
  %100 = ptrtoint ptr %dcm_cap to i32
  call void @__asan_load2_noabort(i32 %100)
  %bf.load = load i16, ptr %dcm_cap, align 2
  %bf.set = or i16 %bf.load, -32768
  store i16 %bf.set, ptr %dcm_cap, align 2
  br label %if.end200

if.end200:                                        ; preds = %if.then199, %sw.epilog.if.end200_crit_edge
  %enable = getelementptr inbounds %struct.rtw89_vif, ptr %1, i32 0, i32 27, i32 3
  %101 = ptrtoint ptr %enable to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %enable, align 1, !range !291
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %102)
  %tobool201.not = icmp eq i8 %102, 0
  br i1 %tobool201.not, label %if.end200.if.end206_crit_edge, label %if.then202

if.end200.if.end206_crit_edge:                    ; preds = %if.end200
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end206

if.then202:                                       ; preds = %if.end200
  call void @__sanitizer_cov_trace_pc() #12
  %call203 = tail call fastcc i64 @rtw89_phy_ra_mask_cfg(ptr noundef %rtwdev, ptr noundef %drv_priv)
  %103 = ptrtoint ptr %rate_pattern2 to i32
  call void @__asan_load8_noabort(i32 %103)
  %104 = load i64, ptr %rate_pattern2, align 8
  %and205 = and i64 %104, %call203
  %ra_mode = getelementptr inbounds %struct.rtw89_vif, ptr %1, i32 0, i32 27, i32 2
  %105 = ptrtoint ptr %ra_mode to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %ra_mode, align 2
  br label %if.end206

if.end206:                                        ; preds = %if.then202, %if.end200.if.end206_crit_edge
  %ra_mask.5 = phi i64 [ %and205, %if.then202 ], [ %ra_mask.4, %if.end200.if.end206_crit_edge ]
  %mode.2 = phi i8 [ %106, %if.then202 ], [ %conv99, %if.end200.if.end206_crit_edge ]
  %107 = ptrtoint ptr %ra3 to i32
  call void @__asan_load1_noabort(i32 %107)
  %bf.load207 = load i8, ptr %ra3, align 8
  %bf.clear208 = and i8 %bf.load207, -128
  %bf.set209 = or i8 %bf.clear208, %bw_mode.0
  %bf.value211 = shl i8 %mode.2, 2
  %bf.shl = and i8 %bf.value211, 124
  %bf.set213 = or i8 %bf.set209, %bf.shl
  store i8 %bf.set213, ptr %ra3, align 8
  %108 = ptrtoint ptr %drv_priv to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %drv_priv, align 8
  %macid = getelementptr inbounds %struct.rtw89_ra_info, ptr %ra3, i32 0, i32 1
  %110 = ptrtoint ptr %macid to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 %109, ptr %macid, align 1
  %stbc_cap = getelementptr inbounds %struct.rtw89_ra_info, ptr %ra3, i32 0, i32 2
  %111 = ptrtoint ptr %stbc_cap to i32
  call void @__asan_load2_noabort(i32 %111)
  %bf.load214 = load i16, ptr %stbc_cap, align 2
  %bf.value215 = zext i8 %stbc_en.3 to i16
  %bf.shl216 = shl nuw nsw i16 %bf.value215, 8
  %bf.clear217 = and i16 %bf.load214, -769
  %bf.set218 = or i16 %bf.clear217, %bf.shl216
  %bf.value220 = zext i8 %ldpc_en.1 to i16
  %bf.shl221 = shl nuw nsw i16 %bf.value220, 9
  %bf.set223 = or i16 %bf.set218, %bf.shl221
  store i16 %bf.set223, ptr %stbc_cap, align 2
  %rx_nss = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 13
  %112 = ptrtoint ptr %rx_nss to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %rx_nss, align 1
  %tx_nss226 = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 4, i32 11
  %114 = ptrtoint ptr %tx_nss226 to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %tx_nss226, align 4
  %116 = tail call i8 @llvm.umin.i8(i8 %113, i8 %115)
  %sub = shl i8 %116, 5
  %117 = add i8 %sub, -32
  %bf.shl236 = zext i8 %117 to i16
  %bf.clear237 = and i16 %bf.set223, -1249
  %bf.shl244 = select i1 %sgi.0.in, i16 1024, i16 0
  %bf.set238 = or i16 %bf.clear237, %bf.shl244
  %bf.set246 = or i16 %bf.set238, %bf.shl236
  %118 = ptrtoint ptr %stbc_cap to i32
  call void @__asan_store2_noabort(i32 %118)
  store i16 %bf.set246, ptr %stbc_cap, align 2
  %ra_mask248 = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 1, i32 0, i32 4
  %119 = ptrtoint ptr %ra_mask248 to i32
  call void @__asan_store8_noabort(i32 %119)
  store i64 %ra_mask.5, ptr %ra_mask248, align 8
  br i1 %csi, label %if.end251, label %if.end206.cleanup_crit_edge

if.end206.cleanup_crit_edge:                      ; preds = %if.end206
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end251:                                        ; preds = %if.end206
  call void @__sanitizer_cov_trace_pc() #12
  %fixed_csi_rate_en = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 1, i32 1, i32 1
  %120 = ptrtoint ptr %fixed_csi_rate_en to i32
  call void @__asan_load1_noabort(i32 %120)
  %bf.load252 = load i8, ptr %fixed_csi_rate_en, align 1
  %bf.clear256 = and i8 %bf.load252, 31
  %bf.set257 = or i8 %bf.clear256, -128
  store i8 %bf.set257, ptr %fixed_csi_rate_en, align 1
  %phy_idx = getelementptr inbounds %struct.rtw89_vif, ptr %1, i32 0, i32 5
  %121 = ptrtoint ptr %phy_idx to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %phy_idx, align 2
  %band_num = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 1, i32 1
  %123 = ptrtoint ptr %band_num to i32
  call void @__asan_store1_noabort(i32 %123)
  store i8 %122, ptr %band_num, align 8
  %csi_bw = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 1, i32 1, i32 3
  %csi_mcs_ss_idx = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 1, i32 1, i32 2
  %124 = ptrtoint ptr %csi_mcs_ss_idx to i32
  call void @__asan_store1_noabort(i32 %124)
  store i8 5, ptr %csi_mcs_ss_idx, align 2
  %bf.set273 = or i8 %bw_mode.0, %csi_mode.0
  %125 = ptrtoint ptr %csi_bw to i32
  call void @__asan_store1_noabort(i32 %125)
  store i8 %bf.set273, ptr %csi_bw, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end251, %if.end206.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__rtw89_debug(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw89_fw_h2c_ra(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw89_phy_rate_pattern_vif(ptr noundef %rtwdev, ptr nocapture noundef writeonly %vif, ptr nocapture noundef readonly %mask) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %current_band_type = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 4, i32 7
  %0 = ptrtoint ptr %current_band_type to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %current_band_type, align 1
  %tx_nss2 = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 4, i32 11
  %2 = ptrtoint ptr %tx_nss2 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %tx_nss2, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp629.not = icmp eq i8 %3, 0
  br i1 %cmp629.not, label %entry.for.cond30.preheader.for.end49_crit_edge_crit_edge, label %for.body.lr.ph

entry.for.cond30.preheader.for.end49_crit_edge_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond30.preheader.for.end49_crit_edge

for.body.lr.ph:                                   ; preds = %entry
  %idxprom5 = zext i8 %1 to i32
  %wide.trip.count = zext i8 %3 to i32
  br label %for.body

for.cond10.preheader:                             ; preds = %for.inc
  br i1 %cmp629.not, label %for.cond10.preheader.for.cond30.preheader.for.end49_crit_edge_crit_edge, label %for.body15.lr.ph

for.cond10.preheader.for.cond30.preheader.for.end49_crit_edge_crit_edge: ; preds = %for.cond10.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond30.preheader.for.end49_crit_edge

for.body15.lr.ph:                                 ; preds = %for.cond10.preheader
  %idxprom19 = zext i8 %1 to i32
  %wide.trip.count662 = zext i8 %3 to i32
  br label %for.body15

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %indvars.iv = phi i32 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.inc.for.body_crit_edge ]
  %next_pattern.sroa.0.0633 = phi i64 [ 0, %for.body.lr.ph ], [ %next_pattern.sroa.0.1.ph, %for.inc.for.body_crit_edge ]
  %next_pattern.sroa.22.0632 = phi i8 [ 0, %for.body.lr.ph ], [ %next_pattern.sroa.22.1.ph, %for.inc.for.body_crit_edge ]
  %next_pattern.sroa.16.0631 = phi i8 [ 0, %for.body.lr.ph ], [ %next_pattern.sroa.16.1.ph, %for.inc.for.body_crit_edge ]
  %next_pattern.sroa.10.0630 = phi i16 [ 0, %for.body.lr.ph ], [ %next_pattern.sroa.10.1.ph, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [4 x i16], ptr @rtw89_phy_rate_pattern_vif.hw_rate_he, i32 0, i32 %indvars.iv
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %arrayidx, align 2
  %arrayidx8 = getelementptr [6 x %struct.anon.130], ptr %mask, i32 0, i32 %idxprom5, i32 3, i32 %indvars.iv
  %6 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %arrayidx8, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %cmp.i = icmp eq i16 %7, 0
  br i1 %cmp.i, label %for.body.for.inc_crit_edge, label %cond.false.i

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

cond.false.i:                                     ; preds = %for.body
  %conv9 = zext i16 %7 to i32
  %call.i.i = tail call i32 @__sw_hweight32(i32 noundef %conv9) #10
  %trunc614 = trunc i32 %call.i.i to i8
  %8 = zext i8 %trunc614 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.128)
  switch i8 %trunc614, label %cond.false.i.out_crit_edge [
    i8 0, label %cond.false.i.for.inc_crit_edge
    i8 1, label %if.end292.i
  ]

cond.false.i.for.inc_crit_edge:                   ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

cond.false.i.out_crit_edge:                       ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end292.i:                                      ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %next_pattern.sroa.22.0632)
  %tobool293.not.i = icmp eq i8 %next_pattern.sroa.22.0632, 0
  br i1 %tobool293.not.i, label %if.end295.i, label %if.end292.i.out_crit_edge

if.end292.i.out_crit_edge:                        ; preds = %if.end292.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end295.i:                                      ; preds = %if.end292.i
  call void @__sanitizer_cov_trace_pc() #12
  %9 = tail call i16 @llvm.ctlz.i16(i16 %7, i1 true), !range !292
  %10 = xor i16 %9, 15
  %conv301.i = add i16 %10, %5
  br label %for.inc

for.inc:                                          ; preds = %if.end295.i, %cond.false.i.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %next_pattern.sroa.10.1.ph = phi i16 [ %conv301.i, %if.end295.i ], [ %next_pattern.sroa.10.0630, %cond.false.i.for.inc_crit_edge ], [ %next_pattern.sroa.10.0630, %for.body.for.inc_crit_edge ]
  %next_pattern.sroa.16.1.ph = phi i8 [ 16, %if.end295.i ], [ %next_pattern.sroa.16.0631, %cond.false.i.for.inc_crit_edge ], [ %next_pattern.sroa.16.0631, %for.body.for.inc_crit_edge ]
  %next_pattern.sroa.22.1.ph = phi i8 [ 1, %if.end295.i ], [ %next_pattern.sroa.22.0632, %cond.false.i.for.inc_crit_edge ], [ %next_pattern.sroa.22.0632, %for.body.for.inc_crit_edge ]
  %next_pattern.sroa.0.1.ph = phi i64 [ 1152921504606842880, %if.end295.i ], [ %next_pattern.sroa.0.0633, %cond.false.i.for.inc_crit_edge ], [ %next_pattern.sroa.0.0633, %for.body.for.inc_crit_edge ]
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.cond10.preheader, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.cond30.preheader:                             ; preds = %for.inc27
  br i1 %cmp629.not, label %for.cond30.preheader.for.cond30.preheader.for.end49_crit_edge_crit_edge, label %for.body35.lr.ph

for.cond30.preheader.for.cond30.preheader.for.end49_crit_edge_crit_edge: ; preds = %for.cond30.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond30.preheader.for.end49_crit_edge

for.cond30.preheader.for.end49_crit_edge:         ; preds = %for.cond30.preheader.for.cond30.preheader.for.end49_crit_edge_crit_edge, %for.cond10.preheader.for.cond30.preheader.for.end49_crit_edge_crit_edge, %entry.for.cond30.preheader.for.end49_crit_edge_crit_edge
  %next_pattern.sroa.0.2.lcssa679 = phi i64 [ %next_pattern.sroa.0.3.ph, %for.cond30.preheader.for.cond30.preheader.for.end49_crit_edge_crit_edge ], [ %next_pattern.sroa.0.1.ph, %for.cond10.preheader.for.cond30.preheader.for.end49_crit_edge_crit_edge ], [ 0, %entry.for.cond30.preheader.for.end49_crit_edge_crit_edge ]
  %next_pattern.sroa.22.2.lcssa678 = phi i8 [ %next_pattern.sroa.22.3.ph, %for.cond30.preheader.for.cond30.preheader.for.end49_crit_edge_crit_edge ], [ %next_pattern.sroa.22.1.ph, %for.cond10.preheader.for.cond30.preheader.for.end49_crit_edge_crit_edge ], [ 0, %entry.for.cond30.preheader.for.end49_crit_edge_crit_edge ]
  %next_pattern.sroa.16.2.lcssa677 = phi i8 [ %next_pattern.sroa.16.3.ph, %for.cond30.preheader.for.cond30.preheader.for.end49_crit_edge_crit_edge ], [ %next_pattern.sroa.16.1.ph, %for.cond10.preheader.for.cond30.preheader.for.end49_crit_edge_crit_edge ], [ 0, %entry.for.cond30.preheader.for.end49_crit_edge_crit_edge ]
  %next_pattern.sroa.10.2.lcssa676 = phi i16 [ %next_pattern.sroa.10.3.ph, %for.cond30.preheader.for.cond30.preheader.for.end49_crit_edge_crit_edge ], [ %next_pattern.sroa.10.1.ph, %for.cond10.preheader.for.cond30.preheader.for.end49_crit_edge_crit_edge ], [ 0, %entry.for.cond30.preheader.for.end49_crit_edge_crit_edge ]
  %.pre = zext i8 %1 to i32
  br label %for.end49

for.body35.lr.ph:                                 ; preds = %for.cond30.preheader
  %idxprom39 = zext i8 %1 to i32
  %wide.trip.count666 = zext i8 %3 to i32
  br label %for.body35

for.body15:                                       ; preds = %for.inc27.for.body15_crit_edge, %for.body15.lr.ph
  %indvars.iv660 = phi i32 [ 0, %for.body15.lr.ph ], [ %indvars.iv.next661, %for.inc27.for.body15_crit_edge ]
  %next_pattern.sroa.0.2642 = phi i64 [ %next_pattern.sroa.0.1.ph, %for.body15.lr.ph ], [ %next_pattern.sroa.0.3.ph, %for.inc27.for.body15_crit_edge ]
  %next_pattern.sroa.22.2641 = phi i8 [ %next_pattern.sroa.22.1.ph, %for.body15.lr.ph ], [ %next_pattern.sroa.22.3.ph, %for.inc27.for.body15_crit_edge ]
  %next_pattern.sroa.16.2640 = phi i8 [ %next_pattern.sroa.16.1.ph, %for.body15.lr.ph ], [ %next_pattern.sroa.16.3.ph, %for.inc27.for.body15_crit_edge ]
  %next_pattern.sroa.10.2639 = phi i16 [ %next_pattern.sroa.10.1.ph, %for.body15.lr.ph ], [ %next_pattern.sroa.10.3.ph, %for.inc27.for.body15_crit_edge ]
  %arrayidx17 = getelementptr [4 x i16], ptr @rtw89_phy_rate_pattern_vif.hw_rate_vht, i32 0, i32 %indvars.iv660
  %11 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %arrayidx17, align 2
  %arrayidx22 = getelementptr [6 x %struct.anon.130], ptr %mask, i32 0, i32 %idxprom19, i32 2, i32 %indvars.iv660
  %13 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %arrayidx22, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %cmp.i114 = icmp eq i16 %14, 0
  br i1 %cmp.i114, label %for.body15.for.inc27_crit_edge, label %cond.false.i208

for.body15.for.inc27_crit_edge:                   ; preds = %for.body15
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc27

cond.false.i208:                                  ; preds = %for.body15
  %conv23 = zext i16 %14 to i32
  %call.i.i207 = tail call i32 @__sw_hweight32(i32 noundef %conv23) #10
  %trunc613 = trunc i32 %call.i.i207 to i8
  %15 = zext i8 %trunc613 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.129)
  switch i8 %trunc613, label %cond.false.i208.out_crit_edge [
    i8 0, label %cond.false.i208.for.inc27_crit_edge
    i8 1, label %if.end292.i217
  ]

cond.false.i208.for.inc27_crit_edge:              ; preds = %cond.false.i208
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc27

cond.false.i208.out_crit_edge:                    ; preds = %cond.false.i208
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end292.i217:                                   ; preds = %cond.false.i208
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %next_pattern.sroa.22.2641)
  %tobool293.not.i216 = icmp eq i8 %next_pattern.sroa.22.2641, 0
  br i1 %tobool293.not.i216, label %if.end295.i221, label %if.end292.i217.out_crit_edge

if.end292.i217.out_crit_edge:                     ; preds = %if.end292.i217
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end295.i221:                                   ; preds = %if.end292.i217
  call void @__sanitizer_cov_trace_pc() #12
  %16 = tail call i16 @llvm.ctlz.i16(i16 %14, i1 true), !range !292
  %17 = xor i16 %16, 15
  %conv301.i218 = add i16 %17, %12
  br label %for.inc27

for.inc27:                                        ; preds = %if.end295.i221, %cond.false.i208.for.inc27_crit_edge, %for.body15.for.inc27_crit_edge
  %next_pattern.sroa.10.3.ph = phi i16 [ %conv301.i218, %if.end295.i221 ], [ %next_pattern.sroa.10.2639, %cond.false.i208.for.inc27_crit_edge ], [ %next_pattern.sroa.10.2639, %for.body15.for.inc27_crit_edge ]
  %next_pattern.sroa.16.3.ph = phi i8 [ 8, %if.end295.i221 ], [ %next_pattern.sroa.16.2640, %cond.false.i208.for.inc27_crit_edge ], [ %next_pattern.sroa.16.2640, %for.body15.for.inc27_crit_edge ]
  %next_pattern.sroa.22.3.ph = phi i8 [ 1, %if.end295.i221 ], [ %next_pattern.sroa.22.2641, %cond.false.i208.for.inc27_crit_edge ], [ %next_pattern.sroa.22.2641, %for.body15.for.inc27_crit_edge ]
  %next_pattern.sroa.0.3.ph = phi i64 [ 288230376151707648, %if.end295.i221 ], [ %next_pattern.sroa.0.2642, %cond.false.i208.for.inc27_crit_edge ], [ %next_pattern.sroa.0.2642, %for.body15.for.inc27_crit_edge ]
  %indvars.iv.next661 = add nuw nsw i32 %indvars.iv660, 1
  %exitcond663.not = icmp eq i32 %indvars.iv.next661, %wide.trip.count662
  br i1 %exitcond663.not, label %for.cond30.preheader, label %for.inc27.for.body15_crit_edge

for.inc27.for.body15_crit_edge:                   ; preds = %for.inc27
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body15

for.body35:                                       ; preds = %for.inc47.for.body35_crit_edge, %for.body35.lr.ph
  %indvars.iv664 = phi i32 [ 0, %for.body35.lr.ph ], [ %indvars.iv.next665, %for.inc47.for.body35_crit_edge ]
  %next_pattern.sroa.0.4652 = phi i64 [ %next_pattern.sroa.0.3.ph, %for.body35.lr.ph ], [ %next_pattern.sroa.0.5.ph, %for.inc47.for.body35_crit_edge ]
  %next_pattern.sroa.22.4651 = phi i8 [ %next_pattern.sroa.22.3.ph, %for.body35.lr.ph ], [ %next_pattern.sroa.22.5.ph, %for.inc47.for.body35_crit_edge ]
  %next_pattern.sroa.16.4650 = phi i8 [ %next_pattern.sroa.16.3.ph, %for.body35.lr.ph ], [ %next_pattern.sroa.16.5.ph, %for.inc47.for.body35_crit_edge ]
  %next_pattern.sroa.10.4649 = phi i16 [ %next_pattern.sroa.10.3.ph, %for.body35.lr.ph ], [ %next_pattern.sroa.10.5.ph, %for.inc47.for.body35_crit_edge ]
  %arrayidx37 = getelementptr [4 x i16], ptr @rtw89_phy_rate_pattern_vif.hw_rate_ht, i32 0, i32 %indvars.iv664
  %18 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %arrayidx37, align 2
  %arrayidx42 = getelementptr [6 x %struct.anon.130], ptr %mask, i32 0, i32 %idxprom39, i32 1, i32 %indvars.iv664
  %20 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx42, align 1
  %conv43 = zext i8 %21 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %cmp.i224 = icmp eq i8 %21, 0
  br i1 %cmp.i224, label %for.body35.for.inc47_crit_edge, label %cond.false.i318

for.body35.for.inc47_crit_edge:                   ; preds = %for.body35
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc47

cond.false.i318:                                  ; preds = %for.body35
  %call.i.i317 = tail call i32 @__sw_hweight32(i32 noundef %conv43) #10
  %trunc = trunc i32 %call.i.i317 to i8
  %22 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.130)
  switch i8 %trunc, label %cond.false.i318.out_crit_edge [
    i8 0, label %cond.false.i318.for.inc47_crit_edge
    i8 1, label %if.end292.i327
  ]

cond.false.i318.for.inc47_crit_edge:              ; preds = %cond.false.i318
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc47

cond.false.i318.out_crit_edge:                    ; preds = %cond.false.i318
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end292.i327:                                   ; preds = %cond.false.i318
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %next_pattern.sroa.22.4651)
  %tobool293.not.i326 = icmp eq i8 %next_pattern.sroa.22.4651, 0
  br i1 %tobool293.not.i326, label %if.end295.i331, label %if.end292.i327.out_crit_edge

if.end292.i327.out_crit_edge:                     ; preds = %if.end292.i327
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end295.i331:                                   ; preds = %if.end292.i327
  call void @__sanitizer_cov_trace_pc() #12
  %23 = tail call i32 @llvm.ctlz.i32(i32 %conv43, i1 true) #10, !range !293
  %24 = trunc i32 %23 to i16
  %25 = xor i16 %24, 31
  %conv301.i328 = add i16 %25, %19
  br label %for.inc47

for.inc47:                                        ; preds = %if.end295.i331, %cond.false.i318.for.inc47_crit_edge, %for.body35.for.inc47_crit_edge
  %next_pattern.sroa.10.5.ph = phi i16 [ %conv301.i328, %if.end295.i331 ], [ %next_pattern.sroa.10.4649, %cond.false.i318.for.inc47_crit_edge ], [ %next_pattern.sroa.10.4649, %for.body35.for.inc47_crit_edge ]
  %next_pattern.sroa.16.5.ph = phi i8 [ 4, %if.end295.i331 ], [ %next_pattern.sroa.16.4650, %cond.false.i318.for.inc47_crit_edge ], [ %next_pattern.sroa.16.4650, %for.body35.for.inc47_crit_edge ]
  %next_pattern.sroa.22.5.ph = phi i8 [ 1, %if.end295.i331 ], [ %next_pattern.sroa.22.4651, %cond.false.i318.for.inc47_crit_edge ], [ %next_pattern.sroa.22.4651, %for.body35.for.inc47_crit_edge ]
  %next_pattern.sroa.0.5.ph = phi i64 [ 72057594037923840, %if.end295.i331 ], [ %next_pattern.sroa.0.4652, %cond.false.i318.for.inc47_crit_edge ], [ %next_pattern.sroa.0.4652, %for.body35.for.inc47_crit_edge ]
  %indvars.iv.next665 = add nuw nsw i32 %indvars.iv664, 1
  %exitcond667.not = icmp eq i32 %indvars.iv.next665, %wide.trip.count666
  br i1 %exitcond667.not, label %for.inc47.for.end49_crit_edge, label %for.inc47.for.body35_crit_edge

for.inc47.for.body35_crit_edge:                   ; preds = %for.inc47
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body35

for.inc47.for.end49_crit_edge:                    ; preds = %for.inc47
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end49

for.end49:                                        ; preds = %for.inc47.for.end49_crit_edge, %for.cond30.preheader.for.end49_crit_edge
  %idxprom50.pre-phi = phi i32 [ %.pre, %for.cond30.preheader.for.end49_crit_edge ], [ %idxprom39, %for.inc47.for.end49_crit_edge ]
  %next_pattern.sroa.10.4.lcssa = phi i16 [ %next_pattern.sroa.10.2.lcssa676, %for.cond30.preheader.for.end49_crit_edge ], [ %next_pattern.sroa.10.5.ph, %for.inc47.for.end49_crit_edge ]
  %next_pattern.sroa.16.4.lcssa = phi i8 [ %next_pattern.sroa.16.2.lcssa677, %for.cond30.preheader.for.end49_crit_edge ], [ %next_pattern.sroa.16.5.ph, %for.inc47.for.end49_crit_edge ]
  %next_pattern.sroa.22.4.lcssa = phi i8 [ %next_pattern.sroa.22.2.lcssa678, %for.cond30.preheader.for.end49_crit_edge ], [ %next_pattern.sroa.22.5.ph, %for.inc47.for.end49_crit_edge ]
  %next_pattern.sroa.0.4.lcssa = phi i64 [ %next_pattern.sroa.0.2.lcssa679, %for.cond30.preheader.for.end49_crit_edge ], [ %next_pattern.sroa.0.5.ph, %for.inc47.for.end49_crit_edge ]
  %26 = ptrtoint ptr %rtwdev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %rtwdev, align 128
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %wiphy, align 8
  %arrayidx51 = getelementptr %struct.wiphy, ptr %29, i32 0, i32 53, i32 %idxprom50.pre-phi
  %30 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx51, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp53 = icmp eq i8 %1, 0
  br i1 %cmp53, label %if.then55, label %if.else

if.then55:                                        ; preds = %for.end49
  %32 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %mask, align 4
  %n_bitrates = getelementptr inbounds %struct.ieee80211_supported_band, ptr %31, i32 0, i32 4
  %34 = ptrtoint ptr %n_bitrates to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %n_bitrates, align 4
  %notmask113 = shl nsw i32 -1, %35
  %sub = xor i32 %notmask113, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %sub)
  %cmp.i334 = icmp eq i32 %33, %sub
  br i1 %cmp.i334, label %if.then55.if.end72_crit_edge, label %cond.false.i428

if.then55.if.end72_crit_edge:                     ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end72

cond.false.i428:                                  ; preds = %if.then55
  %call.i.i427 = tail call i32 @__sw_hweight32(i32 noundef %33) #10
  %conv281.i430 = and i32 %call.i.i427, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv281.i430)
  %cmp282.i431 = icmp eq i32 %conv281.i430, 0
  br i1 %cmp282.i431, label %cond.false.i428.if.end72_crit_edge, label %if.end285.i434

cond.false.i428.if.end72_crit_edge:               ; preds = %cond.false.i428
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end72

if.end285.i434:                                   ; preds = %cond.false.i428
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %next_pattern.sroa.22.4.lcssa)
  %tobool293.not.i436 = icmp eq i8 %next_pattern.sroa.22.4.lcssa, 0
  br i1 %tobool293.not.i436, label %if.end295.i440, label %if.end285.i434.out_crit_edge

if.end285.i434.out_crit_edge:                     ; preds = %if.end285.i434
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end295.i440:                                   ; preds = %if.end285.i434
  call void @__sanitizer_cov_trace_pc() #12
  %36 = tail call i32 @llvm.ctlz.i32(i32 %33, i1 false) #10, !range !293
  %37 = trunc i32 %36 to i16
  %38 = sub nsw i16 31, %37
  %39 = and i16 %38, 255
  br label %if.end74

if.else:                                          ; preds = %for.end49
  %arrayidx64 = getelementptr [6 x %struct.anon.130], ptr %mask, i32 0, i32 %idxprom50.pre-phi
  %40 = ptrtoint ptr %arrayidx64 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx64, align 4
  %n_bitrates66 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %31, i32 0, i32 4
  %42 = ptrtoint ptr %n_bitrates66 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %n_bitrates66, align 4
  %notmask = shl nsw i32 -1, %43
  %sub68 = xor i32 %notmask, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %41, i32 %sub68)
  %cmp.i443 = icmp eq i32 %41, %sub68
  br i1 %cmp.i443, label %if.else.if.end72_crit_edge, label %cond.false.i537

if.else.if.end72_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end72

cond.false.i537:                                  ; preds = %if.else
  %call.i.i536 = tail call i32 @__sw_hweight32(i32 noundef %41) #10
  %conv281.i539 = and i32 %call.i.i536, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv281.i539)
  %cmp282.i540 = icmp eq i32 %conv281.i539, 0
  br i1 %cmp282.i540, label %cond.false.i537.if.end72_crit_edge, label %if.end285.i543

cond.false.i537.if.end72_crit_edge:               ; preds = %cond.false.i537
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end72

if.end285.i543:                                   ; preds = %cond.false.i537
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %next_pattern.sroa.22.4.lcssa)
  %tobool293.not.i545 = icmp eq i8 %next_pattern.sroa.22.4.lcssa, 0
  br i1 %tobool293.not.i545, label %if.end295.i550, label %if.end285.i543.out_crit_edge

if.end285.i543.out_crit_edge:                     ; preds = %if.end285.i543
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end295.i550:                                   ; preds = %if.end285.i543
  call void @__sanitizer_cov_trace_pc() #12
  %44 = tail call i32 @llvm.ctlz.i32(i32 %41, i1 false) #10, !range !293
  %45 = trunc i32 %44 to i16
  %46 = sub nsw i16 31, %45
  %47 = and i16 %46, 255
  %conv301.i547 = add nuw nsw i16 %47, 4
  br label %if.end74

if.end72:                                         ; preds = %cond.false.i537.if.end72_crit_edge, %if.else.if.end72_crit_edge, %cond.false.i428.if.end72_crit_edge, %if.then55.if.end72_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %next_pattern.sroa.22.4.lcssa)
  %tobool.not = icmp eq i8 %next_pattern.sroa.22.4.lcssa, 0
  br i1 %tobool.not, label %if.end72.out_crit_edge, label %if.end72.if.end74_crit_edge

if.end72.if.end74_crit_edge:                      ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end74

if.end72.out_crit_edge:                           ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end74:                                         ; preds = %if.end72.if.end74_crit_edge, %if.end295.i550, %if.end295.i440
  %next_pattern.sroa.0.8612 = phi i64 [ %next_pattern.sroa.0.4.lcssa, %if.end72.if.end74_crit_edge ], [ 4080, %if.end295.i550 ], [ 4095, %if.end295.i440 ]
  %next_pattern.sroa.22.8611 = phi i8 [ %next_pattern.sroa.22.4.lcssa, %if.end72.if.end74_crit_edge ], [ 1, %if.end295.i550 ], [ 1, %if.end295.i440 ]
  %next_pattern.sroa.16.8610 = phi i8 [ %next_pattern.sroa.16.4.lcssa, %if.end72.if.end74_crit_edge ], [ 2, %if.end295.i550 ], [ 3, %if.end295.i440 ]
  %next_pattern.sroa.10.8609 = phi i16 [ %next_pattern.sroa.10.4.lcssa, %if.end72.if.end74_crit_edge ], [ %conv301.i547, %if.end295.i550 ], [ %39, %if.end295.i440 ]
  %rate_pattern = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 44, i32 2, i32 1, i32 1
  %48 = ptrtoint ptr %rate_pattern to i32
  call void @__asan_store8_noabort(i32 %48)
  store i64 %next_pattern.sroa.0.8612, ptr %rate_pattern, align 8
  %next_pattern.sroa.10.0.rate_pattern.sroa_idx = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 44, i32 2, i32 1, i32 3
  %49 = ptrtoint ptr %next_pattern.sroa.10.0.rate_pattern.sroa_idx to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 %next_pattern.sroa.10.8609, ptr %next_pattern.sroa.10.0.rate_pattern.sroa_idx, align 8
  %next_pattern.sroa.16.0.rate_pattern.sroa_idx = getelementptr inbounds i8, ptr %rate_pattern, i32 10
  %50 = ptrtoint ptr %next_pattern.sroa.16.0.rate_pattern.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %next_pattern.sroa.16.8610, ptr %next_pattern.sroa.16.0.rate_pattern.sroa_idx, align 2
  %next_pattern.sroa.22.0.rate_pattern.sroa_idx = getelementptr inbounds i8, ptr %rate_pattern, i32 11
  %51 = ptrtoint ptr %next_pattern.sroa.22.0.rate_pattern.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %next_pattern.sroa.22.8611, ptr %next_pattern.sroa.22.0.rate_pattern.sroa_idx, align 1
  %next_pattern.sroa.33.0.rate_pattern.sroa_idx = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 44, i32 2, i32 2
  %52 = ptrtoint ptr %next_pattern.sroa.33.0.rate_pattern.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 0, ptr %next_pattern.sroa.33.0.rate_pattern.sroa_idx, align 4
  %conv75 = zext i16 %next_pattern.sroa.10.8609 to i32
  %conv76 = zext i8 %next_pattern.sroa.16.8610 to i32
  tail call void (ptr, i32, ptr, ...) @__rtw89_debug(ptr noundef %rtwdev, i32 noundef 128, ptr noundef nonnull @.str.1, i32 noundef %conv75, i64 noundef %next_pattern.sroa.0.8612, i32 noundef %conv76) #10
  br label %cleanup

out:                                              ; preds = %if.end72.out_crit_edge, %if.end285.i543.out_crit_edge, %if.end285.i434.out_crit_edge, %if.end292.i327.out_crit_edge, %cond.false.i318.out_crit_edge, %if.end292.i217.out_crit_edge, %cond.false.i208.out_crit_edge, %if.end292.i.out_crit_edge, %cond.false.i.out_crit_edge
  %rate_pattern77 = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 44, i32 2, i32 1, i32 1
  %enable78 = getelementptr inbounds %struct.rtw89_phy_rate_pattern, ptr %rate_pattern77, i32 0, i32 3
  %53 = ptrtoint ptr %enable78 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 0, ptr %enable78, align 1
  tail call void (ptr, i32, ptr, ...) @__rtw89_debug(ptr noundef %rtwdev, i32 noundef 128, ptr noundef nonnull @.str.2) #10
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end74
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw89_phy_ra_update(ptr noundef %rtwdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rtwdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rtwdev, align 128
  tail call void @ieee80211_iterate_stations_atomic(ptr noundef %1, ptr noundef nonnull @rtw89_phy_ra_updata_sta_iter, ptr noundef %rtwdev) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_iterate_stations_atomic(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtw89_phy_ra_updata_sta_iter(ptr noundef %data, ptr noundef %sta) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ra1.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 1, i32 0, i32 2
  tail call fastcc void @rtw89_phy_ra_sta_update(ptr noundef %data, ptr noundef %sta, i1 noundef zeroext false) #10
  %upd_mask.i = getelementptr inbounds %struct.rtw89_ra_info, ptr %ra1.i, i32 0, i32 2
  %0 = ptrtoint ptr %upd_mask.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load.i = load i16, ptr %upd_mask.i, align 2
  %bf.set.i = or i16 %bf.load.i, 1
  store i16 %bf.set.i, ptr %upd_mask.i, align 2
  %macid.i = getelementptr inbounds %struct.rtw89_ra_info, ptr %ra1.i, i32 0, i32 1
  %1 = ptrtoint ptr %macid.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %macid.i, align 1
  %conv.i = zext i8 %2 to i32
  %3 = ptrtoint ptr %ra1.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %bf.load2.i = load i8, ptr %ra1.i, align 8
  %bf.clear3.i = and i8 %bf.load2.i, 3
  %conv4.i = zext i8 %bf.clear3.i to i32
  %4 = lshr i16 %bf.load.i, 5
  %5 = and i16 %4, 7
  %conv7.i = zext i16 %5 to i32
  %bf.lshr9.i = lshr i16 %bf.load.i, 10
  %6 = and i16 %bf.lshr9.i, 1
  %bf.cast11.i = zext i16 %6 to i32
  %7 = lshr i16 %bf.load.i, 2
  %8 = and i16 %7, 7
  %bf.cast16.i = zext i16 %8 to i32
  tail call void (ptr, i32, ptr, ...) @__rtw89_debug(ptr noundef %data, i32 noundef 128, ptr noundef nonnull @.str, i32 noundef %conv.i, i32 noundef %conv4.i, i32 noundef %conv7.i, i32 noundef %bf.cast11.i, i32 noundef %bf.cast16.i) #10
  %call.i = tail call i32 @rtw89_fw_h2c_ra(ptr noundef %data, ptr noundef %ra1.i, i1 noundef zeroext false) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw89_phy_ra_assoc(ptr noundef %rtwdev, ptr noundef %sta) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ra1 = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 1, i32 0, i32 2
  %avg_rssi = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 1, i32 5, i32 1
  %0 = ptrtoint ptr %avg_rssi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %avg_rssi, align 4
  %shr.i = lshr i32 %1, 11
  %cap.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 5, i32 1
  %2 = ptrtoint ptr %cap.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cap.i, align 4
  %4 = and i32 %3, 526336
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %lor.lhs.false5.i, label %entry.rtw89_sta_has_beamformer_cap.exit_crit_edge

entry.rtw89_sta_has_beamformer_cap.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %rtw89_sta_has_beamformer_cap.exit

lor.lhs.false5.i:                                 ; preds = %entry
  %arrayidx.i = getelementptr %struct.ieee80211_sta, ptr %sta, i32 0, i32 6, i32 1, i32 1, i32 3
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %7)
  %tobool7.not.i = icmp sgt i8 %7, -1
  br i1 %tobool7.not.i, label %lor.lhs.false8.i, label %lor.lhs.false5.i.rtw89_sta_has_beamformer_cap.exit_crit_edge

lor.lhs.false5.i.rtw89_sta_has_beamformer_cap.exit_crit_edge: ; preds = %lor.lhs.false5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rtw89_sta_has_beamformer_cap.exit

lor.lhs.false8.i:                                 ; preds = %lor.lhs.false5.i
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx12.i = getelementptr %struct.ieee80211_sta, ptr %sta, i32 0, i32 6, i32 1, i32 1, i32 4
  %8 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx12.i, align 1
  %10 = and i8 %9, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool15.not.i = icmp ne i8 %10, 0
  br label %rtw89_sta_has_beamformer_cap.exit

rtw89_sta_has_beamformer_cap.exit:                ; preds = %lor.lhs.false8.i, %lor.lhs.false5.i.rtw89_sta_has_beamformer_cap.exit_crit_edge, %entry.rtw89_sta_has_beamformer_cap.exit_crit_edge
  %retval.0.i = phi i1 [ true, %lor.lhs.false5.i.rtw89_sta_has_beamformer_cap.exit_crit_edge ], [ true, %entry.rtw89_sta_has_beamformer_cap.exit_crit_edge ], [ %tobool15.not.i, %lor.lhs.false8.i ]
  tail call fastcc void @rtw89_phy_ra_sta_update(ptr noundef %rtwdev, ptr noundef %sta, i1 noundef zeroext %retval.0.i)
  %conv3 = and i32 %shr.i, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 40, i32 %conv3)
  %cmp = icmp ugt i32 %conv3, 40
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %rtw89_sta_has_beamformer_cap.exit
  call void @__sanitizer_cov_trace_pc() #12
  %init_rate_lv = getelementptr inbounds %struct.rtw89_ra_info, ptr %ra1, i32 0, i32 2
  %11 = ptrtoint ptr %init_rate_lv to i32
  call void @__asan_load2_noabort(i32 %11)
  %bf.load = load i16, ptr %init_rate_lv, align 2
  %bf.clear = and i16 %bf.load, -12289
  %bf.set = or i16 %bf.clear, 4096
  store i16 %bf.set, ptr %init_rate_lv, align 2
  br label %if.end28

if.else:                                          ; preds = %rtw89_sta_has_beamformer_cap.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %conv3)
  %cmp6 = icmp ugt i32 %conv3, 20
  br i1 %cmp6, label %if.then8, label %if.else13

if.then8:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %init_rate_lv9 = getelementptr inbounds %struct.rtw89_ra_info, ptr %ra1, i32 0, i32 2
  %12 = ptrtoint ptr %init_rate_lv9 to i32
  call void @__asan_load2_noabort(i32 %12)
  %bf.load10 = load i16, ptr %init_rate_lv9, align 2
  %bf.clear11 = and i16 %bf.load10, -12289
  %bf.set12 = or i16 %bf.clear11, 8192
  store i16 %bf.set12, ptr %init_rate_lv9, align 2
  br label %if.end28

if.else13:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %conv3)
  %cmp15 = icmp ugt i32 %conv3, 1
  %init_rate_lv18 = getelementptr inbounds %struct.rtw89_ra_info, ptr %ra1, i32 0, i32 2
  %13 = ptrtoint ptr %init_rate_lv18 to i32
  call void @__asan_load2_noabort(i32 %13)
  %bf.load19 = load i16, ptr %init_rate_lv18, align 2
  br i1 %cmp15, label %if.then17, label %if.else22

if.then17:                                        ; preds = %if.else13
  call void @__sanitizer_cov_trace_pc() #12
  %bf.set21 = or i16 %bf.load19, 12288
  %14 = ptrtoint ptr %init_rate_lv18 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %bf.set21, ptr %init_rate_lv18, align 2
  br label %if.end28

if.else22:                                        ; preds = %if.else13
  call void @__sanitizer_cov_trace_pc() #12
  %bf.clear25 = and i16 %bf.load19, -12289
  %15 = ptrtoint ptr %init_rate_lv18 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %bf.clear25, ptr %init_rate_lv18, align 2
  br label %if.end28

if.end28:                                         ; preds = %if.else22, %if.then17, %if.then8, %if.then
  %upd_all = getelementptr inbounds %struct.rtw89_ra_info, ptr %ra1, i32 0, i32 2
  %16 = ptrtoint ptr %upd_all to i32
  call void @__asan_load2_noabort(i32 %16)
  %bf.load29 = load i16, ptr %upd_all, align 2
  %bf.set31 = or i16 %bf.load29, 2048
  store i16 %bf.set31, ptr %upd_all, align 2
  %macid = getelementptr inbounds %struct.rtw89_ra_info, ptr %ra1, i32 0, i32 1
  %17 = ptrtoint ptr %macid to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %macid, align 1
  %conv32 = zext i8 %18 to i32
  %19 = ptrtoint ptr %ra1 to i32
  call void @__asan_load1_noabort(i32 %19)
  %bf.load33 = load i8, ptr %ra1, align 8
  %bf.lshr = lshr i8 %bf.load33, 2
  %bf.clear34 = and i8 %bf.lshr, 31
  %conv35 = zext i8 %bf.clear34 to i32
  %bf.clear37 = and i8 %bf.load33, 3
  %conv38 = zext i8 %bf.clear37 to i32
  %20 = lshr i16 %bf.load29, 5
  %21 = and i16 %20, 7
  %conv42 = zext i16 %21 to i32
  %bf.lshr45 = lshr i16 %bf.load29, 12
  %22 = and i16 %bf.lshr45, 3
  %bf.cast47 = zext i16 %22 to i32
  tail call void (ptr, i32, ptr, ...) @__rtw89_debug(ptr noundef %rtwdev, i32 noundef 128, ptr noundef nonnull @.str.3, i32 noundef %conv32, i32 noundef %conv35, i32 noundef %conv38, i32 noundef %conv42, i32 noundef %bf.cast47) #10
  %23 = ptrtoint ptr %upd_all to i32
  call void @__asan_load2_noabort(i32 %23)
  %bf.load49 = load i16, ptr %upd_all, align 2
  %bf.lshr50 = lshr i16 %bf.load49, 15
  %bf.cast51 = zext i16 %bf.lshr50 to i32
  %bf.lshr54 = lshr i16 %bf.load49, 14
  %24 = and i16 %bf.lshr54, 1
  %bf.cast56 = zext i16 %24 to i32
  %bf.lshr59 = lshr i16 %bf.load49, 9
  %25 = and i16 %bf.lshr59, 1
  %bf.cast61 = zext i16 %25 to i32
  %bf.lshr64 = lshr i16 %bf.load49, 8
  %26 = and i16 %bf.lshr64, 1
  %bf.cast66 = zext i16 %26 to i32
  %bf.lshr69 = lshr i16 %bf.load49, 10
  %27 = and i16 %bf.lshr69, 1
  %bf.cast71 = zext i16 %27 to i32
  %28 = lshr i16 %bf.load49, 2
  %29 = and i16 %28, 7
  %bf.cast76 = zext i16 %29 to i32
  tail call void (ptr, i32, ptr, ...) @__rtw89_debug(ptr noundef %rtwdev, i32 noundef 128, ptr noundef nonnull @.str.4, i32 noundef %bf.cast51, i32 noundef %bf.cast56, i32 noundef %bf.cast61, i32 noundef %bf.cast66, i32 noundef %bf.cast71, i32 noundef %bf.cast76) #10
  %call79 = tail call i32 @rtw89_fw_h2c_ra(ptr noundef %rtwdev, ptr noundef %ra1, i1 noundef zeroext %retval.0.i) #10
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i8 @rtw89_phy_get_txsc(ptr nocapture noundef readnone %rtwdev, ptr nocapture noundef readonly %param, i32 noundef %dbw) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %bandwidth = getelementptr inbounds %struct.rtw89_channel_params, ptr %param, i32 0, i32 2
  %0 = ptrtoint ptr %bandwidth to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %bandwidth, align 1
  %conv = zext i8 %1 to i32
  %primary_chan = getelementptr inbounds %struct.rtw89_channel_params, ptr %param, i32 0, i32 1
  %2 = ptrtoint ptr %primary_chan to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %primary_chan, align 1
  %4 = ptrtoint ptr %param to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %param, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %dbw)
  %cmp = icmp eq i32 %conv, %dbw
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp2 = icmp eq i8 %1, 0
  %or.cond = or i1 %cmp2, %cmp
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.131)
  switch i8 %1, label %if.end.cleanup_crit_edge [
    i8 1, label %sw.bb
    i8 2, label %sw.bb9
    i8 3, label %sw.bb35
    i8 4, label %sw.bb110
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_cmp1(i8 %3, i8 %5)
  %cmp6 = icmp ugt i8 %3, %5
  %conv8 = select i1 %cmp6, i8 1, i8 2
  br label %cleanup

sw.bb9:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dbw)
  %cmp10 = icmp eq i32 %dbw, 0
  br i1 %cmp10, label %if.then12, label %if.else27

if.then12:                                        ; preds = %sw.bb9
  %conv13 = zext i8 %3 to i32
  %conv14 = zext i8 %5 to i32
  call void @__sanitizer_cov_trace_cmp1(i8 %3, i8 %5)
  %cmp15 = icmp ugt i8 %3, %5
  br i1 %cmp15, label %if.then17, label %if.else

if.then17:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #12
  %sub = sub nsw i32 %conv13, %conv14
  %7 = lshr i32 %sub, 1
  %conv20 = trunc i32 %7 to i8
  br label %cleanup

if.else:                                          ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #12
  %sub23 = sub nsw i32 %conv14, %conv13
  %8 = lshr i32 %sub23, 1
  %9 = trunc i32 %8 to i8
  %conv25 = add i8 %9, 1
  br label %cleanup

if.else27:                                        ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_cmp1(i8 %3, i8 %5)
  %cmp30 = icmp ugt i8 %3, %5
  %conv33 = select i1 %cmp30, i8 9, i8 10
  br label %cleanup

sw.bb35:                                          ; preds = %if.end
  %conv36 = zext i8 %3 to i32
  %conv37 = zext i8 %5 to i32
  call void @__sanitizer_cov_trace_cmp1(i8 %3, i8 %5)
  %cmp38 = icmp ugt i8 %3, %5
  br i1 %cmp38, label %if.then40, label %if.else46

if.then40:                                        ; preds = %sw.bb35
  call void @__sanitizer_cov_trace_pc() #12
  %sub43 = sub nsw i32 %conv36, %conv37
  %10 = lshr i32 %sub43, 1
  %conv45 = trunc i32 %10 to i8
  br label %if.end53

if.else46:                                        ; preds = %sw.bb35
  call void @__sanitizer_cov_trace_pc() #12
  %sub49 = sub nsw i32 %conv37, %conv36
  %11 = lshr i32 %sub49, 1
  %12 = trunc i32 %11 to i8
  %conv52 = add i8 %12, 1
  br label %if.end53

if.end53:                                         ; preds = %if.else46, %if.then40
  %tmp.0 = phi i8 [ %conv45, %if.then40 ], [ %conv52, %if.else46 ]
  %13 = zext i32 %dbw to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.132)
  switch i32 %dbw, label %if.else101 [
    i32 0, label %if.end53.cleanup_crit_edge
    i32 1, label %if.then60
  ]

if.end53.cleanup_crit_edge:                       ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then60:                                        ; preds = %if.end53
  %switch.tableidx = add i8 %tmp.0, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %switch.tableidx)
  %14 = icmp ult i8 %switch.tableidx, 8
  br i1 %14, label %switch.lookup, label %if.then60.cleanup_crit_edge

if.then60.cleanup_crit_edge:                      ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.else101:                                       ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #12
  %conv107 = select i1 %cmp38, i8 13, i8 14
  br label %cleanup

sw.bb110:                                         ; preds = %if.end
  %15 = zext i32 %dbw to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.133)
  switch i32 %dbw, label %sw.bb110.cleanup_crit_edge [
    i32 0, label %if.then113
    i32 1, label %if.then136
  ]

sw.bb110.cleanup_crit_edge:                       ; preds = %sw.bb110
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then113:                                       ; preds = %sw.bb110
  %conv114 = zext i8 %3 to i32
  %conv115 = zext i8 %5 to i32
  call void @__sanitizer_cov_trace_cmp1(i8 %3, i8 %5)
  %cmp116 = icmp ugt i8 %3, %5
  br i1 %cmp116, label %if.then118, label %if.else125

if.then118:                                       ; preds = %if.then113
  call void @__sanitizer_cov_trace_pc() #12
  %sub121.neg = sub nsw i32 10, %conv114
  %sub122 = add nsw i32 %sub121.neg, %conv115
  %16 = lshr i32 %sub122, 1
  %conv124 = trunc i32 %16 to i8
  br label %cleanup

if.else125:                                       ; preds = %if.then113
  call void @__sanitizer_cov_trace_pc() #12
  %sub128 = sub nsw i32 %conv115, %conv114
  %17 = lshr i32 %sub128, 1
  %18 = trunc i32 %17 to i8
  %conv131 = add i8 %18, 5
  br label %cleanup

if.then136:                                       ; preds = %sw.bb110
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_cmp1(i8 %3, i8 %5)
  %cmp139 = icmp ugt i8 %3, %5
  %conv142 = select i1 %cmp139, i8 10, i8 12
  br label %cleanup

switch.lookup:                                    ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #12
  %19 = sext i8 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [8 x i8], ptr @switch.table.rtw89_phy_get_txsc, i32 0, i32 %19
  %20 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load1_noabort(i32 %20)
  %switch.load = load i8, ptr %switch.gep, align 1
  br label %cleanup

cleanup:                                          ; preds = %switch.lookup, %if.then136, %if.else125, %if.then118, %sw.bb110.cleanup_crit_edge, %if.else101, %if.then60.cleanup_crit_edge, %if.end53.cleanup_crit_edge, %if.else27, %if.else, %if.then17, %sw.bb, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i8 [ 0, %entry.cleanup_crit_edge ], [ -1, %if.then60.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ %conv124, %if.then118 ], [ %conv131, %if.else125 ], [ %conv142, %if.then136 ], [ %conv107, %if.else101 ], [ %conv20, %if.then17 ], [ %conv25, %if.else ], [ %conv33, %if.else27 ], [ %conv8, %sw.bb ], [ %tmp.0, %if.end53.cleanup_crit_edge ], [ 14, %sw.bb110.cleanup_crit_edge ], [ %switch.load, %switch.lookup ]
  ret i8 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtw89_phy_read_rf(ptr noundef %rtwdev, i32 noundef %rf_path, i32 noundef %addr, i32 noundef %mask) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %chip1 = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 3
  %0 = ptrtoint ptr %chip1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip1, align 4
  %rf_path_num = getelementptr inbounds %struct.rtw89_chip_info, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %rf_path_num to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %rf_path_num, align 4
  %conv = zext i8 %3 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %rf_path)
  %cmp.not = icmp ugt i32 %conv, %rf_path
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 1
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.5, i32 noundef %rf_path) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %rf_base_addr = getelementptr inbounds %struct.rtw89_chip_info, ptr %1, i32 0, i32 8
  %arrayidx = getelementptr i32, ptr %rf_base_addr, i32 %rf_path
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %and = shl i32 %addr, 2
  %shl = and i32 %and, 1020
  %add = add i32 %7, %shl
  %and4 = and i32 %mask, 1048575
  %or.i = or i32 %add, 65536
  %8 = tail call i32 @llvm.cttz.i32(i32 %and4, i1 false) #10, !range !293
  %hci.i.i.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 7
  %9 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hci.i.i.i, align 8
  %read32.i.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %10, i32 0, i32 9
  %11 = ptrtoint ptr %read32.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %read32.i.i.i, align 4
  %call.i.i.i = tail call i32 %12(ptr noundef %rtwdev, i32 noundef %or.i) #10
  %and.i.i = and i32 %call.i.i.i, %and4
  %shr.i.i = lshr i32 %and.i.i, %8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ -1, %do.end ], [ %shr.i.i, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @rtw89_phy_write_rf(ptr noundef %rtwdev, i32 noundef %rf_path, i32 noundef %addr, i32 noundef %mask, i32 noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %chip1 = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 3
  %0 = ptrtoint ptr %chip1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip1, align 4
  %rf_path_num = getelementptr inbounds %struct.rtw89_chip_info, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %rf_path_num to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %rf_path_num, align 4
  %conv = zext i8 %3 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %rf_path)
  %cmp.not = icmp ugt i32 %conv, %rf_path
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 1
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.5, i32 noundef %rf_path) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %rf_base_addr = getelementptr inbounds %struct.rtw89_chip_info, ptr %1, i32 0, i32 8
  %arrayidx = getelementptr i32, ptr %rf_base_addr, i32 %rf_path
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %and = shl i32 %addr, 2
  %shl = and i32 %and, 1020
  %add = add i32 %7, %shl
  %and4 = and i32 %mask, 1048575
  %or.i = or i32 %add, 65536
  %and.i.i = and i32 %add, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.rtw89_phy_write32_mask.exit_crit_edge, label %do.end.i.i, !prof !294

if.end.rtw89_phy_write32_mask.exit_crit_edge:     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %rtw89_phy_write32_mask.exit

do.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.32, i32 noundef 3031, i32 noundef 9, ptr noundef nonnull @.str.33, i32 noundef %or.i) #10
  br label %rtw89_phy_write32_mask.exit

rtw89_phy_write32_mask.exit:                      ; preds = %do.end.i.i, %if.end.rtw89_phy_write32_mask.exit_crit_edge
  %8 = tail call i32 @llvm.cttz.i32(i32 %and4, i1 false) #10, !range !293
  %hci.i.i.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 7
  %9 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hci.i.i.i, align 8
  %read32.i.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %10, i32 0, i32 9
  %11 = ptrtoint ptr %read32.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %read32.i.i.i, align 4
  %call.i.i.i = tail call i32 %12(ptr noundef %rtwdev, i32 noundef %or.i) #10
  %neg.i.i = xor i32 %and4, -1
  %and21.i.i = and i32 %call.i.i.i, %neg.i.i
  %shl.i.i = shl i32 %data, %8
  %and22.i.i = and i32 %shl.i.i, %and4
  %or.i.i = or i32 %and21.i.i, %and22.i.i
  %13 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hci.i.i.i, align 8
  %write32.i.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %14, i32 0, i32 12
  %15 = ptrtoint ptr %write32.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %write32.i.i.i, align 4
  tail call void %16(ptr noundef %rtwdev, i32 noundef %or.i, i32 noundef %or.i.i) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %17(i32 noundef 214748) #10
  br label %cleanup

cleanup:                                          ; preds = %rtw89_phy_write32_mask.exit, %do.end
  ret i1 %cmp.not
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw89_phy_init_bb_reg(ptr noundef %rtwdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %chip1 = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 3
  %0 = ptrtoint ptr %chip1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip1, align 4
  %bb_table2 = getelementptr inbounds %struct.rtw89_chip_info, ptr %1, i32 0, i32 23
  %2 = ptrtoint ptr %bb_table2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bb_table2, align 4
  tail call fastcc void @rtw89_phy_init_reg(ptr noundef %rtwdev, ptr noundef %3, ptr noundef nonnull @rtw89_phy_config_bb_reg, ptr noundef null)
  %4 = ptrtoint ptr %chip1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %chip1, align 4
  %ops.i = getelementptr inbounds %struct.rtw89_chip_info, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ops.i, align 4
  %init_txpwr_unit.i = getelementptr inbounds %struct.rtw89_chip_ops, ptr %7, i32 0, i32 17
  %8 = ptrtoint ptr %init_txpwr_unit.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %init_txpwr_unit.i, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %entry.rtw89_chip_init_txpwr_unit.exit_crit_edge, label %if.then.i

entry.rtw89_chip_init_txpwr_unit.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %rtw89_chip_init_txpwr_unit.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = tail call i32 %9(ptr noundef %rtwdev, i32 noundef 0) #10
  br label %rtw89_chip_init_txpwr_unit.exit

rtw89_chip_init_txpwr_unit.exit:                  ; preds = %if.then.i, %entry.rtw89_chip_init_txpwr_unit.exit_crit_edge
  %10 = ptrtoint ptr %chip1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %chip1, align 4
  %ops.i7 = getelementptr inbounds %struct.rtw89_chip_info, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %ops.i7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ops.i7, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  tail call void %15(ptr noundef %rtwdev, i32 noundef 0) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rtw89_phy_init_reg(ptr noundef %rtwdev, ptr nocapture noundef readonly %table, ptr nocapture noundef readonly %config, ptr noundef %extra_data) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %rf_path1 = getelementptr inbounds %struct.rtw89_phy_table, ptr %table, i32 0, i32 2
  %0 = ptrtoint ptr %rf_path1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rf_path1, align 4
  %rfe_type = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 8, i32 3
  %2 = ptrtoint ptr %rfe_type to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %rfe_type, align 8
  %cv2 = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 4, i32 1
  %4 = ptrtoint ptr %cv2 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %cv2, align 4
  %n_regs.i = getelementptr inbounds %struct.rtw89_phy_table, ptr %table, i32 0, i32 1
  %6 = ptrtoint ptr %n_regs.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %n_regs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp9.not.i = icmp eq i32 %7, 0
  br i1 %cmp9.not.i, label %entry.do.end18_crit_edge, label %for.body.lr.ph.i

entry.do.end18_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end18

for.body.lr.ph.i:                                 ; preds = %entry
  %8 = ptrtoint ptr %table to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %table, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.010.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.rtw89_reg2_def, ptr %9, i32 %i.010.i
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -268435457, i32 %11)
  %cmp13.not.i = icmp ugt i32 %11, -268435457
  br i1 %cmp13.not.i, label %for.inc.i, label %for.body.i.for.end.i_crit_edge

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw i32 %i.010.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %7
  br i1 %exitcond.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %for.body.i.for.end.i_crit_edge
  %i.0.lcssa.i = phi i32 [ %7, %for.inc.i.for.end.i_crit_edge ], [ %i.010.i, %for.body.i.for.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0.lcssa.i)
  %cmp14.i = icmp eq i32 %i.0.lcssa.i, 0
  br i1 %cmp14.i, label %for.end.i.do.end18_crit_edge, label %for.body67.preheader.i

for.end.i.do.end18_crit_edge:                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end18

for.body67.preheader.i:                           ; preds = %for.end.i
  %conv36.i = zext i8 %3 to i32
  %shl.i = shl nuw nsw i32 %conv36.i, 16
  %conv61.i = zext i8 %5 to i32
  %or.i = or i32 %shl.i, %conv61.i
  br label %for.body67.i

for.body67.i:                                     ; preds = %for.inc93.i.for.body67.i_crit_edge, %for.body67.preheader.i
  %i.113.i = phi i32 [ %inc94.i, %for.inc93.i.for.body67.i_crit_edge ], [ 0, %for.body67.preheader.i ]
  %arrayidx69.i = getelementptr %struct.rtw89_reg2_def, ptr %9, i32 %i.113.i
  %12 = ptrtoint ptr %arrayidx69.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx69.i, align 4
  %and87.i = and i32 %13, 268435455
  call void @__sanitizer_cov_trace_cmp4(i32 %and87.i, i32 %or.i)
  %cmp89.i = icmp eq i32 %and87.i, %or.i
  br i1 %cmp89.i, label %for.body67.i.do.end18_crit_edge, label %for.inc93.i

for.body67.i.do.end18_crit_edge:                  ; preds = %for.body67.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end18

for.inc93.i:                                      ; preds = %for.body67.i
  %inc94.i = add nuw i32 %i.113.i, 1
  %exitcond31.not.i = icmp eq i32 %inc94.i, %i.0.lcssa.i
  br i1 %exitcond31.not.i, label %for.body142.preheader.i, label %for.inc93.i.for.body67.i_crit_edge

for.inc93.i.for.body67.i_crit_edge:               ; preds = %for.inc93.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body67.i

for.body142.preheader.i:                          ; preds = %for.inc93.i
  %or138.i = or i32 %shl.i, 255
  %umax.i = tail call i32 @llvm.umax.i32(i32 %i.0.lcssa.i, i32 1) #10
  br label %for.body142.i

for.body142.i:                                    ; preds = %for.inc168.i.for.body142.i_crit_edge, %for.body142.preheader.i
  %i.215.i = phi i32 [ %inc169.i, %for.inc168.i.for.body142.i_crit_edge ], [ 0, %for.body142.preheader.i ]
  %arrayidx144.i = getelementptr %struct.rtw89_reg2_def, ptr %9, i32 %i.215.i
  %14 = ptrtoint ptr %arrayidx144.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx144.i, align 4
  %and162.i = and i32 %15, 268435455
  call void @__sanitizer_cov_trace_cmp4(i32 %and162.i, i32 %or138.i)
  %cmp164.i = icmp eq i32 %and162.i, %or138.i
  br i1 %cmp164.i, label %for.body142.i.do.end18_crit_edge, label %for.inc168.i

for.body142.i.do.end18_crit_edge:                 ; preds = %for.body142.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end18

for.inc168.i:                                     ; preds = %for.body142.i
  %inc169.i = add nuw i32 %i.215.i, 1
  %exitcond32.not.i = icmp eq i32 %inc169.i, %umax.i
  br i1 %exitcond32.not.i, label %for.inc168.i.for.body174.i.outer_crit_edge, label %for.inc168.i.for.body142.i_crit_edge

for.inc168.i.for.body142.i_crit_edge:             ; preds = %for.inc168.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body142.i

for.inc168.i.for.body174.i.outer_crit_edge:       ; preds = %for.inc168.i
  br label %for.body174.i.outer

for.body174.i.outer:                              ; preds = %for.inc229.i.thread.for.body174.i.outer_crit_edge, %for.inc168.i.for.body174.i.outer_crit_edge
  %headline_idx.0.ph = phi i32 [ %i.317.i, %for.inc229.i.thread.for.body174.i.outer_crit_edge ], [ 0, %for.inc168.i.for.body174.i.outer_crit_edge ]
  %cv_max.020.i.ph = phi i8 [ %conv216.i.le, %for.inc229.i.thread.for.body174.i.outer_crit_edge ], [ 0, %for.inc168.i.for.body174.i.outer_crit_edge ]
  %case_matched.0.off019.i.ph = phi i1 [ true, %for.inc229.i.thread.for.body174.i.outer_crit_edge ], [ false, %for.inc168.i.for.body174.i.outer_crit_edge ]
  %i.317.i.ph = phi i32 [ %inc230.i127, %for.inc229.i.thread.for.body174.i.outer_crit_edge ], [ 0, %for.inc168.i.for.body174.i.outer_crit_edge ]
  %conv223.i = zext i8 %cv_max.020.i.ph to i32
  br label %for.body174.i

for.body174.i:                                    ; preds = %for.inc229.i.for.body174.i_crit_edge, %for.body174.i.outer
  %i.317.i = phi i32 [ %inc230.i, %for.inc229.i.for.body174.i_crit_edge ], [ %i.317.i.ph, %for.body174.i.outer ]
  %arrayidx176.i = getelementptr %struct.rtw89_reg2_def, ptr %9, i32 %i.317.i
  %16 = ptrtoint ptr %arrayidx176.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx176.i, align 4
  %and194.i = lshr i32 %17, 16
  %conv217.i = and i32 %and194.i, 255
  call void @__sanitizer_cov_trace_cmp4(i32 %conv217.i, i32 %conv36.i)
  %cmp219.i = icmp ne i32 %conv217.i, %conv36.i
  %conv222.i = and i32 %17, 255
  call void @__sanitizer_cov_trace_cmp4(i32 %conv222.i, i32 %conv223.i)
  %cmp224.not.i = icmp ult i32 %conv222.i, %conv223.i
  %or.cond = select i1 %cmp219.i, i1 true, i1 %cmp224.not.i
  br i1 %or.cond, label %for.inc229.i, label %for.inc229.i.thread

for.inc229.i:                                     ; preds = %for.body174.i
  %inc230.i = add nuw i32 %i.317.i, 1
  %cmp172.i = icmp ult i32 %inc230.i, %i.0.lcssa.i
  br i1 %cmp172.i, label %for.inc229.i.for.body174.i_crit_edge, label %for.end231.i

for.inc229.i.for.body174.i_crit_edge:             ; preds = %for.inc229.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body174.i

for.inc229.i.thread:                              ; preds = %for.body174.i
  %conv216.i.le = trunc i32 %17 to i8
  %inc230.i127 = add nuw i32 %i.317.i, 1
  %cmp172.i128 = icmp ult i32 %inc230.i127, %i.0.lcssa.i
  br i1 %cmp172.i128, label %for.inc229.i.thread.for.body174.i.outer_crit_edge, label %for.inc229.i.thread.do.end18_crit_edge

for.inc229.i.thread.do.end18_crit_edge:           ; preds = %for.inc229.i.thread
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end18

for.inc229.i.thread.for.body174.i.outer_crit_edge: ; preds = %for.inc229.i.thread
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body174.i.outer

for.end231.i:                                     ; preds = %for.inc229.i
  br i1 %case_matched.0.off019.i.ph, label %for.end231.i.do.end18_crit_edge, label %for.end231.i.for.body238.i.outer_crit_edge

for.end231.i.for.body238.i.outer_crit_edge:       ; preds = %for.end231.i
  br label %for.body238.i.outer

for.end231.i.do.end18_crit_edge:                  ; preds = %for.end231.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end18

for.body238.i.outer:                              ; preds = %for.inc292.i.thread.for.body238.i.outer_crit_edge, %for.end231.i.for.body238.i.outer_crit_edge
  %headline_idx.2.ph = phi i32 [ %i.424.i, %for.inc292.i.thread.for.body238.i.outer_crit_edge ], [ %headline_idx.0.ph, %for.end231.i.for.body238.i.outer_crit_edge ]
  %cv_max.227.i.ph = phi i8 [ %conv280.i.le, %for.inc292.i.thread.for.body238.i.outer_crit_edge ], [ %cv_max.020.i.ph, %for.end231.i.for.body238.i.outer_crit_edge ]
  %case_matched.2.off026.i.ph = phi i1 [ true, %for.inc292.i.thread.for.body238.i.outer_crit_edge ], [ false, %for.end231.i.for.body238.i.outer_crit_edge ]
  %i.424.i.ph = phi i32 [ %inc293.i144, %for.inc292.i.thread.for.body238.i.outer_crit_edge ], [ 0, %for.end231.i.for.body238.i.outer_crit_edge ]
  %conv286.i = zext i8 %cv_max.227.i.ph to i32
  br label %for.body238.i

for.body238.i:                                    ; preds = %for.inc292.i.for.body238.i_crit_edge, %for.body238.i.outer
  %i.424.i = phi i32 [ %inc293.i, %for.inc292.i.for.body238.i_crit_edge ], [ %i.424.i.ph, %for.body238.i.outer ]
  %arrayidx240.i = getelementptr %struct.rtw89_reg2_def, ptr %9, i32 %i.424.i
  %18 = ptrtoint ptr %arrayidx240.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx240.i, align 4
  %20 = and i32 %19, 16711680
  call void @__sanitizer_cov_trace_const_cmp4(i32 16711680, i32 %20)
  %cmp282.i = icmp ne i32 %20, 16711680
  %conv285.i = and i32 %19, 255
  call void @__sanitizer_cov_trace_cmp4(i32 %conv285.i, i32 %conv286.i)
  %cmp287.not.i = icmp ult i32 %conv285.i, %conv286.i
  %or.cond176 = select i1 %cmp282.i, i1 true, i1 %cmp287.not.i
  br i1 %or.cond176, label %for.inc292.i, label %for.inc292.i.thread

for.inc292.i:                                     ; preds = %for.body238.i
  %inc293.i = add nuw i32 %i.424.i, 1
  %cmp236.i = icmp ult i32 %inc293.i, %i.0.lcssa.i
  br i1 %cmp236.i, label %for.inc292.i.for.body238.i_crit_edge, label %for.end294.i

for.inc292.i.for.body238.i_crit_edge:             ; preds = %for.inc292.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body238.i

for.inc292.i.thread:                              ; preds = %for.body238.i
  %conv280.i.le = trunc i32 %19 to i8
  %inc293.i144 = add nuw i32 %i.424.i, 1
  %cmp236.i145 = icmp ult i32 %inc293.i144, %i.0.lcssa.i
  br i1 %cmp236.i145, label %for.inc292.i.thread.for.body238.i.outer_crit_edge, label %for.inc292.i.thread.do.end18_crit_edge

for.inc292.i.thread.do.end18_crit_edge:           ; preds = %for.inc292.i.thread
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end18

for.inc292.i.thread.for.body238.i.outer_crit_edge: ; preds = %for.inc292.i.thread
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body238.i.outer

for.end294.i:                                     ; preds = %for.inc292.i
  br i1 %case_matched.2.off026.i.ph, label %for.end294.i.do.end18_crit_edge, label %do.end

for.end294.i.do.end18_crit_edge:                  ; preds = %for.end294.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end18

do.end:                                           ; preds = %for.end294.i
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 1
  %21 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.34, i32 noundef %conv36.i, i32 noundef %conv61.i) #13
  br label %cleanup

do.end18:                                         ; preds = %for.end294.i.do.end18_crit_edge, %for.inc292.i.thread.do.end18_crit_edge, %for.end231.i.do.end18_crit_edge, %for.inc229.i.thread.do.end18_crit_edge, %for.body142.i.do.end18_crit_edge, %for.body67.i.do.end18_crit_edge, %for.end.i.do.end18_crit_edge, %entry.do.end18_crit_edge
  %headline_size.0.ph = phi i32 [ 0, %entry.do.end18_crit_edge ], [ %i.0.lcssa.i, %for.end231.i.do.end18_crit_edge ], [ 0, %for.end.i.do.end18_crit_edge ], [ %i.0.lcssa.i, %for.end294.i.do.end18_crit_edge ], [ %i.0.lcssa.i, %for.inc292.i.thread.do.end18_crit_edge ], [ %i.0.lcssa.i, %for.inc229.i.thread.do.end18_crit_edge ], [ %i.0.lcssa.i, %for.body142.i.do.end18_crit_edge ], [ %i.0.lcssa.i, %for.body67.i.do.end18_crit_edge ]
  %headline_idx.4.ph = phi i32 [ 0, %entry.do.end18_crit_edge ], [ %headline_idx.0.ph, %for.end231.i.do.end18_crit_edge ], [ 0, %for.end.i.do.end18_crit_edge ], [ %headline_idx.2.ph, %for.end294.i.do.end18_crit_edge ], [ %i.424.i, %for.inc292.i.thread.do.end18_crit_edge ], [ %i.317.i, %for.inc229.i.thread.do.end18_crit_edge ], [ %i.215.i, %for.body142.i.do.end18_crit_edge ], [ %i.113.i, %for.body67.i.do.end18_crit_edge ]
  %23 = ptrtoint ptr %table to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %table, align 4
  %arrayidx = getelementptr %struct.rtw89_reg2_def, ptr %24, i32 %headline_idx.4.ph
  %25 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx, align 4
  %and = and i32 %26, 268435455
  %27 = ptrtoint ptr %n_regs.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %n_regs.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %headline_size.0.ph, i32 %28)
  %cmp170 = icmp ult i32 %headline_size.0.ph, %28
  br i1 %cmp170, label %do.end18.for.body_crit_edge, label %do.end18.cleanup_crit_edge

do.end18.cleanup_crit_edge:                       ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end18.for.body_crit_edge:                      ; preds = %do.end18
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.end18.for.body_crit_edge
  %target_found.0.off0175 = phi i1 [ %target_found.1.off0, %for.inc.for.body_crit_edge ], [ false, %do.end18.for.body_crit_edge ]
  %is_matched.0.off0174 = phi i1 [ %is_matched.1.off0, %for.inc.for.body_crit_edge ], [ true, %do.end18.for.body_crit_edge ]
  %target.0173 = phi i32 [ %target.1, %for.inc.for.body_crit_edge ], [ 0, %do.end18.for.body_crit_edge ]
  %i.0171 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ %headline_size.0.ph, %do.end18.for.body_crit_edge ]
  %29 = ptrtoint ptr %table to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %table, align 4
  %arrayidx21 = getelementptr %struct.rtw89_reg2_def, ptr %30, i32 %i.0171
  %31 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx21, align 4
  %shr40 = lshr i32 %32, 28
  %33 = zext i32 %shr40 to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.134)
  switch i32 %shr40, label %sw.default [
    i32 8, label %for.body.do.end57_crit_edge
    i32 9, label %for.body.do.end57_crit_edge274
    i32 10, label %sw.bb62
    i32 11, label %for.body.for.inc_crit_edge
    i32 4, label %sw.bb72
  ]

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

for.body.do.end57_crit_edge274:                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end57

for.body.do.end57_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end57

do.end57:                                         ; preds = %for.body.do.end57_crit_edge, %for.body.do.end57_crit_edge274
  %and60 = and i32 %32, 268435455
  br label %for.inc

sw.bb62:                                          ; preds = %for.body
  br i1 %target_found.0.off0175, label %sw.bb62.for.inc_crit_edge, label %do.end67

sw.bb62.for.inc_crit_edge:                        ; preds = %sw.bb62
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

do.end67:                                         ; preds = %sw.bb62
  call void @__sanitizer_cov_trace_pc() #12
  %dev68 = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 1
  %34 = ptrtoint ptr %dev68 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev68, align 4
  %data = getelementptr %struct.rtw89_reg2_def, ptr %30, i32 %i.0171, i32 1
  %36 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %data, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %35, ptr noundef nonnull @.str.37, i32 noundef %32, i32 noundef %37) #13
  br label %cleanup

sw.bb72:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_cmp4(i32 %target.0173, i32 %and)
  %cmp76 = icmp eq i32 %target.0173, %and
  %not.target_found.0.off0 = xor i1 %target_found.0.off0175, true
  %spec.select = select i1 %not.target_found.0.off0, i1 %cmp76, i1 false
  %spec.select151 = select i1 %target_found.0.off0175, i1 true, i1 %cmp76
  br label %for.inc

sw.default:                                       ; preds = %for.body
  br i1 %is_matched.0.off0174, label %if.then81, label %sw.default.for.inc_crit_edge

sw.default.for.inc_crit_edge:                     ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then81:                                        ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %config(ptr noundef %rtwdev, ptr noundef %arrayidx21, i32 noundef %1, ptr noundef %extra_data) #10, !callees !295
  br label %for.inc

for.inc:                                          ; preds = %if.then81, %sw.default.for.inc_crit_edge, %sw.bb72, %sw.bb62.for.inc_crit_edge, %do.end57, %for.body.for.inc_crit_edge
  %target.1 = phi i32 [ %target.0173, %if.then81 ], [ %target.0173, %sw.default.for.inc_crit_edge ], [ %target.0173, %sw.bb62.for.inc_crit_edge ], [ %and60, %do.end57 ], [ %target.0173, %for.body.for.inc_crit_edge ], [ %target.0173, %sw.bb72 ]
  %is_matched.1.off0 = phi i1 [ true, %if.then81 ], [ false, %sw.default.for.inc_crit_edge ], [ false, %sw.bb62.for.inc_crit_edge ], [ %is_matched.0.off0174, %do.end57 ], [ true, %for.body.for.inc_crit_edge ], [ %spec.select, %sw.bb72 ]
  %target_found.1.off0 = phi i1 [ %target_found.0.off0175, %if.then81 ], [ %target_found.0.off0175, %sw.default.for.inc_crit_edge ], [ true, %sw.bb62.for.inc_crit_edge ], [ %target_found.0.off0175, %do.end57 ], [ false, %for.body.for.inc_crit_edge ], [ %spec.select151, %sw.bb72 ]
  %inc = add nuw i32 %i.0171, 1
  %38 = ptrtoint ptr %n_regs.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %n_regs.i, align 4
  %cmp = icmp ult i32 %inc, %39
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %do.end67, %do.end18.cleanup_crit_edge, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtw89_phy_config_bb_reg(ptr noundef %rtwdev, ptr nocapture noundef readonly %reg, i32 noundef %rf_path, ptr nocapture noundef readnone %extra_data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %reg, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.135)
  switch i32 %1, label %if.else26 [
    i32 254, label %entry.while.body_crit_edge
    i32 253, label %while.body8.preheader
    i32 252, label %if.then13
    i32 251, label %if.then17
    i32 250, label %if.then21
    i32 249, label %if.then25
  ]

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

while.body8.preheader:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %3 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %3(i32 noundef 214748000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 214748000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 214748000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 214748000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 214748000) #10
  br label %if.end32

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry.while.body_crit_edge
  %__ms.042 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ 50, %entry.while.body_crit_edge ]
  %dec = add nsw i32 %__ms.042, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 214748000) #10
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %while.body.if.end32_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

while.body.if.end32_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end32

if.then13:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 214748000) #10
  br label %if.end32

if.then17:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 10737400) #10
  br label %if.end32

if.then21:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 1073740) #10
  br label %if.end32

if.then25:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 214748) #10
  br label %if.end32

if.else26:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %data = getelementptr inbounds %struct.rtw89_reg2_def, ptr %reg, i32 0, i32 1
  %13 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %data, align 4
  %or.i = or i32 %1, 65536
  %hci.i.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 7
  %15 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hci.i.i, align 8
  %write32.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %16, i32 0, i32 12
  %17 = ptrtoint ptr %write32.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %write32.i.i, align 4
  tail call void %18(ptr noundef %rtwdev, i32 noundef %or.i, i32 noundef %14) #10
  br label %if.end32

if.end32:                                         ; preds = %if.else26, %if.then25, %if.then21, %if.then17, %if.then13, %while.body.if.end32_crit_edge, %while.body8.preheader
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw89_phy_init_rf_reg(ptr noundef %rtwdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %chip1 = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 3
  %0 = ptrtoint ptr %chip1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 6008) #14
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %rf_path_num = getelementptr inbounds %struct.rtw89_chip_info, ptr %1, i32 0, i32 9
  %3 = ptrtoint ptr %rf_path_num to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %rf_path_num, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %cmp28.not = icmp eq i8 %4, 0
  br i1 %cmp28.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %curr_idx.i = getelementptr inbounds %struct.rtw89_fw_h2c_rf_reg_info, ptr %call7.i.i, i32 0, i32 2
  %dev.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %indvars.iv = phi i32 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.inc.for.body_crit_edge ]
  %5 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %indvars.iv, ptr %call7.i.i, align 8
  %arrayidx = getelementptr %struct.rtw89_chip_info, ptr %1, i32 0, i32 24, i32 %indvars.iv
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  tail call fastcc void @rtw89_phy_init_reg(ptr noundef %rtwdev, ptr noundef %7, ptr noundef nonnull @rtw89_phy_config_rf_reg, ptr noundef nonnull %call7.i.i)
  %8 = ptrtoint ptr %curr_idx.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %curr_idx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1500, i16 %9)
  %cmp.i = icmp ugt i16 %9, 1500
  br i1 %cmp.i, label %do.end.i, label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %tobool.not33.i = icmp eq i16 %9, 0
  br i1 %tobool.not33.i, label %for.cond.preheader.i.rtw89_phy_config_rf_reg_fw.exit.thread_crit_edge, label %for.body.i

for.cond.preheader.i.rtw89_phy_config_rf_reg_fw.exit.thread_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rtw89_phy_config_rf_reg_fw.exit.thread

do.end.i:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i = zext i16 %9 to i32
  %10 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %11, ptr noundef nonnull @.str.41, i32 noundef %conv.i, i32 noundef 1500) #13
  br label %do.end

for.body.i:                                       ; preds = %for.cond.preheader.i
  %12 = tail call i16 @llvm.umin.i16(i16 %9, i16 500) #10
  %mul.i = shl nuw nsw i16 %12, 2
  %call.i = tail call i32 @rtw89_fw_h2c_rf_reg(ptr noundef %rtwdev, ptr noundef nonnull %call7.i.i, i16 noundef zeroext %mul.i, i8 noundef zeroext 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool14.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool14.not.i, label %for.inc.i, label %for.body.i.do.end_crit_edge

for.body.i.do.end_crit_edge:                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

for.inc.i:                                        ; preds = %for.body.i
  %sub.i = sub i16 %9, %12
  call void @__sanitizer_cov_trace_const_cmp2(i16 501, i16 %9)
  %tobool.not.i = icmp ult i16 %9, 501
  br i1 %tobool.not.i, label %for.inc.i.rtw89_phy_config_rf_reg_fw.exit.thread_crit_edge, label %for.body.i.1

for.inc.i.rtw89_phy_config_rf_reg_fw.exit.thread_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rtw89_phy_config_rf_reg_fw.exit.thread

for.body.i.1:                                     ; preds = %for.inc.i
  %13 = tail call i16 @llvm.umin.i16(i16 %sub.i, i16 500) #10
  %mul.i.1 = shl nuw nsw i16 %13, 2
  %call.i.1 = tail call i32 @rtw89_fw_h2c_rf_reg(ptr noundef %rtwdev, ptr noundef nonnull %call7.i.i, i16 noundef zeroext %mul.i.1, i8 noundef zeroext 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.1)
  %tobool14.not.i.1 = icmp eq i32 %call.i.1, 0
  br i1 %tobool14.not.i.1, label %for.inc.i.1, label %for.body.i.1.do.end_crit_edge

for.body.i.1.do.end_crit_edge:                    ; preds = %for.body.i.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

for.inc.i.1:                                      ; preds = %for.body.i.1
  call void @__sanitizer_cov_trace_const_cmp2(i16 501, i16 %sub.i)
  %tobool.not.i.1 = icmp ult i16 %sub.i, 501
  br i1 %tobool.not.i.1, label %for.inc.i.1.rtw89_phy_config_rf_reg_fw.exit.thread_crit_edge, label %for.body.i.2

for.inc.i.1.rtw89_phy_config_rf_reg_fw.exit.thread_crit_edge: ; preds = %for.inc.i.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %rtw89_phy_config_rf_reg_fw.exit.thread

for.body.i.2:                                     ; preds = %for.inc.i.1
  %sub.i.1 = sub i16 %sub.i, %13
  %14 = tail call i16 @llvm.umin.i16(i16 %sub.i.1, i16 500) #10
  %mul.i.2 = shl nuw nsw i16 %14, 2
  %call.i.2 = tail call i32 @rtw89_fw_h2c_rf_reg(ptr noundef %rtwdev, ptr noundef nonnull %call7.i.i, i16 noundef zeroext %mul.i.2, i8 noundef zeroext 2) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.2)
  %tobool14.not.i.2 = icmp eq i32 %call.i.2, 0
  br i1 %tobool14.not.i.2, label %for.body.i.2.rtw89_phy_config_rf_reg_fw.exit.thread_crit_edge, label %for.body.i.2.do.end_crit_edge

for.body.i.2.do.end_crit_edge:                    ; preds = %for.body.i.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

for.body.i.2.rtw89_phy_config_rf_reg_fw.exit.thread_crit_edge: ; preds = %for.body.i.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %rtw89_phy_config_rf_reg_fw.exit.thread

rtw89_phy_config_rf_reg_fw.exit.thread:           ; preds = %for.body.i.2.rtw89_phy_config_rf_reg_fw.exit.thread_crit_edge, %for.inc.i.1.rtw89_phy_config_rf_reg_fw.exit.thread_crit_edge, %for.inc.i.rtw89_phy_config_rf_reg_fw.exit.thread_crit_edge, %for.cond.preheader.i.rtw89_phy_config_rf_reg_fw.exit.thread_crit_edge
  %15 = ptrtoint ptr %curr_idx.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 0, ptr %curr_idx.i, align 4
  br label %for.inc

do.end:                                           ; preds = %for.body.i.2.do.end_crit_edge, %for.body.i.1.do.end_crit_edge, %for.body.i.do.end_crit_edge, %do.end.i
  %16 = ptrtoint ptr %curr_idx.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 0, ptr %curr_idx.i, align 4
  %17 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %18, ptr noundef nonnull @.str.11, i32 noundef %indvars.iv) #13
  br label %for.inc

for.inc:                                          ; preds = %do.end, %rtw89_phy_config_rf_reg_fw.exit.thread
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %19 = ptrtoint ptr %rf_path_num to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %rf_path_num, align 4
  %21 = zext i8 %20 to i32
  %cmp = icmp ult i32 %indvars.iv.next, %21
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #10
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtw89_phy_config_rf_reg(ptr noundef %rtwdev, ptr nocapture noundef readonly %reg, i32 noundef %rf_path, ptr nocapture noundef %extra_data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %reg, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.136)
  switch i32 %1, label %if.else26 [
    i32 254, label %entry.while.body_crit_edge
    i32 253, label %while.body8.preheader
    i32 252, label %if.then13
    i32 251, label %if.then17
    i32 250, label %if.then21
    i32 249, label %if.then25
  ]

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

while.body8.preheader:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %3 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %3(i32 noundef 214748000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 214748000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 214748000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 214748000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 214748000) #10
  br label %if.end32

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry.while.body_crit_edge
  %__ms.045 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ 50, %entry.while.body_crit_edge ]
  %dec = add nsw i32 %__ms.045, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 214748000) #10
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %while.body.if.end32_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

while.body.if.end32_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end32

if.then13:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 214748000) #10
  br label %if.end32

if.then17:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 10737400) #10
  br label %if.end32

if.then21:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 1073740) #10
  br label %if.end32

if.then25:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 214748) #10
  br label %if.end32

if.else26:                                        ; preds = %entry
  %data = getelementptr inbounds %struct.rtw89_reg2_def, ptr %reg, i32 0, i32 1
  %13 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %data, align 4
  %rf_mutex.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 12
  tail call void @mutex_lock_nested(ptr noundef %rf_mutex.i, i32 noundef 0) #10
  %chip.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 3
  %15 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %chip.i, align 4
  %ops.i = getelementptr inbounds %struct.rtw89_chip_info, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ops.i, align 4
  %write_rf.i = getelementptr inbounds %struct.rtw89_chip_ops, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %write_rf.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %write_rf.i, align 4
  %call.i = tail call zeroext i1 %20(ptr noundef %rtwdev, i32 noundef %rf_path, i32 noundef %1, i32 noundef 1048575, i32 noundef %14) #10
  tail call void @mutex_unlock(ptr noundef %rf_mutex.i) #10
  %curr_idx.i = getelementptr inbounds %struct.rtw89_fw_h2c_rf_reg_info, ptr %extra_data, i32 0, i32 2
  %21 = ptrtoint ptr %curr_idx.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %curr_idx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1499, i16 %22)
  %cmp.i = icmp ugt i16 %22, 1499
  br i1 %cmp.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.else26
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i = zext i16 %22 to i32
  %dev.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 1
  %23 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %24, ptr noundef nonnull @.str.39, i32 noundef %rf_path, i32 noundef %conv.i) #13
  br label %if.end32

if.end.i:                                         ; preds = %if.else26
  call void @__sanitizer_cov_trace_pc() #12
  %.frozen = freeze i16 %22
  %div.i = udiv i16 %.frozen, 500
  %conv4.i = zext i16 %div.i to i32
  %25 = mul i16 %div.i, 500
  %rem.i.decomposed = sub i16 %.frozen, %25
  %26 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %reg, align 4
  %shl.i = shl i32 %27, 20
  %28 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %data, align 4
  %or.i = or i32 %shl.i, %29
  %30 = tail call i32 @llvm.bswap.i32(i32 %or.i) #10
  %idxprom9.i = zext i16 %rem.i.decomposed to i32
  %arrayidx10.i = getelementptr %struct.rtw89_fw_h2c_rf_reg_info, ptr %extra_data, i32 0, i32 1, i32 %conv4.i, i32 %idxprom9.i
  %31 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %arrayidx10.i, align 4
  %32 = ptrtoint ptr %curr_idx.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %curr_idx.i, align 4
  %inc.i = add i16 %33, 1
  store i16 %inc.i, ptr %curr_idx.i, align 4
  br label %if.end32

if.end32:                                         ; preds = %if.end.i, %do.end.i, %if.then25, %if.then21, %if.then17, %if.then13, %while.body.if.end32_crit_edge, %while.body8.preheader
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw89_phy_write32_idx(ptr noundef %rtwdev, i32 noundef %addr, i32 noundef %mask, i32 noundef %data, i32 noundef %phy_idx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dbcc_en = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 2
  %0 = ptrtoint ptr %dbcc_en to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %dbcc_en, align 8, !range !291
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp ne i8 %1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %phy_idx)
  %cmp = icmp eq i32 %phy_idx, 1
  %or.cond = and i1 %cmp, %tobool.not
  br i1 %or.cond, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  %shr.i = lshr i32 %addr, 8
  %switch.tableidx = add nsw i32 %shr.i, -6
  call void @__sanitizer_cov_trace_const_cmp4(i32 22, i32 %switch.tableidx)
  %2 = icmp ult i32 %switch.tableidx, 22
  br i1 %2, label %switch.lookup, label %if.then.rtw89_phy0_phy1_offset.exit_crit_edge

if.then.rtw89_phy0_phy1_offset.exit_crit_edge:    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %rtw89_phy0_phy1_offset.exit

switch.lookup:                                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %switch.gep = getelementptr inbounds [22 x i32], ptr @switch.table.rtw89_phy_write32_idx, i32 0, i32 %switch.tableidx
  %3 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %3)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %rtw89_phy0_phy1_offset.exit

rtw89_phy0_phy1_offset.exit:                      ; preds = %switch.lookup, %if.then.rtw89_phy0_phy1_offset.exit_crit_edge
  %ofst.0.i = phi i32 [ %switch.load, %switch.lookup ], [ 0, %if.then.rtw89_phy0_phy1_offset.exit_crit_edge ]
  %4 = and i32 %addr, -4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 16384, i32 %4)
  %5 = icmp eq i32 %4, 16384
  %ofst.1.i = select i1 %5, i32 8192, i32 %ofst.0.i
  %add = add i32 %ofst.1.i, %addr
  br label %if.end

if.end:                                           ; preds = %rtw89_phy0_phy1_offset.exit, %entry.if.end_crit_edge
  %addr.addr.0 = phi i32 [ %add, %rtw89_phy0_phy1_offset.exit ], [ %addr, %entry.if.end_crit_edge ]
  %or.i = or i32 %addr.addr.0, 65536
  %and.i.i = and i32 %addr.addr.0, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.rtw89_phy_write32_mask.exit_crit_edge, label %do.end.i.i, !prof !294

if.end.rtw89_phy_write32_mask.exit_crit_edge:     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %rtw89_phy_write32_mask.exit

do.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.32, i32 noundef 3031, i32 noundef 9, ptr noundef nonnull @.str.33, i32 noundef %or.i) #10
  br label %rtw89_phy_write32_mask.exit

rtw89_phy_write32_mask.exit:                      ; preds = %do.end.i.i, %if.end.rtw89_phy_write32_mask.exit_crit_edge
  %6 = tail call i32 @llvm.cttz.i32(i32 %mask, i1 false) #10, !range !293
  %hci.i.i.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 7
  %7 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hci.i.i.i, align 8
  %read32.i.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %8, i32 0, i32 9
  %9 = ptrtoint ptr %read32.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %read32.i.i.i, align 4
  %call.i.i.i = tail call i32 %10(ptr noundef %rtwdev, i32 noundef %or.i) #10
  %neg.i.i = xor i32 %mask, -1
  %and21.i.i = and i32 %call.i.i.i, %neg.i.i
  %shl.i.i = shl i32 %data, %6
  %and22.i.i = and i32 %shl.i.i, %mask
  %or.i.i = or i32 %and21.i.i, %and22.i.i
  %11 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hci.i.i.i, align 8
  %write32.i.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %12, i32 0, i32 12
  %13 = ptrtoint ptr %write32.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %write32.i.i.i, align 4
  tail call void %14(ptr noundef %rtwdev, i32 noundef %or.i, i32 noundef %or.i.i) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw89_phy_set_phy_regs(ptr noundef %rtwdev, i32 noundef %addr, i32 noundef %mask, i32 noundef %val) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dbcc_en.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 2
  %or.i.i = or i32 %addr, 65536
  %and.i.i.i = and i32 %addr, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %entry.rtw89_phy_write32_idx.exit_crit_edge, label %do.end.i.i.i, !prof !294

entry.rtw89_phy_write32_idx.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %rtw89_phy_write32_idx.exit

do.end.i.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.32, i32 noundef 3031, i32 noundef 9, ptr noundef nonnull @.str.33, i32 noundef %or.i.i) #10
  br label %rtw89_phy_write32_idx.exit

rtw89_phy_write32_idx.exit:                       ; preds = %do.end.i.i.i, %entry.rtw89_phy_write32_idx.exit_crit_edge
  %0 = tail call i32 @llvm.cttz.i32(i32 %mask, i1 false) #10, !range !293
  %hci.i.i.i.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 7
  %1 = ptrtoint ptr %hci.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hci.i.i.i.i, align 8
  %read32.i.i.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %2, i32 0, i32 9
  %3 = ptrtoint ptr %read32.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %read32.i.i.i.i, align 4
  %call.i.i.i.i = tail call i32 %4(ptr noundef %rtwdev, i32 noundef %or.i.i) #10
  %neg.i.i.i = xor i32 %mask, -1
  %and21.i.i.i = and i32 %call.i.i.i.i, %neg.i.i.i
  %shl.i.i.i = shl i32 %val, %0
  %and22.i.i.i = and i32 %shl.i.i.i, %mask
  %or.i.i.i = or i32 %and21.i.i.i, %and22.i.i.i
  %5 = ptrtoint ptr %hci.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hci.i.i.i.i, align 8
  %write32.i.i.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %6, i32 0, i32 12
  %7 = ptrtoint ptr %write32.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %write32.i.i.i.i, align 4
  tail call void %8(ptr noundef %rtwdev, i32 noundef %or.i.i, i32 noundef %or.i.i.i) #10
  %9 = ptrtoint ptr %dbcc_en.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %dbcc_en.i, align 8, !range !291
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not = icmp eq i8 %10, 0
  br i1 %tobool.not, label %rtw89_phy_write32_idx.exit.return_crit_edge, label %if.then.i

rtw89_phy_write32_idx.exit.return_crit_edge:      ; preds = %rtw89_phy_write32_idx.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.then.i:                                        ; preds = %rtw89_phy_write32_idx.exit
  %shr.i.i = lshr i32 %addr, 8
  %switch.tableidx = add nsw i32 %shr.i.i, -6
  call void @__sanitizer_cov_trace_const_cmp4(i32 22, i32 %switch.tableidx)
  %11 = icmp ult i32 %switch.tableidx, 22
  br i1 %11, label %switch.lookup, label %if.then.i.if.end.i_crit_edge

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

switch.lookup:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %switch.gep = getelementptr inbounds [22 x i32], ptr @switch.table.rtw89_phy_set_phy_regs, i32 0, i32 %switch.tableidx
  %12 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %12)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %switch.lookup, %if.then.i.if.end.i_crit_edge
  %ofst.0.i.i = phi i32 [ %switch.load, %switch.lookup ], [ 0, %if.then.i.if.end.i_crit_edge ]
  %13 = and i32 %addr, -4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 16384, i32 %13)
  %14 = icmp eq i32 %13, 16384
  %ofst.1.i.i = select i1 %14, i32 8192, i32 %ofst.0.i.i
  %add.i = add i32 %ofst.1.i.i, %addr
  %or.i.i8 = or i32 %add.i, 65536
  %and.i.i.i9 = and i32 %add.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i9)
  %tobool.not.i.i.i10 = icmp eq i32 %and.i.i.i9, 0
  br i1 %tobool.not.i.i.i10, label %if.end.i.rtw89_phy_write32_idx.exit21_crit_edge, label %do.end.i.i.i11, !prof !294

if.end.i.rtw89_phy_write32_idx.exit21_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rtw89_phy_write32_idx.exit21

do.end.i.i.i11:                                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.32, i32 noundef 3031, i32 noundef 9, ptr noundef nonnull @.str.33, i32 noundef %or.i.i8) #10
  br label %rtw89_phy_write32_idx.exit21

rtw89_phy_write32_idx.exit21:                     ; preds = %do.end.i.i.i11, %if.end.i.rtw89_phy_write32_idx.exit21_crit_edge
  %15 = ptrtoint ptr %hci.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hci.i.i.i.i, align 8
  %read32.i.i.i.i13 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %16, i32 0, i32 9
  %17 = ptrtoint ptr %read32.i.i.i.i13 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %read32.i.i.i.i13, align 4
  %call.i.i.i.i14 = tail call i32 %18(ptr noundef %rtwdev, i32 noundef %or.i.i8) #10
  %and21.i.i.i16 = and i32 %call.i.i.i.i14, %neg.i.i.i
  %or.i.i.i19 = or i32 %and21.i.i.i16, %and22.i.i.i
  %19 = ptrtoint ptr %hci.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %hci.i.i.i.i, align 8
  %write32.i.i.i.i20 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %20, i32 0, i32 12
  %21 = ptrtoint ptr %write32.i.i.i.i20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %write32.i.i.i.i20, align 4
  tail call void %22(ptr noundef %rtwdev, i32 noundef %or.i.i8, i32 noundef %or.i.i.i19) #10
  br label %return

return:                                           ; preds = %rtw89_phy_write32_idx.exit21, %rtw89_phy_write32_idx.exit.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw89_phy_write_reg3_tbl(ptr noundef %rtwdev, ptr nocapture noundef readonly %tbl) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %size = getelementptr inbounds %struct.rtw89_phy_reg3_tbl, ptr %tbl, i32 0, i32 1
  %0 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp7 = icmp sgt i32 %1, 0
  br i1 %cmp7, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %hci.i.i.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 7
  br label %for.body

for.body:                                         ; preds = %rtw89_phy_write32_mask.exit.for.body_crit_edge, %for.body.lr.ph
  %i.08 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %rtw89_phy_write32_mask.exit.for.body_crit_edge ]
  %2 = ptrtoint ptr %tbl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tbl, align 4
  %arrayidx = getelementptr %struct.rtw89_reg3_def, ptr %3, i32 %i.08
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %mask = getelementptr %struct.rtw89_reg3_def, ptr %3, i32 %i.08, i32 1
  %6 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mask, align 4
  %data = getelementptr %struct.rtw89_reg3_def, ptr %3, i32 %i.08, i32 2
  %8 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %data, align 4
  %or.i = or i32 %5, 65536
  %and.i.i = and i32 %5, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %for.body.rtw89_phy_write32_mask.exit_crit_edge, label %do.end.i.i, !prof !294

for.body.rtw89_phy_write32_mask.exit_crit_edge:   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %rtw89_phy_write32_mask.exit

do.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.32, i32 noundef 3031, i32 noundef 9, ptr noundef nonnull @.str.33, i32 noundef %or.i) #10
  br label %rtw89_phy_write32_mask.exit

rtw89_phy_write32_mask.exit:                      ; preds = %do.end.i.i, %for.body.rtw89_phy_write32_mask.exit_crit_edge
  %10 = tail call i32 @llvm.cttz.i32(i32 %7, i1 false) #10, !range !293
  %11 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hci.i.i.i, align 8
  %read32.i.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %12, i32 0, i32 9
  %13 = ptrtoint ptr %read32.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %read32.i.i.i, align 4
  %call.i.i.i = tail call i32 %14(ptr noundef %rtwdev, i32 noundef %or.i) #10
  %neg.i.i = xor i32 %7, -1
  %and21.i.i = and i32 %call.i.i.i, %neg.i.i
  %shl.i.i = shl i32 %9, %10
  %and22.i.i = and i32 %shl.i.i, %7
  %or.i.i = or i32 %and21.i.i, %and22.i.i
  %15 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hci.i.i.i, align 8
  %write32.i.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %16, i32 0, i32 12
  %17 = ptrtoint ptr %write32.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %write32.i.i.i, align 4
  tail call void %18(ptr noundef %rtwdev, i32 noundef %or.i, i32 noundef %or.i.i) #10
  %inc = add nuw nsw i32 %i.08, 1
  %19 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %size, align 4
  %cmp = icmp slt i32 %inc, %20
  br i1 %cmp, label %rtw89_phy_write32_mask.exit.for.body_crit_edge, label %rtw89_phy_write32_mask.exit.for.end_crit_edge

rtw89_phy_write32_mask.exit.for.end_crit_edge:    ; preds = %rtw89_phy_write32_mask.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

rtw89_phy_write32_mask.exit.for.body_crit_edge:   ; preds = %rtw89_phy_write32_mask.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %rtw89_phy_write32_mask.exit.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw89_phy_load_txpwr_byrate(ptr nocapture noundef writeonly %rtwdev, ptr nocapture noundef readonly %tbl) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %tbl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tbl, align 4
  %size = getelementptr inbounds %struct.rtw89_txpwr_table, ptr %tbl, i32 0, i32 1
  %2 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %size, align 4
  %add.ptr = getelementptr %struct.rtw89_txpwr_byrate_cfg, ptr %1, i32 %3
  %cmp39 = icmp ult ptr %1, %add.ptr
  br i1 %cmp39, label %entry.for.body_crit_edge, label %entry.for.end22_crit_edge

entry.for.end22_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end22

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.inc21.for.body_crit_edge, %entry.for.body_crit_edge
  %cfg.040 = phi ptr [ %incdec.ptr, %for.inc21.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  %4 = ptrtoint ptr %cfg.040 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cfg.040, align 4
  %arrayidx = getelementptr %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 34, i32 %5
  %rs = getelementptr inbounds %struct.rtw89_txpwr_byrate_cfg, ptr %cfg.040, i32 0, i32 2
  %6 = ptrtoint ptr %rs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rs, align 4
  %arrayidx3 = getelementptr [5 x i8], ptr @_byr_of_rs, i32 0, i32 %7
  %8 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx3, align 1
  %conv = zext i8 %9 to i32
  %add.ptr4 = getelementptr i8, ptr %arrayidx, i32 %conv
  %len = getelementptr inbounds %struct.rtw89_txpwr_byrate_cfg, ptr %cfg.040, i32 0, i32 4
  %10 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %len, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %cmp936.not = icmp eq i8 %11, 0
  br i1 %cmp936.not, label %for.body.for.inc21_crit_edge, label %for.body11.lr.ph

for.body.for.inc21_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc21

for.body11.lr.ph:                                 ; preds = %for.body
  %data5 = getelementptr inbounds %struct.rtw89_txpwr_byrate_cfg, ptr %cfg.040, i32 0, i32 5
  %12 = ptrtoint ptr %data5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %data5, align 4
  %nss = getelementptr inbounds %struct.rtw89_txpwr_byrate_cfg, ptr %cfg.040, i32 0, i32 1
  %shf = getelementptr inbounds %struct.rtw89_txpwr_byrate_cfg, ptr %cfg.040, i32 0, i32 3
  br label %for.body11

for.body11:                                       ; preds = %for.body11.for.body11_crit_edge, %for.body11.lr.ph
  %indvars.iv = phi i32 [ 0, %for.body11.lr.ph ], [ %indvars.iv.next, %for.body11.for.body11_crit_edge ]
  %data1.037 = phi i32 [ %13, %for.body11.lr.ph ], [ %shr, %for.body11.for.body11_crit_edge ]
  %14 = ptrtoint ptr %nss to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %nss, align 4
  %16 = ptrtoint ptr %rs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %rs, align 4
  %arrayidx13 = getelementptr [5 x i8], ptr @rtw89_rs_idx_max, i32 0, i32 %17
  %18 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx13, align 1
  %conv14 = zext i8 %19 to i32
  %mul = mul i32 %15, %conv14
  %20 = ptrtoint ptr %shf to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %shf, align 4
  %conv15 = zext i8 %21 to i32
  %add = add nuw nsw i32 %indvars.iv, %conv15
  %add17 = add i32 %add, %mul
  %conv19 = trunc i32 %data1.037 to i8
  %idxprom = and i32 %add17, 255
  %arrayidx20 = getelementptr i8, ptr %add.ptr4, i32 %idxprom
  %22 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv19, ptr %arrayidx20, align 1
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %shr = lshr i32 %data1.037, 8
  %23 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %len, align 1
  %25 = zext i8 %24 to i32
  %cmp9 = icmp ult i32 %indvars.iv.next, %25
  br i1 %cmp9, label %for.body11.for.body11_crit_edge, label %for.body11.for.inc21_crit_edge

for.body11.for.inc21_crit_edge:                   ; preds = %for.body11
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc21

for.body11.for.body11_crit_edge:                  ; preds = %for.body11
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body11

for.inc21:                                        ; preds = %for.body11.for.inc21_crit_edge, %for.body.for.inc21_crit_edge
  %incdec.ptr = getelementptr %struct.rtw89_txpwr_byrate_cfg, ptr %cfg.040, i32 1
  %cmp = icmp ult ptr %incdec.ptr, %add.ptr
  br i1 %cmp, label %for.inc21.for.body_crit_edge, label %for.inc21.for.end22_crit_edge

for.inc21.for.end22_crit_edge:                    ; preds = %for.inc21
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end22

for.inc21.for.body_crit_edge:                     ; preds = %for.inc21
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end22:                                        ; preds = %for.inc21.for.end22_crit_edge, %entry.for.end22_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local signext i8 @rtw89_phy_read_txpwr_byrate(ptr noundef %rtwdev, ptr nocapture noundef readonly %rate_desc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %current_band_type = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 4, i32 7
  %0 = ptrtoint ptr %current_band_type to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %current_band_type, align 1
  %conv = zext i8 %1 to i32
  %rs = getelementptr inbounds %struct.rtw89_rate_desc, ptr %rate_desc, i32 0, i32 1
  %2 = ptrtoint ptr %rs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  %spec.select = select i1 %cmp, i32 0, i32 %conv
  %4 = ptrtoint ptr %rate_desc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rate_desc, align 4
  %arrayidx = getelementptr [5 x i8], ptr @rtw89_rs_nss_max, i32 0, i32 %3
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx, align 1
  %conv3 = zext i8 %7 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %conv3)
  %cmp4 = icmp ult i32 %5, %conv3
  br i1 %cmp4, label %land.lhs.true, label %entry.if.then13_crit_edge

entry.if.then13_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then13

land.lhs.true:                                    ; preds = %entry
  %idx6 = getelementptr inbounds %struct.rtw89_rate_desc, ptr %rate_desc, i32 0, i32 2
  %8 = ptrtoint ptr %idx6 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %idx6, align 4
  %arrayidx9 = getelementptr [5 x i8], ptr @rtw89_rs_idx_max, i32 0, i32 %3
  %10 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx9, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %9, i8 %11)
  %cmp11 = icmp ult i8 %9, %11
  br i1 %cmp11, label %if.end18, label %land.lhs.true.if.then13_crit_edge

land.lhs.true.if.then13_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then13

if.then13:                                        ; preds = %land.lhs.true.if.then13_crit_edge, %entry.if.then13_crit_edge
  %idx16 = getelementptr inbounds %struct.rtw89_rate_desc, ptr %rate_desc, i32 0, i32 2
  %12 = ptrtoint ptr %idx16 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %idx16, align 4
  %conv17 = zext i8 %13 to i32
  tail call void (ptr, i32, ptr, ...) @__rtw89_debug(ptr noundef %rtwdev, i32 noundef 32, ptr noundef nonnull @.str.14, i32 noundef %3, i32 noundef %5, i32 noundef %conv17) #10
  br label %cleanup

if.end18:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx20 = getelementptr %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 34, i32 %spec.select
  %arrayidx22 = getelementptr [5 x i8], ptr @_byr_of_rs, i32 0, i32 %3
  %14 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx22, align 1
  %conv23 = zext i8 %15 to i32
  %add.ptr = getelementptr i8, ptr %arrayidx20, i32 %conv23
  %16 = trunc i32 %5 to i8
  %17 = mul i8 %11, %16
  %conv30 = add i8 %17, %9
  %chip = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 3
  %18 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %chip, align 4
  %idxprom = zext i8 %conv30 to i32
  %arrayidx31 = getelementptr i8, ptr %add.ptr, i32 %idxprom
  %20 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx31, align 1
  %conv32 = sext i8 %21 to i32
  %txpwr_factor_rf = getelementptr inbounds %struct.rtw89_chip_info, ptr %19, i32 0, i32 32
  %22 = ptrtoint ptr %txpwr_factor_rf to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %txpwr_factor_rf, align 4
  %conv33 = zext i8 %23 to i32
  %txpwr_factor_mac = getelementptr inbounds %struct.rtw89_chip_info, ptr %19, i32 0, i32 33
  %24 = ptrtoint ptr %txpwr_factor_mac to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %txpwr_factor_mac, align 1
  %conv34 = zext i8 %25 to i32
  %sub = sub nsw i32 %conv33, %conv34
  %shr = ashr i32 %conv32, %sub
  %conv35 = trunc i32 %shr to i8
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %if.then13
  %retval.0 = phi i8 [ %conv35, %if.end18 ], [ 0, %if.then13 ]
  ret i8 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local signext i8 @rtw89_phy_read_txpwr_limit(ptr noundef %rtwdev, i8 noundef zeroext %bw, i8 noundef zeroext %ntx, i8 noundef zeroext %rs, i8 noundef zeroext %bf, i8 noundef zeroext %ch) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %chip1 = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 3
  %0 = ptrtoint ptr %chip1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip1, align 4
  %call = tail call fastcc zeroext i8 @rtw89_channel_to_idx(ptr noundef %rtwdev, i8 noundef zeroext %ch)
  %current_band_type = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 4, i32 7
  %2 = ptrtoint ptr %current_band_type to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %current_band_type, align 1
  %regd.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 49
  %4 = ptrtoint ptr %regd.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regd.i, align 8
  %idxprom.i = zext i8 %3 to i32
  %arrayidx.i = getelementptr %struct.rtw89_regulatory, ptr %5, i32 0, i32 1, i32 %idxprom.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx.i, align 1
  %8 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.137)
  switch i8 %3, label %do.end [
    i8 0, label %sw.bb
    i8 1, label %sw.bb25
  ]

sw.bb:                                            ; preds = %entry
  %txpwr_lmt_2g = getelementptr inbounds %struct.rtw89_chip_info, ptr %1, i32 0, i32 28
  %9 = ptrtoint ptr %txpwr_lmt_2g to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %txpwr_lmt_2g, align 4
  %idxprom = zext i8 %bw to i32
  %idxprom3 = zext i8 %ntx to i32
  %idxprom5 = zext i8 %rs to i32
  %idxprom7 = zext i8 %bf to i32
  %idxprom9 = zext i8 %7 to i32
  %idxprom11 = zext i8 %call to i32
  %arrayidx12 = getelementptr [2 x [2 x [3 x [2 x [14 x [14 x i8]]]]]], ptr %10, i32 0, i32 %idxprom, i32 %idxprom3, i32 %idxprom5, i32 %idxprom7, i32 %idxprom9, i32 %idxprom11
  %11 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx12, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not = icmp eq i8 %12, 0
  br i1 %tobool.not, label %if.then, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx8 = getelementptr [2 x [2 x [3 x [2 x [14 x [14 x i8]]]]]], ptr %10, i32 0, i32 %idxprom, i32 %idxprom3, i32 %idxprom5, i32 %idxprom7
  %arrayidx24 = getelementptr [14 x i8], ptr %arrayidx8, i32 0, i32 %idxprom11
  br label %sw.epilog.sink.split

sw.bb25:                                          ; preds = %entry
  %txpwr_lmt_5g = getelementptr inbounds %struct.rtw89_chip_info, ptr %1, i32 0, i32 29
  %13 = ptrtoint ptr %txpwr_lmt_5g to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %txpwr_lmt_5g, align 4
  %idxprom26 = zext i8 %bw to i32
  %idxprom28 = zext i8 %ntx to i32
  %idxprom30 = zext i8 %rs to i32
  %idxprom32 = zext i8 %bf to i32
  %idxprom34 = zext i8 %7 to i32
  %idxprom36 = zext i8 %call to i32
  %arrayidx37 = getelementptr [3 x [2 x [3 x [2 x [14 x [53 x i8]]]]]], ptr %14, i32 0, i32 %idxprom26, i32 %idxprom28, i32 %idxprom30, i32 %idxprom32, i32 %idxprom34, i32 %idxprom36
  %15 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx37, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool38.not = icmp eq i8 %16, 0
  br i1 %tobool38.not, label %if.then39, label %sw.bb25.sw.epilog_crit_edge

sw.bb25.sw.epilog_crit_edge:                      ; preds = %sw.bb25
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.then39:                                        ; preds = %sw.bb25
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx33 = getelementptr [3 x [2 x [3 x [2 x [14 x [53 x i8]]]]]], ptr %14, i32 0, i32 %idxprom26, i32 %idxprom28, i32 %idxprom30, i32 %idxprom32
  %arrayidx51 = getelementptr [53 x i8], ptr %arrayidx33, i32 0, i32 %idxprom36
  br label %sw.epilog.sink.split

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 1
  %17 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %18, ptr noundef nonnull @.str.15, i32 noundef %idxprom.i) #13
  br label %cleanup

sw.epilog.sink.split:                             ; preds = %if.then39, %if.then
  %arrayidx51.sink = phi ptr [ %arrayidx51, %if.then39 ], [ %arrayidx24, %if.then ]
  %19 = ptrtoint ptr %arrayidx51.sink to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx51.sink, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %sw.bb25.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge
  %lmt.0 = phi i8 [ %16, %sw.bb25.sw.epilog_crit_edge ], [ %12, %sw.bb.sw.epilog_crit_edge ], [ %20, %sw.epilog.sink.split ]
  %21 = ptrtoint ptr %chip1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %chip1, align 4
  %conv55 = sext i8 %lmt.0 to i32
  %txpwr_factor_rf = getelementptr inbounds %struct.rtw89_chip_info, ptr %22, i32 0, i32 32
  %23 = ptrtoint ptr %txpwr_factor_rf to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %txpwr_factor_rf, align 4
  %conv56 = zext i8 %24 to i32
  %txpwr_factor_mac = getelementptr inbounds %struct.rtw89_chip_info, ptr %22, i32 0, i32 33
  %25 = ptrtoint ptr %txpwr_factor_mac to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %txpwr_factor_mac, align 1
  %conv57 = zext i8 %26 to i32
  %sub = sub nsw i32 %conv56, %conv57
  %shr = ashr i32 %conv55, %sub
  %call59 = tail call signext i8 @rtw89_query_sar(ptr noundef %rtwdev) #10
  %conv62 = sext i8 %call59 to i32
  %27 = tail call i32 @llvm.smin.i32(i32 %shr, i32 %conv62)
  %conv66 = trunc i32 %27 to i8
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %do.end
  %retval.0 = phi i8 [ 0, %do.end ], [ %conv66, %sw.epilog ]
  ret i8 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i8 @rtw89_channel_to_idx(ptr nocapture noundef readonly %rtwdev, i8 noundef zeroext %channel) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i8 %channel to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.138)
  switch i8 %channel, label %do.end [
    i8 1, label %entry.sw.bb_crit_edge
    i8 2, label %entry.sw.bb_crit_edge33
    i8 3, label %entry.sw.bb_crit_edge34
    i8 4, label %entry.sw.bb_crit_edge35
    i8 5, label %entry.sw.bb_crit_edge36
    i8 6, label %entry.sw.bb_crit_edge37
    i8 7, label %entry.sw.bb_crit_edge38
    i8 8, label %entry.sw.bb_crit_edge39
    i8 9, label %entry.sw.bb_crit_edge40
    i8 10, label %entry.sw.bb_crit_edge41
    i8 11, label %entry.sw.bb_crit_edge42
    i8 12, label %entry.sw.bb_crit_edge43
    i8 13, label %entry.sw.bb_crit_edge44
    i8 14, label %entry.sw.bb_crit_edge45
    i8 36, label %entry.sw.bb3_crit_edge
    i8 37, label %entry.sw.bb3_crit_edge46
    i8 38, label %entry.sw.bb3_crit_edge47
    i8 39, label %entry.sw.bb3_crit_edge48
    i8 40, label %entry.sw.bb3_crit_edge49
    i8 41, label %entry.sw.bb3_crit_edge50
    i8 42, label %entry.sw.bb3_crit_edge51
    i8 43, label %entry.sw.bb3_crit_edge52
    i8 44, label %entry.sw.bb3_crit_edge53
    i8 45, label %entry.sw.bb3_crit_edge54
    i8 46, label %entry.sw.bb3_crit_edge55
    i8 47, label %entry.sw.bb3_crit_edge56
    i8 48, label %entry.sw.bb3_crit_edge57
    i8 49, label %entry.sw.bb3_crit_edge58
    i8 50, label %entry.sw.bb3_crit_edge59
    i8 51, label %entry.sw.bb3_crit_edge60
    i8 52, label %entry.sw.bb3_crit_edge61
    i8 53, label %entry.sw.bb3_crit_edge62
    i8 54, label %entry.sw.bb3_crit_edge63
    i8 55, label %entry.sw.bb3_crit_edge64
    i8 56, label %entry.sw.bb3_crit_edge65
    i8 57, label %entry.sw.bb3_crit_edge66
    i8 58, label %entry.sw.bb3_crit_edge67
    i8 59, label %entry.sw.bb3_crit_edge68
    i8 60, label %entry.sw.bb3_crit_edge69
    i8 61, label %entry.sw.bb3_crit_edge70
    i8 62, label %entry.sw.bb3_crit_edge71
    i8 63, label %entry.sw.bb3_crit_edge72
    i8 64, label %entry.sw.bb3_crit_edge73
    i8 100, label %entry.sw.bb7_crit_edge
    i8 101, label %entry.sw.bb7_crit_edge74
    i8 102, label %entry.sw.bb7_crit_edge75
    i8 103, label %entry.sw.bb7_crit_edge76
    i8 104, label %entry.sw.bb7_crit_edge77
    i8 105, label %entry.sw.bb7_crit_edge78
    i8 106, label %entry.sw.bb7_crit_edge79
    i8 107, label %entry.sw.bb7_crit_edge80
    i8 108, label %entry.sw.bb7_crit_edge81
    i8 109, label %entry.sw.bb7_crit_edge82
    i8 110, label %entry.sw.bb7_crit_edge83
    i8 111, label %entry.sw.bb7_crit_edge84
    i8 112, label %entry.sw.bb7_crit_edge85
    i8 113, label %entry.sw.bb7_crit_edge86
    i8 114, label %entry.sw.bb7_crit_edge87
    i8 115, label %entry.sw.bb7_crit_edge88
    i8 116, label %entry.sw.bb7_crit_edge89
    i8 117, label %entry.sw.bb7_crit_edge90
    i8 118, label %entry.sw.bb7_crit_edge91
    i8 119, label %entry.sw.bb7_crit_edge92
    i8 120, label %entry.sw.bb7_crit_edge93
    i8 121, label %entry.sw.bb7_crit_edge94
    i8 122, label %entry.sw.bb7_crit_edge95
    i8 123, label %entry.sw.bb7_crit_edge96
    i8 124, label %entry.sw.bb7_crit_edge97
    i8 125, label %entry.sw.bb7_crit_edge98
    i8 126, label %entry.sw.bb7_crit_edge99
    i8 127, label %entry.sw.bb7_crit_edge100
    i8 -128, label %entry.sw.bb7_crit_edge101
    i8 -127, label %entry.sw.bb7_crit_edge102
    i8 -126, label %entry.sw.bb7_crit_edge103
    i8 -125, label %entry.sw.bb7_crit_edge104
    i8 -124, label %entry.sw.bb7_crit_edge105
    i8 -123, label %entry.sw.bb7_crit_edge106
    i8 -122, label %entry.sw.bb7_crit_edge107
    i8 -121, label %entry.sw.bb7_crit_edge108
    i8 -120, label %entry.sw.bb7_crit_edge109
    i8 -119, label %entry.sw.bb7_crit_edge110
    i8 -118, label %entry.sw.bb7_crit_edge111
    i8 -117, label %entry.sw.bb7_crit_edge112
    i8 -116, label %entry.sw.bb7_crit_edge113
    i8 -115, label %entry.sw.bb7_crit_edge114
    i8 -114, label %entry.sw.bb7_crit_edge115
    i8 -113, label %entry.sw.bb7_crit_edge116
    i8 -112, label %entry.sw.bb7_crit_edge117
    i8 -107, label %entry.sw.bb12_crit_edge
    i8 -106, label %entry.sw.bb12_crit_edge118
    i8 -105, label %entry.sw.bb12_crit_edge119
    i8 -104, label %entry.sw.bb12_crit_edge120
    i8 -103, label %entry.sw.bb12_crit_edge121
    i8 -102, label %entry.sw.bb12_crit_edge122
    i8 -101, label %entry.sw.bb12_crit_edge123
    i8 -100, label %entry.sw.bb12_crit_edge124
    i8 -99, label %entry.sw.bb12_crit_edge125
    i8 -98, label %entry.sw.bb12_crit_edge126
    i8 -97, label %entry.sw.bb12_crit_edge127
    i8 -96, label %entry.sw.bb12_crit_edge128
    i8 -95, label %entry.sw.bb12_crit_edge129
    i8 -94, label %entry.sw.bb12_crit_edge130
    i8 -93, label %entry.sw.bb12_crit_edge131
    i8 -92, label %entry.sw.bb12_crit_edge132
    i8 -91, label %entry.sw.bb12_crit_edge133
    i8 -90, label %entry.sw.bb12_crit_edge134
    i8 -89, label %entry.sw.bb12_crit_edge135
    i8 -88, label %entry.sw.bb12_crit_edge136
    i8 -87, label %entry.sw.bb12_crit_edge137
    i8 -86, label %entry.sw.bb12_crit_edge138
    i8 -85, label %entry.sw.bb12_crit_edge139
    i8 -84, label %entry.sw.bb12_crit_edge140
    i8 -83, label %entry.sw.bb12_crit_edge141
    i8 -82, label %entry.sw.bb12_crit_edge142
    i8 -81, label %entry.sw.bb12_crit_edge143
    i8 -80, label %entry.sw.bb12_crit_edge144
    i8 -79, label %entry.sw.bb12_crit_edge145
  ]

entry.sw.bb12_crit_edge145:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb12

entry.sw.bb12_crit_edge144:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb12

entry.sw.bb12_crit_edge143:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb12

entry.sw.bb12_crit_edge142:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb12

entry.sw.bb12_crit_edge141:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb12

entry.sw.bb12_crit_edge140:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb12

entry.sw.bb12_crit_edge139:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb12

entry.sw.bb12_crit_edge138:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb12

entry.sw.bb12_crit_edge137:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb12

entry.sw.bb12_crit_edge136:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb12

entry.sw.bb12_crit_edge135:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb12

entry.sw.bb12_crit_edge134:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb12

entry.sw.bb12_crit_edge133:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb12

entry.sw.bb12_crit_edge132:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb12

entry.sw.bb12_crit_edge131:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb12

entry.sw.bb12_crit_edge130:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb12

entry.sw.bb12_crit_edge129:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb12

entry.sw.bb12_crit_edge128:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb12

entry.sw.bb12_crit_edge127:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb12

entry.sw.bb12_crit_edge126:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb12

entry.sw.bb12_crit_edge125:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb12

entry.sw.bb12_crit_edge124:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb12

entry.sw.bb12_crit_edge123:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb12

entry.sw.bb12_crit_edge122:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb12

entry.sw.bb12_crit_edge121:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb12

entry.sw.bb12_crit_edge120:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb12

entry.sw.bb12_crit_edge119:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb12

entry.sw.bb12_crit_edge118:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb12

entry.sw.bb12_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb12

entry.sw.bb7_crit_edge117:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb7

entry.sw.bb7_crit_edge116:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb7

entry.sw.bb7_crit_edge115:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb7

entry.sw.bb7_crit_edge114:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb7

entry.sw.bb7_crit_edge113:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb7

entry.sw.bb7_crit_edge112:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb7

entry.sw.bb7_crit_edge111:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb7

entry.sw.bb7_crit_edge110:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb7

entry.sw.bb7_crit_edge109:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb7

entry.sw.bb7_crit_edge108:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb7

entry.sw.bb7_crit_edge107:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb7

entry.sw.bb7_crit_edge106:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb7

entry.sw.bb7_crit_edge105:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb7

entry.sw.bb7_crit_edge104:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb7

entry.sw.bb7_crit_edge103:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb7

entry.sw.bb7_crit_edge102:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb7

entry.sw.bb7_crit_edge101:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb7

entry.sw.bb7_crit_edge100:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb7

entry.sw.bb7_crit_edge99:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb7

entry.sw.bb7_crit_edge98:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb7

entry.sw.bb7_crit_edge97:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb7

entry.sw.bb7_crit_edge96:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb7

entry.sw.bb7_crit_edge95:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb7

entry.sw.bb7_crit_edge94:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb7

entry.sw.bb7_crit_edge93:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb7

entry.sw.bb7_crit_edge92:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb7

entry.sw.bb7_crit_edge91:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb7

entry.sw.bb7_crit_edge90:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb7

entry.sw.bb7_crit_edge89:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb7

entry.sw.bb7_crit_edge88:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb7

entry.sw.bb7_crit_edge87:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb7

entry.sw.bb7_crit_edge86:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb7

entry.sw.bb7_crit_edge85:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb7

entry.sw.bb7_crit_edge84:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb7

entry.sw.bb7_crit_edge83:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb7

entry.sw.bb7_crit_edge82:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb7

entry.sw.bb7_crit_edge81:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb7

entry.sw.bb7_crit_edge80:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb7

entry.sw.bb7_crit_edge79:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb7

entry.sw.bb7_crit_edge78:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb7

entry.sw.bb7_crit_edge77:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb7

entry.sw.bb7_crit_edge76:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb7

entry.sw.bb7_crit_edge75:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb7

entry.sw.bb7_crit_edge74:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb7

entry.sw.bb7_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb7

entry.sw.bb3_crit_edge73:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb3

entry.sw.bb3_crit_edge72:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb3

entry.sw.bb3_crit_edge71:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb3

entry.sw.bb3_crit_edge70:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb3

entry.sw.bb3_crit_edge69:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb3

entry.sw.bb3_crit_edge68:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb3

entry.sw.bb3_crit_edge67:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb3

entry.sw.bb3_crit_edge66:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb3

entry.sw.bb3_crit_edge65:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb3

entry.sw.bb3_crit_edge64:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb3

entry.sw.bb3_crit_edge63:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb3

entry.sw.bb3_crit_edge62:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb3

entry.sw.bb3_crit_edge61:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb3

entry.sw.bb3_crit_edge60:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb3

entry.sw.bb3_crit_edge59:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb3

entry.sw.bb3_crit_edge58:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb3

entry.sw.bb3_crit_edge57:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb3

entry.sw.bb3_crit_edge56:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb3

entry.sw.bb3_crit_edge55:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb3

entry.sw.bb3_crit_edge54:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb3

entry.sw.bb3_crit_edge53:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb3

entry.sw.bb3_crit_edge52:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb3

entry.sw.bb3_crit_edge51:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb3

entry.sw.bb3_crit_edge50:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb3

entry.sw.bb3_crit_edge49:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb3

entry.sw.bb3_crit_edge48:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb3

entry.sw.bb3_crit_edge47:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb3

entry.sw.bb3_crit_edge46:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb3

entry.sw.bb3_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb3

entry.sw.bb_crit_edge45:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

entry.sw.bb_crit_edge44:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

entry.sw.bb_crit_edge43:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

entry.sw.bb_crit_edge42:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

entry.sw.bb_crit_edge41:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

entry.sw.bb_crit_edge40:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

entry.sw.bb_crit_edge39:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

entry.sw.bb_crit_edge38:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

entry.sw.bb_crit_edge37:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

entry.sw.bb_crit_edge36:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

entry.sw.bb_crit_edge35:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

entry.sw.bb_crit_edge34:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

entry.sw.bb_crit_edge33:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge33, %entry.sw.bb_crit_edge34, %entry.sw.bb_crit_edge35, %entry.sw.bb_crit_edge36, %entry.sw.bb_crit_edge37, %entry.sw.bb_crit_edge38, %entry.sw.bb_crit_edge39, %entry.sw.bb_crit_edge40, %entry.sw.bb_crit_edge41, %entry.sw.bb_crit_edge42, %entry.sw.bb_crit_edge43, %entry.sw.bb_crit_edge44, %entry.sw.bb_crit_edge45
  %sub = add nsw i8 %channel, -1
  br label %return

sw.bb3:                                           ; preds = %entry.sw.bb3_crit_edge, %entry.sw.bb3_crit_edge46, %entry.sw.bb3_crit_edge47, %entry.sw.bb3_crit_edge48, %entry.sw.bb3_crit_edge49, %entry.sw.bb3_crit_edge50, %entry.sw.bb3_crit_edge51, %entry.sw.bb3_crit_edge52, %entry.sw.bb3_crit_edge53, %entry.sw.bb3_crit_edge54, %entry.sw.bb3_crit_edge55, %entry.sw.bb3_crit_edge56, %entry.sw.bb3_crit_edge57, %entry.sw.bb3_crit_edge58, %entry.sw.bb3_crit_edge59, %entry.sw.bb3_crit_edge60, %entry.sw.bb3_crit_edge61, %entry.sw.bb3_crit_edge62, %entry.sw.bb3_crit_edge63, %entry.sw.bb3_crit_edge64, %entry.sw.bb3_crit_edge65, %entry.sw.bb3_crit_edge66, %entry.sw.bb3_crit_edge67, %entry.sw.bb3_crit_edge68, %entry.sw.bb3_crit_edge69, %entry.sw.bb3_crit_edge70, %entry.sw.bb3_crit_edge71, %entry.sw.bb3_crit_edge72, %entry.sw.bb3_crit_edge73
  %sub5 = add nsw i8 %channel, -36
  %div242532 = lshr i8 %sub5, 1
  br label %return

sw.bb7:                                           ; preds = %entry.sw.bb7_crit_edge, %entry.sw.bb7_crit_edge74, %entry.sw.bb7_crit_edge75, %entry.sw.bb7_crit_edge76, %entry.sw.bb7_crit_edge77, %entry.sw.bb7_crit_edge78, %entry.sw.bb7_crit_edge79, %entry.sw.bb7_crit_edge80, %entry.sw.bb7_crit_edge81, %entry.sw.bb7_crit_edge82, %entry.sw.bb7_crit_edge83, %entry.sw.bb7_crit_edge84, %entry.sw.bb7_crit_edge85, %entry.sw.bb7_crit_edge86, %entry.sw.bb7_crit_edge87, %entry.sw.bb7_crit_edge88, %entry.sw.bb7_crit_edge89, %entry.sw.bb7_crit_edge90, %entry.sw.bb7_crit_edge91, %entry.sw.bb7_crit_edge92, %entry.sw.bb7_crit_edge93, %entry.sw.bb7_crit_edge94, %entry.sw.bb7_crit_edge95, %entry.sw.bb7_crit_edge96, %entry.sw.bb7_crit_edge97, %entry.sw.bb7_crit_edge98, %entry.sw.bb7_crit_edge99, %entry.sw.bb7_crit_edge100, %entry.sw.bb7_crit_edge101, %entry.sw.bb7_crit_edge102, %entry.sw.bb7_crit_edge103, %entry.sw.bb7_crit_edge104, %entry.sw.bb7_crit_edge105, %entry.sw.bb7_crit_edge106, %entry.sw.bb7_crit_edge107, %entry.sw.bb7_crit_edge108, %entry.sw.bb7_crit_edge109, %entry.sw.bb7_crit_edge110, %entry.sw.bb7_crit_edge111, %entry.sw.bb7_crit_edge112, %entry.sw.bb7_crit_edge113, %entry.sw.bb7_crit_edge114, %entry.sw.bb7_crit_edge115, %entry.sw.bb7_crit_edge116, %entry.sw.bb7_crit_edge117
  %sub9 = add i8 %channel, -100
  %div10262731 = lshr i8 %sub9, 1
  %conv11 = add nuw nsw i8 %div10262731, 15
  br label %return

sw.bb12:                                          ; preds = %entry.sw.bb12_crit_edge, %entry.sw.bb12_crit_edge118, %entry.sw.bb12_crit_edge119, %entry.sw.bb12_crit_edge120, %entry.sw.bb12_crit_edge121, %entry.sw.bb12_crit_edge122, %entry.sw.bb12_crit_edge123, %entry.sw.bb12_crit_edge124, %entry.sw.bb12_crit_edge125, %entry.sw.bb12_crit_edge126, %entry.sw.bb12_crit_edge127, %entry.sw.bb12_crit_edge128, %entry.sw.bb12_crit_edge129, %entry.sw.bb12_crit_edge130, %entry.sw.bb12_crit_edge131, %entry.sw.bb12_crit_edge132, %entry.sw.bb12_crit_edge133, %entry.sw.bb12_crit_edge134, %entry.sw.bb12_crit_edge135, %entry.sw.bb12_crit_edge136, %entry.sw.bb12_crit_edge137, %entry.sw.bb12_crit_edge138, %entry.sw.bb12_crit_edge139, %entry.sw.bb12_crit_edge140, %entry.sw.bb12_crit_edge141, %entry.sw.bb12_crit_edge142, %entry.sw.bb12_crit_edge143, %entry.sw.bb12_crit_edge144, %entry.sw.bb12_crit_edge145
  %sub14 = add nsw i8 %channel, 107
  %div15282930 = lshr i8 %sub14, 1
  %conv17 = add nuw nsw i8 %div15282930, 38
  br label %return

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %conv = zext i8 %channel to i32
  %dev = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 1
  %1 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %2, ptr noundef nonnull @.str.43, i32 noundef %conv) #13
  br label %return

return:                                           ; preds = %do.end, %sw.bb12, %sw.bb7, %sw.bb3, %sw.bb
  %retval.0 = phi i8 [ 0, %do.end ], [ %conv17, %sw.bb12 ], [ %conv11, %sw.bb7 ], [ %div242532, %sw.bb3 ], [ %sub, %sw.bb ]
  ret i8 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local signext i8 @rtw89_query_sar(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw89_phy_fill_txpwr_limit(ptr noundef %rtwdev, ptr noundef writeonly %lmt, i8 noundef zeroext %ntx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %current_channel = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 4, i32 2
  %0 = ptrtoint ptr %current_channel to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %current_channel, align 1
  %current_band_width = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 4, i32 6
  %2 = ptrtoint ptr %current_band_width to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %current_band_width, align 4
  %4 = call ptr @memset(ptr %lmt, i32 0, i32 40)
  %5 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.139)
  switch i8 %3, label %entry.sw.epilog_crit_edge [
    i8 0, label %sw.bb
    i8 1, label %sw.bb2
    i8 2, label %sw.bb3
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = tail call signext i8 @rtw89_phy_read_txpwr_limit(ptr noundef %rtwdev, i8 noundef zeroext 0, i8 noundef zeroext %ntx, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext %1) #10
  %6 = ptrtoint ptr %lmt to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %call.i, ptr %lmt, align 1
  %call.1.i = tail call signext i8 @rtw89_phy_read_txpwr_limit(ptr noundef %rtwdev, i8 noundef zeroext 0, i8 noundef zeroext %ntx, i8 noundef zeroext 0, i8 noundef zeroext 1, i8 noundef zeroext %1) #10
  %arrayidx.1.i = getelementptr [2 x i8], ptr %lmt, i32 0, i32 1
  %7 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %call.1.i, ptr %arrayidx.1.i, align 1
  %call9.i = tail call signext i8 @rtw89_phy_read_txpwr_limit(ptr noundef %rtwdev, i8 noundef zeroext 1, i8 noundef zeroext %ntx, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext %1) #10
  %arrayidx11.i = getelementptr %struct.rtw89_txpwr_limit, ptr %lmt, i32 0, i32 1, i32 0
  %8 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %call9.i, ptr %arrayidx11.i, align 1
  %call9.1.i = tail call signext i8 @rtw89_phy_read_txpwr_limit(ptr noundef %rtwdev, i8 noundef zeroext 1, i8 noundef zeroext %ntx, i8 noundef zeroext 0, i8 noundef zeroext 1, i8 noundef zeroext %1) #10
  %arrayidx11.1.i = getelementptr %struct.rtw89_txpwr_limit, ptr %lmt, i32 0, i32 1, i32 1
  %9 = ptrtoint ptr %arrayidx11.1.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %call9.1.i, ptr %arrayidx11.1.i, align 1
  %call23.i = tail call signext i8 @rtw89_phy_read_txpwr_limit(ptr noundef %rtwdev, i8 noundef zeroext 0, i8 noundef zeroext %ntx, i8 noundef zeroext 1, i8 noundef zeroext 0, i8 noundef zeroext %1) #10
  %arrayidx25.i = getelementptr %struct.rtw89_txpwr_limit, ptr %lmt, i32 0, i32 2, i32 0
  %10 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %call23.i, ptr %arrayidx25.i, align 1
  %call23.1.i = tail call signext i8 @rtw89_phy_read_txpwr_limit(ptr noundef %rtwdev, i8 noundef zeroext 0, i8 noundef zeroext %ntx, i8 noundef zeroext 1, i8 noundef zeroext 1, i8 noundef zeroext %1) #10
  %arrayidx25.1.i = getelementptr %struct.rtw89_txpwr_limit, ptr %lmt, i32 0, i32 2, i32 1
  %11 = ptrtoint ptr %arrayidx25.1.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %call23.1.i, ptr %arrayidx25.1.i, align 1
  %mcs_20m.i = getelementptr inbounds %struct.rtw89_txpwr_limit, ptr %lmt, i32 0, i32 3
  %call37.i = tail call signext i8 @rtw89_phy_read_txpwr_limit(ptr noundef %rtwdev, i8 noundef zeroext 0, i8 noundef zeroext %ntx, i8 noundef zeroext 2, i8 noundef zeroext 0, i8 noundef zeroext %1) #10
  %12 = ptrtoint ptr %mcs_20m.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %call37.i, ptr %mcs_20m.i, align 1
  %call37.1.i = tail call signext i8 @rtw89_phy_read_txpwr_limit(ptr noundef %rtwdev, i8 noundef zeroext 0, i8 noundef zeroext %ntx, i8 noundef zeroext 2, i8 noundef zeroext 1, i8 noundef zeroext %1) #10
  %arrayidx40.1.i = getelementptr %struct.rtw89_txpwr_limit, ptr %lmt, i32 0, i32 3, i32 0, i32 1
  %13 = ptrtoint ptr %arrayidx40.1.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %call37.1.i, ptr %arrayidx40.1.i, align 1
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i = add i8 %1, -2
  %call.i15 = tail call signext i8 @rtw89_phy_read_txpwr_limit(ptr noundef %rtwdev, i8 noundef zeroext 0, i8 noundef zeroext %ntx, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext %sub.i) #10
  %14 = ptrtoint ptr %lmt to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %call.i15, ptr %lmt, align 1
  %call.1.i16 = tail call signext i8 @rtw89_phy_read_txpwr_limit(ptr noundef %rtwdev, i8 noundef zeroext 0, i8 noundef zeroext %ntx, i8 noundef zeroext 0, i8 noundef zeroext 1, i8 noundef zeroext %sub.i) #10
  %arrayidx.1.i17 = getelementptr [2 x i8], ptr %lmt, i32 0, i32 1
  %15 = ptrtoint ptr %arrayidx.1.i17 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %call.1.i16, ptr %arrayidx.1.i17, align 1
  %call11.i = tail call signext i8 @rtw89_phy_read_txpwr_limit(ptr noundef %rtwdev, i8 noundef zeroext 1, i8 noundef zeroext %ntx, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext %1) #10
  %arrayidx13.i = getelementptr %struct.rtw89_txpwr_limit, ptr %lmt, i32 0, i32 1, i32 0
  %16 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %call11.i, ptr %arrayidx13.i, align 1
  %call11.1.i = tail call signext i8 @rtw89_phy_read_txpwr_limit(ptr noundef %rtwdev, i8 noundef zeroext 1, i8 noundef zeroext %ntx, i8 noundef zeroext 0, i8 noundef zeroext 1, i8 noundef zeroext %1) #10
  %arrayidx13.1.i = getelementptr %struct.rtw89_txpwr_limit, ptr %lmt, i32 0, i32 1, i32 1
  %17 = ptrtoint ptr %arrayidx13.1.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %call11.1.i, ptr %arrayidx13.1.i, align 1
  %call28.i = tail call signext i8 @rtw89_phy_read_txpwr_limit(ptr noundef %rtwdev, i8 noundef zeroext 0, i8 noundef zeroext %ntx, i8 noundef zeroext 1, i8 noundef zeroext 0, i8 noundef zeroext %sub.i) #10
  %arrayidx30.i = getelementptr %struct.rtw89_txpwr_limit, ptr %lmt, i32 0, i32 2, i32 0
  %18 = ptrtoint ptr %arrayidx30.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %call28.i, ptr %arrayidx30.i, align 1
  %call28.1.i = tail call signext i8 @rtw89_phy_read_txpwr_limit(ptr noundef %rtwdev, i8 noundef zeroext 0, i8 noundef zeroext %ntx, i8 noundef zeroext 1, i8 noundef zeroext 1, i8 noundef zeroext %sub.i) #10
  %arrayidx30.1.i = getelementptr %struct.rtw89_txpwr_limit, ptr %lmt, i32 0, i32 2, i32 1
  %19 = ptrtoint ptr %arrayidx30.1.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %call28.1.i, ptr %arrayidx30.1.i, align 1
  %mcs_20m.i18 = getelementptr inbounds %struct.rtw89_txpwr_limit, ptr %lmt, i32 0, i32 3
  %call45.i = tail call signext i8 @rtw89_phy_read_txpwr_limit(ptr noundef %rtwdev, i8 noundef zeroext 0, i8 noundef zeroext %ntx, i8 noundef zeroext 2, i8 noundef zeroext 0, i8 noundef zeroext %sub.i) #10
  %20 = ptrtoint ptr %mcs_20m.i18 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %call45.i, ptr %mcs_20m.i18, align 1
  %call45.1.i = tail call signext i8 @rtw89_phy_read_txpwr_limit(ptr noundef %rtwdev, i8 noundef zeroext 0, i8 noundef zeroext %ntx, i8 noundef zeroext 2, i8 noundef zeroext 1, i8 noundef zeroext %sub.i) #10
  %arrayidx48.1.i = getelementptr %struct.rtw89_txpwr_limit, ptr %lmt, i32 0, i32 3, i32 0, i32 1
  %21 = ptrtoint ptr %arrayidx48.1.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %call45.1.i, ptr %arrayidx48.1.i, align 1
  %add.i = add i8 %1, 2
  %call62.i = tail call signext i8 @rtw89_phy_read_txpwr_limit(ptr noundef %rtwdev, i8 noundef zeroext 0, i8 noundef zeroext %ntx, i8 noundef zeroext 2, i8 noundef zeroext 0, i8 noundef zeroext %add.i) #10
  %arrayidx66.i = getelementptr %struct.rtw89_txpwr_limit, ptr %lmt, i32 0, i32 3, i32 1, i32 0
  %22 = ptrtoint ptr %arrayidx66.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %call62.i, ptr %arrayidx66.i, align 1
  %call62.1.i = tail call signext i8 @rtw89_phy_read_txpwr_limit(ptr noundef %rtwdev, i8 noundef zeroext 0, i8 noundef zeroext %ntx, i8 noundef zeroext 2, i8 noundef zeroext 1, i8 noundef zeroext %add.i) #10
  %arrayidx66.1.i = getelementptr %struct.rtw89_txpwr_limit, ptr %lmt, i32 0, i32 3, i32 1, i32 1
  %23 = ptrtoint ptr %arrayidx66.1.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %call62.1.i, ptr %arrayidx66.1.i, align 1
  %mcs_40m.i = getelementptr inbounds %struct.rtw89_txpwr_limit, ptr %lmt, i32 0, i32 4
  %call78.i = tail call signext i8 @rtw89_phy_read_txpwr_limit(ptr noundef %rtwdev, i8 noundef zeroext 1, i8 noundef zeroext %ntx, i8 noundef zeroext 2, i8 noundef zeroext 0, i8 noundef zeroext %1) #10
  %24 = ptrtoint ptr %mcs_40m.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %call78.i, ptr %mcs_40m.i, align 1
  %call78.1.i = tail call signext i8 @rtw89_phy_read_txpwr_limit(ptr noundef %rtwdev, i8 noundef zeroext 1, i8 noundef zeroext %ntx, i8 noundef zeroext 2, i8 noundef zeroext 1, i8 noundef zeroext %1) #10
  %arrayidx81.1.i = getelementptr %struct.rtw89_txpwr_limit, ptr %lmt, i32 0, i32 4, i32 0, i32 1
  %25 = ptrtoint ptr %arrayidx81.1.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %call78.1.i, ptr %arrayidx81.1.i, align 1
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i19 = add i8 %1, -6
  %call.i20 = tail call signext i8 @rtw89_phy_read_txpwr_limit(ptr noundef %rtwdev, i8 noundef zeroext 0, i8 noundef zeroext %ntx, i8 noundef zeroext 1, i8 noundef zeroext 0, i8 noundef zeroext %sub.i19) #10
  %arrayidx.i = getelementptr %struct.rtw89_txpwr_limit, ptr %lmt, i32 0, i32 2, i32 0
  %26 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %call.i20, ptr %arrayidx.i, align 1
  %call.1.i21 = tail call signext i8 @rtw89_phy_read_txpwr_limit(ptr noundef %rtwdev, i8 noundef zeroext 0, i8 noundef zeroext %ntx, i8 noundef zeroext 1, i8 noundef zeroext 1, i8 noundef zeroext %sub.i19) #10
  %arrayidx.1.i22 = getelementptr %struct.rtw89_txpwr_limit, ptr %lmt, i32 0, i32 2, i32 1
  %27 = ptrtoint ptr %arrayidx.1.i22 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %call.1.i21, ptr %arrayidx.1.i22, align 1
  %mcs_20m.i23 = getelementptr inbounds %struct.rtw89_txpwr_limit, ptr %lmt, i32 0, i32 3
  %call14.i = tail call signext i8 @rtw89_phy_read_txpwr_limit(ptr noundef %rtwdev, i8 noundef zeroext 0, i8 noundef zeroext %ntx, i8 noundef zeroext 2, i8 noundef zeroext 0, i8 noundef zeroext %sub.i19) #10
  %28 = ptrtoint ptr %mcs_20m.i23 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %call14.i, ptr %mcs_20m.i23, align 1
  %call14.1.i = tail call signext i8 @rtw89_phy_read_txpwr_limit(ptr noundef %rtwdev, i8 noundef zeroext 0, i8 noundef zeroext %ntx, i8 noundef zeroext 2, i8 noundef zeroext 1, i8 noundef zeroext %sub.i19) #10
  %arrayidx17.1.i = getelementptr %struct.rtw89_txpwr_limit, ptr %lmt, i32 0, i32 3, i32 0, i32 1
  %29 = ptrtoint ptr %arrayidx17.1.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %call14.1.i, ptr %arrayidx17.1.i, align 1
  %sub31.i = add i8 %1, -2
  %call33.i = tail call signext i8 @rtw89_phy_read_txpwr_limit(ptr noundef %rtwdev, i8 noundef zeroext 0, i8 noundef zeroext %ntx, i8 noundef zeroext 2, i8 noundef zeroext 0, i8 noundef zeroext %sub31.i) #10
  %arrayidx37.i = getelementptr %struct.rtw89_txpwr_limit, ptr %lmt, i32 0, i32 3, i32 1, i32 0
  %30 = ptrtoint ptr %arrayidx37.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %call33.i, ptr %arrayidx37.i, align 1
  %call33.1.i = tail call signext i8 @rtw89_phy_read_txpwr_limit(ptr noundef %rtwdev, i8 noundef zeroext 0, i8 noundef zeroext %ntx, i8 noundef zeroext 2, i8 noundef zeroext 1, i8 noundef zeroext %sub31.i) #10
  %arrayidx37.1.i = getelementptr %struct.rtw89_txpwr_limit, ptr %lmt, i32 0, i32 3, i32 1, i32 1
  %31 = ptrtoint ptr %arrayidx37.1.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %call33.1.i, ptr %arrayidx37.1.i, align 1
  %add.i24 = add i8 %1, 2
  %call52.i = tail call signext i8 @rtw89_phy_read_txpwr_limit(ptr noundef %rtwdev, i8 noundef zeroext 0, i8 noundef zeroext %ntx, i8 noundef zeroext 2, i8 noundef zeroext 0, i8 noundef zeroext %add.i24) #10
  %arrayidx56.i = getelementptr %struct.rtw89_txpwr_limit, ptr %lmt, i32 0, i32 3, i32 2, i32 0
  %32 = ptrtoint ptr %arrayidx56.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %call52.i, ptr %arrayidx56.i, align 1
  %call52.1.i = tail call signext i8 @rtw89_phy_read_txpwr_limit(ptr noundef %rtwdev, i8 noundef zeroext 0, i8 noundef zeroext %ntx, i8 noundef zeroext 2, i8 noundef zeroext 1, i8 noundef zeroext %add.i24) #10
  %arrayidx56.1.i = getelementptr %struct.rtw89_txpwr_limit, ptr %lmt, i32 0, i32 3, i32 2, i32 1
  %33 = ptrtoint ptr %arrayidx56.1.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %call52.1.i, ptr %arrayidx56.1.i, align 1
  %add70.i = add i8 %1, 6
  %call72.i = tail call signext i8 @rtw89_phy_read_txpwr_limit(ptr noundef %rtwdev, i8 noundef zeroext 0, i8 noundef zeroext %ntx, i8 noundef zeroext 2, i8 noundef zeroext 0, i8 noundef zeroext %add70.i) #10
  %arrayidx76.i = getelementptr %struct.rtw89_txpwr_limit, ptr %lmt, i32 0, i32 3, i32 3, i32 0
  %34 = ptrtoint ptr %arrayidx76.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %call72.i, ptr %arrayidx76.i, align 1
  %call72.1.i = tail call signext i8 @rtw89_phy_read_txpwr_limit(ptr noundef %rtwdev, i8 noundef zeroext 0, i8 noundef zeroext %ntx, i8 noundef zeroext 2, i8 noundef zeroext 1, i8 noundef zeroext %add70.i) #10
  %arrayidx76.1.i = getelementptr %struct.rtw89_txpwr_limit, ptr %lmt, i32 0, i32 3, i32 3, i32 1
  %35 = ptrtoint ptr %arrayidx76.1.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %call72.1.i, ptr %arrayidx76.1.i, align 1
  %sub90.i = add i8 %1, -4
  %mcs_40m.i25 = getelementptr inbounds %struct.rtw89_txpwr_limit, ptr %lmt, i32 0, i32 4
  %call92.i = tail call signext i8 @rtw89_phy_read_txpwr_limit(ptr noundef %rtwdev, i8 noundef zeroext 1, i8 noundef zeroext %ntx, i8 noundef zeroext 2, i8 noundef zeroext 0, i8 noundef zeroext %sub90.i) #10
  %36 = ptrtoint ptr %mcs_40m.i25 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %call92.i, ptr %mcs_40m.i25, align 1
  %call92.1.i = tail call signext i8 @rtw89_phy_read_txpwr_limit(ptr noundef %rtwdev, i8 noundef zeroext 1, i8 noundef zeroext %ntx, i8 noundef zeroext 2, i8 noundef zeroext 1, i8 noundef zeroext %sub90.i) #10
  %arrayidx95.1.i = getelementptr %struct.rtw89_txpwr_limit, ptr %lmt, i32 0, i32 4, i32 0, i32 1
  %37 = ptrtoint ptr %arrayidx95.1.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %call92.1.i, ptr %arrayidx95.1.i, align 1
  %add109.i = add i8 %1, 4
  %call111.i = tail call signext i8 @rtw89_phy_read_txpwr_limit(ptr noundef %rtwdev, i8 noundef zeroext 1, i8 noundef zeroext %ntx, i8 noundef zeroext 2, i8 noundef zeroext 0, i8 noundef zeroext %add109.i) #10
  %arrayidx115.i = getelementptr %struct.rtw89_txpwr_limit, ptr %lmt, i32 0, i32 4, i32 1, i32 0
  %38 = ptrtoint ptr %arrayidx115.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %call111.i, ptr %arrayidx115.i, align 1
  %call111.1.i = tail call signext i8 @rtw89_phy_read_txpwr_limit(ptr noundef %rtwdev, i8 noundef zeroext 1, i8 noundef zeroext %ntx, i8 noundef zeroext 2, i8 noundef zeroext 1, i8 noundef zeroext %add109.i) #10
  %arrayidx115.1.i = getelementptr %struct.rtw89_txpwr_limit, ptr %lmt, i32 0, i32 4, i32 1, i32 1
  %39 = ptrtoint ptr %arrayidx115.1.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %call111.1.i, ptr %arrayidx115.1.i, align 1
  %mcs_80m.i = getelementptr inbounds %struct.rtw89_txpwr_limit, ptr %lmt, i32 0, i32 5
  %call128.i = tail call signext i8 @rtw89_phy_read_txpwr_limit(ptr noundef %rtwdev, i8 noundef zeroext 2, i8 noundef zeroext %ntx, i8 noundef zeroext 2, i8 noundef zeroext 0, i8 noundef zeroext %1) #10
  %40 = ptrtoint ptr %mcs_80m.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %call128.i, ptr %mcs_80m.i, align 1
  %call128.1.i = tail call signext i8 @rtw89_phy_read_txpwr_limit(ptr noundef %rtwdev, i8 noundef zeroext 2, i8 noundef zeroext %ntx, i8 noundef zeroext 2, i8 noundef zeroext 1, i8 noundef zeroext %1) #10
  %arrayidx131.1.i = getelementptr %struct.rtw89_txpwr_limit, ptr %lmt, i32 0, i32 5, i32 0, i32 1
  %41 = ptrtoint ptr %arrayidx131.1.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %call128.1.i, ptr %arrayidx131.1.i, align 1
  %call147.i = tail call signext i8 @rtw89_phy_read_txpwr_limit(ptr noundef %rtwdev, i8 noundef zeroext 1, i8 noundef zeroext %ntx, i8 noundef zeroext 2, i8 noundef zeroext 0, i8 noundef zeroext %sub90.i) #10
  %call147.1.i = tail call signext i8 @rtw89_phy_read_txpwr_limit(ptr noundef %rtwdev, i8 noundef zeroext 1, i8 noundef zeroext %ntx, i8 noundef zeroext 2, i8 noundef zeroext 1, i8 noundef zeroext %sub90.i) #10
  %call165.i = tail call signext i8 @rtw89_phy_read_txpwr_limit(ptr noundef %rtwdev, i8 noundef zeroext 1, i8 noundef zeroext %ntx, i8 noundef zeroext 2, i8 noundef zeroext 0, i8 noundef zeroext %add109.i) #10
  %call165.1.i = tail call signext i8 @rtw89_phy_read_txpwr_limit(ptr noundef %rtwdev, i8 noundef zeroext 1, i8 noundef zeroext %ntx, i8 noundef zeroext 2, i8 noundef zeroext 1, i8 noundef zeroext %add109.i) #10
  %42 = tail call i8 @llvm.smin.i8(i8 %call147.i, i8 %call165.i) #10
  %arrayidx190.i = getelementptr %struct.rtw89_txpwr_limit, ptr %lmt, i32 0, i32 7, i32 0
  %43 = ptrtoint ptr %arrayidx190.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %42, ptr %arrayidx190.i, align 1
  %44 = tail call i8 @llvm.smin.i8(i8 %call147.1.i, i8 %call165.1.i) #10
  %arrayidx190.1.i = getelementptr %struct.rtw89_txpwr_limit, ptr %lmt, i32 0, i32 7, i32 1
  %45 = ptrtoint ptr %arrayidx190.1.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %44, ptr %arrayidx190.1.i, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb3, %sw.bb2, %sw.bb, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw89_phy_fill_txpwr_limit_ru(ptr noundef %rtwdev, ptr noundef writeonly %lmt_ru, i8 noundef zeroext %ntx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %current_channel = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 4, i32 2
  %0 = ptrtoint ptr %current_channel to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %current_channel, align 1
  %current_band_width = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 4, i32 6
  %2 = ptrtoint ptr %current_band_width to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %current_band_width, align 4
  %4 = call ptr @memset(ptr %lmt_ru, i32 0, i32 24)
  %5 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.140)
  switch i8 %3, label %entry.sw.epilog_crit_edge [
    i8 0, label %sw.bb
    i8 1, label %sw.bb2
    i8 2, label %sw.bb3
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = tail call fastcc signext i8 @rtw89_phy_read_txpwr_limit_ru(ptr noundef %rtwdev, i8 noundef zeroext 0, i8 noundef zeroext %ntx, i8 noundef zeroext %1) #10
  %6 = ptrtoint ptr %lmt_ru to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %call.i, ptr %lmt_ru, align 1
  %call1.i = tail call fastcc signext i8 @rtw89_phy_read_txpwr_limit_ru(ptr noundef %rtwdev, i8 noundef zeroext 1, i8 noundef zeroext %ntx, i8 noundef zeroext %1) #10
  %ru52.i = getelementptr inbounds %struct.rtw89_txpwr_limit_ru, ptr %lmt_ru, i32 0, i32 1
  %7 = ptrtoint ptr %ru52.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %call1.i, ptr %ru52.i, align 1
  %call3.i = tail call fastcc signext i8 @rtw89_phy_read_txpwr_limit_ru(ptr noundef %rtwdev, i8 noundef zeroext 2, i8 noundef zeroext %ntx, i8 noundef zeroext %1) #10
  %ru106.i = getelementptr inbounds %struct.rtw89_txpwr_limit_ru, ptr %lmt_ru, i32 0, i32 2
  %8 = ptrtoint ptr %ru106.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %call3.i, ptr %ru106.i, align 1
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i = add i8 %1, -2
  %call.i15 = tail call fastcc signext i8 @rtw89_phy_read_txpwr_limit_ru(ptr noundef %rtwdev, i8 noundef zeroext 0, i8 noundef zeroext %ntx, i8 noundef zeroext %sub.i) #10
  %9 = ptrtoint ptr %lmt_ru to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %call.i15, ptr %lmt_ru, align 1
  %add.i = add i8 %1, 2
  %call4.i = tail call fastcc signext i8 @rtw89_phy_read_txpwr_limit_ru(ptr noundef %rtwdev, i8 noundef zeroext 0, i8 noundef zeroext %ntx, i8 noundef zeroext %add.i) #10
  %arrayidx6.i = getelementptr [8 x i8], ptr %lmt_ru, i32 0, i32 1
  %10 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %call4.i, ptr %arrayidx6.i, align 1
  %call10.i = tail call fastcc signext i8 @rtw89_phy_read_txpwr_limit_ru(ptr noundef %rtwdev, i8 noundef zeroext 1, i8 noundef zeroext %ntx, i8 noundef zeroext %sub.i) #10
  %ru52.i16 = getelementptr inbounds %struct.rtw89_txpwr_limit_ru, ptr %lmt_ru, i32 0, i32 1
  %11 = ptrtoint ptr %ru52.i16 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %call10.i, ptr %ru52.i16, align 1
  %call15.i = tail call fastcc signext i8 @rtw89_phy_read_txpwr_limit_ru(ptr noundef %rtwdev, i8 noundef zeroext 1, i8 noundef zeroext %ntx, i8 noundef zeroext %add.i) #10
  %arrayidx17.i = getelementptr %struct.rtw89_txpwr_limit_ru, ptr %lmt_ru, i32 0, i32 1, i32 1
  %12 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %call15.i, ptr %arrayidx17.i, align 1
  %call21.i = tail call fastcc signext i8 @rtw89_phy_read_txpwr_limit_ru(ptr noundef %rtwdev, i8 noundef zeroext 2, i8 noundef zeroext %ntx, i8 noundef zeroext %sub.i) #10
  %ru106.i17 = getelementptr inbounds %struct.rtw89_txpwr_limit_ru, ptr %lmt_ru, i32 0, i32 2
  %13 = ptrtoint ptr %ru106.i17 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %call21.i, ptr %ru106.i17, align 1
  %call26.i = tail call fastcc signext i8 @rtw89_phy_read_txpwr_limit_ru(ptr noundef %rtwdev, i8 noundef zeroext 2, i8 noundef zeroext %ntx, i8 noundef zeroext %add.i) #10
  %arrayidx28.i = getelementptr %struct.rtw89_txpwr_limit_ru, ptr %lmt_ru, i32 0, i32 2, i32 1
  %14 = ptrtoint ptr %arrayidx28.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %call26.i, ptr %arrayidx28.i, align 1
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i18 = add i8 %1, -6
  %call.i19 = tail call fastcc signext i8 @rtw89_phy_read_txpwr_limit_ru(ptr noundef %rtwdev, i8 noundef zeroext 0, i8 noundef zeroext %ntx, i8 noundef zeroext %sub.i18) #10
  %15 = ptrtoint ptr %lmt_ru to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %call.i19, ptr %lmt_ru, align 1
  %sub3.i = add i8 %1, -2
  %call5.i = tail call fastcc signext i8 @rtw89_phy_read_txpwr_limit_ru(ptr noundef %rtwdev, i8 noundef zeroext 0, i8 noundef zeroext %ntx, i8 noundef zeroext %sub3.i) #10
  %arrayidx7.i = getelementptr [8 x i8], ptr %lmt_ru, i32 0, i32 1
  %16 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %call5.i, ptr %arrayidx7.i, align 1
  %add.i20 = add i8 %1, 2
  %call10.i21 = tail call fastcc signext i8 @rtw89_phy_read_txpwr_limit_ru(ptr noundef %rtwdev, i8 noundef zeroext 0, i8 noundef zeroext %ntx, i8 noundef zeroext %add.i20) #10
  %arrayidx12.i = getelementptr [8 x i8], ptr %lmt_ru, i32 0, i32 2
  %17 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %call10.i21, ptr %arrayidx12.i, align 1
  %add14.i = add i8 %1, 6
  %call16.i = tail call fastcc signext i8 @rtw89_phy_read_txpwr_limit_ru(ptr noundef %rtwdev, i8 noundef zeroext 0, i8 noundef zeroext %ntx, i8 noundef zeroext %add14.i) #10
  %arrayidx18.i = getelementptr [8 x i8], ptr %lmt_ru, i32 0, i32 3
  %18 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %call16.i, ptr %arrayidx18.i, align 1
  %call22.i = tail call fastcc signext i8 @rtw89_phy_read_txpwr_limit_ru(ptr noundef %rtwdev, i8 noundef zeroext 1, i8 noundef zeroext %ntx, i8 noundef zeroext %sub.i18) #10
  %ru52.i22 = getelementptr inbounds %struct.rtw89_txpwr_limit_ru, ptr %lmt_ru, i32 0, i32 1
  %19 = ptrtoint ptr %ru52.i22 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %call22.i, ptr %ru52.i22, align 1
  %call27.i = tail call fastcc signext i8 @rtw89_phy_read_txpwr_limit_ru(ptr noundef %rtwdev, i8 noundef zeroext 1, i8 noundef zeroext %ntx, i8 noundef zeroext %sub3.i) #10
  %arrayidx29.i = getelementptr %struct.rtw89_txpwr_limit_ru, ptr %lmt_ru, i32 0, i32 1, i32 1
  %20 = ptrtoint ptr %arrayidx29.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %call27.i, ptr %arrayidx29.i, align 1
  %call33.i = tail call fastcc signext i8 @rtw89_phy_read_txpwr_limit_ru(ptr noundef %rtwdev, i8 noundef zeroext 1, i8 noundef zeroext %ntx, i8 noundef zeroext %add.i20) #10
  %arrayidx35.i = getelementptr %struct.rtw89_txpwr_limit_ru, ptr %lmt_ru, i32 0, i32 1, i32 2
  %21 = ptrtoint ptr %arrayidx35.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %call33.i, ptr %arrayidx35.i, align 1
  %call39.i = tail call fastcc signext i8 @rtw89_phy_read_txpwr_limit_ru(ptr noundef %rtwdev, i8 noundef zeroext 1, i8 noundef zeroext %ntx, i8 noundef zeroext %add14.i) #10
  %arrayidx41.i = getelementptr %struct.rtw89_txpwr_limit_ru, ptr %lmt_ru, i32 0, i32 1, i32 3
  %22 = ptrtoint ptr %arrayidx41.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %call39.i, ptr %arrayidx41.i, align 1
  %call45.i = tail call fastcc signext i8 @rtw89_phy_read_txpwr_limit_ru(ptr noundef %rtwdev, i8 noundef zeroext 2, i8 noundef zeroext %ntx, i8 noundef zeroext %sub.i18) #10
  %ru106.i23 = getelementptr inbounds %struct.rtw89_txpwr_limit_ru, ptr %lmt_ru, i32 0, i32 2
  %23 = ptrtoint ptr %ru106.i23 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %call45.i, ptr %ru106.i23, align 1
  %call50.i = tail call fastcc signext i8 @rtw89_phy_read_txpwr_limit_ru(ptr noundef %rtwdev, i8 noundef zeroext 2, i8 noundef zeroext %ntx, i8 noundef zeroext %sub3.i) #10
  %arrayidx52.i = getelementptr %struct.rtw89_txpwr_limit_ru, ptr %lmt_ru, i32 0, i32 2, i32 1
  %24 = ptrtoint ptr %arrayidx52.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %call50.i, ptr %arrayidx52.i, align 1
  %call56.i = tail call fastcc signext i8 @rtw89_phy_read_txpwr_limit_ru(ptr noundef %rtwdev, i8 noundef zeroext 2, i8 noundef zeroext %ntx, i8 noundef zeroext %add.i20) #10
  %arrayidx58.i = getelementptr %struct.rtw89_txpwr_limit_ru, ptr %lmt_ru, i32 0, i32 2, i32 2
  %25 = ptrtoint ptr %arrayidx58.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %call56.i, ptr %arrayidx58.i, align 1
  %call62.i = tail call fastcc signext i8 @rtw89_phy_read_txpwr_limit_ru(ptr noundef %rtwdev, i8 noundef zeroext 2, i8 noundef zeroext %ntx, i8 noundef zeroext %add14.i) #10
  %arrayidx64.i = getelementptr %struct.rtw89_txpwr_limit_ru, ptr %lmt_ru, i32 0, i32 2, i32 3
  %26 = ptrtoint ptr %arrayidx64.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %call62.i, ptr %arrayidx64.i, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb3, %sw.bb2, %sw.bb, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw89_phy_c2h_handle(ptr noundef %rtwdev, ptr noundef %skb, i32 noundef %len, i8 noundef zeroext %class, i8 noundef zeroext %func) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %class)
  %cond = icmp eq i8 %class, 1
  br i1 %cond, label %sw.bb, label %do.end

sw.bb:                                            ; preds = %entry
  %conv1 = zext i8 %func to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %func)
  %.not = icmp eq i8 %func, 0
  br i1 %.not, label %if.end11, label %do.end7

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %conv = zext i8 %class to i32
  %dev = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1, ptr noundef nonnull @.str.17, i32 noundef %conv) #13
  br label %cleanup

do.end7:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  %dev8 = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 1
  %2 = ptrtoint ptr %dev8 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev8, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %3, ptr noundef nonnull @.str.21, i32 noundef 1, i32 noundef %conv1) #13
  br label %cleanup

if.end11:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx = getelementptr [3 x ptr], ptr @rtw89_phy_c2h_ra_handler, i32 0, i32 %conv1
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  tail call void %5(ptr noundef %rtwdev, ptr noundef %skb, i32 noundef %len) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %do.end7, %do.end
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw89_phy_cfo_track_work(ptr noundef %work) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %mutex = getelementptr i8, ptr %work, i32 -6788
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #10
  %cfo_trig_by_timer_en = getelementptr i8, ptr %work, i32 -1702
  %0 = ptrtoint ptr %cfo_trig_by_timer_en to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %cfo_trig_by_timer_en, align 2, !range !291
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr = getelementptr i8, ptr %work, i32 -7180
  tail call void @rtw89_leave_ps_mode(ptr noundef %add.ptr) #10
  tail call fastcc void @rtw89_phy_cfo_dm(ptr noundef %add.ptr)
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 128
  %cfo_tracking = getelementptr i8, ptr %work, i32 -1704
  %4 = ptrtoint ptr %cfo_tracking to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %cfo_tracking, align 4
  %conv = zext i16 %5 to i32
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %conv) #10
  tail call void @ieee80211_queue_delayed_work(ptr noundef %3, ptr noundef %work, i32 noundef %call2.i) #10
  br label %out

out:                                              ; preds = %if.end, %entry.out_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw89_leave_ps_mode(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rtw89_phy_cfo_dm(ptr noundef %rtwdev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %crystal_cap = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 37, i32 7
  %0 = ptrtoint ptr %crystal_cap to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %crystal_cap, align 1
  %total_sta_assoc = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 47
  %2 = ptrtoint ptr %total_sta_assoc to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %total_sta_assoc, align 4
  %conv = zext i8 %3 to i32
  tail call void (ptr, i32, ptr, ...) @__rtw89_debug(ptr noundef %rtwdev, i32 noundef 8, ptr noundef nonnull @.str.46, i32 noundef %conv) #10
  %4 = ptrtoint ptr %total_sta_assoc to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %total_sta_assoc, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp = icmp eq i8 %5, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %crystal_cap_default.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 37, i32 8
  %6 = ptrtoint ptr %crystal_cap_default.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %crystal_cap_default.i, align 2
  %8 = and i8 %7, 127
  %def_x_cap.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 37, i32 9
  %9 = ptrtoint ptr %def_x_cap.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %8, ptr %def_x_cap.i, align 1
  %is_adjust.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 37, i32 4
  %10 = ptrtoint ptr %is_adjust.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %is_adjust.i, align 1
  %11 = ptrtoint ptr %crystal_cap to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %crystal_cap, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %12, i8 %8)
  %cmp.i = icmp eq i8 %12, %8
  br i1 %cmp.i, label %if.then.cleanup_crit_edge, label %if.end.i

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_cmp1(i8 %12, i8 %8)
  %cmp10.i = icmp ugt i8 %12, %8
  %cond.i = select i1 %cmp10.i, i8 -1, i8 1
  %add.i = add i8 %cond.i, %12
  tail call fastcc void @rtw89_phy_cfo_set_crystal_cap(ptr noundef %rtwdev, i8 noundef zeroext %add.i, i1 noundef zeroext false) #10
  %13 = ptrtoint ptr %crystal_cap to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %crystal_cap, align 1
  %conv15.i = zext i8 %14 to i32
  %15 = ptrtoint ptr %def_x_cap.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %def_x_cap.i, align 1
  %conv17.i = zext i8 %16 to i32
  tail call void (ptr, i32, ptr, ...) @__rtw89_debug(ptr noundef %rtwdev, i32 noundef 8, ptr noundef nonnull @.str.52, i32 noundef %conv15.i, i32 noundef %conv17.i) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %packet_count = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 37, i32 17
  %17 = ptrtoint ptr %packet_count to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %packet_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp4 = icmp eq i32 %18, 0
  br i1 %cmp4, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, ptr, ...) @__rtw89_debug(ptr noundef %rtwdev, i32 noundef 8, ptr noundef nonnull @.str.47) #10
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %packet_count_pre = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 37, i32 18
  %19 = ptrtoint ptr %packet_count_pre to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %packet_count_pre, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %20)
  %cmp9 = icmp eq i32 %18, %20
  br i1 %cmp9, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, ptr, ...) @__rtw89_debug(ptr noundef %rtwdev, i32 noundef 8, ptr noundef nonnull @.str.48) #10
  br label %cleanup

if.end12:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %5)
  %cmp15 = icmp eq i8 %5, 1
  br i1 %cmp15, label %if.end.i77, label %if.else

if.end.i77:                                       ; preds = %if.end12
  tail call void (ptr, i32, ptr, ...) @__rtw89_debug(ptr noundef %rtwdev, i32 noundef 8, ptr noundef nonnull @.str.57) #10
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end.i77
  %indvars.iv.i = phi i32 [ 0, %if.end.i77 ], [ %indvars.iv.next.i, %for.inc.i.for.body.i_crit_edge ]
  %cfo_all_avg.049.i = phi i32 [ 0, %if.end.i77 ], [ %cfo_all_avg.1.i, %for.inc.i.for.body.i_crit_edge ]
  %cfo_cnt_all.048.i = phi i32 [ 0, %if.end.i77 ], [ %cfo_cnt_all.1.i, %for.inc.i.for.body.i_crit_edge ]
  %cfo_khz_all.047.i = phi i32 [ 0, %if.end.i77 ], [ %cfo_khz_all.1.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 37, i32 13, i32 %indvars.iv.i
  %21 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %arrayidx.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %22)
  %cmp6.i = icmp eq i16 %22, 0
  br i1 %cmp6.i, label %for.body.i.for.inc.i_crit_edge, label %if.end9.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.end9.i:                                        ; preds = %for.body.i
  %conv5.i = zext i16 %22 to i32
  %arrayidx11.i = getelementptr %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 37, i32 12, i32 %indvars.iv.i
  %23 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx11.i, align 4
  %add.i78 = add i32 %24, %cfo_khz_all.047.i
  %add16.i = add i32 %cfo_cnt_all.048.i, %conv5.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add16.i)
  %tobool.not.i = icmp eq i32 %add16.i, 0
  br i1 %tobool.not.i, label %if.end9.i.cond.end.i_crit_edge, label %cond.true.i

if.end9.i.cond.end.i_crit_edge:                   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end.i

cond.true.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #12
  %div.i = sdiv i32 %add.i78, %add16.i
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i, %if.end9.i.cond.end.i_crit_edge
  %cond.i79 = phi i32 [ %div.i, %cond.true.i ], [ 0, %if.end9.i.cond.end.i_crit_edge ]
  %arrayidx18.i = getelementptr %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 37, i32 15, i32 %indvars.iv.i
  %25 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx18.i, align 4
  %arrayidx20.i = getelementptr %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 37, i32 16, i32 %indvars.iv.i
  %27 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %arrayidx20.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %cond.end.i, %for.body.i.for.inc.i_crit_edge
  %cfo_khz_all.1.i = phi i32 [ %cfo_khz_all.047.i, %for.body.i.for.inc.i_crit_edge ], [ %add.i78, %cond.end.i ]
  %cfo_cnt_all.1.i = phi i32 [ %cfo_cnt_all.048.i, %for.body.i.for.inc.i_crit_edge ], [ %add16.i, %cond.end.i ]
  %cfo_all_avg.1.i = phi i32 [ %cfo_all_avg.049.i, %for.body.i.for.inc.i_crit_edge ], [ %cond.i79, %cond.end.i ]
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i32 %indvars.iv.next.i, 64
  br i1 %exitcond.not.i, label %rtw89_phy_average_cfo_calc.exit, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

rtw89_phy_average_cfo_calc.exit:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, ptr, ...) @__rtw89_debug(ptr noundef %rtwdev, i32 noundef 8, ptr noundef nonnull @.str.58, i32 noundef 64) #10
  tail call void (ptr, i32, ptr, ...) @__rtw89_debug(ptr noundef %rtwdev, i32 noundef 8, ptr noundef nonnull @.str.59, i32 noundef %cfo_khz_all.1.i, i32 noundef %cfo_cnt_all.1.i, i32 noundef %cfo_all_avg.1.i) #10
  br label %if.end19

if.else:                                          ; preds = %if.end12
  tail call void (ptr, i32, ptr, ...) @__rtw89_debug(ptr noundef %rtwdev, i32 noundef 8, ptr noundef nonnull @.str.60) #10
  %rtw89_multi_cfo_mode.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 37, i32 5
  %28 = ptrtoint ptr %rtw89_multi_cfo_mode.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %rtw89_multi_cfo_mode.i, align 4
  %30 = zext i32 %29 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.141)
  switch i32 %29, label %if.else.rtw89_phy_multi_sta_cfo_calc.exit_crit_edge [
    i32 0, label %if.then.i
    i32 1, label %if.then22.i
    i32 2, label %if.then79.i
  ]

if.else.rtw89_phy_multi_sta_cfo_calc.exit_crit_edge: ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %rtw89_phy_multi_sta_cfo_calc.exit

if.then.i:                                        ; preds = %if.else
  tail call void (ptr, i32, ptr, ...) @__rtw89_debug(ptr noundef %rtwdev, i32 noundef 8, ptr noundef nonnull @.str.61) #10
  br label %for.body.i81

for.body.i81:                                     ; preds = %for.inc.i92.for.body.i81_crit_edge, %if.then.i
  %indvars.iv361.i = phi i32 [ 0, %if.then.i ], [ %indvars.iv.next362.i, %for.inc.i92.for.body.i81_crit_edge ]
  %target_cfo.0350.i = phi i32 [ 0, %if.then.i ], [ %target_cfo.1.i, %for.inc.i92.for.body.i81_crit_edge ]
  %cfo_khz_all.0349.i = phi i32 [ 0, %if.then.i ], [ %cfo_khz_all.1.i91, %for.inc.i92.for.body.i81_crit_edge ]
  %cfo_cnt_all.0348.i = phi i16 [ 0, %if.then.i ], [ %cfo_cnt_all.1.i90, %for.inc.i92.for.body.i81_crit_edge ]
  %arrayidx.i80 = getelementptr %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 37, i32 13, i32 %indvars.iv361.i
  %31 = ptrtoint ptr %arrayidx.i80 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %arrayidx.i80, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %32)
  %cmp5.i = icmp eq i16 %32, 0
  br i1 %cmp5.i, label %for.body.i81.for.inc.i92_crit_edge, label %if.end.i85

for.body.i81.for.inc.i92_crit_edge:               ; preds = %for.body.i81
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i92

if.end.i85:                                       ; preds = %for.body.i81
  %arrayidx9.i = getelementptr %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 37, i32 12, i32 %indvars.iv361.i
  %33 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx9.i, align 4
  %add.i82 = add i32 %34, %cfo_khz_all.0349.i
  %add15.i = add i16 %32, %cfo_cnt_all.0348.i
  %conv17.i83 = zext i16 %add15.i to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %add15.i)
  %tobool.not.i84 = icmp eq i16 %add15.i, 0
  br i1 %tobool.not.i84, label %if.end.i85.cond.end.i89_crit_edge, label %cond.true.i87

if.end.i85.cond.end.i89_crit_edge:                ; preds = %if.end.i85
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end.i89

cond.true.i87:                                    ; preds = %if.end.i85
  call void @__sanitizer_cov_trace_pc() #12
  %div.i86 = sdiv i32 %add.i82, %conv17.i83
  br label %cond.end.i89

cond.end.i89:                                     ; preds = %cond.true.i87, %if.end.i85.cond.end.i89_crit_edge
  %cond.i88 = phi i32 [ %div.i86, %cond.true.i87 ], [ 0, %if.end.i85.cond.end.i89_crit_edge ]
  tail call void (ptr, i32, ptr, ...) @__rtw89_debug(ptr noundef %rtwdev, i32 noundef 8, ptr noundef nonnull @.str.62, i32 noundef %add.i82, i32 noundef %conv17.i83, i32 noundef %cond.i88) #10
  br label %for.inc.i92

for.inc.i92:                                      ; preds = %cond.end.i89, %for.body.i81.for.inc.i92_crit_edge
  %cfo_cnt_all.1.i90 = phi i16 [ %cfo_cnt_all.0348.i, %for.body.i81.for.inc.i92_crit_edge ], [ %add15.i, %cond.end.i89 ]
  %cfo_khz_all.1.i91 = phi i32 [ %cfo_khz_all.0349.i, %for.body.i81.for.inc.i92_crit_edge ], [ %add.i82, %cond.end.i89 ]
  %target_cfo.1.i = phi i32 [ %target_cfo.0350.i, %for.body.i81.for.inc.i92_crit_edge ], [ %cond.i88, %cond.end.i89 ]
  %indvars.iv.next362.i = add nuw nsw i32 %indvars.iv361.i, 1
  %exitcond363.not.i = icmp eq i32 %indvars.iv.next362.i, 64
  br i1 %exitcond363.not.i, label %for.inc.i92.rtw89_phy_multi_sta_cfo_calc.exit_crit_edge, label %for.inc.i92.for.body.i81_crit_edge

for.inc.i92.for.body.i81_crit_edge:               ; preds = %for.inc.i92
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i81

for.inc.i92.rtw89_phy_multi_sta_cfo_calc.exit_crit_edge: ; preds = %for.inc.i92
  call void @__sanitizer_cov_trace_pc() #12
  br label %rtw89_phy_multi_sta_cfo_calc.exit

if.then22.i:                                      ; preds = %if.else
  tail call void (ptr, i32, ptr, ...) @__rtw89_debug(ptr noundef %rtwdev, i32 noundef 8, ptr noundef nonnull @.str.63) #10
  br label %for.body27.i

for.body27.i:                                     ; preds = %for.inc62.i.for.body27.i_crit_edge, %if.then22.i
  %indvars.iv358.i = phi i32 [ 0, %if.then22.i ], [ %indvars.iv.next359.i, %for.inc62.i.for.body27.i_crit_edge ]
  %cfo_khz_all.2345.i = phi i32 [ 0, %if.then22.i ], [ %cfo_khz_all.3.i, %for.inc62.i.for.body27.i_crit_edge ]
  %arrayidx30.i = getelementptr %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 37, i32 13, i32 %indvars.iv358.i
  %35 = ptrtoint ptr %arrayidx30.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %arrayidx30.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %36)
  %cmp32.i = icmp eq i16 %36, 0
  br i1 %cmp32.i, label %for.body27.i.for.inc62.i_crit_edge, label %cond.end49.i

for.body27.i.for.inc62.i_crit_edge:               ; preds = %for.body27.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc62.i

cond.end49.i:                                     ; preds = %for.body27.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv31.i = zext i16 %36 to i32
  %arrayidx46.i = getelementptr %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 37, i32 12, i32 %indvars.iv358.i
  %37 = ptrtoint ptr %arrayidx46.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx46.i, align 4
  %div47.i = sdiv i32 %38, %conv31.i
  %arrayidx53.i = getelementptr %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 37, i32 15, i32 %indvars.iv358.i
  %39 = ptrtoint ptr %arrayidx53.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %div47.i, ptr %arrayidx53.i, align 4
  %add57.i = add i32 %div47.i, %cfo_khz_all.2345.i
  tail call void (ptr, i32, ptr, ...) @__rtw89_debug(ptr noundef %rtwdev, i32 noundef 8, ptr noundef nonnull @.str.64, i32 noundef %indvars.iv358.i, i32 noundef %div47.i) #10
  br label %for.inc62.i

for.inc62.i:                                      ; preds = %cond.end49.i, %for.body27.i.for.inc62.i_crit_edge
  %cfo_khz_all.3.i = phi i32 [ %cfo_khz_all.2345.i, %for.body27.i.for.inc62.i_crit_edge ], [ %add57.i, %cond.end49.i ]
  %indvars.iv.next359.i = add nuw nsw i32 %indvars.iv358.i, 1
  %exitcond360.not.i = icmp eq i32 %indvars.iv.next359.i, 64
  br i1 %exitcond360.not.i, label %for.end64.i, label %for.inc62.i.for.body27.i_crit_edge

for.inc62.i.for.body27.i_crit_edge:               ; preds = %for.inc62.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body27.i

for.end64.i:                                      ; preds = %for.inc62.i
  %40 = ptrtoint ptr %total_sta_assoc to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %total_sta_assoc, align 4
  %conv66.i = zext i8 %41 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool68.not.i = icmp eq i8 %41, 0
  br i1 %tobool68.not.i, label %for.end64.i.cond.end72.i_crit_edge, label %cond.true69.i

for.end64.i.cond.end72.i_crit_edge:               ; preds = %for.end64.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end72.i

cond.true69.i:                                    ; preds = %for.end64.i
  call void @__sanitizer_cov_trace_pc() #12
  %div70.i = sdiv i32 %cfo_khz_all.3.i, %conv66.i
  br label %cond.end72.i

cond.end72.i:                                     ; preds = %cond.true69.i, %for.end64.i.cond.end72.i_crit_edge
  %cond73.i = phi i32 [ %div70.i, %cond.true69.i ], [ 0, %for.end64.i.cond.end72.i_crit_edge ]
  tail call void (ptr, i32, ptr, ...) @__rtw89_debug(ptr noundef %rtwdev, i32 noundef 8, ptr noundef nonnull @.str.65, i32 noundef %cfo_khz_all.3.i, i32 noundef %conv66.i, i32 noundef %cond73.i) #10
  br label %rtw89_phy_multi_sta_cfo_calc.exit

if.then79.i:                                      ; preds = %if.else
  tail call void (ptr, i32, ptr, ...) @__rtw89_debug(ptr noundef %rtwdev, i32 noundef 8, ptr noundef nonnull @.str.66) #10
  %sta_cfo_tolerance.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 37, i32 11
  %42 = ptrtoint ptr %sta_cfo_tolerance.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %sta_cfo_tolerance.i, align 4
  %conv123.i = and i32 %43, 255
  br label %for.body85.i

for.cond81.i:                                     ; preds = %if.end119.i
  %indvars.iv.next.i94 = add nuw nsw i32 %indvars.iv.i96, 1
  %exitcond.not.i95 = icmp eq i32 %indvars.iv.next.i94, 64
  br i1 %exitcond.not.i95, label %for.cond81.i.for.end160.i_crit_edge, label %for.cond81.i.for.body85.i_crit_edge

for.cond81.i.for.body85.i_crit_edge:              ; preds = %for.cond81.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body85.i

for.cond81.i.for.end160.i_crit_edge:              ; preds = %for.cond81.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end160.i

for.body85.i:                                     ; preds = %for.cond81.i.for.body85.i_crit_edge, %if.then79.i
  %indvars.iv.i96 = phi i32 [ 0, %if.then79.i ], [ %indvars.iv.next.i94, %for.cond81.i.for.body85.i_crit_edge ]
  %cfo_khz_all.4340.i = phi i32 [ 0, %if.then79.i ], [ %add146.i, %for.cond81.i.for.body85.i_crit_edge ]
  %max_cfo_lb.0339.i = phi i32 [ -2147483648, %if.then79.i ], [ %52, %for.cond81.i.for.body85.i_crit_edge ]
  %min_cfo_ub.0338.i = phi i32 [ 2147483647, %if.then79.i ], [ %53, %for.cond81.i.for.body85.i_crit_edge ]
  %active_entry_cnt.0337.i = phi i8 [ 0, %if.then79.i ], [ %active_entry_cnt.1.i, %for.cond81.i.for.body85.i_crit_edge ]
  %i.2336.i = phi i8 [ 0, %if.then79.i ], [ %inc159.i, %for.cond81.i.for.body85.i_crit_edge ]
  %inc159.i = add nuw nsw i8 %i.2336.i, 1
  %arrayidx89.i = getelementptr %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 37, i32 13, i32 %indvars.iv.i96
  %44 = ptrtoint ptr %arrayidx89.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %arrayidx89.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %45)
  %cmp91.not.i = icmp eq i16 %45, 0
  br i1 %cmp91.not.i, label %if.else113.i, label %cond.end107.i

cond.end107.i:                                    ; preds = %for.body85.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv90.i = zext i16 %45 to i32
  %arrayidx104.i = getelementptr %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 37, i32 12, i32 %indvars.iv.i96
  %46 = ptrtoint ptr %arrayidx104.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx104.i, align 4
  %div105.i = sdiv i32 %47, %conv90.i
  %inc112.i = add i8 %active_entry_cnt.0337.i, 1
  br label %if.end119.i

if.else113.i:                                     ; preds = %for.body85.i
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx115.i = getelementptr %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 37, i32 16, i32 %indvars.iv.i96
  %48 = ptrtoint ptr %arrayidx115.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx115.i, align 4
  br label %if.end119.i

if.end119.i:                                      ; preds = %if.else113.i, %cond.end107.i
  %div105.sink.i = phi i32 [ %49, %if.else113.i ], [ %div105.i, %cond.end107.i ]
  %active_entry_cnt.1.i = phi i8 [ %active_entry_cnt.0337.i, %if.else113.i ], [ %inc112.i, %cond.end107.i ]
  %50 = getelementptr %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 37, i32 15, i32 %indvars.iv.i96
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %div105.sink.i, ptr %50, align 4
  %sub.i = sub i32 %div105.sink.i, %conv123.i
  %52 = tail call i32 @llvm.smax.i32(i32 %sub.i, i32 %max_cfo_lb.0339.i) #10
  %add135.i = add i32 %div105.sink.i, %conv123.i
  %53 = tail call i32 @llvm.smin.i32(i32 %add135.i, i32 %min_cfo_ub.0338.i) #10
  %add146.i = add i32 %div105.sink.i, %cfo_khz_all.4340.i
  tail call void (ptr, i32, ptr, ...) @__rtw89_debug(ptr noundef %rtwdev, i32 noundef 8, ptr noundef nonnull @.str.67, i32 noundef %indvars.iv.i96, i32 noundef %div105.sink.i) #10
  %54 = ptrtoint ptr %total_sta_assoc to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %total_sta_assoc, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %inc159.i, i8 %55)
  %cmp154.not.i = icmp ult i8 %inc159.i, %55
  br i1 %cmp154.not.i, label %for.cond81.i, label %if.end119.i.for.end160.i_crit_edge

if.end119.i.for.end160.i_crit_edge:               ; preds = %if.end119.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end160.i

for.end160.i:                                     ; preds = %if.end119.i.for.end160.i_crit_edge, %for.cond81.i.for.end160.i_crit_edge
  %inc86.lcssa.i = phi i8 [ %inc159.i, %if.end119.i.for.end160.i_crit_edge ], [ 64, %for.cond81.i.for.end160.i_crit_edge ]
  %conv169.i = zext i8 %inc86.lcssa.i to i32
  tail call void (ptr, i32, ptr, ...) @__rtw89_debug(ptr noundef %rtwdev, i32 noundef 8, ptr noundef nonnull @.str.68, i32 noundef %conv169.i) #10
  %conv170.i = zext i8 %active_entry_cnt.1.i to i32
  tail call void (ptr, i32, ptr, ...) @__rtw89_debug(ptr noundef %rtwdev, i32 noundef 8, ptr noundef nonnull @.str.69, i32 noundef %conv170.i) #10
  tail call void (ptr, i32, ptr, ...) @__rtw89_debug(ptr noundef %rtwdev, i32 noundef 8, ptr noundef nonnull @.str.70, i32 noundef 0, i32 noundef 0) #10
  tail call void (ptr, i32, ptr, ...) @__rtw89_debug(ptr noundef %rtwdev, i32 noundef 8, ptr noundef nonnull @.str.71, i32 noundef %52, i32 noundef %53) #10
  call void @__sanitizer_cov_trace_cmp4(i32 %53, i32 %52)
  %cmp171.not.i = icmp slt i32 %53, %52
  br i1 %cmp171.not.i, label %cond.true194.i, label %if.then173.i

if.then173.i:                                     ; preds = %for.end160.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub174.i = sub i32 %53, %52
  tail call void (ptr, i32, ptr, ...) @__rtw89_debug(ptr noundef %rtwdev, i32 noundef 8, ptr noundef nonnull @.str.72, i32 noundef %sub174.i) #10
  %56 = tail call i32 @llvm.smax.i32(i32 %52, i32 0) #10
  %57 = tail call i32 @llvm.smin.i32(i32 %56, i32 %53) #10
  br label %if.end199.i

cond.true194.i:                                   ; preds = %for.end160.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, ptr, ...) @__rtw89_debug(ptr noundef %rtwdev, i32 noundef 8, ptr noundef nonnull @.str.73) #10
  %div195.i = sdiv i32 %add146.i, %conv169.i
  br label %if.end199.i

if.end199.i:                                      ; preds = %cond.true194.i, %if.then173.i
  %target_cfo.2.i = phi i32 [ %57, %if.then173.i ], [ %div195.i, %cond.true194.i ]
  br label %for.body204.i

for.body204.i:                                    ; preds = %for.body204.i.for.body204.i_crit_edge, %if.end199.i
  %indvars.iv355.i = phi i32 [ 0, %if.end199.i ], [ %indvars.iv.next356.i, %for.body204.i.for.body204.i_crit_edge ]
  %arrayidx207.i = getelementptr %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 37, i32 15, i32 %indvars.iv355.i
  %58 = ptrtoint ptr %arrayidx207.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx207.i, align 4
  %arrayidx210.i = getelementptr %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 37, i32 16, i32 %indvars.iv355.i
  %60 = ptrtoint ptr %arrayidx210.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %59, ptr %arrayidx210.i, align 4
  %indvars.iv.next356.i = add nuw nsw i32 %indvars.iv355.i, 1
  %exitcond357.not.i = icmp eq i32 %indvars.iv.next356.i, 64
  br i1 %exitcond357.not.i, label %for.body204.i.rtw89_phy_multi_sta_cfo_calc.exit_crit_edge, label %for.body204.i.for.body204.i_crit_edge

for.body204.i.for.body204.i_crit_edge:            ; preds = %for.body204.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body204.i

for.body204.i.rtw89_phy_multi_sta_cfo_calc.exit_crit_edge: ; preds = %for.body204.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rtw89_phy_multi_sta_cfo_calc.exit

rtw89_phy_multi_sta_cfo_calc.exit:                ; preds = %for.body204.i.rtw89_phy_multi_sta_cfo_calc.exit_crit_edge, %cond.end72.i, %for.inc.i92.rtw89_phy_multi_sta_cfo_calc.exit_crit_edge, %if.else.rtw89_phy_multi_sta_cfo_calc.exit_crit_edge
  %target_cfo.3.i = phi i32 [ %cond73.i, %cond.end72.i ], [ 0, %if.else.rtw89_phy_multi_sta_cfo_calc.exit_crit_edge ], [ %target_cfo.1.i, %for.inc.i92.rtw89_phy_multi_sta_cfo_calc.exit_crit_edge ], [ %target_cfo.2.i, %for.body204.i.rtw89_phy_multi_sta_cfo_calc.exit_crit_edge ]
  tail call void (ptr, i32, ptr, ...) @__rtw89_debug(ptr noundef %rtwdev, i32 noundef 8, ptr noundef nonnull @.str.74, i32 noundef %target_cfo.3.i) #10
  br label %if.end19

if.end19:                                         ; preds = %rtw89_phy_multi_sta_cfo_calc.exit, %rtw89_phy_average_cfo_calc.exit
  %new_cfo.0 = phi i32 [ %cfo_all_avg.1.i, %rtw89_phy_average_cfo_calc.exit ], [ %target_cfo.3.i, %rtw89_phy_multi_sta_cfo_calc.exit ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %new_cfo.0)
  %cmp20 = icmp eq i32 %new_cfo.0, 0
  br i1 %cmp20, label %if.then22, label %if.end23

if.then22:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, ptr, ...) @__rtw89_debug(ptr noundef %rtwdev, i32 noundef 8, ptr noundef nonnull @.str.49) #10
  br label %cleanup

if.end23:                                         ; preds = %if.end19
  %61 = ptrtoint ptr %crystal_cap to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %crystal_cap, align 1
  %63 = tail call i32 @llvm.abs.i32(i32 %new_cfo.0, i1 false) #10
  %is_adjust.i97 = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 37, i32 4
  %64 = ptrtoint ptr %is_adjust.i97 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %is_adjust.i97, align 1, !range !291
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %65)
  %tobool.not.i98 = icmp eq i8 %65, 0
  br i1 %tobool.not.i98, label %if.then.i99, label %if.else.i

if.then.i99:                                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %63)
  %cmp2.i = icmp sgt i32 %63, 8
  br i1 %cmp2.i, label %if.then3.i, label %if.then.i99.if.then12.i_crit_edge

if.then.i99.if.then12.i_crit_edge:                ; preds = %if.then.i99
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then12.i

if.then3.i:                                       ; preds = %if.then.i99
  call void @__sanitizer_cov_trace_pc() #12
  %66 = ptrtoint ptr %is_adjust.i97 to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 1, ptr %is_adjust.i97, align 1
  br label %if.end13.i

if.else.i:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %63)
  %cmp5.i100 = icmp slt i32 %63, 8
  br i1 %cmp5.i100, label %if.then6.i, label %if.else.i.if.end13.i_crit_edge

if.else.i.if.end13.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13.i

if.then6.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  %67 = ptrtoint ptr %is_adjust.i97 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 0, ptr %is_adjust.i97, align 1
  br label %if.then12.i

if.then12.i:                                      ; preds = %if.then6.i, %if.then.i99.if.then12.i_crit_edge
  tail call void (ptr, i32, ptr, ...) @__rtw89_debug(ptr noundef %rtwdev, i32 noundef 8, ptr noundef nonnull @.str.75) #10
  br label %rtw89_phy_cfo_crystal_cap_adjust.exit

if.end13.i:                                       ; preds = %if.else.i.if.end13.i_crit_edge, %if.then3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %new_cfo.0)
  %cmp14.inv.i = icmp slt i32 %new_cfo.0, 1
  %cond15.i = select i1 %cmp14.inv.i, i32 -1, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 120, i32 %63)
  %cmp16.i = icmp ugt i32 %63, 120
  br i1 %cmp16.i, label %if.then17.i, label %if.else19.i

if.then17.i:                                      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #12
  %68 = trunc i32 %cond15.i to i8
  %69 = mul nsw i8 %68, 7
  br label %if.end47.i

if.else19.i:                                      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 80, i32 %63)
  %cmp20.i = icmp ugt i32 %63, 80
  br i1 %cmp20.i, label %if.then22.i101, label %if.else27.i

if.then22.i101:                                   ; preds = %if.else19.i
  call void @__sanitizer_cov_trace_pc() #12
  %70 = trunc i32 %cond15.i to i8
  %71 = mul nsw i8 %70, 5
  br label %if.end47.i

if.else27.i:                                      ; preds = %if.else19.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 40, i32 %63)
  %cmp28.i = icmp ugt i32 %63, 40
  %72 = trunc i32 %cond15.i to i8
  %73 = mul nsw i8 %72, 3
  %spec.select.i = select i1 %cmp28.i, i8 %73, i8 %72
  br label %if.end47.i

if.end47.i:                                       ; preds = %if.else27.i, %if.then22.i101, %if.then17.i
  %.pn.i = phi i8 [ %69, %if.then17.i ], [ %71, %if.then22.i101 ], [ %spec.select.i, %if.else27.i ]
  %crystal_cap.0.i = add i8 %.pn.i, %62
  tail call fastcc void @rtw89_phy_cfo_set_crystal_cap(ptr noundef %rtwdev, i8 noundef zeroext %crystal_cap.0.i, i1 noundef zeroext false) #10
  %74 = ptrtoint ptr %crystal_cap to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %crystal_cap, align 1
  %conv49.i = zext i8 %75 to i32
  %def_x_cap.i102 = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 37, i32 9
  %76 = ptrtoint ptr %def_x_cap.i102 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %def_x_cap.i102, align 1
  %conv50.i = zext i8 %77 to i32
  tail call void (ptr, i32, ptr, ...) @__rtw89_debug(ptr noundef %rtwdev, i32 noundef 8, ptr noundef nonnull @.str.76, i32 noundef %conv49.i, i32 noundef %conv50.i) #10
  br label %rtw89_phy_cfo_crystal_cap_adjust.exit

rtw89_phy_cfo_crystal_cap_adjust.exit:            ; preds = %if.end47.i, %if.then12.i
  %cfo_avg_pre = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 37, i32 14
  %78 = ptrtoint ptr %cfo_avg_pre to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %new_cfo.0, ptr %cfo_avg_pre, align 4
  %79 = ptrtoint ptr %crystal_cap to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %crystal_cap, align 1
  %conv26 = zext i8 %1 to i32
  call void @__sanitizer_cov_trace_cmp1(i8 %80, i8 %1)
  %cmp27 = icmp ne i8 %80, %1
  %conv29 = zext i1 %cmp27 to i32
  tail call void (ptr, i32, ptr, ...) @__rtw89_debug(ptr noundef %rtwdev, i32 noundef 8, ptr noundef nonnull @.str.50, i32 noundef %conv29) #10
  %def_x_cap = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 37, i32 9
  %81 = ptrtoint ptr %def_x_cap to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %def_x_cap, align 1
  %conv30 = zext i8 %82 to i32
  %83 = ptrtoint ptr %crystal_cap to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %crystal_cap, align 1
  %conv33 = zext i8 %84 to i32
  %x_cap_ofst = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 37, i32 10
  %85 = ptrtoint ptr %x_cap_ofst to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %x_cap_ofst, align 4
  %conv34 = sext i8 %86 to i32
  tail call void (ptr, i32, ptr, ...) @__rtw89_debug(ptr noundef %rtwdev, i32 noundef 8, ptr noundef nonnull @.str.51, i32 noundef %conv30, i32 noundef %conv26, i32 noundef %conv33, i32 noundef %conv34) #10
  br i1 %cmp27, label %if.then36, label %rtw89_phy_cfo_crystal_cap_adjust.exit.if.end42_crit_edge

rtw89_phy_cfo_crystal_cap_adjust.exit.if.end42_crit_edge: ; preds = %rtw89_phy_cfo_crystal_cap_adjust.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end42

if.then36:                                        ; preds = %rtw89_phy_cfo_crystal_cap_adjust.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %new_cfo.0)
  %cmp37 = icmp sgt i32 %new_cfo.0, 0
  br i1 %cmp37, label %if.then39, label %if.else40

if.then39:                                        ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #12
  %sub = add nsw i32 %new_cfo.0, -8
  br label %if.end42

if.else40:                                        ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #12
  %add = add nsw i32 %new_cfo.0, 8
  br label %if.end42

if.end42:                                         ; preds = %if.else40, %if.then39, %rtw89_phy_cfo_crystal_cap_adjust.exit.if.end42_crit_edge
  %new_cfo.1 = phi i32 [ %sub, %if.then39 ], [ %add, %if.else40 ], [ %new_cfo.0, %rtw89_phy_cfo_crystal_cap_adjust.exit.if.end42_crit_edge ]
  %87 = ptrtoint ptr %total_sta_assoc to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %total_sta_assoc, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %88)
  %cmp.not.i104 = icmp eq i8 %88, 0
  br i1 %cmp.not.i104, label %if.then.i105, label %if.end.i106

if.then.i105:                                     ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, ptr, ...) @__rtw89_debug(ptr noundef %rtwdev, i32 noundef 8, ptr noundef nonnull @.str.77, i32 noundef 0) #10
  br label %rtw89_dcfo_comp.exit

if.end.i106:                                      ; preds = %if.end42
  tail call void (ptr, i32, ptr, ...) @__rtw89_debug(ptr noundef %rtwdev, i32 noundef 8, ptr noundef nonnull @.str.78, i32 noundef %new_cfo.1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %new_cfo.1)
  %cmp4.i = icmp eq i32 %new_cfo.1, 0
  br i1 %cmp4.i, label %if.end.i106.rtw89_dcfo_comp.exit_crit_edge, label %if.end7.i

if.end.i106.rtw89_dcfo_comp.exit_crit_edge:       ; preds = %if.end.i106
  call void @__sanitizer_cov_trace_pc() #12
  br label %rtw89_dcfo_comp.exit

if.end7.i:                                        ; preds = %if.end.i106
  %hci.i.i.i.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 7
  %89 = ptrtoint ptr %hci.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %hci.i.i.i.i, align 8
  %read32.i.i.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %90, i32 0, i32 9
  %91 = ptrtoint ptr %read32.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %read32.i.i.i.i, align 4
  %call.i.i.i.i = tail call i32 %92(ptr noundef %rtwdev, i32 noundef 82532) #10
  %and.i.i.i = and i32 %call.i.i.i.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %new_cfo.1)
  %cmp8.inv.i = icmp slt i32 %new_cfo.1, 1
  %shl.i = shl i32 %new_cfo.1, 3
  %div.i107 = sdiv i32 %shl.i, 5
  %93 = sub nsw i32 0, %and.i.i.i
  %94 = select i1 %cmp8.inv.i, i32 %93, i32 %and.i.i.i
  %add.i108 = add nsw i32 %94, %div.i107
  tail call void (ptr, i32, ptr, ...) @__rtw89_debug(ptr noundef %rtwdev, i32 noundef 8, ptr noundef nonnull @.str.79, i32 noundef %add.i108) #10
  %chip.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 3
  %95 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %chip.i, align 4
  %97 = ptrtoint ptr %96 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %96, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %98)
  %cmp10.i109 = icmp eq i32 %98, 0
  br i1 %cmp10.i109, label %land.lhs.true.i, label %if.end7.i.if.end16.i_crit_edge

if.end7.i.if.end16.i_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16.i

land.lhs.true.i:                                  ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  %cv.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 4, i32 1
  %99 = ptrtoint ptr %cv.i to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %cv.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %100)
  %cmp13.i = icmp eq i8 %100, 1
  %sub.i110 = sub nsw i32 0, %add.i108
  %spec.select.i111 = select i1 %cmp13.i, i32 %sub.i110, i32 %add.i108
  br label %if.end16.i

if.end16.i:                                       ; preds = %land.lhs.true.i, %if.end7.i.if.end16.i_crit_edge
  %cfo_avg_312.0.i = phi i32 [ %add.i108, %if.end7.i.if.end16.i_crit_edge ], [ %spec.select.i111, %land.lhs.true.i ]
  %dbcc_en.i.i.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 2
  %101 = ptrtoint ptr %hci.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %hci.i.i.i.i, align 8
  %read32.i.i.i.i.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %102, i32 0, i32 9
  %103 = ptrtoint ptr %read32.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %read32.i.i.i.i.i.i, align 4
  %call.i.i.i.i.i.i = tail call i32 %104(ptr noundef %rtwdev, i32 noundef 83084) #10
  %and21.i.i.i.i.i = and i32 %call.i.i.i.i.i.i, -4096
  %and22.i.i.i.i.i = and i32 %cfo_avg_312.0.i, 4095
  %or.i.i.i.i.i = or i32 %and21.i.i.i.i.i, %and22.i.i.i.i.i
  %105 = ptrtoint ptr %hci.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %hci.i.i.i.i, align 8
  %write32.i.i.i.i.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %106, i32 0, i32 12
  %107 = ptrtoint ptr %write32.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %write32.i.i.i.i.i.i, align 4
  tail call void %108(ptr noundef %rtwdev, i32 noundef 83084, i32 noundef %or.i.i.i.i.i) #10
  %109 = ptrtoint ptr %dbcc_en.i.i.i to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %dbcc_en.i.i.i, align 8, !range !291
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %110)
  %tobool.not.i.i = icmp eq i8 %110, 0
  br i1 %tobool.not.i.i, label %if.end16.i.rtw89_dcfo_comp.exit_crit_edge, label %if.then.i.i.i

if.end16.i.rtw89_dcfo_comp.exit_crit_edge:        ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rtw89_dcfo_comp.exit

if.then.i.i.i:                                    ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #12
  %111 = ptrtoint ptr %hci.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %hci.i.i.i.i, align 8
  %read32.i.i.i.i13.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %112, i32 0, i32 9
  %113 = ptrtoint ptr %read32.i.i.i.i13.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %read32.i.i.i.i13.i.i, align 4
  %call.i.i.i.i14.i.i = tail call i32 %114(ptr noundef %rtwdev, i32 noundef 91276) #10
  %and21.i.i.i16.i.i = and i32 %call.i.i.i.i14.i.i, -4096
  %or.i.i.i19.i.i = or i32 %and21.i.i.i16.i.i, %and22.i.i.i.i.i
  %115 = ptrtoint ptr %hci.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %hci.i.i.i.i, align 8
  %write32.i.i.i.i20.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %116, i32 0, i32 12
  %117 = ptrtoint ptr %write32.i.i.i.i20.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %write32.i.i.i.i20.i.i, align 4
  tail call void %118(ptr noundef %rtwdev, i32 noundef 91276, i32 noundef %or.i.i.i19.i.i) #10
  br label %rtw89_dcfo_comp.exit

rtw89_dcfo_comp.exit:                             ; preds = %if.then.i.i.i, %if.end16.i.rtw89_dcfo_comp.exit_crit_edge, %if.end.i106.rtw89_dcfo_comp.exit_crit_edge, %if.then.i105
  %cfo_tail.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 37, i32 12
  %119 = ptrtoint ptr %packet_count to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 0, ptr %packet_count, align 4
  %120 = ptrtoint ptr %packet_count_pre to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 0, ptr %packet_count_pre, align 4
  %121 = call ptr @memset(ptr %cfo_tail.i, i32 0, i32 388)
  br label %cleanup

cleanup:                                          ; preds = %rtw89_dcfo_comp.exit, %if.then22, %if.then11, %if.then6, %if.end.i, %if.then.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_queue_delayed_work(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw89_phy_cfo_track(ptr noundef %rtwdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %cfo_tracking = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 37
  %phy_cfo_status = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 37, i32 2
  %0 = ptrtoint ptr %phy_cfo_status to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %phy_cfo_status, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.142)
  switch i32 %1, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb3
  ]

sw.bb:                                            ; preds = %entry
  %tx_throughput = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 9, i32 6
  %3 = ptrtoint ptr %tx_throughput to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %tx_throughput, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 99, i32 %4)
  %cmp = icmp ugt i32 %4, 99
  br i1 %cmp, label %rtw89_phy_cfo_start_work.exit, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

rtw89_phy_cfo_start_work.exit:                    ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  %5 = ptrtoint ptr %phy_cfo_status to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %phy_cfo_status, align 4
  %cfo_trig_by_timer_en = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 37, i32 1
  %6 = ptrtoint ptr %cfo_trig_by_timer_en to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %cfo_trig_by_timer_en, align 2
  %7 = ptrtoint ptr %cfo_tracking to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 250, ptr %cfo_tracking, align 4
  %8 = ptrtoint ptr %rtwdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rtwdev, align 128
  %cfo_track_work.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 45
  tail call void @ieee80211_queue_delayed_work(ptr noundef %9, ptr noundef %cfo_track_work.i, i32 noundef 25) #10
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  %phy_cfo_trk_cnt = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 37, i32 3
  %10 = ptrtoint ptr %phy_cfo_trk_cnt to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %phy_cfo_trk_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 14, i8 %11)
  %cmp4 = icmp ugt i8 %11, 14
  br i1 %cmp4, label %if.then6, label %sw.bb3.if.end9_crit_edge

sw.bb3.if.end9_crit_edge:                         ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

if.then6:                                         ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #12
  %12 = ptrtoint ptr %phy_cfo_trk_cnt to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %phy_cfo_trk_cnt, align 4
  %cfo_trig_by_timer_en8 = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 37, i32 1
  %13 = ptrtoint ptr %cfo_trig_by_timer_en8 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %cfo_trig_by_timer_en8, align 2
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %sw.bb3.if.end9_crit_edge
  %cfo_trig_by_timer_en10 = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 37, i32 1
  %14 = ptrtoint ptr %cfo_trig_by_timer_en10 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %cfo_trig_by_timer_en10, align 2, !range !291
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not = icmp eq i8 %15, 0
  br i1 %tobool.not, label %if.end9.if.end16_crit_edge, label %if.then14

if.end9.if.end16_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

if.then14:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %phy_cfo_trk_cnt to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %phy_cfo_trk_cnt, align 4
  %inc = add i8 %17, 1
  store i8 %inc, ptr %phy_cfo_trk_cnt, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %if.end9.if.end16_crit_edge
  %tx_throughput17 = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 9, i32 6
  %18 = ptrtoint ptr %tx_throughput17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %tx_throughput17, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 51, i32 %19)
  %cmp18 = icmp ult i32 %19, 51
  br i1 %cmp18, label %if.then20, label %if.end16.sw.epilog_crit_edge

if.end16.sw.epilog_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.then20:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  %20 = ptrtoint ptr %phy_cfo_status to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %phy_cfo_status, align 4
  %21 = ptrtoint ptr %phy_cfo_trk_cnt to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %phy_cfo_trk_cnt, align 4
  %22 = ptrtoint ptr %cfo_trig_by_timer_en10 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %cfo_trig_by_timer_en10, align 2
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %23 = ptrtoint ptr %phy_cfo_status to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %phy_cfo_status, align 4
  %phy_cfo_trk_cnt26 = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 37, i32 3
  %24 = ptrtoint ptr %phy_cfo_trk_cnt26 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %phy_cfo_trk_cnt26, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.then20, %if.end16.sw.epilog_crit_edge, %rtw89_phy_cfo_start_work.exit, %sw.bb.sw.epilog_crit_edge
  %tx_throughput27 = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 9, i32 6
  %25 = ptrtoint ptr %tx_throughput27 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %tx_throughput27, align 8
  %27 = ptrtoint ptr %phy_cfo_status to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %phy_cfo_status, align 4
  %cfo_trig_by_timer_en29 = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 37, i32 1
  %29 = ptrtoint ptr %cfo_trig_by_timer_en29 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %cfo_trig_by_timer_en29, align 2, !range !291
  %31 = zext i8 %30 to i32
  %phy_cfo_trk_cnt32 = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 37, i32 3
  %32 = ptrtoint ptr %phy_cfo_trk_cnt32 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %phy_cfo_trk_cnt32, align 4
  %conv33 = zext i8 %33 to i32
  %phystat = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 27
  %34 = ptrtoint ptr %phystat to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %phystat, align 4
  %shr.i = lshr i32 %35, 4
  tail call void (ptr, i32, ptr, ...) @__rtw89_debug(ptr noundef %rtwdev, i32 noundef 8, ptr noundef nonnull @.str.23, i32 noundef %26, i32 noundef %28, i32 noundef %31, i32 noundef %conv33, i32 noundef %shr.i) #10
  %36 = ptrtoint ptr %cfo_trig_by_timer_en29 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %cfo_trig_by_timer_en29, align 2, !range !291
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool35.not = icmp eq i8 %37, 0
  br i1 %tobool35.not, label %if.end37, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end37:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @rtw89_phy_cfo_dm(ptr noundef %rtwdev)
  br label %cleanup

cleanup:                                          ; preds = %if.end37, %sw.epilog.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @rtw89_phy_cfo_parse(ptr nocapture noundef %rtwdev, i16 noundef signext %cfo_val, ptr nocapture noundef readonly %phy_ppdu) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %mac_id = getelementptr inbounds %struct.rtw89_rx_phy_ppdu, ptr %phy_ppdu, i32 0, i32 4
  %0 = ptrtoint ptr %mac_id to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %mac_id, align 1
  %conv = sext i16 %cfo_val to i32
  %idxprom = zext i8 %1 to i32
  %arrayidx = getelementptr %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 37, i32 12, i32 %idxprom
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %add = add i32 %3, %conv
  store i32 %add, ptr %arrayidx, align 4
  %arrayidx2 = getelementptr %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 37, i32 13, i32 %idxprom
  %4 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %arrayidx2, align 2
  %inc = add i16 %5, 1
  store i16 %inc, ptr %arrayidx2, align 2
  %packet_count = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 37, i32 17
  %6 = ptrtoint ptr %packet_count to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %packet_count, align 4
  %inc3 = add i32 %7, 1
  store i32 %inc3, ptr %packet_count, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw89_phy_stat_track(ptr noundef %rtwdev) local_unnamed_addr #0 align 64 {
entry:
  %rssi_data.i = alloca %struct.rtw89_phy_iter_rssi_data, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %phystat1.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 27
  %chip.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 3
  %0 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip.i, align 4
  %rf_path_num25.i = getelementptr inbounds %struct.rtw89_chip_info, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %rf_path_num25.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %rf_path_num25.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp27.not.i = icmp eq i8 %3, 0
  br i1 %cmp27.not.i, label %entry.rtw89_phy_stat_thermal_update.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.rtw89_phy_stat_thermal_update.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %rtw89_phy_stat_thermal_update.exit

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %4 = phi ptr [ %15, %if.end.i.for.body.i_crit_edge ], [ %1, %entry.for.body.i_crit_edge ]
  %i.028.i = phi i32 [ %inc.i, %if.end.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %ops.i.i = getelementptr inbounds %struct.rtw89_chip_info, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ops.i.i, align 4
  %get_thermal.i.i = getelementptr inbounds %struct.rtw89_chip_ops, ptr %6, i32 0, i32 18
  %7 = ptrtoint ptr %get_thermal.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %get_thermal.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %8, null
  br i1 %tobool.not.i.i, label %for.body.i.if.then.i_crit_edge, label %rtw89_chip_get_thermal.exit.i

for.body.i.if.then.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

rtw89_chip_get_thermal.exit.i:                    ; preds = %for.body.i
  %call.i.i = tail call zeroext i8 %8(ptr noundef %rtwdev, i32 noundef %i.028.i) #10
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call.i.i)
  %tobool.not.i = icmp eq i8 %call.i.i, 0
  br i1 %tobool.not.i, label %rtw89_chip_get_thermal.exit.i.if.end.i_crit_edge, label %rtw89_chip_get_thermal.exit.i.if.then.i_crit_edge

rtw89_chip_get_thermal.exit.i.if.then.i_crit_edge: ; preds = %rtw89_chip_get_thermal.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

rtw89_chip_get_thermal.exit.i.if.end.i_crit_edge: ; preds = %rtw89_chip_get_thermal.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then.i:                                        ; preds = %rtw89_chip_get_thermal.exit.i.if.then.i_crit_edge, %for.body.i.if.then.i_crit_edge
  %retval.0.i23.i = phi i8 [ %call.i.i, %rtw89_chip_get_thermal.exit.i.if.then.i_crit_edge ], [ 16, %for.body.i.if.then.i_crit_edge ]
  %arrayidx.i = getelementptr [4 x %struct.ewma_thermal], ptr %phystat1.i, i32 0, i32 %i.028.i
  %conv3.i = zext i8 %retval.0.i23.i to i32
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i19.i = icmp eq i32 %10, 0
  %sub.i.i = mul i32 %10, 3
  %shl19.i.i = shl nuw nsw i32 %conv3.i, 4
  %add.i.i = add i32 %sub.i.i, %shl19.i.i
  %shr.i.i = lshr i32 %add.i.i, 2
  %cond.i.i = select i1 %tobool.not.i19.i, i32 %shl19.i.i, i32 %shr.i.i
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile i32 %cond.i.i, ptr %arrayidx.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %rtw89_chip_get_thermal.exit.i.if.end.i_crit_edge
  %retval.0.i24.i = phi i8 [ %retval.0.i23.i, %if.then.i ], [ 0, %rtw89_chip_get_thermal.exit.i.if.end.i_crit_edge ]
  %conv4.i = zext i8 %retval.0.i24.i to i32
  %arrayidx6.i = getelementptr [4 x %struct.ewma_thermal], ptr %phystat1.i, i32 0, i32 %i.028.i
  %12 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx6.i, align 4
  %shr.i20.i = lshr i32 %13, 4
  tail call void (ptr, i32, ptr, ...) @__rtw89_debug(ptr noundef %rtwdev, i32 noundef 4, ptr noundef nonnull @.str.80, i32 noundef %i.028.i, i32 noundef %conv4.i, i32 noundef %shr.i20.i) #10
  %inc.i = add nuw nsw i32 %i.028.i, 1
  %14 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %chip.i, align 4
  %rf_path_num.i = getelementptr inbounds %struct.rtw89_chip_info, ptr %15, i32 0, i32 9
  %16 = ptrtoint ptr %rf_path_num.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %rf_path_num.i, align 4
  %conv.i = zext i8 %17 to i32
  %cmp.i = icmp ult i32 %inc.i, %conv.i
  br i1 %cmp.i, label %if.end.i.for.body.i_crit_edge, label %if.end.i.rtw89_phy_stat_thermal_update.exit_crit_edge

if.end.i.rtw89_phy_stat_thermal_update.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rtw89_phy_stat_thermal_update.exit

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

rtw89_phy_stat_thermal_update.exit:               ; preds = %if.end.i.rtw89_phy_stat_thermal_update.exit_crit_edge, %entry.rtw89_phy_stat_thermal_update.exit_crit_edge
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %rssi_data.i) #10
  %18 = getelementptr inbounds i8, ptr %rssi_data.i, i32 8
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %18, align 4
  %20 = ptrtoint ptr %rssi_data.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %rtwdev, ptr %rssi_data.i, align 4
  %ch_info.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 40
  %ch_info2.i = getelementptr inbounds %struct.rtw89_phy_iter_rssi_data, ptr %rssi_data.i, i32 0, i32 1
  %21 = ptrtoint ptr %ch_info2.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %ch_info.i, ptr %ch_info2.i, align 4
  %22 = ptrtoint ptr %ch_info.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 -1, ptr %ch_info.i, align 2
  %23 = ptrtoint ptr %rtwdev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %rtwdev, align 128
  call void @ieee80211_iterate_stations_atomic(ptr noundef %24, ptr noundef nonnull @rtw89_phy_stat_rssi_update_iter, ptr noundef nonnull %rssi_data.i) #10
  %25 = ptrtoint ptr %18 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %18, align 4, !range !291
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool.not.i7 = icmp eq i8 %26, 0
  br i1 %tobool.not.i7, label %rtw89_phy_stat_thermal_update.exit.rtw89_phy_stat_rssi_update.exit_crit_edge, label %if.then.i8

rtw89_phy_stat_thermal_update.exit.rtw89_phy_stat_rssi_update.exit_crit_edge: ; preds = %rtw89_phy_stat_thermal_update.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %rtw89_phy_stat_rssi_update.exit

if.then.i8:                                       ; preds = %rtw89_phy_stat_thermal_update.exit
  call void @__sanitizer_cov_trace_pc() #12
  call void @rtw89_btc_ntfy_wl_sta(ptr noundef %rtwdev) #10
  br label %rtw89_phy_stat_rssi_update.exit

rtw89_phy_stat_rssi_update.exit:                  ; preds = %if.then.i8, %rtw89_phy_stat_thermal_update.exit.rtw89_phy_stat_rssi_update.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %rssi_data.i) #10
  %last_pkt_stat = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 27, i32 2
  %cur_pkt_stat = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 27, i32 1
  %27 = call ptr @memcpy(ptr %last_pkt_stat, ptr %cur_pkt_stat, i32 1780)
  %28 = call ptr @memset(ptr %cur_pkt_stat, i32 0, i32 1780)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw89_phy_env_monitor_track(ptr noundef %rtwdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ccx_watchdog_result = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 38, i32 3
  %0 = ptrtoint ptr %ccx_watchdog_result to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %ccx_watchdog_result, align 1
  %ccx_manual_ctrl = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 38, i32 6
  %1 = ptrtoint ptr %ccx_manual_ctrl to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %ccx_manual_ctrl, align 4, !range !291
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, ptr, ...) @__rtw89_debug(ptr noundef %rtwdev, i32 noundef 512, ptr noundef nonnull @.str.24) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %hci.i.i.i.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 7
  %3 = ptrtoint ptr %hci.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hci.i.i.i.i, align 8
  %read32.i.i.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %4, i32 0, i32 9
  %5 = ptrtoint ptr %read32.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %read32.i.i.i.i, align 4
  %call.i.i.i.i = tail call i32 %6(ptr noundef %rtwdev, i32 noundef 72428) #10
  %7 = and i32 %call.i.i.i.i, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.i = icmp eq i32 %7, 0
  br i1 %cmp.i, label %rtw89_phy_ifs_clm_get_result.exit, label %if.end.i

if.end.i:                                         ; preds = %if.end
  %8 = ptrtoint ptr %hci.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hci.i.i.i.i, align 8
  %read32.i.i.i150.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %9, i32 0, i32 9
  %10 = ptrtoint ptr %read32.i.i.i150.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %read32.i.i.i150.i, align 4
  %call.i.i.i151.i = tail call i32 %11(ptr noundef %rtwdev, i32 noundef 72396) #10
  %conv.i = trunc i32 %call.i.i.i151.i to i16
  %ifs_clm_tx.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 38, i32 29
  %12 = ptrtoint ptr %ifs_clm_tx.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %conv.i, ptr %ifs_clm_tx.i, align 2
  %13 = ptrtoint ptr %hci.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hci.i.i.i.i, align 8
  %read32.i.i.i154.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %14, i32 0, i32 9
  %15 = ptrtoint ptr %read32.i.i.i154.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %read32.i.i.i154.i, align 4
  %call.i.i.i155.i = tail call i32 %16(ptr noundef %rtwdev, i32 noundef 72396) #10
  %shr.i.i157.i = lshr i32 %call.i.i.i155.i, 16
  %conv3.i = trunc i32 %shr.i.i157.i to i16
  %ifs_clm_edcca_excl_cca.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 38, i32 30
  %17 = ptrtoint ptr %ifs_clm_edcca_excl_cca.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %conv3.i, ptr %ifs_clm_edcca_excl_cca.i, align 4
  %18 = ptrtoint ptr %hci.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hci.i.i.i.i, align 8
  %read32.i.i.i159.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %19, i32 0, i32 9
  %20 = ptrtoint ptr %read32.i.i.i159.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %read32.i.i.i159.i, align 4
  %call.i.i.i160.i = tail call i32 %21(ptr noundef %rtwdev, i32 noundef 72400) #10
  %conv5.i = trunc i32 %call.i.i.i160.i to i16
  %ifs_clm_cckcca_excl_fa.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 38, i32 34
  %22 = ptrtoint ptr %ifs_clm_cckcca_excl_fa.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %conv5.i, ptr %ifs_clm_cckcca_excl_fa.i, align 4
  %23 = ptrtoint ptr %hci.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %hci.i.i.i.i, align 8
  %read32.i.i.i163.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %24, i32 0, i32 9
  %25 = ptrtoint ptr %read32.i.i.i163.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %read32.i.i.i163.i, align 4
  %call.i.i.i164.i = tail call i32 %26(ptr noundef %rtwdev, i32 noundef 72400) #10
  %shr.i.i166.i = lshr i32 %call.i.i.i164.i, 16
  %conv7.i = trunc i32 %shr.i.i166.i to i16
  %ifs_clm_ofdmcca_excl_fa.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 38, i32 32
  %27 = ptrtoint ptr %ifs_clm_ofdmcca_excl_fa.i to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %conv7.i, ptr %ifs_clm_ofdmcca_excl_fa.i, align 8
  %28 = ptrtoint ptr %hci.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %hci.i.i.i.i, align 8
  %read32.i.i.i168.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %29, i32 0, i32 9
  %30 = ptrtoint ptr %read32.i.i.i168.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %read32.i.i.i168.i, align 4
  %call.i.i.i169.i = tail call i32 %31(ptr noundef %rtwdev, i32 noundef 72404) #10
  %conv9.i = trunc i32 %call.i.i.i169.i to i16
  %ifs_clm_cckfa.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 38, i32 33
  %32 = ptrtoint ptr %ifs_clm_cckfa.i to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %conv9.i, ptr %ifs_clm_cckfa.i, align 2
  %33 = ptrtoint ptr %hci.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %hci.i.i.i.i, align 8
  %read32.i.i.i172.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %34, i32 0, i32 9
  %35 = ptrtoint ptr %read32.i.i.i172.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %read32.i.i.i172.i, align 4
  %call.i.i.i173.i = tail call i32 %36(ptr noundef %rtwdev, i32 noundef 72404) #10
  %shr.i.i175.i = lshr i32 %call.i.i.i173.i, 16
  %conv11.i = trunc i32 %shr.i.i175.i to i16
  %ifs_clm_ofdmfa.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 38, i32 31
  %37 = ptrtoint ptr %ifs_clm_ofdmfa.i to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %conv11.i, ptr %ifs_clm_ofdmfa.i, align 2
  %38 = ptrtoint ptr %hci.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %hci.i.i.i.i, align 8
  %read32.i.i.i177.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %39, i32 0, i32 9
  %40 = ptrtoint ptr %read32.i.i.i177.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %read32.i.i.i177.i, align 4
  %call.i.i.i178.i = tail call i32 %41(ptr noundef %rtwdev, i32 noundef 72408) #10
  %conv13.i = trunc i32 %call.i.i.i178.i to i8
  %ifs_clm_his.i = getelementptr %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 38, i32 36
  %42 = ptrtoint ptr %ifs_clm_his.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %conv13.i, ptr %ifs_clm_his.i, align 8
  %43 = ptrtoint ptr %hci.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %hci.i.i.i.i, align 8
  %read32.i.i.i181.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %44, i32 0, i32 9
  %45 = ptrtoint ptr %read32.i.i.i181.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %read32.i.i.i181.i, align 4
  %call.i.i.i182.i = tail call i32 %46(ptr noundef %rtwdev, i32 noundef 72408) #10
  %and.i.i183.i = lshr i32 %call.i.i.i182.i, 8
  %conv15.i = trunc i32 %and.i.i183.i to i8
  %arrayidx17.i = getelementptr %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 38, i32 36, i32 1
  %47 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %conv15.i, ptr %arrayidx17.i, align 1
  %48 = ptrtoint ptr %hci.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %hci.i.i.i.i, align 8
  %read32.i.i.i186.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %49, i32 0, i32 9
  %50 = ptrtoint ptr %read32.i.i.i186.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %read32.i.i.i186.i, align 4
  %call.i.i.i187.i = tail call i32 %51(ptr noundef %rtwdev, i32 noundef 72408) #10
  %and.i.i188.i = lshr i32 %call.i.i.i187.i, 16
  %conv19.i = trunc i32 %and.i.i188.i to i8
  %arrayidx21.i = getelementptr %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 38, i32 36, i32 2
  %52 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %conv19.i, ptr %arrayidx21.i, align 2
  %53 = ptrtoint ptr %hci.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %hci.i.i.i.i, align 8
  %read32.i.i.i191.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %54, i32 0, i32 9
  %55 = ptrtoint ptr %read32.i.i.i191.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %read32.i.i.i191.i, align 4
  %call.i.i.i192.i = tail call i32 %56(ptr noundef %rtwdev, i32 noundef 72408) #10
  %shr.i.i194.i = lshr i32 %call.i.i.i192.i, 24
  %conv23.i = trunc i32 %shr.i.i194.i to i8
  %arrayidx25.i = getelementptr %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 38, i32 36, i32 3
  %57 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %conv23.i, ptr %arrayidx25.i, align 1
  %58 = ptrtoint ptr %hci.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %hci.i.i.i.i, align 8
  %read32.i.i.i196.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %59, i32 0, i32 9
  %60 = ptrtoint ptr %read32.i.i.i196.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %read32.i.i.i196.i, align 4
  %call.i.i.i197.i = tail call i32 %61(ptr noundef %rtwdev, i32 noundef 72412) #10
  %conv27.i = trunc i32 %call.i.i.i197.i to i16
  %ifs_clm_avg.i = getelementptr %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 38, i32 37
  %62 = ptrtoint ptr %ifs_clm_avg.i to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 %conv27.i, ptr %ifs_clm_avg.i, align 4
  %63 = ptrtoint ptr %hci.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %hci.i.i.i.i, align 8
  %read32.i.i.i200.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %64, i32 0, i32 9
  %65 = ptrtoint ptr %read32.i.i.i200.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %read32.i.i.i200.i, align 4
  %call.i.i.i201.i = tail call i32 %66(ptr noundef %rtwdev, i32 noundef 72412) #10
  %shr.i.i203.i = lshr i32 %call.i.i.i201.i, 16
  %conv30.i = trunc i32 %shr.i.i203.i to i16
  %arrayidx32.i = getelementptr %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 38, i32 37, i32 1
  %67 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_store2_noabort(i32 %67)
  store i16 %conv30.i, ptr %arrayidx32.i, align 2
  %68 = ptrtoint ptr %hci.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %hci.i.i.i.i, align 8
  %read32.i.i.i205.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %69, i32 0, i32 9
  %70 = ptrtoint ptr %read32.i.i.i205.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %read32.i.i.i205.i, align 4
  %call.i.i.i206.i = tail call i32 %71(ptr noundef %rtwdev, i32 noundef 72416) #10
  %conv34.i = trunc i32 %call.i.i.i206.i to i16
  %arrayidx36.i = getelementptr %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 38, i32 37, i32 2
  %72 = ptrtoint ptr %arrayidx36.i to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 %conv34.i, ptr %arrayidx36.i, align 4
  %73 = ptrtoint ptr %hci.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %hci.i.i.i.i, align 8
  %read32.i.i.i209.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %74, i32 0, i32 9
  %75 = ptrtoint ptr %read32.i.i.i209.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %read32.i.i.i209.i, align 4
  %call.i.i.i210.i = tail call i32 %76(ptr noundef %rtwdev, i32 noundef 72416) #10
  %shr.i.i212.i = lshr i32 %call.i.i.i210.i, 16
  %conv38.i = trunc i32 %shr.i.i212.i to i16
  %arrayidx40.i = getelementptr %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 38, i32 37, i32 3
  %77 = ptrtoint ptr %arrayidx40.i to i32
  call void @__asan_store2_noabort(i32 %77)
  store i16 %conv38.i, ptr %arrayidx40.i, align 2
  %78 = ptrtoint ptr %hci.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %hci.i.i.i.i, align 8
  %read32.i.i.i214.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %79, i32 0, i32 9
  %80 = ptrtoint ptr %read32.i.i.i214.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %read32.i.i.i214.i, align 4
  %call.i.i.i215.i = tail call i32 %81(ptr noundef %rtwdev, i32 noundef 72420) #10
  %conv42.i = trunc i32 %call.i.i.i215.i to i16
  %ifs_clm_cca.i = getelementptr %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 38, i32 38
  %82 = ptrtoint ptr %ifs_clm_cca.i to i32
  call void @__asan_store2_noabort(i32 %82)
  store i16 %conv42.i, ptr %ifs_clm_cca.i, align 4
  %83 = ptrtoint ptr %hci.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %hci.i.i.i.i, align 8
  %read32.i.i.i218.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %84, i32 0, i32 9
  %85 = ptrtoint ptr %read32.i.i.i218.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %read32.i.i.i218.i, align 4
  %call.i.i.i219.i = tail call i32 %86(ptr noundef %rtwdev, i32 noundef 72420) #10
  %shr.i.i221.i = lshr i32 %call.i.i.i219.i, 16
  %conv45.i = trunc i32 %shr.i.i221.i to i16
  %arrayidx47.i = getelementptr %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 38, i32 38, i32 1
  %87 = ptrtoint ptr %arrayidx47.i to i32
  call void @__asan_store2_noabort(i32 %87)
  store i16 %conv45.i, ptr %arrayidx47.i, align 2
  %88 = ptrtoint ptr %hci.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %hci.i.i.i.i, align 8
  %read32.i.i.i223.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %89, i32 0, i32 9
  %90 = ptrtoint ptr %read32.i.i.i223.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %read32.i.i.i223.i, align 4
  %call.i.i.i224.i = tail call i32 %91(ptr noundef %rtwdev, i32 noundef 72424) #10
  %conv49.i = trunc i32 %call.i.i.i224.i to i16
  %arrayidx51.i = getelementptr %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 38, i32 38, i32 2
  %92 = ptrtoint ptr %arrayidx51.i to i32
  call void @__asan_store2_noabort(i32 %92)
  store i16 %conv49.i, ptr %arrayidx51.i, align 4
  %93 = ptrtoint ptr %hci.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %hci.i.i.i.i, align 8
  %read32.i.i.i227.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %94, i32 0, i32 9
  %95 = ptrtoint ptr %read32.i.i.i227.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %read32.i.i.i227.i, align 4
  %call.i.i.i228.i = tail call i32 %96(ptr noundef %rtwdev, i32 noundef 72424) #10
  %shr.i.i230.i = lshr i32 %call.i.i.i228.i, 16
  %conv53.i = trunc i32 %shr.i.i230.i to i16
  %arrayidx55.i = getelementptr %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 38, i32 38, i32 3
  %97 = ptrtoint ptr %arrayidx55.i to i32
  call void @__asan_store2_noabort(i32 %97)
  store i16 %conv53.i, ptr %arrayidx55.i, align 2
  %98 = ptrtoint ptr %hci.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %hci.i.i.i.i, align 8
  %read32.i.i.i232.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %99, i32 0, i32 9
  %100 = ptrtoint ptr %read32.i.i.i232.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %read32.i.i.i232.i, align 4
  %call.i.i.i233.i = tail call i32 %101(ptr noundef %rtwdev, i32 noundef 72428) #10
  %and.i.i234.i = and i32 %call.i.i.i233.i, 65535
  %conv57.i = trunc i32 %call.i.i.i233.i to i16
  %ifs_clm_total_ifs.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 38, i32 35
  %102 = ptrtoint ptr %ifs_clm_total_ifs.i to i32
  call void @__asan_store2_noabort(i32 %102)
  store i16 %conv57.i, ptr %ifs_clm_total_ifs.i, align 2
  tail call void (ptr, i32, ptr, ...) @__rtw89_debug(ptr noundef %rtwdev, i32 noundef 512, ptr noundef nonnull @.str.82, i32 noundef %and.i.i234.i) #10
  %103 = ptrtoint ptr %ifs_clm_tx.i to i32
  call void @__asan_load2_noabort(i32 %103)
  %104 = load i16, ptr %ifs_clm_tx.i, align 2
  %conv61.i = zext i16 %104 to i32
  %105 = ptrtoint ptr %ifs_clm_edcca_excl_cca.i to i32
  call void @__asan_load2_noabort(i32 %105)
  %106 = load i16, ptr %ifs_clm_edcca_excl_cca.i, align 4
  %conv63.i = zext i16 %106 to i32
  tail call void (ptr, i32, ptr, ...) @__rtw89_debug(ptr noundef %rtwdev, i32 noundef 512, ptr noundef nonnull @.str.83, i32 noundef %conv61.i, i32 noundef %conv63.i) #10
  %107 = ptrtoint ptr %ifs_clm_cckfa.i to i32
  call void @__asan_load2_noabort(i32 %107)
  %108 = load i16, ptr %ifs_clm_cckfa.i, align 2
  %conv65.i = zext i16 %108 to i32
  %109 = ptrtoint ptr %ifs_clm_ofdmfa.i to i32
  call void @__asan_load2_noabort(i32 %109)
  %110 = load i16, ptr %ifs_clm_ofdmfa.i, align 2
  %conv67.i = zext i16 %110 to i32
  tail call void (ptr, i32, ptr, ...) @__rtw89_debug(ptr noundef %rtwdev, i32 noundef 512, ptr noundef nonnull @.str.84, i32 noundef %conv65.i, i32 noundef %conv67.i) #10
  %111 = ptrtoint ptr %ifs_clm_cckcca_excl_fa.i to i32
  call void @__asan_load2_noabort(i32 %111)
  %112 = load i16, ptr %ifs_clm_cckcca_excl_fa.i, align 4
  %conv69.i = zext i16 %112 to i32
  %113 = ptrtoint ptr %ifs_clm_ofdmcca_excl_fa.i to i32
  call void @__asan_load2_noabort(i32 %113)
  %114 = load i16, ptr %ifs_clm_ofdmcca_excl_fa.i, align 8
  %conv71.i = zext i16 %114 to i32
  tail call void (ptr, i32, ptr, ...) @__rtw89_debug(ptr noundef %rtwdev, i32 noundef 512, ptr noundef nonnull @.str.85, i32 noundef %conv69.i, i32 noundef %conv71.i) #10
  tail call void (ptr, i32, ptr, ...) @__rtw89_debug(ptr noundef %rtwdev, i32 noundef 512, ptr noundef nonnull @.str.86) #10
  %115 = ptrtoint ptr %ifs_clm_his.i to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %ifs_clm_his.i, align 1
  %conv78.i = zext i8 %116 to i32
  %117 = ptrtoint ptr %ifs_clm_avg.i to i32
  call void @__asan_load2_noabort(i32 %117)
  %118 = load i16, ptr %ifs_clm_avg.i, align 2
  %conv82.i = zext i16 %118 to i32
  %119 = ptrtoint ptr %ifs_clm_cca.i to i32
  call void @__asan_load2_noabort(i32 %119)
  %120 = load i16, ptr %ifs_clm_cca.i, align 2
  %conv86.i = zext i16 %120 to i32
  tail call void (ptr, i32, ptr, ...) @__rtw89_debug(ptr noundef %rtwdev, i32 noundef 512, ptr noundef nonnull @.str.87, i32 noundef 1, i32 noundef %conv78.i, i32 noundef %conv82.i, i32 noundef %conv86.i) #10
  %121 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %arrayidx17.i, align 1
  %conv78.1.i = zext i8 %122 to i32
  %123 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_load2_noabort(i32 %123)
  %124 = load i16, ptr %arrayidx32.i, align 2
  %conv82.1.i = zext i16 %124 to i32
  %125 = ptrtoint ptr %arrayidx47.i to i32
  call void @__asan_load2_noabort(i32 %125)
  %126 = load i16, ptr %arrayidx47.i, align 2
  %conv86.1.i = zext i16 %126 to i32
  tail call void (ptr, i32, ptr, ...) @__rtw89_debug(ptr noundef %rtwdev, i32 noundef 512, ptr noundef nonnull @.str.87, i32 noundef 2, i32 noundef %conv78.1.i, i32 noundef %conv82.1.i, i32 noundef %conv86.1.i) #10
  %127 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %arrayidx21.i, align 1
  %conv78.2.i = zext i8 %128 to i32
  %129 = ptrtoint ptr %arrayidx36.i to i32
  call void @__asan_load2_noabort(i32 %129)
  %130 = load i16, ptr %arrayidx36.i, align 2
  %conv82.2.i = zext i16 %130 to i32
  %131 = ptrtoint ptr %arrayidx51.i to i32
  call void @__asan_load2_noabort(i32 %131)
  %132 = load i16, ptr %arrayidx51.i, align 2
  %conv86.2.i = zext i16 %132 to i32
  tail call void (ptr, i32, ptr, ...) @__rtw89_debug(ptr noundef %rtwdev, i32 noundef 512, ptr noundef nonnull @.str.87, i32 noundef 3, i32 noundef %conv78.2.i, i32 noundef %conv82.2.i, i32 noundef %conv86.2.i) #10
  %133 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %arrayidx25.i, align 1
  %conv78.3.i = zext i8 %134 to i32
  %135 = ptrtoint ptr %arrayidx40.i to i32
  call void @__asan_load2_noabort(i32 %135)
  %136 = load i16, ptr %arrayidx40.i, align 2
  %conv82.3.i = zext i16 %136 to i32
  %137 = ptrtoint ptr %arrayidx55.i to i32
  call void @__asan_load2_noabort(i32 %137)
  %138 = load i16, ptr %arrayidx55.i, align 2
  %conv86.3.i = zext i16 %138 to i32
  tail call void (ptr, i32, ptr, ...) @__rtw89_debug(ptr noundef %rtwdev, i32 noundef 512, ptr noundef nonnull @.str.87, i32 noundef 4, i32 noundef %conv78.3.i, i32 noundef %conv82.3.i, i32 noundef %conv86.3.i) #10
  %ccx_period.i.i.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 38, i32 14
  %139 = ptrtoint ptr %ccx_period.i.i.i to i32
  call void @__asan_load2_noabort(i32 %139)
  %140 = load i16, ptr %ccx_period.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %140)
  %tobool.not.i.i.i = icmp eq i16 %140, 0
  br i1 %tobool.not.i.i.i, label %rtw89_phy_ccx_get_report.exit249.thread.i.i, label %rtw89_phy_ccx_get_report.exit.i.i

rtw89_phy_ccx_get_report.exit249.thread.i.i:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %ifs_clm_tx_ratio270.i.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 38, i32 50
  %ifs_clm_cck_fa_ratio323.i.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 38, i32 52
  %ifs_clm_ofdm_fa_ratio360.i.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 38, i32 53
  %ifs_clm_cck_cca_excl_fa_ratio404.i.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 38, i32 54
  %ifs_clm_ofdm_cca_excl_fa_ratio454.i.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 38, i32 55
  %ifs_clm_cck_fa_permil508.i.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 38, i32 56
  %141 = ptrtoint ptr %ifs_clm_cck_fa_permil508.i.i to i32
  call void @__asan_store2_noabort(i32 %141)
  store i16 0, ptr %ifs_clm_cck_fa_permil508.i.i, align 4
  %142 = call ptr @memset(ptr %ifs_clm_tx_ratio270.i.i, i32 0, i32 6)
  br label %175

rtw89_phy_ccx_get_report.exit.i.i:                ; preds = %if.end.i
  %143 = ptrtoint ptr %ifs_clm_tx.i to i32
  call void @__asan_load2_noabort(i32 %143)
  %144 = load i16, ptr %ifs_clm_tx.i, align 2
  %conv.i.i.i = zext i16 %144 to i32
  %mul.i.i.i = mul nuw nsw i32 %conv.i.i.i, 100
  %conv2.i.i.i = zext i16 %140 to i32
  %145 = lshr i32 %conv2.i.i.i, 1
  %add.i.i.i = add nuw nsw i32 %mul.i.i.i, %145
  %div.i.i.i = udiv i32 %add.i.i.i, %conv2.i.i.i
  %phi.cast.i.i.i = and i32 %div.i.i.i, 65532
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %phi.cast.i.i.i)
  %cmp.not.i.i.i = icmp ult i32 %phi.cast.i.i.i, 100
  %conv.i.i = trunc i32 %div.i.i.i to i8
  %spec.select.i.i = select i1 %cmp.not.i.i.i, i8 %conv.i.i, i8 99
  %146 = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 38, i32 50
  %147 = ptrtoint ptr %146 to i32
  call void @__asan_store1_noabort(i32 %147)
  store i8 %spec.select.i.i, ptr %146, align 1
  %148 = ptrtoint ptr %ifs_clm_edcca_excl_cca.i to i32
  call void @__asan_load2_noabort(i32 %148)
  %149 = load i16, ptr %ifs_clm_edcca_excl_cca.i, align 4
  %conv.i154.i.i = zext i16 %149 to i32
  %mul.i155.i.i = mul nuw nsw i32 %conv.i154.i.i, 100
  %add.i157.i.i = add nuw nsw i32 %mul.i155.i.i, %145
  %div.i158.i.i = udiv i32 %add.i157.i.i, %conv2.i.i.i
  %phi.cast.i159.i.i = and i32 %div.i158.i.i, 65532
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %phi.cast.i159.i.i)
  %cmp.not.i162.i.i = icmp ult i32 %phi.cast.i159.i.i, 100
  %conv2.i.i = trunc i32 %div.i158.i.i to i8
  %.sink541.i.i = select i1 %cmp.not.i162.i.i, i8 %conv2.i.i, i8 99
  %150 = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 38, i32 51
  %151 = ptrtoint ptr %150 to i32
  call void @__asan_store1_noabort(i32 %151)
  store i8 %.sink541.i.i, ptr %150, align 2
  %152 = ptrtoint ptr %ifs_clm_cckfa.i to i32
  call void @__asan_load2_noabort(i32 %152)
  %153 = load i16, ptr %ifs_clm_cckfa.i, align 2
  %conv.i168.i.i = zext i16 %153 to i32
  %mul.i169.i.i = mul nuw nsw i32 %conv.i168.i.i, 100
  %add.i171.i.i = add nuw nsw i32 %mul.i169.i.i, %145
  %div.i172.i.i = udiv i32 %add.i171.i.i, %conv2.i.i.i
  %phi.cast.i173.i.i = and i32 %div.i172.i.i, 65532
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %phi.cast.i173.i.i)
  %cmp.not.i176.i.i = icmp ult i32 %phi.cast.i173.i.i, 100
  br i1 %cmp.not.i176.i.i, label %155, label %.thread304.i.i

.thread304.i.i:                                   ; preds = %rtw89_phy_ccx_get_report.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %ifs_clm_cck_fa_ratio309.i.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 38, i32 52
  %154 = ptrtoint ptr %ifs_clm_cck_fa_ratio309.i.i to i32
  call void @__asan_store1_noabort(i32 %154)
  store i8 99, ptr %ifs_clm_cck_fa_ratio309.i.i, align 1
  br label %rtw89_phy_ccx_get_report.exit193.i.i

155:                                              ; preds = %rtw89_phy_ccx_get_report.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv4.i.i = trunc i32 %div.i172.i.i to i8
  %ifs_clm_cck_fa_ratio.i.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 38, i32 52
  %156 = ptrtoint ptr %ifs_clm_cck_fa_ratio.i.i to i32
  call void @__asan_store1_noabort(i32 %156)
  store i8 %conv4.i.i, ptr %ifs_clm_cck_fa_ratio.i.i, align 1
  br label %rtw89_phy_ccx_get_report.exit193.i.i

rtw89_phy_ccx_get_report.exit193.i.i:             ; preds = %155, %.thread304.i.i
  %ifs_clm_cck_fa_ratio315.i.i = phi ptr [ %ifs_clm_cck_fa_ratio309.i.i, %.thread304.i.i ], [ %ifs_clm_cck_fa_ratio.i.i, %155 ]
  %157 = ptrtoint ptr %ifs_clm_ofdmfa.i to i32
  call void @__asan_load2_noabort(i32 %157)
  %158 = load i16, ptr %ifs_clm_ofdmfa.i, align 2
  %conv.i182.i.i = zext i16 %158 to i32
  %mul.i183.i.i = mul nuw nsw i32 %conv.i182.i.i, 100
  %add.i185.i.i = add nuw nsw i32 %mul.i183.i.i, %145
  %div.i186.i.i = udiv i32 %add.i185.i.i, %conv2.i.i.i
  %phi.cast.i187.i.i = and i32 %div.i186.i.i, 65532
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %phi.cast.i187.i.i)
  %cmp.not.i190.i.i = icmp ult i32 %phi.cast.i187.i.i, 100
  br i1 %cmp.not.i190.i.i, label %160, label %.thread337.i.i

.thread337.i.i:                                   ; preds = %rtw89_phy_ccx_get_report.exit193.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %ifs_clm_ofdm_fa_ratio343.i.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 38, i32 53
  %159 = ptrtoint ptr %ifs_clm_ofdm_fa_ratio343.i.i to i32
  call void @__asan_store1_noabort(i32 %159)
  store i8 99, ptr %ifs_clm_ofdm_fa_ratio343.i.i, align 8
  br label %rtw89_phy_ccx_get_report.exit207.i.i

160:                                              ; preds = %rtw89_phy_ccx_get_report.exit193.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv6.i.i = trunc i32 %div.i186.i.i to i8
  %ifs_clm_ofdm_fa_ratio.i.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 38, i32 53
  %161 = ptrtoint ptr %ifs_clm_ofdm_fa_ratio.i.i to i32
  call void @__asan_store1_noabort(i32 %161)
  store i8 %conv6.i.i, ptr %ifs_clm_ofdm_fa_ratio.i.i, align 8
  br label %rtw89_phy_ccx_get_report.exit207.i.i

rtw89_phy_ccx_get_report.exit207.i.i:             ; preds = %160, %.thread337.i.i
  %ifs_clm_ofdm_fa_ratio351.i.i = phi ptr [ %ifs_clm_ofdm_fa_ratio343.i.i, %.thread337.i.i ], [ %ifs_clm_ofdm_fa_ratio.i.i, %160 ]
  %162 = ptrtoint ptr %ifs_clm_cckcca_excl_fa.i to i32
  call void @__asan_load2_noabort(i32 %162)
  %163 = load i16, ptr %ifs_clm_cckcca_excl_fa.i, align 4
  %conv.i196.i.i = zext i16 %163 to i32
  %mul.i197.i.i = mul nuw nsw i32 %conv.i196.i.i, 100
  %add.i199.i.i = add nuw nsw i32 %mul.i197.i.i, %145
  %div.i200.i.i = udiv i32 %add.i199.i.i, %conv2.i.i.i
  %phi.cast.i201.i.i = and i32 %div.i200.i.i, 65532
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %phi.cast.i201.i.i)
  %cmp.not.i204.i.i = icmp ult i32 %phi.cast.i201.i.i, 100
  br i1 %cmp.not.i204.i.i, label %165, label %.thread377.i.i

.thread377.i.i:                                   ; preds = %rtw89_phy_ccx_get_report.exit207.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %ifs_clm_cck_cca_excl_fa_ratio384.i.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 38, i32 54
  %164 = ptrtoint ptr %ifs_clm_cck_cca_excl_fa_ratio384.i.i to i32
  call void @__asan_store1_noabort(i32 %164)
  store i8 99, ptr %ifs_clm_cck_cca_excl_fa_ratio384.i.i, align 1
  br label %rtw89_phy_ccx_get_report.exit221.i.i

165:                                              ; preds = %rtw89_phy_ccx_get_report.exit207.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv8.i.i = trunc i32 %div.i200.i.i to i8
  %ifs_clm_cck_cca_excl_fa_ratio.i.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 38, i32 54
  %166 = ptrtoint ptr %ifs_clm_cck_cca_excl_fa_ratio.i.i to i32
  call void @__asan_store1_noabort(i32 %166)
  store i8 %conv8.i.i, ptr %ifs_clm_cck_cca_excl_fa_ratio.i.i, align 1
  br label %rtw89_phy_ccx_get_report.exit221.i.i

rtw89_phy_ccx_get_report.exit221.i.i:             ; preds = %165, %.thread377.i.i
  %ifs_clm_cck_cca_excl_fa_ratio394.i.i = phi ptr [ %ifs_clm_cck_cca_excl_fa_ratio384.i.i, %.thread377.i.i ], [ %ifs_clm_cck_cca_excl_fa_ratio.i.i, %165 ]
  %167 = ptrtoint ptr %ifs_clm_ofdmcca_excl_fa.i to i32
  call void @__asan_load2_noabort(i32 %167)
  %168 = load i16, ptr %ifs_clm_ofdmcca_excl_fa.i, align 8
  %conv.i210.i.i = zext i16 %168 to i32
  %mul.i211.i.i = mul nuw nsw i32 %conv.i210.i.i, 100
  %add.i213.i.i = add nuw nsw i32 %mul.i211.i.i, %145
  %div.i214.i.i = udiv i32 %add.i213.i.i, %conv2.i.i.i
  %phi.cast.i215.i.i = and i32 %div.i214.i.i, 65532
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %phi.cast.i215.i.i)
  %cmp.not.i218.i.i = icmp ult i32 %phi.cast.i215.i.i, 100
  br i1 %cmp.not.i218.i.i, label %170, label %.thread424.i.i

.thread424.i.i:                                   ; preds = %rtw89_phy_ccx_get_report.exit221.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %ifs_clm_ofdm_cca_excl_fa_ratio432.i.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 38, i32 55
  %169 = ptrtoint ptr %ifs_clm_ofdm_cca_excl_fa_ratio432.i.i to i32
  call void @__asan_store1_noabort(i32 %169)
  store i8 99, ptr %ifs_clm_ofdm_cca_excl_fa_ratio432.i.i, align 2
  br label %rtw89_phy_ccx_get_report.exit235.i.i

170:                                              ; preds = %rtw89_phy_ccx_get_report.exit221.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv10.i.i = trunc i32 %div.i214.i.i to i8
  %ifs_clm_ofdm_cca_excl_fa_ratio.i.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 38, i32 55
  %171 = ptrtoint ptr %ifs_clm_ofdm_cca_excl_fa_ratio.i.i to i32
  call void @__asan_store1_noabort(i32 %171)
  store i8 %conv10.i.i, ptr %ifs_clm_ofdm_cca_excl_fa_ratio.i.i, align 2
  br label %rtw89_phy_ccx_get_report.exit235.i.i

rtw89_phy_ccx_get_report.exit235.i.i:             ; preds = %170, %.thread424.i.i
  %ifs_clm_ofdm_cca_excl_fa_ratio443.i.i = phi ptr [ %ifs_clm_ofdm_cca_excl_fa_ratio432.i.i, %.thread424.i.i ], [ %ifs_clm_ofdm_cca_excl_fa_ratio.i.i, %170 ]
  %mul.i225.i.i = mul nuw nsw i32 %conv.i168.i.i, 1000
  %add.i227.i.i = add nuw nsw i32 %mul.i225.i.i, %145
  %div.i228.i.i = udiv i32 %add.i227.i.i, %conv2.i.i.i
  %phi.cast.i229.i.i = and i32 %div.i228.i.i, 65528
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %phi.cast.i229.i.i)
  %cmp.not.i232.i.i = icmp ult i32 %phi.cast.i229.i.i, 1000
  br i1 %cmp.not.i232.i.i, label %173, label %.thread476.i.i

.thread476.i.i:                                   ; preds = %rtw89_phy_ccx_get_report.exit235.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %ifs_clm_cck_fa_permil484.i.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 38, i32 56
  %172 = ptrtoint ptr %ifs_clm_cck_fa_permil484.i.i to i32
  call void @__asan_store2_noabort(i32 %172)
  store i16 999, ptr %ifs_clm_cck_fa_permil484.i.i, align 4
  br label %rtw89_phy_ccx_get_report.exit249.i.i

173:                                              ; preds = %rtw89_phy_ccx_get_report.exit235.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv12.i234.i.i = trunc i32 %div.i228.i.i to i16
  %ifs_clm_cck_fa_permil.i.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 38, i32 56
  %174 = ptrtoint ptr %ifs_clm_cck_fa_permil.i.i to i32
  call void @__asan_store2_noabort(i32 %174)
  store i16 %conv12.i234.i.i, ptr %ifs_clm_cck_fa_permil.i.i, align 4
  br label %rtw89_phy_ccx_get_report.exit249.i.i

rtw89_phy_ccx_get_report.exit249.i.i:             ; preds = %173, %.thread476.i.i
  %ifs_clm_cck_fa_permil497.i.i = phi ptr [ %ifs_clm_cck_fa_permil484.i.i, %.thread476.i.i ], [ %ifs_clm_cck_fa_permil.i.i, %173 ]
  %mul.i239.i.i = mul nuw nsw i32 %conv.i182.i.i, 1000
  %add.i241.i.i = add nuw nsw i32 %mul.i239.i.i, %145
  %div.i242.i.i = udiv i32 %add.i241.i.i, %conv2.i.i.i
  %phi.cast.i243.i.i = and i32 %div.i242.i.i, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %phi.cast.i243.i.i)
  %cmp.not.i246.i.i = icmp ult i32 %phi.cast.i243.i.i, 1000
  br i1 %cmp.not.i246.i.i, label %rtw89_phy_ccx_get_report.exit249.i.i._crit_edge, label %rtw89_phy_ccx_get_report.exit249.i.i.for.body.i.i_crit_edge

rtw89_phy_ccx_get_report.exit249.i.i.for.body.i.i_crit_edge: ; preds = %rtw89_phy_ccx_get_report.exit249.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

rtw89_phy_ccx_get_report.exit249.i.i._crit_edge:  ; preds = %rtw89_phy_ccx_get_report.exit249.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %175

175:                                              ; preds = %rtw89_phy_ccx_get_report.exit249.i.i._crit_edge, %rtw89_phy_ccx_get_report.exit249.thread.i.i
  %ret.0.i245532.i.i = phi i32 [ 0, %rtw89_phy_ccx_get_report.exit249.thread.i.i ], [ %phi.cast.i243.i.i, %rtw89_phy_ccx_get_report.exit249.i.i._crit_edge ]
  %conv265275285301312334346374387421434473486531.i.i = phi i8 [ 0, %rtw89_phy_ccx_get_report.exit249.thread.i.i ], [ %spec.select.i.i, %rtw89_phy_ccx_get_report.exit249.i.i._crit_edge ]
  %conv2287299314332348372389419436471488529.i.i = phi i8 [ 0, %rtw89_phy_ccx_get_report.exit249.thread.i.i ], [ %.sink541.i.i, %rtw89_phy_ccx_get_report.exit249.i.i._crit_edge ]
  %ifs_clm_cck_fa_ratio316330350370391417438469490527.i.i = phi ptr [ %ifs_clm_cck_fa_ratio323.i.i, %rtw89_phy_ccx_get_report.exit249.thread.i.i ], [ %ifs_clm_cck_fa_ratio315.i.i, %rtw89_phy_ccx_get_report.exit249.i.i._crit_edge ]
  %ifs_clm_ofdm_fa_ratio352368393415440467492525.i.i = phi ptr [ %ifs_clm_ofdm_fa_ratio360.i.i, %rtw89_phy_ccx_get_report.exit249.thread.i.i ], [ %ifs_clm_ofdm_fa_ratio351.i.i, %rtw89_phy_ccx_get_report.exit249.i.i._crit_edge ]
  %ifs_clm_cck_cca_excl_fa_ratio395413442465494523.i.i = phi ptr [ %ifs_clm_cck_cca_excl_fa_ratio404.i.i, %rtw89_phy_ccx_get_report.exit249.thread.i.i ], [ %ifs_clm_cck_cca_excl_fa_ratio394.i.i, %rtw89_phy_ccx_get_report.exit249.i.i._crit_edge ]
  %ifs_clm_ofdm_cca_excl_fa_ratio444463496521.i.i = phi ptr [ %ifs_clm_ofdm_cca_excl_fa_ratio454.i.i, %rtw89_phy_ccx_get_report.exit249.thread.i.i ], [ %ifs_clm_ofdm_cca_excl_fa_ratio443.i.i, %rtw89_phy_ccx_get_report.exit249.i.i._crit_edge ]
  %ifs_clm_cck_fa_permil498519.i.i = phi ptr [ %ifs_clm_cck_fa_permil508.i.i, %rtw89_phy_ccx_get_report.exit249.thread.i.i ], [ %ifs_clm_cck_fa_permil497.i.i, %rtw89_phy_ccx_get_report.exit249.i.i._crit_edge ]
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %175, %rtw89_phy_ccx_get_report.exit249.i.i.for.body.i.i_crit_edge
  %conv265275285301312334346374387421434473486530.i.i = phi i8 [ %conv265275285301312334346374387421434473486531.i.i, %175 ], [ %spec.select.i.i, %rtw89_phy_ccx_get_report.exit249.i.i.for.body.i.i_crit_edge ]
  %conv2287299314332348372389419436471488528.i.i = phi i8 [ %conv2287299314332348372389419436471488529.i.i, %175 ], [ %.sink541.i.i, %rtw89_phy_ccx_get_report.exit249.i.i.for.body.i.i_crit_edge ]
  %ifs_clm_cck_fa_ratio316330350370391417438469490526.i.i = phi ptr [ %ifs_clm_cck_fa_ratio316330350370391417438469490527.i.i, %175 ], [ %ifs_clm_cck_fa_ratio315.i.i, %rtw89_phy_ccx_get_report.exit249.i.i.for.body.i.i_crit_edge ]
  %ifs_clm_ofdm_fa_ratio352368393415440467492524.i.i = phi ptr [ %ifs_clm_ofdm_fa_ratio352368393415440467492525.i.i, %175 ], [ %ifs_clm_ofdm_fa_ratio351.i.i, %rtw89_phy_ccx_get_report.exit249.i.i.for.body.i.i_crit_edge ]
  %ifs_clm_cck_cca_excl_fa_ratio395413442465494522.i.i = phi ptr [ %ifs_clm_cck_cca_excl_fa_ratio395413442465494523.i.i, %175 ], [ %ifs_clm_cck_cca_excl_fa_ratio394.i.i, %rtw89_phy_ccx_get_report.exit249.i.i.for.body.i.i_crit_edge ]
  %ifs_clm_ofdm_cca_excl_fa_ratio444463496520.i.i = phi ptr [ %ifs_clm_ofdm_cca_excl_fa_ratio444463496521.i.i, %175 ], [ %ifs_clm_ofdm_cca_excl_fa_ratio443.i.i, %rtw89_phy_ccx_get_report.exit249.i.i.for.body.i.i_crit_edge ]
  %ifs_clm_cck_fa_permil498518.i.i = phi ptr [ %ifs_clm_cck_fa_permil498519.i.i, %175 ], [ %ifs_clm_cck_fa_permil497.i.i, %rtw89_phy_ccx_get_report.exit249.i.i.for.body.i.i_crit_edge ]
  %176 = phi i32 [ %ret.0.i245532.i.i, %175 ], [ 66535, %rtw89_phy_ccx_get_report.exit249.i.i.for.body.i.i_crit_edge ]
  %conv12.i248.i.i = trunc i32 %176 to i16
  %ifs_clm_ofdm_fa_permil.i.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 38, i32 57
  %177 = ptrtoint ptr %ifs_clm_ofdm_fa_permil.i.i to i32
  call void @__asan_store2_noabort(i32 %177)
  store i16 %conv12.i248.i.i, ptr %ifs_clm_ofdm_fa_permil.i.i, align 2
  %ccx_unit_idx.i.i.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 38, i32 15
  %178 = ptrtoint ptr %ifs_clm_his.i to i32
  call void @__asan_load1_noabort(i32 %178)
  %179 = load i8, ptr %ifs_clm_his.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %179)
  %cmp18.i.i = icmp slt i8 %179, 0
  br i1 %cmp18.i.i, label %if.end.thread.i.i, label %if.end.i.i

if.end.thread.i.i:                                ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %180 = getelementptr %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 38, i32 58, i32 0
  %181 = ptrtoint ptr %180 to i32
  call void @__asan_store4_noabort(i32 %181)
  store i32 -1, ptr %180, align 4
  br label %if.then38.i.i

if.end.i.i:                                       ; preds = %for.body.i.i
  %182 = ptrtoint ptr %ifs_clm_avg.i to i32
  call void @__asan_load2_noabort(i32 %182)
  %183 = load i16, ptr %ifs_clm_avg.i, align 2
  %conv.i250.i.i = zext i16 %183 to i32
  %184 = ptrtoint ptr %ccx_unit_idx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %184)
  %185 = load i8, ptr %ccx_unit_idx.i.i.i, align 2
  %conv1.i.i.i = zext i8 %185 to i32
  %add.i251.i.i = add nuw nsw i32 %conv1.i.i.i, 2
  %shl.i.i.i = shl i32 %conv.i250.i.i, %add.i251.i.i
  %186 = getelementptr %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 38, i32 58, i32 0
  %187 = ptrtoint ptr %186 to i32
  call void @__asan_store4_noabort(i32 %187)
  store i32 %shl.i.i.i, ptr %186, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %179)
  %tobool.not.i.i = icmp eq i8 %179, 0
  br i1 %tobool.not.i.i, label %if.end.i.i.if.end44.i.i_crit_edge, label %if.end.i.i.if.then38.i.i_crit_edge

if.end.i.i.if.then38.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then38.i.i

if.end.i.i.if.end44.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end44.i.i

if.then38.i.i:                                    ; preds = %if.end.i.i.if.then38.i.i_crit_edge, %if.end.thread.i.i
  %188 = phi ptr [ %180, %if.end.thread.i.i ], [ %186, %if.end.i.i.if.then38.i.i_crit_edge ]
  %189 = ptrtoint ptr %ifs_clm_cca.i to i32
  call void @__asan_load2_noabort(i32 %189)
  %190 = load i16, ptr %ifs_clm_cca.i, align 2
  %conv.i252.i.i = zext i16 %190 to i32
  %191 = ptrtoint ptr %ccx_unit_idx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %191)
  %192 = load i8, ptr %ccx_unit_idx.i.i.i, align 2
  %conv1.i254.i.i = zext i8 %192 to i32
  %add.i255.i.i = add nuw nsw i32 %conv1.i254.i.i, 2
  %shl.i256.i.i = shl i32 %conv.i252.i.i, %add.i255.i.i
  %conv34.i.i = zext i8 %179 to i32
  %193 = lshr i32 %conv34.i.i, 1
  %add.i.i = add i32 %shl.i256.i.i, %193
  %div.i.i = udiv i32 %add.i.i, %conv34.i.i
  br label %if.end44.i.i

if.end44.i.i:                                     ; preds = %if.then38.i.i, %if.end.i.i.if.end44.i.i_crit_edge
  %194 = phi ptr [ %188, %if.then38.i.i ], [ %186, %if.end.i.i.if.end44.i.i_crit_edge ]
  %res.0.i.i = phi i32 [ %div.i.i, %if.then38.i.i ], [ 0, %if.end.i.i.if.end44.i.i_crit_edge ]
  %arrayidx46.i.i = getelementptr %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 38, i32 59, i32 0
  %195 = ptrtoint ptr %arrayidx46.i.i to i32
  call void @__asan_store4_noabort(i32 %195)
  store i32 %res.0.i.i, ptr %arrayidx46.i.i, align 4
  %196 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load1_noabort(i32 %196)
  %197 = load i8, ptr %arrayidx17.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %197)
  %cmp18.1.i.i = icmp slt i8 %197, 0
  br i1 %cmp18.1.i.i, label %if.end.1.thread.i.i, label %if.end.1.i.i

if.end.1.thread.i.i:                              ; preds = %if.end44.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %198 = getelementptr %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 38, i32 58, i32 1
  %199 = ptrtoint ptr %198 to i32
  call void @__asan_store4_noabort(i32 %199)
  store i32 -1, ptr %198, align 4
  br label %if.then38.1.i.i

if.end.1.i.i:                                     ; preds = %if.end44.i.i
  %200 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_load2_noabort(i32 %200)
  %201 = load i16, ptr %arrayidx32.i, align 2
  %conv.i250.1.i.i = zext i16 %201 to i32
  %202 = ptrtoint ptr %ccx_unit_idx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %202)
  %203 = load i8, ptr %ccx_unit_idx.i.i.i, align 2
  %conv1.i.1.i.i = zext i8 %203 to i32
  %add.i251.1.i.i = add nuw nsw i32 %conv1.i.1.i.i, 2
  %shl.i.1.i.i = shl i32 %conv.i250.1.i.i, %add.i251.1.i.i
  %204 = getelementptr %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 38, i32 58, i32 1
  %205 = ptrtoint ptr %204 to i32
  call void @__asan_store4_noabort(i32 %205)
  store i32 %shl.i.1.i.i, ptr %204, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %197)
  %tobool.not.1.i.i = icmp eq i8 %197, 0
  br i1 %tobool.not.1.i.i, label %if.end.1.i.i.if.end44.1.i.i_crit_edge, label %if.end.1.i.i.if.then38.1.i.i_crit_edge

if.end.1.i.i.if.then38.1.i.i_crit_edge:           ; preds = %if.end.1.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then38.1.i.i

if.end.1.i.i.if.end44.1.i.i_crit_edge:            ; preds = %if.end.1.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end44.1.i.i

if.then38.1.i.i:                                  ; preds = %if.end.1.i.i.if.then38.1.i.i_crit_edge, %if.end.1.thread.i.i
  %206 = phi ptr [ %198, %if.end.1.thread.i.i ], [ %204, %if.end.1.i.i.if.then38.1.i.i_crit_edge ]
  %207 = ptrtoint ptr %arrayidx47.i to i32
  call void @__asan_load2_noabort(i32 %207)
  %208 = load i16, ptr %arrayidx47.i, align 2
  %conv.i252.1.i.i = zext i16 %208 to i32
  %209 = ptrtoint ptr %ccx_unit_idx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %209)
  %210 = load i8, ptr %ccx_unit_idx.i.i.i, align 2
  %conv1.i254.1.i.i = zext i8 %210 to i32
  %add.i255.1.i.i = add nuw nsw i32 %conv1.i254.1.i.i, 2
  %shl.i256.1.i.i = shl i32 %conv.i252.1.i.i, %add.i255.1.i.i
  %conv34.1.i.i = zext i8 %197 to i32
  %211 = lshr i32 %conv34.1.i.i, 1
  %add.1.i.i = add i32 %shl.i256.1.i.i, %211
  %div.1.i.i = udiv i32 %add.1.i.i, %conv34.1.i.i
  br label %if.end44.1.i.i

if.end44.1.i.i:                                   ; preds = %if.then38.1.i.i, %if.end.1.i.i.if.end44.1.i.i_crit_edge
  %212 = phi ptr [ %206, %if.then38.1.i.i ], [ %204, %if.end.1.i.i.if.end44.1.i.i_crit_edge ]
  %res.0.1.i.i = phi i32 [ %div.1.i.i, %if.then38.1.i.i ], [ 0, %if.end.1.i.i.if.end44.1.i.i_crit_edge ]
  %arrayidx46.1.i.i = getelementptr %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 38, i32 59, i32 1
  %213 = ptrtoint ptr %arrayidx46.1.i.i to i32
  call void @__asan_store4_noabort(i32 %213)
  store i32 %res.0.1.i.i, ptr %arrayidx46.1.i.i, align 4
  %214 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_load1_noabort(i32 %214)
  %215 = load i8, ptr %arrayidx21.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %215)
  %cmp18.2.i.i = icmp slt i8 %215, 0
  br i1 %cmp18.2.i.i, label %if.end.2.thread.i.i, label %if.end.2.i.i

if.end.2.thread.i.i:                              ; preds = %if.end44.1.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %216 = getelementptr %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 38, i32 58, i32 2
  %217 = ptrtoint ptr %216 to i32
  call void @__asan_store4_noabort(i32 %217)
  store i32 -1, ptr %216, align 4
  br label %if.then38.2.i.i

if.end.2.i.i:                                     ; preds = %if.end44.1.i.i
  %218 = ptrtoint ptr %arrayidx36.i to i32
  call void @__asan_load2_noabort(i32 %218)
  %219 = load i16, ptr %arrayidx36.i, align 2
  %conv.i250.2.i.i = zext i16 %219 to i32
  %220 = ptrtoint ptr %ccx_unit_idx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %220)
  %221 = load i8, ptr %ccx_unit_idx.i.i.i, align 2
  %conv1.i.2.i.i = zext i8 %221 to i32
  %add.i251.2.i.i = add nuw nsw i32 %conv1.i.2.i.i, 2
  %shl.i.2.i.i = shl i32 %conv.i250.2.i.i, %add.i251.2.i.i
  %222 = getelementptr %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 38, i32 58, i32 2
  %223 = ptrtoint ptr %222 to i32
  call void @__asan_store4_noabort(i32 %223)
  store i32 %shl.i.2.i.i, ptr %222, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %215)
  %tobool.not.2.i.i = icmp eq i8 %215, 0
  br i1 %tobool.not.2.i.i, label %if.end.2.i.i.if.end44.2.i.i_crit_edge, label %if.end.2.i.i.if.then38.2.i.i_crit_edge

if.end.2.i.i.if.then38.2.i.i_crit_edge:           ; preds = %if.end.2.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then38.2.i.i

if.end.2.i.i.if.end44.2.i.i_crit_edge:            ; preds = %if.end.2.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end44.2.i.i

if.then38.2.i.i:                                  ; preds = %if.end.2.i.i.if.then38.2.i.i_crit_edge, %if.end.2.thread.i.i
  %224 = phi ptr [ %216, %if.end.2.thread.i.i ], [ %222, %if.end.2.i.i.if.then38.2.i.i_crit_edge ]
  %225 = ptrtoint ptr %arrayidx51.i to i32
  call void @__asan_load2_noabort(i32 %225)
  %226 = load i16, ptr %arrayidx51.i, align 2
  %conv.i252.2.i.i = zext i16 %226 to i32
  %227 = ptrtoint ptr %ccx_unit_idx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %227)
  %228 = load i8, ptr %ccx_unit_idx.i.i.i, align 2
  %conv1.i254.2.i.i = zext i8 %228 to i32
  %add.i255.2.i.i = add nuw nsw i32 %conv1.i254.2.i.i, 2
  %shl.i256.2.i.i = shl i32 %conv.i252.2.i.i, %add.i255.2.i.i
  %conv34.2.i.i = zext i8 %215 to i32
  %229 = lshr i32 %conv34.2.i.i, 1
  %add.2.i.i = add i32 %shl.i256.2.i.i, %229
  %div.2.i.i = udiv i32 %add.2.i.i, %conv34.2.i.i
  br label %if.end44.2.i.i

if.end44.2.i.i:                                   ; preds = %if.then38.2.i.i, %if.end.2.i.i.if.end44.2.i.i_crit_edge
  %230 = phi ptr [ %224, %if.then38.2.i.i ], [ %222, %if.end.2.i.i.if.end44.2.i.i_crit_edge ]
  %res.0.2.i.i = phi i32 [ %div.2.i.i, %if.then38.2.i.i ], [ 0, %if.end.2.i.i.if.end44.2.i.i_crit_edge ]
  %arrayidx46.2.i.i = getelementptr %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 38, i32 59, i32 2
  %231 = ptrtoint ptr %arrayidx46.2.i.i to i32
  call void @__asan_store4_noabort(i32 %231)
  store i32 %res.0.2.i.i, ptr %arrayidx46.2.i.i, align 4
  %232 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_load1_noabort(i32 %232)
  %233 = load i8, ptr %arrayidx25.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %233)
  %cmp18.3.i.i = icmp slt i8 %233, 0
  br i1 %cmp18.3.i.i, label %if.end.3.thread.i.i, label %if.end.3.i.i

if.end.3.thread.i.i:                              ; preds = %if.end44.2.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %234 = getelementptr %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 38, i32 58, i32 3
  %235 = ptrtoint ptr %234 to i32
  call void @__asan_store4_noabort(i32 %235)
  store i32 -1, ptr %234, align 4
  br label %if.then38.3.i.i

if.end.3.i.i:                                     ; preds = %if.end44.2.i.i
  %236 = ptrtoint ptr %arrayidx40.i to i32
  call void @__asan_load2_noabort(i32 %236)
  %237 = load i16, ptr %arrayidx40.i, align 2
  %conv.i250.3.i.i = zext i16 %237 to i32
  %238 = ptrtoint ptr %ccx_unit_idx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %238)
  %239 = load i8, ptr %ccx_unit_idx.i.i.i, align 2
  %conv1.i.3.i.i = zext i8 %239 to i32
  %add.i251.3.i.i = add nuw nsw i32 %conv1.i.3.i.i, 2
  %shl.i.3.i.i = shl i32 %conv.i250.3.i.i, %add.i251.3.i.i
  %240 = getelementptr %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 38, i32 58, i32 3
  %241 = ptrtoint ptr %240 to i32
  call void @__asan_store4_noabort(i32 %241)
  store i32 %shl.i.3.i.i, ptr %240, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %233)
  %tobool.not.3.i.i = icmp eq i8 %233, 0
  br i1 %tobool.not.3.i.i, label %if.end.3.i.i.if.then1_crit_edge, label %if.end.3.i.i.if.then38.3.i.i_crit_edge

if.end.3.i.i.if.then38.3.i.i_crit_edge:           ; preds = %if.end.3.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then38.3.i.i

if.end.3.i.i.if.then1_crit_edge:                  ; preds = %if.end.3.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then1

if.then38.3.i.i:                                  ; preds = %if.end.3.i.i.if.then38.3.i.i_crit_edge, %if.end.3.thread.i.i
  %242 = phi ptr [ %234, %if.end.3.thread.i.i ], [ %240, %if.end.3.i.i.if.then38.3.i.i_crit_edge ]
  %243 = ptrtoint ptr %arrayidx55.i to i32
  call void @__asan_load2_noabort(i32 %243)
  %244 = load i16, ptr %arrayidx55.i, align 2
  %conv.i252.3.i.i = zext i16 %244 to i32
  %245 = ptrtoint ptr %ccx_unit_idx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %245)
  %246 = load i8, ptr %ccx_unit_idx.i.i.i, align 2
  %conv1.i254.3.i.i = zext i8 %246 to i32
  %add.i255.3.i.i = add nuw nsw i32 %conv1.i254.3.i.i, 2
  %shl.i256.3.i.i = shl i32 %conv.i252.3.i.i, %add.i255.3.i.i
  %conv34.3.i.i = zext i8 %233 to i32
  %247 = lshr i32 %conv34.3.i.i, 1
  %add.3.i.i = add i32 %shl.i256.3.i.i, %247
  %div.3.i.i = udiv i32 %add.3.i.i, %conv34.3.i.i
  br label %if.then1

rtw89_phy_ifs_clm_get_result.exit:                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, ptr, ...) @__rtw89_debug(ptr noundef %rtwdev, i32 noundef 512, ptr noundef nonnull @.str.81) #10
  br label %if.end.i.i35

if.then1:                                         ; preds = %if.then38.3.i.i, %if.end.3.i.i.if.then1_crit_edge
  %248 = phi ptr [ %242, %if.then38.3.i.i ], [ %240, %if.end.3.i.i.if.then1_crit_edge ]
  %res.0.3.i.i = phi i32 [ %div.3.i.i, %if.then38.3.i.i ], [ 0, %if.end.3.i.i.if.then1_crit_edge ]
  %arrayidx46.3.i.i = getelementptr %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 38, i32 59, i32 3
  %249 = ptrtoint ptr %arrayidx46.3.i.i to i32
  call void @__asan_store4_noabort(i32 %249)
  store i32 %res.0.3.i.i, ptr %arrayidx46.3.i.i, align 4
  %conv48.i.i = zext i8 %conv265275285301312334346374387421434473486530.i.i to i32
  %conv50.i.i = zext i8 %conv2287299314332348372389419436471488528.i.i to i32
  tail call void (ptr, i32, ptr, ...) @__rtw89_debug(ptr noundef %rtwdev, i32 noundef 512, ptr noundef nonnull @.str.88, i32 noundef %conv48.i.i, i32 noundef %conv50.i.i) #10
  %250 = ptrtoint ptr %ifs_clm_cck_fa_ratio316330350370391417438469490526.i.i to i32
  call void @__asan_load1_noabort(i32 %250)
  %251 = load i8, ptr %ifs_clm_cck_fa_ratio316330350370391417438469490526.i.i, align 1
  %conv52.i.i = zext i8 %251 to i32
  %252 = ptrtoint ptr %ifs_clm_ofdm_fa_ratio352368393415440467492524.i.i to i32
  call void @__asan_load1_noabort(i32 %252)
  %253 = load i8, ptr %ifs_clm_ofdm_fa_ratio352368393415440467492524.i.i, align 8
  %conv54.i.i = zext i8 %253 to i32
  tail call void (ptr, i32, ptr, ...) @__rtw89_debug(ptr noundef %rtwdev, i32 noundef 512, ptr noundef nonnull @.str.89, i32 noundef %conv52.i.i, i32 noundef %conv54.i.i) #10
  %254 = ptrtoint ptr %ifs_clm_cck_fa_permil498518.i.i to i32
  call void @__asan_load2_noabort(i32 %254)
  %255 = load i16, ptr %ifs_clm_cck_fa_permil498518.i.i, align 4
  %conv56.i.i = zext i16 %255 to i32
  %256 = ptrtoint ptr %ifs_clm_ofdm_fa_permil.i.i to i32
  call void @__asan_load2_noabort(i32 %256)
  %257 = load i16, ptr %ifs_clm_ofdm_fa_permil.i.i, align 2
  %conv58.i.i = zext i16 %257 to i32
  tail call void (ptr, i32, ptr, ...) @__rtw89_debug(ptr noundef %rtwdev, i32 noundef 512, ptr noundef nonnull @.str.90, i32 noundef %conv56.i.i, i32 noundef %conv58.i.i) #10
  %258 = ptrtoint ptr %ifs_clm_cck_cca_excl_fa_ratio395413442465494522.i.i to i32
  call void @__asan_load1_noabort(i32 %258)
  %259 = load i8, ptr %ifs_clm_cck_cca_excl_fa_ratio395413442465494522.i.i, align 1
  %conv60.i.i = zext i8 %259 to i32
  %260 = ptrtoint ptr %ifs_clm_ofdm_cca_excl_fa_ratio444463496520.i.i to i32
  call void @__asan_load1_noabort(i32 %260)
  %261 = load i8, ptr %ifs_clm_ofdm_cca_excl_fa_ratio444463496520.i.i, align 2
  %conv62.i.i = zext i8 %261 to i32
  tail call void (ptr, i32, ptr, ...) @__rtw89_debug(ptr noundef %rtwdev, i32 noundef 512, ptr noundef nonnull @.str.91, i32 noundef %conv60.i.i, i32 noundef %conv62.i.i) #10
  tail call void (ptr, i32, ptr, ...) @__rtw89_debug(ptr noundef %rtwdev, i32 noundef 512, ptr noundef nonnull @.str.92) #10
  %262 = ptrtoint ptr %ifs_clm_his.i to i32
  call void @__asan_load1_noabort(i32 %262)
  %263 = load i8, ptr %ifs_clm_his.i, align 1
  %conv73.i.i = zext i8 %263 to i32
  %264 = ptrtoint ptr %194 to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load i32, ptr %194, align 4
  %266 = ptrtoint ptr %arrayidx46.i.i to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load i32, ptr %arrayidx46.i.i, align 4
  tail call void (ptr, i32, ptr, ...) @__rtw89_debug(ptr noundef %rtwdev, i32 noundef 512, ptr noundef nonnull @.str.87, i32 noundef 1, i32 noundef %conv73.i.i, i32 noundef %265, i32 noundef %267) #10
  %268 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load1_noabort(i32 %268)
  %269 = load i8, ptr %arrayidx17.i, align 1
  %conv73.1.i.i = zext i8 %269 to i32
  %270 = ptrtoint ptr %212 to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load i32, ptr %212, align 4
  %272 = ptrtoint ptr %arrayidx46.1.i.i to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load i32, ptr %arrayidx46.1.i.i, align 4
  tail call void (ptr, i32, ptr, ...) @__rtw89_debug(ptr noundef %rtwdev, i32 noundef 512, ptr noundef nonnull @.str.87, i32 noundef 2, i32 noundef %conv73.1.i.i, i32 noundef %271, i32 noundef %273) #10
  %274 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_load1_noabort(i32 %274)
  %275 = load i8, ptr %arrayidx21.i, align 1
  %conv73.2.i.i = zext i8 %275 to i32
  %276 = ptrtoint ptr %230 to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load i32, ptr %230, align 4
  %278 = ptrtoint ptr %arrayidx46.2.i.i to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load i32, ptr %arrayidx46.2.i.i, align 4
  tail call void (ptr, i32, ptr, ...) @__rtw89_debug(ptr noundef %rtwdev, i32 noundef 512, ptr noundef nonnull @.str.87, i32 noundef 3, i32 noundef %conv73.2.i.i, i32 noundef %277, i32 noundef %279) #10
  %280 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_load1_noabort(i32 %280)
  %281 = load i8, ptr %arrayidx25.i, align 1
  %conv73.3.i.i = zext i8 %281 to i32
  %282 = ptrtoint ptr %248 to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load i32, ptr %248, align 4
  %284 = ptrtoint ptr %arrayidx46.3.i.i to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load i32, ptr %arrayidx46.3.i.i, align 4
  tail call void (ptr, i32, ptr, ...) @__rtw89_debug(ptr noundef %rtwdev, i32 noundef 512, ptr noundef nonnull @.str.87, i32 noundef 4, i32 noundef %conv73.3.i.i, i32 noundef %283, i32 noundef %285) #10
  %286 = ptrtoint ptr %ccx_watchdog_result to i32
  call void @__asan_load1_noabort(i32 %286)
  %287 = load i8, ptr %ccx_watchdog_result, align 1
  %288 = or i8 %287, 8
  store i8 %288, ptr %ccx_watchdog_result, align 1
  br label %if.end.i.i35

if.end.i.i35:                                     ; preds = %if.then1, %rtw89_phy_ifs_clm_get_result.exit
  %ccx_rac_lv.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 38, i32 5
  %289 = ptrtoint ptr %ccx_rac_lv.i to i32
  call void @__asan_load1_noabort(i32 %289)
  %290 = load i8, ptr %ccx_rac_lv.i, align 1
  %conv.i31 = zext i8 %290 to i32
  tail call void (ptr, i32, ptr, ...) @__rtw89_debug(ptr noundef %rtwdev, i32 noundef 512, ptr noundef nonnull @.str.93, i32 noundef %conv.i31) #10
  %ccx_ongoing.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 38, i32 4
  %291 = ptrtoint ptr %ccx_ongoing.i to i32
  call void @__asan_store1_noabort(i32 %291)
  store i8 0, ptr %ccx_ongoing.i, align 2
  %292 = ptrtoint ptr %ccx_rac_lv.i to i32
  call void @__asan_store1_noabort(i32 %292)
  store i8 0, ptr %ccx_rac_lv.i, align 1
  %ifs_clm_app.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 38, i32 11
  %293 = ptrtoint ptr %ifs_clm_app.i to i32
  call void @__asan_store4_noabort(i32 %293)
  store i32 1, ptr %ifs_clm_app.i, align 4
  tail call void (ptr, i32, ptr, ...) @__rtw89_debug(ptr noundef %rtwdev, i32 noundef 512, ptr noundef nonnull @.str.97, i32 noundef 0, i32 noundef 0, i32 noundef 1) #10
  %294 = ptrtoint ptr %ccx_ongoing.i to i32
  call void @__asan_load1_noabort(i32 %294)
  %295 = load i8, ptr %ccx_ongoing.i, align 2, !range !291
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %295)
  %tobool3.not.i.i = icmp eq i8 %295, 0
  br i1 %tobool3.not.i.i, label %if.end.i.i35.if.end3.i_crit_edge, label %if.then4.i.i

if.end.i.i35.if.end3.i_crit_edge:                 ; preds = %if.end.i.i35
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end3.i

if.then4.i.i:                                     ; preds = %if.end.i.i35
  %296 = ptrtoint ptr %ccx_rac_lv.i to i32
  call void @__asan_load1_noabort(i32 %296)
  %297 = load i8, ptr %ccx_rac_lv.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %297)
  %cmp7.not.i.i = icmp eq i8 %297, 0
  br i1 %cmp7.not.i.i, label %if.else.i.i, label %rtw89_phy_ifs_clm_set.exit

if.else.i.i:                                      ; preds = %if.then4.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %298 = ptrtoint ptr %ccx_ongoing.i to i32
  call void @__asan_store1_noabort(i32 %298)
  store i8 0, ptr %ccx_ongoing.i, align 2
  br label %if.end3.i

if.end3.i:                                        ; preds = %if.else.i.i, %if.end.i.i35.if.end3.i_crit_edge
  %299 = ptrtoint ptr %ccx_rac_lv.i to i32
  call void @__asan_store1_noabort(i32 %299)
  store i8 1, ptr %ccx_rac_lv.i, align 1
  tail call void (ptr, i32, ptr, ...) @__rtw89_debug(ptr noundef %rtwdev, i32 noundef 512, ptr noundef nonnull @.str.98, i32 noundef 1) #10
  %ifs_clm_mntr_time.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 38, i32 10
  %300 = ptrtoint ptr %ifs_clm_mntr_time.i to i32
  call void @__asan_load2_noabort(i32 %300)
  %301 = load i16, ptr %ifs_clm_mntr_time.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1900, i16 %301)
  %cmp7.not.i = icmp eq i16 %301, 1900
  br i1 %cmp7.not.i, label %if.end3.i.if.end19.i_crit_edge, label %rtw89_phy_ccx_ms_to_period_unit.exit.i

if.end3.i.if.end19.i_crit_edge:                   ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19.i

rtw89_phy_ccx_ms_to_period_unit.exit.i:           ; preds = %if.end3.i
  tail call void (ptr, i32, ptr, ...) @__rtw89_debug(ptr noundef %rtwdev, i32 noundef 512, ptr noundef nonnull @.str.99, i32 noundef 59375, i32 noundef 3) #10
  %dbcc_en.i.i.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 2
  %302 = ptrtoint ptr %hci.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load ptr, ptr %hci.i.i.i.i, align 8
  %read32.i.i.i.i.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %303, i32 0, i32 9
  %304 = ptrtoint ptr %read32.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load ptr, ptr %read32.i.i.i.i.i.i, align 4
  %call.i.i.i.i.i.i = tail call i32 %305(ptr noundef %rtwdev, i32 noundef 68648) #10
  %and21.i.i.i.i.i = and i32 %call.i.i.i.i.i.i, 65535
  %or.i.i.i.i.i = or i32 %and21.i.i.i.i.i, -403767296
  %306 = ptrtoint ptr %hci.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load ptr, ptr %hci.i.i.i.i, align 8
  %write32.i.i.i.i.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %307, i32 0, i32 12
  %308 = ptrtoint ptr %write32.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load ptr, ptr %write32.i.i.i.i.i.i, align 4
  tail call void %309(ptr noundef %rtwdev, i32 noundef 68648, i32 noundef %or.i.i.i.i.i) #10
  %310 = ptrtoint ptr %dbcc_en.i.i.i to i32
  call void @__asan_load1_noabort(i32 %310)
  %311 = load i8, ptr %dbcc_en.i.i.i, align 8, !range !291
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %311)
  %tobool.not.i.i38 = icmp eq i8 %311, 0
  br i1 %tobool.not.i.i38, label %rtw89_phy_ccx_ms_to_period_unit.exit.i.rtw89_phy_set_phy_regs.exit.i_crit_edge, label %rtw89_phy_write32_idx.exit21.i.i

rtw89_phy_ccx_ms_to_period_unit.exit.i.rtw89_phy_set_phy_regs.exit.i_crit_edge: ; preds = %rtw89_phy_ccx_ms_to_period_unit.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rtw89_phy_set_phy_regs.exit.i

rtw89_phy_write32_idx.exit21.i.i:                 ; preds = %rtw89_phy_ccx_ms_to_period_unit.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %312 = ptrtoint ptr %hci.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load ptr, ptr %hci.i.i.i.i, align 8
  %read32.i.i.i.i13.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %313, i32 0, i32 9
  %314 = ptrtoint ptr %read32.i.i.i.i13.i.i to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load ptr, ptr %read32.i.i.i.i13.i.i, align 4
  %call.i.i.i.i14.i.i = tail call i32 %315(ptr noundef %rtwdev, i32 noundef 76840) #10
  %and21.i.i.i16.i.i = and i32 %call.i.i.i.i14.i.i, 65535
  %or.i.i.i19.i.i = or i32 %and21.i.i.i16.i.i, -403767296
  %316 = ptrtoint ptr %hci.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load ptr, ptr %hci.i.i.i.i, align 8
  %write32.i.i.i.i20.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %317, i32 0, i32 12
  %318 = ptrtoint ptr %write32.i.i.i.i20.i.i to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load ptr, ptr %write32.i.i.i.i20.i.i, align 4
  tail call void %319(ptr noundef %rtwdev, i32 noundef 76840, i32 noundef %or.i.i.i19.i.i) #10
  br label %rtw89_phy_set_phy_regs.exit.i

rtw89_phy_set_phy_regs.exit.i:                    ; preds = %rtw89_phy_write32_idx.exit21.i.i, %rtw89_phy_ccx_ms_to_period_unit.exit.i.rtw89_phy_set_phy_regs.exit.i_crit_edge
  %320 = ptrtoint ptr %hci.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load ptr, ptr %hci.i.i.i.i, align 8
  %read32.i.i.i.i.i49.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %321, i32 0, i32 9
  %322 = ptrtoint ptr %read32.i.i.i.i.i49.i to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load ptr, ptr %read32.i.i.i.i.i49.i, align 4
  %call.i.i.i.i.i50.i = tail call i32 %323(ptr noundef %rtwdev, i32 noundef 68648) #10
  %or.i.i.i.i53.i = or i32 %call.i.i.i.i.i50.i, 49152
  %324 = ptrtoint ptr %hci.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load ptr, ptr %hci.i.i.i.i, align 8
  %write32.i.i.i.i.i54.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %325, i32 0, i32 12
  %326 = ptrtoint ptr %write32.i.i.i.i.i54.i to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load ptr, ptr %write32.i.i.i.i.i54.i, align 4
  tail call void %327(ptr noundef %rtwdev, i32 noundef 68648, i32 noundef %or.i.i.i.i53.i) #10
  %328 = ptrtoint ptr %dbcc_en.i.i.i to i32
  call void @__asan_load1_noabort(i32 %328)
  %329 = load i8, ptr %dbcc_en.i.i.i, align 8, !range !291
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %329)
  %tobool.not.i55.i = icmp eq i8 %329, 0
  br i1 %tobool.not.i55.i, label %rtw89_phy_set_phy_regs.exit.i.rtw89_phy_set_phy_regs.exit68.i_crit_edge, label %rtw89_phy_write32_idx.exit21.i67.i

rtw89_phy_set_phy_regs.exit.i.rtw89_phy_set_phy_regs.exit68.i_crit_edge: ; preds = %rtw89_phy_set_phy_regs.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rtw89_phy_set_phy_regs.exit68.i

rtw89_phy_write32_idx.exit21.i67.i:               ; preds = %rtw89_phy_set_phy_regs.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %330 = ptrtoint ptr %hci.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load ptr, ptr %hci.i.i.i.i, align 8
  %read32.i.i.i.i13.i62.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %331, i32 0, i32 9
  %332 = ptrtoint ptr %read32.i.i.i.i13.i62.i to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load ptr, ptr %read32.i.i.i.i13.i62.i, align 4
  %call.i.i.i.i14.i63.i = tail call i32 %333(ptr noundef %rtwdev, i32 noundef 76840) #10
  %or.i.i.i19.i65.i = or i32 %call.i.i.i.i14.i63.i, 49152
  %334 = ptrtoint ptr %hci.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %334)
  %335 = load ptr, ptr %hci.i.i.i.i, align 8
  %write32.i.i.i.i20.i66.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %335, i32 0, i32 12
  %336 = ptrtoint ptr %write32.i.i.i.i20.i66.i to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load ptr, ptr %write32.i.i.i.i20.i66.i, align 4
  tail call void %337(ptr noundef %rtwdev, i32 noundef 76840, i32 noundef %or.i.i.i19.i65.i) #10
  br label %rtw89_phy_set_phy_regs.exit68.i

rtw89_phy_set_phy_regs.exit68.i:                  ; preds = %rtw89_phy_write32_idx.exit21.i67.i, %rtw89_phy_set_phy_regs.exit.i.rtw89_phy_set_phy_regs.exit68.i_crit_edge
  %338 = ptrtoint ptr %ifs_clm_mntr_time.i to i32
  call void @__asan_load2_noabort(i32 %338)
  %339 = load i16, ptr %ifs_clm_mntr_time.i, align 2
  %conv12.i = zext i16 %339 to i32
  tail call void (ptr, i32, ptr, ...) @__rtw89_debug(ptr noundef %rtwdev, i32 noundef 512, ptr noundef nonnull @.str.95, i32 noundef %conv12.i, i32 noundef 1900) #10
  %340 = ptrtoint ptr %ifs_clm_mntr_time.i to i32
  call void @__asan_store2_noabort(i32 %340)
  store i16 1900, ptr %ifs_clm_mntr_time.i, align 2
  %ccx_period.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 38, i32 14
  %341 = ptrtoint ptr %ccx_period.i to i32
  call void @__asan_store2_noabort(i32 %341)
  store i16 -6161, ptr %ccx_period.i, align 4
  %ccx_unit_idx.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 38, i32 15
  %342 = ptrtoint ptr %ccx_unit_idx.i to i32
  call void @__asan_store1_noabort(i32 %342)
  store i8 3, ptr %ccx_unit_idx.i, align 2
  br label %if.end19.i

if.end19.i:                                       ; preds = %rtw89_phy_set_phy_regs.exit68.i, %if.end3.i.if.end19.i_crit_edge
  %343 = ptrtoint ptr %ifs_clm_app.i to i32
  call void @__asan_load4_noabort(i32 %343)
  %344 = load i32, ptr %ifs_clm_app.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %344)
  %cmp.i69.not.i = icmp eq i32 %344, 1
  br i1 %cmp.i69.not.i, label %rtw89_phy_ifs_clm_th_update_check.exit.i, label %if.then21.i

rtw89_phy_ifs_clm_th_update_check.exit.i:         ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, ptr, ...) @__rtw89_debug(ptr noundef %rtwdev, i32 noundef 512, ptr noundef nonnull @.str.100) #10
  br label %if.then13

if.then21.i:                                      ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #12
  %ifs_clm_th_h.i.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 38, i32 19
  %ifs_clm_th_l.i.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 38, i32 18
  %345 = ptrtoint ptr %ifs_clm_th_l.i.i to i32
  call void @__asan_store2_noabort(i32 %345)
  store i16 0, ptr %ifs_clm_th_l.i.i, align 2
  %ccx_unit_idx.i.i.i39 = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 38, i32 15
  %346 = ptrtoint ptr %ccx_unit_idx.i.i.i39 to i32
  call void @__asan_load1_noabort(i32 %346)
  %347 = load i8, ptr %ccx_unit_idx.i.i.i39, align 2
  %conv.i.i.i40 = zext i8 %347 to i32
  %shr.i.i.i = lshr i32 16, %conv.i.i.i40
  %conv1.i.i.i41 = trunc i32 %shr.i.i.i to i16
  %348 = ptrtoint ptr %ifs_clm_th_h.i.i to i32
  call void @__asan_store2_noabort(i32 %348)
  store i16 %conv1.i.i.i41, ptr %ifs_clm_th_h.i.i, align 2
  %add.i.i42 = add nuw nsw i16 %conv1.i.i.i41, 1
  %arrayidx13.i.i = getelementptr %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 38, i32 18, i32 1
  %349 = ptrtoint ptr %arrayidx13.i.i to i32
  call void @__asan_store2_noabort(i32 %349)
  store i16 %add.i.i42, ptr %arrayidx13.i.i, align 2
  %shr.i52.i.i = lshr i32 64, %conv.i.i.i40
  %conv1.i53.i.i = trunc i32 %shr.i52.i.i to i16
  %arrayidx23.i.i = getelementptr %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 38, i32 19, i32 1
  %350 = ptrtoint ptr %arrayidx23.i.i to i32
  call void @__asan_store2_noabort(i32 %350)
  store i16 %conv1.i53.i.i, ptr %arrayidx23.i.i, align 2
  %add.1.i.i43 = add nuw nsw i16 %conv1.i53.i.i, 1
  %arrayidx13.1.i.i = getelementptr %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 38, i32 18, i32 2
  %351 = ptrtoint ptr %arrayidx13.1.i.i to i32
  call void @__asan_store2_noabort(i32 %351)
  store i16 %add.1.i.i43, ptr %arrayidx13.1.i.i, align 2
  %shr.i52.1.i.i = lshr i32 256, %conv.i.i.i40
  %conv1.i53.1.i.i = trunc i32 %shr.i52.1.i.i to i16
  %arrayidx23.1.i.i = getelementptr %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 38, i32 19, i32 2
  %352 = ptrtoint ptr %arrayidx23.1.i.i to i32
  call void @__asan_store2_noabort(i32 %352)
  store i16 %conv1.i53.1.i.i, ptr %arrayidx23.1.i.i, align 2
  %add.2.i.i44 = add nuw nsw i16 %conv1.i53.1.i.i, 1
  %arrayidx13.2.i.i = getelementptr %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 38, i32 18, i32 3
  %353 = ptrtoint ptr %arrayidx13.2.i.i to i32
  call void @__asan_store2_noabort(i32 %353)
  store i16 %add.2.i.i44, ptr %arrayidx13.2.i.i, align 2
  %shr.i52.2.i.i = lshr i32 1024, %conv.i.i.i40
  %conv1.i53.2.i.i = trunc i32 %shr.i52.2.i.i to i16
  %arrayidx23.2.i.i = getelementptr %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 38, i32 19, i32 3
  %354 = ptrtoint ptr %arrayidx23.2.i.i to i32
  call void @__asan_store2_noabort(i32 %354)
  store i16 %conv1.i53.2.i.i, ptr %arrayidx23.2.i.i, align 2
  %355 = ptrtoint ptr %ifs_clm_app.i to i32
  call void @__asan_store4_noabort(i32 %355)
  store i32 1, ptr %ifs_clm_app.i, align 4
  tail call fastcc void @rtw89_phy_ifs_clm_set_th_reg(ptr noundef %rtwdev) #10
  br label %if.then13

rtw89_phy_ifs_clm_set.exit:                       ; preds = %if.then4.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, ptr, ...) @__rtw89_debug(ptr noundef %rtwdev, i32 noundef 512, ptr noundef nonnull @.str.98, i32 noundef 0) #10
  br label %if.end14

if.then13:                                        ; preds = %if.then21.i, %rtw89_phy_ifs_clm_th_update_check.exit.i
  %dbcc_en.i.i.i45 = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 2
  %356 = ptrtoint ptr %hci.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %356)
  %357 = load ptr, ptr %hci.i.i.i.i, align 8
  %read32.i.i.i.i.i.i47 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %357, i32 0, i32 9
  %358 = ptrtoint ptr %read32.i.i.i.i.i.i47 to i32
  call void @__asan_load4_noabort(i32 %358)
  %359 = load ptr, ptr %read32.i.i.i.i.i.i47, align 4
  %call.i.i.i.i.i.i48 = tail call i32 %359(ptr noundef %rtwdev, i32 noundef 68648) #10
  %and21.i.i.i.i.i49 = and i32 %call.i.i.i.i.i.i48, -8193
  %360 = ptrtoint ptr %hci.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %360)
  %361 = load ptr, ptr %hci.i.i.i.i, align 8
  %write32.i.i.i.i.i.i50 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %361, i32 0, i32 12
  %362 = ptrtoint ptr %write32.i.i.i.i.i.i50 to i32
  call void @__asan_load4_noabort(i32 %362)
  %363 = load ptr, ptr %write32.i.i.i.i.i.i50, align 4
  tail call void %363(ptr noundef %rtwdev, i32 noundef 68648, i32 noundef %and21.i.i.i.i.i49) #10
  %364 = ptrtoint ptr %dbcc_en.i.i.i45 to i32
  call void @__asan_load1_noabort(i32 %364)
  %365 = load i8, ptr %dbcc_en.i.i.i45, align 8, !range !291
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %365)
  %tobool.not.i.i51 = icmp eq i8 %365, 0
  br i1 %tobool.not.i.i51, label %if.then13.rtw89_phy_set_phy_regs.exit.i57_crit_edge, label %rtw89_phy_write32_idx.exit21.i.i56

if.then13.rtw89_phy_set_phy_regs.exit.i57_crit_edge: ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #12
  br label %rtw89_phy_set_phy_regs.exit.i57

rtw89_phy_write32_idx.exit21.i.i56:               ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #12
  %366 = ptrtoint ptr %hci.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %366)
  %367 = load ptr, ptr %hci.i.i.i.i, align 8
  %read32.i.i.i.i13.i.i52 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %367, i32 0, i32 9
  %368 = ptrtoint ptr %read32.i.i.i.i13.i.i52 to i32
  call void @__asan_load4_noabort(i32 %368)
  %369 = load ptr, ptr %read32.i.i.i.i13.i.i52, align 4
  %call.i.i.i.i14.i.i53 = tail call i32 %369(ptr noundef %rtwdev, i32 noundef 76840) #10
  %and21.i.i.i16.i.i54 = and i32 %call.i.i.i.i14.i.i53, -8193
  %370 = ptrtoint ptr %hci.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %370)
  %371 = load ptr, ptr %hci.i.i.i.i, align 8
  %write32.i.i.i.i20.i.i55 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %371, i32 0, i32 12
  %372 = ptrtoint ptr %write32.i.i.i.i20.i.i55 to i32
  call void @__asan_load4_noabort(i32 %372)
  %373 = load ptr, ptr %write32.i.i.i.i20.i.i55, align 4
  tail call void %373(ptr noundef %rtwdev, i32 noundef 76840, i32 noundef %and21.i.i.i16.i.i54) #10
  br label %rtw89_phy_set_phy_regs.exit.i57

rtw89_phy_set_phy_regs.exit.i57:                  ; preds = %rtw89_phy_write32_idx.exit21.i.i56, %if.then13.rtw89_phy_set_phy_regs.exit.i57_crit_edge
  %374 = ptrtoint ptr %hci.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %374)
  %375 = load ptr, ptr %hci.i.i.i.i, align 8
  %read32.i.i.i.i.i8.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %375, i32 0, i32 9
  %376 = ptrtoint ptr %read32.i.i.i.i.i8.i to i32
  call void @__asan_load4_noabort(i32 %376)
  %377 = load ptr, ptr %read32.i.i.i.i.i8.i, align 4
  %call.i.i.i.i.i9.i = tail call i32 %377(ptr noundef %rtwdev, i32 noundef 68608) #10
  %and21.i.i.i.i10.i = and i32 %call.i.i.i.i.i9.i, -5
  %378 = ptrtoint ptr %hci.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %378)
  %379 = load ptr, ptr %hci.i.i.i.i, align 8
  %write32.i.i.i.i.i11.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %379, i32 0, i32 12
  %380 = ptrtoint ptr %write32.i.i.i.i.i11.i to i32
  call void @__asan_load4_noabort(i32 %380)
  %381 = load ptr, ptr %write32.i.i.i.i.i11.i, align 4
  tail call void %381(ptr noundef %rtwdev, i32 noundef 68608, i32 noundef %and21.i.i.i.i10.i) #10
  %382 = ptrtoint ptr %dbcc_en.i.i.i45 to i32
  call void @__asan_load1_noabort(i32 %382)
  %383 = load i8, ptr %dbcc_en.i.i.i45, align 8, !range !291
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %383)
  %tobool.not.i12.i = icmp eq i8 %383, 0
  br i1 %tobool.not.i12.i, label %rtw89_phy_set_phy_regs.exit.i57.rtw89_phy_set_phy_regs.exit24.i_crit_edge, label %rtw89_phy_write32_idx.exit21.i23.i

rtw89_phy_set_phy_regs.exit.i57.rtw89_phy_set_phy_regs.exit24.i_crit_edge: ; preds = %rtw89_phy_set_phy_regs.exit.i57
  call void @__sanitizer_cov_trace_pc() #12
  br label %rtw89_phy_set_phy_regs.exit24.i

rtw89_phy_write32_idx.exit21.i23.i:               ; preds = %rtw89_phy_set_phy_regs.exit.i57
  call void @__sanitizer_cov_trace_pc() #12
  %384 = ptrtoint ptr %hci.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %384)
  %385 = load ptr, ptr %hci.i.i.i.i, align 8
  %read32.i.i.i.i13.i19.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %385, i32 0, i32 9
  %386 = ptrtoint ptr %read32.i.i.i.i13.i19.i to i32
  call void @__asan_load4_noabort(i32 %386)
  %387 = load ptr, ptr %read32.i.i.i.i13.i19.i, align 4
  %call.i.i.i.i14.i20.i = tail call i32 %387(ptr noundef %rtwdev, i32 noundef 76800) #10
  %and21.i.i.i16.i21.i = and i32 %call.i.i.i.i14.i20.i, -5
  %388 = ptrtoint ptr %hci.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %388)
  %389 = load ptr, ptr %hci.i.i.i.i, align 8
  %write32.i.i.i.i20.i22.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %389, i32 0, i32 12
  %390 = ptrtoint ptr %write32.i.i.i.i20.i22.i to i32
  call void @__asan_load4_noabort(i32 %390)
  %391 = load ptr, ptr %write32.i.i.i.i20.i22.i, align 4
  tail call void %391(ptr noundef %rtwdev, i32 noundef 76800, i32 noundef %and21.i.i.i16.i21.i) #10
  br label %rtw89_phy_set_phy_regs.exit24.i

rtw89_phy_set_phy_regs.exit24.i:                  ; preds = %rtw89_phy_write32_idx.exit21.i23.i, %rtw89_phy_set_phy_regs.exit.i57.rtw89_phy_set_phy_regs.exit24.i_crit_edge
  %392 = ptrtoint ptr %hci.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %392)
  %393 = load ptr, ptr %hci.i.i.i.i, align 8
  %read32.i.i.i.i.i27.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %393, i32 0, i32 9
  %394 = ptrtoint ptr %read32.i.i.i.i.i27.i to i32
  call void @__asan_load4_noabort(i32 %394)
  %395 = load ptr, ptr %read32.i.i.i.i.i27.i, align 4
  %call.i.i.i.i.i28.i = tail call i32 %395(ptr noundef %rtwdev, i32 noundef 68648) #10
  %or.i.i.i.i.i58 = or i32 %call.i.i.i.i.i28.i, 8192
  %396 = ptrtoint ptr %hci.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %396)
  %397 = load ptr, ptr %hci.i.i.i.i, align 8
  %write32.i.i.i.i.i30.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %397, i32 0, i32 12
  %398 = ptrtoint ptr %write32.i.i.i.i.i30.i to i32
  call void @__asan_load4_noabort(i32 %398)
  %399 = load ptr, ptr %write32.i.i.i.i.i30.i, align 4
  tail call void %399(ptr noundef %rtwdev, i32 noundef 68648, i32 noundef %or.i.i.i.i.i58) #10
  %400 = ptrtoint ptr %dbcc_en.i.i.i45 to i32
  call void @__asan_load1_noabort(i32 %400)
  %401 = load i8, ptr %dbcc_en.i.i.i45, align 8, !range !291
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %401)
  %tobool.not.i31.i = icmp eq i8 %401, 0
  br i1 %tobool.not.i31.i, label %rtw89_phy_set_phy_regs.exit24.i.rtw89_phy_set_phy_regs.exit43.i_crit_edge, label %rtw89_phy_write32_idx.exit21.i42.i

rtw89_phy_set_phy_regs.exit24.i.rtw89_phy_set_phy_regs.exit43.i_crit_edge: ; preds = %rtw89_phy_set_phy_regs.exit24.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rtw89_phy_set_phy_regs.exit43.i

rtw89_phy_write32_idx.exit21.i42.i:               ; preds = %rtw89_phy_set_phy_regs.exit24.i
  call void @__sanitizer_cov_trace_pc() #12
  %402 = ptrtoint ptr %hci.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %402)
  %403 = load ptr, ptr %hci.i.i.i.i, align 8
  %read32.i.i.i.i13.i38.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %403, i32 0, i32 9
  %404 = ptrtoint ptr %read32.i.i.i.i13.i38.i to i32
  call void @__asan_load4_noabort(i32 %404)
  %405 = load ptr, ptr %read32.i.i.i.i13.i38.i, align 4
  %call.i.i.i.i14.i39.i = tail call i32 %405(ptr noundef %rtwdev, i32 noundef 76840) #10
  %or.i.i.i19.i.i59 = or i32 %call.i.i.i.i14.i39.i, 8192
  %406 = ptrtoint ptr %hci.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %406)
  %407 = load ptr, ptr %hci.i.i.i.i, align 8
  %write32.i.i.i.i20.i41.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %407, i32 0, i32 12
  %408 = ptrtoint ptr %write32.i.i.i.i20.i41.i to i32
  call void @__asan_load4_noabort(i32 %408)
  %409 = load ptr, ptr %write32.i.i.i.i20.i41.i, align 4
  tail call void %409(ptr noundef %rtwdev, i32 noundef 76840, i32 noundef %or.i.i.i19.i.i59) #10
  br label %rtw89_phy_set_phy_regs.exit43.i

rtw89_phy_set_phy_regs.exit43.i:                  ; preds = %rtw89_phy_write32_idx.exit21.i42.i, %rtw89_phy_set_phy_regs.exit24.i.rtw89_phy_set_phy_regs.exit43.i_crit_edge
  %410 = ptrtoint ptr %hci.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %410)
  %411 = load ptr, ptr %hci.i.i.i.i, align 8
  %read32.i.i.i.i.i46.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %411, i32 0, i32 9
  %412 = ptrtoint ptr %read32.i.i.i.i.i46.i to i32
  call void @__asan_load4_noabort(i32 %412)
  %413 = load ptr, ptr %read32.i.i.i.i.i46.i, align 4
  %call.i.i.i.i.i47.i = tail call i32 %413(ptr noundef %rtwdev, i32 noundef 68608) #10
  %or.i.i.i.i49.i = or i32 %call.i.i.i.i.i47.i, 4
  %414 = ptrtoint ptr %hci.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %414)
  %415 = load ptr, ptr %hci.i.i.i.i, align 8
  %write32.i.i.i.i.i50.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %415, i32 0, i32 12
  %416 = ptrtoint ptr %write32.i.i.i.i.i50.i to i32
  call void @__asan_load4_noabort(i32 %416)
  %417 = load ptr, ptr %write32.i.i.i.i.i50.i, align 4
  tail call void %417(ptr noundef %rtwdev, i32 noundef 68608, i32 noundef %or.i.i.i.i49.i) #10
  %418 = ptrtoint ptr %dbcc_en.i.i.i45 to i32
  call void @__asan_load1_noabort(i32 %418)
  %419 = load i8, ptr %dbcc_en.i.i.i45, align 8, !range !291
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %419)
  %tobool.not.i51.i = icmp eq i8 %419, 0
  br i1 %tobool.not.i51.i, label %rtw89_phy_set_phy_regs.exit43.i.rtw89_phy_ccx_trigger.exit_crit_edge, label %rtw89_phy_write32_idx.exit21.i63.i

rtw89_phy_set_phy_regs.exit43.i.rtw89_phy_ccx_trigger.exit_crit_edge: ; preds = %rtw89_phy_set_phy_regs.exit43.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rtw89_phy_ccx_trigger.exit

rtw89_phy_write32_idx.exit21.i63.i:               ; preds = %rtw89_phy_set_phy_regs.exit43.i
  call void @__sanitizer_cov_trace_pc() #12
  %420 = ptrtoint ptr %hci.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %420)
  %421 = load ptr, ptr %hci.i.i.i.i, align 8
  %read32.i.i.i.i13.i58.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %421, i32 0, i32 9
  %422 = ptrtoint ptr %read32.i.i.i.i13.i58.i to i32
  call void @__asan_load4_noabort(i32 %422)
  %423 = load ptr, ptr %read32.i.i.i.i13.i58.i, align 4
  %call.i.i.i.i14.i59.i = tail call i32 %423(ptr noundef %rtwdev, i32 noundef 76800) #10
  %or.i.i.i19.i61.i = or i32 %call.i.i.i.i14.i59.i, 4
  %424 = ptrtoint ptr %hci.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %424)
  %425 = load ptr, ptr %hci.i.i.i.i, align 8
  %write32.i.i.i.i20.i62.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %425, i32 0, i32 12
  %426 = ptrtoint ptr %write32.i.i.i.i20.i62.i to i32
  call void @__asan_load4_noabort(i32 %426)
  %427 = load ptr, ptr %write32.i.i.i.i20.i62.i, align 4
  tail call void %427(ptr noundef %rtwdev, i32 noundef 76800, i32 noundef %or.i.i.i19.i61.i) #10
  br label %rtw89_phy_ccx_trigger.exit

rtw89_phy_ccx_trigger.exit:                       ; preds = %rtw89_phy_write32_idx.exit21.i63.i, %rtw89_phy_set_phy_regs.exit43.i.rtw89_phy_ccx_trigger.exit_crit_edge
  %ccx_rpt_stamp.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 38, i32 2
  %428 = ptrtoint ptr %ccx_rpt_stamp.i to i32
  call void @__asan_load1_noabort(i32 %428)
  %429 = load i8, ptr %ccx_rpt_stamp.i, align 8
  %inc.i = add i8 %429, 1
  store i8 %inc.i, ptr %ccx_rpt_stamp.i, align 8
  %430 = ptrtoint ptr %ccx_ongoing.i to i32
  call void @__asan_store1_noabort(i32 %430)
  store i8 1, ptr %ccx_ongoing.i, align 2
  br label %if.end14

if.end14:                                         ; preds = %rtw89_phy_ccx_trigger.exit, %rtw89_phy_ifs_clm_set.exit
  %spec.select73 = phi i32 [ 8, %rtw89_phy_ccx_trigger.exit ], [ 0, %rtw89_phy_ifs_clm_set.exit ]
  %431 = ptrtoint ptr %ccx_watchdog_result to i32
  call void @__asan_load1_noabort(i32 %431)
  %432 = load i8, ptr %ccx_watchdog_result, align 1
  %conv16 = zext i8 %432 to i32
  tail call void (ptr, i32, ptr, ...) @__rtw89_debug(ptr noundef %rtwdev, i32 noundef 512, ptr noundef nonnull @.str.25, i32 noundef %conv16, i32 noundef %spec.select73) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw89_phy_dig_reset(ptr noundef %rtwdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %bypass_dig = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 39, i32 22
  %0 = ptrtoint ptr %bypass_dig to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %bypass_dig, align 1
  %dig1.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 39
  %1 = ptrtoint ptr %dig1.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 6, ptr %dig1.i, align 4
  %tia_idx.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 39, i32 0, i32 1
  %2 = ptrtoint ptr %tia_idx.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %tia_idx.i, align 1
  %rxb_idx.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 39, i32 0, i32 2
  %3 = ptrtoint ptr %rxb_idx.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 31, ptr %rxb_idx.i, align 2
  %force_gaincode.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 39, i32 2
  %4 = ptrtoint ptr %force_gaincode.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 6, ptr %force_gaincode.i, align 4
  %tia_idx6.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 39, i32 2, i32 1
  %5 = ptrtoint ptr %tia_idx6.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %tia_idx6.i, align 1
  %rxb_idx8.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 39, i32 2, i32 2
  %6 = ptrtoint ptr %rxb_idx8.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 31, ptr %rxb_idx8.i, align 2
  %dyn_igi_max.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 39, i32 8
  %7 = ptrtoint ptr %dyn_igi_max.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 90, ptr %dyn_igi_max.i, align 1
  %dyn_igi_min.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 39, i32 9
  %8 = ptrtoint ptr %dyn_igi_min.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 32, ptr %dyn_igi_min.i, align 4
  %dyn_pd_th_max.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 39, i32 11
  %9 = ptrtoint ptr %dyn_pd_th_max.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %dyn_pd_th_max.i, align 2
  %pd_low_th_ofst.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 39, i32 12
  %10 = ptrtoint ptr %pd_low_th_ofst.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 20, ptr %pd_low_th_ofst.i, align 1
  %is_linked_pre.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 39, i32 21
  %11 = ptrtoint ptr %is_linked_pre.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %is_linked_pre.i, align 4
  %force_gaincode.coerce.sroa.0.0.copyload = load i24, ptr %force_gaincode.i, align 4
  %force_gaincode.coerce.sroa.0.0.insert.ext = zext i24 %force_gaincode.coerce.sroa.0.0.copyload to i32
  %force_gaincode.coerce.sroa.0.0.insert.shift = shl nuw i32 %force_gaincode.coerce.sroa.0.0.insert.ext, 8
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %force_gaincode.coerce.sroa.0.0.insert.shift, 0
  tail call fastcc void @rtw89_phy_dig_set_igi_cr(ptr noundef %rtwdev, [1 x i32] %.fca.0.insert)
  %igi_rssi.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 39, i32 5
  %12 = ptrtoint ptr %igi_rssi.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %igi_rssi.i, align 4
  %14 = ptrtoint ptr %dyn_pd_th_max.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %dyn_pd_th_max.i, align 2
  tail call void (ptr, i32, ptr, ...) @__rtw89_debug(ptr noundef %rtwdev, i32 noundef 1024, ptr noundef nonnull @.str.104) #10
  %hci.i.i.i.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 7
  %15 = ptrtoint ptr %hci.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hci.i.i.i.i, align 8
  %read32.i.i.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %16, i32 0, i32 9
  %17 = ptrtoint ptr %read32.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %read32.i.i.i.i, align 4
  %call.i.i.i.i = tail call i32 %18(ptr noundef %rtwdev, i32 noundef 83996) #10
  %and21.i.i.i = and i32 %call.i.i.i.i, -1985
  %19 = ptrtoint ptr %hci.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %hci.i.i.i.i, align 8
  %write32.i.i.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %20, i32 0, i32 12
  %21 = ptrtoint ptr %write32.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %write32.i.i.i.i, align 4
  tail call void %22(ptr noundef %rtwdev, i32 noundef 83996, i32 noundef %and21.i.i.i) #10
  %23 = ptrtoint ptr %hci.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %hci.i.i.i.i, align 8
  %read32.i.i.i88.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %24, i32 0, i32 9
  %25 = ptrtoint ptr %read32.i.i.i88.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %read32.i.i.i88.i, align 4
  %call.i.i.i89.i = tail call i32 %26(ptr noundef %rtwdev, i32 noundef 83996) #10
  %and21.i.i90.i = and i32 %call.i.i.i89.i, -536870913
  %27 = ptrtoint ptr %hci.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %hci.i.i.i.i, align 8
  %write32.i.i.i94.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %28, i32 0, i32 12
  %29 = ptrtoint ptr %write32.i.i.i94.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %write32.i.i.i94.i, align 4
  tail call void %30(ptr noundef %rtwdev, i32 noundef 83996, i32 noundef %and21.i.i90.i) #10
  %31 = ptrtoint ptr %hci.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %hci.i.i.i.i, align 8
  %read32.i.i.i.i11 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %32, i32 0, i32 9
  %33 = ptrtoint ptr %read32.i.i.i.i11 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %read32.i.i.i.i11, align 4
  %call.i.i.i.i12 = tail call i32 %34(ptr noundef %rtwdev, i32 noundef 83616) #10
  %and21.i.i.i13 = and i32 %call.i.i.i.i12, -33
  %35 = ptrtoint ptr %hci.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %hci.i.i.i.i, align 8
  %write32.i.i.i.i14 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %36, i32 0, i32 12
  %37 = ptrtoint ptr %write32.i.i.i.i14 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %write32.i.i.i.i14, align 4
  tail call void %38(ptr noundef %rtwdev, i32 noundef 83616, i32 noundef %and21.i.i.i13) #10
  %39 = ptrtoint ptr %hci.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %hci.i.i.i.i, align 8
  %read32.i.i.i.1.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %40, i32 0, i32 9
  %41 = ptrtoint ptr %read32.i.i.i.1.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %read32.i.i.i.1.i, align 4
  %call.i.i.i.1.i = tail call i32 %42(ptr noundef %rtwdev, i32 noundef 83620) #10
  %and21.i.i.1.i = and i32 %call.i.i.i.1.i, -33
  %43 = ptrtoint ptr %hci.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %hci.i.i.i.i, align 8
  %write32.i.i.i.1.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %44, i32 0, i32 12
  %45 = ptrtoint ptr %write32.i.i.i.1.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %write32.i.i.i.1.i, align 4
  tail call void %46(ptr noundef %rtwdev, i32 noundef 83620, i32 noundef %and21.i.i.1.i) #10
  %47 = ptrtoint ptr %hci.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %hci.i.i.i.i, align 8
  %read32.i.i.i.2.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %48, i32 0, i32 9
  %49 = ptrtoint ptr %read32.i.i.i.2.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %read32.i.i.i.2.i, align 4
  %call.i.i.i.2.i = tail call i32 %50(ptr noundef %rtwdev, i32 noundef 83828) #10
  %and21.i.i.2.i = and i32 %call.i.i.i.2.i, -33
  %51 = ptrtoint ptr %hci.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %hci.i.i.i.i, align 8
  %write32.i.i.i.2.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %52, i32 0, i32 12
  %53 = ptrtoint ptr %write32.i.i.i.2.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %write32.i.i.i.2.i, align 4
  tail call void %54(ptr noundef %rtwdev, i32 noundef 83828, i32 noundef %and21.i.i.2.i) #10
  %55 = ptrtoint ptr %hci.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %hci.i.i.i.i, align 8
  %read32.i.i.i.3.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %56, i32 0, i32 9
  %57 = ptrtoint ptr %read32.i.i.i.3.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %read32.i.i.i.3.i, align 4
  %call.i.i.i.3.i = tail call i32 %58(ptr noundef %rtwdev, i32 noundef 83832) #10
  %and21.i.i.3.i = and i32 %call.i.i.i.3.i, -33
  %59 = ptrtoint ptr %hci.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %hci.i.i.i.i, align 8
  %write32.i.i.i.3.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %60, i32 0, i32 12
  %61 = ptrtoint ptr %write32.i.i.i.3.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %write32.i.i.i.3.i, align 4
  tail call void %62(ptr noundef %rtwdev, i32 noundef 83832, i32 noundef %and21.i.i.3.i) #10
  tail call void (ptr, i32, ptr, ...) @__rtw89_debug(ptr noundef %rtwdev, i32 noundef 1024, ptr noundef nonnull @.str.105, i32 noundef 0) #10
  %total_sta_assoc.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 47
  %63 = ptrtoint ptr %total_sta_assoc.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %total_sta_assoc.i, align 4
  %current_band_type.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 4, i32 7
  %65 = ptrtoint ptr %current_band_type.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %current_band_type.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %66)
  %cond18.i = icmp eq i8 %66, 0
  br i1 %cond18.i, label %sw.bb.i, label %sw.default.i

sw.bb.i:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %lna_gain_g.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 39, i32 16
  %tia_gain_g.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 39, i32 19
  br label %rtw89_phy_dig_update_para.exit

sw.default.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %lna_gain_a.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 39, i32 15
  %tia_gain_a.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 39, i32 18
  br label %rtw89_phy_dig_update_para.exit

rtw89_phy_dig_update_para.exit:                   ; preds = %sw.default.i, %sw.bb.i
  %fa_th_5g.sink.i = phi ptr [ @fa_th_5g, %sw.default.i ], [ @fa_th_2g, %sw.bb.i ]
  %lna_gain_a.sink.i = phi ptr [ %lna_gain_a.i, %sw.default.i ], [ %lna_gain_g.i, %sw.bb.i ]
  %tia_gain_a.sink.i = phi ptr [ %tia_gain_a.i, %sw.default.i ], [ %tia_gain_g.i, %sw.bb.i ]
  %.sink.i = phi i8 [ 1, %sw.default.i ], [ 0, %sw.bb.i ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %64)
  %cmp.not.i = icmp eq i8 %64, 0
  %cond13.i = select i1 %cmp.not.i, ptr @fa_th_nolink, ptr %fa_th_5g.sink.i
  %67 = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 39, i32 17
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %lna_gain_a.sink.i, ptr %67, align 4
  %69 = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 39, i32 20
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %tia_gain_a.sink.i, ptr %69, align 4
  %71 = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 39, i32 1
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 %.sink.i, ptr %71, align 1
  %73 = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 39, i32 10
  %74 = ptrtoint ptr %73 to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 1, ptr %73, align 1
  %fa_th.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 39, i32 4
  %75 = ptrtoint ptr %cond13.i to i32
  call void @__asan_loadN_noabort(i32 %75, i32 8)
  %76 = load i64, ptr %cond13.i, align 2
  %77 = ptrtoint ptr %fa_th.i to i32
  call void @__asan_storeN_noabort(i32 %77, i32 8)
  store i64 %76, ptr %fa_th.i, align 4
  %igi_rssi_th.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 39, i32 3
  %78 = call ptr @memcpy(ptr %igi_rssi_th.i, ptr @igi_rssi_th, i32 5)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rtw89_phy_dig_set_igi_cr(ptr noundef %rtwdev, [1 x i32] %set.coerce) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %set.coerce.fca.0.extract = extractvalue [1 x i32] %set.coerce, 0
  %tmp.coerce.sroa.0.0.extract.shift = lshr i32 %set.coerce.fca.0.extract, 8
  %set.sroa.0.0.extract.shift12 = lshr i32 %set.coerce.fca.0.extract, 24
  %set.sroa.3.0.extract.shift13 = lshr i32 %set.coerce.fca.0.extract, 16
  %hci.i.i.i.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 7
  %0 = ptrtoint ptr %hci.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hci.i.i.i.i, align 8
  %read32.i.i.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %read32.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %read32.i.i.i.i, align 4
  %call.i.i.i.i = tail call i32 %3(ptr noundef %rtwdev, i32 noundef 83560) #10
  %and21.i.i.i = and i32 %call.i.i.i.i, -117440513
  %and22.i.i.i = and i32 %set.coerce.fca.0.extract, 117440512
  %or.i.i.i = or i32 %and21.i.i.i, %and22.i.i.i
  %4 = ptrtoint ptr %hci.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hci.i.i.i.i, align 8
  %write32.i.i.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %5, i32 0, i32 12
  %6 = ptrtoint ptr %write32.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %write32.i.i.i.i, align 4
  tail call void %7(ptr noundef %rtwdev, i32 noundef 83560, i32 noundef %or.i.i.i) #10
  %8 = ptrtoint ptr %hci.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hci.i.i.i.i, align 8
  %read32.i.i.i5.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %9, i32 0, i32 9
  %10 = ptrtoint ptr %read32.i.i.i5.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %read32.i.i.i5.i, align 4
  %call.i.i.i6.i = tail call i32 %11(ptr noundef %rtwdev, i32 noundef 83772) #10
  %and21.i.i7.i = and i32 %call.i.i.i6.i, -117440513
  %or.i.i10.i = or i32 %and21.i.i7.i, %and22.i.i.i
  %12 = ptrtoint ptr %hci.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hci.i.i.i.i, align 8
  %write32.i.i.i11.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %13, i32 0, i32 12
  %14 = ptrtoint ptr %write32.i.i.i11.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %write32.i.i.i11.i, align 4
  tail call void %15(ptr noundef %rtwdev, i32 noundef 83772, i32 noundef %or.i.i10.i) #10
  %16 = ptrtoint ptr %hci.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hci.i.i.i.i, align 8
  %read32.i.i.i.i16 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %17, i32 0, i32 9
  %18 = ptrtoint ptr %read32.i.i.i.i16 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %read32.i.i.i.i16, align 4
  %call.i.i.i.i17 = tail call i32 %19(ptr noundef %rtwdev, i32 noundef 83572) #10
  %and21.i.i.i18 = and i32 %call.i.i.i.i17, -131073
  %conv.i14 = shl i32 %set.sroa.3.0.extract.shift13, 17
  %and22.i.i.i20 = and i32 %conv.i14, 131072
  %or.i.i.i21 = or i32 %and21.i.i.i18, %and22.i.i.i20
  %20 = ptrtoint ptr %hci.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hci.i.i.i.i, align 8
  %write32.i.i.i.i22 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %21, i32 0, i32 12
  %22 = ptrtoint ptr %write32.i.i.i.i22 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %write32.i.i.i.i22, align 4
  tail call void %23(ptr noundef %rtwdev, i32 noundef 83572, i32 noundef %or.i.i.i21) #10
  %24 = ptrtoint ptr %hci.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %hci.i.i.i.i, align 8
  %read32.i.i.i5.i23 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %25, i32 0, i32 9
  %26 = ptrtoint ptr %read32.i.i.i5.i23 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %read32.i.i.i5.i23, align 4
  %call.i.i.i6.i24 = tail call i32 %27(ptr noundef %rtwdev, i32 noundef 83784) #10
  %and21.i.i7.i25 = and i32 %call.i.i.i6.i24, -131073
  %or.i.i10.i26 = or i32 %and21.i.i7.i25, %and22.i.i.i20
  %28 = ptrtoint ptr %hci.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %hci.i.i.i.i, align 8
  %write32.i.i.i11.i27 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %29, i32 0, i32 12
  %30 = ptrtoint ptr %write32.i.i.i11.i27 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %write32.i.i.i11.i27, align 4
  tail call void %31(ptr noundef %rtwdev, i32 noundef 83784, i32 noundef %or.i.i10.i26) #10
  %32 = ptrtoint ptr %hci.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %hci.i.i.i.i, align 8
  %read32.i.i.i.i30 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %33, i32 0, i32 9
  %34 = ptrtoint ptr %read32.i.i.i.i30 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %read32.i.i.i.i30, align 4
  %call.i.i.i.i31 = tail call i32 %35(ptr noundef %rtwdev, i32 noundef 83544) #10
  %and21.i.i.i32 = and i32 %call.i.i.i.i31, -993
  %conv.i28 = shl nuw nsw i32 %tmp.coerce.sroa.0.0.extract.shift, 5
  %and22.i.i.i34 = and i32 %conv.i28, 992
  %or.i.i.i35 = or i32 %and21.i.i.i32, %and22.i.i.i34
  %36 = ptrtoint ptr %hci.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %hci.i.i.i.i, align 8
  %write32.i.i.i.i36 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %37, i32 0, i32 12
  %38 = ptrtoint ptr %write32.i.i.i.i36 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %write32.i.i.i.i36, align 4
  tail call void %39(ptr noundef %rtwdev, i32 noundef 83544, i32 noundef %or.i.i.i35) #10
  %40 = ptrtoint ptr %hci.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %hci.i.i.i.i, align 8
  %read32.i.i.i5.i37 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %41, i32 0, i32 9
  %42 = ptrtoint ptr %read32.i.i.i5.i37 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %read32.i.i.i5.i37, align 4
  %call.i.i.i6.i38 = tail call i32 %43(ptr noundef %rtwdev, i32 noundef 83756) #10
  %and21.i.i7.i39 = and i32 %call.i.i.i6.i38, -993
  %or.i.i10.i40 = or i32 %and21.i.i7.i39, %and22.i.i.i34
  %44 = ptrtoint ptr %hci.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %hci.i.i.i.i, align 8
  %write32.i.i.i11.i41 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %45, i32 0, i32 12
  %46 = ptrtoint ptr %write32.i.i.i11.i41 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %write32.i.i.i11.i41, align 4
  tail call void %47(ptr noundef %rtwdev, i32 noundef 83756, i32 noundef %or.i.i10.i40) #10
  %conv3 = and i32 %set.sroa.3.0.extract.shift13, 255
  %conv5 = and i32 %tmp.coerce.sroa.0.0.extract.shift, 255
  tail call void (ptr, i32, ptr, ...) @__rtw89_debug(ptr noundef %rtwdev, i32 noundef 1024, ptr noundef nonnull @.str.102, i32 noundef %set.sroa.0.0.extract.shift12, i32 noundef %conv3, i32 noundef %conv5) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw89_phy_dig(ptr noundef %rtwdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dig1 = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 39
  %total_sta_assoc = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 47
  %0 = ptrtoint ptr %total_sta_assoc to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %total_sta_assoc, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp = icmp ne i8 %1, 0
  %frombool = zext i1 %cmp to i8
  %bypass_dig = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 39, i32 22
  %2 = ptrtoint ptr %bypass_dig to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %bypass_dig, align 1, !range !291
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end, label %if.then, !prof !294

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %bypass_dig to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %bypass_dig, align 1
  br label %cleanup

if.end:                                           ; preds = %entry
  %is_linked_pre = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 39, i32 21
  %5 = ptrtoint ptr %is_linked_pre to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %is_linked_pre, align 4, !range !291
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool6.not = icmp eq i8 %6, 0
  %7 = select i1 %tobool6.not, i1 %cmp, i1 false
  br i1 %7, label %if.then9, label %if.else

if.then9:                                         ; preds = %if.end
  tail call void (ptr, i32, ptr, ...) @__rtw89_debug(ptr noundef %rtwdev, i32 noundef 1024, ptr noundef nonnull @.str.26) #10
  %8 = ptrtoint ptr %total_sta_assoc to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %total_sta_assoc, align 4
  %current_band_type.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 4, i32 7
  %10 = ptrtoint ptr %current_band_type.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %current_band_type.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %cond18.i = icmp eq i8 %11, 0
  br i1 %cond18.i, label %sw.bb.i, label %sw.default.i

sw.bb.i:                                          ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #12
  %lna_gain_g.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 39, i32 16
  %tia_gain_g.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 39, i32 19
  br label %if.end17.sink.split

sw.default.i:                                     ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #12
  %lna_gain_a.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 39, i32 15
  %tia_gain_a.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 39, i32 18
  br label %if.end17.sink.split

if.else:                                          ; preds = %if.end
  %brmerge143 = select i1 %tobool6.not, i1 true, i1 %cmp
  br i1 %brmerge143, label %if.else.if.end17_crit_edge, label %if.then15

if.else.if.end17_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

if.then15:                                        ; preds = %if.else
  tail call void (ptr, i32, ptr, ...) @__rtw89_debug(ptr noundef %rtwdev, i32 noundef 1024, ptr noundef nonnull @.str.27) #10
  %12 = ptrtoint ptr %total_sta_assoc to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %total_sta_assoc, align 4
  %current_band_type.i145 = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 4, i32 7
  %14 = ptrtoint ptr %current_band_type.i145 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %current_band_type.i145, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %cond18.i146 = icmp eq i8 %15, 0
  br i1 %cond18.i146, label %sw.bb.i149, label %sw.default.i152

sw.bb.i149:                                       ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #12
  %lna_gain_g.i147 = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 39, i32 16
  %tia_gain_g.i148 = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 39, i32 19
  br label %if.end17.sink.split

sw.default.i152:                                  ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #12
  %lna_gain_a.i150 = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 39, i32 15
  %tia_gain_a.i151 = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 39, i32 18
  br label %if.end17.sink.split

if.end17.sink.split:                              ; preds = %sw.default.i152, %sw.bb.i149, %sw.default.i, %sw.bb.i
  %.sink = phi i8 [ %9, %sw.bb.i ], [ %9, %sw.default.i ], [ %13, %sw.bb.i149 ], [ %13, %sw.default.i152 ]
  %fa_th_5g.sink.i153.sink = phi ptr [ @fa_th_2g, %sw.bb.i ], [ @fa_th_5g, %sw.default.i ], [ @fa_th_2g, %sw.bb.i149 ], [ @fa_th_5g, %sw.default.i152 ]
  %lna_gain_a.sink.i154.sink = phi ptr [ %lna_gain_g.i, %sw.bb.i ], [ %lna_gain_a.i, %sw.default.i ], [ %lna_gain_g.i147, %sw.bb.i149 ], [ %lna_gain_a.i150, %sw.default.i152 ]
  %tia_gain_a.sink.i155.sink = phi ptr [ %tia_gain_g.i, %sw.bb.i ], [ %tia_gain_a.i, %sw.default.i ], [ %tia_gain_g.i148, %sw.bb.i149 ], [ %tia_gain_a.i151, %sw.default.i152 ]
  %.sink.i156.sink = phi i8 [ 0, %sw.bb.i ], [ 1, %sw.default.i ], [ 0, %sw.bb.i149 ], [ 1, %sw.default.i152 ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.sink)
  %cmp.not.i157 = icmp eq i8 %.sink, 0
  %cond13.i158 = select i1 %cmp.not.i157, ptr @fa_th_nolink, ptr %fa_th_5g.sink.i153.sink
  %16 = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 39, i32 17
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %lna_gain_a.sink.i154.sink, ptr %16, align 4
  %18 = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 39, i32 20
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %tia_gain_a.sink.i155.sink, ptr %18, align 4
  %20 = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 39, i32 1
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %.sink.i156.sink, ptr %20, align 1
  %22 = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 39, i32 10
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 1, ptr %22, align 1
  %fa_th.i159 = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 39, i32 4
  %24 = ptrtoint ptr %cond13.i158 to i32
  call void @__asan_loadN_noabort(i32 %24, i32 8)
  %25 = load i64, ptr %cond13.i158, align 2
  %26 = ptrtoint ptr %fa_th.i159 to i32
  call void @__asan_storeN_noabort(i32 %26, i32 8)
  store i64 %25, ptr %fa_th.i159, align 4
  %igi_rssi_th.i160 = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 39, i32 3
  %27 = call ptr @memcpy(ptr %igi_rssi_th.i160, ptr @igi_rssi_th, i32 5)
  br label %if.end17

if.end17:                                         ; preds = %if.end17.sink.split, %if.else.if.end17_crit_edge
  %28 = ptrtoint ptr %is_linked_pre to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %frombool, ptr %is_linked_pre, align 4
  %fa_rssi_ofst.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 39, i32 7
  %29 = ptrtoint ptr %fa_rssi_ofst.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %fa_rssi_ofst.i, align 2
  %ifs_clm_cck_fa_permil.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 38, i32 56
  %31 = ptrtoint ptr %ifs_clm_cck_fa_permil.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %ifs_clm_cck_fa_permil.i, align 4
  %ifs_clm_ofdm_fa_permil.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 38, i32 57
  %33 = ptrtoint ptr %ifs_clm_ofdm_fa_permil.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %ifs_clm_ofdm_fa_permil.i, align 2
  %add.i = add i16 %34, %32
  %fa_th.i162 = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 39, i32 4
  %35 = ptrtoint ptr %fa_th.i162 to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %fa_th.i162, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %add.i, i16 %36)
  %cmp.i = icmp ult i16 %add.i, %36
  br i1 %cmp.i, label %if.end17.rtw89_phy_dig_igi_offset_by_env.exit_crit_edge, label %if.else.i

if.end17.rtw89_phy_dig_igi_offset_by_env.exit_crit_edge: ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %rtw89_phy_dig_igi_offset_by_env.exit

if.else.i:                                        ; preds = %if.end17
  %arrayidx9.i = getelementptr %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 39, i32 4, i32 1
  %37 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %arrayidx9.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %add.i, i16 %38)
  %cmp11.i = icmp ult i16 %add.i, %38
  br i1 %cmp11.i, label %if.else.i.rtw89_phy_dig_igi_offset_by_env.exit_crit_edge, label %if.else14.i

if.else.i.rtw89_phy_dig_igi_offset_by_env.exit_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rtw89_phy_dig_igi_offset_by_env.exit

if.else14.i:                                      ; preds = %if.else.i
  %arrayidx17.i = getelementptr %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 39, i32 4, i32 2
  %39 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %arrayidx17.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %add.i, i16 %40)
  %cmp19.i = icmp ult i16 %add.i, %40
  br i1 %cmp19.i, label %if.else14.i.rtw89_phy_dig_igi_offset_by_env.exit_crit_edge, label %if.else22.i

if.else14.i.rtw89_phy_dig_igi_offset_by_env.exit_crit_edge: ; preds = %if.else14.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rtw89_phy_dig_igi_offset_by_env.exit

if.else22.i:                                      ; preds = %if.else14.i
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx25.i = getelementptr %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 39, i32 4, i32 3
  %41 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %arrayidx25.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %add.i, i16 %42)
  %cmp27.i = icmp ult i16 %add.i, %42
  %..i = select i1 %cmp27.i, i32 2, i32 3
  br label %rtw89_phy_dig_igi_offset_by_env.exit

rtw89_phy_dig_igi_offset_by_env.exit:             ; preds = %if.else22.i, %if.else14.i.rtw89_phy_dig_igi_offset_by_env.exit_crit_edge, %if.else.i.rtw89_phy_dig_igi_offset_by_env.exit_crit_edge, %if.end17.rtw89_phy_dig_igi_offset_by_env.exit_crit_edge
  %noisy_lv.0.i = phi i32 [ -1, %if.end17.rtw89_phy_dig_igi_offset_by_env.exit_crit_edge ], [ 0, %if.else.i.rtw89_phy_dig_igi_offset_by_env.exit_crit_edge ], [ 1, %if.else14.i.rtw89_phy_dig_igi_offset_by_env.exit_crit_edge ], [ %..i, %if.else22.i ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %30)
  %cmp37.i = icmp ult i8 %30, 2
  %or.cond.i = select i1 %cmp.i, i1 %cmp37.i, i1 false
  %noisy_lv.0.tr.i = trunc i32 %noisy_lv.0.i to i8
  %43 = shl nsw i8 %noisy_lv.0.tr.i, 1
  %conv43.i = add i8 %43, %30
  %44 = tail call i8 @llvm.umin.i8(i8 %conv43.i, i8 25) #10
  %45 = zext i8 %44 to i32
  %46 = select i1 %or.cond.i, i32 0, i32 %45
  %conv51.i = trunc i32 %46 to i8
  %47 = ptrtoint ptr %fa_rssi_ofst.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %conv51.i, ptr %fa_rssi_ofst.i, align 2
  %arrayidx54.i = getelementptr %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 39, i32 4, i32 3
  %48 = ptrtoint ptr %arrayidx54.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %arrayidx54.i, align 2
  %conv55.i = zext i16 %49 to i32
  %arrayidx57.i = getelementptr %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 39, i32 4, i32 2
  %50 = ptrtoint ptr %arrayidx57.i to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %arrayidx57.i, align 4
  %conv58.i = zext i16 %51 to i32
  %arrayidx60.i = getelementptr %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 39, i32 4, i32 1
  %52 = ptrtoint ptr %arrayidx60.i to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %arrayidx60.i, align 2
  %conv61.i = zext i16 %53 to i32
  %conv64.i = zext i16 %36 to i32
  tail call void (ptr, i32, ptr, ...) @__rtw89_debug(ptr noundef %rtwdev, i32 noundef 1024, ptr noundef nonnull @.str.106, i32 noundef %conv55.i, i32 noundef %conv58.i, i32 noundef %conv61.i, i32 noundef %conv64.i) #10
  %54 = ptrtoint ptr %ifs_clm_cck_fa_permil.i to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %ifs_clm_cck_fa_permil.i, align 4
  %conv66.i = zext i16 %55 to i32
  %56 = ptrtoint ptr %ifs_clm_ofdm_fa_permil.i to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %ifs_clm_ofdm_fa_permil.i, align 2
  %conv68.i = zext i16 %57 to i32
  %add73.i = add nuw nsw i32 %conv68.i, %conv66.i
  tail call void (ptr, i32, ptr, ...) @__rtw89_debug(ptr noundef %rtwdev, i32 noundef 1024, ptr noundef nonnull @.str.107, i32 noundef %conv66.i, i32 noundef %conv68.i, i32 noundef %add73.i, i32 noundef %noisy_lv.0.i, i32 noundef %46) #10
  %58 = ptrtoint ptr %total_sta_assoc to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %total_sta_assoc, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %cmp.not.i164 = icmp eq i8 %59, 0
  br i1 %cmp.not.i164, label %rtw89_phy_dig_update_rssi_info.exit.thread, label %rtw89_phy_dig_update_rssi_info.exit

rtw89_phy_dig_update_rssi_info.exit.thread:       ; preds = %rtw89_phy_dig_igi_offset_by_env.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, ptr, ...) @__rtw89_debug(ptr noundef %rtwdev, i32 noundef 1024, ptr noundef nonnull @.str.108) #10
  %60 = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 39, i32 5
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 22, ptr %60, align 4
  br label %67

rtw89_phy_dig_update_rssi_info.exit:              ; preds = %rtw89_phy_dig_igi_offset_by_env.exit
  %ch_info1.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 40
  %62 = ptrtoint ptr %ch_info1.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %ch_info1.i, align 2
  %64 = lshr i8 %63, 1
  %65 = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 39, i32 5
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %64, ptr %65, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 21, i8 %63)
  %cmp22 = icmp ugt i8 %63, 21
  %sub = add nsw i8 %64, -10
  br i1 %cmp22, label %rtw89_phy_dig_update_rssi_info.exit._crit_edge, label %rtw89_phy_dig_update_rssi_info.exit._crit_edge199

rtw89_phy_dig_update_rssi_info.exit._crit_edge199: ; preds = %rtw89_phy_dig_update_rssi_info.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %69

rtw89_phy_dig_update_rssi_info.exit._crit_edge:   ; preds = %rtw89_phy_dig_update_rssi_info.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %67

67:                                               ; preds = %rtw89_phy_dig_update_rssi_info.exit._crit_edge, %rtw89_phy_dig_update_rssi_info.exit.thread
  %sub198 = phi i8 [ 12, %rtw89_phy_dig_update_rssi_info.exit.thread ], [ %sub, %rtw89_phy_dig_update_rssi_info.exit._crit_edge ]
  %68 = phi ptr [ %60, %rtw89_phy_dig_update_rssi_info.exit.thread ], [ %65, %rtw89_phy_dig_update_rssi_info.exit._crit_edge ]
  %.sink.i166197 = phi i8 [ 22, %rtw89_phy_dig_update_rssi_info.exit.thread ], [ %64, %rtw89_phy_dig_update_rssi_info.exit._crit_edge ]
  br label %69

69:                                               ; preds = %67, %rtw89_phy_dig_update_rssi_info.exit._crit_edge199
  %70 = phi ptr [ %68, %67 ], [ %65, %rtw89_phy_dig_update_rssi_info.exit._crit_edge199 ]
  %.sink.i166196 = phi i8 [ %.sink.i166197, %67 ], [ %64, %rtw89_phy_dig_update_rssi_info.exit._crit_edge199 ]
  %71 = phi i8 [ %sub198, %67 ], [ 0, %rtw89_phy_dig_update_rssi_info.exit._crit_edge199 ]
  %dyn_igi_min = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 39, i32 9
  %72 = ptrtoint ptr %dyn_igi_min to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 %71, ptr %dyn_igi_min, align 4
  %add = add nuw i8 %71, 25
  %dyn_igi_max = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 39, i32 8
  %73 = ptrtoint ptr %dyn_igi_max to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 %add, ptr %dyn_igi_max, align 1
  %74 = ptrtoint ptr %fa_rssi_ofst.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %fa_rssi_ofst.i, align 2
  %add33 = add i8 %75, %71
  %igi_fa_rssi = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 39, i32 6
  %76 = tail call i8 @llvm.umax.i8(i8 %add33, i8 %71)
  %77 = tail call i8 @llvm.umin.i8(i8 %76, i8 %add)
  %78 = ptrtoint ptr %igi_fa_rssi to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 %77, ptr %igi_fa_rssi, align 1
  %conv63 = zext i8 %.sink.i166196 to i32
  %conv65 = zext i8 %add to i32
  %conv67 = zext i8 %71 to i32
  %conv69 = zext i8 %77 to i32
  tail call void (ptr, i32, ptr, ...) @__rtw89_debug(ptr noundef %rtwdev, i32 noundef 1024, ptr noundef nonnull @.str.28, i32 noundef %conv63, i32 noundef %conv65, i32 noundef %conv67, i32 noundef %conv69) #10
  %force_gaincode_idx_en = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 39, i32 1
  %79 = ptrtoint ptr %force_gaincode_idx_en to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %force_gaincode_idx_en, align 1, !range !291
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %80)
  %tobool70.not = icmp eq i8 %80, 0
  br i1 %tobool70.not, label %if.else72, label %if.then71

if.then71:                                        ; preds = %69
  call void @__sanitizer_cov_trace_pc() #12
  %force_gaincode = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 39, i32 2
  %81 = ptrtoint ptr %force_gaincode to i32
  call void @__asan_loadN_noabort(i32 %81, i32 3)
  %force_gaincode.coerce.sroa.0.0.copyload = load i24, ptr %force_gaincode, align 4
  %force_gaincode.coerce.sroa.0.0.insert.ext = zext i24 %force_gaincode.coerce.sroa.0.0.copyload to i32
  %force_gaincode.coerce.sroa.0.0.insert.shift = shl nuw i32 %force_gaincode.coerce.sroa.0.0.insert.ext, 8
  %.fca.0.insert91 = insertvalue [1 x i32] poison, i32 %force_gaincode.coerce.sroa.0.0.insert.shift, 0
  tail call fastcc void @rtw89_phy_dig_set_igi_cr(ptr noundef %rtwdev, [1 x i32] %.fca.0.insert91)
  tail call void (ptr, i32, ptr, ...) @__rtw89_debug(ptr noundef %rtwdev, i32 noundef 1024, ptr noundef nonnull @.str.29) #10
  br label %if.end75

if.else72:                                        ; preds = %69
  %82 = ptrtoint ptr %igi_fa_rssi to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %igi_fa_rssi, align 1
  %igi_rssi_th.i.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 39, i32 3
  %84 = ptrtoint ptr %igi_rssi_th.i.i to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %igi_rssi_th.i.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %85, i8 %83)
  %cmp.i.i = icmp ugt i8 %85, %83
  br i1 %cmp.i.i, label %if.else72.rtw89_phy_dig_gaincode_by_rssi.exit_crit_edge, label %if.else.i.i

if.else72.rtw89_phy_dig_gaincode_by_rssi.exit_crit_edge: ; preds = %if.else72
  call void @__sanitizer_cov_trace_pc() #12
  br label %rtw89_phy_dig_gaincode_by_rssi.exit

if.else.i.i:                                      ; preds = %if.else72
  %arrayidx6.i.i = getelementptr %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 39, i32 3, i32 1
  %86 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %arrayidx6.i.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %87, i8 %83)
  %cmp8.i.i = icmp ugt i8 %87, %83
  br i1 %cmp8.i.i, label %if.else.i.i.rtw89_phy_dig_gaincode_by_rssi.exit_crit_edge, label %if.else11.i.i

if.else.i.i.rtw89_phy_dig_gaincode_by_rssi.exit_crit_edge: ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rtw89_phy_dig_gaincode_by_rssi.exit

if.else11.i.i:                                    ; preds = %if.else.i.i
  %arrayidx14.i.i = getelementptr %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 39, i32 3, i32 2
  %88 = ptrtoint ptr %arrayidx14.i.i to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %arrayidx14.i.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %89, i8 %83)
  %cmp16.i.i = icmp ugt i8 %89, %83
  br i1 %cmp16.i.i, label %if.else11.i.i.rtw89_phy_dig_gaincode_by_rssi.exit_crit_edge, label %if.else19.i.i

if.else11.i.i.rtw89_phy_dig_gaincode_by_rssi.exit_crit_edge: ; preds = %if.else11.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rtw89_phy_dig_gaincode_by_rssi.exit

if.else19.i.i:                                    ; preds = %if.else11.i.i
  %arrayidx22.i.i = getelementptr %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 39, i32 3, i32 3
  %90 = ptrtoint ptr %arrayidx22.i.i to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %arrayidx22.i.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %91, i8 %83)
  %cmp24.i.i = icmp ugt i8 %91, %83
  br i1 %cmp24.i.i, label %if.else19.i.i.rtw89_phy_dig_gaincode_by_rssi.exit_crit_edge, label %if.else27.i.i

if.else19.i.i.rtw89_phy_dig_gaincode_by_rssi.exit_crit_edge: ; preds = %if.else19.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rtw89_phy_dig_gaincode_by_rssi.exit

if.else27.i.i:                                    ; preds = %if.else19.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx30.i.i = getelementptr %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 39, i32 3, i32 4
  %92 = ptrtoint ptr %arrayidx30.i.i to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %arrayidx30.i.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %93, i8 %83)
  %cmp32.i.i = icmp ugt i8 %93, %83
  %..i.i = select i1 %cmp32.i.i, i8 2, i8 1
  br label %rtw89_phy_dig_gaincode_by_rssi.exit

rtw89_phy_dig_gaincode_by_rssi.exit:              ; preds = %if.else27.i.i, %if.else19.i.i.rtw89_phy_dig_gaincode_by_rssi.exit_crit_edge, %if.else11.i.i.rtw89_phy_dig_gaincode_by_rssi.exit_crit_edge, %if.else.i.i.rtw89_phy_dig_gaincode_by_rssi.exit_crit_edge, %if.else72.rtw89_phy_dig_gaincode_by_rssi.exit_crit_edge
  %lna_idx.0.i.i = phi i8 [ 6, %if.else72.rtw89_phy_dig_gaincode_by_rssi.exit_crit_edge ], [ 5, %if.else.i.i.rtw89_phy_dig_gaincode_by_rssi.exit_crit_edge ], [ 4, %if.else11.i.i.rtw89_phy_dig_gaincode_by_rssi.exit_crit_edge ], [ 3, %if.else19.i.i.rtw89_phy_dig_gaincode_by_rssi.exit_crit_edge ], [ %..i.i, %if.else27.i.i ]
  %94 = ptrtoint ptr %dig1 to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 %lna_idx.0.i.i, ptr %dig1, align 1
  %..i23.i = zext i1 %cmp.i.i to i8
  %tia_idx.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 39, i32 0, i32 1
  %95 = ptrtoint ptr %tia_idx.i to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 %..i23.i, ptr %tia_idx.i, align 1
  %lna_gain2.i.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 39, i32 17
  %96 = ptrtoint ptr %lna_gain2.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %lna_gain2.i.i, align 4
  %idxprom.i.i = zext i8 %lna_idx.0.i.i to i32
  %arrayidx.i.i = getelementptr i8, ptr %97, i32 %idxprom.i.i
  %98 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %arrayidx.i.i, align 1
  %tia_gain3.i.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 39, i32 20
  %100 = ptrtoint ptr %tia_gain3.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %tia_gain3.i.i, align 4
  %idxprom4.i.i = zext i1 %cmp.i.i to i32
  %arrayidx5.i.i = getelementptr i8, ptr %101, i32 %idxprom4.i.i
  %102 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %arrayidx5.i.i, align 1
  %conv.i.i = zext i8 %83 to i32
  %conv6.i.i = sext i8 %99 to i32
  %add.i.i = add nsw i32 %conv6.i.i, %conv.i.i
  %conv7.i.i = sext i8 %103 to i32
  %add8.i.i = add nsw i32 %add.i.i, %conv7.i.i
  %ib_pkpwr.i.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 39, i32 14
  %104 = ptrtoint ptr %ib_pkpwr.i.i to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %ib_pkpwr.i.i, align 1
  %conv9.i.i = sext i8 %105 to i32
  %ib_pbk.i.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 39, i32 13
  %106 = ptrtoint ptr %ib_pbk.i.i to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %ib_pbk.i.i, align 4
  %conv10.i.i = zext i8 %107 to i32
  %108 = add nsw i32 %add8.i.i, %conv10.i.i
  %sub11.i.i = sub nsw i32 %conv9.i.i, %108
  %add12.i.i = add nsw i32 %sub11.i.i, 120
  call void @__sanitizer_cov_trace_const_cmp4(i32 -120, i32 %sub11.i.i)
  %cmp.i24.i = icmp sgt i32 %sub11.i.i, -120
  %109 = tail call i32 @llvm.umin.i32(i32 %add12.i.i, i32 31) #10
  %110 = trunc i32 %109 to i8
  %conv21.i.i = select i1 %cmp.i24.i, i8 %110, i8 0
  tail call void (ptr, i32, ptr, ...) @__rtw89_debug(ptr noundef %rtwdev, i32 noundef 1024, ptr noundef nonnull @.str.110, i32 noundef %add8.i.i, i32 noundef %add12.i.i) #10
  %rxb_idx.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 39, i32 0, i32 2
  %111 = ptrtoint ptr %rxb_idx.i to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 %conv21.i.i, ptr %rxb_idx.i, align 1
  %112 = ptrtoint ptr %dig1 to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %dig1, align 1
  %conv4.i = zext i8 %113 to i32
  %114 = ptrtoint ptr %tia_idx.i to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %tia_idx.i, align 1
  %conv6.i = zext i8 %115 to i32
  %conv8.i = zext i8 %conv21.i.i to i32
  tail call void (ptr, i32, ptr, ...) @__rtw89_debug(ptr noundef %rtwdev, i32 noundef 1024, ptr noundef nonnull @.str.109, i32 noundef %conv.i.i, i32 noundef %conv4.i, i32 noundef %conv6.i, i32 noundef %conv8.i) #10
  %116 = ptrtoint ptr %dig1 to i32
  call void @__asan_loadN_noabort(i32 %116, i32 3)
  %cur_gaincode74.coerce.sroa.0.0.copyload = load i24, ptr %dig1, align 4
  %cur_gaincode74.coerce.sroa.0.0.insert.ext = zext i24 %cur_gaincode74.coerce.sroa.0.0.copyload to i32
  %cur_gaincode74.coerce.sroa.0.0.insert.shift = shl nuw i32 %cur_gaincode74.coerce.sroa.0.0.insert.ext, 8
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %cur_gaincode74.coerce.sroa.0.0.insert.shift, 0
  tail call fastcc void @rtw89_phy_dig_set_igi_cr(ptr noundef %rtwdev, [1 x i32] %.fca.0.insert)
  br label %if.end75

if.end75:                                         ; preds = %rtw89_phy_dig_gaincode_by_rssi.exit, %if.then71
  %117 = ptrtoint ptr %igi_fa_rssi to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %igi_fa_rssi, align 1
  %dyn_pd_th_en = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 39, i32 10
  %119 = ptrtoint ptr %dyn_pd_th_en to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %dyn_pd_th_en, align 1, !range !291
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %120)
  %tobool77.not = icmp eq i8 %120, 0
  %current_band_width.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 4, i32 6
  %121 = ptrtoint ptr %current_band_width.i to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %current_band_width.i, align 4
  %pd_low_th_ofst.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 39, i32 12
  %123 = ptrtoint ptr %pd_low_th_ofst.i to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %pd_low_th_ofst.i, align 1
  %125 = ptrtoint ptr %70 to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %70, align 4
  %dyn_pd_th_max.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 39, i32 11
  %127 = ptrtoint ptr %dyn_pd_th_max.i to i32
  call void @__asan_store1_noabort(i32 %127)
  store i8 %126, ptr %dyn_pd_th_max.i, align 2
  br i1 %tobool77.not, label %if.else.i169, label %if.then.i168

if.then.i168:                                     ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %122)
  %switch.selectcmp96.i = icmp eq i8 %122, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %122)
  %switch.selectcmp.i = icmp eq i8 %122, 2
  %switch.select.i = select i1 %switch.selectcmp.i, i8 13, i8 7
  %switch.select97.i = select i1 %switch.selectcmp96.i, i8 10, i8 %switch.select.i
  %add.i167 = add i8 %switch.select97.i, %124
  %128 = tail call i8 @llvm.umin.i8(i8 %126, i8 %118) #10
  %add23.i = add i8 %add.i167, 8
  %129 = tail call i8 @llvm.umax.i8(i8 %128, i8 %add23.i) #10
  %add38.i = add i8 %add.i167, 70
  %130 = tail call i8 @llvm.umin.i8(i8 %129, i8 %add38.i) #10
  %conv22.i = zext i8 %add.i167 to i32
  %conv52.i = zext i8 %130 to i32
  %sub.i = sub nuw nsw i32 -8, %conv22.i
  %sub54.i = add nsw i32 %sub.i, %conv52.i
  %shr.i = ashr i32 %sub54.i, 1
  %conv56.i = zext i8 %126 to i32
  tail call void (ptr, i32, ptr, ...) @__rtw89_debug(ptr noundef %rtwdev, i32 noundef 1024, ptr noundef nonnull @.str.103, i32 noundef %conv56.i, i32 noundef %conv52.i, i32 noundef %conv22.i, i32 noundef %shr.i) #10
  %phi.bo.i = shl nsw i32 %shr.i, 6
  %phi.bo95.i = and i32 %phi.bo.i, 1984
  br label %rtw89_phy_dig_dyn_pd_th.exit

if.else.i169:                                     ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, ptr, ...) @__rtw89_debug(ptr noundef %rtwdev, i32 noundef 1024, ptr noundef nonnull @.str.104) #10
  br label %rtw89_phy_dig_dyn_pd_th.exit

rtw89_phy_dig_dyn_pd_th.exit:                     ; preds = %if.else.i169, %if.then.i168
  %shl.i.i91.i = phi i32 [ 0, %if.else.i169 ], [ 536870912, %if.then.i168 ]
  %val.0.i = phi i32 [ 0, %if.else.i169 ], [ %phi.bo95.i, %if.then.i168 ]
  %hci.i.i.i.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 7
  %131 = ptrtoint ptr %hci.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %hci.i.i.i.i, align 8
  %read32.i.i.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %132, i32 0, i32 9
  %133 = ptrtoint ptr %read32.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %read32.i.i.i.i, align 4
  %call.i.i.i.i = tail call i32 %134(ptr noundef %rtwdev, i32 noundef 83996) #10
  %and21.i.i.i = and i32 %call.i.i.i.i, -1985
  %or.i.i.i = or i32 %and21.i.i.i, %val.0.i
  %135 = ptrtoint ptr %hci.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %hci.i.i.i.i, align 8
  %write32.i.i.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %136, i32 0, i32 12
  %137 = ptrtoint ptr %write32.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %write32.i.i.i.i, align 4
  tail call void %138(ptr noundef %rtwdev, i32 noundef 83996, i32 noundef %or.i.i.i) #10
  %139 = ptrtoint ptr %hci.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %hci.i.i.i.i, align 8
  %read32.i.i.i88.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %140, i32 0, i32 9
  %141 = ptrtoint ptr %read32.i.i.i88.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %read32.i.i.i88.i, align 4
  %call.i.i.i89.i = tail call i32 %142(ptr noundef %rtwdev, i32 noundef 83996) #10
  %and21.i.i90.i = and i32 %call.i.i.i89.i, -536870913
  %or.i.i93.i = or i32 %and21.i.i90.i, %shl.i.i91.i
  %143 = ptrtoint ptr %hci.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %hci.i.i.i.i, align 8
  %write32.i.i.i94.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %144, i32 0, i32 12
  %145 = ptrtoint ptr %write32.i.i.i94.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %write32.i.i.i94.i, align 4
  tail call void %146(ptr noundef %rtwdev, i32 noundef 83996, i32 noundef %or.i.i93.i) #10
  %147 = ptrtoint ptr %dyn_pd_th_en to i32
  call void @__asan_load1_noabort(i32 %147)
  %148 = load i8, ptr %dyn_pd_th_en, align 1, !range !291
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %148)
  %tobool79.not = icmp eq i8 %148, 0
  br i1 %tobool79.not, label %rtw89_phy_dig_dyn_pd_th.exit.if.else88_crit_edge, label %land.lhs.true81

rtw89_phy_dig_dyn_pd_th.exit.if.else88_crit_edge: ; preds = %rtw89_phy_dig_dyn_pd_th.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else88

land.lhs.true81:                                  ; preds = %rtw89_phy_dig_dyn_pd_th.exit
  %149 = ptrtoint ptr %igi_fa_rssi to i32
  call void @__asan_load1_noabort(i32 %149)
  %150 = load i8, ptr %igi_fa_rssi, align 1
  %151 = ptrtoint ptr %dyn_pd_th_max.i to i32
  call void @__asan_load1_noabort(i32 %151)
  %152 = load i8, ptr %dyn_pd_th_max.i, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %150, i8 %152)
  %cmp85 = icmp ugt i8 %150, %152
  br i1 %cmp85, label %if.then87, label %land.lhs.true81.if.else88_crit_edge

land.lhs.true81.if.else88_crit_edge:              ; preds = %land.lhs.true81
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else88

if.then87:                                        ; preds = %land.lhs.true81
  call void @__sanitizer_cov_trace_pc() #12
  %153 = ptrtoint ptr %hci.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %hci.i.i.i.i, align 8
  %read32.i.i.i.i171 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %154, i32 0, i32 9
  %155 = ptrtoint ptr %read32.i.i.i.i171 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %read32.i.i.i.i171, align 4
  %call.i.i.i.i172 = tail call i32 %156(ptr noundef %rtwdev, i32 noundef 83616) #10
  %or.i.i.i174 = or i32 %call.i.i.i.i172, 32
  %157 = ptrtoint ptr %hci.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %hci.i.i.i.i, align 8
  %write32.i.i.i.i175 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %158, i32 0, i32 12
  %159 = ptrtoint ptr %write32.i.i.i.i175 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %write32.i.i.i.i175, align 4
  tail call void %160(ptr noundef %rtwdev, i32 noundef 83616, i32 noundef %or.i.i.i174) #10
  %161 = ptrtoint ptr %hci.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %hci.i.i.i.i, align 8
  %read32.i.i.i.1.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %162, i32 0, i32 9
  %163 = ptrtoint ptr %read32.i.i.i.1.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %read32.i.i.i.1.i, align 4
  %call.i.i.i.1.i = tail call i32 %164(ptr noundef %rtwdev, i32 noundef 83620) #10
  %or.i.i.1.i = or i32 %call.i.i.i.1.i, 32
  %165 = ptrtoint ptr %hci.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %hci.i.i.i.i, align 8
  %write32.i.i.i.1.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %166, i32 0, i32 12
  %167 = ptrtoint ptr %write32.i.i.i.1.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %write32.i.i.i.1.i, align 4
  tail call void %168(ptr noundef %rtwdev, i32 noundef 83620, i32 noundef %or.i.i.1.i) #10
  %169 = ptrtoint ptr %hci.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %hci.i.i.i.i, align 8
  %read32.i.i.i.2.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %170, i32 0, i32 9
  %171 = ptrtoint ptr %read32.i.i.i.2.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %read32.i.i.i.2.i, align 4
  %call.i.i.i.2.i = tail call i32 %172(ptr noundef %rtwdev, i32 noundef 83828) #10
  %or.i.i.2.i = or i32 %call.i.i.i.2.i, 32
  %173 = ptrtoint ptr %hci.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %hci.i.i.i.i, align 8
  %write32.i.i.i.2.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %174, i32 0, i32 12
  %175 = ptrtoint ptr %write32.i.i.i.2.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %write32.i.i.i.2.i, align 4
  tail call void %176(ptr noundef %rtwdev, i32 noundef 83828, i32 noundef %or.i.i.2.i) #10
  %177 = ptrtoint ptr %hci.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %hci.i.i.i.i, align 8
  %read32.i.i.i.3.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %178, i32 0, i32 9
  %179 = ptrtoint ptr %read32.i.i.i.3.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %read32.i.i.i.3.i, align 4
  %call.i.i.i.3.i = tail call i32 %180(ptr noundef %rtwdev, i32 noundef 83832) #10
  %or.i.i.3.i = or i32 %call.i.i.i.3.i, 32
  %181 = ptrtoint ptr %hci.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %hci.i.i.i.i, align 8
  %write32.i.i.i.3.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %182, i32 0, i32 12
  %183 = ptrtoint ptr %write32.i.i.i.3.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %write32.i.i.i.3.i, align 4
  tail call void %184(ptr noundef %rtwdev, i32 noundef 83832, i32 noundef %or.i.i.3.i) #10
  tail call void (ptr, i32, ptr, ...) @__rtw89_debug(ptr noundef %rtwdev, i32 noundef 1024, ptr noundef nonnull @.str.105, i32 noundef 1) #10
  br label %cleanup

if.else88:                                        ; preds = %land.lhs.true81.if.else88_crit_edge, %rtw89_phy_dig_dyn_pd_th.exit.if.else88_crit_edge
  %185 = ptrtoint ptr %hci.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %hci.i.i.i.i, align 8
  %read32.i.i.i.i177 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %186, i32 0, i32 9
  %187 = ptrtoint ptr %read32.i.i.i.i177 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %read32.i.i.i.i177, align 4
  %call.i.i.i.i178 = tail call i32 %188(ptr noundef %rtwdev, i32 noundef 83616) #10
  %and21.i.i.i179 = and i32 %call.i.i.i.i178, -33
  %189 = ptrtoint ptr %hci.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %hci.i.i.i.i, align 8
  %write32.i.i.i.i180 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %190, i32 0, i32 12
  %191 = ptrtoint ptr %write32.i.i.i.i180 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %write32.i.i.i.i180, align 4
  tail call void %192(ptr noundef %rtwdev, i32 noundef 83616, i32 noundef %and21.i.i.i179) #10
  %193 = ptrtoint ptr %hci.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %hci.i.i.i.i, align 8
  %read32.i.i.i.1.i181 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %194, i32 0, i32 9
  %195 = ptrtoint ptr %read32.i.i.i.1.i181 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %read32.i.i.i.1.i181, align 4
  %call.i.i.i.1.i182 = tail call i32 %196(ptr noundef %rtwdev, i32 noundef 83620) #10
  %and21.i.i.1.i183 = and i32 %call.i.i.i.1.i182, -33
  %197 = ptrtoint ptr %hci.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %hci.i.i.i.i, align 8
  %write32.i.i.i.1.i184 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %198, i32 0, i32 12
  %199 = ptrtoint ptr %write32.i.i.i.1.i184 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %write32.i.i.i.1.i184, align 4
  tail call void %200(ptr noundef %rtwdev, i32 noundef 83620, i32 noundef %and21.i.i.1.i183) #10
  %201 = ptrtoint ptr %hci.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %hci.i.i.i.i, align 8
  %read32.i.i.i.2.i185 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %202, i32 0, i32 9
  %203 = ptrtoint ptr %read32.i.i.i.2.i185 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %read32.i.i.i.2.i185, align 4
  %call.i.i.i.2.i186 = tail call i32 %204(ptr noundef %rtwdev, i32 noundef 83828) #10
  %and21.i.i.2.i187 = and i32 %call.i.i.i.2.i186, -33
  %205 = ptrtoint ptr %hci.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %hci.i.i.i.i, align 8
  %write32.i.i.i.2.i188 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %206, i32 0, i32 12
  %207 = ptrtoint ptr %write32.i.i.i.2.i188 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %write32.i.i.i.2.i188, align 4
  tail call void %208(ptr noundef %rtwdev, i32 noundef 83828, i32 noundef %and21.i.i.2.i187) #10
  %209 = ptrtoint ptr %hci.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %hci.i.i.i.i, align 8
  %read32.i.i.i.3.i189 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %210, i32 0, i32 9
  %211 = ptrtoint ptr %read32.i.i.i.3.i189 to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %read32.i.i.i.3.i189, align 4
  %call.i.i.i.3.i190 = tail call i32 %212(ptr noundef %rtwdev, i32 noundef 83832) #10
  %and21.i.i.3.i191 = and i32 %call.i.i.i.3.i190, -33
  %213 = ptrtoint ptr %hci.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %hci.i.i.i.i, align 8
  %write32.i.i.i.3.i192 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %214, i32 0, i32 12
  %215 = ptrtoint ptr %write32.i.i.i.3.i192 to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %write32.i.i.i.3.i192, align 4
  tail call void %216(ptr noundef %rtwdev, i32 noundef 83832, i32 noundef %and21.i.i.3.i191) #10
  tail call void (ptr, i32, ptr, ...) @__rtw89_debug(ptr noundef %rtwdev, i32 noundef 1024, ptr noundef nonnull @.str.105, i32 noundef 0) #10
  br label %cleanup

cleanup:                                          ; preds = %if.else88, %if.then87, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw89_phy_dm_init(ptr noundef %rtwdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %chip1 = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 3
  %0 = ptrtoint ptr %chip1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip1, align 4
  %phystat1.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 27
  %rf_path_num10.i = getelementptr inbounds %struct.rtw89_chip_info, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %rf_path_num10.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %rf_path_num10.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp12.not.i = icmp eq i8 %3, 0
  br i1 %cmp12.not.i, label %entry.rtw89_phy_stat_init.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.rtw89_phy_stat_init.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %rtw89_phy_stat_init.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.013.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [4 x %struct.ewma_thermal], ptr %phystat1.i, i32 0, i32 %i.013.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %arrayidx.i, align 4
  %inc.i = add nuw nsw i32 %i.013.i, 1
  %5 = ptrtoint ptr %chip1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %chip1, align 4
  %rf_path_num.i = getelementptr inbounds %struct.rtw89_chip_info, ptr %6, i32 0, i32 9
  %7 = ptrtoint ptr %rf_path_num.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %rf_path_num.i, align 4
  %conv.i = zext i8 %8 to i32
  %cmp.i = icmp ult i32 %inc.i, %conv.i
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.end.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %phi.cmp.i = icmp eq i8 %8, 0
  br i1 %phi.cmp.i, label %for.end.i.rtw89_phy_stat_init.exit_crit_edge, label %for.end.i.for.body.i.i_crit_edge

for.end.i.for.body.i.i_crit_edge:                 ; preds = %for.end.i
  br label %for.body.i.i

for.end.i.rtw89_phy_stat_init.exit_crit_edge:     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rtw89_phy_stat_init.exit

for.body.i.i:                                     ; preds = %if.end.i.i.for.body.i.i_crit_edge, %for.end.i.for.body.i.i_crit_edge
  %9 = phi ptr [ %20, %if.end.i.i.for.body.i.i_crit_edge ], [ %6, %for.end.i.for.body.i.i_crit_edge ]
  %i.028.i.i = phi i32 [ %inc.i.i, %if.end.i.i.for.body.i.i_crit_edge ], [ 0, %for.end.i.for.body.i.i_crit_edge ]
  %ops.i.i.i = getelementptr inbounds %struct.rtw89_chip_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ops.i.i.i, align 4
  %get_thermal.i.i.i = getelementptr inbounds %struct.rtw89_chip_ops, ptr %11, i32 0, i32 18
  %12 = ptrtoint ptr %get_thermal.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %get_thermal.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %13, null
  br i1 %tobool.not.i.i.i, label %for.body.i.i.if.then.i.i_crit_edge, label %rtw89_chip_get_thermal.exit.i.i

for.body.i.i.if.then.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i

rtw89_chip_get_thermal.exit.i.i:                  ; preds = %for.body.i.i
  %call.i.i.i = tail call zeroext i8 %13(ptr noundef %rtwdev, i32 noundef %i.028.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call.i.i.i)
  %tobool.not.i.i = icmp eq i8 %call.i.i.i, 0
  br i1 %tobool.not.i.i, label %rtw89_chip_get_thermal.exit.i.i.if.end.i.i_crit_edge, label %rtw89_chip_get_thermal.exit.i.i.if.then.i.i_crit_edge

rtw89_chip_get_thermal.exit.i.i.if.then.i.i_crit_edge: ; preds = %rtw89_chip_get_thermal.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i

rtw89_chip_get_thermal.exit.i.i.if.end.i.i_crit_edge: ; preds = %rtw89_chip_get_thermal.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %rtw89_chip_get_thermal.exit.i.i.if.then.i.i_crit_edge, %for.body.i.i.if.then.i.i_crit_edge
  %retval.0.i23.i.i = phi i8 [ %call.i.i.i, %rtw89_chip_get_thermal.exit.i.i.if.then.i.i_crit_edge ], [ 16, %for.body.i.i.if.then.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr [4 x %struct.ewma_thermal], ptr %phystat1.i, i32 0, i32 %i.028.i.i
  %conv3.i.i = zext i8 %retval.0.i23.i.i to i32
  %14 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.i19.i.i = icmp eq i32 %15, 0
  %sub.i.i.i = mul i32 %15, 3
  %shl19.i.i.i = shl nuw nsw i32 %conv3.i.i, 4
  %add.i.i.i = add i32 %sub.i.i.i, %shl19.i.i.i
  %shr.i.i.i = lshr i32 %add.i.i.i, 2
  %cond.i.i.i = select i1 %tobool.not.i19.i.i, i32 %shl19.i.i.i, i32 %shr.i.i.i
  %16 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile i32 %cond.i.i.i, ptr %arrayidx.i.i, align 4
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %rtw89_chip_get_thermal.exit.i.i.if.end.i.i_crit_edge
  %retval.0.i24.i.i = phi i8 [ %retval.0.i23.i.i, %if.then.i.i ], [ 0, %rtw89_chip_get_thermal.exit.i.i.if.end.i.i_crit_edge ]
  %conv4.i.i = zext i8 %retval.0.i24.i.i to i32
  %arrayidx6.i.i = getelementptr [4 x %struct.ewma_thermal], ptr %phystat1.i, i32 0, i32 %i.028.i.i
  %17 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx6.i.i, align 4
  %shr.i20.i.i = lshr i32 %18, 4
  tail call void (ptr, i32, ptr, ...) @__rtw89_debug(ptr noundef %rtwdev, i32 noundef 4, ptr noundef nonnull @.str.80, i32 noundef %i.028.i.i, i32 noundef %conv4.i.i, i32 noundef %shr.i20.i.i) #10
  %inc.i.i = add nuw nsw i32 %i.028.i.i, 1
  %19 = ptrtoint ptr %chip1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %chip1, align 4
  %rf_path_num.i.i = getelementptr inbounds %struct.rtw89_chip_info, ptr %20, i32 0, i32 9
  %21 = ptrtoint ptr %rf_path_num.i.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %rf_path_num.i.i, align 4
  %conv.i.i = zext i8 %22 to i32
  %cmp.i.i = icmp ult i32 %inc.i.i, %conv.i.i
  br i1 %cmp.i.i, label %if.end.i.i.for.body.i.i_crit_edge, label %if.end.i.i.rtw89_phy_stat_init.exit_crit_edge

if.end.i.i.rtw89_phy_stat_init.exit_crit_edge:    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rtw89_phy_stat_init.exit

if.end.i.i.for.body.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

rtw89_phy_stat_init.exit:                         ; preds = %if.end.i.i.rtw89_phy_stat_init.exit_crit_edge, %for.end.i.rtw89_phy_stat_init.exit_crit_edge, %entry.rtw89_phy_stat_init.exit_crit_edge
  %cur_pkt_stat.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 27, i32 1
  %23 = call ptr @memset(ptr %cur_pkt_stat.i, i32 0, i32 3560)
  %24 = ptrtoint ptr %chip1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %chip1, align 4
  %ops.i = getelementptr inbounds %struct.rtw89_chip_info, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ops.i, align 4
  %bb_sethw.i = getelementptr inbounds %struct.rtw89_chip_ops, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %bb_sethw.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %bb_sethw.i, align 4
  %tobool.not.i = icmp eq ptr %29, null
  br i1 %tobool.not.i, label %rtw89_phy_stat_init.exit.rtw89_chip_bb_sethw.exit_crit_edge, label %if.then.i

rtw89_phy_stat_init.exit.rtw89_chip_bb_sethw.exit_crit_edge: ; preds = %rtw89_phy_stat_init.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %rtw89_chip_bb_sethw.exit

if.then.i:                                        ; preds = %rtw89_phy_stat_init.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %29(ptr noundef %rtwdev) #10
  br label %rtw89_chip_bb_sethw.exit

rtw89_chip_bb_sethw.exit:                         ; preds = %if.then.i, %rtw89_phy_stat_init.exit.rtw89_chip_bb_sethw.exit_crit_edge
  %env_monitor.i.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 38
  %ccx_manual_ctrl.i.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 38, i32 6
  %30 = ptrtoint ptr %ccx_manual_ctrl.i.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %ccx_manual_ctrl.i.i, align 4
  %ccx_ongoing.i.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 38, i32 4
  %31 = ptrtoint ptr %ccx_ongoing.i.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 0, ptr %ccx_ongoing.i.i, align 2
  %ccx_rac_lv.i.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 38, i32 5
  %32 = ptrtoint ptr %ccx_rac_lv.i.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 0, ptr %ccx_rac_lv.i.i, align 1
  %ccx_rpt_stamp.i.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 38, i32 2
  %33 = ptrtoint ptr %ccx_rpt_stamp.i.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 0, ptr %ccx_rpt_stamp.i.i, align 8
  %ccx_period.i.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 38, i32 14
  %34 = ptrtoint ptr %ccx_period.i.i to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 0, ptr %ccx_period.i.i, align 4
  %ccx_unit_idx.i.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 38, i32 15
  %35 = ptrtoint ptr %ccx_unit_idx.i.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 3, ptr %ccx_unit_idx.i.i, align 2
  %36 = ptrtoint ptr %env_monitor.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %env_monitor.i.i, align 8
  %ccx_edcca_opt_bw_idx.i.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 38, i32 16
  %37 = ptrtoint ptr %ccx_edcca_opt_bw_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %ccx_edcca_opt_bw_idx.i.i, align 8
  %dbcc_en.i.i.i.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 2
  %hci.i.i.i.i.i.i.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 7
  %38 = ptrtoint ptr %hci.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %hci.i.i.i.i.i.i.i, align 8
  %read32.i.i.i.i.i.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %39, i32 0, i32 9
  %40 = ptrtoint ptr %read32.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %read32.i.i.i.i.i.i.i, align 4
  %call.i.i.i.i.i.i.i = tail call i32 %41(ptr noundef %rtwdev, i32 noundef 68608) #10
  %or.i.i.i.i.i.i = or i32 %call.i.i.i.i.i.i.i, 1
  %42 = ptrtoint ptr %hci.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %hci.i.i.i.i.i.i.i, align 8
  %write32.i.i.i.i.i.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %43, i32 0, i32 12
  %44 = ptrtoint ptr %write32.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %write32.i.i.i.i.i.i.i, align 4
  tail call void %45(ptr noundef %rtwdev, i32 noundef 68608, i32 noundef %or.i.i.i.i.i.i) #10
  %46 = ptrtoint ptr %dbcc_en.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %dbcc_en.i.i.i.i, align 8, !range !291
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool.not.i.i.i13 = icmp eq i8 %47, 0
  br i1 %tobool.not.i.i.i13, label %rtw89_chip_bb_sethw.exit.rtw89_phy_set_phy_regs.exit.i.i_crit_edge, label %rtw89_phy_write32_idx.exit21.i.i.i

rtw89_chip_bb_sethw.exit.rtw89_phy_set_phy_regs.exit.i.i_crit_edge: ; preds = %rtw89_chip_bb_sethw.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %rtw89_phy_set_phy_regs.exit.i.i

rtw89_phy_write32_idx.exit21.i.i.i:               ; preds = %rtw89_chip_bb_sethw.exit
  call void @__sanitizer_cov_trace_pc() #12
  %48 = ptrtoint ptr %hci.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %hci.i.i.i.i.i.i.i, align 8
  %read32.i.i.i.i13.i.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %49, i32 0, i32 9
  %50 = ptrtoint ptr %read32.i.i.i.i13.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %read32.i.i.i.i13.i.i.i, align 4
  %call.i.i.i.i14.i.i.i = tail call i32 %51(ptr noundef %rtwdev, i32 noundef 76800) #10
  %or.i.i.i19.i.i.i = or i32 %call.i.i.i.i14.i.i.i, 1
  %52 = ptrtoint ptr %hci.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %hci.i.i.i.i.i.i.i, align 8
  %write32.i.i.i.i20.i.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %53, i32 0, i32 12
  %54 = ptrtoint ptr %write32.i.i.i.i20.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %write32.i.i.i.i20.i.i.i, align 4
  tail call void %55(ptr noundef %rtwdev, i32 noundef 76800, i32 noundef %or.i.i.i19.i.i.i) #10
  br label %rtw89_phy_set_phy_regs.exit.i.i

rtw89_phy_set_phy_regs.exit.i.i:                  ; preds = %rtw89_phy_write32_idx.exit21.i.i.i, %rtw89_chip_bb_sethw.exit.rtw89_phy_set_phy_regs.exit.i.i_crit_edge
  %56 = ptrtoint ptr %hci.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %hci.i.i.i.i.i.i.i, align 8
  %read32.i.i.i.i.i14.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %57, i32 0, i32 9
  %58 = ptrtoint ptr %read32.i.i.i.i.i14.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %read32.i.i.i.i.i14.i.i, align 4
  %call.i.i.i.i.i15.i.i = tail call i32 %59(ptr noundef %rtwdev, i32 noundef 68608) #10
  %or.i.i.i.i17.i.i = or i32 %call.i.i.i.i.i15.i.i, 2
  %60 = ptrtoint ptr %hci.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %hci.i.i.i.i.i.i.i, align 8
  %write32.i.i.i.i.i18.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %61, i32 0, i32 12
  %62 = ptrtoint ptr %write32.i.i.i.i.i18.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %write32.i.i.i.i.i18.i.i, align 4
  tail call void %63(ptr noundef %rtwdev, i32 noundef 68608, i32 noundef %or.i.i.i.i17.i.i) #10
  %64 = ptrtoint ptr %dbcc_en.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %dbcc_en.i.i.i.i, align 8, !range !291
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %65)
  %tobool.not.i19.i.i14 = icmp eq i8 %65, 0
  br i1 %tobool.not.i19.i.i14, label %rtw89_phy_set_phy_regs.exit.i.i.rtw89_phy_set_phy_regs.exit32.i.i_crit_edge, label %rtw89_phy_write32_idx.exit21.i31.i.i

rtw89_phy_set_phy_regs.exit.i.i.rtw89_phy_set_phy_regs.exit32.i.i_crit_edge: ; preds = %rtw89_phy_set_phy_regs.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rtw89_phy_set_phy_regs.exit32.i.i

rtw89_phy_write32_idx.exit21.i31.i.i:             ; preds = %rtw89_phy_set_phy_regs.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %66 = ptrtoint ptr %hci.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %hci.i.i.i.i.i.i.i, align 8
  %read32.i.i.i.i13.i26.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %67, i32 0, i32 9
  %68 = ptrtoint ptr %read32.i.i.i.i13.i26.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %read32.i.i.i.i13.i26.i.i, align 4
  %call.i.i.i.i14.i27.i.i = tail call i32 %69(ptr noundef %rtwdev, i32 noundef 76800) #10
  %or.i.i.i19.i29.i.i = or i32 %call.i.i.i.i14.i27.i.i, 2
  %70 = ptrtoint ptr %hci.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %hci.i.i.i.i.i.i.i, align 8
  %write32.i.i.i.i20.i30.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %71, i32 0, i32 12
  %72 = ptrtoint ptr %write32.i.i.i.i20.i30.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %write32.i.i.i.i20.i30.i.i, align 4
  tail call void %73(ptr noundef %rtwdev, i32 noundef 76800, i32 noundef %or.i.i.i19.i29.i.i) #10
  br label %rtw89_phy_set_phy_regs.exit32.i.i

rtw89_phy_set_phy_regs.exit32.i.i:                ; preds = %rtw89_phy_write32_idx.exit21.i31.i.i, %rtw89_phy_set_phy_regs.exit.i.i.rtw89_phy_set_phy_regs.exit32.i.i_crit_edge
  %74 = ptrtoint ptr %hci.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %hci.i.i.i.i.i.i.i, align 8
  %read32.i.i.i.i.i35.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %75, i32 0, i32 9
  %76 = ptrtoint ptr %read32.i.i.i.i.i35.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %read32.i.i.i.i.i35.i.i, align 4
  %call.i.i.i.i.i36.i.i = tail call i32 %77(ptr noundef %rtwdev, i32 noundef 68608) #10
  %or.i.i.i.i38.i.i = or i32 %call.i.i.i.i.i36.i.i, 4
  %78 = ptrtoint ptr %hci.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %hci.i.i.i.i.i.i.i, align 8
  %write32.i.i.i.i.i39.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %79, i32 0, i32 12
  %80 = ptrtoint ptr %write32.i.i.i.i.i39.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %write32.i.i.i.i.i39.i.i, align 4
  tail call void %81(ptr noundef %rtwdev, i32 noundef 68608, i32 noundef %or.i.i.i.i38.i.i) #10
  %82 = ptrtoint ptr %dbcc_en.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %dbcc_en.i.i.i.i, align 8, !range !291
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %83)
  %tobool.not.i40.i.i = icmp eq i8 %83, 0
  br i1 %tobool.not.i40.i.i, label %rtw89_phy_set_phy_regs.exit32.i.i.rtw89_phy_set_phy_regs.exit53.i.i_crit_edge, label %rtw89_phy_write32_idx.exit21.i52.i.i

rtw89_phy_set_phy_regs.exit32.i.i.rtw89_phy_set_phy_regs.exit53.i.i_crit_edge: ; preds = %rtw89_phy_set_phy_regs.exit32.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rtw89_phy_set_phy_regs.exit53.i.i

rtw89_phy_write32_idx.exit21.i52.i.i:             ; preds = %rtw89_phy_set_phy_regs.exit32.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %84 = ptrtoint ptr %hci.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %hci.i.i.i.i.i.i.i, align 8
  %read32.i.i.i.i13.i47.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %85, i32 0, i32 9
  %86 = ptrtoint ptr %read32.i.i.i.i13.i47.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %read32.i.i.i.i13.i47.i.i, align 4
  %call.i.i.i.i14.i48.i.i = tail call i32 %87(ptr noundef %rtwdev, i32 noundef 76800) #10
  %or.i.i.i19.i50.i.i = or i32 %call.i.i.i.i14.i48.i.i, 4
  %88 = ptrtoint ptr %hci.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %hci.i.i.i.i.i.i.i, align 8
  %write32.i.i.i.i20.i51.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %89, i32 0, i32 12
  %90 = ptrtoint ptr %write32.i.i.i.i20.i51.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %write32.i.i.i.i20.i51.i.i, align 4
  tail call void %91(ptr noundef %rtwdev, i32 noundef 76800, i32 noundef %or.i.i.i19.i50.i.i) #10
  br label %rtw89_phy_set_phy_regs.exit53.i.i

rtw89_phy_set_phy_regs.exit53.i.i:                ; preds = %rtw89_phy_write32_idx.exit21.i52.i.i, %rtw89_phy_set_phy_regs.exit32.i.i.rtw89_phy_set_phy_regs.exit53.i.i_crit_edge
  %92 = ptrtoint ptr %hci.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %hci.i.i.i.i.i.i.i, align 8
  %read32.i.i.i.i.i56.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %93, i32 0, i32 9
  %94 = ptrtoint ptr %read32.i.i.i.i.i56.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %read32.i.i.i.i.i56.i.i, align 4
  %call.i.i.i.i.i57.i.i = tail call i32 %95(ptr noundef %rtwdev, i32 noundef 68608) #10
  %and21.i.i.i.i58.i.i = and i32 %call.i.i.i.i.i57.i.i, -113
  %96 = ptrtoint ptr %hci.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %hci.i.i.i.i.i.i.i, align 8
  %write32.i.i.i.i.i59.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %97, i32 0, i32 12
  %98 = ptrtoint ptr %write32.i.i.i.i.i59.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %write32.i.i.i.i.i59.i.i, align 4
  tail call void %99(ptr noundef %rtwdev, i32 noundef 68608, i32 noundef %and21.i.i.i.i58.i.i) #10
  %100 = ptrtoint ptr %dbcc_en.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %dbcc_en.i.i.i.i, align 8, !range !291
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %101)
  %tobool.not.i60.i.i = icmp eq i8 %101, 0
  br i1 %tobool.not.i60.i.i, label %rtw89_phy_set_phy_regs.exit53.i.i.rtw89_phy_ccx_top_setting_init.exit.i_crit_edge, label %rtw89_phy_write32_idx.exit21.i71.i.i

rtw89_phy_set_phy_regs.exit53.i.i.rtw89_phy_ccx_top_setting_init.exit.i_crit_edge: ; preds = %rtw89_phy_set_phy_regs.exit53.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rtw89_phy_ccx_top_setting_init.exit.i

rtw89_phy_write32_idx.exit21.i71.i.i:             ; preds = %rtw89_phy_set_phy_regs.exit53.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %102 = ptrtoint ptr %hci.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %hci.i.i.i.i.i.i.i, align 8
  %read32.i.i.i.i13.i67.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %103, i32 0, i32 9
  %104 = ptrtoint ptr %read32.i.i.i.i13.i67.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %read32.i.i.i.i13.i67.i.i, align 4
  %call.i.i.i.i14.i68.i.i = tail call i32 %105(ptr noundef %rtwdev, i32 noundef 76800) #10
  %and21.i.i.i16.i69.i.i = and i32 %call.i.i.i.i14.i68.i.i, -113
  %106 = ptrtoint ptr %hci.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %hci.i.i.i.i.i.i.i, align 8
  %write32.i.i.i.i20.i70.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %107, i32 0, i32 12
  %108 = ptrtoint ptr %write32.i.i.i.i20.i70.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %write32.i.i.i.i20.i70.i.i, align 4
  tail call void %109(ptr noundef %rtwdev, i32 noundef 76800, i32 noundef %and21.i.i.i16.i69.i.i) #10
  br label %rtw89_phy_ccx_top_setting_init.exit.i

rtw89_phy_ccx_top_setting_init.exit.i:            ; preds = %rtw89_phy_write32_idx.exit21.i71.i.i, %rtw89_phy_set_phy_regs.exit53.i.i.rtw89_phy_ccx_top_setting_init.exit.i_crit_edge
  %ifs_clm_app.i.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 38, i32 11
  %110 = ptrtoint ptr %ifs_clm_app.i.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 1, ptr %ifs_clm_app.i.i, align 4
  %ifs_clm_mntr_time.i.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 38, i32 10
  %111 = ptrtoint ptr %ifs_clm_mntr_time.i.i to i32
  call void @__asan_store2_noabort(i32 %111)
  store i16 0, ptr %ifs_clm_mntr_time.i.i, align 2
  %ifs_clm_th_l.i.i.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 38, i32 18
  %ifs_clm_th_h.i.i.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 38, i32 19
  %112 = ptrtoint ptr %ifs_clm_th_l.i.i.i to i32
  call void @__asan_store2_noabort(i32 %112)
  store i16 0, ptr %ifs_clm_th_l.i.i.i, align 2
  %113 = ptrtoint ptr %ccx_unit_idx.i.i to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %ccx_unit_idx.i.i, align 2
  %conv.i.i.i.i = zext i8 %114 to i32
  %shr.i.i.i.i = lshr i32 16, %conv.i.i.i.i
  %conv1.i.i.i.i = trunc i32 %shr.i.i.i.i to i16
  %115 = ptrtoint ptr %ifs_clm_th_h.i.i.i to i32
  call void @__asan_store2_noabort(i32 %115)
  store i16 %conv1.i.i.i.i, ptr %ifs_clm_th_h.i.i.i, align 2
  %add.i.i.i15 = add nuw nsw i16 %conv1.i.i.i.i, 1
  %arrayidx13.i.i.i = getelementptr %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 38, i32 18, i32 1
  %116 = ptrtoint ptr %arrayidx13.i.i.i to i32
  call void @__asan_store2_noabort(i32 %116)
  store i16 %add.i.i.i15, ptr %arrayidx13.i.i.i, align 2
  %shr.i52.i.i.i = lshr i32 64, %conv.i.i.i.i
  %conv1.i53.i.i.i = trunc i32 %shr.i52.i.i.i to i16
  %arrayidx23.i.i.i = getelementptr %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 38, i32 19, i32 1
  %117 = ptrtoint ptr %arrayidx23.i.i.i to i32
  call void @__asan_store2_noabort(i32 %117)
  store i16 %conv1.i53.i.i.i, ptr %arrayidx23.i.i.i, align 2
  %add.1.i.i.i = add nuw nsw i16 %conv1.i53.i.i.i, 1
  %arrayidx13.1.i.i.i = getelementptr %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 38, i32 18, i32 2
  %118 = ptrtoint ptr %arrayidx13.1.i.i.i to i32
  call void @__asan_store2_noabort(i32 %118)
  store i16 %add.1.i.i.i, ptr %arrayidx13.1.i.i.i, align 2
  %shr.i52.1.i.i.i = lshr i32 256, %conv.i.i.i.i
  %conv1.i53.1.i.i.i = trunc i32 %shr.i52.1.i.i.i to i16
  %arrayidx23.1.i.i.i = getelementptr %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 38, i32 19, i32 2
  %119 = ptrtoint ptr %arrayidx23.1.i.i.i to i32
  call void @__asan_store2_noabort(i32 %119)
  store i16 %conv1.i53.1.i.i.i, ptr %arrayidx23.1.i.i.i, align 2
  %add.2.i.i.i = add nuw nsw i16 %conv1.i53.1.i.i.i, 1
  %arrayidx13.2.i.i.i = getelementptr %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 38, i32 18, i32 3
  %120 = ptrtoint ptr %arrayidx13.2.i.i.i to i32
  call void @__asan_store2_noabort(i32 %120)
  store i16 %add.2.i.i.i, ptr %arrayidx13.2.i.i.i, align 2
  %shr.i52.2.i.i.i = lshr i32 1024, %conv.i.i.i.i
  %conv1.i53.2.i.i.i = trunc i32 %shr.i52.2.i.i.i to i16
  %arrayidx23.2.i.i.i = getelementptr %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 38, i32 19, i32 3
  %121 = ptrtoint ptr %arrayidx23.2.i.i.i to i32
  call void @__asan_store2_noabort(i32 %121)
  store i16 %conv1.i53.2.i.i.i, ptr %arrayidx23.2.i.i.i, align 2
  tail call fastcc void @rtw89_phy_ifs_clm_set_th_reg(ptr noundef %rtwdev) #10
  %122 = ptrtoint ptr %hci.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %hci.i.i.i.i.i.i.i, align 8
  %read32.i.i.i.i.i.i4.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %123, i32 0, i32 9
  %124 = ptrtoint ptr %read32.i.i.i.i.i.i4.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %read32.i.i.i.i.i.i4.i, align 4
  %call.i.i.i.i.i.i5.i = tail call i32 %125(ptr noundef %rtwdev, i32 noundef 68648) #10
  %or.i.i.i.i.i6.i = or i32 %call.i.i.i.i.i.i5.i, 4096
  %126 = ptrtoint ptr %hci.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %hci.i.i.i.i.i.i.i, align 8
  %write32.i.i.i.i.i.i7.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %127, i32 0, i32 12
  %128 = ptrtoint ptr %write32.i.i.i.i.i.i7.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %write32.i.i.i.i.i.i7.i, align 4
  tail call void %129(ptr noundef %rtwdev, i32 noundef 68648, i32 noundef %or.i.i.i.i.i6.i) #10
  %130 = ptrtoint ptr %dbcc_en.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %dbcc_en.i.i.i.i, align 8, !range !291
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %131)
  %tobool.not.i.i8.i = icmp eq i8 %131, 0
  br i1 %tobool.not.i.i8.i, label %rtw89_phy_ccx_top_setting_init.exit.i.rtw89_phy_set_phy_regs.exit.i14.i_crit_edge, label %rtw89_phy_write32_idx.exit21.i.i13.i

rtw89_phy_ccx_top_setting_init.exit.i.rtw89_phy_set_phy_regs.exit.i14.i_crit_edge: ; preds = %rtw89_phy_ccx_top_setting_init.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rtw89_phy_set_phy_regs.exit.i14.i

rtw89_phy_write32_idx.exit21.i.i13.i:             ; preds = %rtw89_phy_ccx_top_setting_init.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %132 = ptrtoint ptr %hci.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %hci.i.i.i.i.i.i.i, align 8
  %read32.i.i.i.i13.i.i9.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %133, i32 0, i32 9
  %134 = ptrtoint ptr %read32.i.i.i.i13.i.i9.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %read32.i.i.i.i13.i.i9.i, align 4
  %call.i.i.i.i14.i.i10.i = tail call i32 %135(ptr noundef %rtwdev, i32 noundef 76840) #10
  %or.i.i.i19.i.i11.i = or i32 %call.i.i.i.i14.i.i10.i, 4096
  %136 = ptrtoint ptr %hci.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %hci.i.i.i.i.i.i.i, align 8
  %write32.i.i.i.i20.i.i12.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %137, i32 0, i32 12
  %138 = ptrtoint ptr %write32.i.i.i.i20.i.i12.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %write32.i.i.i.i20.i.i12.i, align 4
  tail call void %139(ptr noundef %rtwdev, i32 noundef 76840, i32 noundef %or.i.i.i19.i.i11.i) #10
  br label %rtw89_phy_set_phy_regs.exit.i14.i

rtw89_phy_set_phy_regs.exit.i14.i:                ; preds = %rtw89_phy_write32_idx.exit21.i.i13.i, %rtw89_phy_ccx_top_setting_init.exit.i.rtw89_phy_set_phy_regs.exit.i14.i_crit_edge
  %140 = ptrtoint ptr %hci.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %hci.i.i.i.i.i.i.i, align 8
  %read32.i.i.i.i.i13.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %141, i32 0, i32 9
  %142 = ptrtoint ptr %read32.i.i.i.i.i13.i.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %read32.i.i.i.i.i13.i.i, align 4
  %call.i.i.i.i.i14.i.i = tail call i32 %143(ptr noundef %rtwdev, i32 noundef 68652) #10
  %or.i.i.i.i16.i.i = or i32 %call.i.i.i.i.i14.i.i, 32768
  %144 = ptrtoint ptr %hci.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %hci.i.i.i.i.i.i.i, align 8
  %write32.i.i.i.i.i17.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %145, i32 0, i32 12
  %146 = ptrtoint ptr %write32.i.i.i.i.i17.i.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %write32.i.i.i.i.i17.i.i, align 4
  tail call void %147(ptr noundef %rtwdev, i32 noundef 68652, i32 noundef %or.i.i.i.i16.i.i) #10
  %148 = ptrtoint ptr %dbcc_en.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %148)
  %149 = load i8, ptr %dbcc_en.i.i.i.i, align 8, !range !291
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %149)
  %tobool.not.i18.i.i = icmp eq i8 %149, 0
  br i1 %tobool.not.i18.i.i, label %rtw89_phy_set_phy_regs.exit.i14.i.rtw89_phy_set_phy_regs.exit31.i.i_crit_edge, label %rtw89_phy_write32_idx.exit21.i30.i.i

rtw89_phy_set_phy_regs.exit.i14.i.rtw89_phy_set_phy_regs.exit31.i.i_crit_edge: ; preds = %rtw89_phy_set_phy_regs.exit.i14.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rtw89_phy_set_phy_regs.exit31.i.i

rtw89_phy_write32_idx.exit21.i30.i.i:             ; preds = %rtw89_phy_set_phy_regs.exit.i14.i
  call void @__sanitizer_cov_trace_pc() #12
  %150 = ptrtoint ptr %hci.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %hci.i.i.i.i.i.i.i, align 8
  %read32.i.i.i.i13.i25.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %151, i32 0, i32 9
  %152 = ptrtoint ptr %read32.i.i.i.i13.i25.i.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %read32.i.i.i.i13.i25.i.i, align 4
  %call.i.i.i.i14.i26.i.i = tail call i32 %153(ptr noundef %rtwdev, i32 noundef 76844) #10
  %or.i.i.i19.i28.i.i = or i32 %call.i.i.i.i14.i26.i.i, 32768
  %154 = ptrtoint ptr %hci.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %hci.i.i.i.i.i.i.i, align 8
  %write32.i.i.i.i20.i29.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %155, i32 0, i32 12
  %156 = ptrtoint ptr %write32.i.i.i.i20.i29.i.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %write32.i.i.i.i20.i29.i.i, align 4
  tail call void %157(ptr noundef %rtwdev, i32 noundef 76844, i32 noundef %or.i.i.i19.i28.i.i) #10
  br label %rtw89_phy_set_phy_regs.exit31.i.i

rtw89_phy_set_phy_regs.exit31.i.i:                ; preds = %rtw89_phy_write32_idx.exit21.i30.i.i, %rtw89_phy_set_phy_regs.exit.i14.i.rtw89_phy_set_phy_regs.exit31.i.i_crit_edge
  %158 = ptrtoint ptr %hci.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %hci.i.i.i.i.i.i.i, align 8
  %read32.i.i.i.i.i34.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %159, i32 0, i32 9
  %160 = ptrtoint ptr %read32.i.i.i.i.i34.i.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %read32.i.i.i.i.i34.i.i, align 4
  %call.i.i.i.i.i35.i.i = tail call i32 %161(ptr noundef %rtwdev, i32 noundef 68656) #10
  %or.i.i.i.i37.i.i = or i32 %call.i.i.i.i.i35.i.i, 32768
  %162 = ptrtoint ptr %hci.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %hci.i.i.i.i.i.i.i, align 8
  %write32.i.i.i.i.i38.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %163, i32 0, i32 12
  %164 = ptrtoint ptr %write32.i.i.i.i.i38.i.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %write32.i.i.i.i.i38.i.i, align 4
  tail call void %165(ptr noundef %rtwdev, i32 noundef 68656, i32 noundef %or.i.i.i.i37.i.i) #10
  %166 = ptrtoint ptr %dbcc_en.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %166)
  %167 = load i8, ptr %dbcc_en.i.i.i.i, align 8, !range !291
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %167)
  %tobool.not.i39.i.i = icmp eq i8 %167, 0
  br i1 %tobool.not.i39.i.i, label %rtw89_phy_set_phy_regs.exit31.i.i.rtw89_phy_set_phy_regs.exit52.i.i_crit_edge, label %rtw89_phy_write32_idx.exit21.i51.i.i

rtw89_phy_set_phy_regs.exit31.i.i.rtw89_phy_set_phy_regs.exit52.i.i_crit_edge: ; preds = %rtw89_phy_set_phy_regs.exit31.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rtw89_phy_set_phy_regs.exit52.i.i

rtw89_phy_write32_idx.exit21.i51.i.i:             ; preds = %rtw89_phy_set_phy_regs.exit31.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %168 = ptrtoint ptr %hci.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %hci.i.i.i.i.i.i.i, align 8
  %read32.i.i.i.i13.i46.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %169, i32 0, i32 9
  %170 = ptrtoint ptr %read32.i.i.i.i13.i46.i.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %read32.i.i.i.i13.i46.i.i, align 4
  %call.i.i.i.i14.i47.i.i = tail call i32 %171(ptr noundef %rtwdev, i32 noundef 76848) #10
  %or.i.i.i19.i49.i.i = or i32 %call.i.i.i.i14.i47.i.i, 32768
  %172 = ptrtoint ptr %hci.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %hci.i.i.i.i.i.i.i, align 8
  %write32.i.i.i.i20.i50.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %173, i32 0, i32 12
  %174 = ptrtoint ptr %write32.i.i.i.i20.i50.i.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %write32.i.i.i.i20.i50.i.i, align 4
  tail call void %175(ptr noundef %rtwdev, i32 noundef 76848, i32 noundef %or.i.i.i19.i49.i.i) #10
  br label %rtw89_phy_set_phy_regs.exit52.i.i

rtw89_phy_set_phy_regs.exit52.i.i:                ; preds = %rtw89_phy_write32_idx.exit21.i51.i.i, %rtw89_phy_set_phy_regs.exit31.i.i.rtw89_phy_set_phy_regs.exit52.i.i_crit_edge
  %176 = ptrtoint ptr %hci.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %hci.i.i.i.i.i.i.i, align 8
  %read32.i.i.i.i.i55.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %177, i32 0, i32 9
  %178 = ptrtoint ptr %read32.i.i.i.i.i55.i.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %read32.i.i.i.i.i55.i.i, align 4
  %call.i.i.i.i.i56.i.i = tail call i32 %179(ptr noundef %rtwdev, i32 noundef 68660) #10
  %or.i.i.i.i58.i.i = or i32 %call.i.i.i.i.i56.i.i, 32768
  %180 = ptrtoint ptr %hci.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %hci.i.i.i.i.i.i.i, align 8
  %write32.i.i.i.i.i59.i15.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %181, i32 0, i32 12
  %182 = ptrtoint ptr %write32.i.i.i.i.i59.i15.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %write32.i.i.i.i.i59.i15.i, align 4
  tail call void %183(ptr noundef %rtwdev, i32 noundef 68660, i32 noundef %or.i.i.i.i58.i.i) #10
  %184 = ptrtoint ptr %dbcc_en.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %184)
  %185 = load i8, ptr %dbcc_en.i.i.i.i, align 8, !range !291
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %185)
  %tobool.not.i60.i16.i = icmp eq i8 %185, 0
  br i1 %tobool.not.i60.i16.i, label %rtw89_phy_set_phy_regs.exit52.i.i.rtw89_phy_set_phy_regs.exit73.i.i_crit_edge, label %rtw89_phy_write32_idx.exit21.i72.i.i

rtw89_phy_set_phy_regs.exit52.i.i.rtw89_phy_set_phy_regs.exit73.i.i_crit_edge: ; preds = %rtw89_phy_set_phy_regs.exit52.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rtw89_phy_set_phy_regs.exit73.i.i

rtw89_phy_write32_idx.exit21.i72.i.i:             ; preds = %rtw89_phy_set_phy_regs.exit52.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %186 = ptrtoint ptr %hci.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %hci.i.i.i.i.i.i.i, align 8
  %read32.i.i.i.i13.i67.i17.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %187, i32 0, i32 9
  %188 = ptrtoint ptr %read32.i.i.i.i13.i67.i17.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %read32.i.i.i.i13.i67.i17.i, align 4
  %call.i.i.i.i14.i68.i18.i = tail call i32 %189(ptr noundef %rtwdev, i32 noundef 76852) #10
  %or.i.i.i19.i70.i.i = or i32 %call.i.i.i.i14.i68.i18.i, 32768
  %190 = ptrtoint ptr %hci.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %hci.i.i.i.i.i.i.i, align 8
  %write32.i.i.i.i20.i71.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %191, i32 0, i32 12
  %192 = ptrtoint ptr %write32.i.i.i.i20.i71.i.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %write32.i.i.i.i20.i71.i.i, align 4
  tail call void %193(ptr noundef %rtwdev, i32 noundef 76852, i32 noundef %or.i.i.i19.i70.i.i) #10
  br label %rtw89_phy_set_phy_regs.exit73.i.i

rtw89_phy_set_phy_regs.exit73.i.i:                ; preds = %rtw89_phy_write32_idx.exit21.i72.i.i, %rtw89_phy_set_phy_regs.exit52.i.i.rtw89_phy_set_phy_regs.exit73.i.i_crit_edge
  %194 = ptrtoint ptr %hci.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %hci.i.i.i.i.i.i.i, align 8
  %read32.i.i.i.i.i76.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %195, i32 0, i32 9
  %196 = ptrtoint ptr %read32.i.i.i.i.i76.i.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %read32.i.i.i.i.i76.i.i, align 4
  %call.i.i.i.i.i77.i.i = tail call i32 %197(ptr noundef %rtwdev, i32 noundef 68664) #10
  %or.i.i.i.i79.i.i = or i32 %call.i.i.i.i.i77.i.i, 32768
  %198 = ptrtoint ptr %hci.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %hci.i.i.i.i.i.i.i, align 8
  %write32.i.i.i.i.i80.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %199, i32 0, i32 12
  %200 = ptrtoint ptr %write32.i.i.i.i.i80.i.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %write32.i.i.i.i.i80.i.i, align 4
  tail call void %201(ptr noundef %rtwdev, i32 noundef 68664, i32 noundef %or.i.i.i.i79.i.i) #10
  %202 = ptrtoint ptr %dbcc_en.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %202)
  %203 = load i8, ptr %dbcc_en.i.i.i.i, align 8, !range !291
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %203)
  %tobool.not.i81.i.i = icmp eq i8 %203, 0
  br i1 %tobool.not.i81.i.i, label %rtw89_phy_set_phy_regs.exit73.i.i.rtw89_phy_env_monitor_init.exit_crit_edge, label %rtw89_phy_write32_idx.exit21.i93.i.i

rtw89_phy_set_phy_regs.exit73.i.i.rtw89_phy_env_monitor_init.exit_crit_edge: ; preds = %rtw89_phy_set_phy_regs.exit73.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rtw89_phy_env_monitor_init.exit

rtw89_phy_write32_idx.exit21.i93.i.i:             ; preds = %rtw89_phy_set_phy_regs.exit73.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %204 = ptrtoint ptr %hci.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %hci.i.i.i.i.i.i.i, align 8
  %read32.i.i.i.i13.i88.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %205, i32 0, i32 9
  %206 = ptrtoint ptr %read32.i.i.i.i13.i88.i.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %read32.i.i.i.i13.i88.i.i, align 4
  %call.i.i.i.i14.i89.i.i = tail call i32 %207(ptr noundef %rtwdev, i32 noundef 76856) #10
  %or.i.i.i19.i91.i.i = or i32 %call.i.i.i.i14.i89.i.i, 32768
  %208 = ptrtoint ptr %hci.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %hci.i.i.i.i.i.i.i, align 8
  %write32.i.i.i.i20.i92.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %209, i32 0, i32 12
  %210 = ptrtoint ptr %write32.i.i.i.i20.i92.i.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %write32.i.i.i.i20.i92.i.i, align 4
  tail call void %211(ptr noundef %rtwdev, i32 noundef 76856, i32 noundef %or.i.i.i19.i91.i.i) #10
  br label %rtw89_phy_env_monitor_init.exit

rtw89_phy_env_monitor_init.exit:                  ; preds = %rtw89_phy_write32_idx.exit21.i93.i.i, %rtw89_phy_set_phy_regs.exit73.i.i.rtw89_phy_env_monitor_init.exit_crit_edge
  %212 = ptrtoint ptr %chip1 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %chip1, align 4
  %214 = ptrtoint ptr %213 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %213, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %215)
  %cmp.i17 = icmp eq i32 %215, 0
  br i1 %cmp.i17, label %land.lhs.true.i, label %rtw89_phy_env_monitor_init.exit.for.body.i19.preheader_crit_edge

rtw89_phy_env_monitor_init.exit.for.body.i19.preheader_crit_edge: ; preds = %rtw89_phy_env_monitor_init.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i19.preheader

land.lhs.true.i:                                  ; preds = %rtw89_phy_env_monitor_init.exit
  %cv.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 4, i32 1
  %216 = ptrtoint ptr %cv.i to i32
  call void @__asan_load1_noabort(i32 %216)
  %217 = load i8, ptr %cv.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %217)
  %cmp2.i = icmp eq i8 %217, 1
  br i1 %cmp2.i, label %if.then.i18, label %land.lhs.true.i.for.body.i19.preheader_crit_edge

land.lhs.true.i.for.body.i19.preheader_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i19.preheader

if.then.i18:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  %218 = ptrtoint ptr %hci.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %hci.i.i.i.i.i.i.i, align 8
  %read32.i.i.i.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %219, i32 0, i32 9
  %220 = ptrtoint ptr %read32.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %read32.i.i.i.i.i, align 4
  %call.i.i.i.i.i = tail call i32 %221(ptr noundef %rtwdev, i32 noundef 67384) #10
  %or.i.i.i.i = or i32 %call.i.i.i.i.i, 8
  %222 = ptrtoint ptr %hci.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %hci.i.i.i.i.i.i.i, align 8
  %write32.i.i.i.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %223, i32 0, i32 12
  %224 = ptrtoint ptr %write32.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %write32.i.i.i.i.i, align 4
  tail call void %225(ptr noundef %rtwdev, i32 noundef 67384, i32 noundef %or.i.i.i.i) #10
  %226 = ptrtoint ptr %hci.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %hci.i.i.i.i.i.i.i, align 8
  %read32.i.i.i2.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %227, i32 0, i32 9
  %228 = ptrtoint ptr %read32.i.i.i2.i.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %read32.i.i.i2.i.i, align 4
  %call.i.i.i3.i.i = tail call i32 %229(ptr noundef %rtwdev, i32 noundef 67384) #10
  %or.i.i4.i.i = or i32 %call.i.i.i3.i.i, 4
  %230 = ptrtoint ptr %hci.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %hci.i.i.i.i.i.i.i, align 8
  %write32.i.i.i5.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %231, i32 0, i32 12
  %232 = ptrtoint ptr %write32.i.i.i5.i.i to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %write32.i.i.i5.i.i, align 4
  tail call void %233(ptr noundef %rtwdev, i32 noundef 67384, i32 noundef %or.i.i4.i.i) #10
  br label %for.body.i19.preheader

for.body.i19.preheader:                           ; preds = %if.then.i18, %land.lhs.true.i.for.body.i19.preheader_crit_edge, %rtw89_phy_env_monitor_init.exit.for.body.i19.preheader_crit_edge
  br label %for.body.i19

for.body.i19:                                     ; preds = %for.inc.i.for.body.i19_crit_edge, %for.body.i19.preheader
  %indvars.iv.i = phi i32 [ %indvars.iv.next.i, %for.inc.i.for.body.i19_crit_edge ], [ 0, %for.body.i19.preheader ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %indvars.iv.i)
  %cmp8.i = icmp ugt i32 %indvars.iv.i, 10
  br i1 %cmp8.i, label %lor.lhs.false.i, label %if.end12.i

if.end12.i:                                       ; preds = %for.body.i19
  %234 = and i32 %indvars.iv.i, 124
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %234)
  %235 = icmp eq i32 %234, 4
  %236 = trunc i32 %indvars.iv.i to i8
  %237 = add nsw i8 %236, -9
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %237)
  %238 = icmp ult i8 %237, 3
  %or.cond.i = select i1 %235, i1 true, i1 %238
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %indvars.iv.i)
  %cmp1.i.i.i52.not.i = icmp eq i32 %indvars.iv.i, 9
  %or.cond112.i = select i1 %or.cond.i, i1 true, i1 %cmp1.i.i.i52.not.i
  br i1 %or.cond112.i, label %if.end12.i.for.inc.i_crit_edge, label %if.end12.i.if.end.i11.i69.i_crit_edge

if.end12.i.if.end.i11.i69.i_crit_edge:            ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i11.i69.i

if.end12.i.for.inc.i_crit_edge:                   ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

lor.lhs.false.i:                                  ; preds = %for.body.i19
  %239 = trunc i32 %indvars.iv.i to i8
  %240 = add i8 %239, -10
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %240)
  %241 = icmp ult i8 %240, 7
  %sub.i.i.i.i = sext i1 %241 to i32
  %spec.select.i.i.i = add nsw i32 %indvars.iv.i, %sub.i.i.i.i
  %shl.i.i.i.i = shl nsw i32 %spec.select.i.i.i, 2
  %add.i.i.i.i = add nsw i32 %shl.i.i.i.i, 1852
  %or.i.i.i46.i = or i32 %add.i.i.i.i, 65536
  %242 = ptrtoint ptr %hci.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %hci.i.i.i.i.i.i.i, align 8
  %read32.i.i.i.i48.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %243, i32 0, i32 9
  %244 = ptrtoint ptr %read32.i.i.i.i48.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %read32.i.i.i.i48.i, align 4
  %call.i.i.i.i49.i = tail call i32 %245(ptr noundef %rtwdev, i32 noundef %or.i.i.i46.i) #10
  %or14.i.i = or i32 %call.i.i.i.i49.i, 512
  %246 = ptrtoint ptr %chip1 to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %chip1, align 4
  %248 = ptrtoint ptr %247 to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load i32, ptr %247, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %249)
  %cmp.i.i.i = icmp eq i32 %249, 0
  %and.i.i.i = and i32 %or14.i.i, 863829823
  %spec.select.i6.i.i = select i1 %cmp.i.i.i, i32 %and.i.i.i, i32 %or14.i.i
  %250 = ptrtoint ptr %hci.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %hci.i.i.i.i.i.i.i, align 8
  %write32.i.i.i.i50.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %251, i32 0, i32 12
  %252 = ptrtoint ptr %write32.i.i.i.i50.i to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %write32.i.i.i.i50.i, align 4
  tail call void %253(ptr noundef %rtwdev, i32 noundef %or.i.i.i46.i, i32 noundef %spec.select.i6.i.i) #10
  %254 = add i8 %239, -9
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %254)
  %.old104.i = icmp ult i8 %254, 3
  br i1 %.old104.i, label %lor.lhs.false.i.for.inc.i_crit_edge, label %lor.lhs.false.i.if.end.i11.i69.i_crit_edge

lor.lhs.false.i.if.end.i11.i69.i_crit_edge:       ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i11.i69.i

lor.lhs.false.i.for.inc.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.end.i11.i69.i:                                 ; preds = %lor.lhs.false.i.if.end.i11.i69.i_crit_edge, %if.end12.i.if.end.i11.i69.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %indvars.iv.i)
  %cmp2.i.i.i53.i = icmp ugt i32 %indvars.iv.i, 9
  %sub.i.i.i55.i = sext i1 %cmp2.i.i.i53.i to i32
  %spec.select.i.i56.i = add nsw i32 %indvars.iv.i, %sub.i.i.i55.i
  %shl.i.i.i57.i = shl nsw i32 %spec.select.i.i56.i, 2
  %add.i.i.i58.i = add nsw i32 %shl.i.i.i57.i, 1852
  %or.i.i.i59.i = or i32 %add.i.i.i58.i, 65536
  %255 = ptrtoint ptr %hci.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load ptr, ptr %hci.i.i.i.i.i.i.i, align 8
  %read32.i.i.i.i61.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %256, i32 0, i32 9
  %257 = ptrtoint ptr %read32.i.i.i.i61.i to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load ptr, ptr %read32.i.i.i.i61.i, align 4
  %call.i.i.i.i62.i = tail call i32 %258(ptr noundef %rtwdev, i32 noundef %or.i.i.i59.i) #10
  %or14.i63.i = or i32 %call.i.i.i.i62.i, 16777216
  %259 = ptrtoint ptr %chip1 to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load ptr, ptr %chip1, align 4
  %261 = ptrtoint ptr %260 to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load i32, ptr %260, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %262)
  %cmp.i.i65.i = icmp eq i32 %262, 0
  %and.i.i66.i = and i32 %or14.i63.i, 863829823
  %spec.select.i6.i67.i = select i1 %cmp.i.i65.i, i32 %and.i.i66.i, i32 %or14.i63.i
  %263 = ptrtoint ptr %hci.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load ptr, ptr %hci.i.i.i.i.i.i.i, align 8
  %write32.i.i.i.i68.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %264, i32 0, i32 12
  %265 = ptrtoint ptr %write32.i.i.i.i68.i to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load ptr, ptr %write32.i.i.i.i68.i, align 4
  tail call void %266(ptr noundef %rtwdev, i32 noundef %or.i.i.i59.i, i32 noundef %spec.select.i6.i67.i) #10
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i11.i69.i, %lor.lhs.false.i.for.inc.i_crit_edge, %if.end12.i.for.inc.i_crit_edge
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i32 %indvars.iv.next.i, 16
  br i1 %exitcond.not.i, label %rtw89_physts_parsing_init.exit, label %for.inc.i.for.body.i19_crit_edge

for.inc.i.for.body.i19_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i19

rtw89_physts_parsing_init.exit:                   ; preds = %for.inc.i
  %267 = ptrtoint ptr %hci.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load ptr, ptr %hci.i.i.i.i.i.i.i, align 8
  %read32.i.i.i.i72.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %268, i32 0, i32 9
  %269 = ptrtoint ptr %read32.i.i.i.i72.i to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load ptr, ptr %read32.i.i.i.i72.i, align 4
  %call.i.i.i.i73.i = tail call i32 %270(ptr noundef %rtwdev, i32 noundef 67440) #10
  %or14.i74.i = or i32 %call.i.i.i.i73.i, 8192
  %271 = ptrtoint ptr %chip1 to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load ptr, ptr %chip1, align 4
  %273 = ptrtoint ptr %272 to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load i32, ptr %272, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %274)
  %cmp.i.i76.i = icmp eq i32 %274, 0
  %and.i.i77.i = and i32 %or14.i74.i, 863829823
  %spec.select.i6.i78.i = select i1 %cmp.i.i76.i, i32 %and.i.i77.i, i32 %or14.i74.i
  %275 = ptrtoint ptr %hci.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load ptr, ptr %hci.i.i.i.i.i.i.i, align 8
  %write32.i.i.i.i79.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %276, i32 0, i32 12
  %277 = ptrtoint ptr %write32.i.i.i.i79.i to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load ptr, ptr %write32.i.i.i.i79.i, align 4
  tail call void %278(ptr noundef %rtwdev, i32 noundef 67440, i32 noundef %spec.select.i6.i78.i) #10
  %279 = ptrtoint ptr %hci.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load ptr, ptr %hci.i.i.i.i.i.i.i, align 8
  %read32.i.i.i.i82.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %280, i32 0, i32 9
  %281 = ptrtoint ptr %read32.i.i.i.i82.i to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load ptr, ptr %read32.i.i.i.i82.i, align 4
  %call.i.i.i.i83.i = tail call i32 %282(ptr noundef %rtwdev, i32 noundef 67444) #10
  %or14.i84.i = or i32 %call.i.i.i.i83.i, 8192
  %283 = ptrtoint ptr %chip1 to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load ptr, ptr %chip1, align 4
  %285 = ptrtoint ptr %284 to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load i32, ptr %284, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %286)
  %cmp.i.i86.i = icmp eq i32 %286, 0
  %and.i.i87.i = and i32 %or14.i84.i, 863829823
  %spec.select.i6.i88.i = select i1 %cmp.i.i86.i, i32 %and.i.i87.i, i32 %or14.i84.i
  %287 = ptrtoint ptr %hci.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load ptr, ptr %hci.i.i.i.i.i.i.i, align 8
  %write32.i.i.i.i89.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %288, i32 0, i32 12
  %289 = ptrtoint ptr %write32.i.i.i.i89.i to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load ptr, ptr %write32.i.i.i.i89.i, align 4
  tail call void %290(ptr noundef %rtwdev, i32 noundef 67444, i32 noundef %spec.select.i6.i88.i) #10
  %291 = ptrtoint ptr %hci.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load ptr, ptr %hci.i.i.i.i.i.i.i, align 8
  %read32.i.i.i.i92.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %292, i32 0, i32 9
  %293 = ptrtoint ptr %read32.i.i.i.i92.i to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load ptr, ptr %read32.i.i.i.i92.i, align 4
  %call.i.i.i.i93.i = tail call i32 %294(ptr noundef %rtwdev, i32 noundef 67428) #10
  %or14.i94.i = or i32 %call.i.i.i.i93.i, 2
  %295 = ptrtoint ptr %chip1 to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load ptr, ptr %chip1, align 4
  %297 = ptrtoint ptr %296 to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load i32, ptr %296, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %298)
  %cmp.i.i96.i = icmp eq i32 %298, 0
  %and.i.i97.i = and i32 %or14.i94.i, 863829823
  %spec.select.i6.i98.i = select i1 %cmp.i.i96.i, i32 %and.i.i97.i, i32 %or14.i94.i
  %299 = ptrtoint ptr %hci.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load ptr, ptr %hci.i.i.i.i.i.i.i, align 8
  %write32.i.i.i.i99.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %300, i32 0, i32 12
  %301 = ptrtoint ptr %write32.i.i.i.i99.i to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load ptr, ptr %write32.i.i.i.i99.i, align 4
  tail call void %302(ptr noundef %rtwdev, i32 noundef 67428, i32 noundef %spec.select.i6.i98.i) #10
  %303 = ptrtoint ptr %hci.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load ptr, ptr %hci.i.i.i.i.i.i.i, align 8
  %read32.i.i.i.i.i22 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %304, i32 0, i32 9
  %305 = ptrtoint ptr %read32.i.i.i.i.i22 to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load ptr, ptr %read32.i.i.i.i.i22, align 4
  %call.i.i.i.i.i23 = tail call i32 %306(ptr noundef %rtwdev, i32 noundef 83496) #10
  %307 = lshr i32 %call.i.i.i.i.i23, 8
  %308 = trunc i32 %307 to i8
  %conv.i.i24 = and i8 %308, 15
  %ib_pkpwr.i.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 39, i32 14
  %309 = ptrtoint ptr %ib_pkpwr.i.i to i32
  call void @__asan_store1_noabort(i32 %309)
  store i8 %conv.i.i24, ptr %ib_pkpwr.i.i, align 1
  %310 = ptrtoint ptr %hci.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load ptr, ptr %hci.i.i.i.i.i.i.i, align 8
  %read32.i.i.i22.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %311, i32 0, i32 9
  %312 = ptrtoint ptr %read32.i.i.i22.i.i to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load ptr, ptr %read32.i.i.i22.i.i, align 4
  %call.i.i.i23.i.i = tail call i32 %313(ptr noundef %rtwdev, i32 noundef 83536) #10
  %and.i.i24.i.i = lshr i32 %call.i.i.i23.i.i, 10
  %shr.i.i25.i.i = and i32 %and.i.i24.i.i, 31
  %conv4.i.i25 = trunc i32 %shr.i.i25.i.i to i8
  %ib_pbk.i.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 39, i32 13
  %314 = ptrtoint ptr %ib_pbk.i.i to i32
  call void @__asan_store1_noabort(i32 %314)
  store i8 %conv4.i.i25, ptr %ib_pbk.i.i, align 4
  %315 = ptrtoint ptr %ib_pkpwr.i.i to i32
  call void @__asan_load1_noabort(i32 %315)
  %316 = load i8, ptr %ib_pkpwr.i.i, align 1
  %conv6.i.i = sext i8 %316 to i32
  tail call void (ptr, i32, ptr, ...) @__rtw89_debug(ptr noundef %rtwdev, i32 noundef 1024, ptr noundef nonnull @.str.111, i32 noundef %conv6.i.i, i32 noundef %shr.i.i25.i.i) #10
  %tia_gain_a.i.i.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 39, i32 18
  %lna_gain_a.i.i.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 39, i32 15
  %tia_gain_g.i.i.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 39, i32 19
  %lna_gain_g.i.i.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 39, i32 16
  br label %for.body.i.i27

for.body.i.i27:                                   ; preds = %rtw89_phy_dig_read_gain_table.exit.i.i.for.body.i.i27_crit_edge, %rtw89_physts_parsing_init.exit
  %i.028.i.i26 = phi i8 [ 0, %rtw89_physts_parsing_init.exit ], [ %inc.i.i31, %rtw89_phy_dig_read_gain_table.exit.i.i.for.body.i.i27_crit_edge ]
  %317 = ptrtoint ptr %chip1 to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load ptr, ptr %chip1, align 4
  %trunc.i.i = trunc i8 %i.028.i.i26 to i7
  %319 = zext i7 %trunc.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %319, ptr @__sancov_gen_cov_switch_values.143)
  switch i7 %trunc.i.i, label %for.body.i.i27.rtw89_phy_dig_read_gain_table.exit.i.i_crit_edge [
    i7 0, label %sw.bb.i.i.i
    i7 1, label %sw.bb3.i.i.i
    i7 2, label %sw.bb6.i.i.i
    i7 3, label %sw.bb9.i.i.i
  ]

for.body.i.i27.rtw89_phy_dig_read_gain_table.exit.i.i_crit_edge: ; preds = %for.body.i.i27
  call void @__sanitizer_cov_trace_pc() #12
  br label %rtw89_phy_dig_read_gain_table.exit.i.i

sw.bb.i.i.i:                                      ; preds = %for.body.i.i27
  call void @__sanitizer_cov_trace_pc() #12
  %dig_table.i.i.i = getelementptr inbounds %struct.rtw89_chip_info, ptr %318, i32 0, i32 27
  %320 = ptrtoint ptr %dig_table.i.i.i to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load ptr, ptr %dig_table.i.i.i, align 4
  br label %sw.epilog.i.i.i

sw.bb3.i.i.i:                                     ; preds = %for.body.i.i27
  call void @__sanitizer_cov_trace_pc() #12
  %dig_table5.i.i.i = getelementptr inbounds %struct.rtw89_chip_info, ptr %318, i32 0, i32 27
  %322 = ptrtoint ptr %dig_table5.i.i.i to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load ptr, ptr %dig_table5.i.i.i, align 4
  %cfg_tia_g.i.i.i = getelementptr inbounds %struct.rtw89_phy_dig_gain_table, ptr %323, i32 0, i32 1
  br label %sw.epilog.i.i.i

sw.bb6.i.i.i:                                     ; preds = %for.body.i.i27
  call void @__sanitizer_cov_trace_pc() #12
  %dig_table8.i.i.i = getelementptr inbounds %struct.rtw89_chip_info, ptr %318, i32 0, i32 27
  %324 = ptrtoint ptr %dig_table8.i.i.i to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load ptr, ptr %dig_table8.i.i.i, align 4
  %cfg_lna_a.i.i.i = getelementptr inbounds %struct.rtw89_phy_dig_gain_table, ptr %325, i32 0, i32 2
  br label %sw.epilog.i.i.i

sw.bb9.i.i.i:                                     ; preds = %for.body.i.i27
  call void @__sanitizer_cov_trace_pc() #12
  %dig_table11.i.i.i = getelementptr inbounds %struct.rtw89_chip_info, ptr %318, i32 0, i32 27
  %326 = ptrtoint ptr %dig_table11.i.i.i to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load ptr, ptr %dig_table11.i.i.i, align 4
  %cfg_tia_a.i.i.i = getelementptr inbounds %struct.rtw89_phy_dig_gain_table, ptr %327, i32 0, i32 3
  br label %sw.epilog.i.i.i

sw.epilog.i.i.i:                                  ; preds = %sw.bb9.i.i.i, %sw.bb6.i.i.i, %sw.bb3.i.i.i, %sw.bb.i.i.i
  %cfg.0.in.i.i.i = phi ptr [ %cfg_tia_a.i.i.i, %sw.bb9.i.i.i ], [ %cfg_lna_a.i.i.i, %sw.bb6.i.i.i ], [ %cfg_tia_g.i.i.i, %sw.bb3.i.i.i ], [ %321, %sw.bb.i.i.i ]
  %msg.0.i.i.i = phi ptr [ @.str.115, %sw.bb9.i.i.i ], [ @.str.114, %sw.bb6.i.i.i ], [ @.str.113, %sw.bb3.i.i.i ], [ @.str.112, %sw.bb.i.i.i ]
  %gain_base.0.i.i.i = phi i32 [ 12, %sw.bb9.i.i.i ], [ -24, %sw.bb6.i.i.i ], [ 16, %sw.bb3.i.i.i ], [ -24, %sw.bb.i.i.i ]
  %gain_arr.0.i.i.i = phi ptr [ %tia_gain_a.i.i.i, %sw.bb9.i.i.i ], [ %lna_gain_a.i.i.i, %sw.bb6.i.i.i ], [ %tia_gain_g.i.i.i, %sw.bb3.i.i.i ], [ %lna_gain_g.i.i.i, %sw.bb.i.i.i ]
  %328 = ptrtoint ptr %cfg.0.in.i.i.i to i32
  call void @__asan_load4_noabort(i32 %328)
  %cfg.0.i.i.i = load ptr, ptr %cfg.0.in.i.i.i, align 4
  %size.i.i.i = getelementptr inbounds %struct.rtw89_phy_dig_gain_cfg, ptr %cfg.0.i.i.i, i32 0, i32 1
  %329 = ptrtoint ptr %size.i.i.i to i32
  call void @__asan_load1_noabort(i32 %329)
  %330 = load i8, ptr %size.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %330)
  %cmp57.not.i.i.i = icmp eq i8 %330, 0
  br i1 %cmp57.not.i.i.i, label %sw.epilog.i.i.i.rtw89_phy_dig_read_gain_table.exit.i.i_crit_edge, label %sw.epilog.i.i.i.for.body.i.i.i_crit_edge

sw.epilog.i.i.i.for.body.i.i.i_crit_edge:         ; preds = %sw.epilog.i.i.i
  br label %for.body.i.i.i

sw.epilog.i.i.i.rtw89_phy_dig_read_gain_table.exit.i.i_crit_edge: ; preds = %sw.epilog.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rtw89_phy_dig_read_gain_table.exit.i.i

for.body.i.i.i:                                   ; preds = %for.body.i.i.i.for.body.i.i.i_crit_edge, %sw.epilog.i.i.i.for.body.i.i.i_crit_edge
  %indvars.iv.i.i.i = phi i32 [ %indvars.iv.next.i.i.i, %for.body.i.i.i.for.body.i.i.i_crit_edge ], [ 0, %sw.epilog.i.i.i.for.body.i.i.i_crit_edge ]
  %gain_base.159.i.i.i = phi i32 [ %add23.i.i.i, %for.body.i.i.i.for.body.i.i.i_crit_edge ], [ %gain_base.0.i.i.i, %sw.epilog.i.i.i.for.body.i.i.i_crit_edge ]
  %331 = ptrtoint ptr %cfg.0.i.i.i to i32
  call void @__asan_load4_noabort(i32 %331)
  %332 = load ptr, ptr %cfg.0.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr %struct.rtw89_reg_def, ptr %332, i32 %indvars.iv.i.i.i
  %333 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %333)
  %334 = load i32, ptr %arrayidx.i.i.i, align 4
  %mask.i.i.i = getelementptr %struct.rtw89_reg_def, ptr %332, i32 %indvars.iv.i.i.i, i32 1
  %335 = ptrtoint ptr %mask.i.i.i to i32
  call void @__asan_load4_noabort(i32 %335)
  %336 = load i32, ptr %mask.i.i.i, align 4
  %or.i.i.i.i28 = or i32 %334, 65536
  %337 = tail call i32 @llvm.cttz.i32(i32 %336, i1 false) #10, !range !293
  %338 = ptrtoint ptr %hci.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load ptr, ptr %hci.i.i.i.i.i.i.i, align 8
  %read32.i.i.i.i.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %339, i32 0, i32 9
  %340 = ptrtoint ptr %read32.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load ptr, ptr %read32.i.i.i.i.i.i, align 4
  %call.i.i.i.i.i.i = tail call i32 %341(ptr noundef %rtwdev, i32 noundef %or.i.i.i.i28) #10
  %and.i.i.i.i.i = and i32 %call.i.i.i.i.i.i, %336
  %shr.i.i.i.i.i = lshr i32 %and.i.i.i.i.i, %337
  %342 = shl i32 %shr.i.i.i.i.i, 26
  %shr.i.i26.i.i = ashr i32 %342, 28
  %sext.i.i.i = shl i32 %gain_base.159.i.i.i, 24
  %conv18.i.i.i = ashr exact i32 %sext.i.i.i, 24
  %add.i.i.i29 = add nsw i32 %shr.i.i26.i.i, %gain_base.159.i.i.i
  %conv19.i.i.i = trunc i32 %add.i.i.i29 to i8
  %arrayidx21.i.i.i = getelementptr i8, ptr %gain_arr.0.i.i.i, i32 %indvars.iv.i.i.i
  %343 = ptrtoint ptr %arrayidx21.i.i.i to i32
  call void @__asan_store1_noabort(i32 %343)
  store i8 %conv19.i.i.i, ptr %arrayidx21.i.i.i, align 1
  %add23.i.i.i = add nsw i32 %conv18.i.i.i, 8
  %sext56.i.i.i = shl i32 %add.i.i.i29, 24
  %conv28.i.i.i = ashr exact i32 %sext56.i.i.i, 24
  tail call void (ptr, i32, ptr, ...) @__rtw89_debug(ptr noundef %rtwdev, i32 noundef 1024, ptr noundef nonnull @.str.116, ptr noundef nonnull %msg.0.i.i.i, i32 noundef %indvars.iv.i.i.i, i32 noundef %conv28.i.i.i) #10
  %indvars.iv.next.i.i.i = add nuw nsw i32 %indvars.iv.i.i.i, 1
  %344 = ptrtoint ptr %size.i.i.i to i32
  call void @__asan_load1_noabort(i32 %344)
  %345 = load i8, ptr %size.i.i.i, align 4
  %346 = zext i8 %345 to i32
  %cmp.i.i.i30 = icmp ult i32 %indvars.iv.next.i.i.i, %346
  br i1 %cmp.i.i.i30, label %for.body.i.i.i.for.body.i.i.i_crit_edge, label %for.body.i.i.i.rtw89_phy_dig_read_gain_table.exit.i.i_crit_edge

for.body.i.i.i.rtw89_phy_dig_read_gain_table.exit.i.i_crit_edge: ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rtw89_phy_dig_read_gain_table.exit.i.i

for.body.i.i.i.for.body.i.i.i_crit_edge:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i.i

rtw89_phy_dig_read_gain_table.exit.i.i:           ; preds = %for.body.i.i.i.rtw89_phy_dig_read_gain_table.exit.i.i_crit_edge, %sw.epilog.i.i.i.rtw89_phy_dig_read_gain_table.exit.i.i_crit_edge, %for.body.i.i27.rtw89_phy_dig_read_gain_table.exit.i.i_crit_edge
  %inc.i.i31 = add nuw nsw i8 %i.028.i.i26, 1
  %cmp.i.i32 = icmp ult i8 %i.028.i.i26, 3
  br i1 %cmp.i.i32, label %rtw89_phy_dig_read_gain_table.exit.i.i.for.body.i.i27_crit_edge, label %rtw89_phy_dig_init.exit

rtw89_phy_dig_read_gain_table.exit.i.i.for.body.i.i27_crit_edge: ; preds = %rtw89_phy_dig_read_gain_table.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i27

rtw89_phy_dig_init.exit:                          ; preds = %rtw89_phy_dig_read_gain_table.exit.i.i
  tail call void @rtw89_phy_dig_reset(ptr noundef %rtwdev) #10
  %xtal_cap.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 8, i32 1
  %347 = ptrtoint ptr %xtal_cap.i to i32
  call void @__asan_load1_noabort(i32 %347)
  %348 = load i8, ptr %xtal_cap.i, align 1
  %349 = and i8 %348, 127
  %crystal_cap_default.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 37, i32 8
  %350 = ptrtoint ptr %crystal_cap_default.i to i32
  call void @__asan_store1_noabort(i32 %350)
  store i8 %349, ptr %crystal_cap_default.i, align 2
  %crystal_cap.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 37, i32 7
  %351 = ptrtoint ptr %crystal_cap.i to i32
  call void @__asan_store1_noabort(i32 %351)
  store i8 %349, ptr %crystal_cap.i, align 1
  %def_x_cap.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 37, i32 9
  %352 = ptrtoint ptr %def_x_cap.i to i32
  call void @__asan_store1_noabort(i32 %352)
  store i8 %349, ptr %def_x_cap.i, align 1
  %is_adjust.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 37, i32 4
  %353 = ptrtoint ptr %is_adjust.i to i32
  call void @__asan_store1_noabort(i32 %353)
  store i8 0, ptr %is_adjust.i, align 1
  %x_cap_ofst.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 37, i32 10
  %354 = ptrtoint ptr %x_cap_ofst.i to i32
  call void @__asan_store1_noabort(i32 %354)
  store i8 0, ptr %x_cap_ofst.i, align 4
  %rtw89_multi_cfo_mode.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 37, i32 5
  %355 = ptrtoint ptr %rtw89_multi_cfo_mode.i to i32
  call void @__asan_store4_noabort(i32 %355)
  store i32 2, ptr %rtw89_multi_cfo_mode.i, align 4
  %apply_compensation.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 37, i32 6
  %356 = ptrtoint ptr %apply_compensation.i to i32
  call void @__asan_store1_noabort(i32 %356)
  store i8 0, ptr %apply_compensation.i, align 4
  %residual_cfo_acc.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 37, i32 19
  %357 = ptrtoint ptr %residual_cfo_acc.i to i32
  call void @__asan_store4_noabort(i32 %357)
  store i32 0, ptr %residual_cfo_acc.i, align 4
  %conv6.i = zext i8 %349 to i32
  tail call void (ptr, i32, ptr, ...) @__rtw89_debug(ptr noundef %rtwdev, i32 noundef 8, ptr noundef nonnull @.str.117, i32 noundef %conv6.i) #10
  %358 = ptrtoint ptr %crystal_cap_default.i to i32
  call void @__asan_load1_noabort(i32 %358)
  %359 = load i8, ptr %crystal_cap_default.i, align 2
  tail call fastcc void @rtw89_phy_cfo_set_crystal_cap(ptr noundef %rtwdev, i8 noundef zeroext %359, i1 noundef zeroext true) #10
  %360 = ptrtoint ptr %hci.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %360)
  %361 = load ptr, ptr %hci.i.i.i.i.i.i.i, align 8
  %read32.i.i.i.i.i.i33 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %361, i32 0, i32 9
  %362 = ptrtoint ptr %read32.i.i.i.i.i.i33 to i32
  call void @__asan_load4_noabort(i32 %362)
  %363 = load ptr, ptr %read32.i.i.i.i.i.i33, align 4
  %call.i.i.i.i.i.i34 = tail call i32 %363(ptr noundef %rtwdev, i32 noundef 82532) #10
  %and21.i.i.i.i.i = and i32 %call.i.i.i.i.i.i34, -4
  %or.i.i.i.i.i = or i32 %and21.i.i.i.i.i, 1
  %364 = ptrtoint ptr %hci.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %364)
  %365 = load ptr, ptr %hci.i.i.i.i.i.i.i, align 8
  %write32.i.i.i.i.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %365, i32 0, i32 12
  %366 = ptrtoint ptr %write32.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %366)
  %367 = load ptr, ptr %write32.i.i.i.i.i.i, align 4
  tail call void %367(ptr noundef %rtwdev, i32 noundef 82532, i32 noundef %or.i.i.i.i.i) #10
  %368 = ptrtoint ptr %dbcc_en.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %368)
  %369 = load i8, ptr %dbcc_en.i.i.i.i, align 8, !range !291
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %369)
  %tobool.not.i.i35 = icmp eq i8 %369, 0
  br i1 %tobool.not.i.i35, label %rtw89_phy_dig_init.exit.rtw89_phy_set_phy_regs.exit.i_crit_edge, label %if.then.i.i.i

rtw89_phy_dig_init.exit.rtw89_phy_set_phy_regs.exit.i_crit_edge: ; preds = %rtw89_phy_dig_init.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %rtw89_phy_set_phy_regs.exit.i

if.then.i.i.i:                                    ; preds = %rtw89_phy_dig_init.exit
  call void @__sanitizer_cov_trace_pc() #12
  %370 = ptrtoint ptr %hci.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %370)
  %371 = load ptr, ptr %hci.i.i.i.i.i.i.i, align 8
  %read32.i.i.i.i13.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %371, i32 0, i32 9
  %372 = ptrtoint ptr %read32.i.i.i.i13.i.i to i32
  call void @__asan_load4_noabort(i32 %372)
  %373 = load ptr, ptr %read32.i.i.i.i13.i.i, align 4
  %call.i.i.i.i14.i.i = tail call i32 %373(ptr noundef %rtwdev, i32 noundef 90724) #10
  %and21.i.i.i16.i.i = and i32 %call.i.i.i.i14.i.i, -4
  %or.i.i.i19.i.i = or i32 %and21.i.i.i16.i.i, 1
  %374 = ptrtoint ptr %hci.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %374)
  %375 = load ptr, ptr %hci.i.i.i.i.i.i.i, align 8
  %write32.i.i.i.i20.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %375, i32 0, i32 12
  %376 = ptrtoint ptr %write32.i.i.i.i20.i.i to i32
  call void @__asan_load4_noabort(i32 %376)
  %377 = load ptr, ptr %write32.i.i.i.i20.i.i, align 4
  tail call void %377(ptr noundef %rtwdev, i32 noundef 90724, i32 noundef %or.i.i.i19.i.i) #10
  br label %rtw89_phy_set_phy_regs.exit.i

rtw89_phy_set_phy_regs.exit.i:                    ; preds = %if.then.i.i.i, %rtw89_phy_dig_init.exit.rtw89_phy_set_phy_regs.exit.i_crit_edge
  %378 = ptrtoint ptr %hci.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %378)
  %379 = load ptr, ptr %hci.i.i.i.i.i.i.i, align 8
  %read32.i.i.i.i.i.i.i36 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %379, i32 0, i32 9
  %380 = ptrtoint ptr %read32.i.i.i.i.i.i.i36 to i32
  call void @__asan_load4_noabort(i32 %380)
  %381 = load ptr, ptr %read32.i.i.i.i.i.i.i36, align 4
  %call.i.i.i.i.i.i.i37 = tail call i32 %381(ptr noundef %rtwdev, i32 noundef 83092) #10
  %or.i.i.i.i.i.i38 = or i32 %call.i.i.i.i.i.i.i37, 536870912
  %382 = ptrtoint ptr %hci.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %382)
  %383 = load ptr, ptr %hci.i.i.i.i.i.i.i, align 8
  %write32.i.i.i.i.i.i.i39 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %383, i32 0, i32 12
  %384 = ptrtoint ptr %write32.i.i.i.i.i.i.i39 to i32
  call void @__asan_load4_noabort(i32 %384)
  %385 = load ptr, ptr %write32.i.i.i.i.i.i.i39, align 4
  tail call void %385(ptr noundef %rtwdev, i32 noundef 83092, i32 noundef %or.i.i.i.i.i.i38) #10
  %386 = ptrtoint ptr %dbcc_en.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %386)
  %387 = load i8, ptr %dbcc_en.i.i.i.i, align 8, !range !291
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %387)
  %tobool.not.i.i.i40 = icmp eq i8 %387, 0
  br i1 %tobool.not.i.i.i40, label %rtw89_phy_set_phy_regs.exit.i.rtw89_phy_set_phy_regs.exit.i.i45_crit_edge, label %if.then.i.i.i.i

rtw89_phy_set_phy_regs.exit.i.rtw89_phy_set_phy_regs.exit.i.i45_crit_edge: ; preds = %rtw89_phy_set_phy_regs.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rtw89_phy_set_phy_regs.exit.i.i45

if.then.i.i.i.i:                                  ; preds = %rtw89_phy_set_phy_regs.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %388 = ptrtoint ptr %hci.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %388)
  %389 = load ptr, ptr %hci.i.i.i.i.i.i.i, align 8
  %read32.i.i.i.i13.i.i.i41 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %389, i32 0, i32 9
  %390 = ptrtoint ptr %read32.i.i.i.i13.i.i.i41 to i32
  call void @__asan_load4_noabort(i32 %390)
  %391 = load ptr, ptr %read32.i.i.i.i13.i.i.i41, align 4
  %call.i.i.i.i14.i.i.i42 = tail call i32 %391(ptr noundef %rtwdev, i32 noundef 91284) #10
  %or.i.i.i19.i.i.i43 = or i32 %call.i.i.i.i14.i.i.i42, 536870912
  %392 = ptrtoint ptr %hci.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %392)
  %393 = load ptr, ptr %hci.i.i.i.i.i.i.i, align 8
  %write32.i.i.i.i20.i.i.i44 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %393, i32 0, i32 12
  %394 = ptrtoint ptr %write32.i.i.i.i20.i.i.i44 to i32
  call void @__asan_load4_noabort(i32 %394)
  %395 = load ptr, ptr %write32.i.i.i.i20.i.i.i44, align 4
  tail call void %395(ptr noundef %rtwdev, i32 noundef 91284, i32 noundef %or.i.i.i19.i.i.i43) #10
  br label %rtw89_phy_set_phy_regs.exit.i.i45

rtw89_phy_set_phy_regs.exit.i.i45:                ; preds = %if.then.i.i.i.i, %rtw89_phy_set_phy_regs.exit.i.rtw89_phy_set_phy_regs.exit.i.i45_crit_edge
  %396 = ptrtoint ptr %hci.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %396)
  %397 = load ptr, ptr %hci.i.i.i.i.i.i.i, align 8
  %read32.i.i.i.i.i5.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %397, i32 0, i32 9
  %398 = ptrtoint ptr %read32.i.i.i.i.i5.i.i to i32
  call void @__asan_load4_noabort(i32 %398)
  %399 = load ptr, ptr %read32.i.i.i.i.i5.i.i, align 4
  %call.i.i.i.i.i6.i.i = tail call i32 %399(ptr noundef %rtwdev, i32 noundef 83088) #10
  %and21.i.i.i.i7.i.i = and i32 %call.i.i.i.i.i6.i.i, -251658241
  %or.i.i.i.i8.i.i = or i32 %and21.i.i.i.i7.i.i, 134217728
  %400 = ptrtoint ptr %hci.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %400)
  %401 = load ptr, ptr %hci.i.i.i.i.i.i.i, align 8
  %write32.i.i.i.i.i9.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %401, i32 0, i32 12
  %402 = ptrtoint ptr %write32.i.i.i.i.i9.i.i to i32
  call void @__asan_load4_noabort(i32 %402)
  %403 = load ptr, ptr %write32.i.i.i.i.i9.i.i, align 4
  tail call void %403(ptr noundef %rtwdev, i32 noundef 83088, i32 noundef %or.i.i.i.i8.i.i) #10
  %404 = ptrtoint ptr %dbcc_en.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %404)
  %405 = load i8, ptr %dbcc_en.i.i.i.i, align 8, !range !291
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %405)
  %tobool.not.i10.i.i = icmp eq i8 %405, 0
  br i1 %tobool.not.i10.i.i, label %rtw89_phy_set_phy_regs.exit.i.i45.rtw89_phy_cfo_init.exit_crit_edge, label %if.then.i.i11.i.i

rtw89_phy_set_phy_regs.exit.i.i45.rtw89_phy_cfo_init.exit_crit_edge: ; preds = %rtw89_phy_set_phy_regs.exit.i.i45
  call void @__sanitizer_cov_trace_pc() #12
  br label %rtw89_phy_cfo_init.exit

if.then.i.i11.i.i:                                ; preds = %rtw89_phy_set_phy_regs.exit.i.i45
  call void @__sanitizer_cov_trace_pc() #12
  %406 = ptrtoint ptr %hci.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %406)
  %407 = load ptr, ptr %hci.i.i.i.i.i.i.i, align 8
  %read32.i.i.i.i13.i12.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %407, i32 0, i32 9
  %408 = ptrtoint ptr %read32.i.i.i.i13.i12.i.i to i32
  call void @__asan_load4_noabort(i32 %408)
  %409 = load ptr, ptr %read32.i.i.i.i13.i12.i.i, align 4
  %call.i.i.i.i14.i13.i.i = tail call i32 %409(ptr noundef %rtwdev, i32 noundef 91280) #10
  %and21.i.i.i16.i14.i.i = and i32 %call.i.i.i.i14.i13.i.i, -251658241
  %or.i.i.i19.i15.i.i = or i32 %and21.i.i.i16.i14.i.i, 134217728
  %410 = ptrtoint ptr %hci.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %410)
  %411 = load ptr, ptr %hci.i.i.i.i.i.i.i, align 8
  %write32.i.i.i.i20.i16.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %411, i32 0, i32 12
  %412 = ptrtoint ptr %write32.i.i.i.i20.i16.i.i to i32
  call void @__asan_load4_noabort(i32 %412)
  %413 = load ptr, ptr %write32.i.i.i.i20.i16.i.i, align 4
  tail call void %413(ptr noundef %rtwdev, i32 noundef 91280, i32 noundef %or.i.i.i19.i15.i.i) #10
  br label %rtw89_phy_cfo_init.exit

rtw89_phy_cfo_init.exit:                          ; preds = %if.then.i.i11.i.i, %rtw89_phy_set_phy_regs.exit.i.i45.rtw89_phy_cfo_init.exit_crit_edge
  %cfo_tracking.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 37
  %414 = ptrtoint ptr %hci.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %414)
  %415 = load ptr, ptr %hci.i.i.i.i.i.i.i, align 8
  %read32.i.i.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %415, i32 0, i32 9
  %416 = ptrtoint ptr %read32.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %416)
  %417 = load ptr, ptr %read32.i.i.i.i, align 4
  %call.i.i.i.i = tail call i32 %417(ptr noundef %rtwdev, i32 noundef 53832) #10
  %and.i.i.i46 = and i32 %call.i.i.i.i, -8
  %418 = ptrtoint ptr %hci.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %418)
  %419 = load ptr, ptr %hci.i.i.i.i.i.i.i, align 8
  %write32.i.i.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %419, i32 0, i32 12
  %420 = ptrtoint ptr %write32.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %420)
  %421 = load ptr, ptr %write32.i.i.i.i, align 4
  tail call void %421(ptr noundef %rtwdev, i32 noundef 53832, i32 noundef %and.i.i.i46) #10
  %422 = ptrtoint ptr %cfo_tracking.i to i32
  call void @__asan_store2_noabort(i32 %422)
  store i16 2000, ptr %cfo_tracking.i, align 4
  %cfo_trig_by_timer_en.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 37, i32 1
  %423 = ptrtoint ptr %cfo_trig_by_timer_en.i to i32
  call void @__asan_store1_noabort(i32 %423)
  store i8 0, ptr %cfo_trig_by_timer_en.i, align 2
  %phy_cfo_trk_cnt.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 37, i32 3
  %424 = ptrtoint ptr %phy_cfo_trk_cnt.i to i32
  call void @__asan_store1_noabort(i32 %424)
  store i8 0, ptr %phy_cfo_trk_cnt.i, align 4
  %phy_cfo_status.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 37, i32 2
  %425 = ptrtoint ptr %phy_cfo_status.i to i32
  call void @__asan_store4_noabort(i32 %425)
  store i32 0, ptr %phy_cfo_status.i, align 4
  %426 = ptrtoint ptr %chip1 to i32
  call void @__asan_load4_noabort(i32 %426)
  %427 = load ptr, ptr %chip1, align 4
  %428 = ptrtoint ptr %hci.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %428)
  %429 = load ptr, ptr %hci.i.i.i.i.i.i.i, align 8
  %read32.i.i.i.i48 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %429, i32 0, i32 9
  %430 = ptrtoint ptr %read32.i.i.i.i48 to i32
  call void @__asan_load4_noabort(i32 %430)
  %431 = load ptr, ptr %read32.i.i.i.i48, align 4
  %call.i.i.i.i49 = tail call i32 %431(ptr noundef %rtwdev, i32 noundef 68704) #10
  %or.i.i.i = or i32 %call.i.i.i.i49, 3
  %432 = ptrtoint ptr %hci.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %432)
  %433 = load ptr, ptr %hci.i.i.i.i.i.i.i, align 8
  %write32.i.i.i.i50 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %433, i32 0, i32 12
  %434 = ptrtoint ptr %write32.i.i.i.i50 to i32
  call void @__asan_load4_noabort(i32 %434)
  %435 = load ptr, ptr %write32.i.i.i.i50, align 4
  tail call void %435(ptr noundef %rtwdev, i32 noundef 68704, i32 noundef %or.i.i.i) #10
  %436 = ptrtoint ptr %hci.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %436)
  %437 = load ptr, ptr %hci.i.i.i.i.i.i.i, align 8
  %read32.i.i.i46.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %437, i32 0, i32 9
  %438 = ptrtoint ptr %read32.i.i.i46.i to i32
  call void @__asan_load4_noabort(i32 %438)
  %439 = load ptr, ptr %read32.i.i.i46.i, align 4
  %call.i.i.i47.i = tail call i32 %439(ptr noundef %rtwdev, i32 noundef 68716) #10
  %or.i.i48.i = or i32 %call.i.i.i47.i, 1
  %440 = ptrtoint ptr %hci.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %440)
  %441 = load ptr, ptr %hci.i.i.i.i.i.i.i, align 8
  %write32.i.i.i49.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %441, i32 0, i32 12
  %442 = ptrtoint ptr %write32.i.i.i49.i to i32
  call void @__asan_load4_noabort(i32 %442)
  %443 = load ptr, ptr %write32.i.i.i49.i, align 4
  tail call void %443(ptr noundef %rtwdev, i32 noundef 68716, i32 noundef %or.i.i48.i) #10
  %444 = ptrtoint ptr %hci.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %444)
  %445 = load ptr, ptr %hci.i.i.i.i.i.i.i, align 8
  %read32.i.i.i51.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %445, i32 0, i32 9
  %446 = ptrtoint ptr %read32.i.i.i51.i to i32
  call void @__asan_load4_noabort(i32 %446)
  %447 = load ptr, ptr %read32.i.i.i51.i, align 4
  %call.i.i.i52.i = tail call i32 %447(ptr noundef %rtwdev, i32 noundef 88236) #10
  %or.i.i53.i = or i32 %call.i.i.i52.i, 134217728
  %448 = ptrtoint ptr %hci.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %448)
  %449 = load ptr, ptr %hci.i.i.i.i.i.i.i, align 8
  %write32.i.i.i54.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %449, i32 0, i32 12
  %450 = ptrtoint ptr %write32.i.i.i54.i to i32
  call void @__asan_load4_noabort(i32 %450)
  %451 = load ptr, ptr %write32.i.i.i54.i, align 4
  tail call void %451(ptr noundef %rtwdev, i32 noundef 88236, i32 noundef %or.i.i53.i) #10
  %452 = ptrtoint ptr %hci.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %452)
  %453 = load ptr, ptr %hci.i.i.i.i.i.i.i, align 8
  %read32.i.i.i56.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %453, i32 0, i32 9
  %454 = ptrtoint ptr %read32.i.i.i56.i to i32
  call void @__asan_load4_noabort(i32 %454)
  %455 = load ptr, ptr %read32.i.i.i56.i, align 4
  %call.i.i.i57.i = tail call i32 %455(ptr noundef %rtwdev, i32 noundef 96428) #10
  %or.i.i58.i = or i32 %call.i.i.i57.i, 134217728
  %456 = ptrtoint ptr %hci.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %456)
  %457 = load ptr, ptr %hci.i.i.i.i.i.i.i, align 8
  %write32.i.i.i59.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %457, i32 0, i32 12
  %458 = ptrtoint ptr %write32.i.i.i59.i to i32
  call void @__asan_load4_noabort(i32 %458)
  %459 = load ptr, ptr %write32.i.i.i59.i, align 4
  tail call void %459(ptr noundef %rtwdev, i32 noundef 96428, i32 noundef %or.i.i58.i) #10
  %460 = ptrtoint ptr %hci.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %460)
  %461 = load ptr, ptr %hci.i.i.i.i.i.i.i, align 8
  %write32.i.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %461, i32 0, i32 12
  %462 = ptrtoint ptr %write32.i.i.i to i32
  call void @__asan_load4_noabort(i32 %462)
  %463 = load ptr, ptr %write32.i.i.i, align 4
  tail call void %463(ptr noundef %rtwdev, i32 noundef 98304, i32 noundef 8) #10
  %call.i = tail call i64 @ktime_get() #10
  %add.i.i = add i64 %call.i, 1000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.7, i32 noundef 929) #10
  %464 = ptrtoint ptr %hci.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %464)
  %465 = load ptr, ptr %hci.i.i.i.i.i.i.i, align 8
  %write32.i.i.i6168.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %465, i32 0, i32 12
  %466 = ptrtoint ptr %write32.i.i.i6168.i to i32
  call void @__asan_load4_noabort(i32 %466)
  %467 = load ptr, ptr %write32.i.i.i6168.i, align 4
  tail call void %467(ptr noundef %rtwdev, i32 noundef 98432, i32 noundef 4) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %468 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %468(i32 noundef 214748) #10
  %469 = ptrtoint ptr %hci.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %469)
  %470 = load ptr, ptr %hci.i.i.i.i.i.i.i, align 8
  %read32.i.i.i6269.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %470, i32 0, i32 9
  %471 = ptrtoint ptr %read32.i.i.i6269.i to i32
  call void @__asan_load4_noabort(i32 %471)
  %472 = load ptr, ptr %read32.i.i.i6269.i, align 4
  %call.i.i.i6370.i = tail call i32 %472(ptr noundef %rtwdev, i32 noundef 98432) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call.i.i.i6370.i)
  %cmp1071.i = icmp eq i32 %call.i.i.i6370.i, 4
  br i1 %cmp1071.i, label %rtw89_phy_cfo_init.exit.rtw89_phy_init_rf_nctl.exit_crit_edge, label %rtw89_phy_cfo_init.exit.land.lhs.true.i51_crit_edge

rtw89_phy_cfo_init.exit.land.lhs.true.i51_crit_edge: ; preds = %rtw89_phy_cfo_init.exit
  br label %land.lhs.true.i51

rtw89_phy_cfo_init.exit.rtw89_phy_init_rf_nctl.exit_crit_edge: ; preds = %rtw89_phy_cfo_init.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %rtw89_phy_init_rf_nctl.exit

land.lhs.true.i51:                                ; preds = %if.then20.i.land.lhs.true.i51_crit_edge, %rtw89_phy_cfo_init.exit.land.lhs.true.i51_crit_edge
  %call13.i = tail call i64 @ktime_get() #10
  call void @__sanitizer_cov_trace_cmp8(i64 %call13.i, i64 %add.i.i)
  %cmp3.i.i = icmp sgt i64 %call13.i, %add.i.i
  br i1 %cmp3.i.i, label %if.then16.i, label %if.then20.i

if.then16.i:                                      ; preds = %land.lhs.true.i51
  %473 = ptrtoint ptr %hci.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %473)
  %474 = load ptr, ptr %hci.i.i.i.i.i.i.i, align 8
  %write32.i.i.i65.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %474, i32 0, i32 12
  %475 = ptrtoint ptr %write32.i.i.i65.i to i32
  call void @__asan_load4_noabort(i32 %475)
  %476 = load ptr, ptr %write32.i.i.i65.i, align 4
  tail call void %476(ptr noundef %rtwdev, i32 noundef 98432, i32 noundef 4) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %477 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %477(i32 noundef 214748) #10
  %478 = ptrtoint ptr %hci.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %478)
  %479 = load ptr, ptr %hci.i.i.i.i.i.i.i, align 8
  %read32.i.i.i66.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %479, i32 0, i32 9
  %480 = ptrtoint ptr %read32.i.i.i66.i to i32
  call void @__asan_load4_noabort(i32 %480)
  %481 = load ptr, ptr %read32.i.i.i66.i, align 4
  %call.i.i.i67.i = tail call i32 %481(ptr noundef %rtwdev, i32 noundef 98432) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call.i.i.i67.i)
  %phi.cmp.i52 = icmp eq i32 %call.i.i.i67.i, 4
  br i1 %phi.cmp.i52, label %if.then16.i.rtw89_phy_init_rf_nctl.exit_crit_edge, label %do.end27.i

if.then16.i.rtw89_phy_init_rf_nctl.exit_crit_edge: ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rtw89_phy_init_rf_nctl.exit

if.then20.i:                                      ; preds = %land.lhs.true.i51
  tail call void @usleep_range_state(i32 noundef 3, i32 noundef 10, i32 noundef 2) #10
  %482 = ptrtoint ptr %hci.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %482)
  %483 = load ptr, ptr %hci.i.i.i.i.i.i.i, align 8
  %write32.i.i.i61.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %483, i32 0, i32 12
  %484 = ptrtoint ptr %write32.i.i.i61.i to i32
  call void @__asan_load4_noabort(i32 %484)
  %485 = load ptr, ptr %write32.i.i.i61.i, align 4
  tail call void %485(ptr noundef %rtwdev, i32 noundef 98432, i32 noundef 4) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %486 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %486(i32 noundef 214748) #10
  %487 = ptrtoint ptr %hci.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %487)
  %488 = load ptr, ptr %hci.i.i.i.i.i.i.i, align 8
  %read32.i.i.i62.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %488, i32 0, i32 9
  %489 = ptrtoint ptr %read32.i.i.i62.i to i32
  call void @__asan_load4_noabort(i32 %489)
  %490 = load ptr, ptr %read32.i.i.i62.i, align 4
  %call.i.i.i63.i = tail call i32 %490(ptr noundef %rtwdev, i32 noundef 98432) #10
  %cmp10.i = icmp eq i32 %call.i.i.i63.i, 4
  br i1 %cmp10.i, label %if.then20.i.rtw89_phy_init_rf_nctl.exit_crit_edge, label %if.then20.i.land.lhs.true.i51_crit_edge

if.then20.i.land.lhs.true.i51_crit_edge:          ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true.i51

if.then20.i.rtw89_phy_init_rf_nctl.exit_crit_edge: ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rtw89_phy_init_rf_nctl.exit

do.end27.i:                                       ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 1
  %491 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %491)
  %492 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %492, ptr noundef nonnull @.str.118) #13
  br label %rtw89_phy_init_rf_nctl.exit

rtw89_phy_init_rf_nctl.exit:                      ; preds = %do.end27.i, %if.then20.i.rtw89_phy_init_rf_nctl.exit_crit_edge, %if.then16.i.rtw89_phy_init_rf_nctl.exit_crit_edge, %rtw89_phy_cfo_init.exit.rtw89_phy_init_rf_nctl.exit_crit_edge
  %nctl_table29.i = getelementptr inbounds %struct.rtw89_chip_info, ptr %427, i32 0, i32 25
  %493 = ptrtoint ptr %nctl_table29.i to i32
  call void @__asan_load4_noabort(i32 %493)
  %494 = load ptr, ptr %nctl_table29.i, align 4
  tail call fastcc void @rtw89_phy_init_reg(ptr noundef %rtwdev, ptr noundef %494, ptr noundef nonnull @rtw89_phy_config_bb_reg, ptr noundef null) #10
  %495 = ptrtoint ptr %chip1 to i32
  call void @__asan_load4_noabort(i32 %495)
  %496 = load ptr, ptr %chip1, align 4
  %ops.i54 = getelementptr inbounds %struct.rtw89_chip_info, ptr %496, i32 0, i32 1
  %497 = ptrtoint ptr %ops.i54 to i32
  call void @__asan_load4_noabort(i32 %497)
  %498 = load ptr, ptr %ops.i54, align 4
  %rfk_init.i = getelementptr inbounds %struct.rtw89_chip_ops, ptr %498, i32 0, i32 9
  %499 = ptrtoint ptr %rfk_init.i to i32
  call void @__asan_load4_noabort(i32 %499)
  %500 = load ptr, ptr %rfk_init.i, align 4
  %tobool.not.i55 = icmp eq ptr %500, null
  br i1 %tobool.not.i55, label %rtw89_phy_init_rf_nctl.exit.rtw89_chip_rfk_init.exit_crit_edge, label %if.then.i56

rtw89_phy_init_rf_nctl.exit.rtw89_chip_rfk_init.exit_crit_edge: ; preds = %rtw89_phy_init_rf_nctl.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %rtw89_chip_rfk_init.exit

if.then.i56:                                      ; preds = %rtw89_phy_init_rf_nctl.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %500(ptr noundef %rtwdev) #10
  br label %rtw89_chip_rfk_init.exit

rtw89_chip_rfk_init.exit:                         ; preds = %if.then.i56, %rtw89_phy_init_rf_nctl.exit.rtw89_chip_rfk_init.exit_crit_edge
  %byr_table = getelementptr inbounds %struct.rtw89_chip_info, ptr %1, i32 0, i32 26
  %501 = ptrtoint ptr %byr_table to i32
  call void @__asan_load4_noabort(i32 %501)
  %502 = load ptr, ptr %byr_table, align 4
  %load.i = getelementptr inbounds %struct.rtw89_txpwr_table, ptr %502, i32 0, i32 2
  %503 = ptrtoint ptr %load.i to i32
  call void @__asan_load4_noabort(i32 %503)
  %504 = load ptr, ptr %load.i, align 4
  tail call void %504(ptr noundef %rtwdev, ptr noundef %502) #10
  %505 = ptrtoint ptr %chip1 to i32
  call void @__asan_load4_noabort(i32 %505)
  %506 = load ptr, ptr %chip1, align 4
  %ops.i59 = getelementptr inbounds %struct.rtw89_chip_info, ptr %506, i32 0, i32 1
  %507 = ptrtoint ptr %ops.i59 to i32
  call void @__asan_load4_noabort(i32 %507)
  %508 = load ptr, ptr %ops.i59, align 4
  %set_txpwr_ctrl.i = getelementptr inbounds %struct.rtw89_chip_ops, ptr %508, i32 0, i32 16
  %509 = ptrtoint ptr %set_txpwr_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %509)
  %510 = load ptr, ptr %set_txpwr_ctrl.i, align 4
  %tobool.not.i60 = icmp eq ptr %510, null
  br i1 %tobool.not.i60, label %rtw89_chip_rfk_init.exit.rtw89_chip_set_txpwr_ctrl.exit_crit_edge, label %if.then.i61

rtw89_chip_rfk_init.exit.rtw89_chip_set_txpwr_ctrl.exit_crit_edge: ; preds = %rtw89_chip_rfk_init.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %rtw89_chip_set_txpwr_ctrl.exit

if.then.i61:                                      ; preds = %rtw89_chip_rfk_init.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %510(ptr noundef %rtwdev) #10
  br label %rtw89_chip_set_txpwr_ctrl.exit

rtw89_chip_set_txpwr_ctrl.exit:                   ; preds = %if.then.i61, %rtw89_chip_rfk_init.exit.rtw89_chip_set_txpwr_ctrl.exit_crit_edge
  %511 = ptrtoint ptr %chip1 to i32
  call void @__asan_load4_noabort(i32 %511)
  %512 = load ptr, ptr %chip1, align 4
  %ops.i64 = getelementptr inbounds %struct.rtw89_chip_info, ptr %512, i32 0, i32 1
  %513 = ptrtoint ptr %ops.i64 to i32
  call void @__asan_load4_noabort(i32 %513)
  %514 = load ptr, ptr %ops.i64, align 4
  %power_trim.i = getelementptr inbounds %struct.rtw89_chip_ops, ptr %514, i32 0, i32 14
  %515 = ptrtoint ptr %power_trim.i to i32
  call void @__asan_load4_noabort(i32 %515)
  %516 = load ptr, ptr %power_trim.i, align 4
  %tobool.not.i65 = icmp eq ptr %516, null
  br i1 %tobool.not.i65, label %rtw89_chip_set_txpwr_ctrl.exit.rtw89_chip_power_trim.exit_crit_edge, label %if.then.i66

rtw89_chip_set_txpwr_ctrl.exit.rtw89_chip_power_trim.exit_crit_edge: ; preds = %rtw89_chip_set_txpwr_ctrl.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %rtw89_chip_power_trim.exit

if.then.i66:                                      ; preds = %rtw89_chip_set_txpwr_ctrl.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %516(ptr noundef %rtwdev) #10
  br label %rtw89_chip_power_trim.exit

rtw89_chip_power_trim.exit:                       ; preds = %if.then.i66, %rtw89_chip_set_txpwr_ctrl.exit.rtw89_chip_power_trim.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw89_phy_set_bss_color(ptr noundef %rtwdev, ptr nocapture noundef readonly %vif) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %he_support = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 1, i32 5
  %0 = ptrtoint ptr %he_support to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %he_support, align 2, !range !291
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %assoc = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 1, i32 10
  %2 = ptrtoint ptr %assoc to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %assoc, align 1, !range !291
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool2.not = icmp eq i8 %3, 0
  br i1 %tobool2.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  %he_bss_color = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 1, i32 58
  %4 = ptrtoint ptr %he_bss_color to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %he_bss_color, align 1
  %hci.i.i.i.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 7
  %6 = ptrtoint ptr %hci.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hci.i.i.i.i, align 8
  %read32.i.i.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %7, i32 0, i32 9
  %8 = ptrtoint ptr %read32.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %read32.i.i.i.i, align 4
  %call.i.i.i.i = tail call i32 %9(ptr noundef %rtwdev, i32 noundef 82860) #10
  %or.i.i.i = or i32 %call.i.i.i.i, 268435456
  %10 = ptrtoint ptr %hci.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hci.i.i.i.i, align 8
  %write32.i.i.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %11, i32 0, i32 12
  %12 = ptrtoint ptr %write32.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %write32.i.i.i.i, align 4
  tail call void %13(ptr noundef %rtwdev, i32 noundef 82860, i32 noundef %or.i.i.i) #10
  %conv = zext i8 %5 to i32
  %14 = ptrtoint ptr %hci.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hci.i.i.i.i, align 8
  %read32.i.i.i.i17 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %15, i32 0, i32 9
  %16 = ptrtoint ptr %read32.i.i.i.i17 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %read32.i.i.i.i17, align 4
  %call.i.i.i.i18 = tail call i32 %17(ptr noundef %rtwdev, i32 noundef 82860) #10
  %and21.i.i.i19 = and i32 %call.i.i.i.i18, -264241153
  %shl.i.i.i = shl nuw nsw i32 %conv, 22
  %and22.i.i.i = and i32 %shl.i.i.i, 264241152
  %or.i.i.i20 = or i32 %and21.i.i.i19, %and22.i.i.i
  %18 = ptrtoint ptr %hci.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hci.i.i.i.i, align 8
  %write32.i.i.i.i21 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %19, i32 0, i32 12
  %20 = ptrtoint ptr %write32.i.i.i.i21 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %write32.i.i.i.i21, align 4
  tail call void %21(ptr noundef %rtwdev, i32 noundef 82860, i32 noundef %or.i.i.i20) #10
  %aid = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 1, i32 13
  %22 = ptrtoint ptr %aid to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %aid, align 2
  %conv5 = zext i16 %23 to i32
  %24 = ptrtoint ptr %hci.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %hci.i.i.i.i, align 8
  %read32.i.i.i.i25 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %25, i32 0, i32 9
  %26 = ptrtoint ptr %read32.i.i.i.i25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %read32.i.i.i.i25, align 4
  %call.i.i.i.i26 = tail call i32 %27(ptr noundef %rtwdev, i32 noundef 82860) #10
  %and21.i.i.i27 = and i32 %call.i.i.i.i26, -4192257
  %shl.i.i.i28 = shl nuw nsw i32 %conv5, 11
  %and22.i.i.i29 = and i32 %shl.i.i.i28, 4192256
  %or.i.i.i30 = or i32 %and21.i.i.i27, %and22.i.i.i29
  %28 = ptrtoint ptr %hci.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %hci.i.i.i.i, align 8
  %write32.i.i.i.i31 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %29, i32 0, i32 12
  %30 = ptrtoint ptr %write32.i.i.i.i31 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %write32.i.i.i.i31, align 4
  tail call void %31(ptr noundef %rtwdev, i32 noundef 82860, i32 noundef %or.i.i.i30) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i64 @rtw89_phy_ra_mask_cfg(ptr nocapture noundef readonly %rtwdev, ptr nocapture noundef readonly %rtwsta) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %mask2 = getelementptr inbounds %struct.rtw89_sta, ptr %rtwsta, i32 0, i32 13
  %use_cfg_mask = getelementptr inbounds %struct.rtw89_sta, ptr %rtwsta, i32 0, i32 12
  %0 = ptrtoint ptr %use_cfg_mask to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %use_cfg_mask, align 8, !range !291
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %current_band_type = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 4, i32 7
  %2 = ptrtoint ptr %current_band_type to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %current_band_type, align 1
  %4 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.144)
  switch i8 %3, label %do.end [
    i8 0, label %u64_encode_bits.exit
    i8 1, label %u64_encode_bits.exit94
  ]

u64_encode_bits.exit:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %5 = ptrtoint ptr %mask2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %mask2, align 4
  %7 = and i32 %6, 4095
  %and223.i = zext i32 %7 to i64
  br label %sw.epilog

u64_encode_bits.exit94:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx7 = getelementptr %struct.rtw89_sta, ptr %rtwsta, i32 0, i32 13, i32 0, i32 1
  %8 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx7, align 4
  %conv9 = zext i32 %9 to i64
  %and223.i93 = shl nuw nsw i64 %conv9, 4
  %mul.i = and i64 %and223.i93, 4080
  br label %sw.epilog

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %conv = zext i8 %3 to i32
  %dev = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 1
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %11, ptr noundef nonnull @.str.30, i32 noundef %conv) #13
  br label %cleanup

sw.epilog:                                        ; preds = %u64_encode_bits.exit94, %u64_encode_bits.exit
  %band.0 = phi i32 [ 1, %u64_encode_bits.exit94 ], [ 0, %u64_encode_bits.exit ]
  %cfg_mask.0 = phi i64 [ %mul.i, %u64_encode_bits.exit94 ], [ %and223.i, %u64_encode_bits.exit ]
  %he_cap = getelementptr i8, ptr %rtwsta, i32 -196
  %12 = ptrtoint ptr %he_cap to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %he_cap, align 4, !range !291
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool13.not = icmp eq i8 %13, 0
  br i1 %tobool13.not, label %if.else, label %u64_encode_bits.exit108

u64_encode_bits.exit108:                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx23 = getelementptr [6 x %struct.anon.130], ptr %mask2, i32 0, i32 %band.0, i32 3, i32 1
  %14 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %arrayidx23, align 2
  %conv24 = zext i16 %15 to i64
  %he_mcs = getelementptr [6 x %struct.anon.130], ptr %mask2, i32 0, i32 %band.0, i32 3
  %16 = ptrtoint ptr %he_mcs to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %he_mcs, align 2
  %conv18 = zext i16 %17 to i64
  %and223.i99 = shl nuw nsw i64 %conv18, 12
  %mul.i100 = and i64 %and223.i99, 16773120
  %or = or i64 %mul.i100, %cfg_mask.0
  %and223.i106 = shl nuw nsw i64 %conv24, 24
  %mul.i107 = and i64 %and223.i106, 68702699520
  %or26 = or i64 %or, %mul.i107
  br label %cleanup

if.else:                                          ; preds = %sw.epilog
  %vht_cap = getelementptr i8, ptr %rtwsta, i32 -212
  %18 = ptrtoint ptr %vht_cap to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %vht_cap, align 4, !range !291
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool27.not = icmp eq i8 %19, 0
  br i1 %tobool27.not, label %if.else42, label %u64_encode_bits.exit122

u64_encode_bits.exit122:                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx38 = getelementptr [6 x %struct.anon.130], ptr %mask2, i32 0, i32 %band.0, i32 2, i32 1
  %20 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %arrayidx38, align 2
  %conv39 = zext i16 %21 to i64
  %vht_mcs = getelementptr [6 x %struct.anon.130], ptr %mask2, i32 0, i32 %band.0, i32 2
  %22 = ptrtoint ptr %vht_mcs to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %vht_mcs, align 2
  %conv32 = zext i16 %23 to i64
  %and223.i113 = shl nuw nsw i64 %conv32, 12
  %mul.i114 = and i64 %and223.i113, 4190208
  %or34 = or i64 %mul.i114, %cfg_mask.0
  %and223.i120 = shl nuw nsw i64 %conv39, 24
  %mul.i121 = and i64 %and223.i120, 17163091968
  %or41 = or i64 %or34, %mul.i121
  br label %cleanup

if.else42:                                        ; preds = %if.else
  %ht_supported = getelementptr i8, ptr %rtwsta, i32 -234
  %24 = ptrtoint ptr %ht_supported to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %ht_supported, align 2, !range !291
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool43.not = icmp eq i8 %25, 0
  br i1 %tobool43.not, label %if.else42.cleanup_crit_edge, label %if.then44

if.else42.cleanup_crit_edge:                      ; preds = %if.else42
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then44:                                        ; preds = %if.else42
  call void @__sanitizer_cov_trace_pc() #12
  %ht_mcs = getelementptr [6 x %struct.anon.130], ptr %mask2, i32 0, i32 %band.0, i32 1
  %26 = ptrtoint ptr %ht_mcs to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %ht_mcs, align 4
  %conv48 = zext i8 %27 to i64
  %mul.i128 = shl nuw nsw i64 %conv48, 12
  %or50 = or i64 %mul.i128, %cfg_mask.0
  %arrayidx54 = getelementptr [6 x %struct.anon.130], ptr %mask2, i32 0, i32 %band.0, i32 1, i32 1
  %28 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx54, align 1
  %conv55 = zext i8 %29 to i64
  %mul.i135 = shl nuw nsw i64 %conv55, 24
  %or57 = or i64 %or50, %mul.i135
  br label %cleanup

cleanup:                                          ; preds = %if.then44, %if.else42.cleanup_crit_edge, %u64_encode_bits.exit122, %u64_encode_bits.exit108, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i64 [ -1, %do.end ], [ -1, %entry.cleanup_crit_edge ], [ %or26, %u64_encode_bits.exit108 ], [ %or41, %u64_encode_bits.exit122 ], [ %or57, %if.then44 ], [ %cfg_mask.0, %if.else42.cleanup_crit_edge ]
  ret i64 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight32(i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw89_fw_h2c_rf_reg(ptr noundef, ptr noundef, i16 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc signext i8 @rtw89_phy_read_txpwr_limit_ru(ptr noundef %rtwdev, i8 noundef zeroext %ru, i8 noundef zeroext %ntx, i8 noundef zeroext %ch) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %chip1 = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 3
  %0 = ptrtoint ptr %chip1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip1, align 4
  %call = tail call fastcc zeroext i8 @rtw89_channel_to_idx(ptr noundef %rtwdev, i8 noundef zeroext %ch)
  %current_band_type = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 4, i32 7
  %2 = ptrtoint ptr %current_band_type to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %current_band_type, align 1
  %regd.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 49
  %4 = ptrtoint ptr %regd.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regd.i, align 8
  %idxprom.i = zext i8 %3 to i32
  %arrayidx.i = getelementptr %struct.rtw89_regulatory, ptr %5, i32 0, i32 1, i32 %idxprom.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx.i, align 1
  %8 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.145)
  switch i8 %3, label %do.end [
    i8 0, label %sw.bb
    i8 1, label %sw.bb17
  ]

sw.bb:                                            ; preds = %entry
  %txpwr_lmt_ru_2g = getelementptr inbounds %struct.rtw89_chip_info, ptr %1, i32 0, i32 30
  %9 = ptrtoint ptr %txpwr_lmt_ru_2g to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %txpwr_lmt_ru_2g, align 4
  %idxprom = zext i8 %ru to i32
  %idxprom3 = zext i8 %ntx to i32
  %idxprom5 = zext i8 %7 to i32
  %idxprom7 = zext i8 %call to i32
  %arrayidx8 = getelementptr [3 x [2 x [14 x [14 x i8]]]], ptr %10, i32 0, i32 %idxprom, i32 %idxprom3, i32 %idxprom5, i32 %idxprom7
  %11 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx8, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not = icmp eq i8 %12, 0
  br i1 %tobool.not, label %if.then, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx4 = getelementptr [3 x [2 x [14 x [14 x i8]]]], ptr %10, i32 0, i32 %idxprom, i32 %idxprom3
  %arrayidx16 = getelementptr [14 x i8], ptr %arrayidx4, i32 0, i32 %idxprom7
  br label %sw.epilog.sink.split

sw.bb17:                                          ; preds = %entry
  %txpwr_lmt_ru_5g = getelementptr inbounds %struct.rtw89_chip_info, ptr %1, i32 0, i32 31
  %13 = ptrtoint ptr %txpwr_lmt_ru_5g to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %txpwr_lmt_ru_5g, align 4
  %idxprom18 = zext i8 %ru to i32
  %idxprom20 = zext i8 %ntx to i32
  %idxprom22 = zext i8 %7 to i32
  %idxprom24 = zext i8 %call to i32
  %arrayidx25 = getelementptr [3 x [2 x [14 x [53 x i8]]]], ptr %14, i32 0, i32 %idxprom18, i32 %idxprom20, i32 %idxprom22, i32 %idxprom24
  %15 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx25, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool26.not = icmp eq i8 %16, 0
  br i1 %tobool26.not, label %if.then27, label %sw.bb17.sw.epilog_crit_edge

sw.bb17.sw.epilog_crit_edge:                      ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.then27:                                        ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx21 = getelementptr [3 x [2 x [14 x [53 x i8]]]], ptr %14, i32 0, i32 %idxprom18, i32 %idxprom20
  %arrayidx35 = getelementptr [53 x i8], ptr %arrayidx21, i32 0, i32 %idxprom24
  br label %sw.epilog.sink.split

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 1
  %17 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %18, ptr noundef nonnull @.str.15, i32 noundef %idxprom.i) #13
  br label %cleanup

sw.epilog.sink.split:                             ; preds = %if.then27, %if.then
  %arrayidx35.sink = phi ptr [ %arrayidx35, %if.then27 ], [ %arrayidx16, %if.then ]
  %19 = ptrtoint ptr %arrayidx35.sink to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx35.sink, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %sw.bb17.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge
  %lmt_ru.0 = phi i8 [ %16, %sw.bb17.sw.epilog_crit_edge ], [ %12, %sw.bb.sw.epilog_crit_edge ], [ %20, %sw.epilog.sink.split ]
  %21 = ptrtoint ptr %chip1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %chip1, align 4
  %conv39 = sext i8 %lmt_ru.0 to i32
  %txpwr_factor_rf = getelementptr inbounds %struct.rtw89_chip_info, ptr %22, i32 0, i32 32
  %23 = ptrtoint ptr %txpwr_factor_rf to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %txpwr_factor_rf, align 4
  %conv40 = zext i8 %24 to i32
  %txpwr_factor_mac = getelementptr inbounds %struct.rtw89_chip_info, ptr %22, i32 0, i32 33
  %25 = ptrtoint ptr %txpwr_factor_mac to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %txpwr_factor_mac, align 1
  %conv41 = zext i8 %26 to i32
  %sub = sub nsw i32 %conv40, %conv41
  %shr = ashr i32 %conv39, %sub
  %call43 = tail call signext i8 @rtw89_query_sar(ptr noundef %rtwdev) #10
  %conv46 = sext i8 %call43 to i32
  %27 = tail call i32 @llvm.smin.i32(i32 %shr, i32 %conv46)
  %conv50 = trunc i32 %27 to i8
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %do.end
  %retval.0 = phi i8 [ 0, %do.end ], [ %conv50, %sw.epilog ]
  ret i8 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtw89_phy_c2h_ra_rpt(ptr noundef %rtwdev, ptr noundef %c2h, i32 noundef %len) #0 align 64 {
entry:
  %ra_data = alloca %struct.rtw89_phy_iter_ra_data, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ra_data) #10
  %0 = getelementptr inbounds %struct.rtw89_phy_iter_ra_data, ptr %ra_data, i32 0, i32 1
  %1 = ptrtoint ptr %ra_data to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %rtwdev, ptr %ra_data, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %c2h, ptr %0, align 4
  %3 = ptrtoint ptr %rtwdev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %rtwdev, align 128
  call void @ieee80211_iterate_stations_atomic(ptr noundef %4, ptr noundef nonnull @rtw89_phy_c2h_ra_rpt_iter, ptr noundef nonnull %ra_data) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ra_data) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtw89_phy_c2h_ra_rpt_iter(ptr nocapture noundef readonly %data, ptr noundef %sta) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %drv_priv = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 29
  %ra_report2 = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 1, i32 3
  %c2h3 = getelementptr inbounds %struct.rtw89_phy_iter_ra_data, ptr %data, i32 0, i32 1
  %2 = ptrtoint ptr %c2h3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %c2h3, align 4
  %data4 = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 19
  %4 = ptrtoint ptr %data4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data4, align 4
  %add.ptr = getelementptr i32, ptr %5, i32 2
  %6 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %add.ptr, align 4
  %8 = lshr i32 %7, 24
  %9 = ptrtoint ptr %drv_priv to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %drv_priv, align 8
  %11 = trunc i32 %8 to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %10, i8 %11)
  %cmp.not = icmp eq i8 %10, %11
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %12 = call ptr @memset(ptr %ra_report2, i32 0, i32 20)
  %13 = ptrtoint ptr %data4 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %data4, align 4
  %add.ptr10 = getelementptr i32, ptr %14, i32 3
  %15 = ptrtoint ptr %add.ptr10 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %add.ptr10, align 4
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #10
  %18 = trunc i32 %17 to i8
  %conv12 = and i8 %18, 127
  %div4.i.lhs.trunc = lshr i32 %17, 13
  %div4.i408411 = and i32 %div4.i.lhs.trunc, 3
  %div4.i404.lhs.trunc = lshr i32 %17, 10
  %div4.i404409412 = and i32 %div4.i404.lhs.trunc, 7
  %conv20 = trunc i32 %div4.i404409412 to i8
  %div4.i406.lhs.trunc = lshr i32 %17, 8
  %trunc = trunc i32 %div4.i406.lhs.trunc to i2
  %19 = zext i2 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.146)
  switch i2 %trunc, label %if.end.unreachabledefault [
    i2 0, label %sw.bb
    i2 1, label %sw.bb27
    i2 -2, label %sw.bb131
    i2 -1, label %sw.bb188
  ]

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call26 = tail call zeroext i16 @rtw89_ra_report_to_bitrate(ptr noundef %1, i8 noundef zeroext %conv12) #10
  %legacy = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 1, i32 3, i32 1
  %20 = ptrtoint ptr %legacy to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %call26, ptr %legacy, align 2
  br label %sw.epilog

sw.bb27:                                          ; preds = %if.end
  %21 = ptrtoint ptr %ra_report2 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %ra_report2, align 4
  %23 = or i8 %22, 1
  store i8 %23, ptr %ra_report2, align 4
  %old_ht_ra_format = getelementptr inbounds %struct.rtw89_dev, ptr %1, i32 0, i32 6, i32 8
  %24 = ptrtoint ptr %old_ht_ra_format to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %old_ht_ra_format, align 1, !range !291
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool.not = icmp eq i8 %25, 0
  %26 = lshr i32 %17, 1
  %and61 = and i32 %26, 24
  %and98 = and i32 %17, 7
  %or99 = or i32 %and61, %and98
  %conv100 = trunc i32 %or99 to i8
  %conv120 = and i8 %18, 31
  %rate.0 = select i1 %tobool.not, i8 %conv120, i8 %conv100
  %mcs = getelementptr inbounds %struct.rate_info, ptr %ra_report2, i32 0, i32 1
  %27 = ptrtoint ptr %mcs to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %rate.0, ptr %mcs, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv20)
  %tobool123.not = icmp eq i8 %conv20, 0
  br i1 %tobool123.not, label %sw.bb27.sw.epilog_crit_edge, label %if.then124

sw.bb27.sw.epilog_crit_edge:                      ; preds = %sw.bb27
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.then124:                                       ; preds = %sw.bb27
  call void @__sanitizer_cov_trace_pc() #12
  %28 = or i8 %22, 5
  %29 = ptrtoint ptr %ra_report2 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %28, ptr %ra_report2, align 4
  br label %sw.epilog

sw.bb131:                                         ; preds = %if.end
  %30 = ptrtoint ptr %ra_report2 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %ra_report2, align 4
  %32 = or i8 %31, 2
  store i8 %32, ptr %ra_report2, align 4
  %conv156 = and i8 %18, 15
  %mcs158 = getelementptr inbounds %struct.rate_info, ptr %ra_report2, i32 0, i32 1
  %33 = ptrtoint ptr %mcs158 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %conv156, ptr %mcs158, align 1
  %34 = lshr i8 %conv12, 4
  %conv178 = add nuw nsw i8 %34, 1
  %nss = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 1, i32 3, i32 3
  %35 = ptrtoint ptr %nss to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %conv178, ptr %nss, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv20)
  %tobool180.not = icmp eq i8 %conv20, 0
  br i1 %tobool180.not, label %sw.bb131.sw.epilog_crit_edge, label %if.then181

sw.bb131.sw.epilog_crit_edge:                     ; preds = %sw.bb131
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.then181:                                       ; preds = %sw.bb131
  call void @__sanitizer_cov_trace_pc() #12
  %36 = or i8 %31, 6
  %37 = ptrtoint ptr %ra_report2 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %36, ptr %ra_report2, align 4
  br label %sw.epilog

sw.bb188:                                         ; preds = %if.end
  %38 = ptrtoint ptr %ra_report2 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %ra_report2, align 4
  %40 = or i8 %39, 16
  store i8 %40, ptr %ra_report2, align 4
  %conv213 = and i8 %18, 15
  %mcs215 = getelementptr inbounds %struct.rate_info, ptr %ra_report2, i32 0, i32 1
  %41 = ptrtoint ptr %mcs215 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %conv213, ptr %mcs215, align 1
  %42 = lshr i8 %conv12, 4
  %conv236 = add nuw nsw i8 %42, 1
  %nss238 = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 1, i32 3, i32 3
  %43 = ptrtoint ptr %nss238 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %conv236, ptr %nss238, align 4
  %44 = zext i32 %div4.i404409412 to i64
  call void @__sanitizer_cov_trace_switch(i64 %44, ptr @__sancov_gen_cov_switch_values.147)
  switch i32 %div4.i404409412, label %if.else258 [
    i32 3, label %sw.bb188.if.then245_crit_edge
    i32 5, label %sw.bb188.if.then245_crit_edge416
    i32 2, label %sw.bb188.if.then255_crit_edge
    i32 4, label %sw.bb188.if.then255_crit_edge417
  ]

sw.bb188.if.then255_crit_edge417:                 ; preds = %sw.bb188
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then255

sw.bb188.if.then255_crit_edge:                    ; preds = %sw.bb188
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then255

sw.bb188.if.then245_crit_edge416:                 ; preds = %sw.bb188
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then245

sw.bb188.if.then245_crit_edge:                    ; preds = %sw.bb188
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then245

if.then245:                                       ; preds = %sw.bb188.if.then245_crit_edge, %sw.bb188.if.then245_crit_edge416
  %he_gi = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 1, i32 3, i32 4, i32 0, i32 1
  %45 = ptrtoint ptr %he_gi to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 0, ptr %he_gi, align 2
  br label %sw.epilog

if.then255:                                       ; preds = %sw.bb188.if.then255_crit_edge, %sw.bb188.if.then255_crit_edge417
  %he_gi257 = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 1, i32 3, i32 4, i32 0, i32 1
  %46 = ptrtoint ptr %he_gi257 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 1, ptr %he_gi257, align 2
  br label %sw.epilog

if.else258:                                       ; preds = %sw.bb188
  call void @__sanitizer_cov_trace_pc() #12
  %he_gi260 = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 1, i32 3, i32 4, i32 0, i32 1
  %47 = ptrtoint ptr %he_gi260 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 2, ptr %he_gi260, align 2
  br label %sw.epilog

if.end.unreachabledefault:                        ; preds = %if.end
  unreachable

sw.epilog:                                        ; preds = %if.else258, %if.then255, %if.then245, %if.then181, %sw.bb131.sw.epilog_crit_edge, %if.then124, %sw.bb27.sw.epilog_crit_edge, %sw.bb
  %rate.1 = phi i8 [ %conv12, %if.then245 ], [ %conv12, %if.then255 ], [ %conv12, %if.else258 ], [ %conv12, %if.then181 ], [ %conv12, %sw.bb131.sw.epilog_crit_edge ], [ %rate.0, %if.then124 ], [ %rate.0, %sw.bb27.sw.epilog_crit_edge ], [ %conv12, %sw.bb ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %div4.i408411)
  %switch.selectcmp = icmp eq i32 %div4.i408411, 1
  %switch.select = select i1 %switch.selectcmp, i8 3, i8 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %div4.i408411)
  %switch.selectcmp414 = icmp eq i32 %div4.i408411, 2
  %switch.select415 = select i1 %switch.selectcmp414, i8 4, i8 %switch.select
  %bw275 = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 1, i32 3, i32 4
  %48 = ptrtoint ptr %bw275 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %switch.select415, ptr %bw275, align 1
  %call282 = tail call i32 @cfg80211_calculate_bitrate(ptr noundef %ra_report2) #10
  %bit_rate = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 1, i32 3, i32 4, i32 0, i32 7
  %49 = ptrtoint ptr %bit_rate to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %call282, ptr %bit_rate, align 4
  %div4.i406410413 = shl nuw nsw i32 %div4.i406.lhs.trunc, 7
  %conv25 = and i32 %div4.i406410413, 384
  %50 = and i8 %rate.1, 127
  %and332 = zext i8 %50 to i32
  %or333 = or i32 %conv25, %and332
  %conv334 = trunc i32 %or333 to i16
  %hw_rate = getelementptr inbounds %struct.rtw89_ra_report, ptr %ra_report2, i32 0, i32 2
  %51 = ptrtoint ptr %hw_rate to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 %conv334, ptr %hw_rate, align 4
  %52 = load i32, ptr %bit_rate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 550, i32 %52)
  %cmp.i = icmp ult i32 %52, 550
  br i1 %cmp.i, label %sw.epilog.get_max_amsdu_len.exit_crit_edge, label %if.end.i

sw.epilog.get_max_amsdu_len.exit_crit_edge:       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %get_max_amsdu_len.exit

if.end.i:                                         ; preds = %sw.epilog
  %53 = ptrtoint ptr %ra_report2 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %ra_report2, align 2
  %conv.i = zext i8 %54 to i32
  %and.i407 = and i32 %conv.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i407)
  %tobool.not.i = icmp eq i32 %and.i407, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %mcs4.i = getelementptr inbounds %struct.rate_info, ptr %ra_report2, i32 0, i32 1
  %55 = ptrtoint ptr %mcs4.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %mcs4.i, align 1
  %57 = and i8 %56, 7
  br label %if.end16.i

if.else.i:                                        ; preds = %if.end.i
  %and10.i = and i32 %conv.i, 18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i)
  %tobool11.not.i = icmp eq i32 %and10.i, 0
  br i1 %tobool11.not.i, label %if.else.i.get_max_amsdu_len.exit_crit_edge, label %if.then12.i

if.else.i.get_max_amsdu_len.exit_crit_edge:       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %get_max_amsdu_len.exit

if.then12.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  %mcs13.i = getelementptr inbounds %struct.rate_info, ptr %ra_report2, i32 0, i32 1
  %58 = ptrtoint ptr %mcs13.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %mcs13.i, align 1
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.then12.i, %if.then3.i
  %mcs.0.i = phi i8 [ %57, %if.then3.i ], [ %59, %if.then12.i ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %mcs.0.i)
  %cmp18.i = icmp ult i8 %mcs.0.i, 3
  br i1 %cmp18.i, label %if.end16.i.get_max_amsdu_len.exit_crit_edge, label %if.end21.i

if.end16.i.get_max_amsdu_len.exit_crit_edge:      ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %get_max_amsdu_len.exit

if.end21.i:                                       ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1800, i32 %52)
  %cmp22.i = icmp ult i32 %52, 1800
  br i1 %cmp22.i, label %if.end21.i.get_max_amsdu_len.exit_crit_edge, label %if.end25.i

if.end21.i.get_max_amsdu_len.exit_crit_edge:      ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %get_max_amsdu_len.exit

if.end25.i:                                       ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4000, i32 %52)
  %cmp26.i = icmp ult i32 %52, 4000
  br i1 %cmp26.i, label %if.end25.i.get_max_amsdu_len.exit_crit_edge, label %if.end29.i

if.end25.i.get_max_amsdu_len.exit_crit_edge:      ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %get_max_amsdu_len.exit

if.end29.i:                                       ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 7000, i32 %52)
  %cmp30.i = icmp ult i32 %52, 7000
  br i1 %cmp30.i, label %if.end29.i.get_max_amsdu_len.exit_crit_edge, label %if.end33.i

if.end29.i.get_max_amsdu_len.exit_crit_edge:      ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %get_max_amsdu_len.exit

if.end33.i:                                       ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #12
  %chip.i = getelementptr inbounds %struct.rtw89_dev, ptr %1, i32 0, i32 3
  %60 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %chip.i, align 4
  %max_amsdu_limit.i = getelementptr inbounds %struct.rtw89_chip_info, ptr %61, i32 0, i32 4
  %62 = ptrtoint ptr %max_amsdu_limit.i to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %max_amsdu_limit.i, align 4
  br label %get_max_amsdu_len.exit

get_max_amsdu_len.exit:                           ; preds = %if.end33.i, %if.end29.i.get_max_amsdu_len.exit_crit_edge, %if.end25.i.get_max_amsdu_len.exit_crit_edge, %if.end21.i.get_max_amsdu_len.exit_crit_edge, %if.end16.i.get_max_amsdu_len.exit_crit_edge, %if.else.i.get_max_amsdu_len.exit_crit_edge, %sw.epilog.get_max_amsdu_len.exit_crit_edge
  %retval.0.i = phi i16 [ %63, %if.end33.i ], [ 1, %sw.epilog.get_max_amsdu_len.exit_crit_edge ], [ 1, %if.end16.i.get_max_amsdu_len.exit_crit_edge ], [ 1200, %if.end21.i.get_max_amsdu_len.exit_crit_edge ], [ 2600, %if.end25.i.get_max_amsdu_len.exit_crit_edge ], [ 3500, %if.end29.i.get_max_amsdu_len.exit_crit_edge ], [ 1, %if.else.i.get_max_amsdu_len.exit_crit_edge ]
  %max_rc_amsdu_len = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 24
  %64 = ptrtoint ptr %max_rc_amsdu_len to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 %retval.0.i, ptr %max_rc_amsdu_len, align 4
  %65 = udiv i16 %retval.0.i, 1500
  %div = zext i16 %65 to i32
  %sub = add nsw i32 %div, -1
  %max_agg_wait = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 1, i32 3, i32 4, i32 3, i32 2
  %66 = ptrtoint ptr %max_agg_wait to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %sub, ptr %max_agg_wait, align 4
  br label %cleanup

cleanup:                                          ; preds = %get_max_amsdu_len.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @rtw89_ra_report_to_bitrate(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cfg80211_calculate_bitrate(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rtw89_phy_cfo_set_crystal_cap(ptr noundef %rtwdev, i8 noundef zeroext %crystal_cap, i1 noundef zeroext %force) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %force, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %crystal_cap1 = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 37, i32 7
  %0 = ptrtoint ptr %crystal_cap1 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %crystal_cap1, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %1, i8 %crystal_cap)
  %cmp = icmp eq i8 %1, %crystal_cap
  br i1 %cmp, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %2 = tail call i8 @llvm.umin.i8(i8 %crystal_cap, i8 127)
  %conv.i = zext i8 %2 to i32
  %hci.i.i.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 7
  %3 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hci.i.i.i, align 8
  %read32.i.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %4, i32 0, i32 9
  %5 = ptrtoint ptr %read32.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %read32.i.i.i, align 4
  %call.i.i.i = tail call i32 %6(ptr noundef %rtwdev, i32 noundef 640) #10
  %and21.i.i = and i32 %call.i.i.i, -16646145
  %shl.i.i = shl nuw nsw i32 %conv.i, 17
  %or.i.i = or i32 %and21.i.i, %shl.i.i
  %7 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hci.i.i.i, align 8
  %write32.i.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %8, i32 0, i32 12
  %9 = ptrtoint ptr %write32.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %write32.i.i.i, align 4
  tail call void %10(ptr noundef %rtwdev, i32 noundef 640, i32 noundef %or.i.i) #10
  %11 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hci.i.i.i, align 8
  %read32.i.i.i58 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %12, i32 0, i32 9
  %13 = ptrtoint ptr %read32.i.i.i58 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %read32.i.i.i58, align 4
  %call.i.i.i59 = tail call i32 %14(ptr noundef %rtwdev, i32 noundef 640) #10
  %and21.i.i60 = and i32 %call.i.i.i59, -130049
  %shl.i.i61 = shl nuw nsw i32 %conv.i, 10
  %or.i.i63 = or i32 %and21.i.i60, %shl.i.i61
  %15 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hci.i.i.i, align 8
  %write32.i.i.i64 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %16, i32 0, i32 12
  %17 = ptrtoint ptr %write32.i.i.i64 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %write32.i.i.i64, align 4
  tail call void %18(ptr noundef %rtwdev, i32 noundef 640, i32 noundef %or.i.i63) #10
  %19 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %hci.i.i.i, align 8
  %read32.i.i.i66 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %20, i32 0, i32 9
  %21 = ptrtoint ptr %read32.i.i.i66 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %read32.i.i.i66, align 4
  %call.i.i.i67 = tail call i32 %22(ptr noundef %rtwdev, i32 noundef 640) #10
  %and.i.i = lshr i32 %call.i.i.i67, 17
  %conv.i68 = and i32 %and.i.i, 127
  %23 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %hci.i.i.i, align 8
  %read32.i.i.i70 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %24, i32 0, i32 9
  %25 = ptrtoint ptr %read32.i.i.i70 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %read32.i.i.i70, align 4
  %call.i.i.i71 = tail call i32 %26(ptr noundef %rtwdev, i32 noundef 640) #10
  %and.i.i72 = lshr i32 %call.i.i.i71, 10
  %27 = trunc i32 %and.i.i72 to i8
  %conv.i74 = and i8 %27, 127
  %crystal_cap24 = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 37, i32 7
  %28 = ptrtoint ptr %crystal_cap24 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv.i74, ptr %crystal_cap24, align 1
  %conv26 = zext i8 %conv.i74 to i32
  %def_x_cap = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 37, i32 9
  %29 = ptrtoint ptr %def_x_cap to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %def_x_cap, align 1
  %sub = sub i8 %conv.i74, %30
  %x_cap_ofst = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 37, i32 10
  %31 = ptrtoint ptr %x_cap_ofst to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %sub, ptr %x_cap_ofst, align 4
  tail call void (ptr, i32, ptr, ...) @__rtw89_debug(ptr noundef %rtwdev, i32 noundef 8, ptr noundef nonnull @.str.53, i32 noundef %conv26) #10
  tail call void (ptr, i32, ptr, ...) @__rtw89_debug(ptr noundef %rtwdev, i32 noundef 8, ptr noundef nonnull @.str.54, i32 noundef %conv.i68) #10
  %32 = ptrtoint ptr %x_cap_ofst to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %x_cap_ofst, align 4
  %conv32 = sext i8 %33 to i32
  tail call void (ptr, i32, ptr, ...) @__rtw89_debug(ptr noundef %rtwdev, i32 noundef 8, ptr noundef nonnull @.str.55, i32 noundef %conv32) #10
  tail call void (ptr, i32, ptr, ...) @__rtw89_debug(ptr noundef %rtwdev, i32 noundef 8, ptr noundef nonnull @.str.56) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %land.lhs.true.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @rtw89_phy_stat_rssi_update_iter(ptr nocapture noundef %data, ptr nocapture noundef %sta) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ch_info1 = getelementptr inbounds %struct.rtw89_phy_iter_rssi_data, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %ch_info1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ch_info1, align 4
  %avg_rssi = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 1, i32 5, i32 1
  %2 = ptrtoint ptr %avg_rssi to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %avg_rssi, align 4
  %shr.i = lshr i32 %3, 10
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %1, align 2
  %conv = zext i8 %5 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i, i32 %conv)
  %cmp = icmp ult i32 %shr.i, %conv
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %drv_priv = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 29
  %conv3 = trunc i32 %shr.i to i8
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv3, ptr %1, align 2
  %7 = ptrtoint ptr %drv_priv to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %drv_priv, align 8
  %conv5 = zext i8 %8 to i16
  %rssi_min_macid = getelementptr inbounds %struct.rtw89_phy_ch_info, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %rssi_min_macid to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %conv5, ptr %rssi_min_macid, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %prev_rssi = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 1, i32 5
  %10 = ptrtoint ptr %prev_rssi to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %prev_rssi, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %cmp7 = icmp eq i8 %11, 0
  br i1 %cmp7, label %if.then9, label %if.else

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %conv10 = trunc i32 %shr.i to i8
  %12 = ptrtoint ptr %prev_rssi to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv10, ptr %prev_rssi, align 8
  br label %if.end23

if.else:                                          ; preds = %if.end
  %conv6 = zext i8 %11 to i32
  %sub = sub nsw i32 %conv6, %shr.i
  %13 = tail call i32 @llvm.abs.i32(i32 %sub, i1 true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %13)
  %cmp17 = icmp ugt i32 %13, 6
  br i1 %cmp17, label %if.then19, label %if.else.if.end23_crit_edge

if.else.if.end23_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

if.then19:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %conv20 = trunc i32 %shr.i to i8
  %14 = ptrtoint ptr %prev_rssi to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv20, ptr %prev_rssi, align 8
  %rssi_changed = getelementptr inbounds %struct.rtw89_phy_iter_rssi_data, ptr %data, i32 0, i32 2
  %15 = ptrtoint ptr %rssi_changed to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %rssi_changed, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.then19, %if.else.if.end23_crit_edge, %if.then9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw89_btc_ntfy_wl_sta(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rtw89_phy_ifs_clm_set_th_reg(ptr noundef %rtwdev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ifs_clm_th_l = getelementptr %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 38, i32 18
  %0 = ptrtoint ptr %ifs_clm_th_l to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %ifs_clm_th_l, align 8
  %dbcc_en.i.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 2
  %hci.i.i.i.i.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 7
  %2 = ptrtoint ptr %hci.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hci.i.i.i.i.i, align 8
  %read32.i.i.i.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %read32.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %read32.i.i.i.i.i, align 4
  %call.i.i.i.i.i = tail call i32 %5(ptr noundef %rtwdev, i32 noundef 68652) #10
  %and21.i.i.i.i = and i32 %call.i.i.i.i.i, -32768
  %6 = and i16 %1, 32767
  %and22.i.i.i.i = zext i16 %6 to i32
  %or.i.i.i.i = or i32 %and21.i.i.i.i, %and22.i.i.i.i
  %7 = ptrtoint ptr %hci.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hci.i.i.i.i.i, align 8
  %write32.i.i.i.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %8, i32 0, i32 12
  %9 = ptrtoint ptr %write32.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %write32.i.i.i.i.i, align 4
  tail call void %10(ptr noundef %rtwdev, i32 noundef 68652, i32 noundef %or.i.i.i.i) #10
  %11 = ptrtoint ptr %dbcc_en.i.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %dbcc_en.i.i, align 8, !range !291
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not.i = icmp eq i8 %12, 0
  br i1 %tobool.not.i, label %entry.rtw89_phy_set_phy_regs.exit_crit_edge, label %rtw89_phy_write32_idx.exit21.i

entry.rtw89_phy_set_phy_regs.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %rtw89_phy_set_phy_regs.exit

rtw89_phy_write32_idx.exit21.i:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %13 = ptrtoint ptr %hci.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hci.i.i.i.i.i, align 8
  %read32.i.i.i.i13.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %14, i32 0, i32 9
  %15 = ptrtoint ptr %read32.i.i.i.i13.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %read32.i.i.i.i13.i, align 4
  %call.i.i.i.i14.i = tail call i32 %16(ptr noundef %rtwdev, i32 noundef 76844) #10
  %and21.i.i.i16.i = and i32 %call.i.i.i.i14.i, -32768
  %or.i.i.i19.i = or i32 %and21.i.i.i16.i, %and22.i.i.i.i
  %17 = ptrtoint ptr %hci.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %hci.i.i.i.i.i, align 8
  %write32.i.i.i.i20.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %18, i32 0, i32 12
  %19 = ptrtoint ptr %write32.i.i.i.i20.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %write32.i.i.i.i20.i, align 4
  tail call void %20(ptr noundef %rtwdev, i32 noundef 76844, i32 noundef %or.i.i.i19.i) #10
  br label %rtw89_phy_set_phy_regs.exit

rtw89_phy_set_phy_regs.exit:                      ; preds = %rtw89_phy_write32_idx.exit21.i, %entry.rtw89_phy_set_phy_regs.exit_crit_edge
  %arrayidx2 = getelementptr %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 38, i32 18, i32 1
  %21 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %arrayidx2, align 2
  %23 = ptrtoint ptr %hci.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %hci.i.i.i.i.i, align 8
  %read32.i.i.i.i.i55 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %24, i32 0, i32 9
  %25 = ptrtoint ptr %read32.i.i.i.i.i55 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %read32.i.i.i.i.i55, align 4
  %call.i.i.i.i.i56 = tail call i32 %26(ptr noundef %rtwdev, i32 noundef 68656) #10
  %and21.i.i.i.i57 = and i32 %call.i.i.i.i.i56, -32768
  %27 = and i16 %22, 32767
  %and22.i.i.i.i58 = zext i16 %27 to i32
  %or.i.i.i.i59 = or i32 %and21.i.i.i.i57, %and22.i.i.i.i58
  %28 = ptrtoint ptr %hci.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %hci.i.i.i.i.i, align 8
  %write32.i.i.i.i.i60 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %29, i32 0, i32 12
  %30 = ptrtoint ptr %write32.i.i.i.i.i60 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %write32.i.i.i.i.i60, align 4
  tail call void %31(ptr noundef %rtwdev, i32 noundef 68656, i32 noundef %or.i.i.i.i59) #10
  %32 = ptrtoint ptr %dbcc_en.i.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %dbcc_en.i.i, align 8, !range !291
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool.not.i61 = icmp eq i8 %33, 0
  br i1 %tobool.not.i61, label %rtw89_phy_set_phy_regs.exit.rtw89_phy_set_phy_regs.exit74_crit_edge, label %rtw89_phy_write32_idx.exit21.i73

rtw89_phy_set_phy_regs.exit.rtw89_phy_set_phy_regs.exit74_crit_edge: ; preds = %rtw89_phy_set_phy_regs.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %rtw89_phy_set_phy_regs.exit74

rtw89_phy_write32_idx.exit21.i73:                 ; preds = %rtw89_phy_set_phy_regs.exit
  call void @__sanitizer_cov_trace_pc() #12
  %34 = ptrtoint ptr %hci.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %hci.i.i.i.i.i, align 8
  %read32.i.i.i.i13.i68 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %35, i32 0, i32 9
  %36 = ptrtoint ptr %read32.i.i.i.i13.i68 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %read32.i.i.i.i13.i68, align 4
  %call.i.i.i.i14.i69 = tail call i32 %37(ptr noundef %rtwdev, i32 noundef 76848) #10
  %and21.i.i.i16.i70 = and i32 %call.i.i.i.i14.i69, -32768
  %or.i.i.i19.i71 = or i32 %and21.i.i.i16.i70, %and22.i.i.i.i58
  %38 = ptrtoint ptr %hci.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %hci.i.i.i.i.i, align 8
  %write32.i.i.i.i20.i72 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %39, i32 0, i32 12
  %40 = ptrtoint ptr %write32.i.i.i.i20.i72 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %write32.i.i.i.i20.i72, align 4
  tail call void %41(ptr noundef %rtwdev, i32 noundef 76848, i32 noundef %or.i.i.i19.i71) #10
  br label %rtw89_phy_set_phy_regs.exit74

rtw89_phy_set_phy_regs.exit74:                    ; preds = %rtw89_phy_write32_idx.exit21.i73, %rtw89_phy_set_phy_regs.exit.rtw89_phy_set_phy_regs.exit74_crit_edge
  %arrayidx5 = getelementptr %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 38, i32 18, i32 2
  %42 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %arrayidx5, align 4
  %44 = ptrtoint ptr %hci.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %hci.i.i.i.i.i, align 8
  %read32.i.i.i.i.i77 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %45, i32 0, i32 9
  %46 = ptrtoint ptr %read32.i.i.i.i.i77 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %read32.i.i.i.i.i77, align 4
  %call.i.i.i.i.i78 = tail call i32 %47(ptr noundef %rtwdev, i32 noundef 68660) #10
  %and21.i.i.i.i79 = and i32 %call.i.i.i.i.i78, -32768
  %48 = and i16 %43, 32767
  %and22.i.i.i.i80 = zext i16 %48 to i32
  %or.i.i.i.i81 = or i32 %and21.i.i.i.i79, %and22.i.i.i.i80
  %49 = ptrtoint ptr %hci.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %hci.i.i.i.i.i, align 8
  %write32.i.i.i.i.i82 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %50, i32 0, i32 12
  %51 = ptrtoint ptr %write32.i.i.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %write32.i.i.i.i.i82, align 4
  tail call void %52(ptr noundef %rtwdev, i32 noundef 68660, i32 noundef %or.i.i.i.i81) #10
  %53 = ptrtoint ptr %dbcc_en.i.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %dbcc_en.i.i, align 8, !range !291
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool.not.i83 = icmp eq i8 %54, 0
  br i1 %tobool.not.i83, label %rtw89_phy_set_phy_regs.exit74.rtw89_phy_set_phy_regs.exit96_crit_edge, label %rtw89_phy_write32_idx.exit21.i95

rtw89_phy_set_phy_regs.exit74.rtw89_phy_set_phy_regs.exit96_crit_edge: ; preds = %rtw89_phy_set_phy_regs.exit74
  call void @__sanitizer_cov_trace_pc() #12
  br label %rtw89_phy_set_phy_regs.exit96

rtw89_phy_write32_idx.exit21.i95:                 ; preds = %rtw89_phy_set_phy_regs.exit74
  call void @__sanitizer_cov_trace_pc() #12
  %55 = ptrtoint ptr %hci.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %hci.i.i.i.i.i, align 8
  %read32.i.i.i.i13.i90 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %56, i32 0, i32 9
  %57 = ptrtoint ptr %read32.i.i.i.i13.i90 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %read32.i.i.i.i13.i90, align 4
  %call.i.i.i.i14.i91 = tail call i32 %58(ptr noundef %rtwdev, i32 noundef 76852) #10
  %and21.i.i.i16.i92 = and i32 %call.i.i.i.i14.i91, -32768
  %or.i.i.i19.i93 = or i32 %and21.i.i.i16.i92, %and22.i.i.i.i80
  %59 = ptrtoint ptr %hci.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %hci.i.i.i.i.i, align 8
  %write32.i.i.i.i20.i94 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %60, i32 0, i32 12
  %61 = ptrtoint ptr %write32.i.i.i.i20.i94 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %write32.i.i.i.i20.i94, align 4
  tail call void %62(ptr noundef %rtwdev, i32 noundef 76852, i32 noundef %or.i.i.i19.i93) #10
  br label %rtw89_phy_set_phy_regs.exit96

rtw89_phy_set_phy_regs.exit96:                    ; preds = %rtw89_phy_write32_idx.exit21.i95, %rtw89_phy_set_phy_regs.exit74.rtw89_phy_set_phy_regs.exit96_crit_edge
  %arrayidx8 = getelementptr %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 38, i32 18, i32 3
  %63 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %arrayidx8, align 2
  %65 = ptrtoint ptr %hci.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %hci.i.i.i.i.i, align 8
  %read32.i.i.i.i.i99 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %66, i32 0, i32 9
  %67 = ptrtoint ptr %read32.i.i.i.i.i99 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %read32.i.i.i.i.i99, align 4
  %call.i.i.i.i.i100 = tail call i32 %68(ptr noundef %rtwdev, i32 noundef 68664) #10
  %and21.i.i.i.i101 = and i32 %call.i.i.i.i.i100, -32768
  %69 = and i16 %64, 32767
  %and22.i.i.i.i102 = zext i16 %69 to i32
  %or.i.i.i.i103 = or i32 %and21.i.i.i.i101, %and22.i.i.i.i102
  %70 = ptrtoint ptr %hci.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %hci.i.i.i.i.i, align 8
  %write32.i.i.i.i.i104 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %71, i32 0, i32 12
  %72 = ptrtoint ptr %write32.i.i.i.i.i104 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %write32.i.i.i.i.i104, align 4
  tail call void %73(ptr noundef %rtwdev, i32 noundef 68664, i32 noundef %or.i.i.i.i103) #10
  %74 = ptrtoint ptr %dbcc_en.i.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %dbcc_en.i.i, align 8, !range !291
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %75)
  %tobool.not.i105 = icmp eq i8 %75, 0
  br i1 %tobool.not.i105, label %rtw89_phy_set_phy_regs.exit96.rtw89_phy_set_phy_regs.exit118_crit_edge, label %rtw89_phy_write32_idx.exit21.i117

rtw89_phy_set_phy_regs.exit96.rtw89_phy_set_phy_regs.exit118_crit_edge: ; preds = %rtw89_phy_set_phy_regs.exit96
  call void @__sanitizer_cov_trace_pc() #12
  br label %rtw89_phy_set_phy_regs.exit118

rtw89_phy_write32_idx.exit21.i117:                ; preds = %rtw89_phy_set_phy_regs.exit96
  call void @__sanitizer_cov_trace_pc() #12
  %76 = ptrtoint ptr %hci.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %hci.i.i.i.i.i, align 8
  %read32.i.i.i.i13.i112 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %77, i32 0, i32 9
  %78 = ptrtoint ptr %read32.i.i.i.i13.i112 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %read32.i.i.i.i13.i112, align 4
  %call.i.i.i.i14.i113 = tail call i32 %79(ptr noundef %rtwdev, i32 noundef 76856) #10
  %and21.i.i.i16.i114 = and i32 %call.i.i.i.i14.i113, -32768
  %or.i.i.i19.i115 = or i32 %and21.i.i.i16.i114, %and22.i.i.i.i102
  %80 = ptrtoint ptr %hci.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %hci.i.i.i.i.i, align 8
  %write32.i.i.i.i20.i116 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %81, i32 0, i32 12
  %82 = ptrtoint ptr %write32.i.i.i.i20.i116 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %write32.i.i.i.i20.i116, align 4
  tail call void %83(ptr noundef %rtwdev, i32 noundef 76856, i32 noundef %or.i.i.i19.i115) #10
  br label %rtw89_phy_set_phy_regs.exit118

rtw89_phy_set_phy_regs.exit118:                   ; preds = %rtw89_phy_write32_idx.exit21.i117, %rtw89_phy_set_phy_regs.exit96.rtw89_phy_set_phy_regs.exit118_crit_edge
  %ifs_clm_th_h = getelementptr %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 38, i32 19
  %84 = ptrtoint ptr %ifs_clm_th_h to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %ifs_clm_th_h, align 8
  %conv11 = zext i16 %85 to i32
  %86 = ptrtoint ptr %hci.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %hci.i.i.i.i.i, align 8
  %read32.i.i.i.i.i121 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %87, i32 0, i32 9
  %88 = ptrtoint ptr %read32.i.i.i.i.i121 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %read32.i.i.i.i.i121, align 4
  %call.i.i.i.i.i122 = tail call i32 %89(ptr noundef %rtwdev, i32 noundef 68652) #10
  %and21.i.i.i.i123 = and i32 %call.i.i.i.i.i122, 65535
  %shl.i.i.i.i = shl nuw i32 %conv11, 16
  %or.i.i.i.i124 = or i32 %and21.i.i.i.i123, %shl.i.i.i.i
  %90 = ptrtoint ptr %hci.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %hci.i.i.i.i.i, align 8
  %write32.i.i.i.i.i125 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %91, i32 0, i32 12
  %92 = ptrtoint ptr %write32.i.i.i.i.i125 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %write32.i.i.i.i.i125, align 4
  tail call void %93(ptr noundef %rtwdev, i32 noundef 68652, i32 noundef %or.i.i.i.i124) #10
  %94 = ptrtoint ptr %dbcc_en.i.i to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %dbcc_en.i.i, align 8, !range !291
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %95)
  %tobool.not.i126 = icmp eq i8 %95, 0
  br i1 %tobool.not.i126, label %rtw89_phy_set_phy_regs.exit118.rtw89_phy_set_phy_regs.exit139_crit_edge, label %rtw89_phy_write32_idx.exit21.i138

rtw89_phy_set_phy_regs.exit118.rtw89_phy_set_phy_regs.exit139_crit_edge: ; preds = %rtw89_phy_set_phy_regs.exit118
  call void @__sanitizer_cov_trace_pc() #12
  br label %rtw89_phy_set_phy_regs.exit139

rtw89_phy_write32_idx.exit21.i138:                ; preds = %rtw89_phy_set_phy_regs.exit118
  call void @__sanitizer_cov_trace_pc() #12
  %96 = ptrtoint ptr %hci.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %hci.i.i.i.i.i, align 8
  %read32.i.i.i.i13.i133 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %97, i32 0, i32 9
  %98 = ptrtoint ptr %read32.i.i.i.i13.i133 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %read32.i.i.i.i13.i133, align 4
  %call.i.i.i.i14.i134 = tail call i32 %99(ptr noundef %rtwdev, i32 noundef 76844) #10
  %and21.i.i.i16.i135 = and i32 %call.i.i.i.i14.i134, 65535
  %or.i.i.i19.i136 = or i32 %and21.i.i.i16.i135, %shl.i.i.i.i
  %100 = ptrtoint ptr %hci.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %hci.i.i.i.i.i, align 8
  %write32.i.i.i.i20.i137 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %101, i32 0, i32 12
  %102 = ptrtoint ptr %write32.i.i.i.i20.i137 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %write32.i.i.i.i20.i137, align 4
  tail call void %103(ptr noundef %rtwdev, i32 noundef 76844, i32 noundef %or.i.i.i19.i136) #10
  br label %rtw89_phy_set_phy_regs.exit139

rtw89_phy_set_phy_regs.exit139:                   ; preds = %rtw89_phy_write32_idx.exit21.i138, %rtw89_phy_set_phy_regs.exit118.rtw89_phy_set_phy_regs.exit139_crit_edge
  %arrayidx13 = getelementptr %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 38, i32 19, i32 1
  %104 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load2_noabort(i32 %104)
  %105 = load i16, ptr %arrayidx13, align 2
  %conv14 = zext i16 %105 to i32
  %106 = ptrtoint ptr %hci.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %hci.i.i.i.i.i, align 8
  %read32.i.i.i.i.i142 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %107, i32 0, i32 9
  %108 = ptrtoint ptr %read32.i.i.i.i.i142 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %read32.i.i.i.i.i142, align 4
  %call.i.i.i.i.i143 = tail call i32 %109(ptr noundef %rtwdev, i32 noundef 68656) #10
  %and21.i.i.i.i144 = and i32 %call.i.i.i.i.i143, 65535
  %shl.i.i.i.i145 = shl nuw i32 %conv14, 16
  %or.i.i.i.i146 = or i32 %and21.i.i.i.i144, %shl.i.i.i.i145
  %110 = ptrtoint ptr %hci.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %hci.i.i.i.i.i, align 8
  %write32.i.i.i.i.i147 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %111, i32 0, i32 12
  %112 = ptrtoint ptr %write32.i.i.i.i.i147 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %write32.i.i.i.i.i147, align 4
  tail call void %113(ptr noundef %rtwdev, i32 noundef 68656, i32 noundef %or.i.i.i.i146) #10
  %114 = ptrtoint ptr %dbcc_en.i.i to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %dbcc_en.i.i, align 8, !range !291
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %115)
  %tobool.not.i148 = icmp eq i8 %115, 0
  br i1 %tobool.not.i148, label %rtw89_phy_set_phy_regs.exit139.rtw89_phy_set_phy_regs.exit161_crit_edge, label %rtw89_phy_write32_idx.exit21.i160

rtw89_phy_set_phy_regs.exit139.rtw89_phy_set_phy_regs.exit161_crit_edge: ; preds = %rtw89_phy_set_phy_regs.exit139
  call void @__sanitizer_cov_trace_pc() #12
  br label %rtw89_phy_set_phy_regs.exit161

rtw89_phy_write32_idx.exit21.i160:                ; preds = %rtw89_phy_set_phy_regs.exit139
  call void @__sanitizer_cov_trace_pc() #12
  %116 = ptrtoint ptr %hci.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %hci.i.i.i.i.i, align 8
  %read32.i.i.i.i13.i155 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %117, i32 0, i32 9
  %118 = ptrtoint ptr %read32.i.i.i.i13.i155 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %read32.i.i.i.i13.i155, align 4
  %call.i.i.i.i14.i156 = tail call i32 %119(ptr noundef %rtwdev, i32 noundef 76848) #10
  %and21.i.i.i16.i157 = and i32 %call.i.i.i.i14.i156, 65535
  %or.i.i.i19.i158 = or i32 %and21.i.i.i16.i157, %shl.i.i.i.i145
  %120 = ptrtoint ptr %hci.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %hci.i.i.i.i.i, align 8
  %write32.i.i.i.i20.i159 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %121, i32 0, i32 12
  %122 = ptrtoint ptr %write32.i.i.i.i20.i159 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %write32.i.i.i.i20.i159, align 4
  tail call void %123(ptr noundef %rtwdev, i32 noundef 76848, i32 noundef %or.i.i.i19.i158) #10
  br label %rtw89_phy_set_phy_regs.exit161

rtw89_phy_set_phy_regs.exit161:                   ; preds = %rtw89_phy_write32_idx.exit21.i160, %rtw89_phy_set_phy_regs.exit139.rtw89_phy_set_phy_regs.exit161_crit_edge
  %arrayidx16 = getelementptr %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 38, i32 19, i32 2
  %124 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load2_noabort(i32 %124)
  %125 = load i16, ptr %arrayidx16, align 4
  %conv17 = zext i16 %125 to i32
  %126 = ptrtoint ptr %hci.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %hci.i.i.i.i.i, align 8
  %read32.i.i.i.i.i164 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %127, i32 0, i32 9
  %128 = ptrtoint ptr %read32.i.i.i.i.i164 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %read32.i.i.i.i.i164, align 4
  %call.i.i.i.i.i165 = tail call i32 %129(ptr noundef %rtwdev, i32 noundef 68660) #10
  %and21.i.i.i.i166 = and i32 %call.i.i.i.i.i165, 65535
  %shl.i.i.i.i167 = shl nuw i32 %conv17, 16
  %or.i.i.i.i168 = or i32 %and21.i.i.i.i166, %shl.i.i.i.i167
  %130 = ptrtoint ptr %hci.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %hci.i.i.i.i.i, align 8
  %write32.i.i.i.i.i169 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %131, i32 0, i32 12
  %132 = ptrtoint ptr %write32.i.i.i.i.i169 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %write32.i.i.i.i.i169, align 4
  tail call void %133(ptr noundef %rtwdev, i32 noundef 68660, i32 noundef %or.i.i.i.i168) #10
  %134 = ptrtoint ptr %dbcc_en.i.i to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %dbcc_en.i.i, align 8, !range !291
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %135)
  %tobool.not.i170 = icmp eq i8 %135, 0
  br i1 %tobool.not.i170, label %rtw89_phy_set_phy_regs.exit161.rtw89_phy_set_phy_regs.exit183_crit_edge, label %rtw89_phy_write32_idx.exit21.i182

rtw89_phy_set_phy_regs.exit161.rtw89_phy_set_phy_regs.exit183_crit_edge: ; preds = %rtw89_phy_set_phy_regs.exit161
  call void @__sanitizer_cov_trace_pc() #12
  br label %rtw89_phy_set_phy_regs.exit183

rtw89_phy_write32_idx.exit21.i182:                ; preds = %rtw89_phy_set_phy_regs.exit161
  call void @__sanitizer_cov_trace_pc() #12
  %136 = ptrtoint ptr %hci.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %hci.i.i.i.i.i, align 8
  %read32.i.i.i.i13.i177 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %137, i32 0, i32 9
  %138 = ptrtoint ptr %read32.i.i.i.i13.i177 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %read32.i.i.i.i13.i177, align 4
  %call.i.i.i.i14.i178 = tail call i32 %139(ptr noundef %rtwdev, i32 noundef 76852) #10
  %and21.i.i.i16.i179 = and i32 %call.i.i.i.i14.i178, 65535
  %or.i.i.i19.i180 = or i32 %and21.i.i.i16.i179, %shl.i.i.i.i167
  %140 = ptrtoint ptr %hci.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %hci.i.i.i.i.i, align 8
  %write32.i.i.i.i20.i181 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %141, i32 0, i32 12
  %142 = ptrtoint ptr %write32.i.i.i.i20.i181 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %write32.i.i.i.i20.i181, align 4
  tail call void %143(ptr noundef %rtwdev, i32 noundef 76852, i32 noundef %or.i.i.i19.i180) #10
  br label %rtw89_phy_set_phy_regs.exit183

rtw89_phy_set_phy_regs.exit183:                   ; preds = %rtw89_phy_write32_idx.exit21.i182, %rtw89_phy_set_phy_regs.exit161.rtw89_phy_set_phy_regs.exit183_crit_edge
  %arrayidx19 = getelementptr %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 38, i32 19, i32 3
  %144 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load2_noabort(i32 %144)
  %145 = load i16, ptr %arrayidx19, align 2
  %conv20 = zext i16 %145 to i32
  %146 = ptrtoint ptr %hci.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %hci.i.i.i.i.i, align 8
  %read32.i.i.i.i.i186 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %147, i32 0, i32 9
  %148 = ptrtoint ptr %read32.i.i.i.i.i186 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %read32.i.i.i.i.i186, align 4
  %call.i.i.i.i.i187 = tail call i32 %149(ptr noundef %rtwdev, i32 noundef 68664) #10
  %and21.i.i.i.i188 = and i32 %call.i.i.i.i.i187, 65535
  %shl.i.i.i.i189 = shl nuw i32 %conv20, 16
  %or.i.i.i.i190 = or i32 %and21.i.i.i.i188, %shl.i.i.i.i189
  %150 = ptrtoint ptr %hci.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %hci.i.i.i.i.i, align 8
  %write32.i.i.i.i.i191 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %151, i32 0, i32 12
  %152 = ptrtoint ptr %write32.i.i.i.i.i191 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %write32.i.i.i.i.i191, align 4
  tail call void %153(ptr noundef %rtwdev, i32 noundef 68664, i32 noundef %or.i.i.i.i190) #10
  %154 = ptrtoint ptr %dbcc_en.i.i to i32
  call void @__asan_load1_noabort(i32 %154)
  %155 = load i8, ptr %dbcc_en.i.i, align 8, !range !291
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %155)
  %tobool.not.i192 = icmp eq i8 %155, 0
  br i1 %tobool.not.i192, label %rtw89_phy_set_phy_regs.exit183.rtw89_phy_set_phy_regs.exit205_crit_edge, label %rtw89_phy_write32_idx.exit21.i204

rtw89_phy_set_phy_regs.exit183.rtw89_phy_set_phy_regs.exit205_crit_edge: ; preds = %rtw89_phy_set_phy_regs.exit183
  call void @__sanitizer_cov_trace_pc() #12
  br label %rtw89_phy_set_phy_regs.exit205

rtw89_phy_write32_idx.exit21.i204:                ; preds = %rtw89_phy_set_phy_regs.exit183
  call void @__sanitizer_cov_trace_pc() #12
  %156 = ptrtoint ptr %hci.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %hci.i.i.i.i.i, align 8
  %read32.i.i.i.i13.i199 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %157, i32 0, i32 9
  %158 = ptrtoint ptr %read32.i.i.i.i13.i199 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %read32.i.i.i.i13.i199, align 4
  %call.i.i.i.i14.i200 = tail call i32 %159(ptr noundef %rtwdev, i32 noundef 76856) #10
  %and21.i.i.i16.i201 = and i32 %call.i.i.i.i14.i200, 65535
  %or.i.i.i19.i202 = or i32 %and21.i.i.i16.i201, %shl.i.i.i.i189
  %160 = ptrtoint ptr %hci.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %hci.i.i.i.i.i, align 8
  %write32.i.i.i.i20.i203 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %161, i32 0, i32 12
  %162 = ptrtoint ptr %write32.i.i.i.i20.i203 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %write32.i.i.i.i20.i203, align 4
  tail call void %163(ptr noundef %rtwdev, i32 noundef 76856, i32 noundef %or.i.i.i19.i202) #10
  br label %rtw89_phy_set_phy_regs.exit205

rtw89_phy_set_phy_regs.exit205:                   ; preds = %rtw89_phy_write32_idx.exit21.i204, %rtw89_phy_set_phy_regs.exit183.rtw89_phy_set_phy_regs.exit205_crit_edge
  %164 = ptrtoint ptr %ifs_clm_th_l to i32
  call void @__asan_load2_noabort(i32 %164)
  %165 = load i16, ptr %ifs_clm_th_l, align 2
  %conv26 = zext i16 %165 to i32
  %166 = ptrtoint ptr %ifs_clm_th_h to i32
  call void @__asan_load2_noabort(i32 %166)
  %167 = load i16, ptr %ifs_clm_th_h, align 2
  %conv30 = zext i16 %167 to i32
  tail call void (ptr, i32, ptr, ...) @__rtw89_debug(ptr noundef %rtwdev, i32 noundef 512, ptr noundef nonnull @.str.101, i32 noundef 1, i32 noundef %conv26, i32 noundef %conv30) #10
  %168 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load2_noabort(i32 %168)
  %169 = load i16, ptr %arrayidx2, align 2
  %conv26.1 = zext i16 %169 to i32
  %170 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load2_noabort(i32 %170)
  %171 = load i16, ptr %arrayidx13, align 2
  %conv30.1 = zext i16 %171 to i32
  tail call void (ptr, i32, ptr, ...) @__rtw89_debug(ptr noundef %rtwdev, i32 noundef 512, ptr noundef nonnull @.str.101, i32 noundef 2, i32 noundef %conv26.1, i32 noundef %conv30.1) #10
  %172 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load2_noabort(i32 %172)
  %173 = load i16, ptr %arrayidx5, align 2
  %conv26.2 = zext i16 %173 to i32
  %174 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load2_noabort(i32 %174)
  %175 = load i16, ptr %arrayidx16, align 2
  %conv30.2 = zext i16 %175 to i32
  tail call void (ptr, i32, ptr, ...) @__rtw89_debug(ptr noundef %rtwdev, i32 noundef 512, ptr noundef nonnull @.str.101, i32 noundef 3, i32 noundef %conv26.2, i32 noundef %conv30.2) #10
  %176 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load2_noabort(i32 %176)
  %177 = load i16, ptr %arrayidx8, align 2
  %conv26.3 = zext i16 %177 to i32
  %178 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load2_noabort(i32 %178)
  %179 = load i16, ptr %arrayidx19, align 2
  %conv30.3 = zext i16 %179 to i32
  tail call void (ptr, i32, ptr, ...) @__rtw89_debug(ptr noundef %rtwdev, i32 noundef 512, ptr noundef nonnull @.str.101, i32 noundef 4, i32 noundef %conv26.3, i32 noundef %conv30.3) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.ctlz.i16(i16, i1 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.smin.i8(i8, i8) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umax.i8(i8, i8) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

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

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 145)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 145)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !28, !29, !30, !32, !34, !35, !36, !37, !38, !40, !42, !44, !46, !47, !48, !49, !51, !52, !53, !54, !55, !57, !58, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !82, !83, !84, !86, !87, !89, !90, !91, !92, !94, !95, !96, !98, !99, !100, !101, !103, !104, !105, !106, !108, !110, !111, !112, !113, !115, !116, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157, !159, !161, !163, !165, !167, !169, !171, !173, !175, !177, !179, !181, !183, !185, !187, !189, !191, !193, !195, !197, !199, !201, !203, !205, !207, !209, !211, !213, !215, !217, !219, !221, !223, !225, !227, !229, !231, !233, !235, !237, !239, !241, !243, !245, !247, !249, !251, !253, !255, !257, !259, !261, !263, !265, !267, !269, !271, !273, !275, !277, !279, !280, !281}
!llvm.module.flags = !{!282, !283, !284, !285, !286, !287, !288, !289}
!llvm.ident = !{!290}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/realtek/rtw89/phy.c", i32 333, i32 2}
!2 = !{ptr @rtw89_phy_rate_pattern_vif.hw_rate_he, !3, !"hw_rate_he", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/realtek/rtw89/phy.c", i32 379, i32 19}
!4 = !{ptr @rtw89_phy_rate_pattern_vif.hw_rate_vht, !5, !"hw_rate_vht", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/realtek/rtw89/phy.c", i32 383, i32 19}
!6 = !{ptr @rtw89_phy_rate_pattern_vif.hw_rate_ht, !7, !"hw_rate_ht", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/realtek/rtw89/phy.c", i32 387, i32 19}
!8 = !{ptr @.str.1, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/realtek/rtw89/phy.c", i32 440, i32 2}
!10 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/realtek/rtw89/phy.c", i32 449, i32 2}
!12 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/realtek/rtw89/phy.c", i32 484, i32 2}
!14 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/realtek/rtw89/phy.c", i32 491, i32 2}
!16 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/realtek/rtw89/phy.c", i32 580, i32 3}
!18 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @rtw89_phy_read_rf._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @rtw89_phy_read_rf._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @__ksymtab_rtw89_phy_read_rf, !25, !"__ksymtab_rtw89_phy_read_rf", i1 false, i1 false}
!25 = !{!"../drivers/net/wireless/realtek/rtw89/phy.c", i32 592, i32 1}
!26 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/wireless/realtek/rtw89/phy.c", i32 602, i32 3}
!28 = !{ptr @rtw89_phy_write_rf._entry, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @rtw89_phy_write_rf._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @__ksymtab_rtw89_phy_write_rf, !31, !"__ksymtab_rtw89_phy_write_rf", i1 false, i1 false}
!31 = !{!"../drivers/net/wireless/realtek/rtw89/phy.c", i32 617, i32 1}
!32 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/wireless/realtek/rtw89/phy.c", i32 906, i32 4}
!34 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @rtw89_phy_init_rf_reg._entry, !33, !"_entry", i1 false, i1 false}
!37 = !{ptr @rtw89_phy_init_rf_reg._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @rtw89_rs_idx_max, !39, !"rtw89_rs_idx_max", i1 false, i1 false}
!39 = !{!"../drivers/net/wireless/realtek/rtw89/phy.c", i32 999, i32 10}
!40 = !{ptr @rtw89_rs_nss_max, !41, !"rtw89_rs_nss_max", i1 false, i1 false}
!41 = !{!"../drivers/net/wireless/realtek/rtw89/phy.c", i32 1007, i32 10}
!42 = !{ptr @.str.14, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/wireless/realtek/rtw89/phy.c", i32 1065, i32 3}
!44 = !{ptr @.str.15, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/wireless/realtek/rtw89/phy.c", i32 1118, i32 3}
!46 = !{ptr @.str.16, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @rtw89_phy_read_txpwr_limit._entry, !45, !"_entry", i1 false, i1 false}
!48 = !{ptr @rtw89_phy_read_txpwr_limit._entry_ptr, !45, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.17, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/net/wireless/realtek/rtw89/phy.c", i32 1450, i32 3}
!51 = !{ptr @.str.18, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.19, !50, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @rtw89_phy_c2h_handle._entry, !50, !"_entry", i1 false, i1 false}
!54 = !{ptr @rtw89_phy_c2h_handle._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.21, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/net/wireless/realtek/rtw89/phy.c", i32 1454, i32 3}
!57 = !{ptr @rtw89_phy_c2h_handle._entry.20, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @rtw89_phy_c2h_handle._entry_ptr.22, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.23, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/net/wireless/realtek/rtw89/phy.c", i32 1859, i32 2}
!61 = !{ptr @.str.24, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/net/wireless/realtek/rtw89/phy.c", i32 2400, i32 3}
!63 = !{ptr @.str.25, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/net/wireless/realtek/rtw89/phy.c", i32 2419, i32 2}
!65 = !{ptr @.str.26, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/net/wireless/realtek/rtw89/phy.c", i32 2912, i32 3}
!67 = !{ptr @.str.27, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/net/wireless/realtek/rtw89/phy.c", i32 2915, i32 3}
!69 = !{ptr @.str.28, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/net/wireless/realtek/rtw89/phy.c", i32 2931, i32 2}
!71 = !{ptr @.str.29, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/net/wireless/realtek/rtw89/phy.c", i32 2938, i32 3}
!73 = !{ptr @rtw89_ra_mask_ht_rates, !74, !"rtw89_ra_mask_ht_rates", i1 false, i1 false}
!74 = !{!"../drivers/net/wireless/realtek/rtw89/phy.c", i32 179, i32 1}
!75 = !{ptr @rtw89_ra_mask_he_rates, !76, !"rtw89_ra_mask_he_rates", i1 false, i1 false}
!76 = !{!"../drivers/net/wireless/realtek/rtw89/phy.c", i32 185, i32 1}
!77 = !{ptr @rtw89_ra_mask_vht_rates, !78, !"rtw89_ra_mask_vht_rates", i1 false, i1 false}
!78 = !{!"../drivers/net/wireless/realtek/rtw89/phy.c", i32 182, i32 1}
!79 = !{ptr @.str.30, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/net/wireless/realtek/rtw89/phy.c", i32 154, i32 3}
!81 = !{ptr @.str.31, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @rtw89_phy_ra_mask_cfg._entry, !80, !"_entry", i1 false, i1 false}
!83 = !{ptr @rtw89_phy_ra_mask_cfg._entry_ptr, !80, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.32, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/net/wireless/realtek/rtw89/core.h", i32 3031, i32 2}
!86 = !{ptr @.str.33, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @.str.34, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/net/wireless/realtek/rtw89/phy.c", i32 825, i32 3}
!89 = !{ptr @.str.35, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @rtw89_phy_init_reg._entry, !88, !"_entry", i1 false, i1 false}
!91 = !{ptr @rtw89_phy_init_reg._entry_ptr, !88, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.37, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/net/wireless/realtek/rtw89/phy.c", i32 841, i32 5}
!94 = !{ptr @rtw89_phy_init_reg._entry.36, !93, !"_entry", i1 false, i1 false}
!95 = !{ptr @rtw89_phy_init_reg._entry_ptr.38, !93, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.39, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/net/wireless/realtek/rtw89/phy.c", i32 658, i32 3}
!98 = !{ptr @.str.40, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @rtw89_phy_cofig_rf_reg_store._entry, !97, !"_entry", i1 false, i1 false}
!100 = !{ptr @rtw89_phy_cofig_rf_reg_store._entry_ptr, !97, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.41, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/net/wireless/realtek/rtw89/phy.c", i32 677, i32 3}
!103 = !{ptr @.str.42, !102, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @rtw89_phy_config_rf_reg_fw._entry, !102, !"_entry", i1 false, i1 false}
!105 = !{ptr @rtw89_phy_config_rf_reg_fw._entry_ptr, !102, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @_byr_of_rs, !107, !"_byr_of_rs", i1 false, i1 false}
!107 = !{!"../drivers/net/wireless/realtek/rtw89/phy.c", i32 1015, i32 17}
!108 = !{ptr @.str.43, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/net/wireless/realtek/rtw89/phy.c", i32 1090, i32 3}
!110 = !{ptr @.str.44, !109, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @rtw89_channel_to_idx._entry, !109, !"_entry", i1 false, i1 false}
!112 = !{ptr @rtw89_channel_to_idx._entry_ptr, !109, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.45, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/net/wireless/realtek/rtw89/phy.c", i32 1249, i32 3}
!115 = !{ptr @rtw89_phy_read_txpwr_limit_ru._entry, !114, !"_entry", i1 false, i1 false}
!116 = !{ptr @rtw89_phy_read_txpwr_limit_ru._entry_ptr, !114, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @rtw89_phy_c2h_ra_handler, !118, !"rtw89_phy_c2h_ra_handler", i1 false, i1 false}
!118 = !{!"../drivers/net/wireless/realtek/rtw89/phy.c", i32 1431, i32 15}
!119 = !{ptr @.str.46, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/net/wireless/realtek/rtw89/phy.c", i32 1763, i32 2}
!121 = !{ptr @.str.47, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/net/wireless/realtek/rtw89/phy.c", i32 1770, i32 3}
!123 = !{ptr @.str.48, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/net/wireless/realtek/rtw89/phy.c", i32 1774, i32 3}
!125 = !{ptr @.str.49, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/net/wireless/realtek/rtw89/phy.c", i32 1782, i32 3}
!127 = !{ptr @.str.50, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/net/wireless/realtek/rtw89/phy.c", i32 1788, i32 2}
!129 = !{ptr @.str.51, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/net/wireless/realtek/rtw89/phy.c", i32 1789, i32 2}
!131 = !{ptr @.str.52, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/net/wireless/realtek/rtw89/phy.c", i32 1521, i32 2}
!133 = !{ptr @.str.53, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/net/wireless/realtek/rtw89/phy.c", i32 1502, i32 2}
!135 = !{ptr @.str.54, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/net/wireless/realtek/rtw89/phy.c", i32 1503, i32 2}
!137 = !{ptr @.str.55, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/net/wireless/realtek/rtw89/phy.c", i32 1504, i32 2}
!139 = !{ptr @.str.56, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/net/wireless/realtek/rtw89/phy.c", i32 1506, i32 2}
!141 = !{ptr @.str.57, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/net/wireless/realtek/rtw89/phy.c", i32 1628, i32 2}
!143 = !{ptr @.str.58, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/net/wireless/realtek/rtw89/phy.c", i32 1637, i32 2}
!145 = !{ptr @.str.59, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/net/wireless/realtek/rtw89/phy.c", i32 1639, i32 2}
!147 = !{ptr @.str.60, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/net/wireless/realtek/rtw89/phy.c", i32 1662, i32 2}
!149 = !{ptr @.str.61, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/net/wireless/realtek/rtw89/phy.c", i32 1664, i32 3}
!151 = !{ptr @.str.62, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/net/wireless/realtek/rtw89/phy.c", i32 1671, i32 4}
!153 = !{ptr @.str.63, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/net/wireless/realtek/rtw89/phy.c", i32 1677, i32 3}
!155 = !{ptr @.str.64, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/net/wireless/realtek/rtw89/phy.c", i32 1684, i32 4}
!157 = !{ptr @.str.65, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/net/wireless/realtek/rtw89/phy.c", i32 1690, i32 3}
!159 = !{ptr @.str.66, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/net/wireless/realtek/rtw89/phy.c", i32 1695, i32 3}
!161 = !{ptr @.str.67, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/net/wireless/realtek/rtw89/phy.c", i32 1710, i32 4}
!163 = !{ptr @.str.68, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/net/wireless/realtek/rtw89/phy.c", i32 1719, i32 3}
!165 = !{ptr @.str.69, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/net/wireless/realtek/rtw89/phy.c", i32 1721, i32 3}
!167 = !{ptr @.str.70, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/net/wireless/realtek/rtw89/phy.c", i32 1723, i32 3}
!169 = !{ptr @.str.71, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/net/wireless/realtek/rtw89/phy.c", i32 1726, i32 3}
!171 = !{ptr @.str.72, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/net/wireless/realtek/rtw89/phy.c", i32 1729, i32 4}
!173 = !{ptr @.str.73, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/net/wireless/realtek/rtw89/phy.c", i32 1734, i32 4}
!175 = !{ptr @.str.74, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/net/wireless/realtek/rtw89/phy.c", i32 1741, i32 2}
!177 = !{ptr @.str.75, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/net/wireless/realtek/rtw89/phy.c", i32 1598, i32 3}
!179 = !{ptr @.str.76, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/net/wireless/realtek/rtw89/phy.c", i32 1613, i32 2}
!181 = !{ptr @.str.77, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/net/wireless/realtek/rtw89/phy.c", i32 1534, i32 3}
!183 = !{ptr @.str.78, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/net/wireless/realtek/rtw89/phy.c", i32 1538, i32 2}
!185 = !{ptr @.str.79, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/net/wireless/realtek/rtw89/phy.c", i32 1544, i32 2}
!187 = !{ptr @.str.80, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/net/wireless/realtek/rtw89/phy.c", i32 1891, i32 3}
!189 = !{ptr @.str.81, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/net/wireless/realtek/rtw89/phy.c", i32 2274, i32 3}
!191 = !{ptr @.str.82, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/net/wireless/realtek/rtw89/phy.c", i32 2328, i32 2}
!193 = !{ptr @.str.83, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/net/wireless/realtek/rtw89/phy.c", i32 2330, i32 2}
!195 = !{ptr @.str.84, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/net/wireless/realtek/rtw89/phy.c", i32 2333, i32 2}
!197 = !{ptr @.str.85, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/net/wireless/realtek/rtw89/phy.c", i32 2336, i32 2}
!199 = !{ptr @.str.86, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/net/wireless/realtek/rtw89/phy.c", i32 2340, i32 2}
!201 = !{ptr @.str.87, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/net/wireless/realtek/rtw89/phy.c", i32 2342, i32 3}
!203 = !{ptr @.str.88, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/net/wireless/realtek/rtw89/phy.c", i32 2247, i32 2}
!205 = !{ptr @.str.89, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/net/wireless/realtek/rtw89/phy.c", i32 2250, i32 2}
!207 = !{ptr @.str.90, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/net/wireless/realtek/rtw89/phy.c", i32 2253, i32 2}
!209 = !{ptr @.str.91, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/net/wireless/realtek/rtw89/phy.c", i32 2256, i32 2}
!211 = !{ptr @.str.92, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/net/wireless/realtek/rtw89/phy.c", i32 2260, i32 2}
!213 = !{ptr @.str.93, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/net/wireless/realtek/rtw89/phy.c", i32 2047, i32 2}
!215 = distinct !{null, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/net/wireless/realtek/rtw89/phy.c", i32 2359, i32 3}
!217 = !{ptr @.str.95, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/net/wireless/realtek/rtw89/phy.c", i32 2375, i32 3}
!219 = distinct !{null, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/net/wireless/realtek/rtw89/phy.c", i32 2165, i32 3}
!221 = !{ptr @.str.97, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/net/wireless/realtek/rtw89/phy.c", i32 2170, i32 2}
!223 = !{ptr @.str.98, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/net/wireless/realtek/rtw89/phy.c", i32 2184, i32 2}
!225 = !{ptr @.str.99, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/net/wireless/realtek/rtw89/phy.c", i32 2038, i32 2}
!227 = !{ptr @.str.100, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/net/wireless/realtek/rtw89/phy.c", i32 2103, i32 3}
!229 = !{ptr @.str.101, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/net/wireless/realtek/rtw89/phy.c", i32 2133, i32 3}
!231 = distinct !{null, !232, !"dynamic_pd_threshold_max", i1 false, i1 false}
!232 = !{!"../drivers/net/wireless/realtek/rtw89/phy.c", i32 2653, i32 17}
!233 = !{ptr @.str.102, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/net/wireless/realtek/rtw89/phy.c", i32 2819, i32 2}
!235 = !{ptr @.str.103, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../drivers/net/wireless/realtek/rtw89/phy.c", i32 2874, i32 3}
!237 = !{ptr @.str.104, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/net/wireless/realtek/rtw89/phy.c", i32 2878, i32 3}
!239 = !{ptr @.str.105, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/net/wireless/realtek/rtw89/phy.c", i32 2839, i32 2}
!241 = distinct !{null, !242, !"sdagc_config", i1 false, i1 false}
!242 = !{!"../drivers/net/wireless/realtek/rtw89/phy.c", i32 2823, i32 35}
!243 = !{ptr @fa_th_2g, !244, !"fa_th_2g", i1 false, i1 false}
!244 = !{!"../drivers/net/wireless/realtek/rtw89/phy.c", i32 2606, i32 18}
!245 = !{ptr @fa_th_nolink, !246, !"fa_th_nolink", i1 false, i1 false}
!246 = !{!"../drivers/net/wireless/realtek/rtw89/phy.c", i32 2608, i32 18}
!247 = !{ptr @fa_th_5g, !248, !"fa_th_5g", i1 false, i1 false}
!248 = !{!"../drivers/net/wireless/realtek/rtw89/phy.c", i32 2607, i32 18}
!249 = !{ptr @igi_rssi_th, !250, !"igi_rssi_th", i1 false, i1 false}
!250 = !{!"../drivers/net/wireless/realtek/rtw89/phy.c", i32 2605, i32 17}
!251 = !{ptr @.str.106, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../drivers/net/wireless/realtek/rtw89/phy.c", i32 2777, i32 2}
!253 = !{ptr @.str.107, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../drivers/net/wireless/realtek/rtw89/phy.c", i32 2781, i32 2}
!255 = !{ptr @.str.108, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../drivers/net/wireless/realtek/rtw89/phy.c", i32 2619, i32 3}
!257 = !{ptr @.str.109, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../drivers/net/wireless/realtek/rtw89/phy.c", i32 2741, i32 2}
!259 = !{ptr @.str.110, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../drivers/net/wireless/realtek/rtw89/phy.c", i32 2728, i32 2}
!261 = distinct !{null, !262, !"ie_page_shift", i1 false, i1 false}
!262 = !{!"../drivers/net/wireless/realtek/rtw89/phy.c", i32 2437, i32 18}
!263 = !{ptr @.str.111, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../drivers/net/wireless/realtek/rtw89/phy.c", i32 2597, i32 2}
!265 = !{ptr @.str.112, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../drivers/net/wireless/realtek/rtw89/phy.c", i32 2550, i32 9}
!267 = !{ptr @.str.113, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../drivers/net/wireless/realtek/rtw89/phy.c", i32 2556, i32 9}
!269 = !{ptr @.str.114, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../drivers/net/wireless/realtek/rtw89/phy.c", i32 2562, i32 9}
!271 = !{ptr @.str.115, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../drivers/net/wireless/realtek/rtw89/phy.c", i32 2568, i32 9}
!273 = !{ptr @.str.116, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../drivers/net/wireless/realtek/rtw89/phy.c", i32 2581, i32 3}
!275 = !{ptr @.str.117, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../drivers/net/wireless/realtek/rtw89/phy.c", i32 1571, i32 2}
!277 = !{ptr @.str.118, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../drivers/net/wireless/realtek/rtw89/phy.c", i32 931, i32 3}
!279 = !{ptr @.str.119, !278, !"<string literal>", i1 false, i1 false}
!280 = !{ptr @rtw89_phy_init_rf_nctl._entry, !278, !"_entry", i1 false, i1 false}
!281 = !{ptr @rtw89_phy_init_rf_nctl._entry_ptr, !278, !"_entry_ptr", i1 false, i1 false}
!282 = !{i32 1, !"wchar_size", i32 2}
!283 = !{i32 1, !"min_enum_size", i32 4}
!284 = !{i32 8, !"branch-target-enforcement", i32 0}
!285 = !{i32 8, !"sign-return-address", i32 0}
!286 = !{i32 8, !"sign-return-address-all", i32 0}
!287 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!288 = !{i32 7, !"uwtable", i32 1}
!289 = !{i32 7, !"frame-pointer", i32 2}
!290 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!291 = !{i8 0, i8 2}
!292 = !{i16 0, i16 17}
!293 = !{i32 0, i32 33}
!294 = !{!"branch_weights", i32 2000, i32 1}
!295 = !{ptr @rtw89_phy_config_bb_reg, ptr @rtw89_phy_config_rf_reg}
