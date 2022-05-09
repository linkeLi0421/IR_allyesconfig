; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/realtek/rtw89/pci.c_pt.bc'
source_filename = "../drivers/net/wireless/realtek/rtw89/pci.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+rtw89_pm_ops\22, \22a\22\09"
module asm "\09.weak\09__crc_rtw89_pm_ops\09\09\09\09"
module asm "\09.long\09__crc_rtw89_pm_ops\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rtw89_pm_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22rtw89_pm_ops\22\09\09\09\09\09"
module asm "__kstrtabns_rtw89_pm_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.97 }
%union.anon.97 = type { ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pci_driver = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, %struct.pci_dynids }
%struct.list_head = type { ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_dynids = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ieee80211_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rtw89_hci_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rtw89_chip_info = type { i32, ptr, ptr, i32, i16, i8, ptr, ptr, [2 x i32], i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, ptr, ptr, ptr, [4 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i32, i32, i8, i8, i8, i8, ptr, ptr, i8, i8, ptr, i8, ptr, i8, ptr, i8 }
%struct.rtw89_pci_bd_ram = type { i8, i8, i8 }
%struct.atomic_t = type { i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
%struct.ieee80211_hw = type { %struct.ieee80211_conf, ptr, ptr, ptr, [2 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i8, i16, %struct.anon.129, i64, i8, i8, i8, ptr, i8, i8, i8, i32 }
%struct.ieee80211_conf = type { i32, i32, i32, i16, i8, i8, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.anon.129 = type { i32, i16 }
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
%struct.rtw89_sar_info = type { i32, %union.anon.133 }
%union.anon.133 = type { %struct.rtw89_sar_cfg_common }
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
%struct.possible_net_t = type { ptr }
%union.anon.127 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.128, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.128 = type { ptr }
%struct.wiphy = type { %struct.mutex, [6 x i8], [6 x i8], ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i32, i32, [8 x i8], i32, i32, i32, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i8, i8, i32, i32, i8, [32 x i8], i32, ptr, ptr, i16, i8, i32, i32, i32, ptr, ptr, i8, ptr, i32, ptr, [6 x ptr], ptr, ptr, %struct.device, i8, ptr, ptr, ptr, %struct.list_head, %struct.possible_net_t, ptr, ptr, ptr, ptr, i32, i32, i16, i8, i32, i8, i32, i32, i32, i32, i8, ptr, %struct.anon.124, i8, ptr, ptr, i8, i8, [18 x i8], [0 x i8] }
%struct.anon.124 = type { i64, i64, i8 }
%struct.rtw89_pci_tx_ring = type { %struct.rtw89_pci_tx_wd_ring, %struct.rtw89_pci_dma_ring, %struct.list_head, i8, i8, i16, i64, i64, i64, i64, i64 }
%struct.rtw89_pci_tx_wd_ring = type { ptr, i32, [512 x %struct.rtw89_pci_tx_wd], %struct.list_head, i32, i32, i32 }
%struct.rtw89_pci_tx_wd = type { %struct.list_head, %struct.sk_buff_head, ptr, i32, i32, i32 }
%struct.rtw89_pci_dma_ring = type { ptr, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.rtw89_pci_rx_ring = type { %struct.rtw89_pci_dma_ring, [256 x ptr], i32, ptr, %struct.rtw89_rx_desc_info }
%struct.rtw89_rx_desc_info = type { i16, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, i16, i8 }
%struct.sk_buff = type { %union.anon.43, %union.anon.46, %union.anon.47, [48 x i8], %union.anon.48, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.50, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.43 = type { %struct.anon.44 }
%struct.anon.44 = type { ptr, ptr, %union.anon.45 }
%union.anon.45 = type { ptr }
%union.anon.46 = type { ptr }
%union.anon.47 = type { i64 }
%union.anon.48 = type { %struct.anon.49 }
%struct.anon.49 = type { i32, ptr }
%union.anon.50 = type { %struct.anon.51 }
%struct.anon.51 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.52, i32, i32, i32, i16, i16, %union.anon.54, i32, %union.anon.55, %union.anon.56, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.52 = type { i32 }
%union.anon.54 = type { i32 }
%union.anon.55 = type { i32 }
%union.anon.56 = type { i16 }
%struct.page = type { i32, %union.anon.2, %union.anon.96, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.96 = type { %struct.atomic_t }
%struct.rtw89_pci_rx_bd_32 = type { i16, i16, i32 }
%struct.rtw89_pci = type { ptr, %struct.spinlock, %struct.spinlock, i8, [13 x %struct.rtw89_pci_tx_ring], [2 x %struct.rtw89_pci_rx_ring], %struct.sk_buff_head, %struct.sk_buff_head, i32, [2 x i32], ptr }
%struct.rtw89_core_tx_request = type { i32, ptr, ptr, ptr, %struct.rtw89_tx_desc_info }
%struct.rtw89_tx_desc_info = type { i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i8, i16, i8 }
%struct.rtw89_pci_tx_bd_32 = type { i16, i16, i32 }
%struct.rtw89_pci_tx_wp_info = type { i16, i16, i16, i16 }
%struct.rtw89_pci_tx_addr_info_32 = type { i16, i16, i32 }

@__param_str_disable_clkreq = internal constant [25 x i8] c"rtw89_pci.disable_clkreq\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@rtw89_pci_disable_clkreq = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_disable_clkreq = internal constant %struct.kernel_param { ptr @__param_str_disable_clkreq, ptr null, ptr @param_ops_bool, i16 420, i8 -1, i8 0, %union.anon.97 { ptr @rtw89_pci_disable_clkreq } }, section "__param", align 4
@__UNIQUE_ID_disable_clkreqtype395 = internal constant [39 x i8] c"rtw89_pci.parmtype=disable_clkreq:bool\00", section ".modinfo", align 1
@__param_str_disable_aspm_l1 = internal constant [26 x i8] c"rtw89_pci.disable_aspm_l1\00", align 1
@rtw89_pci_disable_aspm_l1 = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_disable_aspm_l1 = internal constant %struct.kernel_param { ptr @__param_str_disable_aspm_l1, ptr null, ptr @param_ops_bool, i16 420, i8 -1, i8 0, %union.anon.97 { ptr @rtw89_pci_disable_aspm_l1 } }, section "__param", align 4
@__UNIQUE_ID_disable_aspm_l1type396 = internal constant [40 x i8] c"rtw89_pci.parmtype=disable_aspm_l1:bool\00", section ".modinfo", align 1
@__param_str_disable_aspm_l1ss = internal constant [28 x i8] c"rtw89_pci.disable_aspm_l1ss\00", align 1
@rtw89_pci_disable_l1ss = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_disable_aspm_l1ss = internal constant %struct.kernel_param { ptr @__param_str_disable_aspm_l1ss, ptr null, ptr @param_ops_bool, i16 420, i8 -1, i8 0, %union.anon.97 { ptr @rtw89_pci_disable_l1ss } }, section "__param", align 4
@__UNIQUE_ID_disable_aspm_l1sstype397 = internal constant [42 x i8] c"rtw89_pci.parmtype=disable_aspm_l1ss:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_disable_clkreq398 = internal constant [66 x i8] c"rtw89_pci.parm=disable_clkreq:Set Y to disable PCI clkreq support\00", section ".modinfo", align 1
@__UNIQUE_ID_disable_aspm_l1399 = internal constant [68 x i8] c"rtw89_pci.parm=disable_aspm_l1:Set Y to disable PCI ASPM L1 support\00", section ".modinfo", align 1
@__UNIQUE_ID_disable_aspm_l1ss400 = internal constant [67 x i8] c"rtw89_pci.parm=disable_aspm_l1ss:Set Y to disable PCI L1SS support\00", section ".modinfo", align 1
@rtw89_pm_ops = dso_local constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @rtw89_pci_suspend, ptr @rtw89_pci_resume, ptr @rtw89_pci_suspend, ptr @rtw89_pci_resume, ptr @rtw89_pci_suspend, ptr @rtw89_pci_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@__kstrtab_rtw89_pm_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_rtw89_pm_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_rtw89_pm_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rtw89_pm_ops to i32), ptr @__kstrtab_rtw89_pm_ops, ptr @__kstrtabns_rtw89_pm_ops }, section "___ksymtab+rtw89_pm_ops", align 4
@__initcall__kmod_rtw89_pci__479_3056_rtw89_pci_driver_init6 = internal global ptr @rtw89_pci_driver_init, section ".initcall6.init", align 4
@rtw89_pci_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str.23, ptr @rtw89_pci_id_table, ptr @rtw89_pci_probe, ptr @rtw89_pci_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rtw89_pm_ops, ptr null, ptr null }, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_rtw89_pci_driver_exit = internal global ptr @rtw89_pci_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author480 = internal constant [37 x i8] c"rtw89_pci.author=Realtek Corporation\00", section ".modinfo", align 1
@__UNIQUE_ID_description481 = internal constant [59 x i8] c"rtw89_pci.description=Realtek 802.11ax wireless PCI driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file482 = internal constant [60 x i8] c"rtw89_pci.file=drivers/net/wireless/realtek/rtw89/rtw89_pci\00", section ".modinfo", align 1
@__UNIQUE_ID_license483 = internal constant [31 x i8] c"rtw89_pci.license=Dual BSD/GPL\00", section ".modinfo", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/net/wireless/realtek/rtw89/pci.c\00", [55 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"failed to read DBI register, addr=0x%04x\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"failed to write to DBI register, addr=0x%04x\0A\00", [50 x i8] zeroinitializer }, align 32
@rtw89_pci_link_cfg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str, i32 2644, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to read PCI cap, ret=%d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rtw89_pci_link_cfg\00", [45 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rtw89_pci_link_cfg._entry_ptr = internal global ptr @rtw89_pci_link_cfg._entry, section ".printk_index", align 4
@rtw89_pci_clkreq_set._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str, i32 2558, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to set CLKREQ Delay\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"rtw89_pci_clkreq_set\00", [43 x i8] zeroinitializer }, align 32
@rtw89_pci_clkreq_set._entry_ptr = internal global ptr @rtw89_pci_clkreq_set._entry, section ".printk_index", align 4
@rtw89_pci_clkreq_set._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.8, ptr @.str, i32 2568, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to %s CLKREQ_L1, ret=%d\00", [33 x i8] zeroinitializer }, align 32
@rtw89_pci_clkreq_set._entry_ptr.11 = internal global ptr @rtw89_pci_clkreq_set._entry.9, section ".printk_index", align 4
@.str.12 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"set\00", [28 x i8] zeroinitializer }, align 32
@rtw89_pci_aspm_set._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str, i32 2581, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to read ASPM Delay\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rtw89_pci_aspm_set\00", [45 x i8] zeroinitializer }, align 32
@rtw89_pci_aspm_set._entry_ptr = internal global ptr @rtw89_pci_aspm_set._entry, section ".printk_index", align 4
@rtw89_pci_aspm_set._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str, i32 2589, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@rtw89_pci_aspm_set._entry_ptr.17 = internal global ptr @rtw89_pci_aspm_set._entry.16, section ".printk_index", align 4
@rtw89_pci_aspm_set._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.15, ptr @.str, i32 2599, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to %s ASPM L1, ret=%d\00", [35 x i8] zeroinitializer }, align 32
@rtw89_pci_aspm_set._entry_ptr.20 = internal global ptr @rtw89_pci_aspm_set._entry.18, section ".printk_index", align 4
@rtw89_pci_l1ss_set._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str, i32 2667, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to %s L1SS, ret=%d\00", [38 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rtw89_pci_l1ss_set\00", [45 x i8] zeroinitializer }, align 32
@rtw89_pci_l1ss_set._entry_ptr = internal global ptr @rtw89_pci_l1ss_set._entry, section ".printk_index", align 4
@.str.23 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"rtw89_pci\00", [22 x i8] zeroinitializer }, align 32
@rtw89_pci_id_table = internal constant { [3 x %struct.pci_device_id], [32 x i8] } { [3 x %struct.pci_device_id] [%struct.pci_device_id { i32 4332, i32 34898, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4332, i32 43098, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@rtw89_ops = external dso_local constant %struct.ieee80211_ops, align 4
@rtw89_pci_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str, i32 2946, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"failed to allocate hw\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rtw89_pci_probe\00", [16 x i8] zeroinitializer }, align 32
@rtw89_pci_probe._entry_ptr = internal global ptr @rtw89_pci_probe._entry, section ".printk_index", align 4
@rtw89_pci_ops = internal constant { %struct.rtw89_hci_ops, [48 x i8] } { %struct.rtw89_hci_ops { ptr @rtw89_pci_ops_tx_write, ptr @rtw89_pci_ops_tx_kick_off, ptr @rtw89_pci_ops_flush_queues, ptr @rtw89_pci_ops_reset, ptr @rtw89_pci_ops_start, ptr @rtw89_pci_ops_stop, ptr @rtw89_pci_recalc_int_mit, ptr @rtw89_pci_ops_read8, ptr @rtw89_pci_ops_read16, ptr @rtw89_pci_ops_read32, ptr @rtw89_pci_ops_write8, ptr @rtw89_pci_ops_write16, ptr @rtw89_pci_ops_write32, ptr @rtw89_pci_ops_mac_pre_init, ptr @rtw89_pci_ops_mac_post_init, ptr @rtw89_pci_ops_deinit, ptr @rtw89_pci_check_and_reclaim_tx_resource, ptr @rtw89_pci_ops_mac_lv1_recovery, ptr @rtw89_pci_ops_dump_err_status, ptr @rtw89_pci_napi_poll }, [48 x i8] zeroinitializer }, align 32
@rtw8852a_chip_info = external dso_local constant %struct.rtw89_chip_info, align 4
@rtw89_pci_probe._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.25, ptr @.str, i32 2970, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to initialise core\0A\00", [37 x i8] zeroinitializer }, align 32
@rtw89_pci_probe._entry_ptr.28 = internal global ptr @rtw89_pci_probe._entry.26, section ".printk_index", align 4
@rtw89_pci_probe._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.25, ptr @.str, i32 2976, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to claim pci device\0A\00", [36 x i8] zeroinitializer }, align 32
@rtw89_pci_probe._entry_ptr.31 = internal global ptr @rtw89_pci_probe._entry.29, section ".printk_index", align 4
@rtw89_pci_probe._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.25, ptr @.str, i32 2982, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to setup pci resource\0A\00", [34 x i8] zeroinitializer }, align 32
@rtw89_pci_probe._entry_ptr.34 = internal global ptr @rtw89_pci_probe._entry.32, section ".printk_index", align 4
@rtw89_pci_probe._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.25, ptr @.str, i32 2988, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to setup chip information\0A\00", [62 x i8] zeroinitializer }, align 32
@rtw89_pci_probe._entry_ptr.37 = internal global ptr @rtw89_pci_probe._entry.35, section ".printk_index", align 4
@rtw89_pci_probe._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.25, ptr @.str, i32 2997, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed to register core\0A\00", [39 x i8] zeroinitializer }, align 32
@rtw89_pci_probe._entry_ptr.40 = internal global ptr @rtw89_pci_probe._entry.38, section ".printk_index", align 4
@rtw89_pci_probe._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.25, ptr @.str, i32 3005, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to request pci irq\0A\00", [37 x i8] zeroinitializer }, align 32
@rtw89_pci_probe._entry_ptr.43 = internal global ptr @rtw89_pci_probe._entry.41, section ".printk_index", align 4
@rtw89_pci_ops_tx_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str, i32 1103, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"failed to TX Queue %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"rtw89_pci_ops_tx_write\00", [41 x i8] zeroinitializer }, align 32
@rtw89_pci_ops_tx_write._entry_ptr = internal global ptr @rtw89_pci_ops_tx_write._entry, section ".printk_index", align 4
@rtw89_pci_tx_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.47, ptr @.str, i32 1067, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"only fw cmd uses dma channel 12\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rtw89_pci_tx_write\00", [45 x i8] zeroinitializer }, align 32
@rtw89_pci_tx_write._entry_ptr = internal global ptr @rtw89_pci_tx_write._entry, section ".printk_index", align 4
@rtw89_pci_tx_write._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.47, ptr @.str, i32 1076, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"no available TXBD\0A\00", [45 x i8] zeroinitializer }, align 32
@rtw89_pci_tx_write._entry_ptr.50 = internal global ptr @rtw89_pci_tx_write._entry.48, section ".printk_index", align 4
@rtw89_pci_tx_write._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.47, ptr @.str, i32 1084, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"failed to submit TXBD\0A\00", [41 x i8] zeroinitializer }, align 32
@rtw89_pci_tx_write._entry_ptr.53 = internal global ptr @rtw89_pci_tx_write._entry.51, section ".printk_index", align 4
@rtw89_pci_txbd_submit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.55, ptr @.str, i32 1026, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"no available TXWD\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rtw89_pci_txbd_submit\00", [42 x i8] zeroinitializer }, align 32
@rtw89_pci_txbd_submit._entry_ptr = internal global ptr @rtw89_pci_txbd_submit._entry, section ".printk_index", align 4
@rtw89_pci_txbd_submit._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.55, ptr @.str, i32 1033, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to submit TXWD %d\0A\00", [38 x i8] zeroinitializer }, align 32
@rtw89_pci_txbd_submit._entry_ptr.58 = internal global ptr @rtw89_pci_txbd_submit._entry.56, section ".printk_index", align 4
@rtw89_pci_fwcmd_submit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.60, ptr @.str, i32 994, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to map fwcmd dma data\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"rtw89_pci_fwcmd_submit\00", [41 x i8] zeroinitializer }, align 32
@rtw89_pci_fwcmd_submit._entry_ptr = internal global ptr @rtw89_pci_fwcmd_submit._entry, section ".printk_index", align 4
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.61 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@rtw89_pci_txwd_submit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.64, ptr @.str, i32 940, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to map skb dma data\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rtw89_pci_txwd_submit\00", [42 x i8] zeroinitializer }, align 32
@rtw89_pci_txwd_submit._entry_ptr = internal global ptr @rtw89_pci_txwd_submit._entry, section ".printk_index", align 4
@__pci_flush_txch._entry = internal constant %struct.pi_entry { ptr @.str.65, ptr @.str.66, ptr @.str, i32 891, ptr @.str.67, ptr @.str.6 }, align 1
@.str.65 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"timed out to flush pci txch: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"__pci_flush_txch\00", [47 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@__pci_flush_txch._entry_ptr = internal global ptr @__pci_flush_txch._entry, section ".printk_index", align 4
@bd_ram_table = internal constant { [13 x %struct.rtw89_pci_bd_ram], [57 x i8] } { [13 x %struct.rtw89_pci_bd_ram] [%struct.rtw89_pci_bd_ram { i8 0, i8 5, i8 2 }, %struct.rtw89_pci_bd_ram { i8 5, i8 5, i8 2 }, %struct.rtw89_pci_bd_ram { i8 10, i8 5, i8 2 }, %struct.rtw89_pci_bd_ram { i8 15, i8 5, i8 2 }, %struct.rtw89_pci_bd_ram { i8 20, i8 5, i8 2 }, %struct.rtw89_pci_bd_ram { i8 25, i8 5, i8 2 }, %struct.rtw89_pci_bd_ram { i8 30, i8 5, i8 2 }, %struct.rtw89_pci_bd_ram { i8 35, i8 5, i8 2 }, %struct.rtw89_pci_bd_ram { i8 40, i8 5, i8 1 }, %struct.rtw89_pci_bd_ram { i8 45, i8 5, i8 1 }, %struct.rtw89_pci_bd_ram { i8 50, i8 5, i8 1 }, %struct.rtw89_pci_bd_ram { i8 55, i8 5, i8 1 }, %struct.rtw89_pci_bd_ram { i8 60, i8 4, i8 1 }], [57 x i8] zeroinitializer }, align 32
@rtw89_pci_release_fwcmd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.69, ptr @.str, i32 85, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to pre-release fwcmd\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"rtw89_pci_release_fwcmd\00", [40 x i8] zeroinitializer }, align 32
@rtw89_pci_release_fwcmd._entry_ptr = internal global ptr @rtw89_pci_release_fwcmd._entry, section ".printk_index", align 4
@rtw89_pci_release_fwcmd._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.69, ptr @.str, i32 98, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed to release fwcmd\0A\00", [39 x i8] zeroinitializer }, align 32
@rtw89_pci_release_fwcmd._entry_ptr.72 = internal global ptr @rtw89_pci_release_fwcmd._entry.70, section ".printk_index", align 4
@rtw89_pci_release_txwd_skb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.74, ptr @.str, i32 416, ptr @.str.75, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"queue %d txwd %d is not idle\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"rtw89_pci_release_txwd_skb\00", [37 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@rtw89_pci_release_txwd_skb._entry_ptr = internal global ptr @rtw89_pci_release_txwd_skb._entry, section ".printk_index", align 4
@rtw89_pci_release_txwd_skb._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.74, ptr @.str, i32 423, ptr @.str.75, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"empty pending queue %d page %d\0A\00", [32 x i8] zeroinitializer }, align 32
@rtw89_pci_release_txwd_skb._entry_ptr.78 = internal global ptr @rtw89_pci_release_txwd_skb._entry.76, section ".printk_index", align 4
@.str.79 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to TX of status %x\0A\00", [37 x i8] zeroinitializer }, align 32
@rtw89_pci_tx_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.81, ptr @.str, i32 363, ptr @.str.75, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"invalid TX status %x\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rtw89_pci_tx_status\00", [44 x i8] zeroinitializer }, align 32
@rtw89_pci_tx_status._entry_ptr = internal global ptr @rtw89_pci_tx_status._entry, section ".printk_index", align 4
@rtw89_pci_ops_read32_cmac._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.83, ptr @.str, i32 1241, ptr @.str.75, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"addr %#x = %#x\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"rtw89_pci_ops_read32_cmac\00", [38 x i8] zeroinitializer }, align 32
@rtw89_pci_ops_read32_cmac._entry_ptr = internal global ptr @rtw89_pci_ops_read32_cmac._entry, section ".printk_index", align 4
@rtw89_pci_ops_mac_pre_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.85, ptr @.str, i32 1815, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"[ERR] pcie l2 rxen lat %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"rtw89_pci_ops_mac_pre_init\00", [37 x i8] zeroinitializer }, align 32
@rtw89_pci_ops_mac_pre_init._entry_ptr = internal global ptr @rtw89_pci_ops_mac_pre_init._entry, section ".printk_index", align 4
@rtw89_pci_ops_mac_pre_init._entry.86 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.85, ptr @.str, i32 1824, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"[ERR] pcie autok fail %d\0A\00", [38 x i8] zeroinitializer }, align 32
@rtw89_pci_ops_mac_pre_init._entry_ptr.88 = internal global ptr @rtw89_pci_ops_mac_pre_init._entry.86, section ".printk_index", align 4
@rtw89_pci_ops_mac_pre_init._entry.89 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.85, ptr @.str, i32 1852, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"failed to poll io busy\0A\00", [40 x i8] zeroinitializer }, align 32
@rtw89_pci_ops_mac_pre_init._entry_ptr.91 = internal global ptr @rtw89_pci_ops_mac_pre_init._entry.89, section ".printk_index", align 4
@rtw89_pci_ops_mac_pre_init._entry.92 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.85, ptr @.str, i32 1878, ptr @.str.75, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"reset bdram busy\0A\00", [46 x i8] zeroinitializer }, align 32
@rtw89_pci_ops_mac_pre_init._entry_ptr.94 = internal global ptr @rtw89_pci_ops_mac_pre_init._entry.92, section ".printk_index", align 4
@rtw89_read16_mdio._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.95, ptr @.str.96, ptr @.str, i32 1363, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"[ERR]MDIO R16 0x%X fail ret=%d!\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rtw89_read16_mdio\00", [46 x i8] zeroinitializer }, align 32
@rtw89_read16_mdio._entry_ptr = internal global ptr @rtw89_read16_mdio._entry, section ".printk_index", align 4
@rtw89_pci_check_mdio._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.97, ptr @.str.98, ptr @.str, i32 1346, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"[ERR]Error Speed %d!\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"rtw89_pci_check_mdio\00", [43 x i8] zeroinitializer }, align 32
@rtw89_pci_check_mdio._entry_ptr = internal global ptr @rtw89_pci_check_mdio._entry, section ".printk_index", align 4
@rtw89_write16_mdio._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.99, ptr @.str.100, ptr @.str, i32 1379, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"[ERR]MDIO W16 0x%X = %x fail ret=%d!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rtw89_write16_mdio\00", [45 x i8] zeroinitializer }, align 32
@rtw89_write16_mdio._entry_ptr = internal global ptr @rtw89_write16_mdio._entry, section ".printk_index", align 4
@rtw89_pci_auto_refclk_cal._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.101, ptr @.str.102, ptr @.str, i32 1547, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"[ERR]dbi_r8_pcie %X\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"rtw89_pci_auto_refclk_cal\00", [38 x i8] zeroinitializer }, align 32
@rtw89_pci_auto_refclk_cal._entry_ptr = internal global ptr @rtw89_pci_auto_refclk_cal._entry, section ".printk_index", align 4
@rtw89_pci_auto_refclk_cal._entry.103 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.104, ptr @.str.102, ptr @.str, i32 1556, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"[ERR]PCIe PHY rate %#x not support\0A\00", [60 x i8] zeroinitializer }, align 32
@rtw89_pci_auto_refclk_cal._entry_ptr.105 = internal global ptr @rtw89_pci_auto_refclk_cal._entry.103, section ".printk_index", align 4
@rtw89_pci_auto_refclk_cal._entry.106 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.101, ptr @.str.102, ptr @.str, i32 1562, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@rtw89_pci_auto_refclk_cal._entry_ptr.107 = internal global ptr @rtw89_pci_auto_refclk_cal._entry.106, section ".printk_index", align 4
@rtw89_pci_auto_refclk_cal._entry.108 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.109, ptr @.str.102, ptr @.str, i32 1570, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"[ERR]dbi_w8_pcie %X\0A\00", [43 x i8] zeroinitializer }, align 32
@rtw89_pci_auto_refclk_cal._entry_ptr.110 = internal global ptr @rtw89_pci_auto_refclk_cal._entry.108, section ".printk_index", align 4
@rtw89_pci_auto_refclk_cal._entry.111 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.112, ptr @.str.102, ptr @.str, i32 1578, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"[ERR]mdio_r16_pcie %X\0A\00", [41 x i8] zeroinitializer }, align 32
@rtw89_pci_auto_refclk_cal._entry_ptr.113 = internal global ptr @rtw89_pci_auto_refclk_cal._entry.111, section ".printk_index", align 4
@rtw89_pci_auto_refclk_cal._entry.114 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.115, ptr @.str.102, ptr @.str, i32 1586, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"[ERR]mdio_w16_pcie %X\0A\00", [41 x i8] zeroinitializer }, align 32
@rtw89_pci_auto_refclk_cal._entry_ptr.116 = internal global ptr @rtw89_pci_auto_refclk_cal._entry.114, section ".printk_index", align 4
@rtw89_pci_auto_refclk_cal._entry.117 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.115, ptr @.str.102, ptr @.str, i32 1596, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@rtw89_pci_auto_refclk_cal._entry_ptr.118 = internal global ptr @rtw89_pci_auto_refclk_cal._entry.117, section ".printk_index", align 4
@rtw89_pci_auto_refclk_cal._entry.119 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.120, ptr @.str.102, ptr @.str, i32 1603, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"[ERR]1st get target fail %d\0A\00", [35 x i8] zeroinitializer }, align 32
@rtw89_pci_auto_refclk_cal._entry_ptr.121 = internal global ptr @rtw89_pci_auto_refclk_cal._entry.119, section ".printk_index", align 4
@rtw89_pci_auto_refclk_cal._entry.122 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.123, ptr @.str.102, ptr @.str, i32 1622, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"[ERR]cal mgn is 0,tar = %d\0A\00", [36 x i8] zeroinitializer }, align 32
@rtw89_pci_auto_refclk_cal._entry_ptr.124 = internal global ptr @rtw89_pci_auto_refclk_cal._entry.122, section ".printk_index", align 4
@rtw89_pci_auto_refclk_cal._entry.125 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.112, ptr @.str.102, ptr @.str, i32 1630, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@rtw89_pci_auto_refclk_cal._entry_ptr.126 = internal global ptr @rtw89_pci_auto_refclk_cal._entry.125, section ".printk_index", align 4
@rtw89_pci_auto_refclk_cal._entry.127 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.115, ptr @.str.102, ptr @.str, i32 1638, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@rtw89_pci_auto_refclk_cal._entry_ptr.128 = internal global ptr @rtw89_pci_auto_refclk_cal._entry.127, section ".printk_index", align 4
@rtw89_pci_auto_refclk_cal._entry.129 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.130, ptr @.str.102, ptr @.str, i32 1644, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"[ERR]2nd get target fail %d\0A\00", [35 x i8] zeroinitializer }, align 32
@rtw89_pci_auto_refclk_cal._entry_ptr.131 = internal global ptr @rtw89_pci_auto_refclk_cal._entry.129, section ".printk_index", align 4
@rtw89_pci_auto_refclk_cal._entry.133 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.115, ptr @.str.102, ptr @.str, i32 1653, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@rtw89_pci_auto_refclk_cal._entry_ptr.134 = internal global ptr @rtw89_pci_auto_refclk_cal._entry.133, section ".printk_index", align 4
@rtw89_pci_auto_refclk_cal._entry.135 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.115, ptr @.str.102, ptr @.str, i32 1660, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@rtw89_pci_auto_refclk_cal._entry_ptr.136 = internal global ptr @rtw89_pci_auto_refclk_cal._entry.135, section ".printk_index", align 4
@rtw89_pci_auto_refclk_cal._entry.137 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.109, ptr @.str.102, ptr @.str, i32 1672, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@rtw89_pci_auto_refclk_cal._entry_ptr.138 = internal global ptr @rtw89_pci_auto_refclk_cal._entry.137, section ".printk_index", align 4
@__get_target._entry = internal constant %struct.pi_entry { ptr @.str.139, ptr @.str.140, ptr @.str, i32 1524, ptr @.str.5, ptr @.str.6 }, align 1
@.str.139 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"[ERR]Get target failed.\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"__get_target\00", [19 x i8] zeroinitializer }, align 32
@__get_target._entry_ptr = internal global ptr @__get_target._entry, section ".printk_index", align 4
@rtw89_pci_ops_mac_post_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.143, ptr @.str.144, ptr @.str, i32 1930, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"pci ltr set fail\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"rtw89_pci_ops_mac_post_init\00", [36 x i8] zeroinitializer }, align 32
@rtw89_pci_ops_mac_post_init._entry_ptr = internal global ptr @rtw89_pci_ops_mac_post_init._entry, section ".printk_index", align 4
@__rtw89_pci_check_and_reclaim_tx_resource._entry = internal constant %struct.pi_entry { ptr @.str.145, ptr @.str.146, ptr @.str, i32 818, ptr @.str.75, ptr @.str.6 }, align 1
@.str.145 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"still no tx resource after reclaim\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"__rtw89_pci_check_and_reclaim_tx_resource\00", [54 x i8] zeroinitializer }, align 32
@__rtw89_pci_check_and_reclaim_tx_resource._entry_ptr = internal global ptr @__rtw89_pci_check_and_reclaim_tx_resource._entry, section ".printk_index", align 4
@rtw89_pci_release_tx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.147, ptr @.str.148, ptr @.str, i32 548, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to release TX skbs\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"rtw89_pci_release_tx\00", [43 x i8] zeroinitializer }, align 32
@rtw89_pci_release_tx._entry_ptr = internal global ptr @rtw89_pci_release_tx._entry, section ".printk_index", align 4
@rtw89_pci_release_tx_skbs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.149, ptr @.str.150, ptr @.str, i32 506, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"failed to update %d RXBD info: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"rtw89_pci_release_tx_skbs\00", [38 x i8] zeroinitializer }, align 32
@rtw89_pci_release_tx_skbs._entry_ptr = internal global ptr @rtw89_pci_release_tx_skbs._entry, section ".printk_index", align 4
@rtw89_pci_release_tx_skbs._entry.151 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.152, ptr @.str.150, ptr @.str, i32 512, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"cannot process RP frame not set FS/LS\0A\00", [57 x i8] zeroinitializer }, align 32
@rtw89_pci_release_tx_skbs._entry_ptr.153 = internal global ptr @rtw89_pci_release_tx_skbs._entry.151, section ".printk_index", align 4
@rtw89_pci_release_rpp._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.154, ptr @.str.155, ptr @.str, i32 456, ptr @.str.75, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"should no fwcmd release report\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rtw89_pci_release_rpp\00", [42 x i8] zeroinitializer }, align 32
@rtw89_pci_release_rpp._entry_ptr = internal global ptr @rtw89_pci_release_rpp._entry, section ".printk_index", align 4
@rtw89_core_get_ch_dma._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.156, ptr @.str.157, ptr @.str.158, i32 283, ptr @.str.75, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Cannot map qsel to dma: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rtw89_core_get_ch_dma\00", [42 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"drivers/net/wireless/realtek/rtw89/txrx.h\00", [54 x i8] zeroinitializer }, align 32
@rtw89_core_get_ch_dma._entry_ptr = internal global ptr @rtw89_core_get_ch_dma._entry, section ".printk_index", align 4
@rtw89_pci_reclaim_txbd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.159, ptr @.str.160, ptr @.str, i32 380, ptr @.str.75, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"No busy txwd pages available\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"rtw89_pci_reclaim_txbd\00", [41 x i8] zeroinitializer }, align 32
@rtw89_pci_reclaim_txbd._entry_ptr = internal global ptr @rtw89_pci_reclaim_txbd._entry, section ".printk_index", align 4
@rtw89_pci_ops_mac_lv1_recovery._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.161, ptr @.str.162, ptr @.str, i32 2806, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"lv1 rcvy pci stop dma fail\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"rtw89_pci_ops_mac_lv1_recovery\00", [33 x i8] zeroinitializer }, align 32
@rtw89_pci_ops_mac_lv1_recovery._entry_ptr = internal global ptr @rtw89_pci_ops_mac_lv1_recovery._entry, section ".printk_index", align 4
@rtw89_pci_ops_mac_lv1_recovery._entry.163 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.164, ptr @.str.162, ptr @.str, i32 2813, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"lv1 rcvy pci start dma fail\0A\00", [35 x i8] zeroinitializer }, align 32
@rtw89_pci_ops_mac_lv1_recovery._entry_ptr.165 = internal global ptr @rtw89_pci_ops_mac_lv1_recovery._entry.163, section ".printk_index", align 4
@.str.166 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"[PCIe] poll_io_idle fail, before 0x%08x: 0x%08x\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"[PCIe] poll_io_idle fail, after 0x%08x: 0x%08x\0A\00", [48 x i8] zeroinitializer }, align 32
@rtw89_pci_poll_io_idle._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.168, ptr @.str.169, ptr @.str, i32 2719, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"pci dmach busy1 0x%X\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"rtw89_pci_poll_io_idle\00", [41 x i8] zeroinitializer }, align 32
@rtw89_pci_poll_io_idle._entry_ptr = internal global ptr @rtw89_pci_poll_io_idle._entry, section ".printk_index", align 4
@rtw89_pci_ops_dump_err_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.170, ptr @.str.171, ptr @.str, i32 2826, ptr @.str.67, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"R_AX_RPQ_RXBD_IDX =0x%08x\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"rtw89_pci_ops_dump_err_status\00", [34 x i8] zeroinitializer }, align 32
@rtw89_pci_ops_dump_err_status._entry_ptr = internal global ptr @rtw89_pci_ops_dump_err_status._entry, section ".printk_index", align 4
@rtw89_pci_ops_dump_err_status._entry.172 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.173, ptr @.str.171, ptr @.str, i32 2828, ptr @.str.67, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"R_AX_DBG_ERR_FLAG=0x%08x\0A\00", [38 x i8] zeroinitializer }, align 32
@rtw89_pci_ops_dump_err_status._entry_ptr.174 = internal global ptr @rtw89_pci_ops_dump_err_status._entry.172, section ".printk_index", align 4
@rtw89_pci_ops_dump_err_status._entry.175 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.176, ptr @.str.171, ptr @.str, i32 2830, ptr @.str.67, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"R_AX_LBC_WATCHDOG=0x%08x\0A\00", [38 x i8] zeroinitializer }, align 32
@rtw89_pci_ops_dump_err_status._entry_ptr.177 = internal global ptr @rtw89_pci_ops_dump_err_status._entry.175, section ".printk_index", align 4
@rtw89_pci_rxbd_deliver._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.178, ptr @.str.179, ptr @.str, i32 297, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to deliver RXBD skb\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"rtw89_pci_rxbd_deliver\00", [41 x i8] zeroinitializer }, align 32
@rtw89_pci_rxbd_deliver._entry_ptr = internal global ptr @rtw89_pci_rxbd_deliver._entry, section ".printk_index", align 4
@rtw89_pci_rxbd_deliver_skbs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.149, ptr @.str.180, ptr @.str, i32 221, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"rtw89_pci_rxbd_deliver_skbs\00", [36 x i8] zeroinitializer }, align 32
@rtw89_pci_rxbd_deliver_skbs._entry_ptr = internal global ptr @rtw89_pci_rxbd_deliver_skbs._entry, section ".printk_index", align 4
@rtw89_pci_rxbd_deliver_skbs._entry.181 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.182, ptr @.str.180, ptr @.str, i32 231, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"skb should not be ready before first segment start\0A\00", [44 x i8] zeroinitializer }, align 32
@rtw89_pci_rxbd_deliver_skbs._entry_ptr.183 = internal global ptr @rtw89_pci_rxbd_deliver_skbs._entry.181, section ".printk_index", align 4
@rtw89_pci_rxbd_deliver_skbs._entry.184 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.185, ptr @.str.180, ptr @.str, i32 235, ptr @.str.75, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"desc info should not be ready before first segment start\0A\00", [38 x i8] zeroinitializer }, align 32
@rtw89_pci_rxbd_deliver_skbs._entry_ptr.186 = internal global ptr @rtw89_pci_rxbd_deliver_skbs._entry.184, section ".printk_index", align 4
@rtw89_pci_rxbd_deliver_skbs._entry.187 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.188, ptr @.str.180, ptr @.str, i32 254, ptr @.str.75, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.188 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"no last skb\0A\00", [19 x i8] zeroinitializer }, align 32
@rtw89_pci_rxbd_deliver_skbs._entry_ptr.189 = internal global ptr @rtw89_pci_rxbd_deliver_skbs._entry.187, section ".printk_index", align 4
@rtw89_pci_rxbd_deliver_skbs._entry.190 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.191, ptr @.str.180, ptr @.str, i32 264, ptr @.str.75, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.191 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"no rx desc information\0A\00", [40 x i8] zeroinitializer }, align 32
@rtw89_pci_rxbd_deliver_skbs._entry_ptr.192 = internal global ptr @rtw89_pci_rxbd_deliver_skbs._entry.190, section ".printk_index", align 4
@.str.193 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"invalid rx data length bd_len=%d desc_len=%d offset=%d (fs=%d ls=%d)\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.194 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"rx_data: \00", [22 x i8] zeroinitializer }, align 32
@rtw89_skb_put_rx_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.195, ptr @.str.196, ptr @.str, i32 191, ptr @.str.67, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.195 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drop rx data due to invalid length\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.196 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rtw89_skb_put_rx_data\00", [42 x i8] zeroinitializer }, align 32
@rtw89_skb_put_rx_data._entry_ptr = internal global ptr @rtw89_skb_put_rx_data._entry, section ".printk_index", align 4
@rtw89_debug_mask = external dso_local local_unnamed_addr global i32, align 4
@rtw89_hex_dump.__UNIQUE_ID_ddebug392 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.23, ptr @.str.197, ptr @.str.198, ptr @.str.199, i8 0, i8 16, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.197 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rtw89_hex_dump\00", [17 x i8] zeroinitializer }, align 32
@.str.198 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drivers/net/wireless/realtek/rtw89/debug.h\00", [53 x i8] zeroinitializer }, align 32
@.str.199 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"hexdump\00", [24 x i8] zeroinitializer }, align 32
@.str.200 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@rtw89_pci_claim_device._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.201, ptr @.str.202, ptr @.str, i32 1961, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.201 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to enable pci device\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.202 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"rtw89_pci_claim_device\00", [41 x i8] zeroinitializer }, align 32
@rtw89_pci_claim_device._entry_ptr = internal global ptr @rtw89_pci_claim_device._entry, section ".printk_index", align 4
@rtw89_pci_setup_resource._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.203, ptr @.str.204, ptr @.str, i32 2458, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.203 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to setup pci mapping\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.204 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"rtw89_pci_setup_resource\00", [39 x i8] zeroinitializer }, align 32
@rtw89_pci_setup_resource._entry_ptr = internal global ptr @rtw89_pci_setup_resource._entry, section ".printk_index", align 4
@rtw89_pci_setup_resource._entry.205 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.206, ptr @.str.204, ptr @.str, i32 2464, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.206 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to alloc pci trx rings\0A\00", [33 x i8] zeroinitializer }, align 32
@rtw89_pci_setup_resource._entry_ptr.207 = internal global ptr @rtw89_pci_setup_resource._entry.205, section ".printk_index", align 4
@rtw89_pci_setup_resource.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.208 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&rtwpci->irq_lock\00", [46 x i8] zeroinitializer }, align 32
@rtw89_pci_setup_resource.__key.209 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.210 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&rtwpci->trx_lock\00", [46 x i8] zeroinitializer }, align 32
@rtw89_pci_setup_mapping._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.211, ptr @.str.212, ptr @.str, i32 1990, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.211 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to request pci regions\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.212 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"rtw89_pci_setup_mapping\00", [40 x i8] zeroinitializer }, align 32
@rtw89_pci_setup_mapping._entry_ptr = internal global ptr @rtw89_pci_setup_mapping._entry, section ".printk_index", align 4
@rtw89_pci_setup_mapping._entry.213 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.214, ptr @.str.212, ptr @.str, i32 1996, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.214 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to set dma mask to 32-bit\0A\00", [62 x i8] zeroinitializer }, align 32
@rtw89_pci_setup_mapping._entry_ptr.215 = internal global ptr @rtw89_pci_setup_mapping._entry.213, section ".printk_index", align 4
@rtw89_pci_setup_mapping._entry.216 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.217, ptr @.str.212, ptr @.str, i32 2002, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.217 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"failed to set consistent dma mask to 32-bit\0A\00", [51 x i8] zeroinitializer }, align 32
@rtw89_pci_setup_mapping._entry_ptr.218 = internal global ptr @rtw89_pci_setup_mapping._entry.216, section ".printk_index", align 4
@rtw89_pci_setup_mapping._entry.219 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.220, ptr @.str.212, ptr @.str, i32 2009, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.220 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"failed to map pci io\0A\00", [42 x i8] zeroinitializer }, align 32
@rtw89_pci_setup_mapping._entry_ptr.221 = internal global ptr @rtw89_pci_setup_mapping._entry.219, section ".printk_index", align 4
@rtw89_pci_alloc_trx_rings._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.222, ptr @.str.223, ptr @.str, i32 2425, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.222 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to alloc dma tx rings\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.223 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"rtw89_pci_alloc_trx_rings\00", [38 x i8] zeroinitializer }, align 32
@rtw89_pci_alloc_trx_rings._entry_ptr = internal global ptr @rtw89_pci_alloc_trx_rings._entry, section ".printk_index", align 4
@rtw89_pci_alloc_trx_rings._entry.224 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.225, ptr @.str.223, ptr @.str, i32 2431, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.225 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to alloc dma rx rings\0A\00", [34 x i8] zeroinitializer }, align 32
@rtw89_pci_alloc_trx_rings._entry_ptr.226 = internal global ptr @rtw89_pci_alloc_trx_rings._entry.224, section ".printk_index", align 4
@rtw89_pci_alloc_tx_rings._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.227, ptr @.str.228, ptr @.str, i32 2281, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.227 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to alloc tx ring %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.228 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"rtw89_pci_alloc_tx_rings\00", [39 x i8] zeroinitializer }, align 32
@rtw89_pci_alloc_tx_rings._entry_ptr = internal global ptr @rtw89_pci_alloc_tx_rings._entry, section ".printk_index", align 4
@rtw89_pci_alloc_tx_ring._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.229, ptr @.str.230, ptr @.str, i32 2225, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.229 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"failed to alloc txwd ring of txch %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.230 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"rtw89_pci_alloc_tx_ring\00", [40 x i8] zeroinitializer }, align 32
@rtw89_pci_alloc_tx_ring._entry_ptr = internal global ptr @rtw89_pci_alloc_tx_ring._entry, section ".printk_index", align 4
@rtw89_pci_alloc_tx_ring._entry.231 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.232, ptr @.str.230, ptr @.str, i32 2232, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.232 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to get address of txch %d\00", [63 x i8] zeroinitializer }, align 32
@rtw89_pci_alloc_tx_ring._entry_ptr.233 = internal global ptr @rtw89_pci_alloc_tx_ring._entry.231, section ".printk_index", align 4
@skb_queue_head_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.234 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&list->lock\00", [20 x i8] zeroinitializer }, align 32
@rtw89_pci_alloc_rx_rings._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.235, ptr @.str.236, ptr @.str, i32 2401, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.235 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to alloc rx ring %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.236 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"rtw89_pci_alloc_rx_rings\00", [39 x i8] zeroinitializer }, align 32
@rtw89_pci_alloc_rx_rings._entry_ptr = internal global ptr @rtw89_pci_alloc_rx_rings._entry, section ".printk_index", align 4
@rtw89_pci_alloc_rx_ring._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.237, ptr @.str.238, ptr @.str, i32 2318, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.237 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to get address of rxch %d\00", [63 x i8] zeroinitializer }, align 32
@.str.238 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"rtw89_pci_alloc_rx_ring\00", [40 x i8] zeroinitializer }, align 32
@rtw89_pci_alloc_rx_ring._entry_ptr = internal global ptr @rtw89_pci_alloc_rx_ring._entry, section ".printk_index", align 4
@rtw89_pci_alloc_rx_ring._entry.239 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.240, ptr @.str.238, ptr @.str, i32 2354, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.240 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to init rx buf %d\0A\00", [38 x i8] zeroinitializer }, align 32
@rtw89_pci_alloc_rx_ring._entry_ptr.241 = internal global ptr @rtw89_pci_alloc_rx_ring._entry.239, section ".printk_index", align 4
@rtw89_pci_request_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.242, ptr @.str.243, ptr @.str, i32 2518, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.242 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed to alloc irq vectors, ret %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.243 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rtw89_pci_request_irq\00", [42 x i8] zeroinitializer }, align 32
@rtw89_pci_request_irq._entry_ptr = internal global ptr @rtw89_pci_request_irq._entry, section ".printk_index", align 4
@rtw89_pci_request_irq._entry.244 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.245, ptr @.str.243, ptr @.str, i32 2527, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.245 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to request threaded irq\0A\00", [32 x i8] zeroinitializer }, align 32
@rtw89_pci_request_irq._entry_ptr.246 = internal global ptr @rtw89_pci_request_irq._entry.244, section ".printk_index", align 4
@rtw89_pci_isr_rxd_unavail._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.247, ptr @.str.248, ptr @.str, i32 607, ptr @.str.75, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.247 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%d RXD unavailable\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.248 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"rtw89_pci_isr_rxd_unavail\00", [38 x i8] zeroinitializer }, align 32
@rtw89_pci_isr_rxd_unavail._entry_ptr = internal global ptr @rtw89_pci_isr_rxd_unavail._entry, section ".printk_index", align 4
@.str.249 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%d RXD unavailable, idx=0x%08x, len=%d\0A\00", [56 x i8] zeroinitializer }, align 32
@switch.table.rtw89_pci_probe = internal constant { [13 x i32], [44 x i8] } { [13 x i32] [i32 4132, i32 4134, i32 4136, i32 4138, i32 4140, i32 4142, i32 4144, i32 4146, i32 4148, i32 4150, i32 4920, i32 4922, i32 4152], [44 x i8] zeroinitializer }, align 32
@switch.table.rtw89_pci_probe.250 = internal constant { [13 x i32], [44 x i8] } { [13 x i32] [i32 4184, i32 4188, i32 4192, i32 4196, i32 4200, i32 4204, i32 4208, i32 4212, i32 4216, i32 4220, i32 4988, i32 4992, i32 4224], [44 x i8] zeroinitializer }, align 32
@switch.table.rtw89_pci_probe.251 = internal constant { [13 x i32], [44 x i8] } { [13 x i32] [i32 4608, i32 4612, i32 4616, i32 4620, i32 4624, i32 4628, i32 4632, i32 4636, i32 4640, i32 4644, i32 4896, i32 4900, i32 4648], [44 x i8] zeroinitializer }, align 32
@switch.table.rtw89_pci_probe.252 = internal constant { [13 x i32], [44 x i8] } { [13 x i32] [i32 4368, i32 4376, i32 4384, i32 4392, i32 4400, i32 4408, i32 4416, i32 4424, i32 4432, i32 4440, i32 4952, i32 4960, i32 4448], [44 x i8] zeroinitializer }, align 32
@switch.table.rtw89_pci_probe.253 = internal constant { [13 x i32], [44 x i8] } { [13 x i32] [i32 4372, i32 4380, i32 4388, i32 4396, i32 4404, i32 4412, i32 4420, i32 4428, i32 4436, i32 4444, i32 4956, i32 4964, i32 4452], [44 x i8] zeroinitializer }, align 32
@switch.table.rtw89_pci_release_tx = internal constant { [19 x i32], [52 x i8] } { [19 x i32] [i32 9, i32 8, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 11, i32 10, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 2, i32 3], [52 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.254 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.255 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.256 = internal global [4 x i64] [i64 2, i64 32, i64 3941264106, i64 4294967295]
@__sancov_gen_cov_switch_values.257 = internal global [4 x i64] [i64 2, i64 32, i64 3941264106, i64 4294967295]
@__sancov_gen_cov_switch_values.258 = internal global [4 x i64] [i64 2, i64 32, i64 3941264106, i64 4294967295]
@__sancov_gen_cov_switch_values.259 = internal global [4 x i64] [i64 2, i64 32, i64 3941264106, i64 4294967295]
@__sancov_gen_cov_switch_values.260 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.261 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.262 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@___asan_gen_.263 = private unnamed_addr constant [25 x i8] c"rtw89_pci_disable_clkreq\00", align 1
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 12, i32 13 }
@___asan_gen_.266 = private unnamed_addr constant [26 x i8] c"rtw89_pci_disable_aspm_l1\00", align 1
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 13, i32 13 }
@___asan_gen_.269 = private unnamed_addr constant [23 x i8] c"rtw89_pci_disable_l1ss\00", align 1
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 14, i32 13 }
@___asan_gen_.272 = private unnamed_addr constant [13 x i8] c"rtw89_pm_ops\00", align 1
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 2906, i32 1 }
@___asan_gen_.275 = private unnamed_addr constant [17 x i8] c"rtw89_pci_driver\00", align 1
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 3049, i32 26 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 1456, i32 3 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 1433, i32 3 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 2644, i32 3 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 2558, i32 3 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 2567, i32 3 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 2581, i32 3 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 2589, i32 3 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 2598, i32 3 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 2666, i32 3 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 3056, i32 1 }
@___asan_gen_.350 = private unnamed_addr constant [19 x i8] c"rtw89_pci_id_table\00", align 1
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 3042, i32 35 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 2946, i32 3 }
@___asan_gen_.362 = private unnamed_addr constant [14 x i8] c"rtw89_pci_ops\00", align 1
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 2909, i32 35 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 2970, i32 3 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 2976, i32 3 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 2982, i32 3 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 2988, i32 3 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 2997, i32 3 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 3005, i32 3 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 1103, i32 3 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 1067, i32 3 }
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 1076, i32 3 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 1084, i32 3 }
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 1026, i32 3 }
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 1033, i32 3 }
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 994, i32 3 }
@___asan_gen_.459 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 326, i32 6 }
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 940, i32 3 }
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 891, i32 3 }
@___asan_gen_.479 = private unnamed_addr constant [13 x i8] c"bd_ram_table\00", align 1
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 1110, i32 38 }
@___asan_gen_.490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 85, i32 4 }
@___asan_gen_.496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 98, i32 4 }
@___asan_gen_.508 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 415, i32 3 }
@___asan_gen_.514 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 422, i32 3 }
@___asan_gen_.517 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 350, i32 4 }
@___asan_gen_.526 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 363, i32 4 }
@___asan_gen_.535 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 1241, i32 4 }
@___asan_gen_.544 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 1815, i32 3 }
@___asan_gen_.550 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 1824, i32 3 }
@___asan_gen_.556 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 1852, i32 3 }
@___asan_gen_.562 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 1878, i32 3 }
@___asan_gen_.571 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 1363, i32 3 }
@___asan_gen_.580 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 1346, i32 3 }
@___asan_gen_.589 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 1379, i32 3 }
@___asan_gen_.598 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 1547, i32 3 }
@___asan_gen_.604 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 1556, i32 3 }
@___asan_gen_.607 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 1562, i32 3 }
@___asan_gen_.613 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 1570, i32 4 }
@___asan_gen_.619 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 1578, i32 3 }
@___asan_gen_.625 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 1586, i32 4 }
@___asan_gen_.628 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 1596, i32 3 }
@___asan_gen_.634 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 1603, i32 3 }
@___asan_gen_.640 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 1622, i32 3 }
@___asan_gen_.643 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 1630, i32 3 }
@___asan_gen_.646 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 1638, i32 3 }
@___asan_gen_.652 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 1644, i32 3 }
@___asan_gen_.655 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 1653, i32 3 }
@___asan_gen_.658 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 1660, i32 3 }
@___asan_gen_.661 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 1672, i32 4 }
@___asan_gen_.667 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 1524, i32 3 }
@___asan_gen_.676 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 1930, i32 3 }
@___asan_gen_.682 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 818, i32 3 }
@___asan_gen_.691 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 548, i32 4 }
@___asan_gen_.700 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 505, i32 3 }
@___asan_gen_.706 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 512, i32 3 }
@___asan_gen_.715 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 456, i32 3 }
@___asan_gen_.726 = private unnamed_addr constant [45 x i8] c"../drivers/net/wireless/realtek/rtw89/txrx.h\00", align 1
@___asan_gen_.727 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 283, i32 3 }
@___asan_gen_.736 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 380, i32 4 }
@___asan_gen_.745 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 2806, i32 4 }
@___asan_gen_.751 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 2813, i32 4 }
@___asan_gen_.754 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 2734, i32 3 }
@___asan_gen_.757 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 2746, i32 3 }
@___asan_gen_.766 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 2718, i32 3 }
@___asan_gen_.775 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 2825, i32 2 }
@___asan_gen_.781 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 2827, i32 2 }
@___asan_gen_.787 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 2829, i32 2 }
@___asan_gen_.796 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 297, i32 4 }
@___asan_gen_.802 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 220, i32 3 }
@___asan_gen_.808 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 231, i32 4 }
@___asan_gen_.814 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 235, i32 4 }
@___asan_gen_.820 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 254, i32 4 }
@___asan_gen_.826 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 264, i32 3 }
@___asan_gen_.829 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 182, i32 3 }
@___asan_gen_.832 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 185, i32 42 }
@___asan_gen_.841 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 191, i32 4 }
@___asan_gen_.852 = private unnamed_addr constant [46 x i8] c"../drivers/net/wireless/realtek/rtw89/debug.h\00", align 1
@___asan_gen_.853 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.852, i32 65, i32 2 }
@___asan_gen_.862 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 1961, i32 3 }
@___asan_gen_.871 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 2458, i32 3 }
@___asan_gen_.877 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 2464, i32 3 }
@___asan_gen_.883 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 2470, i32 2 }
@___asan_gen_.889 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 2471, i32 2 }
@___asan_gen_.898 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 1990, i32 3 }
@___asan_gen_.904 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 1996, i32 3 }
@___asan_gen_.910 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 2002, i32 3 }
@___asan_gen_.916 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 2009, i32 3 }
@___asan_gen_.925 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 2425, i32 3 }
@___asan_gen_.931 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 2431, i32 3 }
@___asan_gen_.940 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 2281, i32 4 }
@___asan_gen_.949 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 2225, i32 3 }
@___asan_gen_.955 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 2232, i32 3 }
@___asan_gen_.956 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.960 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.961 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.960, i32 1984, i32 2 }
@___asan_gen_.970 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 2401, i32 4 }
@___asan_gen_.979 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 2318, i32 3 }
@___asan_gen_.985 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 2354, i32 4 }
@___asan_gen_.994 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 2518, i32 3 }
@___asan_gen_.1000 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 2527, i32 3 }
@___asan_gen_.1001 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.1009 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 607, i32 4 }
@___asan_gen_.1010 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.1011 = private constant [44 x i8] c"../drivers/net/wireless/realtek/rtw89/pci.c\00", align 1
@___asan_gen_.1012 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 609, i32 3 }
@___asan_gen_.1013 = private unnamed_addr constant [29 x i8] c"switch.table.rtw89_pci_probe\00", align 1
@___asan_gen_.1014 = private unnamed_addr constant [33 x i8] c"switch.table.rtw89_pci_probe.250\00", align 1
@___asan_gen_.1015 = private unnamed_addr constant [33 x i8] c"switch.table.rtw89_pci_probe.251\00", align 1
@___asan_gen_.1016 = private unnamed_addr constant [33 x i8] c"switch.table.rtw89_pci_probe.252\00", align 1
@___asan_gen_.1017 = private unnamed_addr constant [33 x i8] c"switch.table.rtw89_pci_probe.253\00", align 1
@___asan_gen_.1018 = private unnamed_addr constant [34 x i8] c"switch.table.rtw89_pci_release_tx\00", align 1
@llvm.compiler.used = appending global [367 x ptr] [ptr @__UNIQUE_ID_author480, ptr @__UNIQUE_ID_description481, ptr @__UNIQUE_ID_disable_aspm_l1399, ptr @__UNIQUE_ID_disable_aspm_l1ss400, ptr @__UNIQUE_ID_disable_aspm_l1sstype397, ptr @__UNIQUE_ID_disable_aspm_l1type396, ptr @__UNIQUE_ID_disable_clkreq398, ptr @__UNIQUE_ID_disable_clkreqtype395, ptr @__UNIQUE_ID_file482, ptr @__UNIQUE_ID_license483, ptr @__exitcall_rtw89_pci_driver_exit, ptr @__get_target._entry, ptr @__get_target._entry_ptr, ptr @__initcall__kmod_rtw89_pci__479_3056_rtw89_pci_driver_init6, ptr @__ksymtab_rtw89_pm_ops, ptr @__param_disable_aspm_l1, ptr @__param_disable_aspm_l1ss, ptr @__param_disable_clkreq, ptr @__pci_flush_txch._entry, ptr @__pci_flush_txch._entry_ptr, ptr @__rtw89_pci_check_and_reclaim_tx_resource._entry, ptr @__rtw89_pci_check_and_reclaim_tx_resource._entry_ptr, ptr @rtw89_core_get_ch_dma._entry, ptr @rtw89_core_get_ch_dma._entry_ptr, ptr @rtw89_pci_alloc_rx_ring._entry, ptr @rtw89_pci_alloc_rx_ring._entry.239, ptr @rtw89_pci_alloc_rx_ring._entry_ptr, ptr @rtw89_pci_alloc_rx_ring._entry_ptr.241, ptr @rtw89_pci_alloc_rx_rings._entry, ptr @rtw89_pci_alloc_rx_rings._entry_ptr, ptr @rtw89_pci_alloc_trx_rings._entry, ptr @rtw89_pci_alloc_trx_rings._entry.224, ptr @rtw89_pci_alloc_trx_rings._entry_ptr, ptr @rtw89_pci_alloc_trx_rings._entry_ptr.226, ptr @rtw89_pci_alloc_tx_ring._entry, ptr @rtw89_pci_alloc_tx_ring._entry.231, ptr @rtw89_pci_alloc_tx_ring._entry_ptr, ptr @rtw89_pci_alloc_tx_ring._entry_ptr.233, ptr @rtw89_pci_alloc_tx_rings._entry, ptr @rtw89_pci_alloc_tx_rings._entry_ptr, ptr @rtw89_pci_aspm_set._entry, ptr @rtw89_pci_aspm_set._entry.16, ptr @rtw89_pci_aspm_set._entry.18, ptr @rtw89_pci_aspm_set._entry_ptr, ptr @rtw89_pci_aspm_set._entry_ptr.17, ptr @rtw89_pci_aspm_set._entry_ptr.20, ptr @rtw89_pci_auto_refclk_cal._entry, ptr @rtw89_pci_auto_refclk_cal._entry.103, ptr @rtw89_pci_auto_refclk_cal._entry.106, ptr @rtw89_pci_auto_refclk_cal._entry.108, ptr @rtw89_pci_auto_refclk_cal._entry.111, ptr @rtw89_pci_auto_refclk_cal._entry.114, ptr @rtw89_pci_auto_refclk_cal._entry.117, ptr @rtw89_pci_auto_refclk_cal._entry.119, ptr @rtw89_pci_auto_refclk_cal._entry.122, ptr @rtw89_pci_auto_refclk_cal._entry.125, ptr @rtw89_pci_auto_refclk_cal._entry.127, ptr @rtw89_pci_auto_refclk_cal._entry.129, ptr @rtw89_pci_auto_refclk_cal._entry.133, ptr @rtw89_pci_auto_refclk_cal._entry.135, ptr @rtw89_pci_auto_refclk_cal._entry.137, ptr @rtw89_pci_auto_refclk_cal._entry_ptr, ptr @rtw89_pci_auto_refclk_cal._entry_ptr.105, ptr @rtw89_pci_auto_refclk_cal._entry_ptr.107, ptr @rtw89_pci_auto_refclk_cal._entry_ptr.110, ptr @rtw89_pci_auto_refclk_cal._entry_ptr.113, ptr @rtw89_pci_auto_refclk_cal._entry_ptr.116, ptr @rtw89_pci_auto_refclk_cal._entry_ptr.118, ptr @rtw89_pci_auto_refclk_cal._entry_ptr.121, ptr @rtw89_pci_auto_refclk_cal._entry_ptr.124, ptr @rtw89_pci_auto_refclk_cal._entry_ptr.126, ptr @rtw89_pci_auto_refclk_cal._entry_ptr.128, ptr @rtw89_pci_auto_refclk_cal._entry_ptr.131, ptr @rtw89_pci_auto_refclk_cal._entry_ptr.134, ptr @rtw89_pci_auto_refclk_cal._entry_ptr.136, ptr @rtw89_pci_auto_refclk_cal._entry_ptr.138, ptr @rtw89_pci_check_mdio._entry, ptr @rtw89_pci_check_mdio._entry_ptr, ptr @rtw89_pci_claim_device._entry, ptr @rtw89_pci_claim_device._entry_ptr, ptr @rtw89_pci_clkreq_set._entry, ptr @rtw89_pci_clkreq_set._entry.9, ptr @rtw89_pci_clkreq_set._entry_ptr, ptr @rtw89_pci_clkreq_set._entry_ptr.11, ptr @rtw89_pci_driver_exit, ptr @rtw89_pci_fwcmd_submit._entry, ptr @rtw89_pci_fwcmd_submit._entry_ptr, ptr @rtw89_pci_isr_rxd_unavail._entry, ptr @rtw89_pci_isr_rxd_unavail._entry_ptr, ptr @rtw89_pci_l1ss_set._entry, ptr @rtw89_pci_l1ss_set._entry_ptr, ptr @rtw89_pci_link_cfg._entry, ptr @rtw89_pci_link_cfg._entry_ptr, ptr @rtw89_pci_ops_dump_err_status._entry, ptr @rtw89_pci_ops_dump_err_status._entry.172, ptr @rtw89_pci_ops_dump_err_status._entry.175, ptr @rtw89_pci_ops_dump_err_status._entry_ptr, ptr @rtw89_pci_ops_dump_err_status._entry_ptr.174, ptr @rtw89_pci_ops_dump_err_status._entry_ptr.177, ptr @rtw89_pci_ops_mac_lv1_recovery._entry, ptr @rtw89_pci_ops_mac_lv1_recovery._entry.163, ptr @rtw89_pci_ops_mac_lv1_recovery._entry_ptr, ptr @rtw89_pci_ops_mac_lv1_recovery._entry_ptr.165, ptr @rtw89_pci_ops_mac_post_init._entry, ptr @rtw89_pci_ops_mac_post_init._entry_ptr, ptr @rtw89_pci_ops_mac_pre_init._entry, ptr @rtw89_pci_ops_mac_pre_init._entry.86, ptr @rtw89_pci_ops_mac_pre_init._entry.89, ptr @rtw89_pci_ops_mac_pre_init._entry.92, ptr @rtw89_pci_ops_mac_pre_init._entry_ptr, ptr @rtw89_pci_ops_mac_pre_init._entry_ptr.88, ptr @rtw89_pci_ops_mac_pre_init._entry_ptr.91, ptr @rtw89_pci_ops_mac_pre_init._entry_ptr.94, ptr @rtw89_pci_ops_read32_cmac._entry, ptr @rtw89_pci_ops_read32_cmac._entry_ptr, ptr @rtw89_pci_ops_tx_write._entry, ptr @rtw89_pci_ops_tx_write._entry_ptr, ptr @rtw89_pci_poll_io_idle._entry, ptr @rtw89_pci_poll_io_idle._entry_ptr, ptr @rtw89_pci_probe._entry, ptr @rtw89_pci_probe._entry.26, ptr @rtw89_pci_probe._entry.29, ptr @rtw89_pci_probe._entry.32, ptr @rtw89_pci_probe._entry.35, ptr @rtw89_pci_probe._entry.38, ptr @rtw89_pci_probe._entry.41, ptr @rtw89_pci_probe._entry_ptr, ptr @rtw89_pci_probe._entry_ptr.28, ptr @rtw89_pci_probe._entry_ptr.31, ptr @rtw89_pci_probe._entry_ptr.34, ptr @rtw89_pci_probe._entry_ptr.37, ptr @rtw89_pci_probe._entry_ptr.40, ptr @rtw89_pci_probe._entry_ptr.43, ptr @rtw89_pci_reclaim_txbd._entry, ptr @rtw89_pci_reclaim_txbd._entry_ptr, ptr @rtw89_pci_release_fwcmd._entry, ptr @rtw89_pci_release_fwcmd._entry.70, ptr @rtw89_pci_release_fwcmd._entry_ptr, ptr @rtw89_pci_release_fwcmd._entry_ptr.72, ptr @rtw89_pci_release_rpp._entry, ptr @rtw89_pci_release_rpp._entry_ptr, ptr @rtw89_pci_release_tx._entry, ptr @rtw89_pci_release_tx._entry_ptr, ptr @rtw89_pci_release_tx_skbs._entry, ptr @rtw89_pci_release_tx_skbs._entry.151, ptr @rtw89_pci_release_tx_skbs._entry_ptr, ptr @rtw89_pci_release_tx_skbs._entry_ptr.153, ptr @rtw89_pci_release_txwd_skb._entry, ptr @rtw89_pci_release_txwd_skb._entry.76, ptr @rtw89_pci_release_txwd_skb._entry_ptr, ptr @rtw89_pci_release_txwd_skb._entry_ptr.78, ptr @rtw89_pci_request_irq._entry, ptr @rtw89_pci_request_irq._entry.244, ptr @rtw89_pci_request_irq._entry_ptr, ptr @rtw89_pci_request_irq._entry_ptr.246, ptr @rtw89_pci_rxbd_deliver._entry, ptr @rtw89_pci_rxbd_deliver._entry_ptr, ptr @rtw89_pci_rxbd_deliver_skbs._entry, ptr @rtw89_pci_rxbd_deliver_skbs._entry.181, ptr @rtw89_pci_rxbd_deliver_skbs._entry.184, ptr @rtw89_pci_rxbd_deliver_skbs._entry.187, ptr @rtw89_pci_rxbd_deliver_skbs._entry.190, ptr @rtw89_pci_rxbd_deliver_skbs._entry_ptr, ptr @rtw89_pci_rxbd_deliver_skbs._entry_ptr.183, ptr @rtw89_pci_rxbd_deliver_skbs._entry_ptr.186, ptr @rtw89_pci_rxbd_deliver_skbs._entry_ptr.189, ptr @rtw89_pci_rxbd_deliver_skbs._entry_ptr.192, ptr @rtw89_pci_setup_mapping._entry, ptr @rtw89_pci_setup_mapping._entry.213, ptr @rtw89_pci_setup_mapping._entry.216, ptr @rtw89_pci_setup_mapping._entry.219, ptr @rtw89_pci_setup_mapping._entry_ptr, ptr @rtw89_pci_setup_mapping._entry_ptr.215, ptr @rtw89_pci_setup_mapping._entry_ptr.218, ptr @rtw89_pci_setup_mapping._entry_ptr.221, ptr @rtw89_pci_setup_resource._entry, ptr @rtw89_pci_setup_resource._entry.205, ptr @rtw89_pci_setup_resource._entry_ptr, ptr @rtw89_pci_setup_resource._entry_ptr.207, ptr @rtw89_pci_tx_status._entry, ptr @rtw89_pci_tx_status._entry_ptr, ptr @rtw89_pci_tx_write._entry, ptr @rtw89_pci_tx_write._entry.48, ptr @rtw89_pci_tx_write._entry.51, ptr @rtw89_pci_tx_write._entry_ptr, ptr @rtw89_pci_tx_write._entry_ptr.50, ptr @rtw89_pci_tx_write._entry_ptr.53, ptr @rtw89_pci_txbd_submit._entry, ptr @rtw89_pci_txbd_submit._entry.56, ptr @rtw89_pci_txbd_submit._entry_ptr, ptr @rtw89_pci_txbd_submit._entry_ptr.58, ptr @rtw89_pci_txwd_submit._entry, ptr @rtw89_pci_txwd_submit._entry_ptr, ptr @rtw89_read16_mdio._entry, ptr @rtw89_read16_mdio._entry_ptr, ptr @rtw89_skb_put_rx_data._entry, ptr @rtw89_skb_put_rx_data._entry_ptr, ptr @rtw89_write16_mdio._entry, ptr @rtw89_write16_mdio._entry_ptr, ptr @rtw89_pci_disable_clkreq, ptr @rtw89_pci_disable_aspm_l1, ptr @rtw89_pci_disable_l1ss, ptr @rtw89_pm_ops, ptr @rtw89_pci_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @rtw89_pci_id_table, ptr @.str.24, ptr @.str.25, ptr @rtw89_pci_ops, ptr @.str.27, ptr @.str.30, ptr @.str.33, ptr @.str.36, ptr @.str.39, ptr @.str.42, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.49, ptr @.str.52, ptr @.str.54, ptr @.str.55, ptr @.str.57, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @bd_ram_table, ptr @.str.68, ptr @.str.69, ptr @.str.71, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.77, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.87, ptr @.str.90, ptr @.str.93, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.104, ptr @.str.109, ptr @.str.112, ptr @.str.115, ptr @.str.120, ptr @.str.123, ptr @.str.130, ptr @.str.139, ptr @.str.140, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.152, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.164, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @.str.173, ptr @.str.176, ptr @.str.178, ptr @.str.179, ptr @.str.180, ptr @.str.182, ptr @.str.185, ptr @.str.188, ptr @.str.191, ptr @.str.193, ptr @.str.194, ptr @.str.195, ptr @.str.196, ptr @.str.197, ptr @.str.198, ptr @.str.199, ptr @.str.200, ptr @.str.201, ptr @.str.202, ptr @.str.203, ptr @.str.204, ptr @.str.206, ptr @rtw89_pci_setup_resource.__key, ptr @.str.208, ptr @rtw89_pci_setup_resource.__key.209, ptr @.str.210, ptr @.str.211, ptr @.str.212, ptr @.str.214, ptr @.str.217, ptr @.str.220, ptr @.str.222, ptr @.str.223, ptr @.str.225, ptr @.str.227, ptr @.str.228, ptr @.str.229, ptr @.str.230, ptr @.str.232, ptr @skb_queue_head_init.__key, ptr @.str.234, ptr @.str.235, ptr @.str.236, ptr @.str.237, ptr @.str.238, ptr @.str.240, ptr @.str.242, ptr @.str.243, ptr @.str.245, ptr @.str.247, ptr @.str.248, ptr @.str.249, ptr @switch.table.rtw89_pci_probe, ptr @switch.table.rtw89_pci_probe.250, ptr @switch.table.rtw89_pci_probe.251, ptr @switch.table.rtw89_pci_probe.252, ptr @switch.table.rtw89_pci_probe.253, ptr @switch.table.rtw89_pci_release_tx], section "llvm.metadata"
@0 = internal global [256 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_pci_disable_clkreq to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_pci_disable_aspm_l1 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_pci_disable_l1ss to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_pci_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_pci_link_cfg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_pci_clkreq_set._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_pci_clkreq_set._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_pci_aspm_set._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_pci_aspm_set._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_pci_aspm_set._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_pci_l1ss_set._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_pci_id_table to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_pci_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_pci_ops to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_pci_probe._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_pci_probe._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_pci_probe._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_pci_probe._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_pci_probe._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_pci_probe._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_pci_ops_tx_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_pci_tx_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_pci_tx_write._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_pci_tx_write._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_pci_txbd_submit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_pci_txbd_submit._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_pci_fwcmd_submit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_pci_txwd_submit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd_ram_table to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_pci_release_fwcmd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_pci_release_fwcmd._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_pci_release_txwd_skb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_pci_release_txwd_skb._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_pci_tx_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_pci_ops_read32_cmac._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_pci_ops_mac_pre_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_pci_ops_mac_pre_init._entry.86 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_pci_ops_mac_pre_init._entry.89 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_pci_ops_mac_pre_init._entry.92 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_read16_mdio._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_pci_check_mdio._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_write16_mdio._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_pci_auto_refclk_cal._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_pci_auto_refclk_cal._entry.103 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_pci_auto_refclk_cal._entry.106 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_pci_auto_refclk_cal._entry.108 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_pci_auto_refclk_cal._entry.111 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_pci_auto_refclk_cal._entry.114 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_pci_auto_refclk_cal._entry.117 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_pci_auto_refclk_cal._entry.119 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_pci_auto_refclk_cal._entry.122 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_pci_auto_refclk_cal._entry.125 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_pci_auto_refclk_cal._entry.127 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_pci_auto_refclk_cal._entry.129 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_pci_auto_refclk_cal._entry.133 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_pci_auto_refclk_cal._entry.135 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_pci_auto_refclk_cal._entry.137 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_pci_ops_mac_post_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_pci_release_tx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_pci_release_tx_skbs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_pci_release_tx_skbs._entry.151 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_pci_release_rpp._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_core_get_ch_dma._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_pci_reclaim_txbd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_pci_ops_mac_lv1_recovery._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_pci_ops_mac_lv1_recovery._entry.163 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.754 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_pci_poll_io_idle._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_pci_ops_dump_err_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_pci_ops_dump_err_status._entry.172 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_pci_ops_dump_err_status._entry.175 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_pci_rxbd_deliver._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_pci_rxbd_deliver_skbs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_pci_rxbd_deliver_skbs._entry.181 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_pci_rxbd_deliver_skbs._entry.184 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_pci_rxbd_deliver_skbs._entry.187 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_pci_rxbd_deliver_skbs._entry.190 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.194 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_skb_put_rx_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.195 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.196 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.197 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.198 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.199 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.200 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_pci_claim_device._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.201 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.202 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_pci_setup_resource._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.871 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.203 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.871 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.204 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.871 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_pci_setup_resource._entry.205 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.206 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_pci_setup_resource.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.956 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.208 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_pci_setup_resource.__key.209 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.956 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.210 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_pci_setup_mapping._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.211 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.212 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_pci_setup_mapping._entry.213 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.214 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_pci_setup_mapping._entry.216 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.217 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_pci_setup_mapping._entry.219 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.220 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_pci_alloc_trx_rings._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.222 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.223 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_pci_alloc_trx_rings._entry.224 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.225 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_pci_alloc_tx_rings._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.940 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.227 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.940 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.228 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.940 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_pci_alloc_tx_ring._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.229 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.230 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_pci_alloc_tx_ring._entry.231 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.232 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skb_queue_head_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.956 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.234 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_pci_alloc_rx_rings._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.235 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.236 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_pci_alloc_rx_ring._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.979 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.237 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.979 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.238 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.979 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_pci_alloc_rx_ring._entry.239 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.240 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_pci_request_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.242 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.243 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_pci_request_irq._entry.244 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.245 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw89_pci_isr_rxd_unavail._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.247 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.248 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.249 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.rtw89_pci_probe to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.1013 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.rtw89_pci_probe.250 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.1014 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.rtw89_pci_probe.251 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.rtw89_pci_probe.252 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.rtw89_pci_probe.253 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.rtw89_pci_release_tx to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtw89_pci_suspend(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 8
  %hci.i.i = getelementptr inbounds %struct.rtw89_dev, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hci.i.i, align 8
  %read32.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %5, i32 0, i32 9
  %6 = ptrtoint ptr %read32.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %read32.i.i, align 4
  %call.i.i = tail call i32 %7(ptr noundef %3, i32 noundef 112) #7
  %and.i = and i32 %call.i.i, -32769
  %8 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hci.i.i, align 8
  %write32.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %9, i32 0, i32 12
  %10 = ptrtoint ptr %write32.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %write32.i.i, align 4
  tail call void %11(ptr noundef %3, i32 noundef 112, i32 noundef %and.i) #7
  %12 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hci.i.i, align 8
  %read32.i.i6 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %13, i32 0, i32 9
  %14 = ptrtoint ptr %read32.i.i6 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %read32.i.i6, align 4
  %call.i.i7 = tail call i32 %15(ptr noundef %3, i32 noundef 28) #7
  %or.i = or i32 %call.i.i7, 32
  %16 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hci.i.i, align 8
  %write32.i.i8 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %17, i32 0, i32 12
  %18 = ptrtoint ptr %write32.i.i8 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %write32.i.i8, align 4
  tail call void %19(ptr noundef %3, i32 noundef 28, i32 noundef %or.i) #7
  %20 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hci.i.i, align 8
  %read32.i.i10 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %21, i32 0, i32 9
  %22 = ptrtoint ptr %read32.i.i10 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %read32.i.i10, align 4
  %call.i.i11 = tail call i32 %23(ptr noundef %3, i32 noundef 28) #7
  %or.i12 = or i32 %call.i.i11, 64
  %24 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %hci.i.i, align 8
  %write32.i.i13 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %25, i32 0, i32 12
  %26 = ptrtoint ptr %write32.i.i13 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %write32.i.i13, align 4
  tail call void %27(ptr noundef %3, i32 noundef 28, i32 noundef %or.i12) #7
  %28 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %hci.i.i, align 8
  %read32.i.i15 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %29, i32 0, i32 9
  %30 = ptrtoint ptr %read32.i.i15 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %read32.i.i15, align 4
  %call.i.i16 = tail call i32 %31(ptr noundef %3, i32 noundef 28) #7
  %and.i17 = and i32 %call.i.i16, -33
  %32 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %hci.i.i, align 8
  %write32.i.i18 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %33, i32 0, i32 12
  %34 = ptrtoint ptr %write32.i.i18 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %write32.i.i18, align 4
  tail call void %35(ptr noundef %3, i32 noundef 28, i32 noundef %and.i17) #7
  %36 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %hci.i.i, align 8
  %read32.i.i20 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %37, i32 0, i32 9
  %38 = ptrtoint ptr %read32.i.i20 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %read32.i.i20, align 4
  %call.i.i21 = tail call i32 %39(ptr noundef %3, i32 noundef 4096) #7
  %or.i22 = or i32 %call.i.i21, 2621440
  %40 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %hci.i.i, align 8
  %write32.i.i23 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %41, i32 0, i32 12
  %42 = ptrtoint ptr %write32.i.i23 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %write32.i.i23, align 4
  tail call void %43(ptr noundef %3, i32 noundef 4096, i32 noundef %or.i22) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtw89_pci_resume(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  %value.i4.i = alloca i8, align 1
  %value.i.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 8
  %hci.i.i = getelementptr inbounds %struct.rtw89_dev, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hci.i.i, align 8
  %read32.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %5, i32 0, i32 9
  %6 = ptrtoint ptr %read32.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %read32.i.i, align 4
  %call.i.i = tail call i32 %7(ptr noundef %3, i32 noundef 112) #7
  %or.i = or i32 %call.i.i, 32768
  %8 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hci.i.i, align 8
  %write32.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %9, i32 0, i32 12
  %10 = ptrtoint ptr %write32.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %write32.i.i, align 4
  tail call void %11(ptr noundef %3, i32 noundef 112, i32 noundef %or.i) #7
  %12 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hci.i.i, align 8
  %read32.i.i9 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %13, i32 0, i32 9
  %14 = ptrtoint ptr %read32.i.i9 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %read32.i.i9, align 4
  %call.i.i10 = tail call i32 %15(ptr noundef %3, i32 noundef 28) #7
  %or.i11 = or i32 %call.i.i10, 32
  %16 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hci.i.i, align 8
  %write32.i.i12 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %17, i32 0, i32 12
  %18 = ptrtoint ptr %write32.i.i12 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %write32.i.i12, align 4
  tail call void %19(ptr noundef %3, i32 noundef 28, i32 noundef %or.i11) #7
  %20 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hci.i.i, align 8
  %read32.i.i14 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %21, i32 0, i32 9
  %22 = ptrtoint ptr %read32.i.i14 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %read32.i.i14, align 4
  %call.i.i15 = tail call i32 %23(ptr noundef %3, i32 noundef 28) #7
  %and.i = and i32 %call.i.i15, -65
  %24 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %hci.i.i, align 8
  %write32.i.i16 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %25, i32 0, i32 12
  %26 = ptrtoint ptr %write32.i.i16 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %write32.i.i16, align 4
  tail call void %27(ptr noundef %3, i32 noundef 28, i32 noundef %and.i) #7
  %28 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %hci.i.i, align 8
  %read32.i.i18 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %29, i32 0, i32 9
  %30 = ptrtoint ptr %read32.i.i18 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %read32.i.i18, align 4
  %call.i.i19 = tail call i32 %31(ptr noundef %3, i32 noundef 28) #7
  %and.i20 = and i32 %call.i.i19, -33
  %32 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %hci.i.i, align 8
  %write32.i.i21 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %33, i32 0, i32 12
  %34 = ptrtoint ptr %write32.i.i21 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %write32.i.i21, align 4
  tail call void %35(ptr noundef %3, i32 noundef 28, i32 noundef %and.i20) #7
  %36 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %hci.i.i, align 8
  %read32.i.i23 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %37, i32 0, i32 9
  %38 = ptrtoint ptr %read32.i.i23 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %read32.i.i23, align 4
  %call.i.i24 = tail call i32 %39(ptr noundef %3, i32 noundef 4096) #7
  %and.i25 = and i32 %call.i.i24, -2621441
  %40 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %hci.i.i, align 8
  %write32.i.i26 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %41, i32 0, i32 12
  %42 = ptrtoint ptr %write32.i.i26 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %write32.i.i26, align 4
  tail call void %43(ptr noundef %3, i32 noundef 4096, i32 noundef %and.i25) #7
  %chip.i = getelementptr inbounds %struct.rtw89_dev, ptr %3, i32 0, i32 3
  %44 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %chip.i, align 4
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %45, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %47)
  %cmp.i = icmp eq i32 %47, 2
  br i1 %cmp.i, label %entry.rtw89_pci_l2_hci_ldo.exit_crit_edge, label %if.end.i

entry.rtw89_pci_l2_hci_ldo.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtw89_pci_l2_hci_ldo.exit

if.end.i:                                         ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.i.i) #7
  %48 = ptrtoint ptr %value.i.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 -1, ptr %value.i.i, align 1, !annotation !503
  %call.i.i27 = call fastcc i32 @rtw89_dbi_read8(ptr noundef %3, i16 noundef zeroext 2888, ptr noundef nonnull %value.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i27)
  %tobool.not.i.i = icmp eq i32 %call.i.i27, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end.i.rtw89_dbi_write8_set.exit.i_crit_edge

if.end.i.rtw89_dbi_write8_set.exit.i_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtw89_dbi_write8_set.exit.i

if.end.i.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %49 = ptrtoint ptr %value.i.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %value.i.i, align 1
  %or9.i.i = or i8 %50, 1
  %call3.i.i = tail call fastcc i32 @rtw89_dbi_write8(ptr noundef %3, i16 noundef zeroext 2888, i8 noundef zeroext %or9.i.i) #7
  br label %rtw89_dbi_write8_set.exit.i

rtw89_dbi_write8_set.exit.i:                      ; preds = %if.end.i.i, %if.end.i.rtw89_dbi_write8_set.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.i.i) #7
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.i4.i) #7
  %51 = ptrtoint ptr %value.i4.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 -1, ptr %value.i4.i, align 1, !annotation !503
  %call.i5.i = call fastcc i32 @rtw89_dbi_read8(ptr noundef %3, i16 noundef zeroext 2888, ptr noundef nonnull %value.i4.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i5.i)
  %tobool.not.i6.i = icmp eq i32 %call.i5.i, 0
  br i1 %tobool.not.i6.i, label %if.end.i9.i, label %rtw89_dbi_write8_set.exit.i.rtw89_dbi_write8_set.exit11.i_crit_edge

rtw89_dbi_write8_set.exit.i.rtw89_dbi_write8_set.exit11.i_crit_edge: ; preds = %rtw89_dbi_write8_set.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtw89_dbi_write8_set.exit11.i

if.end.i9.i:                                      ; preds = %rtw89_dbi_write8_set.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %52 = ptrtoint ptr %value.i4.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %value.i4.i, align 1
  %or9.i7.i = or i8 %53, 1
  %call3.i8.i = tail call fastcc i32 @rtw89_dbi_write8(ptr noundef %3, i16 noundef zeroext 2888, i8 noundef zeroext %or9.i7.i) #7
  br label %rtw89_dbi_write8_set.exit11.i

rtw89_dbi_write8_set.exit11.i:                    ; preds = %if.end.i9.i, %rtw89_dbi_write8_set.exit.i.rtw89_dbi_write8_set.exit11.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.i4.i) #7
  br label %rtw89_pci_l2_hci_ldo.exit

rtw89_pci_l2_hci_ldo.exit:                        ; preds = %rtw89_dbi_write8_set.exit11.i, %entry.rtw89_pci_l2_hci_ldo.exit_crit_edge
  tail call fastcc void @rtw89_pci_link_cfg(ptr noundef %3)
  tail call fastcc void @rtw89_pci_l1ss_cfg(ptr noundef %3)
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @rtw89_pci_driver_init() #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @rtw89_pci_driver, ptr noundef null, ptr noundef nonnull @.str.23) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @rtw89_pci_driver_exit() #1 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @pci_unregister_driver(ptr noundef nonnull @rtw89_pci_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rtw89_pci_link_cfg(ptr noundef %rtwdev) unnamed_addr #0 align 64 {
entry:
  %value.i.i17 = alloca i8, align 1
  %value.i = alloca i8, align 1
  %value.i.i = alloca i8, align 1
  %link_ctrl = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 58
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %link_ctrl) #7
  %2 = ptrtoint ptr %link_ctrl to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %link_ctrl, align 2, !annotation !503
  %call = call i32 @pcie_capability_read_word(ptr noundef %1, i32 noundef 16, ptr noundef nonnull %link_ctrl) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 1
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.3, i32 noundef %call) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %link_ctrl to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %link_ctrl, align 2
  %7 = and i16 %6, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool2.not = icmp eq i16 %7, 0
  br i1 %tobool2.not, label %if.end.if.end4_crit_edge, label %if.then3

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

if.then3:                                         ; preds = %if.end
  %8 = load i8, ptr @rtw89_pci_disable_clkreq, align 1, !range !504
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not.i = icmp eq i8 %8, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then3.if.end4_crit_edge

if.then3.if.end4_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

if.end.i:                                         ; preds = %if.then3
  %call.i = call fastcc i32 @rtw89_dbi_write8(ptr noundef %rtwdev, i16 noundef zeroext 1829, i8 noundef zeroext 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %if.end.i.if.then5.i_crit_edge, label %do.end.i

if.end.i.if.then5.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then5.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 1
  %9 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.7) #10
  br label %if.then5.i

if.then5.i:                                       ; preds = %do.end.i, %if.end.i.if.then5.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.i.i) #7
  %11 = ptrtoint ptr %value.i.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 -1, ptr %value.i.i, align 1, !annotation !503
  %call.i.i = call fastcc i32 @rtw89_dbi_read8(ptr noundef %rtwdev, i16 noundef zeroext 1817, ptr noundef nonnull %value.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %rtw89_dbi_write8_set.exit.i, label %rtw89_dbi_write8_set.exit.thread.i

rtw89_dbi_write8_set.exit.thread.i:               ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.i.i) #7
  br label %do.end13.i

rtw89_dbi_write8_set.exit.i:                      ; preds = %if.then5.i
  %12 = ptrtoint ptr %value.i.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %value.i.i, align 1
  %or9.i.i = or i8 %13, 16
  %call3.i.i = call fastcc i32 @rtw89_dbi_write8(ptr noundef %rtwdev, i16 noundef zeroext 1817, i8 noundef zeroext %or9.i.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %tobool9.not.i = icmp eq i32 %call3.i.i, 0
  br i1 %tobool9.not.i, label %rtw89_dbi_write8_set.exit.i.if.end4_crit_edge, label %rtw89_dbi_write8_set.exit.i.do.end13.i_crit_edge

rtw89_dbi_write8_set.exit.i.do.end13.i_crit_edge: ; preds = %rtw89_dbi_write8_set.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end13.i

rtw89_dbi_write8_set.exit.i.if.end4_crit_edge:    ; preds = %rtw89_dbi_write8_set.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

do.end13.i:                                       ; preds = %rtw89_dbi_write8_set.exit.i.do.end13.i_crit_edge, %rtw89_dbi_write8_set.exit.thread.i
  %retval.0.i3.i = phi i32 [ %call.i.i, %rtw89_dbi_write8_set.exit.thread.i ], [ %call3.i.i, %rtw89_dbi_write8_set.exit.i.do.end13.i_crit_edge ]
  %dev14.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 1
  %14 = ptrtoint ptr %dev14.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev14.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.12, i32 noundef %retval.0.i3.i) #10
  br label %if.end4

if.end4:                                          ; preds = %do.end13.i, %rtw89_dbi_write8_set.exit.i.if.end4_crit_edge, %if.then3.if.end4_crit_edge, %if.end.if.end4_crit_edge
  %16 = ptrtoint ptr %link_ctrl to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %link_ctrl, align 2
  %18 = and i16 %17, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %18)
  %tobool7.not = icmp eq i16 %18, 0
  br i1 %tobool7.not, label %if.end4.cleanup_crit_edge, label %if.then8

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then8:                                         ; preds = %if.end4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.i) #7
  %19 = ptrtoint ptr %value.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %value.i, align 1
  %20 = load i8, ptr @rtw89_pci_disable_aspm_l1, align 1, !range !504
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool.not.i18 = icmp eq i8 %20, 0
  br i1 %tobool.not.i18, label %if.end.i21, label %if.then8.rtw89_pci_aspm_set.exit_crit_edge

if.then8.rtw89_pci_aspm_set.exit_crit_edge:       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtw89_pci_aspm_set.exit

if.end.i21:                                       ; preds = %if.then8
  %call.i19 = call fastcc i32 @rtw89_dbi_read8(ptr noundef %rtwdev, i16 noundef zeroext 1807, ptr noundef nonnull %value.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i19)
  %tobool1.not.i20 = icmp eq i32 %call.i19, 0
  br i1 %tobool1.not.i20, label %if.end.i21.if.end3.i_crit_edge, label %do.end.i23

if.end.i21.if.end3.i_crit_edge:                   ; preds = %if.end.i21
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3.i

do.end.i23:                                       ; preds = %if.end.i21
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i22 = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 1
  %21 = ptrtoint ptr %dev.i22 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev.i22, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.14) #10
  br label %if.end3.i

if.end3.i:                                        ; preds = %do.end.i23, %if.end.i21.if.end3.i_crit_edge
  %23 = ptrtoint ptr %value.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %value.i, align 1
  %25 = and i8 %24, -64
  %26 = or i8 %25, 35
  %call39.i = call fastcc i32 @rtw89_dbi_write8(ptr noundef %rtwdev, i16 noundef zeroext 1807, i8 noundef zeroext %26) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39.i)
  %tobool40.not.i = icmp eq i32 %call39.i, 0
  br i1 %tobool40.not.i, label %if.end3.i.if.then48.i_crit_edge, label %do.end44.i

if.end3.i.if.then48.i_crit_edge:                  ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then48.i

do.end44.i:                                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev45.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 1
  %27 = ptrtoint ptr %dev45.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev45.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.14) #10
  br label %if.then48.i

if.then48.i:                                      ; preds = %do.end44.i, %if.end3.i.if.then48.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.i.i17) #7
  %29 = ptrtoint ptr %value.i.i17 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 -1, ptr %value.i.i17, align 1, !annotation !503
  %call.i.i24 = call fastcc i32 @rtw89_dbi_read8(ptr noundef %rtwdev, i16 noundef zeroext 1817, ptr noundef nonnull %value.i.i17) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i24)
  %tobool.not.i.i25 = icmp eq i32 %call.i.i24, 0
  br i1 %tobool.not.i.i25, label %rtw89_dbi_write8_set.exit.i29, label %rtw89_dbi_write8_set.exit.thread.i26

rtw89_dbi_write8_set.exit.thread.i26:             ; preds = %if.then48.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.i.i17) #7
  br label %do.end56.i

rtw89_dbi_write8_set.exit.i29:                    ; preds = %if.then48.i
  %30 = ptrtoint ptr %value.i.i17 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %value.i.i17, align 1
  %or9.i.i27 = or i8 %31, 8
  %call3.i.i28 = call fastcc i32 @rtw89_dbi_write8(ptr noundef %rtwdev, i16 noundef zeroext 1817, i8 noundef zeroext %or9.i.i27) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.i.i17) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i28)
  %tobool52.not.i = icmp eq i32 %call3.i.i28, 0
  br i1 %tobool52.not.i, label %rtw89_dbi_write8_set.exit.i29.rtw89_pci_aspm_set.exit_crit_edge, label %rtw89_dbi_write8_set.exit.i29.do.end56.i_crit_edge

rtw89_dbi_write8_set.exit.i29.do.end56.i_crit_edge: ; preds = %rtw89_dbi_write8_set.exit.i29
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end56.i

rtw89_dbi_write8_set.exit.i29.rtw89_pci_aspm_set.exit_crit_edge: ; preds = %rtw89_dbi_write8_set.exit.i29
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtw89_pci_aspm_set.exit

do.end56.i:                                       ; preds = %rtw89_dbi_write8_set.exit.i29.do.end56.i_crit_edge, %rtw89_dbi_write8_set.exit.thread.i26
  %retval.0.i3.i30 = phi i32 [ %call.i.i24, %rtw89_dbi_write8_set.exit.thread.i26 ], [ %call3.i.i28, %rtw89_dbi_write8_set.exit.i29.do.end56.i_crit_edge ]
  %dev57.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 1
  %32 = ptrtoint ptr %dev57.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev57.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %33, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.12, i32 noundef %retval.0.i3.i30) #10
  br label %rtw89_pci_aspm_set.exit

rtw89_pci_aspm_set.exit:                          ; preds = %do.end56.i, %rtw89_dbi_write8_set.exit.i29.rtw89_pci_aspm_set.exit_crit_edge, %if.then8.rtw89_pci_aspm_set.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.i) #7
  br label %cleanup

cleanup:                                          ; preds = %rtw89_pci_aspm_set.exit, %if.end4.cleanup_crit_edge, %do.end
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %link_ctrl) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rtw89_pci_l1ss_cfg(ptr noundef %rtwdev) unnamed_addr #0 align 64 {
entry:
  %value.i.i = alloca i8, align 1
  %l1ss_ctrl = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 58
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %l1ss_ctrl) #7
  %2 = ptrtoint ptr %l1ss_ctrl to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %l1ss_ctrl, align 4, !annotation !503
  %3 = load i8, ptr @rtw89_pci_disable_l1ss, align 1, !range !504
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call zeroext i16 @pci_find_ext_capability(ptr noundef %1, i32 noundef 30) #7
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call)
  %tobool2.not = icmp eq i16 %call, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %conv = zext i16 %call to i32
  %add = add nuw nsw i32 %conv, 8
  %call5 = call i32 @pci_read_config_dword(ptr noundef %1, i32 noundef %add, ptr noundef nonnull %l1ss_ctrl) #7
  %4 = ptrtoint ptr %l1ss_ctrl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %l1ss_ctrl, align 4
  %and = and i32 %5, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp eq i32 %and, 0
  br i1 %tobool6.not, label %if.end4.cleanup_crit_edge, label %if.then7

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then7:                                         ; preds = %if.end4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.i.i) #7
  %6 = ptrtoint ptr %value.i.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %value.i.i, align 1, !annotation !503
  %call.i.i = call fastcc i32 @rtw89_dbi_read8(ptr noundef %rtwdev, i16 noundef zeroext 1816, ptr noundef nonnull %value.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %rtw89_dbi_write8_set.exit.i, label %rtw89_dbi_write8_set.exit.thread.i

rtw89_dbi_write8_set.exit.thread.i:               ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.i.i) #7
  br label %do.end.i

rtw89_dbi_write8_set.exit.i:                      ; preds = %if.then7
  %7 = ptrtoint ptr %value.i.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %value.i.i, align 1
  %or9.i.i = or i8 %8, 32
  %call3.i.i = call fastcc i32 @rtw89_dbi_write8(ptr noundef %rtwdev, i16 noundef zeroext 1816, i8 noundef zeroext %or9.i.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %tobool2.not.i = icmp eq i32 %call3.i.i, 0
  br i1 %tobool2.not.i, label %rtw89_dbi_write8_set.exit.i.cleanup_crit_edge, label %rtw89_dbi_write8_set.exit.i.do.end.i_crit_edge

rtw89_dbi_write8_set.exit.i.do.end.i_crit_edge:   ; preds = %rtw89_dbi_write8_set.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

rtw89_dbi_write8_set.exit.i.cleanup_crit_edge:    ; preds = %rtw89_dbi_write8_set.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end.i:                                         ; preds = %rtw89_dbi_write8_set.exit.i.do.end.i_crit_edge, %rtw89_dbi_write8_set.exit.thread.i
  %retval.0.i3.i = phi i32 [ %call.i.i, %rtw89_dbi_write8_set.exit.thread.i ], [ %call3.i.i, %rtw89_dbi_write8_set.exit.i.do.end.i_crit_edge ]
  %dev.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 1
  %9 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.12, i32 noundef %retval.0.i3.i) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end.i, %rtw89_dbi_write8_set.exit.i.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %l1ss_ctrl) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rtw89_dbi_read8(ptr noundef %rtwdev, i16 noundef zeroext %addr, ptr nocapture noundef writeonly %value) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i16 %addr to i32
  %and = and i16 %addr, 4092
  %hci.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 7
  %0 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hci.i, align 8
  %write16.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %write16.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %write16.i, align 4
  tail call void %3(ptr noundef %rtwdev, i32 noundef 4240, i16 noundef zeroext %and) #7
  %4 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hci.i, align 8
  %write8.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %5, i32 0, i32 10
  %6 = ptrtoint ptr %write8.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %write8.i, align 4
  tail call void %7(ptr noundef %rtwdev, i32 noundef 4242, i8 noundef zeroext 2) #7
  %call = tail call i64 @ktime_get() #7
  %add.i = add i64 %call, 200000
  %8 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hci.i, align 8
  %read8.i71 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %9, i32 0, i32 7
  %10 = ptrtoint ptr %read8.i71 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %read8.i71, align 4
  %call.i72 = tail call zeroext i8 %11(ptr noundef %rtwdev, i32 noundef 4242) #7
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call.i72)
  %tobool.not73 = icmp eq i8 %call.i72, 0
  br i1 %tobool.not73, label %entry.if.then21_crit_edge, label %entry.land.lhs.true_crit_edge

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  br label %land.lhs.true

entry.if.then21_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then21

land.lhs.true:                                    ; preds = %cond.false.land.lhs.true_crit_edge, %entry.land.lhs.true_crit_edge
  %call5 = tail call i64 @ktime_get() #7
  call void @__sanitizer_cov_trace_cmp8(i64 %call5, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call5, %add.i
  br i1 %cmp3.i, label %if.then8, label %cond.false

if.then8:                                         ; preds = %land.lhs.true
  %12 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hci.i, align 8
  %read8.i66 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %13, i32 0, i32 7
  %14 = ptrtoint ptr %read8.i66 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %read8.i66, align 4
  %call.i67 = tail call zeroext i8 %15(ptr noundef %rtwdev, i32 noundef 4242) #7
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call.i67)
  %phi.cmp = icmp eq i8 %call.i67, 0
  br i1 %phi.cmp, label %if.then8.if.then21_crit_edge, label %do.end

if.then8.if.then21_crit_edge:                     ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then21

cond.false:                                       ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 2147480) #7
  %17 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %hci.i, align 8
  %read8.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %18, i32 0, i32 7
  %19 = ptrtoint ptr %read8.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %read8.i, align 4
  %call.i = tail call zeroext i8 %20(ptr noundef %rtwdev, i32 noundef 4242) #7
  %tobool.not = icmp eq i8 %call.i, 0
  br i1 %tobool.not, label %cond.false.if.then21_crit_edge, label %cond.false.land.lhs.true_crit_edge

cond.false.land.lhs.true_crit_edge:               ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true

cond.false.if.then21_crit_edge:                   ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then21

if.then21:                                        ; preds = %cond.false.if.then21_crit_edge, %if.then8.if.then21_crit_edge, %entry.if.then21_crit_edge
  %and23 = and i16 %addr, 3
  %add = or i16 %and23, 4248
  %conv25 = zext i16 %add to i32
  %21 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %hci.i, align 8
  %read8.i69 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %22, i32 0, i32 7
  %23 = ptrtoint ptr %read8.i69 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %read8.i69, align 4
  %call.i70 = tail call zeroext i8 %24(ptr noundef %rtwdev, i32 noundef %conv25) #7
  %25 = ptrtoint ptr %value to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %call.i70, ptr %value, align 1
  br label %if.end47

do.end:                                           ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1456, i32 noundef 9, ptr noundef nonnull @.str.1, i32 noundef %conv) #7
  br label %if.end47

if.end47:                                         ; preds = %do.end, %if.then21
  %ret.0 = phi i32 [ -5, %do.end ], [ 0, %if.then21 ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rtw89_dbi_write8(ptr noundef %rtwdev, i16 noundef zeroext %addr, i8 noundef zeroext %data) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i16 %addr to i32
  %and = and i16 %addr, 3
  %and3 = and i16 %addr, 4092
  %0 = shl nuw i16 4096, %and
  %or75 = or i16 %0, %and3
  %1 = or i16 %and, 4244
  %add = zext i16 %1 to i32
  %hci.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 7
  %2 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hci.i, align 8
  %write8.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %write8.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %write8.i, align 4
  tail call void %5(ptr noundef %rtwdev, i32 noundef %add, i8 noundef zeroext %data) #7
  %6 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hci.i, align 8
  %write16.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %7, i32 0, i32 11
  %8 = ptrtoint ptr %write16.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %write16.i, align 4
  tail call void %9(ptr noundef %rtwdev, i32 noundef 4240, i16 noundef zeroext %or75) #7
  %10 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hci.i, align 8
  %write8.i78 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %11, i32 0, i32 10
  %12 = ptrtoint ptr %write8.i78 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %write8.i78, align 4
  tail call void %13(ptr noundef %rtwdev, i32 noundef 4242, i8 noundef zeroext 1) #7
  %call11 = tail call i64 @ktime_get() #7
  %add.i = add i64 %call11, 200000
  %14 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hci.i, align 8
  %read8.i83 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %15, i32 0, i32 7
  %16 = ptrtoint ptr %read8.i83 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %read8.i83, align 4
  %call.i84 = tail call zeroext i8 %17(ptr noundef %rtwdev, i32 noundef 4242) #7
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call.i84)
  %tobool.not85 = icmp eq i8 %call.i84, 0
  br i1 %tobool.not85, label %entry.if.end57_crit_edge, label %entry.land.lhs.true_crit_edge

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  br label %land.lhs.true

entry.if.end57_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end57

land.lhs.true:                                    ; preds = %cond.false.land.lhs.true_crit_edge, %entry.land.lhs.true_crit_edge
  %call15 = tail call i64 @ktime_get() #7
  call void @__sanitizer_cov_trace_cmp8(i64 %call15, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call15, %add.i
  br i1 %cmp3.i, label %if.then18, label %cond.false

if.then18:                                        ; preds = %land.lhs.true
  %18 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hci.i, align 8
  %read8.i81 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %19, i32 0, i32 7
  %20 = ptrtoint ptr %read8.i81 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %read8.i81, align 4
  %call.i82 = tail call zeroext i8 %21(ptr noundef %rtwdev, i32 noundef 4242) #7
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call.i82)
  %phi.cmp = icmp eq i8 %call.i82, 0
  br i1 %phi.cmp, label %if.then18.if.end57_crit_edge, label %do.end

if.then18.if.end57_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end57

cond.false:                                       ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %22 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %22(i32 noundef 2147480) #7
  %23 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %hci.i, align 8
  %read8.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %24, i32 0, i32 7
  %25 = ptrtoint ptr %read8.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %read8.i, align 4
  %call.i = tail call zeroext i8 %26(ptr noundef %rtwdev, i32 noundef 4242) #7
  %tobool.not = icmp eq i8 %call.i, 0
  br i1 %tobool.not, label %cond.false.if.end57_crit_edge, label %cond.false.land.lhs.true_crit_edge

cond.false.land.lhs.true_crit_edge:               ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true

cond.false.if.end57_crit_edge:                    ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end57

do.end:                                           ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1434, i32 noundef 9, ptr noundef nonnull @.str.2, i32 noundef %conv) #7
  br label %if.end57

if.end57:                                         ; preds = %do.end, %cond.false.if.end57_crit_edge, %if.then18.if.end57_crit_edge, %entry.if.end57_crit_edge
  %cond = phi i32 [ -110, %do.end ], [ 0, %if.then18.if.end57_crit_edge ], [ 0, %entry.if.end57_crit_edge ], [ 0, %cond.false.if.end57_crit_edge ]
  ret i32 %cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcie_capability_read_word(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @pci_find_ext_capability(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_dword(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtw89_pci_probe(ptr noundef %pdev, ptr nocapture noundef readonly %id) #0 align 64 {
entry:
  %dma.i.i17.i.i = alloca i32, align 4
  %dma.i.i.i.i.i = alloca i32, align 4
  %dma.i.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @ieee80211_alloc_hw_nm(i32 noundef 551200, ptr noundef nonnull @rtw89_ops, ptr noundef null) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.24) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %call.i, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i, ptr %1, align 128
  %dev2 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %dev3 = getelementptr inbounds %struct.rtw89_dev, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %dev3 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %dev2, ptr %dev3, align 4
  %hci = getelementptr inbounds %struct.rtw89_dev, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %hci to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @rtw89_pci_ops, ptr %hci, align 8
  %type = getelementptr inbounds %struct.rtw89_dev, ptr %1, i32 0, i32 7, i32 1
  %5 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %type, align 4
  %rpwm_addr = getelementptr inbounds %struct.rtw89_dev, ptr %1, i32 0, i32 7, i32 2
  %6 = ptrtoint ptr %rpwm_addr to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 4288, ptr %rpwm_addr, align 8
  %cpwm_addr = getelementptr inbounds %struct.rtw89_dev, ptr %1, i32 0, i32 7, i32 3
  %7 = ptrtoint ptr %cpwm_addr to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 33136, ptr %cpwm_addr, align 4
  %wiphy.i = getelementptr inbounds %struct.ieee80211_hw, ptr %call.i, i32 0, i32 1
  %8 = ptrtoint ptr %wiphy.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %wiphy.i, align 8
  %parent.i.i = getelementptr inbounds %struct.wiphy, ptr %9, i32 0, i32 56, i32 1
  %10 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %dev2, ptr %parent.i.i, align 8
  %driver_data = getelementptr inbounds %struct.pci_device_id, ptr %id, i32 0, i32 6
  %11 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %driver_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cond = icmp eq i32 %12, 0
  br i1 %cond, label %sw.bb, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  %chip = getelementptr inbounds %struct.rtw89_dev, ptr %1, i32 0, i32 3
  %13 = ptrtoint ptr %chip to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @rtw8852a_chip_info, ptr %chip, align 4
  %call9 = tail call i32 @rtw89_core_init(ptr noundef %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end16, label %do.end14

do.end14:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.27) #10
  br label %err_release_hw

if.end16:                                         ; preds = %sw.bb
  %call.i103 = tail call i32 @pci_enable_device(ptr noundef %pdev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i103)
  %tobool.not.i = icmp eq i32 %call.i103, 0
  br i1 %tobool.not.i, label %if.end24, label %do.end22

do.end22:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.201) #10
  %18 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.30) #10
  br label %err_core_deinit

if.end24:                                         ; preds = %if.end16
  %priv.i = getelementptr inbounds %struct.rtw89_dev, ptr %1, i32 0, i32 58
  tail call void @pci_set_master(ptr noundef %pdev) #7
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %1, align 128
  %driver_data.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %22 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %21, ptr %driver_data.i.i.i, align 4
  %23 = ptrtoint ptr %priv.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %pdev, ptr %priv.i, align 8
  %call.i.i = tail call i32 @pci_request_regions(ptr noundef %pdev, ptr noundef nonnull @.str.23) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %do.end.i.i

do.end.i.i:                                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  %24 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.211) #10
  br label %do.end.i106

if.end.i.i:                                       ; preds = %if.end24
  %call2.i.i = tail call i32 @dma_set_mask(ptr noundef %dev2, i64 noundef 4294967295) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool3.not.i.i, label %if.end9.i.i, label %if.end.i.i.err_release_regions.i.i_crit_edge

if.end.i.i.err_release_regions.i.i_crit_edge:     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_release_regions.i.i

if.end9.i.i:                                      ; preds = %if.end.i.i
  %call11.i.i = tail call i32 @dma_set_coherent_mask(ptr noundef %dev2, i64 noundef 4294967295) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i.i)
  %tobool12.not.i.i = icmp eq i32 %call11.i.i, 0
  br i1 %tobool12.not.i.i, label %if.end18.i.i, label %if.end9.i.i.err_release_regions.i.i_crit_edge

if.end9.i.i.err_release_regions.i.i_crit_edge:    ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_release_regions.i.i

if.end18.i.i:                                     ; preds = %if.end9.i.i
  %end.i.i = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 2, i32 1
  %26 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %end.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp.i.i = icmp eq i32 %27, 0
  br i1 %cmp.i.i, label %if.end18.i.i.cond.end.i.i_crit_edge, label %cond.false.i.i

if.end18.i.i.cond.end.i.i_crit_edge:              ; preds = %if.end18.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end.i.i

cond.false.i.i:                                   ; preds = %if.end18.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i.i = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 2
  %28 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx.i.i, align 8
  %sub.i.i = add i32 %27, 1
  %add.i.i = sub i32 %sub.i.i, %29
  br label %cond.end.i.i

cond.end.i.i:                                     ; preds = %cond.false.i.i, %if.end18.i.i.cond.end.i.i_crit_edge
  %cond.i.i = phi i32 [ %add.i.i, %cond.false.i.i ], [ 0, %if.end18.i.i.cond.end.i.i_crit_edge ]
  %call26.i.i = tail call ptr @pci_iomap(ptr noundef %pdev, i32 noundef 2, i32 noundef %cond.i.i) #7
  %mmap.i.i = getelementptr inbounds %struct.rtw89_dev, ptr %1, i32 37, i32 51, i32 6, i32 1, i32 1
  %30 = ptrtoint ptr %mmap.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call26.i.i, ptr %mmap.i.i, align 4
  %tobool28.not.i.i = icmp eq ptr %call26.i.i, null
  br i1 %tobool28.not.i.i, label %cond.end.i.i.err_release_regions.i.i_crit_edge, label %if.end.i107

cond.end.i.i.err_release_regions.i.i_crit_edge:   ; preds = %cond.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_release_regions.i.i

err_release_regions.i.i:                          ; preds = %cond.end.i.i.err_release_regions.i.i_crit_edge, %if.end9.i.i.err_release_regions.i.i_crit_edge, %if.end.i.i.err_release_regions.i.i_crit_edge
  %.str.220.sink.i.i = phi ptr [ @.str.214, %if.end.i.i.err_release_regions.i.i_crit_edge ], [ @.str.217, %if.end9.i.i.err_release_regions.i.i_crit_edge ], [ @.str.220, %cond.end.i.i.err_release_regions.i.i_crit_edge ]
  %ret.0.i.i = phi i32 [ %call2.i.i, %if.end.i.i.err_release_regions.i.i_crit_edge ], [ %call11.i.i, %if.end9.i.i.err_release_regions.i.i_crit_edge ], [ -5, %cond.end.i.i.err_release_regions.i.i_crit_edge ]
  %31 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull %.str.220.sink.i.i) #10
  tail call void @pci_release_regions(ptr noundef %pdev) #7
  br label %do.end.i106

do.end.i106:                                      ; preds = %err_release_regions.i.i, %do.end.i.i
  %retval.0.i.ph.i = phi i32 [ %ret.0.i.i, %err_release_regions.i.i ], [ %call.i.i, %do.end.i.i ]
  %33 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %34, ptr noundef nonnull @.str.203) #10
  br label %do.end30

if.end.i107:                                      ; preds = %cond.end.i.i
  %tx_rings.i.i.i = getelementptr inbounds %struct.rtw89_dev, ptr %1, i32 1, i32 5, i32 1, i32 4
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.inc.i.i.i.for.body.i.i.i_crit_edge, %if.end.i107
  %i.048.i.i.i = phi i32 [ 0, %if.end.i107 ], [ %inc.i.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ]
  %arrayidx.i.i.i = getelementptr [13 x %struct.rtw89_pci_tx_ring], ptr %tx_rings.i.i.i, i32 0, i32 %i.048.i.i.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dma.i.i.i.i) #7
  %35 = ptrtoint ptr %dma.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 -1, ptr %dma.i.i.i.i, align 4, !annotation !503
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dma.i.i.i.i.i) #7
  %36 = ptrtoint ptr %dma.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 -1, ptr %dma.i.i.i.i.i, align 4, !annotation !503
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %i.048.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %i.048.i.i.i, 12
  br i1 %cmp.i.i.i.i.i, label %if.end.thread.i.i.i.i, label %if.end.i.i.i.i.i

if.end.thread.i.i.i.i:                            ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dma.i.i.i.i.i) #7
  br label %if.end8.i.i.i.i

if.end.i.i.i.i.i:                                 ; preds = %for.body.i.i.i
  %call.i.i.i.i.i.i = call ptr @dma_alloc_attrs(ptr noundef %dev2, i32 noundef 65536, ptr noundef nonnull %dma.i.i.i.i.i, i32 noundef 3264, i32 noundef 0) #7
  %tobool.not.i.i.i.i.i = icmp eq ptr %call.i.i.i.i.i.i, null
  br i1 %tobool.not.i.i.i.i.i, label %do.end.i.i.i.i, label %if.end3.i.i.i.i.i

if.end3.i.i.i.i.i:                                ; preds = %if.end.i.i.i.i.i
  %free_pages.i.i.i.i.i = getelementptr inbounds %struct.rtw89_pci_tx_wd_ring, ptr %arrayidx.i.i.i, i32 0, i32 3
  %37 = ptrtoint ptr %free_pages.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %free_pages.i.i.i.i.i, ptr %free_pages.i.i.i.i.i, align 4
  %prev.i.i.i.i.i.i = getelementptr inbounds %struct.rtw89_pci_tx_wd_ring, ptr %arrayidx.i.i.i, i32 0, i32 3, i32 1
  %38 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %free_pages.i.i.i.i.i, ptr %prev.i.i.i.i.i.i, align 4
  %39 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call.i.i.i.i.i.i, ptr %arrayidx.i.i.i, align 4
  %40 = ptrtoint ptr %dma.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %dma.i.i.i.i.i, align 4
  %dma5.i.i.i.i.i = getelementptr inbounds %struct.rtw89_pci_tx_wd_ring, ptr %arrayidx.i.i.i, i32 0, i32 1
  %42 = ptrtoint ptr %dma5.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %dma5.i.i.i.i.i, align 4
  %page_size6.i.i.i.i.i = getelementptr inbounds %struct.rtw89_pci_tx_wd_ring, ptr %arrayidx.i.i.i, i32 0, i32 4
  %43 = ptrtoint ptr %page_size6.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 128, ptr %page_size6.i.i.i.i.i, align 4
  %page_num7.i.i.i.i.i = getelementptr inbounds %struct.rtw89_pci_tx_wd_ring, ptr %arrayidx.i.i.i, i32 0, i32 5
  %44 = ptrtoint ptr %page_num7.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 512, ptr %page_num7.i.i.i.i.i, align 4
  %curr_num.i.i.i.i.i.i = getelementptr inbounds %struct.rtw89_pci_tx_wd_ring, ptr %arrayidx.i.i.i, i32 0, i32 6
  br label %for.body.i.i.i.i.i

for.body.i.i.i.i.i:                               ; preds = %rtw89_pci_enqueue_txwd.exit.i.i.i.i.i.for.body.i.i.i.i.i_crit_edge, %if.end3.i.i.i.i.i
  %i.04.i.i.i.i.i = phi i32 [ 0, %if.end3.i.i.i.i.i ], [ %inc.i.i.i.i.i, %rtw89_pci_enqueue_txwd.exit.i.i.i.i.i.for.body.i.i.i.i.i_crit_edge ]
  %page_offset.03.i.i.i.i.i = phi i32 [ 0, %if.end3.i.i.i.i.i ], [ %add9.i.i.i.i.i, %rtw89_pci_enqueue_txwd.exit.i.i.i.i.i.for.body.i.i.i.i.i_crit_edge ]
  %arrayidx.i.i.i.i.i = getelementptr %struct.rtw89_pci_tx_wd_ring, ptr %arrayidx.i.i.i, i32 0, i32 2, i32 %i.04.i.i.i.i.i
  %45 = ptrtoint ptr %dma.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %dma.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %46, %page_offset.03.i.i.i.i.i
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %call.i.i.i.i.i.i, i32 %page_offset.03.i.i.i.i.i
  %queue.i.i.i.i.i = getelementptr %struct.rtw89_pci_tx_wd_ring, ptr %arrayidx.i.i.i, i32 0, i32 2, i32 %i.04.i.i.i.i.i, i32 1
  %lock.i.i.i.i.i.i = getelementptr %struct.rtw89_pci_tx_wd_ring, ptr %arrayidx.i.i.i, i32 0, i32 2, i32 %i.04.i.i.i.i.i, i32 1, i32 2
  call void @__raw_spin_lock_init(ptr noundef %lock.i.i.i.i.i.i, ptr noundef nonnull @.str.234, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #7
  %47 = ptrtoint ptr %queue.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %queue.i.i.i.i.i, ptr %queue.i.i.i.i.i, align 4
  %prev.i.i.i.i.i.i.i = getelementptr inbounds %struct.anon.65, ptr %queue.i.i.i.i.i, i32 0, i32 1
  %48 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %queue.i.i.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %qlen.i.i.i.i.i.i.i = getelementptr %struct.rtw89_pci_tx_wd_ring, ptr %arrayidx.i.i.i, i32 0, i32 2, i32 %i.04.i.i.i.i.i, i32 1, i32 1
  %49 = ptrtoint ptr %qlen.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 0, ptr %qlen.i.i.i.i.i.i.i, align 4
  %50 = ptrtoint ptr %arrayidx.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store volatile ptr %arrayidx.i.i.i.i.i, ptr %arrayidx.i.i.i.i.i, align 4
  %prev.i1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %arrayidx.i.i.i.i.i, i32 0, i32 1
  %51 = ptrtoint ptr %prev.i1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %arrayidx.i.i.i.i.i, ptr %prev.i1.i.i.i.i.i, align 4
  %paddr.i.i.i.i.i = getelementptr %struct.rtw89_pci_tx_wd_ring, ptr %arrayidx.i.i.i, i32 0, i32 2, i32 %i.04.i.i.i.i.i, i32 3
  %52 = ptrtoint ptr %paddr.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %add.i.i.i.i.i, ptr %paddr.i.i.i.i.i, align 4
  %vaddr.i.i.i.i.i = getelementptr %struct.rtw89_pci_tx_wd_ring, ptr %arrayidx.i.i.i, i32 0, i32 2, i32 %i.04.i.i.i.i.i, i32 2
  %53 = ptrtoint ptr %vaddr.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %add.ptr.i.i.i.i.i, ptr %vaddr.i.i.i.i.i, align 4
  %len.i.i.i.i.i = getelementptr %struct.rtw89_pci_tx_wd_ring, ptr %arrayidx.i.i.i, i32 0, i32 2, i32 %i.04.i.i.i.i.i, i32 4
  %54 = ptrtoint ptr %len.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 128, ptr %len.i.i.i.i.i, align 4
  %seq.i.i.i.i.i = getelementptr %struct.rtw89_pci_tx_wd_ring, ptr %arrayidx.i.i.i, i32 0, i32 2, i32 %i.04.i.i.i.i.i, i32 5
  %55 = ptrtoint ptr %seq.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %i.04.i.i.i.i.i, ptr %seq.i.i.i.i.i, align 4
  %56 = ptrtoint ptr %page_size6.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %page_size6.i.i.i.i.i, align 4
  %58 = call ptr @memset(ptr %add.ptr.i.i.i.i.i, i32 0, i32 %57)
  %59 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %prev.i.i.i.i.i.i, align 4
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %arrayidx.i.i.i.i.i, ptr noundef %60, ptr noundef %free_pages.i.i.i.i.i) #7
  br i1 %call.i.i.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.i.i, label %for.body.i.i.i.i.i.rtw89_pci_enqueue_txwd.exit.i.i.i.i.i_crit_edge

for.body.i.i.i.i.i.rtw89_pci_enqueue_txwd.exit.i.i.i.i.i_crit_edge: ; preds = %for.body.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtw89_pci_enqueue_txwd.exit.i.i.i.i.i

if.end.i.i.i.i.i.i.i.i:                           ; preds = %for.body.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %61 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %arrayidx.i.i.i.i.i, ptr %prev.i.i.i.i.i.i, align 4
  %62 = ptrtoint ptr %arrayidx.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %free_pages.i.i.i.i.i, ptr %arrayidx.i.i.i.i.i, align 4
  %63 = ptrtoint ptr %prev.i1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %60, ptr %prev.i1.i.i.i.i.i, align 4
  %64 = ptrtoint ptr %60 to i32
  call void @__asan_store4_noabort(i32 %64)
  store volatile ptr %arrayidx.i.i.i.i.i, ptr %60, align 4
  br label %rtw89_pci_enqueue_txwd.exit.i.i.i.i.i

rtw89_pci_enqueue_txwd.exit.i.i.i.i.i:            ; preds = %if.end.i.i.i.i.i.i.i.i, %for.body.i.i.i.i.i.rtw89_pci_enqueue_txwd.exit.i.i.i.i.i_crit_edge
  %65 = ptrtoint ptr %curr_num.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %curr_num.i.i.i.i.i.i, align 4
  %inc.i.i.i.i.i.i = add i32 %66, 1
  store i32 %inc.i.i.i.i.i.i, ptr %curr_num.i.i.i.i.i.i, align 4
  %add9.i.i.i.i.i = add nuw nsw i32 %page_offset.03.i.i.i.i.i, 128
  %inc.i.i.i.i.i = add nuw nsw i32 %i.04.i.i.i.i.i, 1
  %exitcond.not.i.i.i.i.i = icmp eq i32 %inc.i.i.i.i.i, 512
  br i1 %exitcond.not.i.i.i.i.i, label %if.end.i.i.i.i, label %rtw89_pci_enqueue_txwd.exit.i.i.i.i.i.for.body.i.i.i.i.i_crit_edge

rtw89_pci_enqueue_txwd.exit.i.i.i.i.i.for.body.i.i.i.i.i_crit_edge: ; preds = %rtw89_pci_enqueue_txwd.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i.i.i.i

do.end.i.i.i.i:                                   ; preds = %if.end.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dma.i.i.i.i.i) #7
  %67 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %dev3, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %68, ptr noundef nonnull @.str.229, i32 noundef %i.048.i.i.i) #10
  br label %do.end.i.i.i

if.end.i.i.i.i:                                   ; preds = %rtw89_pci_enqueue_txwd.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dma.i.i.i.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %i.048.i.i.i)
  %69 = icmp ult i32 %i.048.i.i.i, 13
  br i1 %69, label %switch.lookup, label %do.end6.i.i.i.i

do.end6.i.i.i.i:                                  ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %70 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %dev3, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %71, ptr noundef nonnull @.str.232, i32 noundef %i.048.i.i.i) #10
  br label %err_free_wd_ring.i.i.i.i

switch.lookup:                                    ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %switch.gep = getelementptr inbounds [13 x i32], ptr @switch.table.rtw89_pci_probe, i32 0, i32 %i.048.i.i.i
  %72 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %72)
  %switch.load = load i32, ptr %switch.gep, align 4
  %switch.gep288 = getelementptr inbounds [13 x i32], ptr @switch.table.rtw89_pci_probe.250, i32 0, i32 %i.048.i.i.i
  %73 = ptrtoint ptr %switch.gep288 to i32
  call void @__asan_load4_noabort(i32 %73)
  %switch.load289 = load i32, ptr %switch.gep288, align 4
  %switch.gep290 = getelementptr inbounds [13 x i32], ptr @switch.table.rtw89_pci_probe.251, i32 0, i32 %i.048.i.i.i
  %74 = ptrtoint ptr %switch.gep290 to i32
  call void @__asan_load4_noabort(i32 %74)
  %switch.load291 = load i32, ptr %switch.gep290, align 4
  %switch.gep292 = getelementptr inbounds [13 x i32], ptr @switch.table.rtw89_pci_probe.252, i32 0, i32 %i.048.i.i.i
  %75 = ptrtoint ptr %switch.gep292 to i32
  call void @__asan_load4_noabort(i32 %75)
  %switch.load293 = load i32, ptr %switch.gep292, align 4
  %switch.gep294 = getelementptr inbounds [13 x i32], ptr @switch.table.rtw89_pci_probe.253, i32 0, i32 %i.048.i.i.i
  %76 = ptrtoint ptr %switch.gep294 to i32
  call void @__asan_load4_noabort(i32 %76)
  %switch.load295 = load i32, ptr %switch.gep294, align 4
  br label %if.end8.i.i.i.i

if.end8.i.i.i.i:                                  ; preds = %switch.lookup, %if.end.thread.i.i.i.i
  %.sink76.i.i.i.i.i = phi i32 [ 4152, %if.end.thread.i.i.i.i ], [ %switch.load, %switch.lookup ]
  %.sink75.i.i.i.i.i = phi i32 [ 4224, %if.end.thread.i.i.i.i ], [ %switch.load289, %switch.lookup ]
  %.sink74.i.i.i.i.i = phi i32 [ 4648, %if.end.thread.i.i.i.i ], [ %switch.load291, %switch.lookup ]
  %.sink73.i.i.i.i.i = phi i32 [ 4448, %if.end.thread.i.i.i.i ], [ %switch.load293, %switch.lookup ]
  %.sink.i.i.i.i.i = phi i32 [ 4452, %if.end.thread.i.i.i.i ], [ %switch.load295, %switch.lookup ]
  %call.i.i.i.i.i = call ptr @dma_alloc_attrs(ptr noundef %dev2, i32 noundef 2048, ptr noundef nonnull %dma.i.i.i.i, i32 noundef 3264, i32 noundef 0) #7
  %tobool11.not.i.i.i.i = icmp eq ptr %call.i.i.i.i.i, null
  br i1 %tobool11.not.i.i.i.i, label %if.end8.i.i.i.i.err_free_wd_ring.i.i.i.i_crit_edge, label %for.inc.i.i.i

if.end8.i.i.i.i.err_free_wd_ring.i.i.i.i_crit_edge: ; preds = %if.end8.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_free_wd_ring.i.i.i.i

err_free_wd_ring.i.i.i.i:                         ; preds = %if.end8.i.i.i.i.err_free_wd_ring.i.i.i.i_crit_edge, %do.end6.i.i.i.i
  %ret.0.i.i.i.i = phi i32 [ -22, %do.end6.i.i.i.i ], [ -12, %if.end8.i.i.i.i.err_free_wd_ring.i.i.i.i_crit_edge ]
  %77 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %arrayidx.i.i.i, align 4
  %dma3.i.i.i.i.i = getelementptr inbounds %struct.rtw89_pci_tx_wd_ring, ptr %arrayidx.i.i.i, i32 0, i32 1
  %79 = ptrtoint ptr %dma3.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %dma3.i.i.i.i.i, align 4
  %page_size4.i.i.i.i.i = getelementptr inbounds %struct.rtw89_pci_tx_wd_ring, ptr %arrayidx.i.i.i, i32 0, i32 4
  %81 = ptrtoint ptr %page_size4.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %page_size4.i.i.i.i.i, align 4
  %page_num5.i.i.i.i.i = getelementptr inbounds %struct.rtw89_pci_tx_wd_ring, ptr %arrayidx.i.i.i, i32 0, i32 5
  %83 = ptrtoint ptr %page_num5.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %page_num5.i.i.i.i.i, align 4
  %mul.i.i.i.i.i = mul i32 %84, %82
  call void @dma_free_attrs(ptr noundef %dev2, i32 noundef %mul.i.i.i.i.i, ptr noundef %78, i32 noundef %80, i32 noundef 0) #7
  %85 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr null, ptr %arrayidx.i.i.i, align 4
  br label %do.end.i.i.i

do.end.i.i.i:                                     ; preds = %err_free_wd_ring.i.i.i.i, %do.end.i.i.i.i
  %retval.0.i.ph.i.i.i = phi i32 [ %ret.0.i.i.i.i, %err_free_wd_ring.i.i.i.i ], [ -12, %do.end.i.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dma.i.i.i.i) #7
  %86 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %dev3, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %87, ptr noundef nonnull @.str.227, i32 noundef %i.048.i.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.048.i.i.i)
  %cmp249.not.i.i.i = icmp eq i32 %i.048.i.i.i, 0
  br i1 %cmp249.not.i.i.i, label %do.end.i.i.i.do.end.i30.i_crit_edge, label %do.end.i.i.i.for.body3.i.i.i_crit_edge

do.end.i.i.i.for.body3.i.i.i_crit_edge:           ; preds = %do.end.i.i.i
  br label %for.body3.i.i.i

do.end.i.i.i.do.end.i30.i_crit_edge:              ; preds = %do.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i30.i

for.inc.i.i.i:                                    ; preds = %if.end8.i.i.i.i
  %busy_pages.i.i.i.i = getelementptr [13 x %struct.rtw89_pci_tx_ring], ptr %tx_rings.i.i.i, i32 0, i32 %i.048.i.i.i, i32 2
  %88 = ptrtoint ptr %busy_pages.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store volatile ptr %busy_pages.i.i.i.i, ptr %busy_pages.i.i.i.i, align 4
  %prev.i.i.i.i.i = getelementptr [13 x %struct.rtw89_pci_tx_ring], ptr %tx_rings.i.i.i, i32 0, i32 %i.048.i.i.i, i32 2, i32 1
  %89 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %busy_pages.i.i.i.i, ptr %prev.i.i.i.i.i, align 4
  %bd_ring.i.i.i.i = getelementptr [13 x %struct.rtw89_pci_tx_ring], ptr %tx_rings.i.i.i, i32 0, i32 %i.048.i.i.i, i32 1
  %90 = ptrtoint ptr %bd_ring.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %call.i.i.i.i.i, ptr %bd_ring.i.i.i.i, align 4
  %91 = ptrtoint ptr %dma.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %dma.i.i.i.i, align 4
  %dma16.i.i.i.i = getelementptr [13 x %struct.rtw89_pci_tx_ring], ptr %tx_rings.i.i.i, i32 0, i32 %i.048.i.i.i, i32 1, i32 2
  %93 = ptrtoint ptr %dma16.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %92, ptr %dma16.i.i.i.i, align 4
  %len18.i.i.i.i = getelementptr [13 x %struct.rtw89_pci_tx_ring], ptr %tx_rings.i.i.i, i32 0, i32 %i.048.i.i.i, i32 1, i32 8
  %94 = ptrtoint ptr %len18.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 256, ptr %len18.i.i.i.i, align 4
  %desc_size20.i.i.i.i = getelementptr [13 x %struct.rtw89_pci_tx_ring], ptr %tx_rings.i.i.i, i32 0, i32 %i.048.i.i.i, i32 1, i32 1
  %95 = ptrtoint ptr %desc_size20.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 8, ptr %desc_size20.i.i.i.i, align 4
  %addr_num22.i.i.i.i = getelementptr [13 x %struct.rtw89_pci_tx_ring], ptr %tx_rings.i.i.i, i32 0, i32 %i.048.i.i.i, i32 1, i32 3
  %96 = ptrtoint ptr %addr_num22.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %.sink76.i.i.i.i.i, ptr %addr_num22.i.i.i.i, align 4
  %addr_idx24.i.i.i.i = getelementptr [13 x %struct.rtw89_pci_tx_ring], ptr %tx_rings.i.i.i, i32 0, i32 %i.048.i.i.i, i32 1, i32 4
  %97 = ptrtoint ptr %addr_idx24.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %.sink75.i.i.i.i.i, ptr %addr_idx24.i.i.i.i, align 4
  %addr_bdram26.i.i.i.i = getelementptr [13 x %struct.rtw89_pci_tx_ring], ptr %tx_rings.i.i.i, i32 0, i32 %i.048.i.i.i, i32 1, i32 5
  %98 = ptrtoint ptr %addr_bdram26.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %.sink74.i.i.i.i.i, ptr %addr_bdram26.i.i.i.i, align 4
  %addr_desa_l28.i.i.i.i = getelementptr [13 x %struct.rtw89_pci_tx_ring], ptr %tx_rings.i.i.i, i32 0, i32 %i.048.i.i.i, i32 1, i32 6
  %99 = ptrtoint ptr %addr_desa_l28.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %.sink73.i.i.i.i.i, ptr %addr_desa_l28.i.i.i.i, align 4
  %addr_desa_h30.i.i.i.i = getelementptr [13 x %struct.rtw89_pci_tx_ring], ptr %tx_rings.i.i.i, i32 0, i32 %i.048.i.i.i, i32 1, i32 7
  %100 = ptrtoint ptr %addr_desa_h30.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %.sink.i.i.i.i.i, ptr %addr_desa_h30.i.i.i.i, align 4
  %wp.i.i.i.i = getelementptr [13 x %struct.rtw89_pci_tx_ring], ptr %tx_rings.i.i.i, i32 0, i32 %i.048.i.i.i, i32 1, i32 9
  %101 = ptrtoint ptr %wp.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 0, ptr %wp.i.i.i.i, align 4
  %rp.i.i.i.i = getelementptr [13 x %struct.rtw89_pci_tx_ring], ptr %tx_rings.i.i.i, i32 0, i32 %i.048.i.i.i, i32 1, i32 10
  %102 = ptrtoint ptr %rp.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 0, ptr %rp.i.i.i.i, align 4
  %conv33.i.i.i.i = trunc i32 %i.048.i.i.i to i8
  %txch34.i.i.i.i = getelementptr [13 x %struct.rtw89_pci_tx_ring], ptr %tx_rings.i.i.i, i32 0, i32 %i.048.i.i.i, i32 3
  %103 = ptrtoint ptr %txch34.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 %conv33.i.i.i.i, ptr %txch34.i.i.i.i, align 8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dma.i.i.i.i) #7
  %inc.i.i.i = add nuw nsw i32 %i.048.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, 13
  br i1 %exitcond.not.i.i.i, label %if.end.i31.i, label %for.inc.i.i.i.for.body.i.i.i_crit_edge

for.inc.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i.i

for.body3.i.i.i:                                  ; preds = %for.body3.i.i.i.for.body3.i.i.i_crit_edge, %do.end.i.i.i.for.body3.i.i.i_crit_edge
  %i.150.i.i.i = phi i32 [ %inc7.i.i.i, %for.body3.i.i.i.for.body3.i.i.i_crit_edge ], [ 0, %do.end.i.i.i.for.body3.i.i.i_crit_edge ]
  %bd_ring.i30.i.i.i = getelementptr [13 x %struct.rtw89_pci_tx_ring], ptr %tx_rings.i.i.i, i32 0, i32 %i.150.i.i.i, i32 1
  %104 = ptrtoint ptr %bd_ring.i30.i.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %bd_ring.i30.i.i.i, align 4
  %dma3.i.i.i.i = getelementptr [13 x %struct.rtw89_pci_tx_ring], ptr %tx_rings.i.i.i, i32 0, i32 %i.150.i.i.i, i32 1, i32 2
  %106 = ptrtoint ptr %dma3.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %dma3.i.i.i.i, align 4
  %desc_size.i.i.i.i = getelementptr [13 x %struct.rtw89_pci_tx_ring], ptr %tx_rings.i.i.i, i32 0, i32 %i.150.i.i.i, i32 1, i32 1
  %108 = ptrtoint ptr %desc_size.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %desc_size.i.i.i.i, align 4
  %conv.i.i.i.i = zext i8 %109 to i32
  %len.i.i.i.i = getelementptr [13 x %struct.rtw89_pci_tx_ring], ptr %tx_rings.i.i.i, i32 0, i32 %i.150.i.i.i, i32 1, i32 8
  %110 = ptrtoint ptr %len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %len.i.i.i.i, align 4
  %mul.i.i.i.i = mul i32 %111, %conv.i.i.i.i
  call void @dma_free_attrs(ptr noundef %dev2, i32 noundef %mul.i.i.i.i, ptr noundef %105, i32 noundef %107, i32 noundef 0) #7
  %112 = ptrtoint ptr %bd_ring.i30.i.i.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr null, ptr %bd_ring.i30.i.i.i, align 4
  %inc7.i.i.i = add nuw nsw i32 %i.150.i.i.i, 1
  %exitcond61.not.i.i.i = icmp eq i32 %inc7.i.i.i, %i.048.i.i.i
  br i1 %exitcond61.not.i.i.i, label %for.body3.i.i.i.do.end.i30.i_crit_edge, label %for.body3.i.i.i.for.body3.i.i.i_crit_edge

for.body3.i.i.i.for.body3.i.i.i_crit_edge:        ; preds = %for.body3.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body3.i.i.i

for.body3.i.i.i.do.end.i30.i_crit_edge:           ; preds = %for.body3.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i30.i

do.end.i30.i:                                     ; preds = %for.body3.i.i.i.do.end.i30.i_crit_edge, %do.end.i.i.i.do.end.i30.i_crit_edge
  %113 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %dev3, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %114, ptr noundef nonnull @.str.222) #10
  br label %do.end6.i

if.end.i31.i:                                     ; preds = %for.inc.i.i.i
  %rx_rings.i.i.i = getelementptr inbounds %struct.rtw89_dev, ptr %1, i32 37, i32 51, i32 1, i32 2, i32 4
  br label %for.body.i19.i.i

for.body.i19.i.i:                                 ; preds = %for.inc.i36.i.i.for.body.i19.i.i_crit_edge, %if.end.i31.i
  %i.090.i.i.i = phi i32 [ 0, %if.end.i31.i ], [ %inc.i34.i.i, %for.inc.i36.i.i.for.body.i19.i.i_crit_edge ]
  %arrayidx.i18.i.i = getelementptr [2 x %struct.rtw89_pci_rx_ring], ptr %rx_rings.i.i.i, i32 0, i32 %i.090.i.i.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dma.i.i17.i.i) #7
  %115 = ptrtoint ptr %dma.i.i17.i.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 -1, ptr %dma.i.i17.i.i, align 4, !annotation !503
  %116 = zext i32 %i.090.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %116, ptr @__sancov_gen_cov_switch_values)
  switch i32 %i.090.i.i.i, label %do.end.thread.i.i.i [
    i32 0, label %for.body.i19.i.i.if.end.i.i23.i.i_crit_edge
    i32 1, label %sw.bb1.i.i.i20.i.i
  ]

for.body.i19.i.i.if.end.i.i23.i.i_crit_edge:      ; preds = %for.body.i19.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i23.i.i

sw.bb1.i.i.i20.i.i:                               ; preds = %for.body.i19.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i23.i.i

do.end.thread.i.i.i:                              ; preds = %for.body.i19.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %117 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %dev3, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %118, ptr noundef nonnull @.str.237, i32 noundef %i.090.i.i.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dma.i.i17.i.i) #7
  %119 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %dev3, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %120, ptr noundef nonnull @.str.235, i32 noundef %i.090.i.i.i) #10
  br label %for.body3.lr.ph.i.i.i

if.end.i.i23.i.i:                                 ; preds = %sw.bb1.i.i.i20.i.i, %for.body.i19.i.i.if.end.i.i23.i.i_crit_edge
  %storemerge8.i.i.i.i.i = phi i32 [ 4130, %sw.bb1.i.i.i20.i.i ], [ 4128, %for.body.i19.i.i.if.end.i.i23.i.i_crit_edge ]
  %storemerge7.i.i.i.i.i = phi i32 [ 4180, %sw.bb1.i.i.i20.i.i ], [ 4176, %for.body.i19.i.i.if.end.i.i23.i.i_crit_edge ]
  %storemerge6.i.i.i.i.i = phi i32 [ 4360, %sw.bb1.i.i.i20.i.i ], [ 4352, %for.body.i19.i.i.if.end.i.i23.i.i_crit_edge ]
  %storemerge.i.i.i.i.i = phi i32 [ 4364, %sw.bb1.i.i.i20.i.i ], [ 4356, %for.body.i19.i.i.if.end.i.i23.i.i_crit_edge ]
  %call.i.i.i22.i.i = call ptr @dma_alloc_attrs(ptr noundef %dev2, i32 noundef 2048, ptr noundef nonnull %dma.i.i17.i.i, i32 noundef 3264, i32 noundef 0) #7
  %tobool3.not.i.i.i.i = icmp eq ptr %call.i.i.i22.i.i, null
  br i1 %tobool3.not.i.i.i.i, label %if.end.i.i23.i.i.do.end.i31.i.i_crit_edge, label %if.end5.i.i.i.i

if.end.i.i23.i.i.do.end.i31.i.i_crit_edge:        ; preds = %if.end.i.i23.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i31.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end.i.i23.i.i
  %121 = ptrtoint ptr %arrayidx.i18.i.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr %call.i.i.i22.i.i, ptr %arrayidx.i18.i.i, align 4
  %122 = ptrtoint ptr %dma.i.i17.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %dma.i.i17.i.i, align 4
  %dma8.i.i.i.i = getelementptr inbounds %struct.rtw89_pci_dma_ring, ptr %arrayidx.i18.i.i, i32 0, i32 2
  %124 = ptrtoint ptr %dma8.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 %123, ptr %dma8.i.i.i.i, align 4
  %len10.i.i.i.i = getelementptr inbounds %struct.rtw89_pci_dma_ring, ptr %arrayidx.i18.i.i, i32 0, i32 8
  %125 = ptrtoint ptr %len10.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 256, ptr %len10.i.i.i.i, align 4
  %desc_size12.i.i.i.i = getelementptr inbounds %struct.rtw89_pci_dma_ring, ptr %arrayidx.i18.i.i, i32 0, i32 1
  %126 = ptrtoint ptr %desc_size12.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %126)
  store i8 8, ptr %desc_size12.i.i.i.i, align 4
  %addr_num14.i.i.i.i = getelementptr inbounds %struct.rtw89_pci_dma_ring, ptr %arrayidx.i18.i.i, i32 0, i32 3
  %127 = ptrtoint ptr %addr_num14.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 %storemerge8.i.i.i.i.i, ptr %addr_num14.i.i.i.i, align 4
  %addr_idx16.i.i.i.i = getelementptr inbounds %struct.rtw89_pci_dma_ring, ptr %arrayidx.i18.i.i, i32 0, i32 4
  %128 = ptrtoint ptr %addr_idx16.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 %storemerge7.i.i.i.i.i, ptr %addr_idx16.i.i.i.i, align 4
  %addr_desa_l18.i.i.i.i = getelementptr inbounds %struct.rtw89_pci_dma_ring, ptr %arrayidx.i18.i.i, i32 0, i32 6
  %129 = ptrtoint ptr %addr_desa_l18.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 %storemerge6.i.i.i.i.i, ptr %addr_desa_l18.i.i.i.i, align 4
  %addr_desa_h20.i.i.i.i = getelementptr inbounds %struct.rtw89_pci_dma_ring, ptr %arrayidx.i18.i.i, i32 0, i32 7
  %130 = ptrtoint ptr %addr_desa_h20.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 %storemerge.i.i.i.i.i, ptr %addr_desa_h20.i.i.i.i, align 4
  %wp.i.i24.i.i = getelementptr inbounds %struct.rtw89_pci_dma_ring, ptr %arrayidx.i18.i.i, i32 0, i32 9
  %131 = ptrtoint ptr %wp.i.i24.i.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 0, ptr %wp.i.i24.i.i, align 4
  %rp.i.i25.i.i = getelementptr inbounds %struct.rtw89_pci_dma_ring, ptr %arrayidx.i18.i.i, i32 0, i32 10
  %132 = ptrtoint ptr %rp.i.i25.i.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 0, ptr %rp.i.i25.i.i, align 4
  %buf_sz23.i.i.i.i = getelementptr [2 x %struct.rtw89_pci_rx_ring], ptr %rx_rings.i.i.i, i32 0, i32 %i.090.i.i.i, i32 2
  %133 = ptrtoint ptr %buf_sz23.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 11460, ptr %buf_sz23.i.i.i.i, align 4
  %diliver_skb.i.i.i.i = getelementptr [2 x %struct.rtw89_pci_rx_ring], ptr %rx_rings.i.i.i, i32 0, i32 %i.090.i.i.i, i32 3
  %134 = ptrtoint ptr %diliver_skb.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store ptr null, ptr %diliver_skb.i.i.i.i, align 4
  %ready.i.i.i.i = getelementptr [2 x %struct.rtw89_pci_rx_ring], ptr %rx_rings.i.i.i, i32 0, i32 %i.090.i.i.i, i32 4, i32 30
  %135 = ptrtoint ptr %ready.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %135)
  store i8 0, ptr %ready.i.i.i.i, align 4
  br label %for.body.i.i.i.i

for.body.i.i.i.i:                                 ; preds = %for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge, %if.end5.i.i.i.i
  %i.026.i.i.i.i = phi i32 [ 0, %if.end5.i.i.i.i ], [ %inc.i.i.i.i, %for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge ]
  %call.i.i.i.i26.i.i = call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef 11460, i32 noundef 2592) #7
  %tobool26.not.i.i.i.i = icmp eq ptr %call.i.i.i.i26.i.i, null
  br i1 %tobool26.not.i.i.i.i, label %for.body.i.i.i.i.err_free.i.i.i.i_crit_edge, label %if.end.i.i.i27.i.i

for.body.i.i.i.i.err_free.i.i.i.i_crit_edge:      ; preds = %for.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_free.i.i.i.i

if.end.i.i.i27.i.i:                               ; preds = %for.body.i.i.i.i
  %data.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i26.i.i, i32 0, i32 19
  %136 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %data.i.i.i.i, align 4
  %138 = call ptr @memset(ptr %137, i32 0, i32 11460)
  %arrayidx.i.i.i.i = getelementptr [2 x %struct.rtw89_pci_rx_ring], ptr %rx_rings.i.i.i, i32 0, i32 %i.090.i.i.i, i32 1, i32 %i.026.i.i.i.i
  %139 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %139)
  store ptr %call.i.i.i.i26.i.i, ptr %arrayidx.i.i.i.i, align 4
  %140 = load ptr, ptr %data.i.i.i.i, align 4
  %call.i.i1.i.i.i.i = call zeroext i1 @is_vmalloc_addr(ptr noundef %140) #7
  br i1 %call.i.i1.i.i.i.i, label %land.rhs.i.i.i.i.i.i, label %dma_map_single_attrs.exit.i.i.i.i.i

land.rhs.i.i.i.i.i.i:                             ; preds = %if.end.i.i.i27.i.i
  %.b1.i.i.i.i.i.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i.i.i.i.i.i, label %land.rhs.i.i.i.i.i.i.dma_map_single_attrs.exit.thread.i.i.i.i.i_crit_edge, label %if.then.i.i.i.i.i.i, !prof !505

land.rhs.i.i.i.i.i.i.dma_map_single_attrs.exit.thread.i.i.i.i.i_crit_edge: ; preds = %land.rhs.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dma_map_single_attrs.exit.thread.i.i.i.i.i

if.then.i.i.i.i.i.i:                              ; preds = %land.rhs.i.i.i.i.i.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i.i.i.i.i.i = call ptr @dev_driver_string(ptr noundef %dev2) #7
  %init_name.i.i.i.i.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 3
  %141 = ptrtoint ptr %init_name.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %init_name.i.i.i.i.i.i.i, align 8
  %tobool.not.i.i.i.i.i.i.i = icmp eq ptr %142, null
  br i1 %tobool.not.i.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.i, label %if.then.i.i.i.i.i.i.dev_name.exit.i.i.i.i.i.i_crit_edge

if.then.i.i.i.i.i.i.dev_name.exit.i.i.i.i.i.i_crit_edge: ; preds = %if.then.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit.i.i.i.i.i.i

if.end.i.i.i.i.i.i.i:                             ; preds = %if.then.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %143 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %dev2, align 4
  br label %dev_name.exit.i.i.i.i.i.i

dev_name.exit.i.i.i.i.i.i:                        ; preds = %if.end.i.i.i.i.i.i.i, %if.then.i.i.i.i.i.i.dev_name.exit.i.i.i.i.i.i_crit_edge
  %retval.0.i.i.i.i.i.i.i = phi ptr [ %144, %if.end.i.i.i.i.i.i.i ], [ %142, %if.then.i.i.i.i.i.i.dev_name.exit.i.i.i.i.i.i_crit_edge ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.61, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.62, ptr noundef %call16.i.i.i.i.i.i, ptr noundef %retval.0.i.i.i.i.i.i.i) #7
  br label %dma_map_single_attrs.exit.thread.i.i.i.i.i

dma_map_single_attrs.exit.thread.i.i.i.i.i:       ; preds = %dev_name.exit.i.i.i.i.i.i, %land.rhs.i.i.i.i.i.i.dma_map_single_attrs.exit.thread.i.i.i.i.i_crit_edge
  call void @debug_dma_mapping_error(ptr noundef %dev2, i32 noundef -1) #7
  br label %do.end34.i.i.i.i

dma_map_single_attrs.exit.i.i.i.i.i:              ; preds = %if.end.i.i.i27.i.i
  call void @debug_dma_map_single(ptr noundef %dev2, ptr noundef %140, i32 noundef 11460) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %145 = load ptr, ptr @mem_map, align 4
  %146 = ptrtoint ptr %140 to i32
  %sub.i.i.i.i.i.i = add i32 %146, 1073741824
  %shr.i.i.i.i.i.i = lshr i32 %sub.i.i.i.i.i.i, 12
  %add.ptr.i.i.i.i.i.i = getelementptr %struct.page, ptr %145, i32 %shr.i.i.i.i.i.i
  %and.i.i.i.i.i.i = and i32 %146, 4095
  %call41.i.i.i.i.i.i = call i32 @dma_map_page_attrs(ptr noundef %dev2, ptr noundef %add.ptr.i.i.i.i.i.i, i32 noundef %and.i.i.i.i.i.i, i32 noundef 11460, i32 noundef 2, i32 noundef 0) #7
  call void @debug_dma_mapping_error(ptr noundef %dev2, i32 noundef %call41.i.i.i.i.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %call41.i.i.i.i.i.i, -1
  br i1 %cmp.i.i.i.i.i.i, label %dma_map_single_attrs.exit.i.i.i.i.i.do.end34.i.i.i.i_crit_edge, label %for.inc.i.i.i.i

dma_map_single_attrs.exit.i.i.i.i.i.do.end34.i.i.i.i_crit_edge: ; preds = %dma_map_single_attrs.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end34.i.i.i.i

do.end34.i.i.i.i:                                 ; preds = %dma_map_single_attrs.exit.i.i.i.i.i.do.end34.i.i.i.i_crit_edge, %dma_map_single_attrs.exit.thread.i.i.i.i.i
  %147 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %dev3, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %148, ptr noundef nonnull @.str.240, i32 noundef %i.026.i.i.i.i) #10
  call void @__dev_kfree_skb_any(ptr noundef nonnull %call.i.i.i.i26.i.i, i32 noundef 1) #7
  %149 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %149)
  store ptr null, ptr %arrayidx.i.i.i.i, align 4
  br label %err_free.i.i.i.i

for.inc.i.i.i.i:                                  ; preds = %dma_map_single_attrs.exit.i.i.i.i.i
  %cb.i.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i26.i.i, i32 0, i32 3
  %150 = ptrtoint ptr %arrayidx.i18.i.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %arrayidx.i18.i.i, align 4
  %152 = ptrtoint ptr %desc_size12.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %152)
  %153 = load i8, ptr %desc_size12.i.i.i.i, align 4
  %conv.i.i.i.i.i.i = zext i8 %153 to i32
  %mul.i.i.i.i.i.i = mul nuw nsw i32 %i.026.i.i.i.i, %conv.i.i.i.i.i.i
  %add.ptr.i1.i.i.i.i.i = getelementptr i8, ptr %151, i32 %mul.i.i.i.i.i.i
  %154 = ptrtoint ptr %add.ptr.i1.i.i.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %154, i32 8)
  store i64 -4311070743300407296, ptr %add.ptr.i1.i.i.i.i.i, align 1
  %155 = call i32 @llvm.bswap.i32(i32 %call41.i.i.i.i.i.i) #7
  %dma8.i.i.i.i.i = getelementptr inbounds %struct.rtw89_pci_rx_bd_32, ptr %add.ptr.i1.i.i.i.i.i, i32 0, i32 2
  %156 = ptrtoint ptr %dma8.i.i.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %156, i32 4)
  store i32 %155, ptr %dma8.i.i.i.i.i, align 1
  %157 = ptrtoint ptr %cb.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 %call41.i.i.i.i.i.i, ptr %cb.i.i.i.i.i.i, align 4
  %inc.i.i.i.i = add nuw nsw i32 %i.026.i.i.i.i, 1
  %exitcond.not.i.i.i.i = icmp eq i32 %inc.i.i.i.i, 256
  br i1 %exitcond.not.i.i.i.i, label %for.inc.i36.i.i, label %for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge

for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge:       ; preds = %for.inc.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i.i.i

err_free.i.i.i.i:                                 ; preds = %do.end34.i.i.i.i, %for.body.i.i.i.i.err_free.i.i.i.i_crit_edge
  %ret.0.i.i28.i.i = phi i32 [ -16, %do.end34.i.i.i.i ], [ -12, %for.body.i.i.i.i.err_free.i.i.i.i_crit_edge ]
  %dma8.i.i.i.i236 = getelementptr inbounds %struct.rtw89_pci_dma_ring, ptr %arrayidx.i18.i.i, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.026.i.i.i.i)
  %cmp4027.not.i.i.i.i = icmp eq i32 %i.026.i.i.i.i, 0
  br i1 %cmp4027.not.i.i.i.i, label %err_free.i.i.i.i.for.end53.i.i.i.i_crit_edge, label %err_free.i.i.i.i.for.body42.i.i.i.i_crit_edge

err_free.i.i.i.i.for.body42.i.i.i.i_crit_edge:    ; preds = %err_free.i.i.i.i
  br label %for.body42.i.i.i.i

err_free.i.i.i.i.for.end53.i.i.i.i_crit_edge:     ; preds = %err_free.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end53.i.i.i.i

for.body42.i.i.i.i:                               ; preds = %for.inc51.i.i.i.i.for.body42.i.i.i.i_crit_edge, %err_free.i.i.i.i.for.body42.i.i.i.i_crit_edge
  %i.128.i.i.i.i = phi i32 [ %inc52.i.i.i.i, %for.inc51.i.i.i.i.for.body42.i.i.i.i_crit_edge ], [ 0, %err_free.i.i.i.i.for.body42.i.i.i.i_crit_edge ]
  %arrayidx44.i.i.i.i = getelementptr [2 x %struct.rtw89_pci_rx_ring], ptr %rx_rings.i.i.i, i32 0, i32 %i.090.i.i.i, i32 1, i32 %i.128.i.i.i.i
  %158 = ptrtoint ptr %arrayidx44.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %arrayidx44.i.i.i.i, align 4
  %tobool45.not.i.i.i.i = icmp eq ptr %159, null
  br i1 %tobool45.not.i.i.i.i, label %for.body42.i.i.i.i.for.inc51.i.i.i.i_crit_edge, label %if.end47.i.i.i.i

for.body42.i.i.i.i.for.inc51.i.i.i.i_crit_edge:   ; preds = %for.body42.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc51.i.i.i.i

if.end47.i.i.i.i:                                 ; preds = %for.body42.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %cb.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %159, i32 0, i32 3
  %160 = ptrtoint ptr %cb.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %cb.i.i.i.i, align 8
  %162 = ptrtoint ptr %dma.i.i17.i.i to i32
  call void @__asan_store4_noabort(i32 %162)
  store i32 %161, ptr %dma.i.i17.i.i, align 4
  call void @dma_unmap_page_attrs(ptr noundef %dev2, i32 noundef %161, i32 noundef 11460, i32 noundef 2, i32 noundef 0) #7
  call void @consume_skb(ptr noundef nonnull %159) #7
  %163 = ptrtoint ptr %arrayidx44.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %163)
  store ptr null, ptr %arrayidx44.i.i.i.i, align 4
  br label %for.inc51.i.i.i.i

for.inc51.i.i.i.i:                                ; preds = %if.end47.i.i.i.i, %for.body42.i.i.i.i.for.inc51.i.i.i.i_crit_edge
  %inc52.i.i.i.i = add nuw nsw i32 %i.128.i.i.i.i, 1
  %exitcond41.not.i.i.i.i = icmp eq i32 %inc52.i.i.i.i, %i.026.i.i.i.i
  br i1 %exitcond41.not.i.i.i.i, label %for.inc51.i.i.i.i.for.end53.i.i.i.i_crit_edge, label %for.inc51.i.i.i.i.for.body42.i.i.i.i_crit_edge

for.inc51.i.i.i.i.for.body42.i.i.i.i_crit_edge:   ; preds = %for.inc51.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body42.i.i.i.i

for.inc51.i.i.i.i.for.end53.i.i.i.i_crit_edge:    ; preds = %for.inc51.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end53.i.i.i.i

for.end53.i.i.i.i:                                ; preds = %for.inc51.i.i.i.i.for.end53.i.i.i.i_crit_edge, %err_free.i.i.i.i.for.end53.i.i.i.i_crit_edge
  %164 = ptrtoint ptr %arrayidx.i18.i.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %arrayidx.i18.i.i, align 4
  %166 = ptrtoint ptr %dma8.i.i.i.i236 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %dma8.i.i.i.i236, align 4
  %168 = ptrtoint ptr %dma.i.i17.i.i to i32
  call void @__asan_store4_noabort(i32 %168)
  store i32 %167, ptr %dma.i.i17.i.i, align 4
  call void @dma_free_attrs(ptr noundef %dev2, i32 noundef 2048, ptr noundef %165, i32 noundef %167, i32 noundef 0) #7
  %169 = ptrtoint ptr %arrayidx.i18.i.i to i32
  call void @__asan_store4_noabort(i32 %169)
  store ptr null, ptr %arrayidx.i18.i.i, align 4
  br label %do.end.i31.i.i

do.end.i31.i.i:                                   ; preds = %for.end53.i.i.i.i, %if.end.i.i23.i.i.do.end.i31.i.i_crit_edge
  %retval.0.i.ph.i29.i.i = phi i32 [ %ret.0.i.i28.i.i, %for.end53.i.i.i.i ], [ -12, %if.end.i.i23.i.i.do.end.i31.i.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dma.i.i17.i.i) #7
  %170 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %dev3, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %171, ptr noundef nonnull @.str.235, i32 noundef %i.090.i.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.090.i.i.i)
  %cmp291.not.i.i.i = icmp eq i32 %i.090.i.i.i, 0
  br i1 %cmp291.not.i.i.i, label %do.end.i31.i.i.do.end6.i.i_crit_edge, label %do.end.i31.i.i.for.body3.lr.ph.i.i.i_crit_edge

do.end.i31.i.i.for.body3.lr.ph.i.i.i_crit_edge:   ; preds = %do.end.i31.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body3.lr.ph.i.i.i

do.end.i31.i.i.do.end6.i.i_crit_edge:             ; preds = %do.end.i31.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end6.i.i

for.body3.lr.ph.i.i.i:                            ; preds = %do.end.i31.i.i.for.body3.lr.ph.i.i.i_crit_edge, %do.end.thread.i.i.i
  %retval.0.i.ph123.i.i.i = phi i32 [ -22, %do.end.thread.i.i.i ], [ %retval.0.i.ph.i29.i.i, %do.end.i31.i.i.for.body3.lr.ph.i.i.i_crit_edge ]
  %desc_size.i.i32.i.i = getelementptr inbounds %struct.rtw89_dev, ptr %1, i32 37, i32 51, i32 1, i32 3
  %len.i.i33.i.i = getelementptr inbounds %struct.rtw89_dev, ptr %1, i32 37, i32 51, i32 1, i32 6
  %buf_sz2.i.i.i.i = getelementptr inbounds %struct.rtw89_dev, ptr %1, i32 37, i32 51, i32 4, i32 12, i32 1, i32 5, i32 30, i32 1
  %dma12.i.i.i.i = getelementptr inbounds %struct.rtw89_dev, ptr %1, i32 37, i32 51, i32 1, i32 3, i32 4
  %cmp2.not.i.i.i = icmp eq i32 %i.090.i.i.i, 1
  br label %for.body3.i37.i.i

for.inc.i36.i.i:                                  ; preds = %for.inc.i.i.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dma.i.i17.i.i) #7
  %inc.i34.i.i = add nuw nsw i32 %i.090.i.i.i, 1
  %exitcond.not.i35.i.i = icmp eq i32 %inc.i34.i.i, 2
  br i1 %exitcond.not.i35.i.i, label %if.end32, label %for.inc.i36.i.i.for.body.i19.i.i_crit_edge

for.inc.i36.i.i.for.body.i19.i.i_crit_edge:       ; preds = %for.inc.i36.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i19.i.i

for.body3.i37.i.i:                                ; preds = %rtw89_pci_free_rx_ring.exit.i.i.i.for.body3.i37.i.i_crit_edge, %for.body3.lr.ph.i.i.i
  %172 = ptrtoint ptr %desc_size.i.i32.i.i to i32
  call void @__asan_load1_noabort(i32 %172)
  %173 = load i8, ptr %desc_size.i.i32.i.i, align 4
  %174 = ptrtoint ptr %len.i.i33.i.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %len.i.i33.i.i, align 4
  %176 = ptrtoint ptr %buf_sz2.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %buf_sz2.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %175)
  %cmp1.not.i.i.i.i = icmp eq i32 %175, 0
  br i1 %cmp1.not.i.i.i.i, label %for.body3.i37.i.i.rtw89_pci_free_rx_ring.exit.i.i.i_crit_edge, label %for.body3.i37.i.i.for.body.i32.i.i.i_crit_edge

for.body3.i37.i.i.for.body.i32.i.i.i_crit_edge:   ; preds = %for.body3.i37.i.i
  br label %for.body.i32.i.i.i

for.body3.i37.i.i.rtw89_pci_free_rx_ring.exit.i.i.i_crit_edge: ; preds = %for.body3.i37.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtw89_pci_free_rx_ring.exit.i.i.i

for.body.i32.i.i.i:                               ; preds = %for.inc.i35.i.i.i.for.body.i32.i.i.i_crit_edge, %for.body3.i37.i.i.for.body.i32.i.i.i_crit_edge
  %i.02.i.i.i.i = phi i32 [ %inc.i34.i.i.i, %for.inc.i35.i.i.i.for.body.i32.i.i.i_crit_edge ], [ 0, %for.body3.i37.i.i.for.body.i32.i.i.i_crit_edge ]
  %arrayidx.i31.i.i.i = getelementptr %struct.rtw89_pci_rx_ring, ptr %rx_rings.i.i.i, i32 0, i32 1, i32 %i.02.i.i.i.i
  %178 = ptrtoint ptr %arrayidx.i31.i.i.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %arrayidx.i31.i.i.i, align 4
  %tobool.not.i.i.i.i = icmp eq ptr %179, null
  br i1 %tobool.not.i.i.i.i, label %for.body.i32.i.i.i.for.inc.i35.i.i.i_crit_edge, label %if.end.i33.i.i.i

for.body.i32.i.i.i.for.inc.i35.i.i.i_crit_edge:   ; preds = %for.body.i32.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i35.i.i.i

if.end.i33.i.i.i:                                 ; preds = %for.body.i32.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %cb.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %179, i32 0, i32 3
  %180 = ptrtoint ptr %cb.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %cb.i.i.i.i.i, align 4
  call void @dma_unmap_page_attrs(ptr noundef %dev2, i32 noundef %181, i32 noundef %177, i32 noundef 2, i32 noundef 0) #7
  call void @consume_skb(ptr noundef nonnull %179) #7
  %182 = ptrtoint ptr %arrayidx.i31.i.i.i to i32
  call void @__asan_store4_noabort(i32 %182)
  store ptr null, ptr %arrayidx.i31.i.i.i, align 4
  br label %for.inc.i35.i.i.i

for.inc.i35.i.i.i:                                ; preds = %if.end.i33.i.i.i, %for.body.i32.i.i.i.for.inc.i35.i.i.i_crit_edge
  %inc.i34.i.i.i = add nuw i32 %i.02.i.i.i.i, 1
  %183 = ptrtoint ptr %len.i.i33.i.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %len.i.i33.i.i, align 4
  %cmp.i.i.i.i = icmp ult i32 %inc.i34.i.i.i, %184
  br i1 %cmp.i.i.i.i, label %for.inc.i35.i.i.i.for.body.i32.i.i.i_crit_edge, label %for.inc.i35.i.i.i.rtw89_pci_free_rx_ring.exit.i.i.i_crit_edge

for.inc.i35.i.i.i.rtw89_pci_free_rx_ring.exit.i.i.i_crit_edge: ; preds = %for.inc.i35.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtw89_pci_free_rx_ring.exit.i.i.i

for.inc.i35.i.i.i.for.body.i32.i.i.i_crit_edge:   ; preds = %for.inc.i35.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i32.i.i.i

rtw89_pci_free_rx_ring.exit.i.i.i:                ; preds = %for.inc.i35.i.i.i.rtw89_pci_free_rx_ring.exit.i.i.i_crit_edge, %for.body3.i37.i.i.rtw89_pci_free_rx_ring.exit.i.i.i_crit_edge
  %conv.i.i38.i.i = zext i8 %173 to i32
  %mul.i.i39.i.i = mul i32 %175, %conv.i.i38.i.i
  %185 = ptrtoint ptr %rx_rings.i.i.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %rx_rings.i.i.i, align 4
  %187 = ptrtoint ptr %dma12.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %dma12.i.i.i.i, align 4
  call void @dma_free_attrs(ptr noundef %dev2, i32 noundef %mul.i.i39.i.i, ptr noundef %186, i32 noundef %188, i32 noundef 0) #7
  %189 = ptrtoint ptr %rx_rings.i.i.i to i32
  call void @__asan_store4_noabort(i32 %189)
  store ptr null, ptr %rx_rings.i.i.i, align 4
  br i1 %cmp2.not.i.i.i, label %rtw89_pci_free_rx_ring.exit.i.i.i.do.end6.i.i_crit_edge, label %rtw89_pci_free_rx_ring.exit.i.i.i.for.body3.i37.i.i_crit_edge

rtw89_pci_free_rx_ring.exit.i.i.i.for.body3.i37.i.i_crit_edge: ; preds = %rtw89_pci_free_rx_ring.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body3.i37.i.i

rtw89_pci_free_rx_ring.exit.i.i.i.do.end6.i.i_crit_edge: ; preds = %rtw89_pci_free_rx_ring.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end6.i.i

do.end6.i.i:                                      ; preds = %rtw89_pci_free_rx_ring.exit.i.i.i.do.end6.i.i_crit_edge, %do.end.i31.i.i.do.end6.i.i_crit_edge
  %retval.0.i40.ph.i.i = phi i32 [ %retval.0.i.ph.i29.i.i, %do.end.i31.i.i.do.end6.i.i_crit_edge ], [ %retval.0.i.ph123.i.i.i, %rtw89_pci_free_rx_ring.exit.i.i.i.do.end6.i.i_crit_edge ]
  %190 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %dev3, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %191, ptr noundef nonnull @.str.225) #10
  br label %for.body.i52.i.i

for.body.i52.i.i:                                 ; preds = %for.body.i52.i.i.for.body.i52.i.i_crit_edge, %do.end6.i.i
  %i.010.i.i.i = phi i32 [ 0, %do.end6.i.i ], [ %inc.i50.i.i, %for.body.i52.i.i.for.body.i52.i.i_crit_edge ]
  %arrayidx.i43.i.i = getelementptr [13 x %struct.rtw89_pci_tx_ring], ptr %tx_rings.i.i.i, i32 0, i32 %i.010.i.i.i
  %192 = ptrtoint ptr %arrayidx.i43.i.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %arrayidx.i43.i.i, align 4
  %dma3.i.i44.i.i = getelementptr inbounds %struct.rtw89_pci_tx_wd_ring, ptr %arrayidx.i43.i.i, i32 0, i32 1
  %194 = ptrtoint ptr %dma3.i.i44.i.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %dma3.i.i44.i.i, align 4
  %page_size4.i.i.i.i = getelementptr inbounds %struct.rtw89_pci_tx_wd_ring, ptr %arrayidx.i43.i.i, i32 0, i32 4
  %196 = ptrtoint ptr %page_size4.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %page_size4.i.i.i.i, align 4
  %page_num5.i.i.i.i = getelementptr inbounds %struct.rtw89_pci_tx_wd_ring, ptr %arrayidx.i43.i.i, i32 0, i32 5
  %198 = ptrtoint ptr %page_num5.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %page_num5.i.i.i.i, align 4
  %mul.i.i45.i.i = mul i32 %199, %197
  call void @dma_free_attrs(ptr noundef %dev2, i32 noundef %mul.i.i45.i.i, ptr noundef %193, i32 noundef %195, i32 noundef 0) #7
  %200 = ptrtoint ptr %arrayidx.i43.i.i to i32
  call void @__asan_store4_noabort(i32 %200)
  store ptr null, ptr %arrayidx.i43.i.i, align 4
  %bd_ring.i.i46.i.i = getelementptr [13 x %struct.rtw89_pci_tx_ring], ptr %tx_rings.i.i.i, i32 0, i32 %i.010.i.i.i, i32 1
  %201 = ptrtoint ptr %bd_ring.i.i46.i.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %bd_ring.i.i46.i.i, align 4
  %dma3.i7.i.i.i = getelementptr [13 x %struct.rtw89_pci_tx_ring], ptr %tx_rings.i.i.i, i32 0, i32 %i.010.i.i.i, i32 1, i32 2
  %203 = ptrtoint ptr %dma3.i7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %dma3.i7.i.i.i, align 4
  %desc_size.i.i47.i.i = getelementptr [13 x %struct.rtw89_pci_tx_ring], ptr %tx_rings.i.i.i, i32 0, i32 %i.010.i.i.i, i32 1, i32 1
  %205 = ptrtoint ptr %desc_size.i.i47.i.i to i32
  call void @__asan_load1_noabort(i32 %205)
  %206 = load i8, ptr %desc_size.i.i47.i.i, align 4
  %conv.i.i48.i.i = zext i8 %206 to i32
  %len.i.i49.i.i = getelementptr [13 x %struct.rtw89_pci_tx_ring], ptr %tx_rings.i.i.i, i32 0, i32 %i.010.i.i.i, i32 1, i32 8
  %207 = ptrtoint ptr %len.i.i49.i.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %len.i.i49.i.i, align 4
  %mul.i8.i.i.i = mul i32 %208, %conv.i.i48.i.i
  call void @dma_free_attrs(ptr noundef %dev2, i32 noundef %mul.i8.i.i.i, ptr noundef %202, i32 noundef %204, i32 noundef 0) #7
  %209 = ptrtoint ptr %bd_ring.i.i46.i.i to i32
  call void @__asan_store4_noabort(i32 %209)
  store ptr null, ptr %bd_ring.i.i46.i.i, align 4
  %inc.i50.i.i = add nuw nsw i32 %i.010.i.i.i, 1
  %exitcond.not.i51.i.i = icmp eq i32 %inc.i50.i.i, 13
  br i1 %exitcond.not.i51.i.i, label %for.body.i52.i.i.do.end6.i_crit_edge, label %for.body.i52.i.i.for.body.i52.i.i_crit_edge

for.body.i52.i.i.for.body.i52.i.i_crit_edge:      ; preds = %for.body.i52.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i52.i.i

for.body.i52.i.i.do.end6.i_crit_edge:             ; preds = %for.body.i52.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end6.i

do.end6.i:                                        ; preds = %for.body.i52.i.i.do.end6.i_crit_edge, %do.end.i30.i
  %retval.0.i32.ph.i = phi i32 [ %retval.0.i.ph.i.i.i, %do.end.i30.i ], [ %retval.0.i40.ph.i.i, %for.body.i52.i.i.do.end6.i_crit_edge ]
  %210 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %dev3, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %211, ptr noundef nonnull @.str.206) #10
  %212 = ptrtoint ptr %mmap.i.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %mmap.i.i, align 4
  %tobool.not.i34.i = icmp eq ptr %213, null
  br i1 %tobool.not.i34.i, label %do.end6.i.do.end30_crit_edge, label %if.then.i.i

do.end6.i.do.end30_crit_edge:                     ; preds = %do.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end30

if.then.i.i:                                      ; preds = %do.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @pci_iounmap(ptr noundef %pdev, ptr noundef nonnull %213) #7
  call void @pci_release_regions(ptr noundef %pdev) #7
  br label %do.end30

do.end30:                                         ; preds = %if.then.i.i, %do.end6.i.do.end30_crit_edge, %do.end.i106
  %retval.0.i.ph = phi i32 [ %retval.0.i32.ph.i, %if.then.i.i ], [ %retval.0.i32.ph.i, %do.end6.i.do.end30_crit_edge ], [ %retval.0.i.ph.i, %do.end.i106 ]
  %214 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %dev3, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %215, ptr noundef nonnull @.str.33) #10
  br label %err_declaim_pci

if.end32:                                         ; preds = %for.inc.i36.i.i
  %h2c_queue.i.i = getelementptr inbounds %struct.rtw89_dev, ptr %1, i32 37, i32 51, i32 4, i32 16, i32 0, i32 2
  %lock.i.i.i = getelementptr inbounds %struct.rtw89_pci, ptr %priv.i, i32 0, i32 6, i32 2
  call void @__raw_spin_lock_init(ptr noundef %lock.i.i.i, ptr noundef nonnull @.str.234, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #7
  %216 = ptrtoint ptr %h2c_queue.i.i to i32
  call void @__asan_store4_noabort(i32 %216)
  store ptr %h2c_queue.i.i, ptr %h2c_queue.i.i, align 4
  %prev.i.i.i.i = getelementptr inbounds %struct.rtw89_dev, ptr %1, i32 37, i32 51, i32 4, i32 16, i32 0, i32 3
  %217 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %217)
  store ptr %h2c_queue.i.i, ptr %prev.i.i.i.i, align 4
  %qlen.i.i.i.i = getelementptr inbounds %struct.rtw89_dev, ptr %1, i32 37, i32 51, i32 4, i32 16, i32 1, i32 1
  %218 = ptrtoint ptr %qlen.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %218)
  store i32 0, ptr %qlen.i.i.i.i, align 4
  %h2c_release_queue.i.i = getelementptr inbounds %struct.rtw89_dev, ptr %1, i32 37, i32 51, i32 4, i32 18, i32 0, i32 2
  %lock.i1.i.i = getelementptr inbounds %struct.rtw89_dev, ptr %1, i32 37, i32 51, i32 4, i32 18, i32 1, i32 3, i32 1
  call void @__raw_spin_lock_init(ptr noundef %lock.i1.i.i, ptr noundef nonnull @.str.234, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #7
  %219 = ptrtoint ptr %h2c_release_queue.i.i to i32
  call void @__asan_store4_noabort(i32 %219)
  store ptr %h2c_release_queue.i.i, ptr %h2c_release_queue.i.i, align 4
  %prev.i.i2.i.i = getelementptr inbounds %struct.rtw89_dev, ptr %1, i32 37, i32 51, i32 4, i32 18, i32 0, i32 3
  %220 = ptrtoint ptr %prev.i.i2.i.i to i32
  call void @__asan_store4_noabort(i32 %220)
  store ptr %h2c_release_queue.i.i, ptr %prev.i.i2.i.i, align 4
  %qlen.i.i3.i.i = getelementptr inbounds %struct.rtw89_dev, ptr %1, i32 37, i32 51, i32 4, i32 18, i32 1, i32 1
  %221 = ptrtoint ptr %qlen.i.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %221)
  store i32 0, ptr %qlen.i.i3.i.i, align 4
  %irq_lock.i = getelementptr inbounds %struct.rtw89_dev, ptr %1, i32 0, i32 59, i32 4
  call void @__raw_spin_lock_init(ptr noundef %irq_lock.i, ptr noundef nonnull @.str.208, ptr noundef nonnull @rtw89_pci_setup_resource.__key, i16 noundef signext 3) #7
  %trx_lock.i = getelementptr inbounds %struct.rtw89_dev, ptr %1, i32 1, i32 4, i32 1
  call void @__raw_spin_lock_init(ptr noundef %trx_lock.i, ptr noundef nonnull @.str.210, ptr noundef nonnull @rtw89_pci_setup_resource.__key.209, i16 noundef signext 3) #7
  %call33 = call i32 @rtw89_chip_info_setup(ptr noundef %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.end40, label %do.end38

do.end38:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  %222 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %dev3, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %223, ptr noundef nonnull @.str.36) #10
  br label %err_clear_resource

if.end40:                                         ; preds = %if.end32
  call fastcc void @rtw89_pci_link_cfg(ptr noundef %1)
  call fastcc void @rtw89_pci_l1ss_cfg(ptr noundef %1)
  %call41 = call i32 @rtw89_core_register(ptr noundef %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %if.end48, label %do.end46

do.end46:                                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #9
  %224 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %dev3, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %225, ptr noundef nonnull @.str.39) #10
  br label %err_clear_resource

if.end48:                                         ; preds = %if.end40
  call void @rtw89_core_napi_init(ptr noundef %1) #7
  %call.i.i108 = call i32 @pci_alloc_irq_vectors_affinity(ptr noundef %pdev, i32 noundef 1, i32 noundef 1, i32 noundef 3, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i108)
  %cmp.i = icmp slt i32 %call.i.i108, 0
  %226 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %dev3, align 4
  br i1 %cmp.i, label %do.end.i110, label %if.end.i112

do.end.i110:                                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %227, ptr noundef nonnull @.str.242, i32 noundef %call.i.i108) #10
  br label %do.end54

if.end.i112:                                      ; preds = %if.end48
  %irq.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 46
  %228 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load i32, ptr %irq.i, align 4
  %call2.i = call i32 @devm_request_threaded_irq(ptr noundef %227, i32 noundef %229, ptr noundef nonnull @rtw89_pci_interrupt_handler, ptr noundef nonnull @rtw89_pci_interrupt_threadfn, i32 noundef 128, ptr noundef nonnull @.str.23, ptr noundef %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i111 = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i111, label %rtw89_pci_request_irq.exit, label %do.end6.i113

do.end6.i113:                                     ; preds = %if.end.i112
  call void @__sanitizer_cov_trace_pc() #9
  %230 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %dev3, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %231, ptr noundef nonnull @.str.245) #10
  call void @pci_free_irq_vectors(ptr noundef %pdev) #7
  br label %do.end54

rtw89_pci_request_irq.exit:                       ; preds = %if.end.i112
  call void @__sanitizer_cov_trace_pc() #9
  %halt_c2h_intrs.i.i = getelementptr inbounds %struct.rtw89_dev, ptr %1, i32 37, i32 51, i32 5, i32 1
  %232 = ptrtoint ptr %halt_c2h_intrs.i.i to i32
  call void @__asan_store4_noabort(i32 %232)
  store i32 2097152, ptr %halt_c2h_intrs.i.i, align 8
  %intrs.i.i = getelementptr inbounds %struct.rtw89_dev, ptr %1, i32 37, i32 51, i32 6
  %233 = ptrtoint ptr %intrs.i.i to i32
  call void @__asan_store4_noabort(i32 %233)
  store i32 18743303, ptr %intrs.i.i, align 4
  %arrayidx2.i.i = getelementptr %struct.rtw89_dev, ptr %1, i32 37, i32 51, i32 6, i32 1
  %234 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_store4_noabort(i32 %234)
  store i32 268435456, ptr %arrayidx2.i.i, align 4
  br label %cleanup

do.end54:                                         ; preds = %do.end6.i113, %do.end.i110
  %retval.0.i115.ph = phi i32 [ %call2.i, %do.end6.i113 ], [ %call.i.i108, %do.end.i110 ]
  %235 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %dev3, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %236, ptr noundef nonnull @.str.42) #10
  call void @rtw89_core_napi_deinit(ptr noundef %1) #7
  call void @rtw89_core_unregister(ptr noundef %1) #7
  br label %err_clear_resource

err_clear_resource:                               ; preds = %do.end54, %do.end46, %do.end38
  %ret.0 = phi i32 [ %call33, %do.end38 ], [ %call41, %do.end46 ], [ %retval.0.i115.ph, %do.end54 ]
  call fastcc void @rtw89_pci_clear_resource(ptr noundef %1, ptr noundef %pdev)
  br label %err_declaim_pci

err_declaim_pci:                                  ; preds = %err_clear_resource, %do.end30
  %ret.1 = phi i32 [ %retval.0.i.ph, %do.end30 ], [ %ret.0, %err_clear_resource ]
  call void @pci_clear_master(ptr noundef %pdev) #7
  call void @pci_disable_device(ptr noundef %pdev) #7
  br label %err_core_deinit

err_core_deinit:                                  ; preds = %err_declaim_pci, %do.end22
  %ret.2 = phi i32 [ %call.i103, %do.end22 ], [ %ret.1, %err_declaim_pci ]
  call void @rtw89_core_deinit(ptr noundef %1) #7
  br label %err_release_hw

err_release_hw:                                   ; preds = %err_core_deinit, %do.end14
  %ret.3 = phi i32 [ %call9, %do.end14 ], [ %ret.2, %err_core_deinit ]
  call void @ieee80211_free_hw(ptr noundef nonnull %call.i) #7
  br label %cleanup

cleanup:                                          ; preds = %err_release_hw, %rtw89_pci_request_irq.exit, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %ret.3, %err_release_hw ], [ -12, %do.end ], [ -2, %if.end.cleanup_crit_edge ], [ 0, %rtw89_pci_request_irq.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtw89_pci_remove(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 8
  %dev.i = getelementptr inbounds %struct.rtw89_dev, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 4
  %irq.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 46
  %6 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %irq.i, align 4
  tail call void @devm_free_irq(ptr noundef %5, i32 noundef %7, ptr noundef %3) #7
  tail call void @pci_free_irq_vectors(ptr noundef %pdev) #7
  tail call void @rtw89_core_napi_deinit(ptr noundef %3) #7
  tail call void @rtw89_core_unregister(ptr noundef %3) #7
  tail call fastcc void @rtw89_pci_clear_resource(ptr noundef %3, ptr noundef %pdev)
  tail call void @pci_clear_master(ptr noundef %pdev) #7
  tail call void @pci_disable_device(ptr noundef %pdev) #7
  tail call void @rtw89_core_deinit(ptr noundef %3) #7
  tail call void @ieee80211_free_hw(ptr noundef %1) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw89_core_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw89_chip_info_setup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw89_core_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw89_core_napi_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw89_core_napi_deinit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw89_core_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rtw89_pci_clear_resource(ptr noundef %rtwdev, ptr noundef %pdev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_rings.i.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 37, i32 51, i32 1, i32 2, i32 4
  %dev.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %desc_size.i.i.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 37, i32 51, i32 1, i32 3
  %0 = ptrtoint ptr %desc_size.i.i.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %desc_size.i.i.i, align 4
  %len.i.i.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 37, i32 51, i32 1, i32 6
  %2 = ptrtoint ptr %len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len.i.i.i, align 4
  %buf_sz2.i.i.i = getelementptr %struct.rtw89_dev, ptr %rtwdev, i32 37, i32 51, i32 4, i32 12, i32 1, i32 5, i32 30, i32 1
  %4 = ptrtoint ptr %buf_sz2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %buf_sz2.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp1.not.i.i.i = icmp eq i32 %3, 0
  br i1 %cmp1.not.i.i.i, label %entry.rtw89_pci_free_rx_ring.exit.i.i_crit_edge, label %entry.for.body.i.i.i_crit_edge

entry.for.body.i.i.i_crit_edge:                   ; preds = %entry
  br label %for.body.i.i.i

entry.rtw89_pci_free_rx_ring.exit.i.i_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtw89_pci_free_rx_ring.exit.i.i

for.body.i.i.i:                                   ; preds = %for.inc.i.i.i.for.body.i.i.i_crit_edge, %entry.for.body.i.i.i_crit_edge
  %i.02.i.i.i = phi i32 [ %inc.i.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ], [ 0, %entry.for.body.i.i.i_crit_edge ]
  %arrayidx.i.i.i = getelementptr [2 x %struct.rtw89_pci_rx_ring], ptr %rx_rings.i.i, i32 0, i32 0, i32 1, i32 %i.02.i.i.i
  %6 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %7, null
  br i1 %tobool.not.i.i.i, label %for.body.i.i.i.for.inc.i.i.i_crit_edge, label %if.end.i.i.i

for.body.i.i.i.for.inc.i.i.i_crit_edge:           ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i.i

if.end.i.i.i:                                     ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %cb.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %cb.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cb.i.i.i.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev.i.i.i, i32 noundef %9, i32 noundef %5, i32 noundef 2, i32 noundef 0) #7
  tail call void @consume_skb(ptr noundef nonnull %7) #7
  %10 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %arrayidx.i.i.i, align 4
  br label %for.inc.i.i.i

for.inc.i.i.i:                                    ; preds = %if.end.i.i.i, %for.body.i.i.i.for.inc.i.i.i_crit_edge
  %inc.i.i.i = add nuw i32 %i.02.i.i.i, 1
  %11 = ptrtoint ptr %len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %len.i.i.i, align 4
  %cmp.i.i.i = icmp ult i32 %inc.i.i.i, %12
  br i1 %cmp.i.i.i, label %for.inc.i.i.i.for.body.i.i.i_crit_edge, label %for.inc.i.i.i.rtw89_pci_free_rx_ring.exit.i.i_crit_edge

for.inc.i.i.i.rtw89_pci_free_rx_ring.exit.i.i_crit_edge: ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtw89_pci_free_rx_ring.exit.i.i

for.inc.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i.i

rtw89_pci_free_rx_ring.exit.i.i:                  ; preds = %for.inc.i.i.i.rtw89_pci_free_rx_ring.exit.i.i_crit_edge, %entry.rtw89_pci_free_rx_ring.exit.i.i_crit_edge
  %conv.i.i.i = zext i8 %1 to i32
  %mul.i.i.i = mul i32 %3, %conv.i.i.i
  %13 = ptrtoint ptr %rx_rings.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %rx_rings.i.i, align 4
  %dma12.i.i.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 37, i32 51, i32 1, i32 3, i32 4
  %15 = ptrtoint ptr %dma12.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %dma12.i.i.i, align 4
  tail call void @dma_free_attrs(ptr noundef %dev.i.i.i, i32 noundef %mul.i.i.i, ptr noundef %14, i32 noundef %16, i32 noundef 0) #7
  %17 = ptrtoint ptr %rx_rings.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %rx_rings.i.i, align 4
  %desc_size.i.1.i.i = getelementptr %struct.rtw89_dev, ptr %rtwdev, i32 37, i32 51, i32 4, i32 12, i32 1, i32 5, i32 44, i32 1
  %18 = ptrtoint ptr %desc_size.i.1.i.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %desc_size.i.1.i.i, align 4
  %len.i.1.i.i = getelementptr %struct.rtw89_dev, ptr %rtwdev, i32 37, i32 51, i32 4, i32 12, i32 1, i32 5, i32 51, i32 1
  %20 = ptrtoint ptr %len.i.1.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %len.i.1.i.i, align 4
  %buf_sz2.i.1.i.i = getelementptr %struct.rtw89_dev, ptr %rtwdev, i32 37, i32 51, i32 4, i32 15, i32 1
  %22 = ptrtoint ptr %buf_sz2.i.1.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %buf_sz2.i.1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp1.not.i.1.i.i = icmp eq i32 %21, 0
  br i1 %cmp1.not.i.1.i.i, label %rtw89_pci_free_rx_ring.exit.i.i.rtw89_pci_free_rx_rings.exit.i_crit_edge, label %rtw89_pci_free_rx_ring.exit.i.i.for.body.i.1.i.i_crit_edge

rtw89_pci_free_rx_ring.exit.i.i.for.body.i.1.i.i_crit_edge: ; preds = %rtw89_pci_free_rx_ring.exit.i.i
  br label %for.body.i.1.i.i

rtw89_pci_free_rx_ring.exit.i.i.rtw89_pci_free_rx_rings.exit.i_crit_edge: ; preds = %rtw89_pci_free_rx_ring.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtw89_pci_free_rx_rings.exit.i

for.body.i.1.i.i:                                 ; preds = %for.inc.i.1.i.i.for.body.i.1.i.i_crit_edge, %rtw89_pci_free_rx_ring.exit.i.i.for.body.i.1.i.i_crit_edge
  %i.02.i.1.i.i = phi i32 [ %inc.i.1.i.i, %for.inc.i.1.i.i.for.body.i.1.i.i_crit_edge ], [ 0, %rtw89_pci_free_rx_ring.exit.i.i.for.body.i.1.i.i_crit_edge ]
  %arrayidx.i.1.i.i = getelementptr [2 x %struct.rtw89_pci_rx_ring], ptr %rx_rings.i.i, i32 0, i32 1, i32 1, i32 %i.02.i.1.i.i
  %24 = ptrtoint ptr %arrayidx.i.1.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx.i.1.i.i, align 4
  %tobool.not.i.1.i.i = icmp eq ptr %25, null
  br i1 %tobool.not.i.1.i.i, label %for.body.i.1.i.i.for.inc.i.1.i.i_crit_edge, label %if.end.i.1.i.i

for.body.i.1.i.i.for.inc.i.1.i.i_crit_edge:       ; preds = %for.body.i.1.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.1.i.i

if.end.i.1.i.i:                                   ; preds = %for.body.i.1.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %cb.i.i.1.i.i = getelementptr inbounds %struct.sk_buff, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %cb.i.i.1.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cb.i.i.1.i.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev.i.i.i, i32 noundef %27, i32 noundef %23, i32 noundef 2, i32 noundef 0) #7
  tail call void @consume_skb(ptr noundef nonnull %25) #7
  %28 = ptrtoint ptr %arrayidx.i.1.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %arrayidx.i.1.i.i, align 4
  br label %for.inc.i.1.i.i

for.inc.i.1.i.i:                                  ; preds = %if.end.i.1.i.i, %for.body.i.1.i.i.for.inc.i.1.i.i_crit_edge
  %inc.i.1.i.i = add nuw i32 %i.02.i.1.i.i, 1
  %29 = ptrtoint ptr %len.i.1.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %len.i.1.i.i, align 4
  %cmp.i.1.i.i = icmp ult i32 %inc.i.1.i.i, %30
  br i1 %cmp.i.1.i.i, label %for.inc.i.1.i.i.for.body.i.1.i.i_crit_edge, label %for.inc.i.1.i.i.rtw89_pci_free_rx_rings.exit.i_crit_edge

for.inc.i.1.i.i.rtw89_pci_free_rx_rings.exit.i_crit_edge: ; preds = %for.inc.i.1.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtw89_pci_free_rx_rings.exit.i

for.inc.i.1.i.i.for.body.i.1.i.i_crit_edge:       ; preds = %for.inc.i.1.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.1.i.i

rtw89_pci_free_rx_rings.exit.i:                   ; preds = %for.inc.i.1.i.i.rtw89_pci_free_rx_rings.exit.i_crit_edge, %rtw89_pci_free_rx_ring.exit.i.i.rtw89_pci_free_rx_rings.exit.i_crit_edge
  %arrayidx.1.i.i = getelementptr %struct.rtw89_dev, ptr %rtwdev, i32 37, i32 51, i32 4, i32 12, i32 1, i32 5, i32 43, i32 1
  %conv.i.1.i.i = zext i8 %19 to i32
  %mul.i.1.i.i = mul i32 %21, %conv.i.1.i.i
  %31 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx.1.i.i, align 4
  %dma12.i.1.i.i = getelementptr %struct.rtw89_dev, ptr %rtwdev, i32 37, i32 51, i32 4, i32 12, i32 1, i32 5, i32 45, i32 1
  %33 = ptrtoint ptr %dma12.i.1.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %dma12.i.1.i.i, align 4
  tail call void @dma_free_attrs(ptr noundef %dev.i.i.i, i32 noundef %mul.i.1.i.i, ptr noundef %32, i32 noundef %34, i32 noundef 0) #7
  %35 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr null, ptr %arrayidx.1.i.i, align 4
  %tx_rings.i.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 1, i32 5, i32 1, i32 4
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %rtw89_pci_free_rx_rings.exit.i
  %i.010.i.i = phi i32 [ 0, %rtw89_pci_free_rx_rings.exit.i ], [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr [13 x %struct.rtw89_pci_tx_ring], ptr %tx_rings.i.i, i32 0, i32 %i.010.i.i
  %36 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx.i.i, align 4
  %dma3.i.i.i = getelementptr inbounds %struct.rtw89_pci_tx_wd_ring, ptr %arrayidx.i.i, i32 0, i32 1
  %38 = ptrtoint ptr %dma3.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %dma3.i.i.i, align 4
  %page_size4.i.i.i = getelementptr inbounds %struct.rtw89_pci_tx_wd_ring, ptr %arrayidx.i.i, i32 0, i32 4
  %40 = ptrtoint ptr %page_size4.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %page_size4.i.i.i, align 4
  %page_num5.i.i.i = getelementptr inbounds %struct.rtw89_pci_tx_wd_ring, ptr %arrayidx.i.i, i32 0, i32 5
  %42 = ptrtoint ptr %page_num5.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %page_num5.i.i.i, align 4
  %mul.i.i4.i = mul i32 %43, %41
  tail call void @dma_free_attrs(ptr noundef %dev.i.i.i, i32 noundef %mul.i.i4.i, ptr noundef %37, i32 noundef %39, i32 noundef 0) #7
  %44 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr null, ptr %arrayidx.i.i, align 4
  %bd_ring.i.i.i = getelementptr [13 x %struct.rtw89_pci_tx_ring], ptr %tx_rings.i.i, i32 0, i32 %i.010.i.i, i32 1
  %45 = ptrtoint ptr %bd_ring.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %bd_ring.i.i.i, align 4
  %dma3.i7.i.i = getelementptr [13 x %struct.rtw89_pci_tx_ring], ptr %tx_rings.i.i, i32 0, i32 %i.010.i.i, i32 1, i32 2
  %47 = ptrtoint ptr %dma3.i7.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %dma3.i7.i.i, align 4
  %desc_size.i.i5.i = getelementptr [13 x %struct.rtw89_pci_tx_ring], ptr %tx_rings.i.i, i32 0, i32 %i.010.i.i, i32 1, i32 1
  %49 = ptrtoint ptr %desc_size.i.i5.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %desc_size.i.i5.i, align 4
  %conv.i.i6.i = zext i8 %50 to i32
  %len.i.i7.i = getelementptr [13 x %struct.rtw89_pci_tx_ring], ptr %tx_rings.i.i, i32 0, i32 %i.010.i.i, i32 1, i32 8
  %51 = ptrtoint ptr %len.i.i7.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %len.i.i7.i, align 4
  %mul.i8.i.i = mul i32 %52, %conv.i.i6.i
  tail call void @dma_free_attrs(ptr noundef %dev.i.i.i, i32 noundef %mul.i8.i.i, ptr noundef %46, i32 noundef %48, i32 noundef 0) #7
  %53 = ptrtoint ptr %bd_ring.i.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr null, ptr %bd_ring.i.i.i, align 4
  %inc.i.i = add nuw nsw i32 %i.010.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 13
  br i1 %exitcond.not.i.i, label %rtw89_pci_free_trx_rings.exit, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

rtw89_pci_free_trx_rings.exit:                    ; preds = %for.body.i.i
  %mmap.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 37, i32 51, i32 6, i32 1, i32 1
  %54 = ptrtoint ptr %mmap.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %mmap.i, align 4
  %tobool.not.i = icmp eq ptr %55, null
  br i1 %tobool.not.i, label %rtw89_pci_free_trx_rings.exit.rtw89_pci_clear_mapping.exit_crit_edge, label %if.then.i

rtw89_pci_free_trx_rings.exit.rtw89_pci_clear_mapping.exit_crit_edge: ; preds = %rtw89_pci_free_trx_rings.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtw89_pci_clear_mapping.exit

if.then.i:                                        ; preds = %rtw89_pci_free_trx_rings.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @pci_iounmap(ptr noundef %pdev, ptr noundef nonnull %55) #7
  tail call void @pci_release_regions(ptr noundef %pdev) #7
  br label %rtw89_pci_clear_mapping.exit

rtw89_pci_clear_mapping.exit:                     ; preds = %if.then.i, %rtw89_pci_free_trx_rings.exit.rtw89_pci_clear_mapping.exit_crit_edge
  %priv = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 58
  %qlen.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 37, i32 51, i32 4, i32 16, i32 1, i32 1
  %56 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %qlen.i, align 4
  tail call fastcc void @rtw89_pci_release_fwcmd(ptr noundef %rtwdev, ptr noundef %priv, i32 noundef %57, i1 noundef zeroext true)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw89_core_deinit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_free_hw(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ieee80211_alloc_hw_nm(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtw89_pci_ops_tx_write(ptr noundef %rtwdev, ptr noundef %tx_req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ch_dma = getelementptr inbounds %struct.rtw89_core_tx_request, ptr %tx_req, i32 0, i32 4, i32 3
  %0 = ptrtoint ptr %ch_dma to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %ch_dma, align 2
  %conv.i = zext i8 %1 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %1)
  %cond.i = icmp eq i8 %1, 12
  %2 = ptrtoint ptr %tx_req to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tx_req, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp9.not.i = icmp eq i32 %3, 2
  br i1 %cond.i, label %lor.lhs.false7.i, label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %entry
  br i1 %cmp9.not.i, label %lor.lhs.false.i.do.end.i_crit_edge, label %lor.lhs.false.i.if.end.i_crit_edge

lor.lhs.false.i.if.end.i_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

lor.lhs.false.i.do.end.i_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

lor.lhs.false7.i:                                 ; preds = %entry
  br i1 %cmp9.not.i, label %lor.lhs.false7.i.if.end.i_crit_edge, label %lor.lhs.false7.i.do.end.i_crit_edge

lor.lhs.false7.i.do.end.i_crit_edge:              ; preds = %lor.lhs.false7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

lor.lhs.false7.i.if.end.i_crit_edge:              ; preds = %lor.lhs.false7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

do.end.i:                                         ; preds = %lor.lhs.false7.i.do.end.i_crit_edge, %lor.lhs.false.i.do.end.i_crit_edge
  %dev.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 1
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.46) #10
  br label %do.end

if.end.i:                                         ; preds = %lor.lhs.false7.i.if.end.i_crit_edge, %lor.lhs.false.i.if.end.i_crit_edge
  %tx_rings.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 1, i32 5, i32 1, i32 4
  %arrayidx.i = getelementptr [13 x %struct.rtw89_pci_tx_ring], ptr %tx_rings.i, i32 0, i32 %conv.i
  %trx_lock.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 1, i32 4, i32 1
  tail call void @_raw_spin_lock_bh(ptr noundef %trx_lock.i) #7
  %rp.i.i = getelementptr [13 x %struct.rtw89_pci_tx_ring], ptr %tx_rings.i, i32 0, i32 %conv.i, i32 1, i32 10
  %6 = ptrtoint ptr %rp.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rp.i.i, align 4
  %wp.i.i = getelementptr [13 x %struct.rtw89_pci_tx_ring], ptr %tx_rings.i, i32 0, i32 %conv.i, i32 1, i32 9
  %8 = ptrtoint ptr %wp.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %wp.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp.i.i = icmp ugt i32 %7, %9
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end.i.i

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %10 = xor i32 %9, -1
  %sub4.i.i = add i32 %7, %10
  br label %rtw89_pci_get_avail_txbd_num.exit.i

if.end.i.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %len.i.i = getelementptr [13 x %struct.rtw89_pci_tx_ring], ptr %tx_rings.i, i32 0, i32 %conv.i, i32 1, i32 8
  %11 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %len.i.i, align 4
  %13 = xor i32 %9, -1
  %sub8.i.i = add i32 %7, %13
  %sub9.i.i = add i32 %sub8.i.i, %12
  br label %rtw89_pci_get_avail_txbd_num.exit.i

rtw89_pci_get_avail_txbd_num.exit.i:              ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub4.i.i, %if.then.i.i ], [ %sub9.i.i, %if.end.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i)
  %cmp11.i = icmp eq i32 %retval.0.i.i, 0
  br i1 %cmp11.i, label %rtw89_pci_get_avail_txbd_num.exit.i.err_unlock.i_crit_edge, label %if.end18.i

rtw89_pci_get_avail_txbd_num.exit.i.err_unlock.i_crit_edge: ; preds = %rtw89_pci_get_avail_txbd_num.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_unlock.i

if.end18.i:                                       ; preds = %rtw89_pci_get_avail_txbd_num.exit.i
  %bd_ring1.i.i = getelementptr [13 x %struct.rtw89_pci_tx_ring], ptr %tx_rings.i, i32 0, i32 %conv.i, i32 1
  %14 = ptrtoint ptr %bd_ring1.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bd_ring1.i.i, align 4
  %add.ptr.i.i = getelementptr %struct.rtw89_pci_tx_bd_32, ptr %15, i32 %9
  %txch.i.i = getelementptr [13 x %struct.rtw89_pci_tx_ring], ptr %tx_rings.i, i32 0, i32 %conv.i, i32 3
  %16 = ptrtoint ptr %txch.i.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %txch.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %17)
  %cmp.i48.i = icmp eq i8 %17, 12
  br i1 %cmp.i48.i, label %if.then.i49.i, label %if.end.i50.i

if.then.i49.i:                                    ; preds = %if.end18.i
  %priv.i.i.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 58
  %desc_info1.i.i.i = getelementptr inbounds %struct.rtw89_core_tx_request, ptr %tx_req, i32 0, i32 4
  %18 = ptrtoint ptr %priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %priv.i.i.i, align 8
  %skb3.i.i.i = getelementptr inbounds %struct.rtw89_core_tx_request, ptr %tx_req, i32 0, i32 1
  %20 = ptrtoint ptr %skb3.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %skb3.i.i.i, align 4
  %status_driver_data.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %21, i32 0, i32 3, i32 32
  %call4.i.i.i = tail call ptr @skb_push(ptr noundef %21, i32 noundef 24) #7
  %22 = call ptr @memset(ptr %call4.i.i.i, i32 0, i32 24)
  tail call void @rtw89_core_fill_txdesc(ptr noundef %rtwdev, ptr noundef %desc_info1.i.i.i, ptr noundef %call4.i.i.i) #7
  %dev.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %19, i32 0, i32 44
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %21, i32 0, i32 19
  %23 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %data.i.i.i, align 4
  %len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %21, i32 0, i32 6
  %25 = ptrtoint ptr %len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %len.i.i.i, align 4
  %call.i.i.i.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %24) #7
  br i1 %call.i.i.i.i, label %land.rhs.i.i.i.i, label %dma_map_single_attrs.exit.i.i.i

land.rhs.i.i.i.i:                                 ; preds = %if.then.i49.i
  %.b1.i.i.i.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i.i.i.i, label %land.rhs.i.i.i.i.dma_map_single_attrs.exit.thread.i.i.i_crit_edge, label %if.then.i.i.i.i, !prof !505

land.rhs.i.i.i.i.dma_map_single_attrs.exit.thread.i.i.i_crit_edge: ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dma_map_single_attrs.exit.thread.i.i.i

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i.i.i.i = tail call ptr @dev_driver_string(ptr noundef %dev.i.i.i) #7
  %init_name.i.i.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %19, i32 0, i32 44, i32 3
  %27 = ptrtoint ptr %init_name.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %init_name.i.i.i.i.i, align 8
  %tobool.not.i.i.i.i.i = icmp eq ptr %28, null
  br i1 %tobool.not.i.i.i.i.i, label %if.end.i.i.i.i.i, label %if.then.i.i.i.i.dev_name.exit.i.i.i.i_crit_edge

if.then.i.i.i.i.dev_name.exit.i.i.i.i_crit_edge:  ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit.i.i.i.i

if.end.i.i.i.i.i:                                 ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %29 = ptrtoint ptr %dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev.i.i.i, align 4
  br label %dev_name.exit.i.i.i.i

dev_name.exit.i.i.i.i:                            ; preds = %if.end.i.i.i.i.i, %if.then.i.i.i.i.dev_name.exit.i.i.i.i_crit_edge
  %retval.0.i.i.i.i.i = phi ptr [ %30, %if.end.i.i.i.i.i ], [ %28, %if.then.i.i.i.i.dev_name.exit.i.i.i.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.61, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.62, ptr noundef %call16.i.i.i.i, ptr noundef %retval.0.i.i.i.i.i) #7
  br label %dma_map_single_attrs.exit.thread.i.i.i

dma_map_single_attrs.exit.thread.i.i.i:           ; preds = %dev_name.exit.i.i.i.i, %land.rhs.i.i.i.i.dma_map_single_attrs.exit.thread.i.i.i_crit_edge
  tail call void @debug_dma_mapping_error(ptr noundef %dev.i.i.i, i32 noundef -1) #7
  br label %do.end.i.i.i

dma_map_single_attrs.exit.i.i.i:                  ; preds = %if.then.i49.i
  tail call void @debug_dma_map_single(ptr noundef %dev.i.i.i, ptr noundef %24, i32 noundef %26) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %31 = load ptr, ptr @mem_map, align 4
  %32 = ptrtoint ptr %24 to i32
  %sub.i.i.i.i = add i32 %32, 1073741824
  %shr.i.i.i.i = lshr i32 %sub.i.i.i.i, 12
  %add.ptr.i.i.i.i = getelementptr %struct.page, ptr %31, i32 %shr.i.i.i.i
  %and.i.i.i.i = and i32 %32, 4095
  %call41.i.i.i.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev.i.i.i, ptr noundef %add.ptr.i.i.i.i, i32 noundef %and.i.i.i.i, i32 noundef %26, i32 noundef 1, i32 noundef 0) #7
  tail call void @debug_dma_mapping_error(ptr noundef %dev.i.i.i, i32 noundef %call41.i.i.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %call41.i.i.i.i, -1
  br i1 %cmp.i.i.i.i, label %dma_map_single_attrs.exit.i.i.i.do.end.i.i.i_crit_edge, label %if.end.i.i.i

dma_map_single_attrs.exit.i.i.i.do.end.i.i.i_crit_edge: ; preds = %dma_map_single_attrs.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i.i.i

do.end.i.i.i:                                     ; preds = %dma_map_single_attrs.exit.i.i.i.do.end.i.i.i_crit_edge, %dma_map_single_attrs.exit.thread.i.i.i
  %dev8.i.i.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 1
  %33 = ptrtoint ptr %dev8.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev8.i.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %34, ptr noundef nonnull @.str.59) #10
  br label %err_unlock.i

if.end.i.i.i:                                     ; preds = %dma_map_single_attrs.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %35 = ptrtoint ptr %status_driver_data.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %call41.i.i.i.i, ptr %status_driver_data.i.i.i.i, align 4
  %option.i.i.i = getelementptr %struct.rtw89_pci_tx_bd_32, ptr %15, i32 %9, i32 1
  %36 = ptrtoint ptr %option.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %36, i32 2)
  store i16 64, ptr %option.i.i.i, align 1
  %37 = ptrtoint ptr %len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %len.i.i.i, align 4
  %conv.i.i.i = trunc i32 %38 to i16
  %39 = tail call i16 @llvm.bswap.i16(i16 %conv.i.i.i) #7
  %40 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_storeN_noabort(i32 %40, i32 2)
  store i16 %39, ptr %add.ptr.i.i, align 1
  %41 = ptrtoint ptr %status_driver_data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %status_driver_data.i.i.i.i, align 4
  %43 = tail call i32 @llvm.bswap.i32(i32 %42) #7
  %dma12.i.i.i = getelementptr %struct.rtw89_pci_tx_bd_32, ptr %15, i32 %9, i32 2
  %44 = ptrtoint ptr %dma12.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %44, i32 4)
  store i32 %43, ptr %dma12.i.i.i, align 1
  %h2c_queue.i.i.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 37, i32 51, i32 4, i32 16, i32 0, i32 2
  tail call void @skb_queue_tail(ptr noundef %h2c_queue.i.i.i, ptr noundef %21) #7
  %len2.i.i.i.i = getelementptr [13 x %struct.rtw89_pci_tx_ring], ptr %tx_rings.i, i32 0, i32 %conv.i, i32 1, i32 8
  %45 = ptrtoint ptr %len2.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %len2.i.i.i.i, align 4
  %47 = ptrtoint ptr %wp.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %wp.i.i, align 4
  %add.i.i.i.i = add i32 %48, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i.i.i, i32 %46)
  %cmp.i35.i.i.i = icmp ult i32 %add.i.i.i.i, %46
  %sub.i36.i.i.i = select i1 %cmp.i35.i.i.i, i32 0, i32 %46
  %cond.i.i.i.i = sub i32 %add.i.i.i.i, %sub.i36.i.i.i
  br label %rtw89_pci_tx_write.exit

if.end.i50.i:                                     ; preds = %if.end18.i
  %free_pages.i.i.i = getelementptr inbounds %struct.rtw89_pci_tx_wd_ring, ptr %arrayidx.i, i32 0, i32 3
  %49 = ptrtoint ptr %free_pages.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile ptr, ptr %free_pages.i.i.i, align 4
  %cmp.not.i.i.i = icmp eq ptr %50, %free_pages.i.i.i
  %tobool.not11.i.i.i = icmp eq ptr %50, null
  %tobool.not.i.i.i = or i1 %cmp.not.i.i.i, %tobool.not11.i.i.i
  br i1 %tobool.not.i.i.i, label %do.end.i.i, label %if.end.i36.i.i

if.end.i36.i.i:                                   ; preds = %if.end.i50.i
  %call.i.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %50) #7
  br i1 %call.i.i.i.i.i, label %if.end.i.i.i37.i.i, label %if.end.i36.i.i.if.end4.i.i_crit_edge

if.end.i36.i.i.if.end4.i.i_crit_edge:             ; preds = %if.end.i36.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4.i.i

if.end.i.i.i37.i.i:                               ; preds = %if.end.i36.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %50, i32 0, i32 1
  %51 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %prev.i.i.i.i.i, align 4
  %53 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %50, align 4
  %prev1.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %54, i32 0, i32 1
  %55 = ptrtoint ptr %prev1.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %52, ptr %prev1.i.i.i.i.i.i, align 4
  %56 = ptrtoint ptr %52 to i32
  call void @__asan_store4_noabort(i32 %56)
  store volatile ptr %54, ptr %52, align 4
  br label %if.end4.i.i

do.end.i.i:                                       ; preds = %if.end.i50.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 1
  %57 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %dev.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %58, ptr noundef nonnull @.str.54) #10
  br label %err_unlock.i

if.end4.i.i:                                      ; preds = %if.end.i.i.i37.i.i, %if.end.i36.i.i.if.end4.i.i_crit_edge
  %59 = ptrtoint ptr %50 to i32
  call void @__asan_store4_noabort(i32 %59)
  store volatile ptr %50, ptr %50, align 4
  %prev.i3.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %50, i32 0, i32 1
  %60 = ptrtoint ptr %prev.i3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %50, ptr %prev.i3.i.i.i.i, align 4
  %len.i38.i.i = getelementptr inbounds %struct.rtw89_pci_tx_wd, ptr %50, i32 0, i32 4
  %61 = ptrtoint ptr %len.i38.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 0, ptr %len.i38.i.i, align 4
  %curr_num.i.i.i = getelementptr inbounds %struct.rtw89_pci_tx_wd_ring, ptr %arrayidx.i, i32 0, i32 6
  %62 = ptrtoint ptr %curr_num.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %curr_num.i.i.i, align 4
  %dec.i.i.i = add i32 %63, -1
  store i32 %dec.i.i.i, ptr %curr_num.i.i.i, align 4
  %priv.i40.i.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 58
  %desc_info1.i41.i.i = getelementptr inbounds %struct.rtw89_core_tx_request, ptr %tx_req, i32 0, i32 4
  %64 = ptrtoint ptr %priv.i40.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %priv.i40.i.i, align 8
  %skb3.i42.i.i = getelementptr inbounds %struct.rtw89_core_tx_request, ptr %tx_req, i32 0, i32 1
  %66 = ptrtoint ptr %skb3.i42.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %skb3.i42.i.i, align 4
  %status_driver_data.i.i43.i.i = getelementptr inbounds %struct.sk_buff, ptr %67, i32 0, i32 3, i32 32
  %en_wd_info4.i.i.i = getelementptr inbounds %struct.rtw89_core_tx_request, ptr %tx_req, i32 0, i32 4, i32 6
  %68 = ptrtoint ptr %en_wd_info4.i.i.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %en_wd_info4.i.i.i, align 1, !range !504
  %vaddr.i.i.i = getelementptr inbounds %struct.rtw89_pci_tx_wd, ptr %50, i32 0, i32 2
  %70 = ptrtoint ptr %vaddr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %vaddr.i.i.i, align 4
  tail call void @rtw89_core_fill_txdesc(ptr noundef %rtwdev, ptr noundef %desc_info1.i41.i.i, ptr noundef %71) #7
  %dev.i44.i.i = getelementptr inbounds %struct.pci_dev, ptr %65, i32 0, i32 44
  %data.i45.i.i = getelementptr inbounds %struct.sk_buff, ptr %67, i32 0, i32 19
  %72 = ptrtoint ptr %data.i45.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %data.i45.i.i, align 4
  %len.i46.i.i = getelementptr inbounds %struct.sk_buff, ptr %67, i32 0, i32 6
  %74 = ptrtoint ptr %len.i46.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %len.i46.i.i, align 4
  %call.i.i47.i.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %73) #7
  br i1 %call.i.i47.i.i, label %land.rhs.i.i49.i.i, label %dma_map_single_attrs.exit.i64.i.i

land.rhs.i.i49.i.i:                               ; preds = %if.end4.i.i
  %.b1.i.i48.i.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i.i48.i.i, label %land.rhs.i.i49.i.i.dma_map_single_attrs.exit.thread.i57.i.i_crit_edge, label %if.then.i.i53.i.i, !prof !505

land.rhs.i.i49.i.i.dma_map_single_attrs.exit.thread.i57.i.i_crit_edge: ; preds = %land.rhs.i.i49.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dma_map_single_attrs.exit.thread.i57.i.i

if.then.i.i53.i.i:                                ; preds = %land.rhs.i.i49.i.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i.i50.i.i = tail call ptr @dev_driver_string(ptr noundef %dev.i44.i.i) #7
  %init_name.i.i.i51.i.i = getelementptr inbounds %struct.pci_dev, ptr %65, i32 0, i32 44, i32 3
  %76 = ptrtoint ptr %init_name.i.i.i51.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %init_name.i.i.i51.i.i, align 8
  %tobool.not.i.i.i52.i.i = icmp eq ptr %77, null
  br i1 %tobool.not.i.i.i52.i.i, label %if.end.i.i.i54.i.i, label %if.then.i.i53.i.i.dev_name.exit.i.i56.i.i_crit_edge

if.then.i.i53.i.i.dev_name.exit.i.i56.i.i_crit_edge: ; preds = %if.then.i.i53.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit.i.i56.i.i

if.end.i.i.i54.i.i:                               ; preds = %if.then.i.i53.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %78 = ptrtoint ptr %dev.i44.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %dev.i44.i.i, align 4
  br label %dev_name.exit.i.i56.i.i

dev_name.exit.i.i56.i.i:                          ; preds = %if.end.i.i.i54.i.i, %if.then.i.i53.i.i.dev_name.exit.i.i56.i.i_crit_edge
  %retval.0.i.i.i55.i.i = phi ptr [ %79, %if.end.i.i.i54.i.i ], [ %77, %if.then.i.i53.i.i.dev_name.exit.i.i56.i.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.61, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.62, ptr noundef %call16.i.i50.i.i, ptr noundef %retval.0.i.i.i55.i.i) #7
  br label %dma_map_single_attrs.exit.thread.i57.i.i

dma_map_single_attrs.exit.thread.i57.i.i:         ; preds = %dev_name.exit.i.i56.i.i, %land.rhs.i.i49.i.i.dma_map_single_attrs.exit.thread.i57.i.i_crit_edge
  tail call void @debug_dma_mapping_error(ptr noundef %dev.i44.i.i, i32 noundef -1) #7
  br label %do.end10.i.i

dma_map_single_attrs.exit.i64.i.i:                ; preds = %if.end4.i.i
  tail call void @debug_dma_map_single(ptr noundef %dev.i44.i.i, ptr noundef %73, i32 noundef %75) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %80 = load ptr, ptr @mem_map, align 4
  %81 = ptrtoint ptr %73 to i32
  %sub.i.i58.i.i = add i32 %81, 1073741824
  %shr.i.i59.i.i = lshr i32 %sub.i.i58.i.i, 12
  %add.ptr.i.i60.i.i = getelementptr %struct.page, ptr %80, i32 %shr.i.i59.i.i
  %and.i.i61.i.i = and i32 %81, 4095
  %call41.i.i62.i.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev.i44.i.i, ptr noundef %add.ptr.i.i60.i.i, i32 noundef %and.i.i61.i.i, i32 noundef %75, i32 noundef 1, i32 noundef 0) #7
  tail call void @debug_dma_mapping_error(ptr noundef %dev.i44.i.i, i32 noundef %call41.i.i62.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i.i62.i.i)
  %cmp.i.i63.i.i = icmp eq i32 %call41.i.i62.i.i, -1
  br i1 %cmp.i.i63.i.i, label %dma_map_single_attrs.exit.i64.i.i.do.end10.i.i_crit_edge, label %if.end12.i.i

dma_map_single_attrs.exit.i64.i.i.do.end10.i.i_crit_edge: ; preds = %dma_map_single_attrs.exit.i64.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end10.i.i

do.end10.i.i:                                     ; preds = %dma_map_single_attrs.exit.i64.i.i.do.end10.i.i_crit_edge, %dma_map_single_attrs.exit.thread.i57.i.i
  %dev9.i.i.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 1
  %82 = ptrtoint ptr %dev9.i.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %dev9.i.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %83, ptr noundef nonnull @.str.63) #10
  %84 = ptrtoint ptr %dev9.i.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %dev9.i.i.i, align 4
  %seq.i.i = getelementptr inbounds %struct.rtw89_pci_tx_wd, ptr %50, i32 0, i32 5
  %86 = ptrtoint ptr %seq.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %seq.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %85, ptr noundef nonnull @.str.57, i32 noundef %87) #10
  %88 = ptrtoint ptr %vaddr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %vaddr.i.i.i, align 4
  %page_size.i.i.i = getelementptr inbounds %struct.rtw89_pci_tx_wd_ring, ptr %arrayidx.i, i32 0, i32 4
  %90 = ptrtoint ptr %page_size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %page_size.i.i.i, align 4
  %92 = call ptr @memset(ptr %89, i32 0, i32 %91)
  %prev.i.i.i.i = getelementptr inbounds %struct.rtw89_pci_tx_wd_ring, ptr %arrayidx.i, i32 0, i32 3, i32 1
  %93 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %prev.i.i.i.i, align 4
  %call.i.i.i73.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %50, ptr noundef %94, ptr noundef %free_pages.i.i.i) #7
  br i1 %call.i.i.i73.i.i, label %if.end.i.i.i74.i.i, label %do.end10.i.i.rtw89_pci_enqueue_txwd.exit.i.i_crit_edge

do.end10.i.i.rtw89_pci_enqueue_txwd.exit.i.i_crit_edge: ; preds = %do.end10.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtw89_pci_enqueue_txwd.exit.i.i

if.end.i.i.i74.i.i:                               ; preds = %do.end10.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %95 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %50, ptr %prev.i.i.i.i, align 4
  %96 = ptrtoint ptr %50 to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %free_pages.i.i.i, ptr %50, align 4
  %97 = ptrtoint ptr %prev.i3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr %94, ptr %prev.i3.i.i.i.i, align 4
  %98 = ptrtoint ptr %94 to i32
  call void @__asan_store4_noabort(i32 %98)
  store volatile ptr %50, ptr %94, align 4
  br label %rtw89_pci_enqueue_txwd.exit.i.i

rtw89_pci_enqueue_txwd.exit.i.i:                  ; preds = %if.end.i.i.i74.i.i, %do.end10.i.i.rtw89_pci_enqueue_txwd.exit.i.i_crit_edge
  %99 = ptrtoint ptr %curr_num.i.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %curr_num.i.i.i, align 4
  %inc.i76.i.i = add i32 %100, 1
  store i32 %inc.i76.i.i, ptr %curr_num.i.i.i, align 4
  br label %err_unlock.i

if.end12.i.i:                                     ; preds = %dma_map_single_attrs.exit.i64.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %69)
  %tobool.not.i66.i.i = icmp eq i8 %69, 0
  %101 = ptrtoint ptr %status_driver_data.i.i43.i.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %call41.i.i62.i.i, ptr %status_driver_data.i.i43.i.i, align 4
  %add.i.i.i = select i1 %tobool.not.i66.i.i, i32 24, i32 48
  %102 = ptrtoint ptr %vaddr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %vaddr.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %103, i32 %add.i.i.i
  %seq.i.i.i = getelementptr inbounds %struct.rtw89_pci_tx_wd, ptr %50, i32 0, i32 5
  %104 = ptrtoint ptr %seq.i.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %seq.i.i.i, align 4
  %106 = trunc i32 %105 to i16
  %conv.i67.i.i = or i16 %106, -32768
  %107 = tail call i16 @llvm.bswap.i16(i16 %conv.i67.i.i) #7
  %108 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %108, i32 2)
  store i16 %107, ptr %add.ptr.i.i.i, align 1
  %seq1.i.i.i = getelementptr inbounds %struct.rtw89_pci_tx_wp_info, ptr %add.ptr.i.i.i, i32 0, i32 1
  %109 = ptrtoint ptr %seq1.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %109, i32 2)
  store i16 0, ptr %seq1.i.i.i, align 1
  %seq2.i.i.i = getelementptr inbounds %struct.rtw89_pci_tx_wp_info, ptr %add.ptr.i.i.i, i32 0, i32 2
  %110 = ptrtoint ptr %seq2.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %110, i32 2)
  store i16 0, ptr %seq2.i.i.i, align 1
  %seq3.i.i.i = getelementptr inbounds %struct.rtw89_pci_tx_wp_info, ptr %add.ptr.i.i.i, i32 0, i32 3
  %111 = ptrtoint ptr %seq3.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %111, i32 2)
  store i16 0, ptr %seq3.i.i.i, align 1
  %tx_cnt.i.i.i = getelementptr [13 x %struct.rtw89_pci_tx_ring], ptr %tx_rings.i, i32 0, i32 %conv.i, i32 6
  %112 = ptrtoint ptr %tx_cnt.i.i.i to i32
  call void @__asan_load8_noabort(i32 %112)
  %113 = load i64, ptr %tx_cnt.i.i.i, align 8
  %inc.i.i.i = add i64 %113, 1
  store i64 %inc.i.i.i, ptr %tx_cnt.i.i.i, align 8
  %114 = ptrtoint ptr %vaddr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %vaddr.i.i.i, align 4
  %add.ptr14.i.i.i = getelementptr i8, ptr %115, i32 %add.i.i.i
  %add.ptr15.i.i.i = getelementptr i8, ptr %add.ptr14.i.i.i, i32 8
  %116 = ptrtoint ptr %len.i46.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %len.i46.i.i, align 4
  %conv17.i.i.i = trunc i32 %117 to i16
  %118 = tail call i16 @llvm.bswap.i16(i16 %conv17.i.i.i) #7
  %119 = ptrtoint ptr %add.ptr15.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %119, i32 2)
  store i16 %118, ptr %add.ptr15.i.i.i, align 1
  %option.i68.i.i = getelementptr inbounds %struct.rtw89_pci_tx_addr_info_32, ptr %add.ptr15.i.i.i, i32 0, i32 1
  %120 = ptrtoint ptr %option.i68.i.i to i32
  call void @__asan_storeN_noabort(i32 %120, i32 2)
  store i16 384, ptr %option.i68.i.i, align 1
  %121 = tail call i32 @llvm.bswap.i32(i32 %call41.i.i62.i.i) #7
  %dma18.i.i.i = getelementptr inbounds %struct.rtw89_pci_tx_addr_info_32, ptr %add.ptr15.i.i.i, i32 0, i32 2
  %122 = ptrtoint ptr %dma18.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %122, i32 4)
  store i32 %121, ptr %dma18.i.i.i, align 1
  %add20.i.i.i = add nuw nsw i32 %add.i.i.i, 16
  %123 = ptrtoint ptr %len.i38.i.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 %add20.i.i.i, ptr %len.i38.i.i, align 4
  %queue.i.i.i = getelementptr inbounds %struct.rtw89_pci_tx_wd, ptr %50, i32 0, i32 1
  tail call void @skb_queue_tail(ptr noundef %queue.i.i.i, ptr noundef %67) #7
  %busy_pages.i.i = getelementptr [13 x %struct.rtw89_pci_tx_ring], ptr %tx_rings.i, i32 0, i32 %conv.i, i32 2
  %prev.i.i.i = getelementptr [13 x %struct.rtw89_pci_tx_ring], ptr %tx_rings.i, i32 0, i32 %conv.i, i32 2, i32 1
  %124 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %prev.i.i.i, align 4
  %call.i.i77.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %50, ptr noundef %125, ptr noundef %busy_pages.i.i) #7
  br i1 %call.i.i77.i.i, label %if.end.i.i.i.i, label %if.end12.i.i.list_add_tail.exit.i.i_crit_edge

if.end12.i.i.list_add_tail.exit.i.i_crit_edge:    ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_add_tail.exit.i.i

if.end.i.i.i.i:                                   ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %126 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store ptr %50, ptr %prev.i.i.i, align 4
  %127 = ptrtoint ptr %50 to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr %busy_pages.i.i, ptr %50, align 4
  %128 = ptrtoint ptr %prev.i3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store ptr %125, ptr %prev.i3.i.i.i.i, align 4
  %129 = ptrtoint ptr %125 to i32
  call void @__asan_store4_noabort(i32 %129)
  store volatile ptr %50, ptr %125, align 4
  br label %list_add_tail.exit.i.i

list_add_tail.exit.i.i:                           ; preds = %if.end.i.i.i.i, %if.end12.i.i.list_add_tail.exit.i.i_crit_edge
  %option.i.i = getelementptr %struct.rtw89_pci_tx_bd_32, ptr %15, i32 %9, i32 1
  %130 = ptrtoint ptr %option.i.i to i32
  call void @__asan_storeN_noabort(i32 %130, i32 2)
  store i16 64, ptr %option.i.i, align 1
  %131 = ptrtoint ptr %len.i38.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %len.i38.i.i, align 4
  %conv13.i.i = trunc i32 %132 to i16
  %133 = tail call i16 @llvm.bswap.i16(i16 %conv13.i.i) #7
  %134 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_storeN_noabort(i32 %134, i32 2)
  store i16 %133, ptr %add.ptr.i.i, align 1
  %paddr.i.i = getelementptr inbounds %struct.rtw89_pci_tx_wd, ptr %50, i32 0, i32 3
  %135 = ptrtoint ptr %paddr.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %paddr.i.i, align 4
  %137 = tail call i32 @llvm.bswap.i32(i32 %136) #7
  %dma.i.i = getelementptr %struct.rtw89_pci_tx_bd_32, ptr %15, i32 %9, i32 2
  %138 = ptrtoint ptr %dma.i.i to i32
  call void @__asan_storeN_noabort(i32 %138, i32 4)
  store i32 %137, ptr %dma.i.i, align 1
  %len2.i.i.i = getelementptr [13 x %struct.rtw89_pci_tx_ring], ptr %tx_rings.i, i32 0, i32 %conv.i, i32 1, i32 8
  %139 = ptrtoint ptr %len2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %len2.i.i.i, align 4
  %141 = ptrtoint ptr %wp.i.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %wp.i.i, align 4
  %add.i78.i.i = add i32 %142, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i78.i.i, i32 %140)
  %cmp.i.i.i = icmp ult i32 %add.i78.i.i, %140
  %sub.i.i.i = select i1 %cmp.i.i.i, i32 0, i32 %140
  %cond.i.i.i = sub i32 %add.i78.i.i, %sub.i.i.i
  br label %rtw89_pci_tx_write.exit

err_unlock.i:                                     ; preds = %rtw89_pci_enqueue_txwd.exit.i.i, %do.end.i.i, %do.end.i.i.i, %rtw89_pci_get_avail_txbd_num.exit.i.err_unlock.i_crit_edge
  %.str.52.sink.i = phi ptr [ @.str.49, %rtw89_pci_get_avail_txbd_num.exit.i.err_unlock.i_crit_edge ], [ @.str.52, %rtw89_pci_enqueue_txwd.exit.i.i ], [ @.str.52, %do.end.i.i ], [ @.str.52, %do.end.i.i.i ]
  %ret.0.i = phi i32 [ -28, %rtw89_pci_get_avail_txbd_num.exit.i.err_unlock.i_crit_edge ], [ -16, %rtw89_pci_enqueue_txwd.exit.i.i ], [ -28, %do.end.i.i ], [ -16, %do.end.i.i.i ]
  %dev25.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 1
  %143 = ptrtoint ptr %dev25.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %dev25.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %144, ptr noundef nonnull %.str.52.sink.i) #10
  tail call void @_raw_spin_unlock_bh(ptr noundef %trx_lock.i) #7
  br label %do.end

rtw89_pci_tx_write.exit:                          ; preds = %list_add_tail.exit.i.i, %if.end.i.i.i
  %storemerge.i = phi i32 [ %cond.i.i.i, %list_add_tail.exit.i.i ], [ %cond.i.i.i.i, %if.end.i.i.i ]
  %145 = ptrtoint ptr %wp.i.i to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 %storemerge.i, ptr %wp.i.i, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %trx_lock.i) #7
  br label %cleanup

do.end:                                           ; preds = %err_unlock.i, %do.end.i
  %retval.0.i.ph = phi i32 [ %ret.0.i, %err_unlock.i ], [ -22, %do.end.i ]
  %dev = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 1
  %146 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %dev, align 4
  %148 = ptrtoint ptr %ch_dma to i32
  call void @__asan_load1_noabort(i32 %148)
  %149 = load i8, ptr %ch_dma, align 2
  %conv = zext i8 %149 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %147, ptr noundef nonnull @.str.44, i32 noundef %conv) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end, %rtw89_pci_tx_write.exit
  %retval.0 = phi i32 [ %retval.0.i.ph, %do.end ], [ 0, %rtw89_pci_tx_write.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtw89_pci_ops_tx_kick_off(ptr noundef %rtwdev, i8 noundef zeroext %txch) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_rings = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 1, i32 5, i32 1, i32 4
  %idxprom = zext i8 %txch to i32
  %trx_lock = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 1, i32 4, i32 1
  tail call void @_raw_spin_lock_bh(ptr noundef %trx_lock) #7
  %addr_idx.i = getelementptr [13 x %struct.rtw89_pci_tx_ring], ptr %tx_rings, i32 0, i32 %idxprom, i32 1, i32 4
  %0 = ptrtoint ptr %addr_idx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %addr_idx.i, align 4
  %wp.i = getelementptr [13 x %struct.rtw89_pci_tx_ring], ptr %tx_rings, i32 0, i32 %idxprom, i32 1, i32 9
  %2 = ptrtoint ptr %wp.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %wp.i, align 4
  %conv.i = trunc i32 %3 to i16
  %hci.i.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 7
  %4 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hci.i.i, align 8
  %write16.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %5, i32 0, i32 11
  %6 = ptrtoint ptr %write16.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %write16.i.i, align 4
  tail call void %7(ptr noundef %rtwdev, i32 noundef %1, i16 noundef zeroext %conv.i) #7
  tail call void @_raw_spin_unlock_bh(ptr noundef %trx_lock) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtw89_pci_ops_flush_queues(ptr noundef %rtwdev, i32 noundef %queues, i1 noundef zeroext %drop) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_rings.i.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 1, i32 5, i32 1, i32 4
  %hci.i.i.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 7
  %dev.i.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 1
  br label %if.then6.i

if.then6.i:                                       ; preds = %for.inc.i.if.then6.i_crit_edge, %entry
  %indvars.iv.i1 = phi i32 [ 0, %entry ], [ %indvars.iv.next.i, %for.inc.i.if.then6.i_crit_edge ]
  %addr_idx.i.i = getelementptr [13 x %struct.rtw89_pci_tx_ring], ptr %tx_rings.i.i, i32 0, i32 %indvars.iv.i1, i32 1, i32 4
  %wp.i.i = getelementptr [13 x %struct.rtw89_pci_tx_ring], ptr %tx_rings.i.i, i32 0, i32 %indvars.iv.i1, i32 1, i32 9
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %if.end.i.i.for.body.i.i_crit_edge, %if.then6.i
  %i.033.i.i = phi i8 [ 0, %if.then6.i ], [ %inc.i.i, %if.end.i.i.for.body.i.i_crit_edge ]
  %0 = ptrtoint ptr %addr_idx.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %addr_idx.i.i, align 4
  %2 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hci.i.i.i, align 8
  %read32.i.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %read32.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %read32.i.i.i, align 4
  %call.i.i.i = tail call i32 %5(ptr noundef %rtwdev, i32 noundef %1) #7
  %and.i.i = lshr i32 %call.i.i.i, 16
  %shr.i.i = and i32 %and.i.i, 4095
  %6 = ptrtoint ptr %wp.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %wp.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i.i, i32 %7)
  %cmp15.i.i = icmp eq i32 %shr.i.i, %7
  br i1 %cmp15.i.i, label %for.body.i.i.for.inc.i_crit_edge, label %if.end.i.i

for.body.i.i.for.inc.i_crit_edge:                 ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.end.i.i:                                       ; preds = %for.body.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 214748) #7
  %inc.i.i = add nuw nsw i8 %i.033.i.i, 1
  %cmp.i.i = icmp ult i8 %i.033.i.i, 59
  br i1 %cmp.i.i, label %if.end.i.i.for.body.i.i_crit_edge, label %for.end.i.i

if.end.i.i.for.body.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

for.end.i.i:                                      ; preds = %if.end.i.i
  br i1 %drop, label %for.end.i.i.for.inc.i_crit_edge, label %do.end20.i.i

for.end.i.i.for.inc.i_crit_edge:                  ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

do.end20.i.i:                                     ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %10, ptr noundef nonnull @.str.65, i32 noundef %indvars.iv.i1) #10
  br label %for.inc.i

for.inc.i:                                        ; preds = %do.end20.i.i, %for.end.i.i.for.inc.i_crit_edge, %for.body.i.i.for.inc.i_crit_edge
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i1, 1
  %cmp3.i = icmp eq i32 %indvars.iv.next.i, 12
  br i1 %cmp3.i, label %__rtw89_pci_ops_flush_txchs.exit, label %for.inc.i.if.then6.i_crit_edge

for.inc.i.if.then6.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then6.i

__rtw89_pci_ops_flush_txchs.exit:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtw89_pci_ops_reset(ptr noundef %rtwdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_rings.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 1, i32 5, i32 1, i32 4
  %hci.i.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 7
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry
  %i.0139.i = phi i32 [ 0, %entry ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %arrayidx2.i = getelementptr [13 x %struct.rtw89_pci_bd_ram], ptr @bd_ram_table, i32 0, i32 %i.0139.i
  %addr_num3.i = getelementptr [13 x %struct.rtw89_pci_tx_ring], ptr %tx_rings.i, i32 0, i32 %i.0139.i, i32 1, i32 3
  %0 = ptrtoint ptr %addr_num3.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %addr_num3.i, align 4
  %addr_bdram4.i = getelementptr [13 x %struct.rtw89_pci_tx_ring], ptr %tx_rings.i, i32 0, i32 %i.0139.i, i32 1, i32 5
  %2 = ptrtoint ptr %addr_bdram4.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %addr_bdram4.i, align 4
  %addr_desa_l5.i = getelementptr [13 x %struct.rtw89_pci_tx_ring], ptr %tx_rings.i, i32 0, i32 %i.0139.i, i32 1, i32 6
  %4 = ptrtoint ptr %addr_desa_l5.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %addr_desa_l5.i, align 4
  %wp.i = getelementptr [13 x %struct.rtw89_pci_tx_ring], ptr %tx_rings.i, i32 0, i32 %i.0139.i, i32 1, i32 9
  %6 = ptrtoint ptr %wp.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %wp.i, align 4
  %rp.i = getelementptr [13 x %struct.rtw89_pci_tx_ring], ptr %tx_rings.i, i32 0, i32 %i.0139.i, i32 1, i32 10
  %7 = ptrtoint ptr %rp.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %rp.i, align 4
  %8 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx2.i, align 1
  %conv20.i = zext i8 %9 to i32
  %max_num.i = getelementptr [13 x %struct.rtw89_pci_bd_ram], ptr @bd_ram_table, i32 0, i32 %i.0139.i, i32 1
  %10 = ptrtoint ptr %max_num.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %max_num.i, align 1
  %conv47.i = zext i8 %11 to i32
  %shl48.i = shl nuw nsw i32 %conv47.i, 8
  %or.i = or i32 %shl48.i, %conv20.i
  %min_num.i = getelementptr [13 x %struct.rtw89_pci_bd_ram], ptr @bd_ram_table, i32 0, i32 %i.0139.i, i32 2
  %12 = ptrtoint ptr %min_num.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %min_num.i, align 1
  %conv75.i = zext i8 %13 to i32
  %shl76.i = shl nuw nsw i32 %conv75.i, 16
  %or78.i = or i32 %or.i, %shl76.i
  %len.i = getelementptr [13 x %struct.rtw89_pci_tx_ring], ptr %tx_rings.i, i32 0, i32 %i.0139.i, i32 1, i32 8
  %14 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %len.i, align 4
  %conv79.i = trunc i32 %15 to i16
  %16 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hci.i.i, align 8
  %write16.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %17, i32 0, i32 11
  %18 = ptrtoint ptr %write16.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %write16.i.i, align 4
  tail call void %19(ptr noundef %rtwdev, i32 noundef %1, i16 noundef zeroext %conv79.i) #7
  %20 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hci.i.i, align 8
  %write32.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %21, i32 0, i32 12
  %22 = ptrtoint ptr %write32.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %write32.i.i, align 4
  tail call void %23(ptr noundef %rtwdev, i32 noundef %3, i32 noundef %or78.i) #7
  %dma.i = getelementptr [13 x %struct.rtw89_pci_tx_ring], ptr %tx_rings.i, i32 0, i32 %i.0139.i, i32 1, i32 2
  %24 = ptrtoint ptr %dma.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %dma.i, align 4
  %26 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %hci.i.i, align 8
  %write32.i134.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %27, i32 0, i32 12
  %28 = ptrtoint ptr %write32.i134.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %write32.i134.i, align 4
  tail call void %29(ptr noundef %rtwdev, i32 noundef %5, i32 noundef %25) #7
  %inc.i = add nuw nsw i32 %i.0139.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 13
  br i1 %exitcond.not.i, label %rtw89_pci_reset_trx_rings.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

rtw89_pci_reset_trx_rings.exit:                   ; preds = %for.body.i
  %priv = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 58
  %addr_num86.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 37, i32 51, i32 1, i32 4
  %30 = ptrtoint ptr %addr_num86.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %addr_num86.i, align 4
  %addr_desa_l87.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 37, i32 51, i32 1, i32 5, i32 0, i32 1
  %32 = ptrtoint ptr %addr_desa_l87.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %addr_desa_l87.i, align 4
  %wp88.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 37, i32 51, i32 1, i32 6, i32 1
  %34 = ptrtoint ptr %wp88.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %wp88.i, align 4
  %rp89.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 37, i32 51, i32 1, i32 6, i32 2
  %35 = ptrtoint ptr %rp89.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %rp89.i, align 4
  %diliver_skb.i = getelementptr %struct.rtw89_dev, ptr %rtwdev, i32 37, i32 51, i32 4, i32 12, i32 1, i32 5, i32 31, i32 1
  %36 = ptrtoint ptr %diliver_skb.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr null, ptr %diliver_skb.i, align 4
  %ready.i = getelementptr %struct.rtw89_dev, ptr %rtwdev, i32 37, i32 51, i32 4, i32 12, i32 1, i32 5, i32 42, i32 1
  %37 = ptrtoint ptr %ready.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 0, ptr %ready.i, align 4
  %len90.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 37, i32 51, i32 1, i32 6
  %38 = ptrtoint ptr %len90.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %len90.i, align 4
  %conv91.i = trunc i32 %39 to i16
  %40 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %hci.i.i, align 8
  %write16.i136.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %41, i32 0, i32 11
  %42 = ptrtoint ptr %write16.i136.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %write16.i136.i, align 4
  tail call void %43(ptr noundef %rtwdev, i32 noundef %31, i16 noundef zeroext %conv91.i) #7
  %dma92.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 37, i32 51, i32 1, i32 3, i32 4
  %44 = ptrtoint ptr %dma92.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %dma92.i, align 4
  %46 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %hci.i.i, align 8
  %write32.i138.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %47, i32 0, i32 12
  %48 = ptrtoint ptr %write32.i138.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %write32.i138.i, align 4
  tail call void %49(ptr noundef %rtwdev, i32 noundef %33, i32 noundef %45) #7
  %addr_num86.1.i = getelementptr %struct.rtw89_dev, ptr %rtwdev, i32 37, i32 51, i32 4, i32 12, i32 1, i32 5, i32 46, i32 1
  %50 = ptrtoint ptr %addr_num86.1.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %addr_num86.1.i, align 4
  %addr_desa_l87.1.i = getelementptr %struct.rtw89_dev, ptr %rtwdev, i32 37, i32 51, i32 4, i32 12, i32 1, i32 5, i32 49, i32 1
  %52 = ptrtoint ptr %addr_desa_l87.1.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %addr_desa_l87.1.i, align 4
  %wp88.1.i = getelementptr %struct.rtw89_dev, ptr %rtwdev, i32 37, i32 51, i32 4, i32 12, i32 1, i32 5, i32 52, i32 1
  %54 = ptrtoint ptr %wp88.1.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 0, ptr %wp88.1.i, align 4
  %rp89.1.i = getelementptr %struct.rtw89_dev, ptr %rtwdev, i32 37, i32 51, i32 4, i32 12, i32 1, i32 5, i32 53, i32 1
  %55 = ptrtoint ptr %rp89.1.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 0, ptr %rp89.1.i, align 4
  %diliver_skb.1.i = getelementptr %struct.rtw89_dev, ptr %rtwdev, i32 37, i32 51, i32 4, i32 15, i32 1, i32 3
  %56 = ptrtoint ptr %diliver_skb.1.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr null, ptr %diliver_skb.1.i, align 4
  %ready.1.i = getelementptr %struct.rtw89_dev, ptr %rtwdev, i32 37, i32 51, i32 4, i32 16, i32 0, i32 1
  %57 = ptrtoint ptr %ready.1.i to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 0, ptr %ready.1.i, align 4
  %len90.1.i = getelementptr %struct.rtw89_dev, ptr %rtwdev, i32 37, i32 51, i32 4, i32 12, i32 1, i32 5, i32 51, i32 1
  %58 = ptrtoint ptr %len90.1.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %len90.1.i, align 4
  %conv91.1.i = trunc i32 %59 to i16
  %60 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %hci.i.i, align 8
  %write16.i136.1.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %61, i32 0, i32 11
  %62 = ptrtoint ptr %write16.i136.1.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %write16.i136.1.i, align 4
  tail call void %63(ptr noundef %rtwdev, i32 noundef %51, i16 noundef zeroext %conv91.1.i) #7
  %dma92.1.i = getelementptr %struct.rtw89_dev, ptr %rtwdev, i32 37, i32 51, i32 4, i32 12, i32 1, i32 5, i32 45, i32 1
  %64 = ptrtoint ptr %dma92.1.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %dma92.1.i, align 4
  %66 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %hci.i.i, align 8
  %write32.i138.1.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %67, i32 0, i32 12
  %68 = ptrtoint ptr %write32.i138.1.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %write32.i138.1.i, align 4
  tail call void %69(ptr noundef %rtwdev, i32 noundef %53, i32 noundef %65) #7
  %trx_lock = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 1, i32 4, i32 1
  tail call void @_raw_spin_lock_bh(ptr noundef %trx_lock) #7
  %qlen.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 37, i32 51, i32 4, i32 16, i32 1, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %rtw89_pci_reset_trx_rings.exit
  %txch.013 = phi i32 [ 0, %rtw89_pci_reset_trx_rings.exit ], [ %inc, %for.inc.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %txch.013)
  %cmp1 = icmp eq i32 %txch.013, 12
  br i1 %cmp1, label %for.inc.thread, label %if.end

for.inc.thread:                                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %70 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %qlen.i, align 4
  tail call fastcc void @rtw89_pci_release_fwcmd(ptr noundef %rtwdev, ptr noundef %priv, i32 noundef %71, i1 noundef zeroext true)
  br label %for.end

if.end:                                           ; preds = %for.body
  %arrayidx = getelementptr [13 x %struct.rtw89_pci_tx_ring], ptr %tx_rings.i, i32 0, i32 %txch.013
  %page_num.i.i = getelementptr inbounds %struct.rtw89_pci_tx_wd_ring, ptr %arrayidx, i32 0, i32 5
  %72 = ptrtoint ptr %page_num.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %page_num.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %cmp2.not.i.i = icmp eq i32 %73, 0
  br i1 %cmp2.not.i.i, label %if.end.for.inc_crit_edge, label %for.body.lr.ph.i.i

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

for.body.lr.ph.i.i:                               ; preds = %if.end
  %busy_pages.i.i = getelementptr [13 x %struct.rtw89_pci_tx_ring], ptr %tx_rings.i, i32 0, i32 %txch.013, i32 2
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %list_del_init.exit.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.03.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %list_del_init.exit.i.i.for.body.i.i_crit_edge ]
  %74 = ptrtoint ptr %busy_pages.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load volatile ptr, ptr %busy_pages.i.i, align 4
  %cmp3.not.i.i = icmp eq ptr %75, %busy_pages.i.i
  %tobool.not1.i.i = icmp eq ptr %75, null
  %tobool.not.i.i = or i1 %cmp3.not.i.i, %tobool.not1.i.i
  br i1 %tobool.not.i.i, label %rtw89_pci_release_busy_txwd.exitthread-pre-split.i, label %if.end.i.i

if.end.i.i:                                       ; preds = %for.body.i.i
  %call.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %75) #7
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.end.i.i.list_del_init.exit.i.i_crit_edge

if.end.i.i.list_del_init.exit.i.i_crit_edge:      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del_init.exit.i.i

if.end.i.i.i.i:                                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %75, i32 0, i32 1
  %76 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %prev.i.i.i.i, align 4
  %78 = ptrtoint ptr %75 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %75, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %79, i32 0, i32 1
  %80 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %77, ptr %prev1.i.i.i.i.i, align 4
  %81 = ptrtoint ptr %77 to i32
  call void @__asan_store4_noabort(i32 %81)
  store volatile ptr %79, ptr %77, align 4
  br label %list_del_init.exit.i.i

list_del_init.exit.i.i:                           ; preds = %if.end.i.i.i.i, %if.end.i.i.list_del_init.exit.i.i_crit_edge
  %82 = ptrtoint ptr %75 to i32
  call void @__asan_store4_noabort(i32 %82)
  store volatile ptr %75, ptr %75, align 4
  %prev.i3.i.i.i = getelementptr inbounds %struct.list_head, ptr %75, i32 0, i32 1
  %83 = ptrtoint ptr %prev.i3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %75, ptr %prev.i3.i.i.i, align 4
  %inc.i.i = add nuw i32 %i.03.i.i, 1
  %84 = ptrtoint ptr %page_num.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %page_num.i.i, align 4
  %cmp.i.i = icmp ult i32 %inc.i.i, %85
  br i1 %cmp.i.i, label %list_del_init.exit.i.i.for.body.i.i_crit_edge, label %list_del_init.exit.i.i.rtw89_pci_release_busy_txwd.exit.i_crit_edge

list_del_init.exit.i.i.rtw89_pci_release_busy_txwd.exit.i_crit_edge: ; preds = %list_del_init.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtw89_pci_release_busy_txwd.exit.i

list_del_init.exit.i.i.for.body.i.i_crit_edge:    ; preds = %list_del_init.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

rtw89_pci_release_busy_txwd.exitthread-pre-split.i: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %86 = ptrtoint ptr %page_num.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %.pr.i = load i32, ptr %page_num.i.i, align 4
  br label %rtw89_pci_release_busy_txwd.exit.i

rtw89_pci_release_busy_txwd.exit.i:               ; preds = %rtw89_pci_release_busy_txwd.exitthread-pre-split.i, %list_del_init.exit.i.i.rtw89_pci_release_busy_txwd.exit.i_crit_edge
  %87 = phi i32 [ %.pr.i, %rtw89_pci_release_busy_txwd.exitthread-pre-split.i ], [ %85, %list_del_init.exit.i.i.rtw89_pci_release_busy_txwd.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %87)
  %cmp8.not.i.i = icmp eq i32 %87, 0
  br i1 %cmp8.not.i.i, label %rtw89_pci_release_busy_txwd.exit.i.for.inc_crit_edge, label %rtw89_pci_release_busy_txwd.exit.i.for.body.i4.i_crit_edge

rtw89_pci_release_busy_txwd.exit.i.for.body.i4.i_crit_edge: ; preds = %rtw89_pci_release_busy_txwd.exit.i
  br label %for.body.i4.i

rtw89_pci_release_busy_txwd.exit.i.for.inc_crit_edge: ; preds = %rtw89_pci_release_busy_txwd.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

for.body.i4.i:                                    ; preds = %for.inc.i.i.for.body.i4.i_crit_edge, %rtw89_pci_release_busy_txwd.exit.i.for.body.i4.i_crit_edge
  %i.09.i.i = phi i32 [ %inc.i6.i, %for.inc.i.i.for.body.i4.i_crit_edge ], [ 0, %rtw89_pci_release_busy_txwd.exit.i.for.body.i4.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.rtw89_pci_tx_wd_ring, ptr %arrayidx, i32 0, i32 2, i32 %i.09.i.i
  %88 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load volatile ptr, ptr %arrayidx.i.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %89, %arrayidx.i.i
  br i1 %cmp.i.not.i.i, label %if.end.i5.i, label %for.body.i4.i.for.inc.i.i_crit_edge

for.body.i4.i.for.inc.i.i_crit_edge:              ; preds = %for.body.i4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i

if.end.i5.i:                                      ; preds = %for.body.i4.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i.i = trunc i32 %i.09.i.i to i16
  tail call fastcc void @rtw89_pci_release_txwd_skb(ptr noundef %rtwdev, ptr noundef %arrayidx, ptr noundef %arrayidx.i.i, i16 noundef zeroext %conv.i.i, i8 noundef zeroext 3) #7
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.end.i5.i, %for.body.i4.i.for.inc.i.i_crit_edge
  %inc.i6.i = add nuw i32 %i.09.i.i, 1
  %90 = ptrtoint ptr %page_num.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %page_num.i.i, align 4
  %cmp.i7.i = icmp ult i32 %inc.i6.i, %91
  br i1 %cmp.i7.i, label %for.inc.i.i.for.body.i4.i_crit_edge, label %for.inc.i.i.for.inc_crit_edge

for.inc.i.i.for.inc_crit_edge:                    ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

for.inc.i.i.for.body.i4.i_crit_edge:              ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i4.i

for.inc:                                          ; preds = %for.inc.i.i.for.inc_crit_edge, %rtw89_pci_release_busy_txwd.exit.i.for.inc_crit_edge, %if.end.for.inc_crit_edge
  %inc = add nuw nsw i32 %txch.013, 1
  %exitcond.not = icmp eq i32 %inc, 13
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.inc.thread
  tail call void @_raw_spin_unlock_bh(ptr noundef %trx_lock) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtw89_pci_ops_start(ptr noundef %rtwdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @rtw89_core_napi_start(ptr noundef %rtwdev) #7
  %irq_lock = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 59, i32 4
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irq_lock) #7
  %running = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 1, i32 5, i32 1, i32 3
  %0 = ptrtoint ptr %running to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %running, align 4
  %halt_c2h_intrs.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 37, i32 51, i32 5, i32 1
  %1 = ptrtoint ptr %halt_c2h_intrs.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %halt_c2h_intrs.i, align 8
  %hci.i.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 7
  %3 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hci.i.i, align 8
  %write32.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %4, i32 0, i32 12
  %5 = ptrtoint ptr %write32.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %write32.i.i, align 4
  tail call void %6(ptr noundef %rtwdev, i32 noundef 416, i32 noundef %2) #7
  %intrs.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 37, i32 51, i32 6
  %7 = ptrtoint ptr %intrs.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %intrs.i, align 4
  %9 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hci.i.i, align 8
  %write32.i8.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %10, i32 0, i32 12
  %11 = ptrtoint ptr %write32.i8.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %write32.i8.i, align 4
  tail call void %12(ptr noundef %rtwdev, i32 noundef 4272, i32 noundef %8) #7
  %arrayidx2.i = getelementptr %struct.rtw89_dev, ptr %rtwdev, i32 37, i32 51, i32 6, i32 1
  %13 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx2.i, align 4
  %15 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hci.i.i, align 8
  %write32.i10.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %16, i32 0, i32 12
  %17 = ptrtoint ptr %write32.i10.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %write32.i10.i, align 4
  tail call void %18(ptr noundef %rtwdev, i32 noundef 5040, i32 noundef %14) #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irq_lock, i32 noundef %call2) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtw89_pci_ops_stop(ptr noundef %rtwdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 58
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %irq_lock = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 59, i32 4
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irq_lock) #7
  %running = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 1, i32 5, i32 1, i32 3
  %2 = ptrtoint ptr %running to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %running, align 4
  %hci.i.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 7
  %3 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hci.i.i, align 8
  %write32.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %4, i32 0, i32 12
  %5 = ptrtoint ptr %write32.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %write32.i.i, align 4
  tail call void %6(ptr noundef %rtwdev, i32 noundef 416, i32 noundef 0) #7
  %7 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hci.i.i, align 8
  %write32.i2.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %8, i32 0, i32 12
  %9 = ptrtoint ptr %write32.i2.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %write32.i2.i, align 4
  tail call void %10(ptr noundef %rtwdev, i32 noundef 4272, i32 noundef 0) #7
  %11 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hci.i.i, align 8
  %write32.i4.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %12, i32 0, i32 12
  %13 = ptrtoint ptr %write32.i4.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %write32.i4.i, align 4
  tail call void %14(ptr noundef %rtwdev, i32 noundef 5040, i32 noundef 0) #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irq_lock, i32 noundef %call3) #7
  %irq = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 46
  %15 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %irq, align 4
  tail call void @synchronize_irq(i32 noundef %16) #7
  tail call void @rtw89_core_napi_stop(ptr noundef %rtwdev) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtw89_pci_recalc_int_mit(ptr noundef %rtwdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %scanning = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 48
  %0 = ptrtoint ptr %scanning to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %scanning, align 1, !range !504
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %rx_tfc_lv3 = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 9, i32 11
  %2 = ptrtoint ptr %rx_tfc_lv3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rx_tfc_lv3, align 4
  %tx_tfc_lv2 = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 9, i32 10
  %4 = ptrtoint ptr %tx_tfc_lv2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tx_tfc_lv2, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %5)
  %cmp = icmp ugt i32 %5, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %cmp4 = icmp ugt i32 %3, 3
  %or.cond = select i1 %cmp, i1 true, i1 %cmp4
  %spec.select = select i1 %or.cond, i32 819232, i32 0
  br label %if.end

if.end:                                           ; preds = %land.lhs.true, %entry.if.end_crit_edge
  %val.0 = phi i32 [ 0, %entry.if.end_crit_edge ], [ %spec.select, %land.lhs.true ]
  %hci.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 7
  %6 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hci.i, align 8
  %write32.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %7, i32 0, i32 12
  %8 = ptrtoint ptr %write32.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %write32.i, align 4
  tail call void %9(ptr noundef %rtwdev, i32 noundef 4308, i32 noundef %val.0) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @rtw89_pci_ops_read8(ptr nocapture noundef readonly %rtwdev, i32 noundef %addr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = and i32 %addr, -16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 49152, i32 %0)
  %1 = icmp eq i32 %0, 49152
  br i1 %1, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %mmap = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 37, i32 51, i32 6, i32 1, i32 1
  %2 = ptrtoint ptr %mmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmap, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 %addr
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #7, !srcloc !506
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !507
  br label %cleanup

if.end:                                           ; preds = %entry
  %and = and i32 %addr, -4
  %and4 = shl nuw nsw i32 %addr, 3
  %mul = and i32 %and4, 24
  %mmap.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 37, i32 51, i32 6, i32 1, i32 1
  %5 = ptrtoint ptr %mmap.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mmap.i, align 4
  %add.ptr.i = getelementptr i8, ptr %6, i32 %and
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !508
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !509
  call void @__sanitizer_cov_trace_const_cmp4(i32 -272716322, i32 %7)
  %cmp.not24.i = icmp eq i32 %7, -272716322
  br i1 %cmp.not24.i, label %if.end.if.end4.i_crit_edge, label %if.end.rtw89_pci_ops_read32_cmac.exit_crit_edge

if.end.rtw89_pci_ops_read32_cmac.exit_crit_edge:  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtw89_pci_ops_read32_cmac.exit

if.end.if.end4.i_crit_edge:                       ; preds = %if.end
  br label %if.end4.i

if.end.i:                                         ; preds = %if.end4.i
  %inc.i = add nuw nsw i32 %count.025.i15, 1
  %exitcond.i = icmp eq i32 %inc.i, 10
  br i1 %exitcond.i, label %do.end.i, label %if.end.i.if.end4.i_crit_edge

if.end.i.if.end4.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %9 = tail call i32 @llvm.bswap.i32(i32 %16) #7
  %dev.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 1
  %10 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %11, ptr noundef nonnull @.str.82, i32 noundef %and, i32 noundef -559038737) #10
  br label %rtw89_pci_ops_read32_cmac.exit

if.end4.i:                                        ; preds = %if.end.i.if.end4.i_crit_edge, %if.end.if.end4.i_crit_edge
  %count.025.i15 = phi i32 [ %inc.i, %if.end.i.if.end4.i_crit_edge ], [ 0, %if.end.if.end4.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !510
  tail call void @arm_heavy_mb() #7
  %12 = ptrtoint ptr %mmap.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mmap.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %13, i32 49156
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 -1) #7, !srcloc !511
  %14 = ptrtoint ptr %mmap.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mmap.i, align 4
  %add.ptr8.i = getelementptr i8, ptr %15, i32 %and
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.i) #7, !srcloc !508
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !512
  call void @__sanitizer_cov_trace_const_cmp4(i32 -272716322, i32 %16)
  %cmp.not.i = icmp eq i32 %16, -272716322
  br i1 %cmp.not.i, label %if.end.i, label %rtw89_pci_ops_read32_cmac.exit.loopexit

rtw89_pci_ops_read32_cmac.exit.loopexit:          ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #7
  br label %rtw89_pci_ops_read32_cmac.exit

rtw89_pci_ops_read32_cmac.exit:                   ; preds = %rtw89_pci_ops_read32_cmac.exit.loopexit, %do.end.i, %if.end.rtw89_pci_ops_read32_cmac.exit_crit_edge
  %val.023.i = phi i32 [ %9, %do.end.i ], [ %8, %if.end.rtw89_pci_ops_read32_cmac.exit_crit_edge ], [ %17, %rtw89_pci_ops_read32_cmac.exit.loopexit ]
  %shr = lshr i32 %val.023.i, %mul
  %conv = trunc i32 %shr to i8
  br label %cleanup

cleanup:                                          ; preds = %rtw89_pci_ops_read32_cmac.exit, %if.then
  %retval.0 = phi i8 [ %conv, %rtw89_pci_ops_read32_cmac.exit ], [ %4, %if.then ]
  ret i8 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i16 @rtw89_pci_ops_read16(ptr nocapture noundef readonly %rtwdev, i32 noundef %addr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = and i32 %addr, -16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 49152, i32 %0)
  %1 = icmp eq i32 %0, 49152
  br i1 %1, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %mmap = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 37, i32 51, i32 6, i32 1, i32 1
  %2 = ptrtoint ptr %mmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmap, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 %addr
  %4 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr) #7, !srcloc !513
  %5 = tail call i16 @llvm.bswap.i16(i16 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !514
  br label %cleanup

if.end:                                           ; preds = %entry
  %and = and i32 %addr, -4
  %and4 = shl nuw nsw i32 %addr, 3
  %mul = and i32 %and4, 24
  %mmap.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 37, i32 51, i32 6, i32 1, i32 1
  %6 = ptrtoint ptr %mmap.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mmap.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 %and
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !508
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !509
  call void @__sanitizer_cov_trace_const_cmp4(i32 -272716322, i32 %8)
  %cmp.not24.i = icmp eq i32 %8, -272716322
  br i1 %cmp.not24.i, label %if.end.if.end4.i_crit_edge, label %if.end.rtw89_pci_ops_read32_cmac.exit_crit_edge

if.end.rtw89_pci_ops_read32_cmac.exit_crit_edge:  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtw89_pci_ops_read32_cmac.exit

if.end.if.end4.i_crit_edge:                       ; preds = %if.end
  br label %if.end4.i

if.end.i:                                         ; preds = %if.end4.i
  %inc.i = add nuw nsw i32 %count.025.i15, 1
  %exitcond.i = icmp eq i32 %inc.i, 10
  br i1 %exitcond.i, label %do.end.i, label %if.end.i.if.end4.i_crit_edge

if.end.i.if.end4.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %10 = tail call i32 @llvm.bswap.i32(i32 %17) #7
  %dev.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 1
  %11 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %12, ptr noundef nonnull @.str.82, i32 noundef %and, i32 noundef -559038737) #10
  br label %rtw89_pci_ops_read32_cmac.exit

if.end4.i:                                        ; preds = %if.end.i.if.end4.i_crit_edge, %if.end.if.end4.i_crit_edge
  %count.025.i15 = phi i32 [ %inc.i, %if.end.i.if.end4.i_crit_edge ], [ 0, %if.end.if.end4.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !510
  tail call void @arm_heavy_mb() #7
  %13 = ptrtoint ptr %mmap.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mmap.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %14, i32 49156
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 -1) #7, !srcloc !511
  %15 = ptrtoint ptr %mmap.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mmap.i, align 4
  %add.ptr8.i = getelementptr i8, ptr %16, i32 %and
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.i) #7, !srcloc !508
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !512
  call void @__sanitizer_cov_trace_const_cmp4(i32 -272716322, i32 %17)
  %cmp.not.i = icmp eq i32 %17, -272716322
  br i1 %cmp.not.i, label %if.end.i, label %rtw89_pci_ops_read32_cmac.exit.loopexit

rtw89_pci_ops_read32_cmac.exit.loopexit:          ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #7
  br label %rtw89_pci_ops_read32_cmac.exit

rtw89_pci_ops_read32_cmac.exit:                   ; preds = %rtw89_pci_ops_read32_cmac.exit.loopexit, %do.end.i, %if.end.rtw89_pci_ops_read32_cmac.exit_crit_edge
  %val.023.i = phi i32 [ %10, %do.end.i ], [ %9, %if.end.rtw89_pci_ops_read32_cmac.exit_crit_edge ], [ %18, %rtw89_pci_ops_read32_cmac.exit.loopexit ]
  %shr = lshr i32 %val.023.i, %mul
  %conv = trunc i32 %shr to i16
  br label %cleanup

cleanup:                                          ; preds = %rtw89_pci_ops_read32_cmac.exit, %if.then
  %retval.0 = phi i16 [ %conv, %rtw89_pci_ops_read32_cmac.exit ], [ %5, %if.then ]
  ret i16 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtw89_pci_ops_read32(ptr nocapture noundef readonly %rtwdev, i32 noundef %addr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = and i32 %addr, -16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 49152, i32 %0)
  %1 = icmp eq i32 %0, 49152
  %mmap.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 37, i32 51, i32 6, i32 1, i32 1
  %2 = ptrtoint ptr %mmap.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmap.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 %addr
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7
  br i1 %1, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !515
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = tail call i32 @llvm.bswap.i32(i32 %4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !509
  call void @__sanitizer_cov_trace_const_cmp4(i32 -272716322, i32 %4)
  %cmp.not24.i = icmp eq i32 %4, -272716322
  br i1 %cmp.not24.i, label %if.end.if.end4.i_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.if.end4.i_crit_edge:                       ; preds = %if.end
  br label %if.end4.i

if.end.i:                                         ; preds = %if.end4.i
  %inc.i = add nuw nsw i32 %count.025.i10, 1
  %exitcond.i = icmp eq i32 %inc.i, 10
  br i1 %exitcond.i, label %do.end.i, label %if.end.i.if.end4.i_crit_edge

if.end.i.if.end4.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %7 = tail call i32 @llvm.bswap.i32(i32 %14) #7
  %dev.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 1
  %8 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %9, ptr noundef nonnull @.str.82, i32 noundef %addr, i32 noundef -559038737) #10
  br label %cleanup

if.end4.i:                                        ; preds = %if.end.i.if.end4.i_crit_edge, %if.end.if.end4.i_crit_edge
  %count.025.i10 = phi i32 [ %inc.i, %if.end.i.if.end4.i_crit_edge ], [ 0, %if.end.if.end4.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !510
  tail call void @arm_heavy_mb() #7
  %10 = ptrtoint ptr %mmap.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mmap.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %11, i32 49156
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 -1) #7, !srcloc !511
  %12 = ptrtoint ptr %mmap.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mmap.i, align 4
  %add.ptr8.i = getelementptr i8, ptr %13, i32 %addr
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.i) #7, !srcloc !508
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !512
  call void @__sanitizer_cov_trace_const_cmp4(i32 -272716322, i32 %14)
  %cmp.not.i = icmp eq i32 %14, -272716322
  br i1 %cmp.not.i, label %if.end.i, label %cleanup.loopexit

cleanup.loopexit:                                 ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #7
  br label %cleanup

cleanup:                                          ; preds = %cleanup.loopexit, %do.end.i, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %5, %if.then ], [ %7, %do.end.i ], [ %6, %if.end.cleanup_crit_edge ], [ %15, %cleanup.loopexit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtw89_pci_ops_write8(ptr nocapture noundef readonly %rtwdev, i32 noundef %addr, i8 noundef zeroext %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !516
  tail call void @arm_heavy_mb() #7
  %mmap = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 37, i32 51, i32 6, i32 1, i32 1
  %0 = ptrtoint ptr %mmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmap, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 %addr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 %data) #7, !srcloc !517
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtw89_pci_ops_write16(ptr nocapture noundef readonly %rtwdev, i32 noundef %addr, i16 noundef zeroext %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !518
  tail call void @arm_heavy_mb() #7
  %0 = tail call i16 @llvm.bswap.i16(i16 %data)
  %mmap = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 37, i32 51, i32 6, i32 1, i32 1
  %1 = ptrtoint ptr %mmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %mmap, align 4
  %add.ptr = getelementptr i8, ptr %2, i32 %addr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr, i16 %0) #7, !srcloc !519
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtw89_pci_ops_write32(ptr nocapture noundef readonly %rtwdev, i32 noundef %addr, i32 noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !510
  tail call void @arm_heavy_mb() #7
  %0 = tail call i32 @llvm.bswap.i32(i32 %data)
  %mmap = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 37, i32 51, i32 6, i32 1, i32 1
  %1 = ptrtoint ptr %mmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %mmap, align 4
  %add.ptr = getelementptr i8, ptr %2, i32 %addr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %0) #7, !srcloc !511
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtw89_pci_ops_mac_pre_init(ptr noundef %rtwdev) #0 align 64 {
entry:
  %val8.i = alloca i8, align 1
  %bdr_ori.i = alloca i8, align 1
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
  %call.i.i.i = tail call i32 %3(ptr noundef %rtwdev, i32 noundef 4096) #7
  %or.i.i = or i32 %call.i.i.i, 4
  %4 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hci.i.i.i, align 8
  %write32.i.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %5, i32 0, i32 12
  %6 = ptrtoint ptr %write32.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %write32.i.i.i, align 4
  tail call void %7(ptr noundef %rtwdev, i32 noundef 4096, i32 noundef %or.i.i) #7
  %chip.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 3
  %8 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %chip.i, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %11)
  %cmp.i = icmp eq i32 %11, 2
  br i1 %cmp.i, label %entry.rtw89_pci_l1off_pwroff.exit_crit_edge, label %if.end.i

entry.rtw89_pci_l1off_pwroff.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtw89_pci_l1off_pwroff.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hci.i.i.i, align 8
  %read32.i.i.i116 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %13, i32 0, i32 9
  %14 = ptrtoint ptr %read32.i.i.i116 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %read32.i.i.i116, align 4
  %call.i.i.i117 = tail call i32 %15(ptr noundef %rtwdev, i32 noundef 4104) #7
  %and.i.i = and i32 %call.i.i.i117, -33
  %16 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hci.i.i.i, align 8
  %write32.i.i.i118 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %17, i32 0, i32 12
  %18 = ptrtoint ptr %write32.i.i.i118 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %write32.i.i.i118, align 4
  tail call void %19(ptr noundef %rtwdev, i32 noundef 4104, i32 noundef %and.i.i) #7
  br label %rtw89_pci_l1off_pwroff.exit

rtw89_pci_l1off_pwroff.exit:                      ; preds = %if.end.i, %entry.rtw89_pci_l1off_pwroff.exit_crit_edge
  %20 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %chip.i, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %21, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp.not.i = icmp eq i32 %23, 0
  br i1 %cmp.not.i, label %if.end.i120, label %rtw89_pci_l1off_pwroff.exit.rtw89_pci_deglitch_setting.exit_crit_edge

rtw89_pci_l1off_pwroff.exit.rtw89_pci_deglitch_setting.exit_crit_edge: ; preds = %rtw89_pci_l1off_pwroff.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtw89_pci_deglitch_setting.exit

if.end.i120:                                      ; preds = %rtw89_pci_l1off_pwroff.exit
  %call.i = tail call fastcc i32 @rtw89_write16_mdio_clr(ptr noundef %rtwdev, i8 noundef zeroext 36, i16 noundef zeroext 3840, i8 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end2.i, label %if.end.i120.rtw89_pci_deglitch_setting.exit_crit_edge

if.end.i120.rtw89_pci_deglitch_setting.exit_crit_edge: ; preds = %if.end.i120
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtw89_pci_deglitch_setting.exit

if.end2.i:                                        ; preds = %if.end.i120
  call void @__sanitizer_cov_trace_pc() #9
  %call3.i = tail call fastcc i32 @rtw89_write16_mdio_clr(ptr noundef %rtwdev, i8 noundef zeroext 36, i16 noundef zeroext 3840, i8 noundef zeroext 1) #7
  br label %rtw89_pci_deglitch_setting.exit

rtw89_pci_deglitch_setting.exit:                  ; preds = %if.end2.i, %if.end.i120.rtw89_pci_deglitch_setting.exit_crit_edge, %rtw89_pci_l1off_pwroff.exit.rtw89_pci_deglitch_setting.exit_crit_edge
  %24 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %chip.i, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %25, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %27)
  %cmp.i122 = icmp eq i32 %27, 2
  br i1 %cmp.i122, label %rtw89_pci_deglitch_setting.exit.if.end_crit_edge, label %if.end.i125

rtw89_pci_deglitch_setting.exit.if.end_crit_edge: ; preds = %rtw89_pci_deglitch_setting.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i125:                                      ; preds = %rtw89_pci_deglitch_setting.exit
  %call.i123 = tail call fastcc i32 @rtw89_write16_mdio_clr(ptr noundef %rtwdev, i8 noundef zeroext 38, i16 noundef zeroext -16384, i8 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i123)
  %tobool.not.i124 = icmp eq i32 %call.i123, 0
  br i1 %tobool.not.i124, label %rtw89_pci_l2_rxen_lat.exit, label %if.end.i125.do.end_crit_edge

if.end.i125.do.end_crit_edge:                     ; preds = %if.end.i125
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

rtw89_pci_l2_rxen_lat.exit:                       ; preds = %if.end.i125
  %call3.i126 = tail call fastcc i32 @rtw89_write16_mdio_clr(ptr noundef %rtwdev, i8 noundef zeroext 38, i16 noundef zeroext -16384, i8 noundef zeroext 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i126)
  %tobool.not = icmp eq i32 %call3.i126, 0
  br i1 %tobool.not, label %rtw89_pci_l2_rxen_lat.exit.if.end_crit_edge, label %rtw89_pci_l2_rxen_lat.exit.do.end_crit_edge

rtw89_pci_l2_rxen_lat.exit.do.end_crit_edge:      ; preds = %rtw89_pci_l2_rxen_lat.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

rtw89_pci_l2_rxen_lat.exit.if.end_crit_edge:      ; preds = %rtw89_pci_l2_rxen_lat.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %rtw89_pci_l2_rxen_lat.exit.do.end_crit_edge, %if.end.i125.do.end_crit_edge
  %retval.0.i289 = phi i32 [ %call3.i126, %rtw89_pci_l2_rxen_lat.exit.do.end_crit_edge ], [ %call.i123, %if.end.i125.do.end_crit_edge ]
  %dev = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 1
  %28 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.84, i32 noundef %retval.0.i289) #10
  br label %cleanup

if.end:                                           ; preds = %rtw89_pci_l2_rxen_lat.exit.if.end_crit_edge, %rtw89_pci_deglitch_setting.exit.if.end_crit_edge
  %30 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %chip.i, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %31, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp.not.i129 = icmp eq i32 %33, 0
  br i1 %cmp.not.i129, label %if.end.i135, label %if.end.rtw89_pci_aphy_pwrcut.exit_crit_edge

if.end.rtw89_pci_aphy_pwrcut.exit_crit_edge:      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtw89_pci_aphy_pwrcut.exit

if.end.i135:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %34 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %hci.i.i.i, align 8
  %read32.i.i.i131 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %35, i32 0, i32 9
  %36 = ptrtoint ptr %read32.i.i.i131 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %read32.i.i.i131, align 4
  %call.i.i.i132 = tail call i32 %37(ptr noundef %rtwdev, i32 noundef 4) #7
  %and.i.i133 = and i32 %call.i.i.i132, -16385
  %38 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %hci.i.i.i, align 8
  %write32.i.i.i134 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %39, i32 0, i32 12
  %40 = ptrtoint ptr %write32.i.i.i134 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %write32.i.i.i134, align 4
  tail call void %41(ptr noundef %rtwdev, i32 noundef 4, i32 noundef %and.i.i133) #7
  br label %rtw89_pci_aphy_pwrcut.exit

rtw89_pci_aphy_pwrcut.exit:                       ; preds = %if.end.i135, %if.end.rtw89_pci_aphy_pwrcut.exit_crit_edge
  %42 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %chip.i, align 4
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %43, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %cmp.not.i137 = icmp eq i32 %45, 0
  br i1 %cmp.not.i137, label %if.end.i144, label %rtw89_pci_aphy_pwrcut.exit.rtw89_pci_hci_ldo.exit_crit_edge

rtw89_pci_aphy_pwrcut.exit.rtw89_pci_hci_ldo.exit_crit_edge: ; preds = %rtw89_pci_aphy_pwrcut.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtw89_pci_hci_ldo.exit

if.end.i144:                                      ; preds = %rtw89_pci_aphy_pwrcut.exit
  call void @__sanitizer_cov_trace_pc() #9
  %46 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %hci.i.i.i, align 8
  %read32.i.i.i139 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %47, i32 0, i32 9
  %48 = ptrtoint ptr %read32.i.i.i139 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %read32.i.i.i139, align 4
  %call.i.i.i140 = tail call i32 %49(ptr noundef %rtwdev, i32 noundef 112) #7
  %or.i.i141 = or i32 %call.i.i.i140, 32768
  %50 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %hci.i.i.i, align 8
  %write32.i.i.i142 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %51, i32 0, i32 12
  %52 = ptrtoint ptr %write32.i.i.i142 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %write32.i.i.i142, align 4
  tail call void %53(ptr noundef %rtwdev, i32 noundef 112, i32 noundef %or.i.i141) #7
  %54 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %hci.i.i.i, align 8
  %read32.i.i4.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %55, i32 0, i32 9
  %56 = ptrtoint ptr %read32.i.i4.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %read32.i.i4.i, align 4
  %call.i.i5.i = tail call i32 %57(ptr noundef %rtwdev, i32 noundef 112) #7
  %and.i.i143 = and i32 %call.i.i5.i, -16385
  %58 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %hci.i.i.i, align 8
  %write32.i.i6.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %59, i32 0, i32 12
  %60 = ptrtoint ptr %write32.i.i6.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %write32.i.i6.i, align 4
  tail call void %61(ptr noundef %rtwdev, i32 noundef 112, i32 noundef %and.i.i143) #7
  br label %rtw89_pci_hci_ldo.exit

rtw89_pci_hci_ldo.exit:                           ; preds = %if.end.i144, %rtw89_pci_aphy_pwrcut.exit.rtw89_pci_hci_ldo.exit_crit_edge
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val8.i) #7
  %62 = ptrtoint ptr %val8.i to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 -1, ptr %val8.i, align 1, !annotation !503
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %bdr_ori.i) #7
  %63 = ptrtoint ptr %bdr_ori.i to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 -1, ptr %bdr_ori.i, align 1, !annotation !503
  %64 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %chip.i, align 4
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %65, align 4
  %68 = zext i32 %67 to i64
  call void @__sanitizer_cov_trace_switch(i64 %68, ptr @__sancov_gen_cov_switch_values.254)
  switch i32 %67, label %rtw89_pci_hci_ldo.exit.if.end.i148_crit_edge [
    i32 0, label %land.lhs.true.i
    i32 2, label %rtw89_pci_hci_ldo.exit.rtw89_pci_auto_refclk_cal.exit.thread294_crit_edge
  ]

rtw89_pci_hci_ldo.exit.rtw89_pci_auto_refclk_cal.exit.thread294_crit_edge: ; preds = %rtw89_pci_hci_ldo.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtw89_pci_auto_refclk_cal.exit.thread294

rtw89_pci_hci_ldo.exit.if.end.i148_crit_edge:     ; preds = %rtw89_pci_hci_ldo.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i148

land.lhs.true.i:                                  ; preds = %rtw89_pci_hci_ldo.exit
  %cv.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 4, i32 1
  %69 = ptrtoint ptr %cv.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %cv.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %70)
  %cmp1.i = icmp eq i8 %70, 1
  br i1 %cmp1.i, label %land.lhs.true.i.rtw89_pci_auto_refclk_cal.exit.thread294_crit_edge, label %land.lhs.true.i.if.end.i148_crit_edge

land.lhs.true.i.if.end.i148_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i148

land.lhs.true.i.rtw89_pci_auto_refclk_cal.exit.thread294_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtw89_pci_auto_refclk_cal.exit.thread294

if.end.i148:                                      ; preds = %land.lhs.true.i.if.end.i148_crit_edge, %rtw89_pci_hci_ldo.exit.if.end.i148_crit_edge
  %call.i146 = call fastcc i32 @rtw89_dbi_read8(ptr noundef %rtwdev, i16 noundef zeroext 130, ptr noundef nonnull %val8.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i146)
  %tobool.not.i147 = icmp eq i32 %call.i146, 0
  br i1 %tobool.not.i147, label %do.end23.i, label %do.end.i

do.end.i:                                         ; preds = %if.end.i148
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 1
  %71 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %72, ptr noundef nonnull @.str.101, i32 noundef 130) #10
  br label %rtw89_pci_auto_refclk_cal.exit.thread

do.end23.i:                                       ; preds = %if.end.i148
  %73 = ptrtoint ptr %val8.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %val8.i, align 1
  %conv24.i = zext i8 %74 to i32
  %and.i149 = and i32 %conv24.i, 3
  %75 = zext i32 %and.i149 to i64
  call void @__sanitizer_cov_trace_switch(i64 %75, ptr @__sancov_gen_cov_switch_values.255)
  switch i32 %and.i149, label %do.end53.i [
    i32 1, label %do.end23.i.if.end57.i_crit_edge
    i32 2, label %if.then49.i
  ]

do.end23.i.if.end57.i_crit_edge:                  ; preds = %do.end23.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end57.i

if.then49.i:                                      ; preds = %do.end23.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end57.i

do.end53.i:                                       ; preds = %do.end23.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev54.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 1
  %76 = ptrtoint ptr %dev54.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %dev54.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %77, ptr noundef nonnull @.str.104, i32 noundef %conv24.i) #10
  br label %rtw89_pci_auto_refclk_cal.exit.thread

if.end57.i:                                       ; preds = %if.then49.i, %do.end23.i.if.end57.i_crit_edge
  %phy_rate.0.i = phi i8 [ 1, %if.then49.i ], [ 0, %do.end23.i.if.end57.i_crit_edge ]
  %call58.i = call fastcc i32 @rtw89_dbi_read8(ptr noundef %rtwdev, i16 noundef zeroext 1817, ptr noundef nonnull %bdr_ori.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58.i)
  %tobool59.not.i = icmp eq i32 %call58.i, 0
  br i1 %tobool59.not.i, label %if.end65.i, label %do.end63.i

do.end63.i:                                       ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev64.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 1
  %78 = ptrtoint ptr %dev64.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %dev64.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %79, ptr noundef nonnull @.str.101, i32 noundef 1817) #10
  br label %rtw89_pci_auto_refclk_cal.exit.thread

if.end65.i:                                       ; preds = %if.end57.i
  %80 = ptrtoint ptr %bdr_ori.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %bdr_ori.i, align 1
  %82 = and i8 %81, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %82)
  %tobool68.not.i = icmp eq i8 %82, 0
  br i1 %tobool68.not.i, label %if.end65.i.if.end81.i_crit_edge, label %if.then69.i

if.end65.i.if.end81.i_crit_edge:                  ; preds = %if.end65.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end81.i

if.then69.i:                                      ; preds = %if.end65.i
  %and71.i = and i8 %81, -9
  %call73.i = tail call fastcc i32 @rtw89_dbi_write8(ptr noundef %rtwdev, i16 noundef zeroext 1817, i8 noundef zeroext %and71.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73.i)
  %tobool74.not.i = icmp eq i32 %call73.i, 0
  br i1 %tobool74.not.i, label %if.then69.i.if.end81.i_crit_edge, label %do.end78.i

if.then69.i.if.end81.i_crit_edge:                 ; preds = %if.then69.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end81.i

do.end78.i:                                       ; preds = %if.then69.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev79.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 1
  %83 = ptrtoint ptr %dev79.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %dev79.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %84, ptr noundef nonnull @.str.109, i32 noundef 1817) #10
  br label %rtw89_pci_auto_refclk_cal.exit.thread

if.end81.i:                                       ; preds = %if.then69.i.if.end81.i_crit_edge, %if.end65.i.if.end81.i_crit_edge
  %call.i.i = tail call fastcc i32 @rtw89_pci_check_mdio(ptr noundef %rtwdev, i8 noundef zeroext 48, i8 noundef zeroext %phy_rate.0.i, i16 noundef zeroext 512) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end90.i, label %do.end88.i

do.end88.i:                                       ; preds = %if.end81.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 1
  %85 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %dev.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %86, ptr noundef nonnull @.str.95, i32 noundef 48, i32 noundef %call.i.i) #10
  br label %end.sink.split.i

if.end90.i:                                       ; preds = %if.end81.i
  %87 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %hci.i.i.i, align 8
  %read16.i.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %88, i32 0, i32 8
  %89 = ptrtoint ptr %read16.i.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %read16.i.i.i, align 4
  %call.i.i.i151 = tail call zeroext i16 %90(ptr noundef %rtwdev, i32 noundef 4262) #7
  %91 = and i16 %call.i.i.i151, 8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %91)
  %tobool93.not.i = icmp eq i16 %91, 0
  br i1 %tobool93.not.i, label %if.end90.i.end.i_crit_edge, label %if.then94.i

if.end90.i.end.i_crit_edge:                       ; preds = %if.end90.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %end.i

if.then94.i:                                      ; preds = %if.end90.i
  %and96.i = and i16 %call.i.i.i151, -8193
  %92 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %hci.i.i.i, align 8
  %write16.i.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %93, i32 0, i32 11
  %94 = ptrtoint ptr %write16.i.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %write16.i.i.i, align 4
  tail call void %95(ptr noundef %rtwdev, i32 noundef 4260, i16 noundef zeroext %and96.i) #7
  %call.i2.i = tail call fastcc i32 @rtw89_pci_check_mdio(ptr noundef %rtwdev, i8 noundef zeroext 48, i8 noundef zeroext %phy_rate.0.i, i16 noundef zeroext 256) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i2.i)
  %tobool.not.i3.i = icmp eq i32 %call.i2.i, 0
  br i1 %tobool.not.i3.i, label %if.then94.i.end.i_crit_edge, label %do.end104.i

if.then94.i.end.i_crit_edge:                      ; preds = %if.then94.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %end.i

do.end104.i:                                      ; preds = %if.then94.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i4.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 1
  %96 = ptrtoint ptr %dev.i4.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %dev.i4.i, align 4
  %conv1.i.i = zext i16 %and96.i to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %97, ptr noundef nonnull @.str.99, i32 noundef 48, i32 noundef %conv1.i.i, i32 noundef %call.i2.i) #10
  br label %end.sink.split.i

end.sink.split.i:                                 ; preds = %do.end104.i, %do.end88.i
  %dev.i4.sink.i = phi ptr [ %dev.i4.i, %do.end104.i ], [ %dev.i.i, %do.end88.i ]
  %.str.115.sink.i = phi ptr [ @.str.115, %do.end104.i ], [ @.str.112, %do.end88.i ]
  %ret.1.ph.i = phi i32 [ %call.i2.i, %do.end104.i ], [ %call.i.i, %do.end88.i ]
  %98 = ptrtoint ptr %dev.i4.sink.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %dev.i4.sink.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %99, ptr noundef nonnull %.str.115.sink.i, i32 noundef 48) #10
  br label %end.i

end.i:                                            ; preds = %end.sink.split.i, %if.then94.i.end.i_crit_edge, %if.end90.i.end.i_crit_edge
  %ret.1.i = phi i32 [ 0, %if.end90.i.end.i_crit_edge ], [ 0, %if.then94.i.end.i_crit_edge ], [ %ret.1.ph.i, %end.sink.split.i ]
  br i1 %tobool68.not.i, label %rtw89_pci_auto_refclk_cal.exit, label %if.then233.i

if.then233.i:                                     ; preds = %end.i
  %call234.i = tail call fastcc i32 @rtw89_dbi_write8(ptr noundef %rtwdev, i16 noundef zeroext 1817, i8 noundef zeroext %81) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call234.i)
  %tobool235.not.i = icmp eq i32 %call234.i, 0
  br i1 %tobool235.not.i, label %if.then233.i.rtw89_pci_auto_refclk_cal.exit.thread294_crit_edge, label %do.end239.i

if.then233.i.rtw89_pci_auto_refclk_cal.exit.thread294_crit_edge: ; preds = %if.then233.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtw89_pci_auto_refclk_cal.exit.thread294

do.end239.i:                                      ; preds = %if.then233.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev240.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 1
  %100 = ptrtoint ptr %dev240.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %dev240.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %101, ptr noundef nonnull @.str.109, i32 noundef 1817) #10
  br label %rtw89_pci_auto_refclk_cal.exit.thread

rtw89_pci_auto_refclk_cal.exit.thread:            ; preds = %do.end239.i, %do.end78.i, %do.end63.i, %do.end53.i, %do.end.i
  %retval.0.i152.ph = phi i32 [ -95, %do.end53.i ], [ %call234.i, %do.end239.i ], [ %call73.i, %do.end78.i ], [ %call58.i, %do.end63.i ], [ %call.i146, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %bdr_ori.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val8.i) #7
  br label %do.end7

rtw89_pci_auto_refclk_cal.exit.thread294:         ; preds = %if.then233.i.rtw89_pci_auto_refclk_cal.exit.thread294_crit_edge, %land.lhs.true.i.rtw89_pci_auto_refclk_cal.exit.thread294_crit_edge, %rtw89_pci_hci_ldo.exit.rtw89_pci_auto_refclk_cal.exit.thread294_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %bdr_ori.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val8.i) #7
  br label %if.end9

rtw89_pci_auto_refclk_cal.exit:                   ; preds = %end.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %bdr_ori.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val8.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1.i)
  %tobool3.not = icmp eq i32 %ret.1.i, 0
  br i1 %tobool3.not, label %rtw89_pci_auto_refclk_cal.exit.if.end9_crit_edge, label %rtw89_pci_auto_refclk_cal.exit.do.end7_crit_edge

rtw89_pci_auto_refclk_cal.exit.do.end7_crit_edge: ; preds = %rtw89_pci_auto_refclk_cal.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end7

rtw89_pci_auto_refclk_cal.exit.if.end9_crit_edge: ; preds = %rtw89_pci_auto_refclk_cal.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

do.end7:                                          ; preds = %rtw89_pci_auto_refclk_cal.exit.do.end7_crit_edge, %rtw89_pci_auto_refclk_cal.exit.thread
  %retval.0.i152292 = phi i32 [ %retval.0.i152.ph, %rtw89_pci_auto_refclk_cal.exit.thread ], [ %ret.1.i, %rtw89_pci_auto_refclk_cal.exit.do.end7_crit_edge ]
  %dev8 = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 1
  %102 = ptrtoint ptr %dev8 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %dev8, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %103, ptr noundef nonnull @.str.87, i32 noundef %retval.0.i152292) #10
  br label %cleanup

if.end9:                                          ; preds = %rtw89_pci_auto_refclk_cal.exit.if.end9_crit_edge, %rtw89_pci_auto_refclk_cal.exit.thread294
  %104 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %chip.i, align 4
  %106 = ptrtoint ptr %105 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %105, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %107)
  %cmp.i154 = icmp eq i32 %107, 2
  br i1 %cmp.i154, label %if.end9.rtw89_pci_set_sic.exit_crit_edge, label %if.end.i160

if.end9.rtw89_pci_set_sic.exit_crit_edge:         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtw89_pci_set_sic.exit

if.end.i160:                                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  %108 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %hci.i.i.i, align 8
  %read32.i.i.i156 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %109, i32 0, i32 9
  %110 = ptrtoint ptr %read32.i.i.i156 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %read32.i.i.i156, align 4
  %call.i.i.i157 = tail call i32 %111(ptr noundef %rtwdev, i32 noundef 5104) #7
  %and.i.i158 = and i32 %call.i.i.i157, -17
  %112 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %hci.i.i.i, align 8
  %write32.i.i.i159 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %113, i32 0, i32 12
  %114 = ptrtoint ptr %write32.i.i.i159 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %write32.i.i.i159, align 4
  tail call void %115(ptr noundef %rtwdev, i32 noundef 5104, i32 noundef %and.i.i158) #7
  br label %rtw89_pci_set_sic.exit

rtw89_pci_set_sic.exit:                           ; preds = %if.end.i160, %if.end9.rtw89_pci_set_sic.exit_crit_edge
  %116 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %chip.i, align 4
  %118 = ptrtoint ptr %117 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %117, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %119)
  %cmp.i162 = icmp eq i32 %119, 2
  br i1 %cmp.i162, label %rtw89_pci_set_sic.exit.rtw89_pci_set_dbg.exit_crit_edge, label %if.end.i168

rtw89_pci_set_sic.exit.rtw89_pci_set_dbg.exit_crit_edge: ; preds = %rtw89_pci_set_sic.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtw89_pci_set_dbg.exit

if.end.i168:                                      ; preds = %rtw89_pci_set_sic.exit
  %120 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %hci.i.i.i, align 8
  %read32.i.i.i164 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %121, i32 0, i32 9
  %122 = ptrtoint ptr %read32.i.i.i164 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %read32.i.i.i164, align 4
  %call.i.i.i165 = tail call i32 %123(ptr noundef %rtwdev, i32 noundef 4544) #7
  %or.i.i166 = or i32 %call.i.i.i165, 3
  %124 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %hci.i.i.i, align 8
  %write32.i.i.i167 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %125, i32 0, i32 12
  %126 = ptrtoint ptr %write32.i.i.i167 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %write32.i.i.i167, align 4
  tail call void %127(ptr noundef %rtwdev, i32 noundef 4544, i32 noundef %or.i.i166) #7
  %128 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %chip.i, align 4
  %130 = ptrtoint ptr %129 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %129, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %131)
  %cmp3.i = icmp eq i32 %131, 0
  br i1 %cmp3.i, label %if.then4.i, label %if.end.i168.rtw89_pci_set_dbg.exit_crit_edge

if.end.i168.rtw89_pci_set_dbg.exit_crit_edge:     ; preds = %if.end.i168
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtw89_pci_set_dbg.exit

if.then4.i:                                       ; preds = %if.end.i168
  call void @__sanitizer_cov_trace_pc() #9
  %132 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %hci.i.i.i, align 8
  %read32.i.i10.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %133, i32 0, i32 9
  %134 = ptrtoint ptr %read32.i.i10.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %read32.i.i10.i, align 4
  %call.i.i11.i = tail call i32 %135(ptr noundef %rtwdev, i32 noundef 5104) #7
  %or.i12.i = or i32 %call.i.i11.i, 1048576
  %136 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %hci.i.i.i, align 8
  %write32.i.i13.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %137, i32 0, i32 12
  %138 = ptrtoint ptr %write32.i.i13.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %write32.i.i13.i, align 4
  tail call void %139(ptr noundef %rtwdev, i32 noundef 5104, i32 noundef %or.i12.i) #7
  br label %rtw89_pci_set_dbg.exit

rtw89_pci_set_dbg.exit:                           ; preds = %if.then4.i, %if.end.i168.rtw89_pci_set_dbg.exit_crit_edge, %rtw89_pci_set_sic.exit.rtw89_pci_set_dbg.exit_crit_edge
  %140 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %chip.i, align 4
  %142 = ptrtoint ptr %141 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %141, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %143)
  %cmp = icmp eq i32 %143, 0
  br i1 %cmp, label %if.then10, label %rtw89_pci_set_dbg.exit.if.end11_crit_edge

rtw89_pci_set_dbg.exit.if.end11_crit_edge:        ; preds = %rtw89_pci_set_dbg.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

if.then10:                                        ; preds = %rtw89_pci_set_dbg.exit
  call void @__sanitizer_cov_trace_pc() #9
  %144 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %hci.i.i.i, align 8
  %read32.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %145, i32 0, i32 9
  %146 = ptrtoint ptr %read32.i.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %read32.i.i, align 4
  %call.i.i169 = tail call i32 %147(ptr noundef %rtwdev, i32 noundef 112) #7
  %and.i170 = and i32 %call.i.i169, -2049
  %148 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %hci.i.i.i, align 8
  %write32.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %149, i32 0, i32 12
  %150 = ptrtoint ptr %write32.i.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %write32.i.i, align 4
  tail call void %151(ptr noundef %rtwdev, i32 noundef 112, i32 noundef %and.i170) #7
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %rtw89_pci_set_dbg.exit.if.end11_crit_edge
  %152 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %hci.i.i.i, align 8
  %read32.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %153, i32 0, i32 9
  %154 = ptrtoint ptr %read32.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %read32.i, align 4
  %call.i171 = tail call i32 %155(ptr noundef %rtwdev, i32 noundef 4568) #7
  %and.i = and i32 %call.i171, -244
  %or = or i32 %and.i, 67
  %156 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %hci.i.i.i, align 8
  %write32.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %157, i32 0, i32 12
  %158 = ptrtoint ptr %write32.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %write32.i, align 4
  tail call void %159(ptr noundef %rtwdev, i32 noundef 4568, i32 noundef %or) #7
  %160 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %hci.i.i.i, align 8
  %read32.i.i174 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %161, i32 0, i32 9
  %162 = ptrtoint ptr %read32.i.i174 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %read32.i.i174, align 4
  %call.i.i175 = tail call i32 %163(ptr noundef %rtwdev, i32 noundef 4096) #7
  %or.i176 = or i32 %call.i.i175, 12582912
  %164 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %hci.i.i.i, align 8
  %write32.i.i177 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %165, i32 0, i32 12
  %166 = ptrtoint ptr %write32.i.i177 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %write32.i.i177, align 4
  tail call void %167(ptr noundef %rtwdev, i32 noundef 4096, i32 noundef %or.i176) #7
  %168 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %hci.i.i.i, align 8
  %read32.i.i179 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %169, i32 0, i32 9
  %170 = ptrtoint ptr %read32.i.i179 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %read32.i.i179, align 4
  %call.i.i180 = tail call i32 %171(ptr noundef %rtwdev, i32 noundef 4112) #7
  %or.i181 = or i32 %call.i.i180, 524288
  %172 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %hci.i.i.i, align 8
  %write32.i.i182 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %173, i32 0, i32 12
  %174 = ptrtoint ptr %write32.i.i182 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %write32.i.i182, align 4
  tail call void %175(ptr noundef %rtwdev, i32 noundef 4112, i32 noundef %or.i181) #7
  %176 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %hci.i.i.i, align 8
  %read32.i.i.i184 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %177, i32 0, i32 9
  %178 = ptrtoint ptr %read32.i.i.i184 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %read32.i.i.i184, align 4
  %call.i.i10.i = tail call i32 %179(ptr noundef %rtwdev, i32 noundef 4112) #7
  %or.i11.i = or i32 %call.i.i10.i, 1048576
  %180 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %hci.i.i.i, align 8
  %write32.i.i12.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %181, i32 0, i32 12
  %182 = ptrtoint ptr %write32.i.i12.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %write32.i.i12.i, align 4
  tail call void %183(ptr noundef %rtwdev, i32 noundef 4112, i32 noundef %or.i11.i) #7
  %184 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %hci.i.i.i, align 8
  %read32.i.i14.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %185, i32 0, i32 9
  %186 = ptrtoint ptr %read32.i.i14.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %read32.i.i14.i, align 4
  %call.i.i15.i = tail call i32 %187(ptr noundef %rtwdev, i32 noundef 4096) #7
  %and.i16.i = and i32 %call.i.i15.i, -10241
  %188 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %hci.i.i.i, align 8
  %write32.i.i17.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %189, i32 0, i32 12
  %190 = ptrtoint ptr %write32.i.i17.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %write32.i.i17.i, align 4
  tail call void %191(ptr noundef %rtwdev, i32 noundef 4096, i32 noundef %and.i16.i) #7
  %call14 = tail call i64 @ktime_get() #7
  %add.i = add i64 %call14, 3000000
  tail call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 1850) #7
  %192 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %hci.i.i.i, align 8
  %read32.i186299 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %193, i32 0, i32 9
  %194 = ptrtoint ptr %read32.i186299 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %read32.i186299, align 4
  %call.i187300 = tail call i32 %195(ptr noundef %rtwdev, i32 noundef 4124) #7
  %and301 = and i32 %call.i187300, 7340032
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and301)
  %cmp29302 = icmp eq i32 %and301, 0
  br i1 %cmp29302, label %if.end11.for.end_crit_edge, label %if.end11.land.lhs.true_crit_edge

if.end11.land.lhs.true_crit_edge:                 ; preds = %if.end11
  br label %land.lhs.true

if.end11.for.end_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

land.lhs.true:                                    ; preds = %if.then40.land.lhs.true_crit_edge, %if.end11.land.lhs.true_crit_edge
  %call33 = tail call i64 @ktime_get() #7
  call void @__sanitizer_cov_trace_cmp8(i64 %call33, i64 %add.i)
  %cmp3.i189 = icmp sgt i64 %call33, %add.i
  br i1 %cmp3.i189, label %if.then36, label %if.then40

if.then36:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %196 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %hci.i.i.i, align 8
  %read32.i192 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %197, i32 0, i32 9
  %198 = ptrtoint ptr %read32.i192 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %read32.i192, align 4
  %call.i193 = tail call i32 %199(ptr noundef %rtwdev, i32 noundef 4124) #7
  br label %for.end

if.then40:                                        ; preds = %land.lhs.true
  tail call void @usleep_range_state(i32 noundef 26, i32 noundef 100, i32 noundef 2) #7
  %200 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %hci.i.i.i, align 8
  %read32.i186 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %201, i32 0, i32 9
  %202 = ptrtoint ptr %read32.i186 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %read32.i186, align 4
  %call.i187 = tail call i32 %203(ptr noundef %rtwdev, i32 noundef 4124) #7
  %and = and i32 %call.i187, 7340032
  %cmp29 = icmp eq i32 %and, 0
  br i1 %cmp29, label %if.then40.for.end_crit_edge, label %if.then40.land.lhs.true_crit_edge

if.then40.land.lhs.true_crit_edge:                ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true

if.then40.for.end_crit_edge:                      ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %if.then40.for.end_crit_edge, %if.then36, %if.end11.for.end_crit_edge
  %dma_busy.0 = phi i32 [ %call.i193, %if.then36 ], [ %call.i187300, %if.end11.for.end_crit_edge ], [ %call.i187, %if.then40.for.end_crit_edge ]
  %and42 = and i32 %dma_busy.0, 7340032
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42)
  %cmp43 = icmp eq i32 %and42, 0
  br i1 %cmp43, label %if.end50, label %do.end48

do.end48:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %dev49 = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 1
  %204 = ptrtoint ptr %dev49 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %dev49, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %205, ptr noundef nonnull @.str.90) #10
  br label %cleanup

if.end50:                                         ; preds = %for.end
  %206 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %chip.i, align 4
  %208 = ptrtoint ptr %207 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %207, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %209)
  %cmp.i195 = icmp eq i32 %209, 0
  %spec.select.i = select i1 %cmp.i195, i32 2047, i32 1807
  %210 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %hci.i.i.i, align 8
  %read32.i.i.i197 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %211, i32 0, i32 9
  %212 = ptrtoint ptr %read32.i.i.i197 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %read32.i.i.i197, align 4
  %call.i.i.i198 = tail call i32 %213(ptr noundef %rtwdev, i32 noundef 4116) #7
  %or.i.i199 = or i32 %call.i.i.i198, %spec.select.i
  %214 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %hci.i.i.i, align 8
  %write32.i.i.i200 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %215, i32 0, i32 12
  %216 = ptrtoint ptr %write32.i.i.i200 to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %write32.i.i.i200, align 4
  tail call void %217(ptr noundef %rtwdev, i32 noundef 4116, i32 noundef %or.i.i199) #7
  %218 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %chip.i, align 4
  %220 = ptrtoint ptr %219 to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %219, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %221)
  %cmp3.i201 = icmp eq i32 %221, 0
  br i1 %cmp3.i201, label %if.then4.i202, label %if.end50.rtw89_pci_clr_idx_all.exit_crit_edge

if.end50.rtw89_pci_clr_idx_all.exit_crit_edge:    ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtw89_pci_clr_idx_all.exit

if.then4.i202:                                    ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #9
  %222 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %hci.i.i.i, align 8
  %read32.i.i12.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %223, i32 0, i32 9
  %224 = ptrtoint ptr %read32.i.i12.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %read32.i.i12.i, align 4
  %call.i.i13.i = tail call i32 %225(ptr noundef %rtwdev, i32 noundef 4884) #7
  %or.i14.i = or i32 %call.i.i13.i, 3
  %226 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %hci.i.i.i, align 8
  %write32.i.i15.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %227, i32 0, i32 12
  %228 = ptrtoint ptr %write32.i.i15.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %write32.i.i15.i, align 4
  tail call void %229(ptr noundef %rtwdev, i32 noundef 4884, i32 noundef %or.i14.i) #7
  br label %rtw89_pci_clr_idx_all.exit

rtw89_pci_clr_idx_all.exit:                       ; preds = %if.then4.i202, %if.end50.rtw89_pci_clr_idx_all.exit_crit_edge
  %230 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %hci.i.i.i, align 8
  %read32.i.i17.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %231, i32 0, i32 9
  %232 = ptrtoint ptr %read32.i.i17.i to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %read32.i.i17.i, align 4
  %call.i.i18.i = tail call i32 %233(ptr noundef %rtwdev, i32 noundef 4120) #7
  %or.i19.i = or i32 %call.i.i18.i, 3
  %234 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %hci.i.i.i, align 8
  %write32.i.i20.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %235, i32 0, i32 12
  %236 = ptrtoint ptr %write32.i.i20.i to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %write32.i.i20.i, align 4
  tail call void %237(ptr noundef %rtwdev, i32 noundef 4120, i32 noundef %or.i19.i) #7
  %238 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %hci.i.i.i, align 8
  %read32.i.i204 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %239, i32 0, i32 9
  %240 = ptrtoint ptr %read32.i.i204 to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %read32.i.i204, align 4
  %call.i.i205 = tail call i32 %241(ptr noundef %rtwdev, i32 noundef 4096) #7
  %or.i206 = or i32 %call.i.i205, 48
  %242 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %hci.i.i.i, align 8
  %write32.i.i207 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %243, i32 0, i32 12
  %244 = ptrtoint ptr %write32.i.i207 to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %write32.i.i207, align 4
  tail call void %245(ptr noundef %rtwdev, i32 noundef 4096, i32 noundef %or.i206) #7
  %246 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %hci.i.i.i, align 8
  %read32.i.i209 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %247, i32 0, i32 9
  %248 = ptrtoint ptr %read32.i.i209 to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %read32.i.i209, align 4
  %call.i.i210 = tail call i32 %249(ptr noundef %rtwdev, i32 noundef 4096) #7
  %and.i211 = and i32 %call.i.i210, -262145
  %250 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %hci.i.i.i, align 8
  %write32.i.i212 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %251, i32 0, i32 12
  %252 = ptrtoint ptr %write32.i.i212 to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %write32.i.i212, align 4
  tail call void %253(ptr noundef %rtwdev, i32 noundef 4096, i32 noundef %and.i211) #7
  %254 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %hci.i.i.i, align 8
  %read32.i.i214 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %255, i32 0, i32 9
  %256 = ptrtoint ptr %read32.i.i214 to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %read32.i.i214, align 4
  %call.i.i215 = tail call i32 %257(ptr noundef %rtwdev, i32 noundef 4096) #7
  %or.i216 = or i32 %call.i.i215, 1792
  %258 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %hci.i.i.i, align 8
  %write32.i.i217 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %259, i32 0, i32 12
  %260 = ptrtoint ptr %write32.i.i217 to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %write32.i.i217, align 4
  tail call void %261(ptr noundef %rtwdev, i32 noundef 4096, i32 noundef %or.i216) #7
  %262 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %hci.i.i.i, align 8
  %read32.i.i220 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %263, i32 0, i32 9
  %264 = ptrtoint ptr %read32.i.i220 to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %read32.i.i220, align 4
  %call.i.i221 = tail call i32 %265(ptr noundef %rtwdev, i32 noundef 4096) #7
  %and21.i222 = and i32 %call.i.i221, -114689
  %or.i223 = or i32 %and21.i222, 49152
  %266 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %hci.i.i.i, align 8
  %write32.i.i224 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %267, i32 0, i32 12
  %268 = ptrtoint ptr %write32.i.i224 to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %write32.i.i224, align 4
  tail call void %269(ptr noundef %rtwdev, i32 noundef 4096, i32 noundef %or.i223) #7
  %270 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %hci.i.i.i, align 8
  %read32.i.i227 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %271, i32 0, i32 9
  %272 = ptrtoint ptr %read32.i.i227 to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load ptr, ptr %read32.i.i227, align 4
  %call.i.i228 = tail call i32 %273(ptr noundef %rtwdev, i32 noundef 4096) #7
  %or.i229 = or i32 %call.i.i228, 4096
  %274 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load ptr, ptr %hci.i.i.i, align 8
  %write32.i.i230 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %275, i32 0, i32 12
  %276 = ptrtoint ptr %write32.i.i230 to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load ptr, ptr %write32.i.i230, align 4
  tail call void %277(ptr noundef %rtwdev, i32 noundef 4096, i32 noundef %or.i229) #7
  %278 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load ptr, ptr %hci.i.i.i, align 8
  %read32.i.i232 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %279, i32 0, i32 9
  %280 = ptrtoint ptr %read32.i.i232 to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load ptr, ptr %read32.i.i232, align 4
  %call.i.i233 = tail call i32 %281(ptr noundef %rtwdev, i32 noundef 5104) #7
  %or.i235 = or i32 %call.i.i233, 458752
  %282 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load ptr, ptr %hci.i.i.i, align 8
  %write32.i.i236 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %283, i32 0, i32 12
  %284 = ptrtoint ptr %write32.i.i236 to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load ptr, ptr %write32.i.i236, align 4
  tail call void %285(ptr noundef %rtwdev, i32 noundef 5104, i32 noundef %or.i235) #7
  %286 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load ptr, ptr %hci.i.i.i, align 8
  %read32.i.i239 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %287, i32 0, i32 9
  %288 = ptrtoint ptr %read32.i.i239 to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load ptr, ptr %read32.i.i239, align 4
  %call.i.i240 = tail call i32 %289(ptr noundef %rtwdev, i32 noundef 4100) #7
  %and21.i241 = and i32 %call.i.i240, -251658241
  %or.i242 = or i32 %and21.i241, 16777216
  %290 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load ptr, ptr %hci.i.i.i, align 8
  %write32.i.i243 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %291, i32 0, i32 12
  %292 = ptrtoint ptr %write32.i.i243 to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load ptr, ptr %write32.i.i243, align 4
  tail call void %293(ptr noundef %rtwdev, i32 noundef 4100, i32 noundef %or.i242) #7
  %294 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load ptr, ptr %hci.i.i.i, align 8
  %read32.i.i246 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %295, i32 0, i32 9
  %296 = ptrtoint ptr %read32.i.i246 to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load ptr, ptr %read32.i.i246, align 4
  %call.i.i247 = tail call i32 %297(ptr noundef %rtwdev, i32 noundef 4100) #7
  %and21.i248 = and i32 %call.i.i247, -983041
  %or.i249 = or i32 %and21.i248, 65536
  %298 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load ptr, ptr %hci.i.i.i, align 8
  %write32.i.i250 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %299, i32 0, i32 12
  %300 = ptrtoint ptr %write32.i.i250 to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load ptr, ptr %write32.i.i250, align 4
  tail call void %301(ptr noundef %rtwdev, i32 noundef 4100, i32 noundef %or.i249) #7
  tail call void @rtw89_pci_ops_reset(ptr noundef %rtwdev)
  %302 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load ptr, ptr %hci.i.i.i, align 8
  %read32.i.i253 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %303, i32 0, i32 9
  %304 = ptrtoint ptr %read32.i.i253 to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load ptr, ptr %read32.i.i253, align 4
  %call.i.i254 = tail call i32 %305(ptr noundef %rtwdev, i32 noundef 4096) #7
  %or.i255 = or i32 %call.i.i254, 8
  %306 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load ptr, ptr %hci.i.i.i, align 8
  %write32.i.i256 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %307, i32 0, i32 12
  %308 = ptrtoint ptr %write32.i.i256 to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load ptr, ptr %write32.i.i256, align 4
  tail call void %309(ptr noundef %rtwdev, i32 noundef 4096, i32 noundef %or.i255) #7
  %call1.i = tail call i64 @ktime_get() #7
  %add.i.i = add i64 %call1.i, 100000
  %310 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load ptr, ptr %hci.i.i.i, align 8
  %read32.i3440.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %311, i32 0, i32 9
  %312 = ptrtoint ptr %read32.i3440.i to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load ptr, ptr %read32.i3440.i, align 4
  %call.i3541.i = tail call i32 %313(ptr noundef %rtwdev, i32 noundef 4096) #7
  %and42.i = and i32 %call.i3541.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42.i)
  %tobool.not43.i = icmp eq i32 %and42.i, 0
  br i1 %tobool.not43.i, label %rtw89_pci_clr_idx_all.exit.if.end58_crit_edge, label %rtw89_pci_clr_idx_all.exit.land.lhs.true.i257_crit_edge

rtw89_pci_clr_idx_all.exit.land.lhs.true.i257_crit_edge: ; preds = %rtw89_pci_clr_idx_all.exit
  br label %land.lhs.true.i257

rtw89_pci_clr_idx_all.exit.if.end58_crit_edge:    ; preds = %rtw89_pci_clr_idx_all.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end58

land.lhs.true.i257:                               ; preds = %cond.false.i.land.lhs.true.i257_crit_edge, %rtw89_pci_clr_idx_all.exit.land.lhs.true.i257_crit_edge
  %call5.i = tail call i64 @ktime_get() #7
  call void @__sanitizer_cov_trace_cmp8(i64 %call5.i, i64 %add.i.i)
  %cmp3.i.i = icmp sgt i64 %call5.i, %add.i.i
  br i1 %cmp3.i.i, label %for.end.i, label %cond.false.i

cond.false.i:                                     ; preds = %land.lhs.true.i257
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %314 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %314(i32 noundef 214748) #7
  %315 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load ptr, ptr %hci.i.i.i, align 8
  %read32.i34.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %316, i32 0, i32 9
  %317 = ptrtoint ptr %read32.i34.i to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load ptr, ptr %read32.i34.i, align 4
  %call.i35.i = tail call i32 %318(ptr noundef %rtwdev, i32 noundef 4096) #7
  %and.i258 = and i32 %call.i35.i, 8
  %tobool.not.i259 = icmp eq i32 %and.i258, 0
  br i1 %tobool.not.i259, label %cond.false.i.if.end58_crit_edge, label %cond.false.i.land.lhs.true.i257_crit_edge

cond.false.i.land.lhs.true.i257_crit_edge:        ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true.i257

cond.false.i.if.end58_crit_edge:                  ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end58

for.end.i:                                        ; preds = %land.lhs.true.i257
  %319 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load ptr, ptr %hci.i.i.i, align 8
  %read32.i37.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %320, i32 0, i32 9
  %321 = ptrtoint ptr %read32.i37.i to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load ptr, ptr %read32.i37.i, align 4
  %call.i38.i = tail call i32 %322(ptr noundef %rtwdev, i32 noundef 4096) #7
  %.pre.i = and i32 %call.i38.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pre.i)
  %tobool18.not.i = icmp eq i32 %.pre.i, 0
  br i1 %tobool18.not.i, label %for.end.i.if.end58_crit_edge, label %do.end56

for.end.i.if.end58_crit_edge:                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end58

do.end56:                                         ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev57 = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 1
  %323 = ptrtoint ptr %dev57 to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load ptr, ptr %dev57, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %324, ptr noundef nonnull @.str.93) #10
  br label %cleanup

if.end58:                                         ; preds = %for.end.i.if.end58_crit_edge, %cond.false.i.if.end58_crit_edge, %rtw89_pci_clr_idx_all.exit.if.end58_crit_edge
  %325 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load ptr, ptr %hci.i.i.i, align 8
  %read32.i.i261 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %326, i32 0, i32 9
  %327 = ptrtoint ptr %read32.i.i261 to i32
  call void @__asan_load4_noabort(i32 %327)
  %328 = load ptr, ptr %read32.i.i261, align 4
  %call.i.i262 = tail call i32 %328(ptr noundef %rtwdev, i32 noundef 4112) #7
  %or.i263 = or i32 %call.i.i262, 524032
  %329 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load ptr, ptr %hci.i.i.i, align 8
  %write32.i.i264 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %330, i32 0, i32 12
  %331 = ptrtoint ptr %write32.i.i264 to i32
  call void @__asan_load4_noabort(i32 %331)
  %332 = load ptr, ptr %write32.i.i264, align 4
  tail call void %332(ptr noundef %rtwdev, i32 noundef 4112, i32 noundef %or.i263) #7
  %333 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %333)
  %334 = load ptr, ptr %hci.i.i.i, align 8
  %read32.i.i266 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %334, i32 0, i32 9
  %335 = ptrtoint ptr %read32.i.i266 to i32
  call void @__asan_load4_noabort(i32 %335)
  %336 = load ptr, ptr %read32.i.i266, align 4
  %call.i.i267 = tail call i32 %336(ptr noundef %rtwdev, i32 noundef 4112) #7
  %and.i268 = and i32 %call.i.i267, -262145
  %337 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %337)
  %338 = load ptr, ptr %hci.i.i.i, align 8
  %write32.i.i269 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %338, i32 0, i32 12
  %339 = ptrtoint ptr %write32.i.i269 to i32
  call void @__asan_load4_noabort(i32 %339)
  %340 = load ptr, ptr %write32.i.i269, align 4
  tail call void %340(ptr noundef %rtwdev, i32 noundef 4112, i32 noundef %and.i268) #7
  %341 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %341)
  %342 = load ptr, ptr %hci.i.i.i, align 8
  %read32.i.i271 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %342, i32 0, i32 9
  %343 = ptrtoint ptr %read32.i.i271 to i32
  call void @__asan_load4_noabort(i32 %343)
  %344 = load ptr, ptr %read32.i.i271, align 4
  %call.i.i272 = tail call i32 %344(ptr noundef %rtwdev, i32 noundef 4880) #7
  %or.i273 = or i32 %call.i.i272, 3
  %345 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %345)
  %346 = load ptr, ptr %hci.i.i.i, align 8
  %write32.i.i274 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %346, i32 0, i32 12
  %347 = ptrtoint ptr %write32.i.i274 to i32
  call void @__asan_load4_noabort(i32 %347)
  %348 = load ptr, ptr %write32.i.i274, align 4
  tail call void %348(ptr noundef %rtwdev, i32 noundef 4880, i32 noundef %or.i273) #7
  %349 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %349)
  %350 = load ptr, ptr %hci.i.i.i, align 8
  %read32.i.i.i276 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %350, i32 0, i32 9
  %351 = ptrtoint ptr %read32.i.i.i276 to i32
  call void @__asan_load4_noabort(i32 %351)
  %352 = load ptr, ptr %read32.i.i.i276, align 4
  %call.i.i10.i277 = tail call i32 %352(ptr noundef %rtwdev, i32 noundef 4096) #7
  %or.i11.i278 = or i32 %call.i.i10.i277, 10240
  %353 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %353)
  %354 = load ptr, ptr %hci.i.i.i, align 8
  %write32.i.i12.i279 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %354, i32 0, i32 12
  %355 = ptrtoint ptr %write32.i.i12.i279 to i32
  call void @__asan_load4_noabort(i32 %355)
  %356 = load ptr, ptr %write32.i.i12.i279, align 4
  tail call void %356(ptr noundef %rtwdev, i32 noundef 4096, i32 noundef %or.i11.i278) #7
  %357 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %357)
  %358 = load ptr, ptr %hci.i.i.i, align 8
  %read32.i.i14.i280 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %358, i32 0, i32 9
  %359 = ptrtoint ptr %read32.i.i14.i280 to i32
  call void @__asan_load4_noabort(i32 %359)
  %360 = load ptr, ptr %read32.i.i14.i280, align 4
  %call.i.i15.i281 = tail call i32 %360(ptr noundef %rtwdev, i32 noundef 4112) #7
  %and.i16.i282 = and i32 %call.i.i15.i281, -1048577
  %361 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %361)
  %362 = load ptr, ptr %hci.i.i.i, align 8
  %write32.i.i17.i283 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %362, i32 0, i32 12
  %363 = ptrtoint ptr %write32.i.i17.i283 to i32
  call void @__asan_load4_noabort(i32 %363)
  %364 = load ptr, ptr %write32.i.i17.i283, align 4
  tail call void %364(ptr noundef %rtwdev, i32 noundef 4112, i32 noundef %and.i16.i282) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end58, %do.end56, %do.end48, %do.end7, %do.end
  %retval.0 = phi i32 [ %retval.0.i289, %do.end ], [ %retval.0.i152292, %do.end7 ], [ -110, %do.end48 ], [ -16, %do.end56 ], [ 0, %if.end58 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtw89_pci_ops_mac_post_init(ptr noundef %rtwdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %hci.i.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 7
  %0 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hci.i.i, align 8
  %read32.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %read32.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %read32.i.i, align 4
  %call.i.i = tail call i32 %3(ptr noundef %rtwdev, i32 noundef 33808) #7
  %4 = zext i32 %call.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.256)
  switch i32 %call.i.i, label %if.end.i [
    i32 -1, label %entry.do.end_crit_edge
    i32 -353703190, label %entry.do.end_crit_edge43
  ]

entry.do.end_crit_edge43:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.end.i:                                         ; preds = %entry
  %5 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hci.i.i, align 8
  %read32.i29.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %6, i32 0, i32 9
  %7 = ptrtoint ptr %read32.i29.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %read32.i29.i, align 4
  %call.i30.i = tail call i32 %8(ptr noundef %rtwdev, i32 noundef 33812) #7
  %9 = zext i32 %call.i30.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.257)
  switch i32 %call.i30.i, label %if.end5.i [
    i32 -1, label %if.end.i.do.end_crit_edge
    i32 -353703190, label %if.end.i.do.end_crit_edge44
  ]

if.end.i.do.end_crit_edge44:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.end.i.do.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.end5.i:                                        ; preds = %if.end.i
  %10 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hci.i.i, align 8
  %read32.i35.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %11, i32 0, i32 9
  %12 = ptrtoint ptr %read32.i35.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %read32.i35.i, align 4
  %call.i36.i = tail call i32 %13(ptr noundef %rtwdev, i32 noundef 33816) #7
  %14 = zext i32 %call.i36.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.258)
  switch i32 %call.i36.i, label %if.end9.i [
    i32 -1, label %if.end5.i.do.end_crit_edge
    i32 -353703190, label %if.end5.i.do.end_crit_edge45
  ]

if.end5.i.do.end_crit_edge45:                     ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.end5.i.do.end_crit_edge:                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.end9.i:                                        ; preds = %if.end5.i
  %15 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hci.i.i, align 8
  %read32.i41.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %16, i32 0, i32 9
  %17 = ptrtoint ptr %read32.i41.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %read32.i41.i, align 4
  %call.i42.i = tail call i32 %18(ptr noundef %rtwdev, i32 noundef 33820) #7
  %19 = zext i32 %call.i42.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.259)
  switch i32 %call.i42.i, label %if.end [
    i32 -1, label %if.end9.i.do.end_crit_edge
    i32 -353703190, label %if.end9.i.do.end_crit_edge46
  ]

if.end9.i.do.end_crit_edge46:                     ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.end9.i.do.end_crit_edge:                       ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end:                                           ; preds = %if.end9.i.do.end_crit_edge, %if.end9.i.do.end_crit_edge46, %if.end5.i.do.end_crit_edge, %if.end5.i.do.end_crit_edge45, %if.end.i.do.end_crit_edge, %if.end.i.do.end_crit_edge44, %entry.do.end_crit_edge, %entry.do.end_crit_edge43
  %dev = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 1
  %20 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.143) #10
  br label %cleanup

if.end:                                           ; preds = %if.end9.i
  %22 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %hci.i.i, align 8
  %read32.i.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %23, i32 0, i32 9
  %24 = ptrtoint ptr %read32.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %read32.i.i.i, align 4
  %call.i.i.i = tail call i32 %25(ptr noundef %rtwdev, i32 noundef 33808) #7
  %and.i.i = and i32 %call.i.i.i, -2
  %26 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %hci.i.i, align 8
  %write32.i.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %27, i32 0, i32 12
  %28 = ptrtoint ptr %write32.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %write32.i.i.i, align 4
  tail call void %29(ptr noundef %rtwdev, i32 noundef 33808, i32 noundef %and.i.i) #7
  %30 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %hci.i.i, align 8
  %read32.i.i47.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %31, i32 0, i32 9
  %32 = ptrtoint ptr %read32.i.i47.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %read32.i.i47.i, align 4
  %call.i.i48.i = tail call i32 %33(ptr noundef %rtwdev, i32 noundef 33808) #7
  %or.i.i = or i32 %call.i.i48.i, 2
  %34 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %hci.i.i, align 8
  %write32.i.i49.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %35, i32 0, i32 12
  %36 = ptrtoint ptr %write32.i.i49.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %write32.i.i49.i, align 4
  tail call void %37(ptr noundef %rtwdev, i32 noundef 33808, i32 noundef %or.i.i) #7
  %38 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %hci.i.i, align 8
  %read32.i.i51.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %39, i32 0, i32 9
  %40 = ptrtoint ptr %read32.i.i51.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %read32.i.i51.i, align 4
  %call.i.i52.i = tail call i32 %41(ptr noundef %rtwdev, i32 noundef 33808) #7
  %and21.i.i = and i32 %call.i.i52.i, -12289
  %or.i53.i = or i32 %and21.i.i, 8192
  %42 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %hci.i.i, align 8
  %write32.i.i54.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %43, i32 0, i32 12
  %44 = ptrtoint ptr %write32.i.i54.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %write32.i.i54.i, align 4
  tail call void %45(ptr noundef %rtwdev, i32 noundef 33808, i32 noundef %or.i53.i) #7
  %46 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %hci.i.i, align 8
  %read32.i.i56.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %47, i32 0, i32 9
  %48 = ptrtoint ptr %read32.i.i56.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %read32.i.i56.i, align 4
  %call.i.i57.i = tail call i32 %49(ptr noundef %rtwdev, i32 noundef 33808) #7
  %and21.i58.i = and i32 %call.i.i57.i, -1793
  %or.i59.i = or i32 %and21.i58.i, 1280
  %50 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %hci.i.i, align 8
  %write32.i.i60.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %51, i32 0, i32 12
  %52 = ptrtoint ptr %write32.i.i60.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %write32.i.i60.i, align 4
  tail call void %53(ptr noundef %rtwdev, i32 noundef 33808, i32 noundef %or.i59.i) #7
  %54 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %hci.i.i, align 8
  %read32.i.i62.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %55, i32 0, i32 9
  %56 = ptrtoint ptr %read32.i.i62.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %read32.i.i62.i, align 4
  %call.i.i63.i = tail call i32 %57(ptr noundef %rtwdev, i32 noundef 33812) #7
  %and21.i64.i = and i32 %call.i.i63.i, -4096
  %or.i65.i = or i32 %and21.i64.i, 40
  %58 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %hci.i.i, align 8
  %write32.i.i66.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %59, i32 0, i32 12
  %60 = ptrtoint ptr %write32.i.i66.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %write32.i.i66.i, align 4
  tail call void %61(ptr noundef %rtwdev, i32 noundef 33812, i32 noundef %or.i65.i) #7
  %62 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %hci.i.i, align 8
  %read32.i.i68.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %63, i32 0, i32 9
  %64 = ptrtoint ptr %read32.i.i68.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %read32.i.i68.i, align 4
  %call.i.i69.i = tail call i32 %65(ptr noundef %rtwdev, i32 noundef 33812) #7
  %and21.i70.i = and i32 %call.i.i69.i, -268369921
  %or.i71.i = or i32 %and21.i70.i, 2621440
  %66 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %hci.i.i, align 8
  %write32.i.i72.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %67, i32 0, i32 12
  %68 = ptrtoint ptr %write32.i.i72.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %write32.i.i72.i, align 4
  tail call void %69(ptr noundef %rtwdev, i32 noundef 33812, i32 noundef %or.i71.i) #7
  %70 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %hci.i.i, align 8
  %write32.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %71, i32 0, i32 12
  %72 = ptrtoint ptr %write32.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %write32.i.i, align 4
  tail call void %73(ptr noundef %rtwdev, i32 noundef 33816, i32 noundef -1998550816) #7
  %74 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %hci.i.i, align 8
  %write32.i75.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %75, i32 0, i32 12
  %76 = ptrtoint ptr %write32.i75.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %write32.i75.i, align 4
  tail call void %77(ptr noundef %rtwdev, i32 noundef 33820, i32 noundef -2012510197) #7
  %chip = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 3
  %78 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %chip, align 4
  %80 = ptrtoint ptr %79 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %79, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %cmp = icmp eq i32 %81, 0
  br i1 %cmp, label %if.then1, label %if.end.if.end2_crit_edge

if.end.if.end2_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end2

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %82 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %hci.i.i, align 8
  %read32.i.i13 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %83, i32 0, i32 9
  %84 = ptrtoint ptr %read32.i.i13 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %read32.i.i13, align 4
  %call.i.i14 = tail call i32 %85(ptr noundef %rtwdev, i32 noundef 33808) #7
  %or.i = or i32 %call.i.i14, 32
  %86 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %hci.i.i, align 8
  %write32.i.i15 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %87, i32 0, i32 12
  %88 = ptrtoint ptr %write32.i.i15 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %write32.i.i15, align 4
  tail call void %89(ptr noundef %rtwdev, i32 noundef 33808, i32 noundef %or.i) #7
  br label %if.end2

if.end2:                                          ; preds = %if.then1, %if.end.if.end2_crit_edge
  %90 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %hci.i.i, align 8
  %read32.i.i17 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %91, i32 0, i32 9
  %92 = ptrtoint ptr %read32.i.i17 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %read32.i.i17, align 4
  %call.i.i18 = tail call i32 %93(ptr noundef %rtwdev, i32 noundef 34832) #7
  %or.i19 = or i32 %call.i.i18, 1
  %94 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %hci.i.i, align 8
  %write32.i.i20 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %95, i32 0, i32 12
  %96 = ptrtoint ptr %write32.i.i20 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %write32.i.i20, align 4
  tail call void %97(ptr noundef %rtwdev, i32 noundef 34832, i32 noundef %or.i19) #7
  %98 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %hci.i.i, align 8
  %read32.i.i22 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %99, i32 0, i32 9
  %100 = ptrtoint ptr %read32.i.i22 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %read32.i.i22, align 4
  %call.i.i23 = tail call i32 %101(ptr noundef %rtwdev, i32 noundef 39424) #7
  %and.i = and i32 %call.i.i23, -3
  %102 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %hci.i.i, align 8
  %write32.i.i24 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %103, i32 0, i32 12
  %104 = ptrtoint ptr %write32.i.i24 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %write32.i.i24, align 4
  tail call void %105(ptr noundef %rtwdev, i32 noundef 39424, i32 noundef %and.i) #7
  %106 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %hci.i.i, align 8
  %read32.i.i26 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %107, i32 0, i32 9
  %108 = ptrtoint ptr %read32.i.i26 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %read32.i.i26, align 4
  %call.i.i27 = tail call i32 %109(ptr noundef %rtwdev, i32 noundef 4112) #7
  %and.i28 = and i32 %call.i.i27, -524033
  %110 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %hci.i.i, align 8
  %write32.i.i29 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %111, i32 0, i32 12
  %112 = ptrtoint ptr %write32.i.i29 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %write32.i.i29, align 4
  tail call void %113(ptr noundef %rtwdev, i32 noundef 4112, i32 noundef %and.i28) #7
  %114 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %hci.i.i, align 8
  %read32.i.i31 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %115, i32 0, i32 9
  %116 = ptrtoint ptr %read32.i.i31 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %read32.i.i31, align 4
  %call.i.i32 = tail call i32 %117(ptr noundef %rtwdev, i32 noundef 4880) #7
  %and.i33 = and i32 %call.i.i32, -4
  %118 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %hci.i.i, align 8
  %write32.i.i34 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %119, i32 0, i32 12
  %120 = ptrtoint ptr %write32.i.i34 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %write32.i.i34, align 4
  tail call void %121(ptr noundef %rtwdev, i32 noundef 4880, i32 noundef %and.i33) #7
  %122 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %hci.i.i, align 8
  %read32.i.i36 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %123, i32 0, i32 9
  %124 = ptrtoint ptr %read32.i.i36 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %read32.i.i36, align 4
  %call.i.i37 = tail call i32 %125(ptr noundef %rtwdev, i32 noundef 4112) #7
  %and.i38 = and i32 %call.i.i37, -1572865
  %126 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %hci.i.i, align 8
  %write32.i.i39 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %127, i32 0, i32 12
  %128 = ptrtoint ptr %write32.i.i39 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %write32.i.i39, align 4
  tail call void %129(ptr noundef %rtwdev, i32 noundef 4112, i32 noundef %and.i38) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.end2 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtw89_pci_ops_deinit(ptr noundef %rtwdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %chip = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 3
  %0 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %hci.i.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 7
  %4 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hci.i.i, align 8
  %read32.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %5, i32 0, i32 9
  %6 = ptrtoint ptr %read32.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %read32.i.i, align 4
  %call.i.i = tail call i32 %7(ptr noundef %rtwdev, i32 noundef 33808) #7
  %or.i = or i32 %call.i.i, 16
  %8 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hci.i.i, align 8
  %write32.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %9, i32 0, i32 12
  %10 = ptrtoint ptr %write32.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %write32.i.i, align 4
  tail call void %11(ptr noundef %rtwdev, i32 noundef 33808, i32 noundef %or.i) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %hci.i.i.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 7
  %12 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hci.i.i.i, align 8
  %read32.i.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %13, i32 0, i32 9
  %14 = ptrtoint ptr %read32.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %read32.i.i.i, align 4
  %call.i.i10.i = tail call i32 %15(ptr noundef %rtwdev, i32 noundef 4112) #7
  %or.i11.i = or i32 %call.i.i10.i, 1048576
  %16 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hci.i.i.i, align 8
  %write32.i.i12.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %17, i32 0, i32 12
  %18 = ptrtoint ptr %write32.i.i12.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %write32.i.i12.i, align 4
  tail call void %19(ptr noundef %rtwdev, i32 noundef 4112, i32 noundef %or.i11.i) #7
  %20 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hci.i.i.i, align 8
  %read32.i.i14.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %21, i32 0, i32 9
  %22 = ptrtoint ptr %read32.i.i14.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %read32.i.i14.i, align 4
  %call.i.i15.i = tail call i32 %23(ptr noundef %rtwdev, i32 noundef 4096) #7
  %and.i16.i = and i32 %call.i.i15.i, -10241
  %24 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %hci.i.i.i, align 8
  %write32.i.i17.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %25, i32 0, i32 12
  %26 = ptrtoint ptr %write32.i.i17.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %write32.i.i17.i, align 4
  tail call void %27(ptr noundef %rtwdev, i32 noundef 4096, i32 noundef %and.i16.i) #7
  %28 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %chip, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %29, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp.i = icmp eq i32 %31, 0
  %spec.select.i = select i1 %cmp.i, i32 2047, i32 1807
  %32 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %hci.i.i.i, align 8
  %read32.i.i.i5 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %33, i32 0, i32 9
  %34 = ptrtoint ptr %read32.i.i.i5 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %read32.i.i.i5, align 4
  %call.i.i.i = tail call i32 %35(ptr noundef %rtwdev, i32 noundef 4116) #7
  %or.i.i = or i32 %call.i.i.i, %spec.select.i
  %36 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %hci.i.i.i, align 8
  %write32.i.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %37, i32 0, i32 12
  %38 = ptrtoint ptr %write32.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %write32.i.i.i, align 4
  tail call void %39(ptr noundef %rtwdev, i32 noundef 4116, i32 noundef %or.i.i) #7
  %40 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %chip, align 4
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %41, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %cmp3.i = icmp eq i32 %43, 0
  br i1 %cmp3.i, label %if.then4.i, label %if.end.rtw89_pci_clr_idx_all.exit_crit_edge

if.end.rtw89_pci_clr_idx_all.exit_crit_edge:      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtw89_pci_clr_idx_all.exit

if.then4.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %44 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %hci.i.i.i, align 8
  %read32.i.i12.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %45, i32 0, i32 9
  %46 = ptrtoint ptr %read32.i.i12.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %read32.i.i12.i, align 4
  %call.i.i13.i = tail call i32 %47(ptr noundef %rtwdev, i32 noundef 4884) #7
  %or.i14.i = or i32 %call.i.i13.i, 3
  %48 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %hci.i.i.i, align 8
  %write32.i.i15.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %49, i32 0, i32 12
  %50 = ptrtoint ptr %write32.i.i15.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %write32.i.i15.i, align 4
  tail call void %51(ptr noundef %rtwdev, i32 noundef 4884, i32 noundef %or.i14.i) #7
  br label %rtw89_pci_clr_idx_all.exit

rtw89_pci_clr_idx_all.exit:                       ; preds = %if.then4.i, %if.end.rtw89_pci_clr_idx_all.exit_crit_edge
  %52 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %hci.i.i.i, align 8
  %read32.i.i17.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %53, i32 0, i32 9
  %54 = ptrtoint ptr %read32.i.i17.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %read32.i.i17.i, align 4
  %call.i.i18.i = tail call i32 %55(ptr noundef %rtwdev, i32 noundef 4120) #7
  %or.i19.i = or i32 %call.i.i18.i, 3
  %56 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %hci.i.i.i, align 8
  %write32.i.i20.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %57, i32 0, i32 12
  %58 = ptrtoint ptr %write32.i.i20.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %write32.i.i20.i, align 4
  tail call void %59(ptr noundef %rtwdev, i32 noundef 4120, i32 noundef %or.i19.i) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtw89_pci_check_and_reclaim_tx_resource(ptr noundef %rtwdev, i8 noundef zeroext %txch) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %txch)
  %cmp = icmp eq i8 %txch, 12
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %arrayidx.i = getelementptr %struct.rtw89_dev, ptr %rtwdev, i32 34, i32 51, i32 11, i32 152
  %trx_lock.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 1, i32 4, i32 1
  tail call void @_raw_spin_lock_bh(ptr noundef %trx_lock.i) #7
  %addr_idx2.i.i.i = getelementptr %struct.rtw89_dev, ptr %rtwdev, i32 37, i32 51, i32 1, i32 1, i32 8
  %0 = ptrtoint ptr %addr_idx2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %addr_idx2.i.i.i, align 4
  %hci.i.i.i.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 7
  %2 = ptrtoint ptr %hci.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hci.i.i.i.i, align 8
  %read32.i.i.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %read32.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %read32.i.i.i.i, align 4
  %call.i.i.i.i = tail call i32 %5(ptr noundef %rtwdev, i32 noundef %1) #7
  %rp1.i.i.i.i = getelementptr %struct.rtw89_dev, ptr %rtwdev, i32 37, i32 51, i32 1, i32 1, i32 11
  %len3.i.i.i.i = getelementptr %struct.rtw89_dev, ptr %rtwdev, i32 37, i32 51, i32 1, i32 1, i32 10
  %6 = ptrtoint ptr %len3.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %len3.i.i.i.i, align 4
  %and.i.i.i.i = lshr i32 %call.i.i.i.i, 16
  %shr.i.i.i.i = and i32 %and.i.i.i.i, 4095
  %8 = ptrtoint ptr %rp1.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rp1.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i.i.i.i, i32 %9)
  %cmp18.not.i.i.i.i = icmp ult i32 %shr.i.i.i.i, %9
  %sub20.i.i.i.i = sub i32 %shr.i.i.i.i, %9
  %sub23.i.i.i.i = select i1 %cmp18.not.i.i.i.i, i32 %7, i32 0
  %cond25.i.i.i.i = add i32 %sub23.i.i.i.i, %sub20.i.i.i.i
  %10 = ptrtoint ptr %rp1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %shr.i.i.i.i, ptr %rp1.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond25.i.i.i.i)
  %tobool.not.i.i = icmp eq i32 %cond25.i.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.rtw89_pci_reclaim_tx_fwcmd.exit.i_crit_edge, label %if.end.i.i

if.then.rtw89_pci_reclaim_tx_fwcmd.exit.i_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtw89_pci_reclaim_tx_fwcmd.exit.i

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %priv.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 58
  tail call fastcc void @rtw89_pci_release_fwcmd(ptr noundef %rtwdev, ptr noundef %priv.i, i32 noundef %cond25.i.i.i.i, i1 noundef zeroext false) #7
  br label %rtw89_pci_reclaim_tx_fwcmd.exit.i

rtw89_pci_reclaim_tx_fwcmd.exit.i:                ; preds = %if.end.i.i, %if.then.rtw89_pci_reclaim_tx_fwcmd.exit.i_crit_edge
  %11 = ptrtoint ptr %rp1.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %rp1.i.i.i.i, align 4
  %wp.i.i = getelementptr inbounds %struct.rtw89_pci_tx_ring, ptr %arrayidx.i, i32 0, i32 1, i32 9
  %13 = ptrtoint ptr %wp.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %wp.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %14)
  %cmp.i.i = icmp ugt i32 %12, %14
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end.i6.i

if.then.i.i:                                      ; preds = %rtw89_pci_reclaim_tx_fwcmd.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %15 = xor i32 %14, -1
  %sub4.i.i = add i32 %12, %15
  br label %return

if.end.i6.i:                                      ; preds = %rtw89_pci_reclaim_tx_fwcmd.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %len3.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %len3.i.i.i.i, align 4
  %18 = xor i32 %14, -1
  %sub8.i.i = add i32 %12, %18
  %sub9.i.i = add i32 %sub8.i.i, %17
  br label %return

if.end:                                           ; preds = %entry
  %tx_rings.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 1, i32 5, i32 1, i32 4
  %idxprom.i = zext i8 %txch to i32
  %arrayidx2.i = getelementptr %struct.rtw89_dev, ptr %rtwdev, i32 37, i32 51, i32 4, i32 12, i32 1, i32 5, i32 43, i32 1
  %trx_lock.i5 = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 1, i32 4, i32 1
  tail call void @_raw_spin_lock_bh(ptr noundef %trx_lock.i5) #7
  %rp.i.i = getelementptr [13 x %struct.rtw89_pci_tx_ring], ptr %tx_rings.i, i32 0, i32 %idxprom.i, i32 1, i32 10
  %19 = ptrtoint ptr %rp.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %rp.i.i, align 4
  %wp.i.i6 = getelementptr [13 x %struct.rtw89_pci_tx_ring], ptr %tx_rings.i, i32 0, i32 %idxprom.i, i32 1, i32 9
  %21 = ptrtoint ptr %wp.i.i6 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %wp.i.i6, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %22)
  %cmp.i.i7 = icmp ugt i32 %20, %22
  br i1 %cmp.i.i7, label %if.then.i.i9, label %if.end.i.i12

if.then.i.i9:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %23 = xor i32 %22, -1
  %sub4.i.i8 = add i32 %20, %23
  br label %rtw89_pci_get_avail_txbd_num.exit.i

if.end.i.i12:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %len.i.i = getelementptr [13 x %struct.rtw89_pci_tx_ring], ptr %tx_rings.i, i32 0, i32 %idxprom.i, i32 1, i32 8
  %24 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %len.i.i, align 4
  %26 = xor i32 %22, -1
  %sub8.i.i10 = add i32 %20, %26
  %sub9.i.i11 = add i32 %sub8.i.i10, %25
  br label %rtw89_pci_get_avail_txbd_num.exit.i

rtw89_pci_get_avail_txbd_num.exit.i:              ; preds = %if.end.i.i12, %if.then.i.i9
  %retval.0.i.i13 = phi i32 [ %sub4.i.i8, %if.then.i.i9 ], [ %sub9.i.i11, %if.end.i.i12 ]
  %curr_num.i = getelementptr [13 x %struct.rtw89_pci_tx_ring], ptr %tx_rings.i, i32 0, i32 %idxprom.i, i32 0, i32 6
  %27 = ptrtoint ptr %curr_num.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %curr_num.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp.i = icmp eq i32 %28, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i13)
  %cmp3.i = icmp eq i32 %retval.0.i.i13, 0
  %or.cond.i = select i1 %cmp.i, i1 true, i1 %cmp3.i
  br i1 %or.cond.i, label %if.then.i, label %rtw89_pci_get_avail_txbd_num.exit.i.if.end6.i_crit_edge

rtw89_pci_get_avail_txbd_num.exit.i.if.end6.i_crit_edge: ; preds = %rtw89_pci_get_avail_txbd_num.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6.i

if.then.i:                                        ; preds = %rtw89_pci_get_avail_txbd_num.exit.i
  %addr_idx2.i.i = getelementptr %struct.rtw89_dev, ptr %rtwdev, i32 37, i32 51, i32 4, i32 12, i32 1, i32 5, i32 47, i32 1
  %29 = ptrtoint ptr %addr_idx2.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %addr_idx2.i.i, align 4
  %hci.i.i.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 7
  %31 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %hci.i.i.i, align 8
  %read32.i.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %32, i32 0, i32 9
  %33 = ptrtoint ptr %read32.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %read32.i.i.i, align 4
  %call.i.i.i = tail call i32 %34(ptr noundef %rtwdev, i32 noundef %30) #7
  %rp1.i.i.i = getelementptr %struct.rtw89_dev, ptr %rtwdev, i32 37, i32 51, i32 4, i32 12, i32 1, i32 5, i32 53, i32 1
  %len3.i.i.i = getelementptr %struct.rtw89_dev, ptr %rtwdev, i32 37, i32 51, i32 4, i32 12, i32 1, i32 5, i32 51, i32 1
  %35 = ptrtoint ptr %len3.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %len3.i.i.i, align 4
  %and.i.i.i = lshr i32 %call.i.i.i, 16
  %shr.i.i.i = and i32 %and.i.i.i, 4095
  %wp2.i.i.i = getelementptr %struct.rtw89_dev, ptr %rtwdev, i32 37, i32 51, i32 4, i32 12, i32 1, i32 5, i32 52, i32 1
  %37 = ptrtoint ptr %wp2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %wp2.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i.i.i, i32 %38)
  %cmp18.not.i.i.i = icmp ult i32 %shr.i.i.i, %38
  %sub20.i.i.i = sub i32 %shr.i.i.i, %38
  %sub23.i.i.i = select i1 %cmp18.not.i.i.i, i32 %36, i32 0
  %cond25.i.i.i = add i32 %sub23.i.i.i, %sub20.i.i.i
  %39 = ptrtoint ptr %rp1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %shr.i.i.i, ptr %rp1.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond25.i.i.i)
  %tobool.not.i = icmp eq i32 %cond25.i.i.i, 0
  br i1 %tobool.not.i, label %if.then.i.return_crit_edge, label %if.end.i

if.then.i.return_crit_edge:                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @rtw89_pci_release_tx(ptr noundef %rtwdev, ptr noundef %arrayidx2.i, i32 noundef %cond25.i.i.i) #7
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.end.i, %rtw89_pci_get_avail_txbd_num.exit.i.if.end6.i_crit_edge
  %40 = ptrtoint ptr %rp.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %rp.i.i, align 4
  %42 = ptrtoint ptr %wp.i.i6 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %wp.i.i6, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %41, i32 %43)
  %cmp.i32.i = icmp ugt i32 %41, %43
  br i1 %cmp.i32.i, label %if.then.i34.i, label %if.end.i38.i

if.then.i34.i:                                    ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  %44 = xor i32 %43, -1
  %sub4.i33.i = add i32 %41, %44
  br label %rtw89_pci_get_avail_txbd_num.exit40.i

if.end.i38.i:                                     ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  %len.i35.i = getelementptr [13 x %struct.rtw89_pci_tx_ring], ptr %tx_rings.i, i32 0, i32 %idxprom.i, i32 1, i32 8
  %45 = ptrtoint ptr %len.i35.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %len.i35.i, align 4
  %47 = xor i32 %43, -1
  %sub8.i36.i = add i32 %41, %47
  %sub9.i37.i = add i32 %sub8.i36.i, %46
  br label %rtw89_pci_get_avail_txbd_num.exit40.i

rtw89_pci_get_avail_txbd_num.exit40.i:            ; preds = %if.end.i38.i, %if.then.i34.i
  %retval.0.i39.i = phi i32 [ %sub4.i33.i, %if.then.i34.i ], [ %sub9.i37.i, %if.end.i38.i ]
  %48 = ptrtoint ptr %curr_num.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %curr_num.i, align 4
  %50 = tail call i32 @llvm.umin.i32(i32 %retval.0.i39.i, i32 %49) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %cmp10.i = icmp eq i32 %50, 0
  br i1 %cmp10.i, label %do.end.i, label %rtw89_pci_get_avail_txbd_num.exit40.i.return_crit_edge

rtw89_pci_get_avail_txbd_num.exit40.i.return_crit_edge: ; preds = %rtw89_pci_get_avail_txbd_num.exit40.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

do.end.i:                                         ; preds = %rtw89_pci_get_avail_txbd_num.exit40.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 1
  %51 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %52, ptr noundef nonnull @.str.145) #10
  br label %return

return:                                           ; preds = %do.end.i, %rtw89_pci_get_avail_txbd_num.exit40.i.return_crit_edge, %if.then.i.return_crit_edge, %if.end.i6.i, %if.then.i.i
  %trx_lock.i5.sink = phi ptr [ %trx_lock.i, %if.then.i.i ], [ %trx_lock.i, %if.end.i6.i ], [ %trx_lock.i5, %if.then.i.return_crit_edge ], [ %trx_lock.i5, %rtw89_pci_get_avail_txbd_num.exit40.i.return_crit_edge ], [ %trx_lock.i5, %do.end.i ]
  %retval.0 = phi i32 [ %sub4.i.i, %if.then.i.i ], [ %sub9.i.i, %if.end.i6.i ], [ 0, %if.then.i.return_crit_edge ], [ %50, %rtw89_pci_get_avail_txbd_num.exit40.i.return_crit_edge ], [ 0, %do.end.i ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %trx_lock.i5.sink) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtw89_pci_ops_mac_lv1_recovery(ptr noundef %rtwdev, i32 noundef %step) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %step to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.260)
  switch i32 %step, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %hci.i.i.i.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 7
  %1 = ptrtoint ptr %hci.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hci.i.i.i.i, align 8
  %read32.i.i.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %2, i32 0, i32 9
  %3 = ptrtoint ptr %read32.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %read32.i.i.i.i, align 4
  %call.i.i.i.i = tail call i32 %4(ptr noundef %rtwdev, i32 noundef 4112) #7
  %or.i15.i.i = or i32 %call.i.i.i.i, 1048576
  %5 = ptrtoint ptr %hci.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hci.i.i.i.i, align 8
  %write32.i.i16.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %6, i32 0, i32 12
  %7 = ptrtoint ptr %write32.i.i16.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %write32.i.i16.i.i, align 4
  tail call void %8(ptr noundef %rtwdev, i32 noundef 4112, i32 noundef %or.i15.i.i) #7
  %9 = ptrtoint ptr %hci.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hci.i.i.i.i, align 8
  %read32.i.i18.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %10, i32 0, i32 9
  %11 = ptrtoint ptr %read32.i.i18.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %read32.i.i18.i.i, align 4
  %call.i.i19.i.i = tail call i32 %12(ptr noundef %rtwdev, i32 noundef 4096) #7
  %and.i20.i.i = and i32 %call.i.i19.i.i, -10241
  %13 = ptrtoint ptr %hci.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hci.i.i.i.i, align 8
  %write32.i.i21.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %14, i32 0, i32 12
  %15 = ptrtoint ptr %write32.i.i21.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %write32.i.i21.i.i, align 4
  tail call void %16(ptr noundef %rtwdev, i32 noundef 4096, i32 noundef %and.i20.i.i) #7
  %call.i = tail call fastcc i32 @rtw89_pci_poll_io_idle(ptr noundef %rtwdev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %sw.bb.cleanup_crit_edge, label %rtw89_pci_lv1rst_stop_dma.exit

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

rtw89_pci_lv1rst_stop_dma.exit:                   ; preds = %sw.bb
  %17 = ptrtoint ptr %hci.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %hci.i.i.i.i, align 8
  %read32.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %18, i32 0, i32 9
  %19 = ptrtoint ptr %read32.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %read32.i.i, align 4
  %call.i.i = tail call i32 %20(ptr noundef %rtwdev, i32 noundef 4548) #7
  tail call void (ptr, i32, ptr, ...) @__rtw89_debug(ptr noundef %rtwdev, i32 noundef 64, ptr noundef nonnull @.str.166, i32 noundef 4548, i32 noundef %call.i.i) #7
  %21 = and i32 %call.i.i, 2097154
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %22 = icmp ne i32 %21, 0
  %dma_rst.0.i = zext i1 %22 to i32
  %and6.i = lshr i32 %call.i.i, 21
  %23 = and i32 %and6.i, 2
  %24 = or i32 %23, %dma_rst.0.i
  %25 = ptrtoint ptr %hci.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %hci.i.i.i.i, align 8
  %read32.i37.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %26, i32 0, i32 9
  %27 = ptrtoint ptr %read32.i37.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %read32.i37.i, align 4
  %call.i38.i = tail call i32 %28(ptr noundef %rtwdev, i32 noundef 33664) #7
  %neg.i = xor i32 %24, -1
  %and12.i = and i32 %call.i38.i, %neg.i
  %29 = ptrtoint ptr %hci.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %hci.i.i.i.i, align 8
  %write32.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %30, i32 0, i32 12
  %31 = ptrtoint ptr %write32.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %write32.i.i, align 4
  tail call void %32(ptr noundef %rtwdev, i32 noundef 33664, i32 noundef %and12.i) #7
  %or13.i = or i32 %call.i38.i, %24
  %33 = ptrtoint ptr %hci.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %hci.i.i.i.i, align 8
  %write32.i41.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %34, i32 0, i32 12
  %35 = ptrtoint ptr %write32.i41.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %write32.i41.i, align 4
  tail call void %36(ptr noundef %rtwdev, i32 noundef 33664, i32 noundef %or13.i) #7
  %call14.i = tail call fastcc i32 @rtw89_pci_poll_io_idle(ptr noundef %rtwdev) #7
  %37 = ptrtoint ptr %hci.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %hci.i.i.i.i, align 8
  %read32.i43.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %38, i32 0, i32 9
  %39 = ptrtoint ptr %read32.i43.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %read32.i43.i, align 4
  %call.i44.i = tail call i32 %40(ptr noundef %rtwdev, i32 noundef 4548) #7
  tail call void (ptr, i32, ptr, ...) @__rtw89_debug(ptr noundef %rtwdev, i32 noundef 64, ptr noundef nonnull @.str.167, i32 noundef 4548, i32 noundef %call.i44.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %tobool.not = icmp eq i32 %call14.i, 0
  br i1 %tobool.not, label %rtw89_pci_lv1rst_stop_dma.exit.cleanup_crit_edge, label %do.end

rtw89_pci_lv1rst_stop_dma.exit.cleanup_crit_edge: ; preds = %rtw89_pci_lv1rst_stop_dma.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %rtw89_pci_lv1rst_stop_dma.exit
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 1
  %41 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %42, ptr noundef nonnull @.str.161) #10
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  %hci.i.i.i.i15 = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 7
  %43 = ptrtoint ptr %hci.i.i.i.i15 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %hci.i.i.i.i15, align 8
  %read32.i.i.i.i16 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %44, i32 0, i32 9
  %45 = ptrtoint ptr %read32.i.i.i.i16 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %read32.i.i.i.i16, align 4
  %call.i.i.i.i17 = tail call i32 %46(ptr noundef %rtwdev, i32 noundef 33664) #7
  %and.i.i.i = and i32 %call.i.i.i.i17, -4
  %47 = ptrtoint ptr %hci.i.i.i.i15 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %hci.i.i.i.i15, align 8
  %write32.i.i7.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %48, i32 0, i32 12
  %49 = ptrtoint ptr %write32.i.i7.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %write32.i.i7.i.i, align 4
  tail call void %50(ptr noundef %rtwdev, i32 noundef 33664, i32 noundef %and.i.i.i) #7
  %51 = ptrtoint ptr %hci.i.i.i.i15 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %hci.i.i.i.i15, align 8
  %read32.i.i.i8.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %52, i32 0, i32 9
  %53 = ptrtoint ptr %read32.i.i.i8.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %read32.i.i.i8.i, align 4
  %call.i.i.i9.i = tail call i32 %54(ptr noundef %rtwdev, i32 noundef 33664) #7
  %and.i.sink.i.i = or i32 %call.i.i.i9.i, 3
  %55 = ptrtoint ptr %hci.i.i.i.i15 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %hci.i.i.i.i15, align 8
  %write32.i.i7.i11.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %56, i32 0, i32 12
  %57 = ptrtoint ptr %write32.i.i7.i11.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %write32.i.i7.i11.i, align 4
  tail call void %58(ptr noundef %rtwdev, i32 noundef 33664, i32 noundef %and.i.sink.i.i) #7
  %chip.i.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 3
  %59 = ptrtoint ptr %chip.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %chip.i.i, align 4
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %60, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %cmp.i.i = icmp eq i32 %62, 0
  %spec.select.i.i = select i1 %cmp.i.i, i32 2047, i32 1807
  %63 = ptrtoint ptr %hci.i.i.i.i15 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %hci.i.i.i.i15, align 8
  %read32.i.i.i13.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %64, i32 0, i32 9
  %65 = ptrtoint ptr %read32.i.i.i13.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %read32.i.i.i13.i, align 4
  %call.i.i.i14.i = tail call i32 %66(ptr noundef %rtwdev, i32 noundef 4116) #7
  %or.i.i.i = or i32 %call.i.i.i14.i, %spec.select.i.i
  %67 = ptrtoint ptr %hci.i.i.i.i15 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %hci.i.i.i.i15, align 8
  %write32.i.i.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %68, i32 0, i32 12
  %69 = ptrtoint ptr %write32.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %write32.i.i.i.i, align 4
  tail call void %70(ptr noundef %rtwdev, i32 noundef 4116, i32 noundef %or.i.i.i) #7
  %71 = ptrtoint ptr %chip.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %chip.i.i, align 4
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %72, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %cmp3.i.i = icmp eq i32 %74, 0
  br i1 %cmp3.i.i, label %if.then4.i.i, label %sw.bb1.rtw89_pci_clr_idx_all.exit.i_crit_edge

sw.bb1.rtw89_pci_clr_idx_all.exit.i_crit_edge:    ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtw89_pci_clr_idx_all.exit.i

if.then4.i.i:                                     ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #9
  %75 = ptrtoint ptr %hci.i.i.i.i15 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %hci.i.i.i.i15, align 8
  %read32.i.i12.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %76, i32 0, i32 9
  %77 = ptrtoint ptr %read32.i.i12.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %read32.i.i12.i.i, align 4
  %call.i.i13.i.i = tail call i32 %78(ptr noundef %rtwdev, i32 noundef 4884) #7
  %or.i14.i.i = or i32 %call.i.i13.i.i, 3
  %79 = ptrtoint ptr %hci.i.i.i.i15 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %hci.i.i.i.i15, align 8
  %write32.i.i15.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %80, i32 0, i32 12
  %81 = ptrtoint ptr %write32.i.i15.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %write32.i.i15.i.i, align 4
  tail call void %82(ptr noundef %rtwdev, i32 noundef 4884, i32 noundef %or.i14.i.i) #7
  br label %rtw89_pci_clr_idx_all.exit.i

rtw89_pci_clr_idx_all.exit.i:                     ; preds = %if.then4.i.i, %sw.bb1.rtw89_pci_clr_idx_all.exit.i_crit_edge
  %83 = ptrtoint ptr %hci.i.i.i.i15 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %hci.i.i.i.i15, align 8
  %read32.i.i17.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %84, i32 0, i32 9
  %85 = ptrtoint ptr %read32.i.i17.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %read32.i.i17.i.i, align 4
  %call.i.i18.i.i = tail call i32 %86(ptr noundef %rtwdev, i32 noundef 4120) #7
  %or.i19.i.i = or i32 %call.i.i18.i.i, 3
  %87 = ptrtoint ptr %hci.i.i.i.i15 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %hci.i.i.i.i15, align 8
  %write32.i.i20.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %88, i32 0, i32 12
  %89 = ptrtoint ptr %write32.i.i20.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %write32.i.i20.i.i, align 4
  tail call void %90(ptr noundef %rtwdev, i32 noundef 4120, i32 noundef %or.i19.i.i) #7
  %91 = ptrtoint ptr %hci.i.i.i.i15 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %hci.i.i.i.i15, align 8
  %read32.i.i.i16.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %92, i32 0, i32 9
  %93 = ptrtoint ptr %read32.i.i.i16.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %read32.i.i.i16.i, align 4
  %call.i.i.i17.i = tail call i32 %94(ptr noundef %rtwdev, i32 noundef 4096) #7
  %or.i.i18.i = or i32 %call.i.i.i17.i, 8
  %95 = ptrtoint ptr %hci.i.i.i.i15 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %hci.i.i.i.i15, align 8
  %write32.i.i.i19.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %96, i32 0, i32 12
  %97 = ptrtoint ptr %write32.i.i.i19.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %write32.i.i.i19.i, align 4
  tail call void %98(ptr noundef %rtwdev, i32 noundef 4096, i32 noundef %or.i.i18.i) #7
  %call.i.i18 = tail call i64 @ktime_get() #7
  %add.i.i.i = add i64 %call.i.i18, 100000
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %99 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %99(i32 noundef 214748) #7
  %100 = ptrtoint ptr %hci.i.i.i.i15 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %hci.i.i.i.i15, align 8
  %read32.i46.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %101, i32 0, i32 9
  %102 = ptrtoint ptr %read32.i46.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %read32.i46.i.i, align 4
  %call.i47.i.i = tail call i32 %103(ptr noundef %rtwdev, i32 noundef 4096) #7
  %and48.i.i = and i32 %call.i47.i.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48.i.i)
  %cmp649.i.i = icmp eq i32 %and48.i.i, 0
  br i1 %cmp649.i.i, label %rtw89_pci_clr_idx_all.exit.i.rtw89_pci_lv1rst_start_dma.exit.thread_crit_edge, label %rtw89_pci_clr_idx_all.exit.i.land.lhs.true.i.i_crit_edge

rtw89_pci_clr_idx_all.exit.i.land.lhs.true.i.i_crit_edge: ; preds = %rtw89_pci_clr_idx_all.exit.i
  br label %land.lhs.true.i.i

rtw89_pci_clr_idx_all.exit.i.rtw89_pci_lv1rst_start_dma.exit.thread_crit_edge: ; preds = %rtw89_pci_clr_idx_all.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtw89_pci_lv1rst_start_dma.exit.thread

land.lhs.true.i.i:                                ; preds = %cond.false21.i.i.land.lhs.true.i.i_crit_edge, %rtw89_pci_clr_idx_all.exit.i.land.lhs.true.i.i_crit_edge
  %call10.i.i = tail call i64 @ktime_get() #7
  call void @__sanitizer_cov_trace_cmp8(i64 %call10.i.i, i64 %add.i.i.i)
  %cmp3.i.i.i = icmp sgt i64 %call10.i.i, %add.i.i.i
  br i1 %cmp3.i.i.i, label %for.end.i.i, label %cond.false21.i.i

cond.false21.i.i:                                 ; preds = %land.lhs.true.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %104 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %104(i32 noundef 214748) #7
  %105 = ptrtoint ptr %hci.i.i.i.i15 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %hci.i.i.i.i15, align 8
  %read32.i.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %106, i32 0, i32 9
  %107 = ptrtoint ptr %read32.i.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %read32.i.i.i, align 4
  %call.i.i.i = tail call i32 %108(ptr noundef %rtwdev, i32 noundef 4096) #7
  %and.i.i = and i32 %call.i.i.i, 8
  %cmp6.i.i = icmp eq i32 %and.i.i, 0
  br i1 %cmp6.i.i, label %cond.false21.i.i.rtw89_pci_lv1rst_start_dma.exit.thread_crit_edge, label %cond.false21.i.i.land.lhs.true.i.i_crit_edge

cond.false21.i.i.land.lhs.true.i.i_crit_edge:     ; preds = %cond.false21.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true.i.i

cond.false21.i.i.rtw89_pci_lv1rst_start_dma.exit.thread_crit_edge: ; preds = %cond.false21.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtw89_pci_lv1rst_start_dma.exit.thread

for.end.i.i:                                      ; preds = %land.lhs.true.i.i
  %109 = ptrtoint ptr %hci.i.i.i.i15 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %hci.i.i.i.i15, align 8
  %read32.i43.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %110, i32 0, i32 9
  %111 = ptrtoint ptr %read32.i43.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %read32.i43.i.i, align 4
  %call.i44.i.i = tail call i32 %112(ptr noundef %rtwdev, i32 noundef 4096) #7
  %.pre.i.i = and i32 %call.i44.i.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pre.i.i)
  %cmp28.i.i = icmp eq i32 %.pre.i.i, 0
  br i1 %cmp28.i.i, label %for.end.i.i.rtw89_pci_lv1rst_start_dma.exit.thread_crit_edge, label %do.end7

for.end.i.i.rtw89_pci_lv1rst_start_dma.exit.thread_crit_edge: ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtw89_pci_lv1rst_start_dma.exit.thread

rtw89_pci_lv1rst_start_dma.exit.thread:           ; preds = %for.end.i.i.rtw89_pci_lv1rst_start_dma.exit.thread_crit_edge, %cond.false21.i.i.rtw89_pci_lv1rst_start_dma.exit.thread_crit_edge, %rtw89_pci_clr_idx_all.exit.i.rtw89_pci_lv1rst_start_dma.exit.thread_crit_edge
  %113 = ptrtoint ptr %hci.i.i.i.i15 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %hci.i.i.i.i15, align 8
  %read32.i.i.i21.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %114, i32 0, i32 9
  %115 = ptrtoint ptr %read32.i.i.i21.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %read32.i.i.i21.i, align 4
  %call.i.i.i22.i = tail call i32 %116(ptr noundef %rtwdev, i32 noundef 4112) #7
  %and.i.i23.i = and i32 %call.i.i.i22.i, -1048577
  %117 = ptrtoint ptr %hci.i.i.i.i15 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %hci.i.i.i.i15, align 8
  %write32.i.i.i24.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %118, i32 0, i32 12
  %119 = ptrtoint ptr %write32.i.i.i24.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %write32.i.i.i24.i, align 4
  tail call void %120(ptr noundef %rtwdev, i32 noundef 4112, i32 noundef %and.i.i23.i) #7
  %121 = ptrtoint ptr %hci.i.i.i.i15 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %hci.i.i.i.i15, align 8
  %read32.i.i9.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %122, i32 0, i32 9
  %123 = ptrtoint ptr %read32.i.i9.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %read32.i.i9.i.i, align 4
  %call.i.i10.i.i = tail call i32 %124(ptr noundef %rtwdev, i32 noundef 4096) #7
  %or.i.i25.i = or i32 %call.i.i10.i.i, 10240
  %125 = ptrtoint ptr %hci.i.i.i.i15 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %hci.i.i.i.i15, align 8
  %write32.i.i21.i.i19 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %126, i32 0, i32 12
  %127 = ptrtoint ptr %write32.i.i21.i.i19 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %write32.i.i21.i.i19, align 4
  tail call void %128(ptr noundef %rtwdev, i32 noundef 4096, i32 noundef %or.i.i25.i) #7
  br label %cleanup

do.end7:                                          ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev8 = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 1
  %129 = ptrtoint ptr %dev8 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %dev8, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %130, ptr noundef nonnull @.str.164) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end7, %rtw89_pci_lv1rst_start_dma.exit.thread, %do.end, %rtw89_pci_lv1rst_stop_dma.exit.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -110, %do.end7 ], [ %call14.i, %do.end ], [ 0, %rtw89_pci_lv1rst_stop_dma.exit.cleanup_crit_edge ], [ 0, %rtw89_pci_lv1rst_start_dma.exit.thread ], [ 0, %sw.bb.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtw89_pci_ops_dump_err_status(ptr noundef %rtwdev) #0 align 64 {
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
  %call.i = tail call i32 %5(ptr noundef %rtwdev, i32 noundef 4180) #7
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1, ptr noundef nonnull @.str.170, i32 noundef %call.i) #10
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %8 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hci.i, align 8
  %read32.i15 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %9, i32 0, i32 9
  %10 = ptrtoint ptr %read32.i15 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %read32.i15, align 4
  %call.i16 = tail call i32 %11(ptr noundef %rtwdev, i32 noundef 4548) #7
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %7, ptr noundef nonnull @.str.173, i32 noundef %call.i16) #10
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  %14 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hci.i, align 8
  %read32.i18 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %15, i32 0, i32 9
  %16 = ptrtoint ptr %read32.i18 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %read32.i18, align 4
  %call.i19 = tail call i32 %17(ptr noundef %rtwdev, i32 noundef 4568) #7
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %13, ptr noundef nonnull @.str.176, i32 noundef %call.i19) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtw89_pci_napi_poll(ptr noundef %napi, i32 noundef %budget) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %napi, i32 -14336
  %napi_budget_countdown = getelementptr i8, ptr %napi, i32 224
  %0 = ptrtoint ptr %napi_budget_countdown to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %budget, ptr %napi_budget_countdown, align 32
  %hci.i.i = getelementptr i8, ptr %napi, i32 -14056
  %1 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hci.i.i, align 8
  %write32.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %2, i32 0, i32 12
  %3 = ptrtoint ptr %write32.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %write32.i.i, align 4
  tail call void %4(ptr noundef %add.ptr, i32 noundef 4276, i32 noundef 1048580) #7
  %5 = ptrtoint ptr %napi_budget_countdown to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %napi_budget_countdown, align 32
  %trx_lock.i = getelementptr i8, ptr %napi, i32 276
  tail call void @_raw_spin_lock_bh(ptr noundef %trx_lock.i) #7
  %addr_idx2.i.i = getelementptr i8, ptr %napi, i32 535604
  %7 = ptrtoint ptr %addr_idx2.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %addr_idx2.i.i, align 4
  %9 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hci.i.i, align 8
  %read32.i.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %10, i32 0, i32 9
  %11 = ptrtoint ptr %read32.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %read32.i.i.i, align 4
  %call.i.i.i = tail call i32 %12(ptr noundef %add.ptr, i32 noundef %8) #7
  %rp1.i.i.i = getelementptr i8, ptr %napi, i32 535628
  %len3.i.i.i = getelementptr i8, ptr %napi, i32 535620
  %13 = ptrtoint ptr %len3.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %len3.i.i.i, align 4
  %and.i.i.i = lshr i32 %call.i.i.i, 16
  %shr.i.i.i = and i32 %and.i.i.i, 4095
  %wp2.i.i.i = getelementptr i8, ptr %napi, i32 535624
  %15 = ptrtoint ptr %wp2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %wp2.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i.i.i, i32 %16)
  %cmp18.not.i.i.i = icmp ult i32 %shr.i.i.i, %16
  %sub20.i.i.i = sub i32 %shr.i.i.i, %16
  %sub23.i.i.i = select i1 %cmp18.not.i.i.i, i32 %14, i32 0
  %cond25.i.i.i = add i32 %sub23.i.i.i, %sub20.i.i.i
  %17 = ptrtoint ptr %rp1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %shr.i.i.i, ptr %rp1.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond25.i.i.i)
  %cmp.i = icmp eq i32 %cond25.i.i.i, 0
  br i1 %cmp.i, label %entry.rtw89_pci_poll_rpq_dma.exit_crit_edge, label %if.end.i

entry.rtw89_pci_poll_rpq_dma.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtw89_pci_poll_rpq_dma.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i = getelementptr i8, ptr %napi, i32 535588
  tail call fastcc void @rtw89_pci_release_tx(ptr noundef %add.ptr, ptr noundef %arrayidx.i, i32 noundef %cond25.i.i.i) #7
  br label %rtw89_pci_poll_rpq_dma.exit

rtw89_pci_poll_rpq_dma.exit:                      ; preds = %if.end.i, %entry.rtw89_pci_poll_rpq_dma.exit_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %trx_lock.i) #7
  %18 = tail call i32 @llvm.smin.i32(i32 %cond25.i.i.i, i32 %6) #7
  %19 = ptrtoint ptr %napi_budget_countdown to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %napi_budget_countdown, align 32
  %sub.i = sub i32 %20, %18
  store i32 %sub.i, ptr %napi_budget_countdown, align 32
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %budget)
  %cmp = icmp eq i32 %18, %budget
  br i1 %cmp, label %rtw89_pci_poll_rpq_dma.exit.cleanup_crit_edge, label %if.end

rtw89_pci_poll_rpq_dma.exit.cleanup_crit_edge:    ; preds = %rtw89_pci_poll_rpq_dma.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %rtw89_pci_poll_rpq_dma.exit
  %21 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %hci.i.i, align 8
  %write32.i.i45 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %22, i32 0, i32 12
  %23 = ptrtoint ptr %write32.i.i45 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %write32.i.i45, align 4
  tail call void %24(ptr noundef %add.ptr, i32 noundef 4276, i32 noundef 524291) #7
  %25 = ptrtoint ptr %napi_budget_countdown to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %napi_budget_countdown, align 32
  %addr_idx2.i.i47 = getelementptr i8, ptr %napi, i32 534484
  %27 = ptrtoint ptr %addr_idx2.i.i47 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %addr_idx2.i.i47, align 4
  %29 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %hci.i.i, align 8
  %read32.i.i.i49 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %30, i32 0, i32 9
  %31 = ptrtoint ptr %read32.i.i.i49 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %read32.i.i.i49, align 4
  %call.i.i.i50 = tail call i32 %32(ptr noundef %add.ptr, i32 noundef %28) #7
  %rp1.i.i.i51 = getelementptr i8, ptr %napi, i32 534508
  %len3.i.i.i52 = getelementptr i8, ptr %napi, i32 534500
  %33 = ptrtoint ptr %len3.i.i.i52 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %len3.i.i.i52, align 4
  %and.i.i.i53 = lshr i32 %call.i.i.i50, 16
  %shr.i.i.i54 = and i32 %and.i.i.i53, 4095
  %wp2.i.i.i55 = getelementptr i8, ptr %napi, i32 534504
  %35 = ptrtoint ptr %wp2.i.i.i55 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %wp2.i.i.i55, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i.i.i54, i32 %36)
  %cmp18.not.i.i.i56 = icmp ult i32 %shr.i.i.i54, %36
  %sub20.i.i.i57 = sub i32 %shr.i.i.i54, %36
  %sub23.i.i.i58 = select i1 %cmp18.not.i.i.i56, i32 %34, i32 0
  %cond25.i.i.i59 = add i32 %sub23.i.i.i58, %sub20.i.i.i57
  %37 = ptrtoint ptr %rp1.i.i.i51 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %shr.i.i.i54, ptr %rp1.i.i.i51, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond25.i.i.i59)
  %tobool.not.i = icmp eq i32 %cond25.i.i.i59, 0
  br i1 %tobool.not.i, label %if.end.rtw89_pci_poll_rxq_dma.exit_crit_edge, label %if.end.i61

if.end.rtw89_pci_poll_rxq_dma.exit_crit_edge:     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtw89_pci_poll_rxq_dma.exit

if.end.i61:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %rx_rings.i = getelementptr i8, ptr %napi, i32 534468
  %38 = tail call i32 @llvm.umin.i32(i32 %cond25.i.i.i59, i32 %26) #7
  tail call fastcc void @rtw89_pci_rxbd_deliver(ptr noundef %add.ptr, ptr noundef %rx_rings.i, i32 noundef %38) #7
  %39 = ptrtoint ptr %napi_budget_countdown to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %napi_budget_countdown, align 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp2.inv.i = icmp sgt i32 %40, 0
  %spec.select.i = select i1 %cmp2.inv.i, i32 0, i32 %26
  br label %rtw89_pci_poll_rxq_dma.exit

rtw89_pci_poll_rxq_dma.exit:                      ; preds = %if.end.i61, %if.end.rtw89_pci_poll_rxq_dma.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end.rtw89_pci_poll_rxq_dma.exit_crit_edge ], [ %spec.select.i, %if.end.i61 ]
  %add = add i32 %retval.0.i, %18
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %budget)
  %cmp4 = icmp slt i32 %add, %budget
  br i1 %cmp4, label %land.lhs.true, label %rtw89_pci_poll_rxq_dma.exit.cleanup_crit_edge

rtw89_pci_poll_rxq_dma.exit.cleanup_crit_edge:    ; preds = %rtw89_pci_poll_rxq_dma.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true:                                    ; preds = %rtw89_pci_poll_rxq_dma.exit
  %call5 = tail call zeroext i1 @napi_complete_done(ptr noundef %napi, i32 noundef %add) #7
  br i1 %call5, label %do.body7, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body7:                                         ; preds = %land.lhs.true
  %irq_lock = getelementptr i8, ptr %napi, i32 232
  %call11 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irq_lock) #7
  %running = getelementptr i8, ptr %napi, i32 320
  %41 = ptrtoint ptr %running to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %running, align 4, !range !504
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool.not = icmp eq i8 %42, 0
  br i1 %tobool.not, label %do.body7.if.end17_crit_edge, label %if.then16, !prof !520

do.body7.if.end17_crit_edge:                      ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17

if.then16:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #9
  %halt_c2h_intrs.i = getelementptr i8, ptr %napi, i32 536820
  %43 = ptrtoint ptr %halt_c2h_intrs.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %halt_c2h_intrs.i, align 8
  %45 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %hci.i.i, align 8
  %write32.i.i63 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %46, i32 0, i32 12
  %47 = ptrtoint ptr %write32.i.i63 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %write32.i.i63, align 4
  tail call void %48(ptr noundef %add.ptr, i32 noundef 416, i32 noundef %44) #7
  %intrs.i = getelementptr i8, ptr %napi, i32 536824
  %49 = ptrtoint ptr %intrs.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %intrs.i, align 4
  %51 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %hci.i.i, align 8
  %write32.i8.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %52, i32 0, i32 12
  %53 = ptrtoint ptr %write32.i8.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %write32.i8.i, align 4
  tail call void %54(ptr noundef %add.ptr, i32 noundef 4272, i32 noundef %50) #7
  %arrayidx2.i = getelementptr i8, ptr %napi, i32 536828
  %55 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %arrayidx2.i, align 4
  %57 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %hci.i.i, align 8
  %write32.i10.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %58, i32 0, i32 12
  %59 = ptrtoint ptr %write32.i10.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %write32.i10.i, align 4
  tail call void %60(ptr noundef %add.ptr, i32 noundef 5040, i32 noundef %56) #7
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %do.body7.if.end17_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irq_lock, i32 noundef %call11) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %land.lhs.true.cleanup_crit_edge, %rtw89_pci_poll_rxq_dma.exit.cleanup_crit_edge, %rtw89_pci_poll_rpq_dma.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %budget, %rtw89_pci_poll_rpq_dma.exit.cleanup_crit_edge ], [ %add, %if.end17 ], [ %add, %land.lhs.true.cleanup_crit_edge ], [ %add, %rtw89_pci_poll_rxq_dma.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw89_core_fill_txdesc(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_tail(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_map_single(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_mapping_error(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rtw89_pci_release_fwcmd(ptr nocapture noundef readonly %rtwdev, ptr noundef %rtwpci, i32 noundef %cnt, i1 noundef zeroext %release_all) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cnt)
  %tobool.not38 = icmp eq i32 %cnt, 0
  br i1 %tobool.not38, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %h2c_queue = getelementptr inbounds %struct.rtw89_pci, ptr %rtwpci, i32 0, i32 6
  %h2c_release_queue = getelementptr inbounds %struct.rtw89_pci, ptr %rtwpci, i32 0, i32 7
  br label %while.body

while.body:                                       ; preds = %if.end.while.body_crit_edge, %while.body.lr.ph
  %dec39.in = phi i32 [ %cnt, %while.body.lr.ph ], [ %dec39, %if.end.while.body_crit_edge ]
  %call = tail call ptr @skb_dequeue(ptr noundef %h2c_queue) #7
  %tobool1.not = icmp eq ptr %call, null
  br i1 %tobool1.not, label %while.body.cleanup.sink.split_crit_edge, label %if.end

while.body.cleanup.sink.split_crit_edge:          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end:                                           ; preds = %while.body
  %dec39 = add i32 %dec39.in, -1
  tail call void @skb_queue_tail(ptr noundef %h2c_release_queue, ptr noundef nonnull %call) #7
  %tobool.not = icmp eq i32 %dec39, 0
  br i1 %tobool.not, label %if.end.while.end_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.end:                                        ; preds = %if.end.while.end_crit_edge, %entry.while.end_crit_edge
  %h2c_release_queue2 = getelementptr inbounds %struct.rtw89_pci, ptr %rtwpci, i32 0, i32 7
  %qlen.i = getelementptr inbounds %struct.rtw89_pci, ptr %rtwpci, i32 0, i32 7, i32 1
  %0 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %qlen.i, align 4
  %2 = tail call i32 @llvm.usub.sat.i32(i32 %1, i32 8)
  %qlen.0 = select i1 %release_all, i32 %1, i32 %2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %qlen.0)
  %tobool9.not41 = icmp eq i32 %qlen.0, 0
  br i1 %tobool9.not41, label %while.end.cleanup_crit_edge, label %while.end.while.body10_crit_edge

while.end.while.body10_crit_edge:                 ; preds = %while.end
  br label %while.body10

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

while.body10:                                     ; preds = %if.end19.while.body10_crit_edge, %while.end.while.body10_crit_edge
  %dec842.in = phi i32 [ %dec842, %if.end19.while.body10_crit_edge ], [ %qlen.0, %while.end.while.body10_crit_edge ]
  %call12 = tail call ptr @skb_dequeue(ptr noundef %h2c_release_queue2) #7
  %tobool13.not = icmp eq ptr %call12, null
  br i1 %tobool13.not, label %while.body10.cleanup.sink.split_crit_edge, label %if.end19

while.body10.cleanup.sink.split_crit_edge:        ; preds = %while.body10
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end19:                                         ; preds = %while.body10
  %dec842 = add i32 %dec842.in, -1
  %status_driver_data.i = getelementptr inbounds %struct.sk_buff, ptr %call12, i32 0, i32 3, i32 32
  %3 = ptrtoint ptr %rtwpci to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %rtwpci, align 8
  %dev21 = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 44
  %5 = ptrtoint ptr %status_driver_data.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %status_driver_data.i, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %call12, i32 0, i32 6
  %7 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %len, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev21, i32 noundef %6, i32 noundef %8, i32 noundef 1, i32 noundef 0) #7
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %call12, i32 noundef 1) #7
  %tobool9.not = icmp eq i32 %dec842, 0
  br i1 %tobool9.not, label %if.end19.cleanup_crit_edge, label %if.end19.while.body10_crit_edge

if.end19.while.body10_crit_edge:                  ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body10

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup.sink.split:                               ; preds = %while.body10.cleanup.sink.split_crit_edge, %while.body.cleanup.sink.split_crit_edge
  %.str.71.sink = phi ptr [ @.str.71, %while.body10.cleanup.sink.split_crit_edge ], [ @.str.68, %while.body.cleanup.sink.split_crit_edge ]
  %dev18 = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 1
  %9 = ptrtoint ptr %dev18 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev18, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull %.str.71.sink) #10
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end19.cleanup_crit_edge, %while.end.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_dequeue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rtw89_pci_release_txwd_skb(ptr noundef %rtwdev, ptr noundef %tx_ring, ptr noundef %txwd, i16 noundef zeroext %seq, i8 noundef zeroext %tx_status) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 58
  %txch1 = getelementptr inbounds %struct.rtw89_pci_tx_ring, ptr %tx_ring, i32 0, i32 3
  %0 = ptrtoint ptr %txch1 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %txch1, align 8
  %2 = ptrtoint ptr %txwd to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %txwd, align 4
  %cmp.i.not = icmp eq ptr %3, %txwd
  br i1 %cmp.i.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 1
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %conv = zext i8 %1 to i32
  %conv2 = zext i16 %seq to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %5, ptr noundef nonnull @.str.73, i32 noundef %conv, i32 noundef %conv2) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %queue = getelementptr inbounds %struct.rtw89_pci_tx_wd, ptr %txwd, i32 0, i32 1
  %qlen.i = getelementptr inbounds %struct.rtw89_pci_tx_wd, ptr %txwd, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %qlen.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp.not = icmp eq i32 %7, 1
  br i1 %cmp.not, label %if.end12, label %do.end8

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %dev9 = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 1
  %8 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev9, align 4
  %conv10 = zext i8 %1 to i32
  %conv11 = zext i16 %seq to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %9, ptr noundef nonnull @.str.77, i32 noundef %conv10, i32 noundef %conv11) #10
  br label %cleanup

if.end12:                                         ; preds = %if.end
  %10 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %queue, align 4
  %cmp16.not47 = icmp eq ptr %11, %queue
  br i1 %cmp16.not47, label %if.end12.for.end_crit_edge, label %for.body.lr.ph

if.end12.for.end_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end12
  %conv.i44 = zext i8 %tx_status to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %tx_status)
  %cmp.i45 = icmp eq i8 %tx_status, 0
  %tx_mac_id_drop.i = getelementptr inbounds %struct.rtw89_pci_tx_ring, ptr %tx_ring, i32 0, i32 10
  %tx_life_time.i = getelementptr inbounds %struct.rtw89_pci_tx_ring, ptr %tx_ring, i32 0, i32 9
  %tx_retry_lmt.i = getelementptr inbounds %struct.rtw89_pci_tx_ring, ptr %tx_ring, i32 0, i32 8
  %dev.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 1
  %tx_acked.i = getelementptr inbounds %struct.rtw89_pci_tx_ring, ptr %tx_ring, i32 0, i32 7
  br label %for.body

for.body:                                         ; preds = %rtw89_pci_tx_status.exit.for.body_crit_edge, %for.body.lr.ph
  %skb.048 = phi ptr [ %11, %for.body.lr.ph ], [ %tmp.0, %rtw89_pci_tx_status.exit.for.body_crit_edge ]
  %12 = ptrtoint ptr %skb.048 to i32
  call void @__asan_load4_noabort(i32 %12)
  %tmp.0 = load ptr, ptr %skb.048, align 8
  tail call void @skb_unlink(ptr noundef %skb.048, ptr noundef %queue) #7
  %status_driver_data.i = getelementptr inbounds %struct.sk_buff, ptr %skb.048, i32 0, i32 3, i32 32
  %13 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %priv, align 8
  %dev20 = getelementptr inbounds %struct.pci_dev, ptr %14, i32 0, i32 44
  %15 = ptrtoint ptr %status_driver_data.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %status_driver_data.i, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb.048, i32 0, i32 6
  %17 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %len, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev20, i32 noundef %16, i32 noundef %18, i32 noundef 1, i32 noundef 0) #7
  %cb.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.048, i32 0, i32 3
  %count.i.i = getelementptr %struct.sk_buff, ptr %skb.048, i32 0, i32 3, i32 9
  %19 = ptrtoint ptr %count.i.i to i32
  call void @__asan_loadN_noabort(i32 %19, i32 2)
  %bf.load.i.i = load i16, ptr %count.i.i, align 1
  %bf.clear.i.i = and i16 %bf.load.i.i, 2047
  store i16 %bf.clear.i.i, ptr %count.i.i, align 1
  %count.1.i.i = getelementptr %struct.sk_buff, ptr %skb.048, i32 0, i32 3, i32 12
  %20 = ptrtoint ptr %count.1.i.i to i32
  call void @__asan_loadN_noabort(i32 %20, i32 2)
  %bf.load.1.i.i = load i16, ptr %count.1.i.i, align 1
  %bf.clear.1.i.i = and i16 %bf.load.1.i.i, 2047
  store i16 %bf.clear.1.i.i, ptr %count.1.i.i, align 1
  %count.2.i.i = getelementptr %struct.sk_buff, ptr %skb.048, i32 0, i32 3, i32 15
  %21 = ptrtoint ptr %count.2.i.i to i32
  call void @__asan_loadN_noabort(i32 %21, i32 2)
  %bf.load.2.i.i = load i16, ptr %count.2.i.i, align 1
  %bf.clear.2.i.i = and i16 %bf.load.2.i.i, 2047
  store i16 %bf.clear.2.i.i, ptr %count.2.i.i, align 1
  %count.3.i.i = getelementptr %struct.sk_buff, ptr %skb.048, i32 0, i32 3, i32 18
  %22 = ptrtoint ptr %count.3.i.i to i32
  call void @__asan_loadN_noabort(i32 %22, i32 2)
  %bf.load.3.i.i = load i16, ptr %count.3.i.i, align 1
  %bf.clear.3.i.i = and i16 %bf.load.3.i.i, 2047
  store i16 %bf.clear.3.i.i, ptr %count.3.i.i, align 1
  %add.ptr.i.i = getelementptr %struct.sk_buff, ptr %skb.048, i32 0, i32 3, i32 20
  %23 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 28)
  %24 = ptrtoint ptr %cb.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %cb.i.i, align 8
  %and.i = and i32 %25, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %for.body.if.end.i_crit_edge, label %if.then.i

for.body.if.end.i_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %or.i = or i32 %25, -2147483648
  %26 = ptrtoint ptr %cb.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %or.i, ptr %cb.i.i, align 8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body.if.end.i_crit_edge
  %27 = ptrtoint ptr %cb.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %cb.i.i, align 8
  br i1 %cmp.i45, label %if.then3.i, label %if.else.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %or5.i = or i32 %28, 512
  %29 = ptrtoint ptr %cb.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %or5.i, ptr %cb.i.i, align 8
  %30 = ptrtoint ptr %tx_acked.i to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %tx_acked.i, align 8
  %inc.i = add i64 %31, 1
  store i64 %inc.i, ptr %tx_acked.i, align 8
  br label %rtw89_pci_tx_status.exit

if.else.i:                                        ; preds = %if.end.i
  %and7.i = and i32 %28, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i)
  %tobool8.not.i = icmp eq i32 %and7.i, 0
  br i1 %tobool8.not.i, label %if.else.i.if.end11.i_crit_edge, label %if.then9.i

if.else.i.if.end11.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11.i

if.then9.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, ptr, ...) @__rtw89_debug(ptr noundef %rtwdev, i32 noundef 4096, ptr noundef nonnull @.str.79, i32 noundef %conv.i44) #7
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.then9.i, %if.else.i.if.end11.i_crit_edge
  %32 = zext i8 %tx_status to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.261)
  switch i8 %tx_status, label %do.end.i [
    i8 1, label %sw.bb.i
    i8 2, label %sw.bb14.i
    i8 3, label %sw.bb16.i
  ]

sw.bb.i:                                          ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #9
  %33 = ptrtoint ptr %tx_retry_lmt.i to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %tx_retry_lmt.i, align 8
  %inc13.i = add i64 %34, 1
  store i64 %inc13.i, ptr %tx_retry_lmt.i, align 8
  br label %rtw89_pci_tx_status.exit

sw.bb14.i:                                        ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #9
  %35 = ptrtoint ptr %tx_life_time.i to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %tx_life_time.i, align 8
  %inc15.i = add i64 %36, 1
  store i64 %inc15.i, ptr %tx_life_time.i, align 8
  br label %rtw89_pci_tx_status.exit

sw.bb16.i:                                        ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #9
  %37 = ptrtoint ptr %tx_mac_id_drop.i to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %tx_mac_id_drop.i, align 8
  %inc17.i = add i64 %38, 1
  store i64 %inc17.i, ptr %tx_mac_id_drop.i, align 8
  br label %rtw89_pci_tx_status.exit

do.end.i:                                         ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #9
  %39 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %40, ptr noundef nonnull @.str.80, i32 noundef %conv.i44) #10
  br label %rtw89_pci_tx_status.exit

rtw89_pci_tx_status.exit:                         ; preds = %do.end.i, %sw.bb16.i, %sw.bb14.i, %sw.bb.i, %if.then3.i
  %41 = ptrtoint ptr %rtwdev to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %rtwdev, align 128
  tail call fastcc void @local_bh_disable() #7
  tail call void @ieee80211_tx_status(ptr noundef %42, ptr noundef %skb.048) #7
  tail call fastcc void @local_bh_enable() #7
  %cmp16.not = icmp eq ptr %tmp.0, %queue
  br i1 %cmp16.not, label %rtw89_pci_tx_status.exit.for.end_crit_edge, label %rtw89_pci_tx_status.exit.for.body_crit_edge

rtw89_pci_tx_status.exit.for.body_crit_edge:      ; preds = %rtw89_pci_tx_status.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

rtw89_pci_tx_status.exit.for.end_crit_edge:       ; preds = %rtw89_pci_tx_status.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %rtw89_pci_tx_status.exit.for.end_crit_edge, %if.end12.for.end_crit_edge
  %vaddr.i = getelementptr inbounds %struct.rtw89_pci_tx_wd, ptr %txwd, i32 0, i32 2
  %43 = ptrtoint ptr %vaddr.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %vaddr.i, align 4
  %page_size.i = getelementptr inbounds %struct.rtw89_pci_tx_wd_ring, ptr %tx_ring, i32 0, i32 4
  %45 = ptrtoint ptr %page_size.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %page_size.i, align 4
  %47 = call ptr @memset(ptr %44, i32 0, i32 %46)
  %free_pages.i = getelementptr inbounds %struct.rtw89_pci_tx_wd_ring, ptr %tx_ring, i32 0, i32 3
  %prev.i.i = getelementptr inbounds %struct.rtw89_pci_tx_wd_ring, ptr %tx_ring, i32 0, i32 3, i32 1
  %48 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %txwd, ptr noundef %49, ptr noundef %free_pages.i) #7
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.end.rtw89_pci_enqueue_txwd.exit_crit_edge

for.end.rtw89_pci_enqueue_txwd.exit_crit_edge:    ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtw89_pci_enqueue_txwd.exit

if.end.i.i.i:                                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %50 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %txwd, ptr %prev.i.i, align 4
  %51 = ptrtoint ptr %txwd to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %free_pages.i, ptr %txwd, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %txwd, i32 0, i32 1
  %52 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %49, ptr %prev3.i.i.i, align 4
  %53 = ptrtoint ptr %49 to i32
  call void @__asan_store4_noabort(i32 %53)
  store volatile ptr %txwd, ptr %49, align 4
  br label %rtw89_pci_enqueue_txwd.exit

rtw89_pci_enqueue_txwd.exit:                      ; preds = %if.end.i.i.i, %for.end.rtw89_pci_enqueue_txwd.exit_crit_edge
  %curr_num.i = getelementptr inbounds %struct.rtw89_pci_tx_wd_ring, ptr %tx_ring, i32 0, i32 6
  %54 = ptrtoint ptr %curr_num.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %curr_num.i, align 4
  %inc.i46 = add i32 %55, 1
  store i32 %inc.i46, ptr %curr_num.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %rtw89_pci_enqueue_txwd.exit, %do.end8, %do.end
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_unlink(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__rtw89_debug(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_disable() #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__local_bh_disable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_disable, %__here) to i32), i32 noundef 512) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_tx_status(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %__here) to i32), i32 noundef 512) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_disable_ip(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw89_core_napi_start(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_irq(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw89_core_napi_stop(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rtw89_write16_mdio_clr(ptr noundef %rtwdev, i8 noundef zeroext %addr, i16 noundef zeroext %mask, i8 noundef zeroext %speed) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call fastcc i32 @rtw89_pci_check_mdio(ptr noundef %rtwdev, i8 noundef zeroext %addr, i8 noundef zeroext %speed, i16 noundef zeroext 512) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end, label %rtw89_read16_mdio.exit

rtw89_read16_mdio.exit:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 1
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %conv.i = zext i8 %addr to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.95, i32 noundef %conv.i, i32 noundef %call.i) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %hci.i.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 7
  %2 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hci.i.i, align 8
  %read16.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %read16.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %read16.i.i, align 4
  %call.i.i = tail call zeroext i16 %5(ptr noundef %rtwdev, i32 noundef 4262) #7
  %neg = xor i16 %mask, -1
  %and = and i16 %call.i.i, %neg
  %6 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hci.i.i, align 8
  %write16.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %7, i32 0, i32 11
  %8 = ptrtoint ptr %write16.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %write16.i.i, align 4
  tail call void %9(ptr noundef %rtwdev, i32 noundef 4260, i16 noundef zeroext %and) #7
  %call.i15 = tail call fastcc i32 @rtw89_pci_check_mdio(ptr noundef %rtwdev, i8 noundef zeroext %addr, i8 noundef zeroext %speed, i16 noundef zeroext 256) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i15)
  %tobool.not.i16 = icmp eq i32 %call.i15, 0
  br i1 %tobool.not.i16, label %if.end.cleanup_crit_edge, label %do.end.i19

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end.i19:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i17 = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 1
  %10 = ptrtoint ptr %dev.i17 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev.i17, align 4
  %conv.i18 = zext i8 %addr to i32
  %conv1.i = zext i16 %and to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.99, i32 noundef %conv.i18, i32 noundef %conv1.i, i32 noundef %call.i15) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end.i19, %if.end.cleanup_crit_edge, %rtw89_read16_mdio.exit
  %retval.0 = phi i32 [ %call.i, %rtw89_read16_mdio.exit ], [ 0, %if.end.cleanup_crit_edge ], [ %call.i15, %do.end.i19 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rtw89_pci_check_mdio(ptr noundef %rtwdev, i8 noundef zeroext %addr, i8 noundef zeroext %speed, i16 noundef zeroext %rw_bit) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = and i8 %addr, 31
  %hci.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 7
  %1 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hci.i, align 8
  %write8.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %2, i32 0, i32 10
  %3 = ptrtoint ptr %write8.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %write8.i, align 4
  tail call void %4(ptr noundef %rtwdev, i32 noundef 4256, i8 noundef zeroext %0) #7
  %5 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hci.i, align 8
  %read16.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %6, i32 0, i32 8
  %7 = ptrtoint ptr %read16.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %read16.i, align 4
  %call.i = tail call zeroext i16 %8(ptr noundef %rtwdev, i32 noundef 4256) #7
  %9 = zext i8 %speed to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.262)
  switch i8 %speed, label %do.end [
    i8 0, label %if.else
    i8 1, label %if.else13
  ]

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %10 = and i16 %call.i, -12289
  %or1.i = or i16 %10, 4096
  br label %sw.epilog

if.else13:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %or1.i76 = or i16 %call.i, 12288
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %conv2 = zext i8 %speed to i32
  %dev = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 1
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.97, i32 noundef %conv2) #10
  br label %cleanup

sw.epilog:                                        ; preds = %if.else13, %if.else
  %val.0 = phi i16 [ %or1.i76, %if.else13 ], [ %or1.i, %if.else ]
  %13 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hci.i, align 8
  %write16.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %14, i32 0, i32 11
  %15 = ptrtoint ptr %write16.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %write16.i, align 4
  tail call void %16(ptr noundef %rtwdev, i32 noundef 4256, i16 noundef zeroext %val.0) #7
  %17 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %hci.i, align 8
  %read16.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %18, i32 0, i32 8
  %19 = ptrtoint ptr %read16.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %read16.i.i, align 4
  %call.i.i = tail call zeroext i16 %20(ptr noundef %rtwdev, i32 noundef 4256) #7
  %or1.i79 = or i16 %call.i.i, %rw_bit
  %21 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %hci.i, align 8
  %write16.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %22, i32 0, i32 11
  %23 = ptrtoint ptr %write16.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %write16.i.i, align 4
  tail call void %24(ptr noundef %rtwdev, i32 noundef 4256, i16 noundef zeroext %or1.i79) #7
  %call17 = tail call i64 @ktime_get() #7
  %add.i = add i64 %call17, 2000000
  tail call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 1353) #7
  %25 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %hci.i, align 8
  %read16.i8187 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %26, i32 0, i32 8
  %27 = ptrtoint ptr %read16.i8187 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %read16.i8187, align 4
  %call.i8288 = tail call zeroext i16 %28(ptr noundef %rtwdev, i32 noundef 4256) #7
  %and357489 = and i16 %call.i8288, %rw_bit
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %and357489)
  %tobool.not90 = icmp eq i16 %and357489, 0
  br i1 %tobool.not90, label %sw.epilog.for.end.thread_crit_edge, label %sw.epilog.land.lhs.true_crit_edge

sw.epilog.land.lhs.true_crit_edge:                ; preds = %sw.epilog
  br label %land.lhs.true

sw.epilog.for.end.thread_crit_edge:               ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.thread

land.lhs.true:                                    ; preds = %if.then47.land.lhs.true_crit_edge, %sw.epilog.land.lhs.true_crit_edge
  %call39 = tail call i64 @ktime_get() #7
  call void @__sanitizer_cov_trace_cmp8(i64 %call39, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call39, %add.i
  br i1 %cmp3.i, label %for.end, label %if.then47

if.then47:                                        ; preds = %land.lhs.true
  tail call void @usleep_range_state(i32 noundef 3, i32 noundef 10, i32 noundef 2) #7
  %29 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %hci.i, align 8
  %read16.i81 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %30, i32 0, i32 8
  %31 = ptrtoint ptr %read16.i81 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %read16.i81, align 4
  %call.i82 = tail call zeroext i16 %32(ptr noundef %rtwdev, i32 noundef 4256) #7
  %and3574 = and i16 %call.i82, %rw_bit
  %tobool.not = icmp eq i16 %and3574, 0
  br i1 %tobool.not, label %if.then47.for.end.thread_crit_edge, label %if.then47.land.lhs.true_crit_edge

if.then47.land.lhs.true_crit_edge:                ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true

if.then47.for.end.thread_crit_edge:               ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.thread

for.end:                                          ; preds = %land.lhs.true
  %33 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %hci.i, align 8
  %read16.i84 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %34, i32 0, i32 8
  %35 = ptrtoint ptr %read16.i84 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %read16.i84, align 4
  %call.i85 = tail call zeroext i16 %36(ptr noundef %rtwdev, i32 noundef 4256) #7
  %.pre = and i16 %call.i85, %rw_bit
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %.pre)
  %tobool52.not = icmp eq i16 %.pre, 0
  br i1 %tobool52.not, label %for.end.for.end.thread_crit_edge, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end.for.end.thread_crit_edge:                 ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.thread

for.end.thread:                                   ; preds = %for.end.for.end.thread_crit_edge, %if.then47.for.end.thread_crit_edge, %sw.epilog.for.end.thread_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %for.end.thread, %for.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %for.end.thread ], [ -110, %for.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rtw89_pci_release_tx(ptr noundef %rtwdev, ptr nocapture noundef %rx_ring, i32 noundef %cnt) unnamed_addr #0 align 64 {
entry:
  %desc_info.i = alloca %struct.rtw89_rx_desc_info, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cnt)
  %tobool.not19 = icmp eq i32 %cnt, 0
  br i1 %tobool.not19, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %wp.i = getelementptr inbounds %struct.rtw89_pci_dma_ring, ptr %rx_ring, i32 0, i32 9
  %dev.i.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 1
  %offset14.i = getelementptr inbounds %struct.rtw89_rx_desc_info, ptr %desc_info.i, i32 0, i32 29
  %long_rxdesc.i = getelementptr inbounds %struct.rtw89_rx_desc_info, ptr %desc_info.i, i32 0, i32 5
  %tx_rings.i.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 1, i32 5, i32 1, i32 4
  %hci.i.i.i.i.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 7
  %len.i.i = getelementptr inbounds %struct.rtw89_pci_dma_ring, ptr %rx_ring, i32 0, i32 8
  br label %while.body

while.body:                                       ; preds = %if.end.while.body_crit_edge, %while.body.lr.ph
  %cnt.addr.020 = phi i32 [ %cnt, %while.body.lr.ph ], [ %sub, %if.end.while.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %desc_info.i) #7
  %0 = call ptr @memset(ptr %desc_info.i, i32 0, i32 44)
  %1 = ptrtoint ptr %wp.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %wp.i, align 4
  %arrayidx.i = getelementptr %struct.rtw89_pci_rx_ring, ptr %rx_ring, i32 0, i32 1, i32 %2
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx.i, align 4
  %cb.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %cb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %cb.i.i.i, align 4
  %7 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev.i.i, align 4
  call void @dma_sync_single_for_cpu(ptr noundef %8, i32 noundef %6, i32 noundef 11460, i32 noundef 2) #7
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %4, i32 0, i32 19
  %9 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data.i.i, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 4
  %fs.i.i = getelementptr inbounds %struct.sk_buff, ptr %4, i32 0, i32 3, i32 4
  %13 = ptrtoint ptr %fs.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %bf.load.i.i = load i32, ptr %fs.i.i, align 4
  %14 = shl i32 %12, 8
  %15 = and i32 %14, -2147483648
  %bf.clear.i.i = and i32 %bf.load.i.i, 2147483647
  %bf.set.i.i = or i32 %bf.clear.i.i, %15
  store i32 %bf.set.i.i, ptr %fs.i.i, align 4
  %16 = load i32, ptr %10, align 4
  %17 = shl i32 %16, 8
  %bf.value5.i.i = and i32 %17, 1073741824
  %bf.clear7.i.i = and i32 %bf.set.i.i, -1073741825
  %bf.set8.i.i = or i32 %bf.value5.i.i, %bf.clear7.i.i
  store i32 %bf.set8.i.i, ptr %fs.i.i, align 4
  %18 = load i32, ptr %10, align 4
  %19 = and i32 %18, -12648448
  %20 = call i32 @llvm.bswap.i32(i32 %19) #7
  %bf.value12.i.i = shl nuw nsw i32 %20, 5
  %bf.clear14.i.i = and i32 %bf.set8.i.i, -524257
  %bf.set15.i.i = or i32 %bf.value12.i.i, %bf.clear14.i.i
  %21 = ptrtoint ptr %fs.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %bf.set15.i.i, ptr %fs.i.i, align 4
  %22 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %10, align 4
  %24 = and i32 %23, 65311
  %25 = call i32 @llvm.bswap.i32(i32 %24) #7
  %bf.value19.i.i = shl nuw i32 %25, 3
  %bf.shl20.i.i = and i32 %bf.value19.i.i, 1073217536
  %bf.clear21.i.i = and i32 %bf.set15.i.i, -1073217537
  %bf.set22.i.i = or i32 %bf.shl20.i.i, %bf.clear21.i.i
  %26 = ptrtoint ptr %fs.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %bf.set22.i.i, ptr %fs.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bf.set22.i.i)
  %tobool4.not.i = icmp sgt i32 %bf.set22.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.value5.i.i)
  %tobool7.not.i = icmp eq i32 %bf.value5.i.i, 0
  %or.cond.i = or i1 %tobool7.not.i, %tobool4.not.i
  br i1 %or.cond.i, label %do.end, label %if.end13.i

if.end13.i:                                       ; preds = %while.body
  call void @rtw89_core_query_rxdesc(ptr noundef %rtwdev, ptr noundef nonnull %desc_info.i, ptr noundef %10, i32 noundef 4) #7
  %27 = ptrtoint ptr %offset14.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %offset14.i, align 2
  %conv.i = zext i16 %28 to i32
  %29 = ptrtoint ptr %long_rxdesc.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %long_rxdesc.i, align 2, !range !504
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool15.not.i = icmp eq i8 %30, 0
  %cond.i = select i1 %tobool15.not.i, i32 16, i32 32
  %add.i = add nuw nsw i32 %cond.i, %conv.i
  %add173.i = add nuw nsw i32 %add.i, 4
  %31 = ptrtoint ptr %fs.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %bf.load184.i = load i32, ptr %fs.i.i, align 4
  %bf.lshr195.i = lshr i32 %bf.load184.i, 5
  %bf.clear206.i = and i32 %bf.lshr195.i, 16383
  call void @__sanitizer_cov_trace_cmp4(i32 %add173.i, i32 %bf.clear206.i)
  %cmp.not7.i = icmp ugt i32 %add173.i, %bf.clear206.i
  br i1 %cmp.not7.i, label %if.end13.i.for.end.i_crit_edge, label %if.end13.i.for.body.i_crit_edge

if.end13.i.for.body.i_crit_edge:                  ; preds = %if.end13.i
  br label %for.body.i

if.end13.i.for.end.i_crit_edge:                   ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.body.i:                                       ; preds = %rtw89_pci_release_rpp.exit.i.for.body.i_crit_edge, %if.end13.i.for.body.i_crit_edge
  %add179.i = phi i32 [ %add17.i, %rtw89_pci_release_rpp.exit.i.for.body.i_crit_edge ], [ %add173.i, %if.end13.i.for.body.i_crit_edge ]
  %offset.08.i = phi i32 [ %add179.i, %rtw89_pci_release_rpp.exit.i.for.body.i_crit_edge ], [ %add.i, %if.end13.i.for.body.i_crit_edge ]
  %32 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %33, i32 %offset.08.i
  %34 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_loadN_noabort(i32 %34, i32 4)
  %35 = load i32, ptr %add.ptr.i, align 1
  %36 = call i32 @llvm.bswap.i32(i32 %35) #7
  %div4.i31.lhs.trunc39.i.i = lshr i32 %36, 8
  %trunc.i.i = trunc i32 %div4.i31.lhs.trunc39.i.i to i5
  %switch.tableidx = add i5 %trunc.i.i, 15
  %37 = sext i5 %switch.tableidx to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -13, i8 %37)
  %38 = icmp ult i5 %switch.tableidx, -13
  br i1 %38, label %switch.hole_check, label %for.body.i.do.end.i.i.i_crit_edge

for.body.i.do.end.i.i.i_crit_edge:                ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i.i.i

do.end.i.i.i:                                     ; preds = %switch.hole_check.do.end.i.i.i_crit_edge, %for.body.i.do.end.i.i.i_crit_edge
  %conv3.i.i = and i32 %div4.i31.lhs.trunc39.i.i, 31
  %39 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev.i.i, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %40, ptr noundef nonnull @.str.156, i32 noundef %conv3.i.i) #10
  br label %rtw89_core_get_ch_dma.exit.i.i

switch.hole_check:                                ; preds = %for.body.i
  %switch.maskindex = zext i5 %switch.tableidx to i32
  %switch.shifted = lshr i32 492291, %switch.maskindex
  %41 = and i32 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %switch.lobit.not = icmp eq i32 %41, 0
  br i1 %switch.lobit.not, label %switch.hole_check.do.end.i.i.i_crit_edge, label %switch.lookup

switch.hole_check.do.end.i.i.i_crit_edge:         ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i.i.i

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #9
  %42 = zext i5 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [19 x i32], ptr @switch.table.rtw89_pci_release_tx, i32 0, i32 %42
  %43 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %43)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %rtw89_core_get_ch_dma.exit.i.i

rtw89_core_get_ch_dma.exit.i.i:                   ; preds = %switch.lookup, %do.end.i.i.i
  %retval.0.i.i.i = phi i32 [ 0, %do.end.i.i.i ], [ %switch.load, %switch.lookup ]
  %addr_idx2.i.i.i.i = getelementptr [13 x %struct.rtw89_pci_tx_ring], ptr %tx_rings.i.i, i32 0, i32 %retval.0.i.i.i, i32 1, i32 4
  %44 = ptrtoint ptr %addr_idx2.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %addr_idx2.i.i.i.i, align 4
  %46 = ptrtoint ptr %hci.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %hci.i.i.i.i.i, align 8
  %read32.i.i.i.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %47, i32 0, i32 9
  %48 = ptrtoint ptr %read32.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %read32.i.i.i.i.i, align 4
  %call.i.i.i.i.i = call i32 %49(ptr noundef %rtwdev, i32 noundef %45) #7
  %rp1.i.i.i.i.i = getelementptr [13 x %struct.rtw89_pci_tx_ring], ptr %tx_rings.i.i, i32 0, i32 %retval.0.i.i.i, i32 1, i32 10
  %len3.i.i.i.i.i = getelementptr [13 x %struct.rtw89_pci_tx_ring], ptr %tx_rings.i.i, i32 0, i32 %retval.0.i.i.i, i32 1, i32 8
  %50 = ptrtoint ptr %len3.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %len3.i.i.i.i.i, align 4
  %and.i.i.i.i.i = lshr i32 %call.i.i.i.i.i, 16
  %shr.i.i.i.i.i = and i32 %and.i.i.i.i.i, 4095
  %52 = ptrtoint ptr %rp1.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %rp1.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i.i.i.i.i, i32 %53)
  %cmp18.not.i.i.i.i.i = icmp ult i32 %shr.i.i.i.i.i, %53
  %sub20.i.i.i.i.i = sub i32 %shr.i.i.i.i.i, %53
  %sub23.i.i.i.i.i = select i1 %cmp18.not.i.i.i.i.i, i32 %51, i32 0
  %cond25.i.i.i.i.i = add i32 %sub23.i.i.i.i.i, %sub20.i.i.i.i.i
  %54 = ptrtoint ptr %rp1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %shr.i.i.i.i.i, ptr %rp1.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond25.i.i.i.i.i)
  %tobool.not15.i.i.i = icmp eq i32 %cond25.i.i.i.i.i, 0
  br i1 %tobool.not15.i.i.i, label %rtw89_core_get_ch_dma.exit.i.i.rtw89_pci_release_rpp.exit.i_crit_edge, label %while.body.lr.ph.i.i.i

rtw89_core_get_ch_dma.exit.i.i.rtw89_pci_release_rpp.exit.i_crit_edge: ; preds = %rtw89_core_get_ch_dma.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtw89_pci_release_rpp.exit.i

while.body.lr.ph.i.i.i:                           ; preds = %rtw89_core_get_ch_dma.exit.i.i
  %busy_pages.i.i.i = getelementptr [13 x %struct.rtw89_pci_tx_ring], ptr %tx_rings.i.i, i32 0, i32 %retval.0.i.i.i, i32 2
  br label %while.body.i.i.i

while.body.i.i.i:                                 ; preds = %list_del_init.exit.i.i.i.while.body.i.i.i_crit_edge, %while.body.lr.ph.i.i.i
  %dec16.in.i.i.i = phi i32 [ %cond25.i.i.i.i.i, %while.body.lr.ph.i.i.i ], [ %dec16.i.i.i, %list_del_init.exit.i.i.i.while.body.i.i.i_crit_edge ]
  %dec16.i.i.i = add i32 %dec16.in.i.i.i, -1
  %55 = ptrtoint ptr %busy_pages.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load volatile ptr, ptr %busy_pages.i.i.i, align 4
  %cmp.not.i.i.i = icmp eq ptr %56, %busy_pages.i.i.i
  %tobool3.not13.i.i.i = icmp eq ptr %56, null
  %tobool3.not.i.i.i = or i1 %cmp.not.i.i.i, %tobool3.not13.i.i.i
  br i1 %tobool3.not.i.i.i, label %do.end6.i.i.i, label %if.end.i.i.i

do.end6.i.i.i:                                    ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %57 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %dev.i.i, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %58, ptr noundef nonnull @.str.159) #10
  br label %rtw89_pci_release_rpp.exit.i

if.end.i.i.i:                                     ; preds = %while.body.i.i.i
  %call.i.i12.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %56) #7
  br i1 %call.i.i12.i.i.i, label %if.end.i.i.i.i.i, label %if.end.i.i.i.list_del_init.exit.i.i.i_crit_edge

if.end.i.i.i.list_del_init.exit.i.i.i_crit_edge:  ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del_init.exit.i.i.i

if.end.i.i.i.i.i:                                 ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %56, i32 0, i32 1
  %59 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %prev.i.i.i.i.i, align 4
  %61 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %56, align 4
  %prev1.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %62, i32 0, i32 1
  %63 = ptrtoint ptr %prev1.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %60, ptr %prev1.i.i.i.i.i.i, align 4
  %64 = ptrtoint ptr %60 to i32
  call void @__asan_store4_noabort(i32 %64)
  store volatile ptr %62, ptr %60, align 4
  br label %list_del_init.exit.i.i.i

list_del_init.exit.i.i.i:                         ; preds = %if.end.i.i.i.i.i, %if.end.i.i.i.list_del_init.exit.i.i.i_crit_edge
  %65 = ptrtoint ptr %56 to i32
  call void @__asan_store4_noabort(i32 %65)
  store volatile ptr %56, ptr %56, align 4
  %prev.i3.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %56, i32 0, i32 1
  %66 = ptrtoint ptr %prev.i3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %56, ptr %prev.i3.i.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq i32 %dec16.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %list_del_init.exit.i.i.i.rtw89_pci_release_rpp.exit.i_crit_edge, label %list_del_init.exit.i.i.i.while.body.i.i.i_crit_edge

list_del_init.exit.i.i.i.while.body.i.i.i_crit_edge: ; preds = %list_del_init.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i.i.i

list_del_init.exit.i.i.i.rtw89_pci_release_rpp.exit.i_crit_edge: ; preds = %list_del_init.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtw89_pci_release_rpp.exit.i

rtw89_pci_release_rpp.exit.i:                     ; preds = %list_del_init.exit.i.i.i.rtw89_pci_release_rpp.exit.i_crit_edge, %do.end6.i.i.i, %rtw89_core_get_ch_dma.exit.i.i.rtw89_pci_release_rpp.exit.i_crit_edge
  %arrayidx.i.i = getelementptr [13 x %struct.rtw89_pci_tx_ring], ptr %tx_rings.i.i, i32 0, i32 %retval.0.i.i.i
  %and.i.i.i = lshr i32 %36, 16
  %div4.i37.i.i = and i32 %and.i.i.i, 32767
  %conv.i.i = trunc i32 %div4.i37.i.i to i16
  %67 = trunc i32 %36 to i16
  %div4.i333640.i.i = lshr i16 %67, 13
  %conv6.i.i = trunc i16 %div4.i333640.i.i to i8
  %arrayidx12.i.i = getelementptr %struct.rtw89_pci_tx_wd_ring, ptr %arrayidx.i.i, i32 0, i32 2, i32 %div4.i37.i.i
  call fastcc void @rtw89_pci_release_txwd_skb(ptr noundef %rtwdev, ptr noundef %arrayidx.i.i, ptr noundef %arrayidx12.i.i, i16 noundef zeroext %conv.i.i, i8 noundef zeroext %conv6.i.i) #7
  %add17.i = add i32 %add179.i, 4
  %68 = ptrtoint ptr %fs.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %bf.load18.i = load i32, ptr %fs.i.i, align 4
  %bf.lshr19.i = lshr i32 %bf.load18.i, 5
  %bf.clear20.i = and i32 %bf.lshr19.i, 16383
  %cmp.not.i = icmp ugt i32 %add17.i, %bf.clear20.i
  br i1 %cmp.not.i, label %rtw89_pci_release_rpp.exit.i.for.end.i_crit_edge, label %rtw89_pci_release_rpp.exit.i.for.body.i_crit_edge

rtw89_pci_release_rpp.exit.i.for.body.i_crit_edge: ; preds = %rtw89_pci_release_rpp.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

rtw89_pci_release_rpp.exit.i.for.end.i_crit_edge: ; preds = %rtw89_pci_release_rpp.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.end.i:                                        ; preds = %rtw89_pci_release_rpp.exit.i.for.end.i_crit_edge, %if.end13.i.for.end.i_crit_edge
  %69 = ptrtoint ptr %cb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %cb.i.i.i, align 4
  %71 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %dev.i.i, align 4
  call void @dma_sync_single_for_device(ptr noundef %72, i32 noundef %70, i32 noundef 11460, i32 noundef 2) #7
  %73 = ptrtoint ptr %wp.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %wp.i, align 4
  %add.i.i = add i32 %74, 1
  store i32 %add.i.i, ptr %wp.i, align 4
  %75 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %len.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %76)
  %cmp.not.i.i = icmp ult i32 %add.i.i, %76
  br i1 %cmp.not.i.i, label %for.end.i.if.end_crit_edge, label %if.then.i.i

for.end.i.if.end_crit_edge:                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then.i.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i.i = sub i32 %add.i.i, %76
  %77 = ptrtoint ptr %wp.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %sub.i.i, ptr %wp.i, align 4
  br label %if.end

do.end:                                           ; preds = %while.body
  %78 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %dev.i.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %79, ptr noundef nonnull @.str.152) #10
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %desc_info.i) #7
  %80 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %dev.i.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %81, ptr noundef nonnull @.str.147) #10
  %82 = ptrtoint ptr %wp.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %wp.i, align 4
  %add.i13 = add i32 %83, %cnt.addr.020
  store i32 %add.i13, ptr %wp.i, align 4
  %84 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %len.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i13, i32 %85)
  %cmp.not.i14 = icmp ult i32 %add.i13, %85
  br i1 %cmp.not.i14, label %do.end.while.end_crit_edge, label %if.then.i

do.end.while.end_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

if.then.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i = sub i32 %add.i13, %85
  %86 = ptrtoint ptr %wp.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %sub.i, ptr %wp.i, align 4
  br label %while.end

if.end:                                           ; preds = %if.then.i.i, %for.end.i.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %desc_info.i) #7
  %sub = add i32 %cnt.addr.020, -1
  %tobool.not = icmp eq i32 %sub, 0
  br i1 %tobool.not, label %if.end.while.end_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.end:                                        ; preds = %if.end.while.end_crit_edge, %if.then.i, %do.end.while.end_crit_edge, %entry.while.end_crit_edge
  %addr_idx = getelementptr inbounds %struct.rtw89_pci_dma_ring, ptr %rx_ring, i32 0, i32 4
  %87 = ptrtoint ptr %addr_idx to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %addr_idx, align 4
  %wp = getelementptr inbounds %struct.rtw89_pci_dma_ring, ptr %rx_ring, i32 0, i32 9
  %89 = ptrtoint ptr %wp to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %wp, align 4
  %conv = trunc i32 %90 to i16
  %hci.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 7
  %91 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %hci.i, align 8
  %write16.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %92, i32 0, i32 11
  %93 = ptrtoint ptr %write16.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %write16.i, align 4
  call void %94(ptr noundef %rtwdev, i32 noundef %88, i16 noundef zeroext %conv) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw89_core_query_rxdesc(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_cpu(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rtw89_pci_poll_io_idle(ptr noundef %rtwdev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i64 @ktime_get() #7
  %add.i = add i64 %call, 1000000
  %hci.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 7
  %0 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hci.i, align 8
  %read32.i44 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %read32.i44 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %read32.i44, align 4
  %call.i45 = tail call i32 %3(ptr noundef %rtwdev, i32 noundef 4124) #7
  %and46 = and i32 %call.i45, 7340032
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46)
  %cmp47 = icmp eq i32 %and46, 0
  br i1 %cmp47, label %entry.cleanup_crit_edge, label %entry.land.lhs.true_crit_edge

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  br label %land.lhs.true

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true:                                    ; preds = %cond.false.land.lhs.true_crit_edge, %entry.land.lhs.true_crit_edge
  %call3 = tail call i64 @ktime_get() #7
  call void @__sanitizer_cov_trace_cmp8(i64 %call3, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call3, %add.i
  br i1 %cmp3.i, label %for.end, label %cond.false

cond.false:                                       ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 2147480) #7
  %5 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hci.i, align 8
  %read32.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %6, i32 0, i32 9
  %7 = ptrtoint ptr %read32.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %read32.i, align 4
  %call.i = tail call i32 %8(ptr noundef %rtwdev, i32 noundef 4124) #7
  %and = and i32 %call.i, 7340032
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %cond.false.cleanup_crit_edge, label %cond.false.land.lhs.true_crit_edge

cond.false.land.lhs.true_crit_edge:               ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true

cond.false.cleanup_crit_edge:                     ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end:                                          ; preds = %land.lhs.true
  %9 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hci.i, align 8
  %read32.i36 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %10, i32 0, i32 9
  %11 = ptrtoint ptr %read32.i36 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %read32.i36, align 4
  %call.i37 = tail call i32 %12(ptr noundef %rtwdev, i32 noundef 4124) #7
  %.pre = and i32 %call.i37, 7340032
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pre)
  %cmp17 = icmp eq i32 %.pre, 0
  br i1 %cmp17, label %for.end.cleanup_crit_edge, label %do.end

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 1
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 4
  %15 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hci.i, align 8
  %read32.i39 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %16, i32 0, i32 9
  %17 = ptrtoint ptr %read32.i39 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %read32.i39, align 4
  %call.i40 = tail call i32 %18(ptr noundef %rtwdev, i32 noundef 4124) #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.168, i32 noundef %call.i40) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end, %for.end.cleanup_crit_edge, %cond.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %for.end.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ 0, %cond.false.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_complete_done(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rtw89_pci_rxbd_deliver(ptr noundef %rtwdev, ptr noundef %rx_ring, i32 noundef %cnt) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %napi_budget_countdown = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 57
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cnt)
  %tobool.not12 = icmp eq i32 %cnt, 0
  br i1 %tobool.not12, label %entry.while.end_crit_edge, label %land.rhs.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

land.rhs.lr.ph:                                   ; preds = %entry
  %diliver_desc.i = getelementptr inbounds %struct.rtw89_pci_rx_ring, ptr %rx_ring, i32 0, i32 4
  %diliver_skb.i = getelementptr inbounds %struct.rtw89_pci_rx_ring, ptr %rx_ring, i32 0, i32 3
  %wp.i = getelementptr inbounds %struct.rtw89_pci_dma_ring, ptr %rx_ring, i32 0, i32 9
  %dev.i.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 1
  %ready.i = getelementptr inbounds %struct.rtw89_pci_rx_ring, ptr %rx_ring, i32 0, i32 4, i32 30
  %offset32.i = getelementptr inbounds %struct.rtw89_pci_rx_ring, ptr %rx_ring, i32 0, i32 4, i32 29
  %long_rxdesc.i = getelementptr inbounds %struct.rtw89_pci_rx_ring, ptr %rx_ring, i32 0, i32 4, i32 5
  %len.i9.i = getelementptr inbounds %struct.rtw89_pci_dma_ring, ptr %rx_ring, i32 0, i32 8
  br label %land.rhs

land.rhs:                                         ; preds = %rtw89_pci_rxbd_deliver_skbs.exit.land.rhs_crit_edge, %land.rhs.lr.ph
  %cnt.addr.013 = phi i32 [ %cnt, %land.rhs.lr.ph ], [ %sub, %rtw89_pci_rxbd_deliver_skbs.exit.land.rhs_crit_edge ]
  %0 = ptrtoint ptr %napi_budget_countdown to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %napi_budget_countdown, align 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp sgt i32 %1, 0
  br i1 %cmp, label %while.body, label %land.rhs.while.end_crit_edge

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body:                                       ; preds = %land.rhs
  %2 = ptrtoint ptr %diliver_skb.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %diliver_skb.i, align 4
  %4 = ptrtoint ptr %wp.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %wp.i, align 4
  %arrayidx.i = getelementptr %struct.rtw89_pci_rx_ring, ptr %rx_ring, i32 0, i32 1, i32 %5
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i, align 4
  %cb.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %cb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cb.i.i.i, align 4
  %10 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev.i.i, align 4
  tail call void @dma_sync_single_for_cpu(ptr noundef %11, i32 noundef %9, i32 noundef 11460, i32 noundef 2) #7
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %7, i32 0, i32 19
  %12 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data.i.i, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  %fs.i.i = getelementptr inbounds %struct.sk_buff, ptr %7, i32 0, i32 3, i32 4
  %16 = ptrtoint ptr %fs.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %bf.load.i.i = load i32, ptr %fs.i.i, align 4
  %17 = shl i32 %15, 8
  %18 = and i32 %17, -2147483648
  %bf.clear.i.i = and i32 %bf.load.i.i, 2147483647
  %bf.set.i.i = or i32 %bf.clear.i.i, %18
  store i32 %bf.set.i.i, ptr %fs.i.i, align 4
  %19 = load i32, ptr %13, align 4
  %20 = shl i32 %19, 8
  %bf.value5.i.i = and i32 %20, 1073741824
  %bf.clear7.i.i = and i32 %bf.set.i.i, -1073741825
  %bf.set8.i.i = or i32 %bf.value5.i.i, %bf.clear7.i.i
  store i32 %bf.set8.i.i, ptr %fs.i.i, align 4
  %21 = load i32, ptr %13, align 4
  %22 = and i32 %21, -12648448
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #7
  %bf.value12.i.i = shl nuw nsw i32 %23, 5
  %bf.clear14.i.i = and i32 %bf.set8.i.i, -524257
  %bf.set15.i.i = or i32 %bf.value12.i.i, %bf.clear14.i.i
  %24 = ptrtoint ptr %fs.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %bf.set15.i.i, ptr %fs.i.i, align 4
  %25 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %13, align 4
  %27 = and i32 %26, 65311
  %28 = tail call i32 @llvm.bswap.i32(i32 %27) #7
  %bf.value19.i.i = shl nuw i32 %28, 3
  %bf.shl20.i.i = and i32 %bf.value19.i.i, 1073217536
  %bf.clear21.i.i = and i32 %bf.set15.i.i, -1073217537
  %bf.set22.i.i = or i32 %bf.shl20.i.i, %bf.clear21.i.i
  %29 = ptrtoint ptr %fs.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %bf.set22.i.i, ptr %fs.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.set22.i.i)
  %tobool5.i = icmp slt i32 %bf.set22.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.value5.i.i)
  %tobool9.i = icmp ne i32 %bf.value5.i.i, 0
  %tobool13.not.i = icmp eq ptr %3, null
  br i1 %tobool5.i, label %if.then12.i, label %if.else.i

if.then12.i:                                      ; preds = %while.body
  br i1 %tobool13.not.i, label %if.end19.i, label %do.end17.i

do.end17.i:                                       ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #9
  %30 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.182) #10
  br label %err_sync_device.i

if.end19.i:                                       ; preds = %if.then12.i
  %32 = ptrtoint ptr %ready.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %ready.i, align 4, !range !504
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool20.not.i = icmp eq i8 %33, 0
  br i1 %tobool20.not.i, label %if.end26.i, label %do.end24.i

do.end24.i:                                       ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #9
  %34 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %35, ptr noundef nonnull @.str.185) #10
  br label %err_sync_device.i

if.end26.i:                                       ; preds = %if.end19.i
  tail call void @rtw89_core_query_rxdesc(ptr noundef %rtwdev, ptr noundef %diliver_desc.i, ptr noundef %13, i32 noundef 4) #7
  %36 = ptrtoint ptr %diliver_desc.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %diliver_desc.i, align 4
  %conv.i = zext i16 %37 to i32
  %call.i.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef %conv.i, i32 noundef 2592) #7
  %tobool28.not.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool28.not.i, label %if.end26.i.err_sync_device.i_crit_edge, label %if.end30.i

if.end26.i.err_sync_device.i_crit_edge:           ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_sync_device.i

if.end30.i:                                       ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #9
  %38 = ptrtoint ptr %diliver_skb.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call.i.i.i, ptr %diliver_skb.i, align 4
  %39 = ptrtoint ptr %offset32.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %offset32.i, align 2
  %conv33.i = zext i16 %40 to i32
  %41 = ptrtoint ptr %long_rxdesc.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %long_rxdesc.i, align 2, !range !504
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool34.not.i = icmp eq i8 %42, 0
  %cond.i = select i1 %tobool34.not.i, i32 16, i32 32
  %add.i = add nuw nsw i32 %cond.i, %conv33.i
  br label %if.end43.i

if.else.i:                                        ; preds = %while.body
  br i1 %tobool13.not.i, label %do.end40.i, label %if.else.i.if.end43.i_crit_edge

if.else.i.if.end43.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end43.i

do.end40.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  %43 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %44, ptr noundef nonnull @.str.188) #10
  br label %err_sync_device.i

if.end43.i:                                       ; preds = %if.else.i.if.end43.i_crit_edge, %if.end30.i
  %new.0.i = phi ptr [ %call.i.i.i, %if.end30.i ], [ %3, %if.else.i.if.end43.i_crit_edge ]
  %offset.0.i = phi i32 [ %add.i, %if.end30.i ], [ 4, %if.else.i.if.end43.i_crit_edge ]
  %45 = ptrtoint ptr %fs.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %bf.load.i1.i = load i32, ptr %fs.i.i, align 4
  %bf.lshr.i.i = lshr i32 %bf.load.i1.i, 5
  %bf.clear.i2.i = and i32 %bf.lshr.i.i, 16383
  %sub.i.i = sub nsw i32 %bf.clear.i2.i, %offset.0.i
  %data_len.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %new.0.i, i32 0, i32 7
  %46 = ptrtoint ptr %data_len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %data_len.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool.i.not.i.i.i = icmp eq i32 %47, 0
  br i1 %tobool.i.not.i.i.i, label %cond.false.i.i.i, label %if.end43.i.skb_tailroom.exit.i.i_crit_edge

if.end43.i.skb_tailroom.exit.i.i_crit_edge:       ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %skb_tailroom.exit.i.i

cond.false.i.i.i:                                 ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #9
  %end.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %new.0.i, i32 0, i32 17
  %48 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %end.i.i.i, align 4
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %new.0.i, i32 0, i32 16
  %50 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %49 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %51 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  br label %skb_tailroom.exit.i.i

skb_tailroom.exit.i.i:                            ; preds = %cond.false.i.i.i, %if.end43.i.skb_tailroom.exit.i.i_crit_edge
  %cond.i.i.i = phi i32 [ %sub.ptr.sub.i.i.i, %cond.false.i.i.i ], [ 0, %if.end43.i.skb_tailroom.exit.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.i.i.i, i32 %sub.i.i)
  %cmp.i.i = icmp ult i32 %cond.i.i.i, %sub.i.i
  br i1 %cmp.i.i, label %if.then.i.i, label %skb_tailroom.exit.i.i.if.end48.i_crit_edge, !prof !520

skb_tailroom.exit.i.i.if.end48.i_crit_edge:       ; preds = %skb_tailroom.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end48.i

if.then.i.i:                                      ; preds = %skb_tailroom.exit.i.i
  %52 = ptrtoint ptr %diliver_desc.i to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %diliver_desc.i, align 4
  %conv.i.i = zext i16 %53 to i32
  %bf.set22.i.lobit.i = lshr i32 %17, 31
  %bf.value5.i.lobit.i = lshr exact i32 %bf.value5.i.i, 30
  tail call void (ptr, i32, ptr, ...) @__rtw89_debug(ptr noundef %rtwdev, i32 noundef 1, ptr noundef nonnull @.str.193, i32 noundef %bf.clear.i2.i, i32 noundef %conv.i.i, i32 noundef %offset.0.i, i32 noundef %bf.set22.i.lobit.i, i32 noundef %bf.value5.i.lobit.i) #7
  %54 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %data.i.i, align 4
  %56 = ptrtoint ptr %fs.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %bf.load12.i.i = load i32, ptr %fs.i.i, align 4
  %bf.lshr13.i.i = lshr i32 %bf.load12.i.i, 5
  %bf.clear14.i4.i = and i32 %bf.lshr13.i.i, 16383
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rtw89_debug_mask to i32))
  %57 = load i32, ptr @rtw89_debug_mask, align 4
  %and.i = and i32 %57, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then.i.i.rtw89_hex_dump.exit_crit_edge, label %do.body.i

if.then.i.i.rtw89_hex_dump.exit_crit_edge:        ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtw89_hex_dump.exit

do.body.i:                                        ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtw89_hex_dump.__UNIQUE_ID_ddebug392, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtw89_pci_rxbd_deliver, %if.then4.i)) #7
          to label %rtw89_hex_dump.exit [label %if.then4.i], !srcloc !521

if.then4.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @print_hex_dump(ptr noundef nonnull @.str.200, ptr noundef nonnull @.str.194, i32 noundef 2, i32 noundef 16, i32 noundef 1, ptr noundef %55, i32 noundef %bf.clear14.i4.i, i1 noundef zeroext true) #7
  br label %rtw89_hex_dump.exit

rtw89_hex_dump.exit:                              ; preds = %if.then4.i, %do.body.i, %if.then.i.i.rtw89_hex_dump.exit_crit_edge
  %brmerge.demorgan.i.i = and i1 %tobool9.i, %tobool5.i
  br i1 %brmerge.demorgan.i.i, label %if.then19.i.i, label %rtw89_skb_put_rx_data.exit.i

if.then19.i.i:                                    ; preds = %rtw89_hex_dump.exit
  call void @__sanitizer_cov_trace_pc() #9
  %58 = ptrtoint ptr %diliver_desc.i to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %diliver_desc.i, align 4
  %conv21.i.i = zext i16 %59 to i32
  br label %if.end48.i

rtw89_skb_put_rx_data.exit.i:                     ; preds = %rtw89_hex_dump.exit
  call void @__sanitizer_cov_trace_pc() #9
  %60 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dev.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %61, ptr noundef nonnull @.str.195) #10
  br label %err_sync_device.i

if.end48.i:                                       ; preds = %if.then19.i.i, %skb_tailroom.exit.i.i.if.end48.i_crit_edge
  %copy_len.0.i.i = phi i32 [ %conv21.i.i, %if.then19.i.i ], [ %sub.i.i, %skb_tailroom.exit.i.i.if.end48.i_crit_edge ]
  %62 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %63, i32 %offset.0.i
  %call.i.i6.i = tail call ptr @skb_put(ptr noundef nonnull %new.0.i, i32 noundef %copy_len.0.i.i) #7
  %64 = call ptr @memcpy(ptr %call.i.i6.i, ptr %add.ptr.i.i, i32 %copy_len.0.i.i)
  %65 = ptrtoint ptr %cb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %cb.i.i.i, align 4
  %67 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %dev.i.i, align 4
  tail call void @dma_sync_single_for_device(ptr noundef %68, i32 noundef %66, i32 noundef 11460, i32 noundef 2) #7
  %69 = ptrtoint ptr %wp.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %wp.i, align 4
  %add.i.i = add i32 %70, 1
  store i32 %add.i.i, ptr %wp.i, align 4
  %71 = ptrtoint ptr %len.i9.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %len.i9.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %72)
  %cmp.not.i.i = icmp ult i32 %add.i.i, %72
  br i1 %cmp.not.i.i, label %if.end48.i.rtw89_pci_rxbd_increase.exit.i_crit_edge, label %if.then.i11.i

if.end48.i.rtw89_pci_rxbd_increase.exit.i_crit_edge: ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtw89_pci_rxbd_increase.exit.i

if.then.i11.i:                                    ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i10.i = sub i32 %add.i.i, %72
  %73 = ptrtoint ptr %wp.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %sub.i10.i, ptr %wp.i, align 4
  br label %rtw89_pci_rxbd_increase.exit.i

rtw89_pci_rxbd_increase.exit.i:                   ; preds = %if.then.i11.i, %if.end48.i.rtw89_pci_rxbd_increase.exit.i_crit_edge
  %74 = ptrtoint ptr %ready.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %ready.i, align 4, !range !504
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %75)
  %tobool50.not.i = icmp eq i8 %75, 0
  br i1 %tobool50.not.i, label %err_free_resource.thread.i, label %if.end56.i

err_free_resource.thread.i:                       ; preds = %rtw89_pci_rxbd_increase.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %76 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %dev.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %77, ptr noundef nonnull @.str.191) #10
  br label %if.then63.i

if.end56.i:                                       ; preds = %rtw89_pci_rxbd_increase.exit.i
  br i1 %tobool9.i, label %if.then58.i, label %if.end56.i.rtw89_pci_rxbd_deliver_skbs.exit_crit_edge

if.end56.i.rtw89_pci_rxbd_deliver_skbs.exit_crit_edge: ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtw89_pci_rxbd_deliver_skbs.exit

if.then58.i:                                      ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @rtw89_core_rx(ptr noundef %rtwdev, ptr noundef %diliver_desc.i, ptr noundef nonnull %new.0.i) #7
  br label %cleanup.sink.split.i

err_sync_device.i:                                ; preds = %rtw89_skb_put_rx_data.exit.i, %do.end40.i, %if.end26.i.err_sync_device.i_crit_edge, %do.end24.i, %do.end17.i
  %new.1.i = phi ptr [ %3, %do.end17.i ], [ null, %do.end24.i ], [ %new.0.i, %rtw89_skb_put_rx_data.exit.i ], [ null, %if.end26.i.err_sync_device.i_crit_edge ], [ null, %do.end40.i ]
  %78 = ptrtoint ptr %cb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %cb.i.i.i, align 4
  %80 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %dev.i.i, align 4
  tail call void @dma_sync_single_for_device(ptr noundef %81, i32 noundef %79, i32 noundef 11460, i32 noundef 2) #7
  %82 = ptrtoint ptr %wp.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %wp.i, align 4
  %add.i15.i = add i32 %83, 1
  store i32 %add.i15.i, ptr %wp.i, align 4
  %84 = ptrtoint ptr %len.i9.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %len.i9.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i15.i, i32 %85)
  %cmp.not.i17.i = icmp ult i32 %add.i15.i, %85
  br i1 %cmp.not.i17.i, label %err_sync_device.i.err_free_resource.i_crit_edge, label %if.then.i19.i

err_sync_device.i.err_free_resource.i_crit_edge:  ; preds = %err_sync_device.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_free_resource.i

if.then.i19.i:                                    ; preds = %err_sync_device.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i18.i = sub i32 %add.i15.i, %85
  %86 = ptrtoint ptr %wp.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %sub.i18.i, ptr %wp.i, align 4
  br label %err_free_resource.i

err_free_resource.i:                              ; preds = %if.then.i19.i, %err_sync_device.i.err_free_resource.i_crit_edge
  %tobool62.not.i = icmp eq ptr %new.1.i, null
  br i1 %tobool62.not.i, label %err_free_resource.i.cleanup.sink.split.i_crit_edge, label %err_free_resource.i.if.then63.i_crit_edge

err_free_resource.i.if.then63.i_crit_edge:        ; preds = %err_free_resource.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then63.i

err_free_resource.i.cleanup.sink.split.i_crit_edge: ; preds = %err_free_resource.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split.i

if.then63.i:                                      ; preds = %err_free_resource.i.if.then63.i_crit_edge, %err_free_resource.thread.i
  %new.224.i = phi ptr [ %new.0.i, %err_free_resource.thread.i ], [ %new.1.i, %err_free_resource.i.if.then63.i_crit_edge ]
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %new.224.i, i32 noundef 1) #7
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.then63.i, %err_free_resource.i.cleanup.sink.split.i_crit_edge, %if.then58.i
  %87 = ptrtoint ptr %diliver_skb.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr null, ptr %diliver_skb.i, align 4
  %88 = ptrtoint ptr %ready.i to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 0, ptr %ready.i, align 4
  br label %rtw89_pci_rxbd_deliver_skbs.exit

rtw89_pci_rxbd_deliver_skbs.exit:                 ; preds = %cleanup.sink.split.i, %if.end56.i.rtw89_pci_rxbd_deliver_skbs.exit_crit_edge
  %sub = add i32 %cnt.addr.013, -1
  %tobool.not = icmp eq i32 %sub, 0
  br i1 %tobool.not, label %rtw89_pci_rxbd_deliver_skbs.exit.while.end_crit_edge, label %rtw89_pci_rxbd_deliver_skbs.exit.land.rhs_crit_edge

rtw89_pci_rxbd_deliver_skbs.exit.land.rhs_crit_edge: ; preds = %rtw89_pci_rxbd_deliver_skbs.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs

rtw89_pci_rxbd_deliver_skbs.exit.while.end_crit_edge: ; preds = %rtw89_pci_rxbd_deliver_skbs.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.end:                                        ; preds = %rtw89_pci_rxbd_deliver_skbs.exit.while.end_crit_edge, %land.rhs.while.end_crit_edge, %entry.while.end_crit_edge
  %addr_idx = getelementptr inbounds %struct.rtw89_pci_dma_ring, ptr %rx_ring, i32 0, i32 4
  %89 = ptrtoint ptr %addr_idx to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %addr_idx, align 4
  %wp = getelementptr inbounds %struct.rtw89_pci_dma_ring, ptr %rx_ring, i32 0, i32 9
  %91 = ptrtoint ptr %wp to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %wp, align 4
  %conv = trunc i32 %92 to i16
  %hci.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 7
  %93 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %hci.i, align 8
  %write16.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %94, i32 0, i32 11
  %95 = ptrtoint ptr %write16.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %write16.i, align 4
  tail call void %96(ptr noundef %rtwdev, i32 noundef %90, i16 noundef zeroext %conv) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw89_core_rx(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @print_hex_dump(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_request_regions(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_iomap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_release_regions(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_iounmap(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtw89_pci_interrupt_handler(i32 noundef %irq, ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %irq_lock = getelementptr inbounds %struct.rtw89_dev, ptr %dev, i32 0, i32 59, i32 4
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irq_lock) #7
  %running = getelementptr inbounds %struct.rtw89_dev, ptr %dev, i32 1, i32 5, i32 1, i32 3
  %0 = ptrtoint ptr %running to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %running, align 4, !range !504
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.exit_crit_edge, label %if.end, !prof !520

entry.exit_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %hci.i.i = getelementptr inbounds %struct.rtw89_dev, ptr %dev, i32 0, i32 7
  %2 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hci.i.i, align 8
  %write32.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %3, i32 0, i32 12
  %4 = ptrtoint ptr %write32.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %write32.i.i, align 4
  tail call void %5(ptr noundef %dev, i32 noundef 416, i32 noundef 0) #7
  %6 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hci.i.i, align 8
  %write32.i2.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %7, i32 0, i32 12
  %8 = ptrtoint ptr %write32.i2.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %write32.i2.i, align 4
  tail call void %9(ptr noundef %dev, i32 noundef 4272, i32 noundef 0) #7
  %10 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hci.i.i, align 8
  %write32.i4.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %11, i32 0, i32 12
  %12 = ptrtoint ptr %write32.i4.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %write32.i4.i, align 4
  tail call void %13(ptr noundef %dev, i32 noundef 5040, i32 noundef 0) #7
  br label %exit

exit:                                             ; preds = %if.end, %entry.exit_crit_edge
  %irqret.0 = phi i32 [ 2, %if.end ], [ 1, %entry.exit_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irq_lock, i32 noundef %call2) #7
  ret i32 %irqret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtw89_pci_interrupt_threadfn(i32 noundef %irq, ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %irq_lock = getelementptr inbounds %struct.rtw89_dev, ptr %dev, i32 0, i32 59, i32 4
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irq_lock) #7
  %hci.i.i = getelementptr inbounds %struct.rtw89_dev, ptr %dev, i32 0, i32 7
  %0 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hci.i.i, align 8
  %read32.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %read32.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %read32.i.i, align 4
  %call.i.i = tail call i32 %3(ptr noundef %dev, i32 noundef 420) #7
  %halt_c2h_intrs.i = getelementptr inbounds %struct.rtw89_dev, ptr %dev, i32 37, i32 51, i32 5, i32 1
  %4 = ptrtoint ptr %halt_c2h_intrs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %halt_c2h_intrs.i, align 8
  %and.i = and i32 %5, %call.i.i
  %6 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hci.i.i, align 8
  %read32.i29.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %7, i32 0, i32 9
  %8 = ptrtoint ptr %read32.i29.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %read32.i29.i, align 4
  %call.i30.i = tail call i32 %9(ptr noundef %dev, i32 noundef 4276) #7
  %intrs.i = getelementptr inbounds %struct.rtw89_dev, ptr %dev, i32 37, i32 51, i32 6
  %10 = ptrtoint ptr %intrs.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %intrs.i, align 4
  %and2.i = and i32 %11, %call.i30.i
  %12 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hci.i.i, align 8
  %read32.i32.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %13, i32 0, i32 9
  %14 = ptrtoint ptr %read32.i32.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %read32.i32.i, align 4
  %call.i33.i = tail call i32 %15(ptr noundef %dev, i32 noundef 5044) #7
  %arrayidx7.i = getelementptr %struct.rtw89_dev, ptr %dev, i32 37, i32 51, i32 6, i32 1
  %16 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx7.i, align 4
  %and8.i = and i32 %17, %call.i33.i
  %18 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hci.i.i, align 8
  %write32.i.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %19, i32 0, i32 12
  %20 = ptrtoint ptr %write32.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %write32.i.i, align 4
  tail call void %21(ptr noundef %dev, i32 noundef 420, i32 noundef %and.i) #7
  %22 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %hci.i.i, align 8
  %write32.i36.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %23, i32 0, i32 12
  %24 = ptrtoint ptr %write32.i36.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %write32.i36.i, align 4
  tail call void %25(ptr noundef %dev, i32 noundef 4276, i32 noundef %and2.i) #7
  %26 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %hci.i.i, align 8
  %write32.i38.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %27, i32 0, i32 12
  %28 = ptrtoint ptr %write32.i38.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %write32.i38.i, align 4
  tail call void %29(ptr noundef %dev, i32 noundef 5044, i32 noundef %and8.i) #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irq_lock, i32 noundef %call2) #7
  %and = and i32 %and2.i, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then, !prof !505

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %priv = getelementptr inbounds %struct.rtw89_dev, ptr %dev, i32 0, i32 58
  tail call fastcc void @rtw89_pci_isr_rxd_unavail(ptr noundef %dev, ptr noundef %priv)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %and9 = and i32 %and.i, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.end.if.end20_crit_edge, label %if.then17, !prof !505

if.end.if.end20_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20

if.then17:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call18 = tail call i32 @rtw89_mac_get_err_status(ptr noundef %dev) #7
  %call19 = tail call i32 @rtw89_ser_notify(ptr noundef %dev, i32 noundef %call18) #7
  br label %if.end20

if.end20:                                         ; preds = %if.then17, %if.end.if.end20_crit_edge
  %running = getelementptr inbounds %struct.rtw89_dev, ptr %dev, i32 1, i32 5, i32 1, i32 3
  %30 = ptrtoint ptr %running to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %running, align 4, !range !504
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool21.not = icmp eq i8 %31, 0
  br i1 %tobool21.not, label %if.end20.if.end29_crit_edge, label %if.then28, !prof !520

if.end20.if.end29_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29

if.then28:                                        ; preds = %if.end20
  tail call fastcc void @local_bh_disable()
  %napi = getelementptr inbounds %struct.rtw89_dev, ptr %dev, i32 0, i32 56
  %call.i = tail call zeroext i1 @napi_schedule_prep(ptr noundef %napi) #7
  br i1 %call.i, label %if.then.i, label %if.then28.napi_schedule.exit_crit_edge

if.then28.napi_schedule.exit_crit_edge:           ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #9
  br label %napi_schedule.exit

if.then.i:                                        ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__napi_schedule(ptr noundef %napi) #7
  br label %napi_schedule.exit

napi_schedule.exit:                               ; preds = %if.then.i, %if.then28.napi_schedule.exit_crit_edge
  tail call fastcc void @local_bh_enable()
  br label %if.end29

if.end29:                                         ; preds = %napi_schedule.exit, %if.end20.if.end29_crit_edge
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_free_irq_vectors(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_alloc_irq_vectors_affinity(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rtw89_pci_isr_rxd_unavail(ptr noundef %rtwdev, ptr nocapture noundef readonly %rtwpci) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %hci.i = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 7
  %dev = getelementptr inbounds %struct.rtw89_dev, ptr %rtwdev, i32 0, i32 1
  %addr_idx = getelementptr %struct.rtw89_pci, ptr %rtwpci, i32 0, i32 5, i32 0, i32 0, i32 4
  %0 = ptrtoint ptr %addr_idx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %addr_idx, align 4
  %2 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hci.i, align 8
  %read32.i = getelementptr inbounds %struct.rtw89_hci_ops, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %read32.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %read32.i, align 4
  %call.i = tail call i32 %5(ptr noundef %rtwdev, i32 noundef %1) #7
  %and = lshr i32 %call.i, 16
  %conv = and i32 %and, 4095
  %conv32 = and i32 %call.i, 4095
  %add = add nuw nsw i32 %conv, 1
  %len = getelementptr %struct.rtw89_pci, ptr %rtwpci, i32 0, i32 5, i32 0, i32 0, i32 8
  %6 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %len, align 4
  %rem = urem i32 %add, %7
  call void @__sanitizer_cov_trace_cmp4(i32 %rem, i32 %conv32)
  %cmp37 = icmp eq i32 %rem, %conv32
  br i1 %cmp37, label %do.end41, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end41:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %9, ptr noundef nonnull @.str.247, i32 noundef 0) #10
  br label %if.end

if.end:                                           ; preds = %do.end41, %entry.if.end_crit_edge
  %10 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %len, align 4
  tail call void (ptr, i32, ptr, ...) @__rtw89_debug(ptr noundef %rtwdev, i32 noundef 1, ptr noundef nonnull @.str.249, i32 noundef 0, i32 noundef %call.i, i32 noundef %11) #7
  %addr_idx.1 = getelementptr %struct.rtw89_pci, ptr %rtwpci, i32 0, i32 5, i32 1, i32 0, i32 4
  %12 = ptrtoint ptr %addr_idx.1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %addr_idx.1, align 4
  %14 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hci.i, align 8
  %read32.i.1 = getelementptr inbounds %struct.rtw89_hci_ops, ptr %15, i32 0, i32 9
  %16 = ptrtoint ptr %read32.i.1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %read32.i.1, align 4
  %call.i.1 = tail call i32 %17(ptr noundef %rtwdev, i32 noundef %13) #7
  %and.1 = lshr i32 %call.i.1, 16
  %conv.1 = and i32 %and.1, 4095
  %conv32.1 = and i32 %call.i.1, 4095
  %add.1 = add nuw nsw i32 %conv.1, 1
  %len.1 = getelementptr %struct.rtw89_pci, ptr %rtwpci, i32 0, i32 5, i32 1, i32 0, i32 8
  %18 = ptrtoint ptr %len.1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %len.1, align 4
  %rem.1 = urem i32 %add.1, %19
  call void @__sanitizer_cov_trace_cmp4(i32 %rem.1, i32 %conv32.1)
  %cmp37.1 = icmp eq i32 %rem.1, %conv32.1
  br i1 %cmp37.1, label %do.end41.1, label %if.end.if.end.1_crit_edge

if.end.if.end.1_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.1

do.end41.1:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %21, ptr noundef nonnull @.str.247, i32 noundef 1) #10
  br label %if.end.1

if.end.1:                                         ; preds = %do.end41.1, %if.end.if.end.1_crit_edge
  %22 = ptrtoint ptr %len.1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %len.1, align 4
  tail call void (ptr, i32, ptr, ...) @__rtw89_debug(ptr noundef %rtwdev, i32 noundef 1, ptr noundef nonnull @.str.249, i32 noundef 1, i32 noundef %call.i.1, i32 noundef %23) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw89_ser_notify(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw89_mac_get_err_status(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_schedule_prep(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__napi_schedule(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_clear_master(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_free_irq(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

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
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 256)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 256)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !9, !11, !13, !15, !17, !19, !21, !22, !24, !26, !28, !29, !31, !33, !35, !36, !37, !38, !40, !41, !43, !45, !46, !47, !48, !49, !50, !52, !53, !54, !55, !57, !58, !59, !60, !61, !63, !64, !65, !66, !68, !69, !71, !72, !73, !75, !76, !77, !78, !79, !81, !83, !85, !86, !87, !88, !90, !91, !92, !94, !95, !96, !98, !99, !100, !102, !103, !104, !106, !107, !108, !110, !111, !112, !114, !116, !117, !118, !119, !121, !122, !123, !124, !126, !127, !128, !130, !131, !132, !134, !135, !136, !137, !139, !140, !141, !143, !144, !145, !146, !148, !149, !150, !152, !153, !154, !155, !157, !158, !159, !160, !161, !163, !165, !166, !167, !168, !170, !171, !172, !174, !175, !176, !177, !178, !180, !181, !182, !184, !186, !187, !188, !189, !191, !192, !193, !194, !196, !197, !198, !199, !201, !202, !203, !205, !206, !207, !209, !210, !211, !213, !214, !215, !216, !218, !219, !220, !221, !223, !224, !225, !226, !228, !229, !230, !231, !233, !234, !235, !237, !238, !240, !241, !242, !244, !245, !246, !248, !249, !250, !252, !253, !255, !256, !257, !259, !260, !261, !263, !264, !266, !267, !269, !270, !271, !273, !275, !276, !278, !279, !281, !282, !284, !285, !286, !287, !289, !290, !292, !293, !294, !295, !297, !298, !299, !300, !302, !303, !304, !305, !307, !308, !309, !310, !312, !313, !314, !316, !317, !318, !319, !321, !322, !323, !324, !325, !327, !328, !329, !330, !332, !333, !334, !335, !337, !338, !339, !341, !343, !345, !346, !347, !348, !350, !351, !352, !353, !355, !356, !357, !359, !360, !361, !363, !364, !365, !366, !368, !369, !370, !372, !373, !374, !376, !377, !378, !380, !381, !382, !384, !385, !386, !388, !390, !392, !393, !394, !395, !397, !398, !399, !400, !401, !403, !404, !405, !406, !408, !409, !410, !411, !413, !414, !415, !417, !418, !420, !421, !423, !424, !425, !426, !428, !429, !430, !432, !433, !434, !436, !437, !438, !440, !441, !442, !443, !445, !446, !447, !449, !450, !451, !452, !454, !455, !456, !457, !459, !460, !461, !463, !464, !466, !467, !468, !469, !471, !472, !473, !474, !476, !477, !478, !480, !481, !482, !483, !485, !486, !487, !489, !490, !491, !492}
!llvm.module.flags = !{!494, !495, !496, !497, !498, !499, !500, !501}
!llvm.ident = !{!502}

!0 = !{ptr @__param_disable_clkreq, !1, !"__param_disable_clkreq", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/realtek/rtw89/pci.c", i32 15, i32 1}
!2 = !{ptr @__UNIQUE_ID_disable_clkreqtype395, !1, !"__UNIQUE_ID_disable_clkreqtype395", i1 false, i1 false}
!3 = !{ptr @__param_disable_aspm_l1, !4, !"__param_disable_aspm_l1", i1 false, i1 false}
!4 = !{!"../drivers/net/wireless/realtek/rtw89/pci.c", i32 16, i32 1}
!5 = !{ptr @__UNIQUE_ID_disable_aspm_l1type396, !4, !"__UNIQUE_ID_disable_aspm_l1type396", i1 false, i1 false}
!6 = !{ptr @__param_disable_aspm_l1ss, !7, !"__param_disable_aspm_l1ss", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/realtek/rtw89/pci.c", i32 17, i32 1}
!8 = !{ptr @__UNIQUE_ID_disable_aspm_l1sstype397, !7, !"__UNIQUE_ID_disable_aspm_l1sstype397", i1 false, i1 false}
!9 = !{ptr @__UNIQUE_ID_disable_clkreq398, !10, !"__UNIQUE_ID_disable_clkreq398", i1 false, i1 false}
!10 = !{!"../drivers/net/wireless/realtek/rtw89/pci.c", i32 18, i32 1}
!11 = !{ptr @__UNIQUE_ID_disable_aspm_l1399, !12, !"__UNIQUE_ID_disable_aspm_l1399", i1 false, i1 false}
!12 = !{!"../drivers/net/wireless/realtek/rtw89/pci.c", i32 19, i32 1}
!13 = !{ptr @__UNIQUE_ID_disable_aspm_l1ss400, !14, !"__UNIQUE_ID_disable_aspm_l1ss400", i1 false, i1 false}
!14 = !{!"../drivers/net/wireless/realtek/rtw89/pci.c", i32 20, i32 1}
!15 = !{ptr @rtw89_pm_ops, !16, !"rtw89_pm_ops", i1 false, i1 false}
!16 = !{!"../drivers/net/wireless/realtek/rtw89/pci.c", i32 2906, i32 1}
!17 = !{ptr @__ksymtab_rtw89_pm_ops, !18, !"__ksymtab_rtw89_pm_ops", i1 false, i1 false}
!18 = !{!"../drivers/net/wireless/realtek/rtw89/pci.c", i32 2907, i32 1}
!19 = !{ptr @__initcall__kmod_rtw89_pci__479_3056_rtw89_pci_driver_init6, !20, !"__initcall__kmod_rtw89_pci__479_3056_rtw89_pci_driver_init6", i1 false, i1 false}
!20 = !{!"../drivers/net/wireless/realtek/rtw89/pci.c", i32 3056, i32 1}
!21 = !{ptr @__exitcall_rtw89_pci_driver_exit, !20, !"__exitcall_rtw89_pci_driver_exit", i1 false, i1 false}
!22 = !{ptr @__UNIQUE_ID_author480, !23, !"__UNIQUE_ID_author480", i1 false, i1 false}
!23 = !{!"../drivers/net/wireless/realtek/rtw89/pci.c", i32 3058, i32 1}
!24 = !{ptr @__UNIQUE_ID_description481, !25, !"__UNIQUE_ID_description481", i1 false, i1 false}
!25 = !{!"../drivers/net/wireless/realtek/rtw89/pci.c", i32 3059, i32 1}
!26 = !{ptr @__UNIQUE_ID_file482, !27, !"__UNIQUE_ID_file482", i1 false, i1 false}
!27 = !{!"../drivers/net/wireless/realtek/rtw89/pci.c", i32 3060, i32 1}
!28 = !{ptr @__UNIQUE_ID_license483, !27, !"__UNIQUE_ID_license483", i1 false, i1 false}
!29 = !{ptr @rtw89_pci_disable_clkreq, !30, !"rtw89_pci_disable_clkreq", i1 false, i1 false}
!30 = !{!"../drivers/net/wireless/realtek/rtw89/pci.c", i32 12, i32 13}
!31 = !{ptr @rtw89_pci_disable_aspm_l1, !32, !"rtw89_pci_disable_aspm_l1", i1 false, i1 false}
!32 = !{!"../drivers/net/wireless/realtek/rtw89/pci.c", i32 13, i32 13}
!33 = !{ptr @rtw89_pci_disable_l1ss, !34, !"rtw89_pci_disable_l1ss", i1 false, i1 false}
!34 = !{!"../drivers/net/wireless/realtek/rtw89/pci.c", i32 14, i32 13}
!35 = !{ptr @__param_str_disable_clkreq, !1, !"__param_str_disable_clkreq", i1 false, i1 false}
!36 = !{ptr @__param_str_disable_aspm_l1, !4, !"__param_str_disable_aspm_l1", i1 false, i1 false}
!37 = !{ptr @__param_str_disable_aspm_l1ss, !7, !"__param_str_disable_aspm_l1ss", i1 false, i1 false}
!38 = !{ptr @.str, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/wireless/realtek/rtw89/pci.c", i32 1456, i32 3}
!40 = !{ptr @.str.1, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.2, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/net/wireless/realtek/rtw89/pci.c", i32 1433, i32 3}
!43 = !{ptr @.str.3, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/net/wireless/realtek/rtw89/pci.c", i32 2644, i32 3}
!45 = !{ptr @.str.4, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.5, !44, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.6, !44, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @rtw89_pci_link_cfg._entry, !44, !"_entry", i1 false, i1 false}
!49 = !{ptr @rtw89_pci_link_cfg._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.7, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/wireless/realtek/rtw89/pci.c", i32 2558, i32 3}
!52 = !{ptr @.str.8, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @rtw89_pci_clkreq_set._entry, !51, !"_entry", i1 false, i1 false}
!54 = !{ptr @rtw89_pci_clkreq_set._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.10, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/net/wireless/realtek/rtw89/pci.c", i32 2567, i32 3}
!57 = !{ptr @rtw89_pci_clkreq_set._entry.9, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @rtw89_pci_clkreq_set._entry_ptr.11, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.12, !56, !"<string literal>", i1 false, i1 false}
!60 = distinct !{null, !56, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @.str.14, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/net/wireless/realtek/rtw89/pci.c", i32 2581, i32 3}
!63 = !{ptr @.str.15, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @rtw89_pci_aspm_set._entry, !62, !"_entry", i1 false, i1 false}
!65 = !{ptr @rtw89_pci_aspm_set._entry_ptr, !62, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @rtw89_pci_aspm_set._entry.16, !67, !"_entry", i1 false, i1 false}
!67 = !{!"../drivers/net/wireless/realtek/rtw89/pci.c", i32 2589, i32 3}
!68 = !{ptr @rtw89_pci_aspm_set._entry_ptr.17, !67, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.19, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/net/wireless/realtek/rtw89/pci.c", i32 2598, i32 3}
!71 = !{ptr @rtw89_pci_aspm_set._entry.18, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @rtw89_pci_aspm_set._entry_ptr.20, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.21, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/net/wireless/realtek/rtw89/pci.c", i32 2666, i32 3}
!75 = !{ptr @.str.22, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @rtw89_pci_l1ss_set._entry, !74, !"_entry", i1 false, i1 false}
!77 = !{ptr @rtw89_pci_l1ss_set._entry_ptr, !74, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.23, !20, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @rtw89_pci_driver, !80, !"rtw89_pci_driver", i1 false, i1 false}
!80 = !{!"../drivers/net/wireless/realtek/rtw89/pci.c", i32 3049, i32 26}
!81 = !{ptr @rtw89_pci_id_table, !82, !"rtw89_pci_id_table", i1 false, i1 false}
!82 = !{!"../drivers/net/wireless/realtek/rtw89/pci.c", i32 3042, i32 35}
!83 = !{ptr @.str.24, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/net/wireless/realtek/rtw89/pci.c", i32 2946, i32 3}
!85 = !{ptr @.str.25, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @rtw89_pci_probe._entry, !84, !"_entry", i1 false, i1 false}
!87 = !{ptr @rtw89_pci_probe._entry_ptr, !84, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.27, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/net/wireless/realtek/rtw89/pci.c", i32 2970, i32 3}
!90 = !{ptr @rtw89_pci_probe._entry.26, !89, !"_entry", i1 false, i1 false}
!91 = !{ptr @rtw89_pci_probe._entry_ptr.28, !89, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.30, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/net/wireless/realtek/rtw89/pci.c", i32 2976, i32 3}
!94 = !{ptr @rtw89_pci_probe._entry.29, !93, !"_entry", i1 false, i1 false}
!95 = !{ptr @rtw89_pci_probe._entry_ptr.31, !93, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.33, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/net/wireless/realtek/rtw89/pci.c", i32 2982, i32 3}
!98 = !{ptr @rtw89_pci_probe._entry.32, !97, !"_entry", i1 false, i1 false}
!99 = !{ptr @rtw89_pci_probe._entry_ptr.34, !97, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.36, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/net/wireless/realtek/rtw89/pci.c", i32 2988, i32 3}
!102 = !{ptr @rtw89_pci_probe._entry.35, !101, !"_entry", i1 false, i1 false}
!103 = !{ptr @rtw89_pci_probe._entry_ptr.37, !101, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.39, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/net/wireless/realtek/rtw89/pci.c", i32 2997, i32 3}
!106 = !{ptr @rtw89_pci_probe._entry.38, !105, !"_entry", i1 false, i1 false}
!107 = !{ptr @rtw89_pci_probe._entry_ptr.40, !105, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.42, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/net/wireless/realtek/rtw89/pci.c", i32 3005, i32 3}
!110 = !{ptr @rtw89_pci_probe._entry.41, !109, !"_entry", i1 false, i1 false}
!111 = !{ptr @rtw89_pci_probe._entry_ptr.43, !109, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @rtw89_pci_ops, !113, !"rtw89_pci_ops", i1 false, i1 false}
!113 = !{!"../drivers/net/wireless/realtek/rtw89/pci.c", i32 2909, i32 35}
!114 = !{ptr @.str.44, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/net/wireless/realtek/rtw89/pci.c", i32 1103, i32 3}
!116 = !{ptr @.str.45, !115, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @rtw89_pci_ops_tx_write._entry, !115, !"_entry", i1 false, i1 false}
!118 = !{ptr @rtw89_pci_ops_tx_write._entry_ptr, !115, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @.str.46, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/net/wireless/realtek/rtw89/pci.c", i32 1067, i32 3}
!121 = !{ptr @.str.47, !120, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @rtw89_pci_tx_write._entry, !120, !"_entry", i1 false, i1 false}
!123 = !{ptr @rtw89_pci_tx_write._entry_ptr, !120, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @.str.49, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/net/wireless/realtek/rtw89/pci.c", i32 1076, i32 3}
!126 = !{ptr @rtw89_pci_tx_write._entry.48, !125, !"_entry", i1 false, i1 false}
!127 = !{ptr @rtw89_pci_tx_write._entry_ptr.50, !125, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @.str.52, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/net/wireless/realtek/rtw89/pci.c", i32 1084, i32 3}
!130 = !{ptr @rtw89_pci_tx_write._entry.51, !129, !"_entry", i1 false, i1 false}
!131 = !{ptr @rtw89_pci_tx_write._entry_ptr.53, !129, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @.str.54, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/net/wireless/realtek/rtw89/pci.c", i32 1026, i32 3}
!134 = !{ptr @.str.55, !133, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @rtw89_pci_txbd_submit._entry, !133, !"_entry", i1 false, i1 false}
!136 = !{ptr @rtw89_pci_txbd_submit._entry_ptr, !133, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @.str.57, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/net/wireless/realtek/rtw89/pci.c", i32 1033, i32 3}
!139 = !{ptr @rtw89_pci_txbd_submit._entry.56, !138, !"_entry", i1 false, i1 false}
!140 = !{ptr @rtw89_pci_txbd_submit._entry_ptr.58, !138, !"_entry_ptr", i1 false, i1 false}
!141 = !{ptr @.str.59, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/net/wireless/realtek/rtw89/pci.c", i32 994, i32 3}
!143 = !{ptr @.str.60, !142, !"<string literal>", i1 false, i1 false}
!144 = !{ptr @rtw89_pci_fwcmd_submit._entry, !142, !"_entry", i1 false, i1 false}
!145 = !{ptr @rtw89_pci_fwcmd_submit._entry_ptr, !142, !"_entry_ptr", i1 false, i1 false}
!146 = distinct !{null, !147, !"__already_done", i1 false, i1 false}
!147 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!148 = !{ptr @.str.61, !147, !"<string literal>", i1 false, i1 false}
!149 = !{ptr @.str.62, !147, !"<string literal>", i1 false, i1 false}
!150 = !{ptr @.str.63, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/net/wireless/realtek/rtw89/pci.c", i32 940, i32 3}
!152 = !{ptr @.str.64, !151, !"<string literal>", i1 false, i1 false}
!153 = !{ptr @rtw89_pci_txwd_submit._entry, !151, !"_entry", i1 false, i1 false}
!154 = !{ptr @rtw89_pci_txwd_submit._entry_ptr, !151, !"_entry_ptr", i1 false, i1 false}
!155 = !{ptr @.str.65, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/net/wireless/realtek/rtw89/pci.c", i32 891, i32 3}
!157 = !{ptr @.str.66, !156, !"<string literal>", i1 false, i1 false}
!158 = !{ptr @.str.67, !156, !"<string literal>", i1 false, i1 false}
!159 = !{ptr @__pci_flush_txch._entry, !156, !"_entry", i1 false, i1 false}
!160 = !{ptr @__pci_flush_txch._entry_ptr, !156, !"_entry_ptr", i1 false, i1 false}
!161 = !{ptr @bd_ram_table, !162, !"bd_ram_table", i1 false, i1 false}
!162 = !{!"../drivers/net/wireless/realtek/rtw89/pci.c", i32 1110, i32 38}
!163 = !{ptr @.str.68, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/net/wireless/realtek/rtw89/pci.c", i32 85, i32 4}
!165 = !{ptr @.str.69, !164, !"<string literal>", i1 false, i1 false}
!166 = !{ptr @rtw89_pci_release_fwcmd._entry, !164, !"_entry", i1 false, i1 false}
!167 = !{ptr @rtw89_pci_release_fwcmd._entry_ptr, !164, !"_entry_ptr", i1 false, i1 false}
!168 = !{ptr @.str.71, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/net/wireless/realtek/rtw89/pci.c", i32 98, i32 4}
!170 = !{ptr @rtw89_pci_release_fwcmd._entry.70, !169, !"_entry", i1 false, i1 false}
!171 = !{ptr @rtw89_pci_release_fwcmd._entry_ptr.72, !169, !"_entry_ptr", i1 false, i1 false}
!172 = !{ptr @.str.73, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/net/wireless/realtek/rtw89/pci.c", i32 415, i32 3}
!174 = !{ptr @.str.74, !173, !"<string literal>", i1 false, i1 false}
!175 = !{ptr @.str.75, !173, !"<string literal>", i1 false, i1 false}
!176 = !{ptr @rtw89_pci_release_txwd_skb._entry, !173, !"_entry", i1 false, i1 false}
!177 = !{ptr @rtw89_pci_release_txwd_skb._entry_ptr, !173, !"_entry_ptr", i1 false, i1 false}
!178 = !{ptr @.str.77, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/net/wireless/realtek/rtw89/pci.c", i32 422, i32 3}
!180 = !{ptr @rtw89_pci_release_txwd_skb._entry.76, !179, !"_entry", i1 false, i1 false}
!181 = !{ptr @rtw89_pci_release_txwd_skb._entry_ptr.78, !179, !"_entry_ptr", i1 false, i1 false}
!182 = !{ptr @.str.79, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/net/wireless/realtek/rtw89/pci.c", i32 350, i32 4}
!184 = !{ptr @.str.80, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/net/wireless/realtek/rtw89/pci.c", i32 363, i32 4}
!186 = !{ptr @.str.81, !185, !"<string literal>", i1 false, i1 false}
!187 = !{ptr @rtw89_pci_tx_status._entry, !185, !"_entry", i1 false, i1 false}
!188 = !{ptr @rtw89_pci_tx_status._entry_ptr, !185, !"_entry_ptr", i1 false, i1 false}
!189 = !{ptr @.str.82, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/net/wireless/realtek/rtw89/pci.c", i32 1241, i32 4}
!191 = !{ptr @.str.83, !190, !"<string literal>", i1 false, i1 false}
!192 = !{ptr @rtw89_pci_ops_read32_cmac._entry, !190, !"_entry", i1 false, i1 false}
!193 = !{ptr @rtw89_pci_ops_read32_cmac._entry_ptr, !190, !"_entry_ptr", i1 false, i1 false}
!194 = !{ptr @.str.84, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/net/wireless/realtek/rtw89/pci.c", i32 1815, i32 3}
!196 = !{ptr @.str.85, !195, !"<string literal>", i1 false, i1 false}
!197 = !{ptr @rtw89_pci_ops_mac_pre_init._entry, !195, !"_entry", i1 false, i1 false}
!198 = !{ptr @rtw89_pci_ops_mac_pre_init._entry_ptr, !195, !"_entry_ptr", i1 false, i1 false}
!199 = !{ptr @.str.87, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/net/wireless/realtek/rtw89/pci.c", i32 1824, i32 3}
!201 = !{ptr @rtw89_pci_ops_mac_pre_init._entry.86, !200, !"_entry", i1 false, i1 false}
!202 = !{ptr @rtw89_pci_ops_mac_pre_init._entry_ptr.88, !200, !"_entry_ptr", i1 false, i1 false}
!203 = !{ptr @.str.90, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/net/wireless/realtek/rtw89/pci.c", i32 1852, i32 3}
!205 = !{ptr @rtw89_pci_ops_mac_pre_init._entry.89, !204, !"_entry", i1 false, i1 false}
!206 = !{ptr @rtw89_pci_ops_mac_pre_init._entry_ptr.91, !204, !"_entry_ptr", i1 false, i1 false}
!207 = !{ptr @.str.93, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/net/wireless/realtek/rtw89/pci.c", i32 1878, i32 3}
!209 = !{ptr @rtw89_pci_ops_mac_pre_init._entry.92, !208, !"_entry", i1 false, i1 false}
!210 = !{ptr @rtw89_pci_ops_mac_pre_init._entry_ptr.94, !208, !"_entry_ptr", i1 false, i1 false}
!211 = !{ptr @.str.95, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/net/wireless/realtek/rtw89/pci.c", i32 1363, i32 3}
!213 = !{ptr @.str.96, !212, !"<string literal>", i1 false, i1 false}
!214 = !{ptr @rtw89_read16_mdio._entry, !212, !"_entry", i1 false, i1 false}
!215 = !{ptr @rtw89_read16_mdio._entry_ptr, !212, !"_entry_ptr", i1 false, i1 false}
!216 = !{ptr @.str.97, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/net/wireless/realtek/rtw89/pci.c", i32 1346, i32 3}
!218 = !{ptr @.str.98, !217, !"<string literal>", i1 false, i1 false}
!219 = !{ptr @rtw89_pci_check_mdio._entry, !217, !"_entry", i1 false, i1 false}
!220 = !{ptr @rtw89_pci_check_mdio._entry_ptr, !217, !"_entry_ptr", i1 false, i1 false}
!221 = !{ptr @.str.99, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/net/wireless/realtek/rtw89/pci.c", i32 1379, i32 3}
!223 = !{ptr @.str.100, !222, !"<string literal>", i1 false, i1 false}
!224 = !{ptr @rtw89_write16_mdio._entry, !222, !"_entry", i1 false, i1 false}
!225 = !{ptr @rtw89_write16_mdio._entry_ptr, !222, !"_entry_ptr", i1 false, i1 false}
!226 = !{ptr @.str.101, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/net/wireless/realtek/rtw89/pci.c", i32 1547, i32 3}
!228 = !{ptr @.str.102, !227, !"<string literal>", i1 false, i1 false}
!229 = !{ptr @rtw89_pci_auto_refclk_cal._entry, !227, !"_entry", i1 false, i1 false}
!230 = !{ptr @rtw89_pci_auto_refclk_cal._entry_ptr, !227, !"_entry_ptr", i1 false, i1 false}
!231 = !{ptr @.str.104, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/net/wireless/realtek/rtw89/pci.c", i32 1556, i32 3}
!233 = !{ptr @rtw89_pci_auto_refclk_cal._entry.103, !232, !"_entry", i1 false, i1 false}
!234 = !{ptr @rtw89_pci_auto_refclk_cal._entry_ptr.105, !232, !"_entry_ptr", i1 false, i1 false}
!235 = !{ptr @rtw89_pci_auto_refclk_cal._entry.106, !236, !"_entry", i1 false, i1 false}
!236 = !{!"../drivers/net/wireless/realtek/rtw89/pci.c", i32 1562, i32 3}
!237 = !{ptr @rtw89_pci_auto_refclk_cal._entry_ptr.107, !236, !"_entry_ptr", i1 false, i1 false}
!238 = !{ptr @.str.109, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/net/wireless/realtek/rtw89/pci.c", i32 1570, i32 4}
!240 = !{ptr @rtw89_pci_auto_refclk_cal._entry.108, !239, !"_entry", i1 false, i1 false}
!241 = !{ptr @rtw89_pci_auto_refclk_cal._entry_ptr.110, !239, !"_entry_ptr", i1 false, i1 false}
!242 = !{ptr @.str.112, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../drivers/net/wireless/realtek/rtw89/pci.c", i32 1578, i32 3}
!244 = !{ptr @rtw89_pci_auto_refclk_cal._entry.111, !243, !"_entry", i1 false, i1 false}
!245 = !{ptr @rtw89_pci_auto_refclk_cal._entry_ptr.113, !243, !"_entry_ptr", i1 false, i1 false}
!246 = !{ptr @.str.115, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../drivers/net/wireless/realtek/rtw89/pci.c", i32 1586, i32 4}
!248 = !{ptr @rtw89_pci_auto_refclk_cal._entry.114, !247, !"_entry", i1 false, i1 false}
!249 = !{ptr @rtw89_pci_auto_refclk_cal._entry_ptr.116, !247, !"_entry_ptr", i1 false, i1 false}
!250 = !{ptr @rtw89_pci_auto_refclk_cal._entry.117, !251, !"_entry", i1 false, i1 false}
!251 = !{!"../drivers/net/wireless/realtek/rtw89/pci.c", i32 1596, i32 3}
!252 = !{ptr @rtw89_pci_auto_refclk_cal._entry_ptr.118, !251, !"_entry_ptr", i1 false, i1 false}
!253 = !{ptr @.str.120, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../drivers/net/wireless/realtek/rtw89/pci.c", i32 1603, i32 3}
!255 = !{ptr @rtw89_pci_auto_refclk_cal._entry.119, !254, !"_entry", i1 false, i1 false}
!256 = !{ptr @rtw89_pci_auto_refclk_cal._entry_ptr.121, !254, !"_entry_ptr", i1 false, i1 false}
!257 = !{ptr @.str.123, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../drivers/net/wireless/realtek/rtw89/pci.c", i32 1622, i32 3}
!259 = !{ptr @rtw89_pci_auto_refclk_cal._entry.122, !258, !"_entry", i1 false, i1 false}
!260 = !{ptr @rtw89_pci_auto_refclk_cal._entry_ptr.124, !258, !"_entry_ptr", i1 false, i1 false}
!261 = !{ptr @rtw89_pci_auto_refclk_cal._entry.125, !262, !"_entry", i1 false, i1 false}
!262 = !{!"../drivers/net/wireless/realtek/rtw89/pci.c", i32 1630, i32 3}
!263 = !{ptr @rtw89_pci_auto_refclk_cal._entry_ptr.126, !262, !"_entry_ptr", i1 false, i1 false}
!264 = !{ptr @rtw89_pci_auto_refclk_cal._entry.127, !265, !"_entry", i1 false, i1 false}
!265 = !{!"../drivers/net/wireless/realtek/rtw89/pci.c", i32 1638, i32 3}
!266 = !{ptr @rtw89_pci_auto_refclk_cal._entry_ptr.128, !265, !"_entry_ptr", i1 false, i1 false}
!267 = !{ptr @.str.130, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../drivers/net/wireless/realtek/rtw89/pci.c", i32 1644, i32 3}
!269 = !{ptr @rtw89_pci_auto_refclk_cal._entry.129, !268, !"_entry", i1 false, i1 false}
!270 = !{ptr @rtw89_pci_auto_refclk_cal._entry_ptr.131, !268, !"_entry_ptr", i1 false, i1 false}
!271 = distinct !{null, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../drivers/net/wireless/realtek/rtw89/pci.c", i32 1648, i32 2}
!273 = !{ptr @rtw89_pci_auto_refclk_cal._entry.133, !274, !"_entry", i1 false, i1 false}
!274 = !{!"../drivers/net/wireless/realtek/rtw89/pci.c", i32 1653, i32 3}
!275 = !{ptr @rtw89_pci_auto_refclk_cal._entry_ptr.134, !274, !"_entry_ptr", i1 false, i1 false}
!276 = !{ptr @rtw89_pci_auto_refclk_cal._entry.135, !277, !"_entry", i1 false, i1 false}
!277 = !{!"../drivers/net/wireless/realtek/rtw89/pci.c", i32 1660, i32 3}
!278 = !{ptr @rtw89_pci_auto_refclk_cal._entry_ptr.136, !277, !"_entry_ptr", i1 false, i1 false}
!279 = !{ptr @rtw89_pci_auto_refclk_cal._entry.137, !280, !"_entry", i1 false, i1 false}
!280 = !{!"../drivers/net/wireless/realtek/rtw89/pci.c", i32 1672, i32 4}
!281 = !{ptr @rtw89_pci_auto_refclk_cal._entry_ptr.138, !280, !"_entry_ptr", i1 false, i1 false}
!282 = !{ptr @.str.139, !283, !"<string literal>", i1 false, i1 false}
!283 = !{!"../drivers/net/wireless/realtek/rtw89/pci.c", i32 1524, i32 3}
!284 = !{ptr @.str.140, !283, !"<string literal>", i1 false, i1 false}
!285 = !{ptr @__get_target._entry, !283, !"_entry", i1 false, i1 false}
!286 = !{ptr @__get_target._entry_ptr, !283, !"_entry_ptr", i1 false, i1 false}
!287 = distinct !{null, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../drivers/net/wireless/realtek/rtw89/core.h", i32 3031, i32 2}
!289 = distinct !{null, !288, !"<string literal>", i1 false, i1 false}
!290 = !{ptr @.str.143, !291, !"<string literal>", i1 false, i1 false}
!291 = !{!"../drivers/net/wireless/realtek/rtw89/pci.c", i32 1930, i32 3}
!292 = !{ptr @.str.144, !291, !"<string literal>", i1 false, i1 false}
!293 = !{ptr @rtw89_pci_ops_mac_post_init._entry, !291, !"_entry", i1 false, i1 false}
!294 = !{ptr @rtw89_pci_ops_mac_post_init._entry_ptr, !291, !"_entry_ptr", i1 false, i1 false}
!295 = !{ptr @.str.145, !296, !"<string literal>", i1 false, i1 false}
!296 = !{!"../drivers/net/wireless/realtek/rtw89/pci.c", i32 818, i32 3}
!297 = !{ptr @.str.146, !296, !"<string literal>", i1 false, i1 false}
!298 = !{ptr @__rtw89_pci_check_and_reclaim_tx_resource._entry, !296, !"_entry", i1 false, i1 false}
!299 = !{ptr @__rtw89_pci_check_and_reclaim_tx_resource._entry_ptr, !296, !"_entry_ptr", i1 false, i1 false}
!300 = !{ptr @.str.147, !301, !"<string literal>", i1 false, i1 false}
!301 = !{!"../drivers/net/wireless/realtek/rtw89/pci.c", i32 548, i32 4}
!302 = !{ptr @.str.148, !301, !"<string literal>", i1 false, i1 false}
!303 = !{ptr @rtw89_pci_release_tx._entry, !301, !"_entry", i1 false, i1 false}
!304 = !{ptr @rtw89_pci_release_tx._entry_ptr, !301, !"_entry_ptr", i1 false, i1 false}
!305 = !{ptr @.str.149, !306, !"<string literal>", i1 false, i1 false}
!306 = !{!"../drivers/net/wireless/realtek/rtw89/pci.c", i32 505, i32 3}
!307 = !{ptr @.str.150, !306, !"<string literal>", i1 false, i1 false}
!308 = !{ptr @rtw89_pci_release_tx_skbs._entry, !306, !"_entry", i1 false, i1 false}
!309 = !{ptr @rtw89_pci_release_tx_skbs._entry_ptr, !306, !"_entry_ptr", i1 false, i1 false}
!310 = !{ptr @.str.152, !311, !"<string literal>", i1 false, i1 false}
!311 = !{!"../drivers/net/wireless/realtek/rtw89/pci.c", i32 512, i32 3}
!312 = !{ptr @rtw89_pci_release_tx_skbs._entry.151, !311, !"_entry", i1 false, i1 false}
!313 = !{ptr @rtw89_pci_release_tx_skbs._entry_ptr.153, !311, !"_entry_ptr", i1 false, i1 false}
!314 = !{ptr @.str.154, !315, !"<string literal>", i1 false, i1 false}
!315 = !{!"../drivers/net/wireless/realtek/rtw89/pci.c", i32 456, i32 3}
!316 = !{ptr @.str.155, !315, !"<string literal>", i1 false, i1 false}
!317 = !{ptr @rtw89_pci_release_rpp._entry, !315, !"_entry", i1 false, i1 false}
!318 = !{ptr @rtw89_pci_release_rpp._entry_ptr, !315, !"_entry_ptr", i1 false, i1 false}
!319 = !{ptr @.str.156, !320, !"<string literal>", i1 false, i1 false}
!320 = !{!"../drivers/net/wireless/realtek/rtw89/txrx.h", i32 283, i32 3}
!321 = !{ptr @.str.157, !320, !"<string literal>", i1 false, i1 false}
!322 = !{ptr @.str.158, !320, !"<string literal>", i1 false, i1 false}
!323 = !{ptr @rtw89_core_get_ch_dma._entry, !320, !"_entry", i1 false, i1 false}
!324 = !{ptr @rtw89_core_get_ch_dma._entry_ptr, !320, !"_entry_ptr", i1 false, i1 false}
!325 = !{ptr @.str.159, !326, !"<string literal>", i1 false, i1 false}
!326 = !{!"../drivers/net/wireless/realtek/rtw89/pci.c", i32 380, i32 4}
!327 = !{ptr @.str.160, !326, !"<string literal>", i1 false, i1 false}
!328 = !{ptr @rtw89_pci_reclaim_txbd._entry, !326, !"_entry", i1 false, i1 false}
!329 = !{ptr @rtw89_pci_reclaim_txbd._entry_ptr, !326, !"_entry_ptr", i1 false, i1 false}
!330 = !{ptr @.str.161, !331, !"<string literal>", i1 false, i1 false}
!331 = !{!"../drivers/net/wireless/realtek/rtw89/pci.c", i32 2806, i32 4}
!332 = !{ptr @.str.162, !331, !"<string literal>", i1 false, i1 false}
!333 = !{ptr @rtw89_pci_ops_mac_lv1_recovery._entry, !331, !"_entry", i1 false, i1 false}
!334 = !{ptr @rtw89_pci_ops_mac_lv1_recovery._entry_ptr, !331, !"_entry_ptr", i1 false, i1 false}
!335 = !{ptr @.str.164, !336, !"<string literal>", i1 false, i1 false}
!336 = !{!"../drivers/net/wireless/realtek/rtw89/pci.c", i32 2813, i32 4}
!337 = !{ptr @rtw89_pci_ops_mac_lv1_recovery._entry.163, !336, !"_entry", i1 false, i1 false}
!338 = !{ptr @rtw89_pci_ops_mac_lv1_recovery._entry_ptr.165, !336, !"_entry_ptr", i1 false, i1 false}
!339 = !{ptr @.str.166, !340, !"<string literal>", i1 false, i1 false}
!340 = !{!"../drivers/net/wireless/realtek/rtw89/pci.c", i32 2734, i32 3}
!341 = !{ptr @.str.167, !342, !"<string literal>", i1 false, i1 false}
!342 = !{!"../drivers/net/wireless/realtek/rtw89/pci.c", i32 2746, i32 3}
!343 = !{ptr @.str.168, !344, !"<string literal>", i1 false, i1 false}
!344 = !{!"../drivers/net/wireless/realtek/rtw89/pci.c", i32 2718, i32 3}
!345 = !{ptr @.str.169, !344, !"<string literal>", i1 false, i1 false}
!346 = !{ptr @rtw89_pci_poll_io_idle._entry, !344, !"_entry", i1 false, i1 false}
!347 = !{ptr @rtw89_pci_poll_io_idle._entry_ptr, !344, !"_entry_ptr", i1 false, i1 false}
!348 = !{ptr @.str.170, !349, !"<string literal>", i1 false, i1 false}
!349 = !{!"../drivers/net/wireless/realtek/rtw89/pci.c", i32 2825, i32 2}
!350 = !{ptr @.str.171, !349, !"<string literal>", i1 false, i1 false}
!351 = !{ptr @rtw89_pci_ops_dump_err_status._entry, !349, !"_entry", i1 false, i1 false}
!352 = !{ptr @rtw89_pci_ops_dump_err_status._entry_ptr, !349, !"_entry_ptr", i1 false, i1 false}
!353 = !{ptr @.str.173, !354, !"<string literal>", i1 false, i1 false}
!354 = !{!"../drivers/net/wireless/realtek/rtw89/pci.c", i32 2827, i32 2}
!355 = !{ptr @rtw89_pci_ops_dump_err_status._entry.172, !354, !"_entry", i1 false, i1 false}
!356 = !{ptr @rtw89_pci_ops_dump_err_status._entry_ptr.174, !354, !"_entry_ptr", i1 false, i1 false}
!357 = !{ptr @.str.176, !358, !"<string literal>", i1 false, i1 false}
!358 = !{!"../drivers/net/wireless/realtek/rtw89/pci.c", i32 2829, i32 2}
!359 = !{ptr @rtw89_pci_ops_dump_err_status._entry.175, !358, !"_entry", i1 false, i1 false}
!360 = !{ptr @rtw89_pci_ops_dump_err_status._entry_ptr.177, !358, !"_entry_ptr", i1 false, i1 false}
!361 = !{ptr @.str.178, !362, !"<string literal>", i1 false, i1 false}
!362 = !{!"../drivers/net/wireless/realtek/rtw89/pci.c", i32 297, i32 4}
!363 = !{ptr @.str.179, !362, !"<string literal>", i1 false, i1 false}
!364 = !{ptr @rtw89_pci_rxbd_deliver._entry, !362, !"_entry", i1 false, i1 false}
!365 = !{ptr @rtw89_pci_rxbd_deliver._entry_ptr, !362, !"_entry_ptr", i1 false, i1 false}
!366 = !{ptr @.str.180, !367, !"<string literal>", i1 false, i1 false}
!367 = !{!"../drivers/net/wireless/realtek/rtw89/pci.c", i32 220, i32 3}
!368 = !{ptr @rtw89_pci_rxbd_deliver_skbs._entry, !367, !"_entry", i1 false, i1 false}
!369 = !{ptr @rtw89_pci_rxbd_deliver_skbs._entry_ptr, !367, !"_entry_ptr", i1 false, i1 false}
!370 = !{ptr @.str.182, !371, !"<string literal>", i1 false, i1 false}
!371 = !{!"../drivers/net/wireless/realtek/rtw89/pci.c", i32 231, i32 4}
!372 = !{ptr @rtw89_pci_rxbd_deliver_skbs._entry.181, !371, !"_entry", i1 false, i1 false}
!373 = !{ptr @rtw89_pci_rxbd_deliver_skbs._entry_ptr.183, !371, !"_entry_ptr", i1 false, i1 false}
!374 = !{ptr @.str.185, !375, !"<string literal>", i1 false, i1 false}
!375 = !{!"../drivers/net/wireless/realtek/rtw89/pci.c", i32 235, i32 4}
!376 = !{ptr @rtw89_pci_rxbd_deliver_skbs._entry.184, !375, !"_entry", i1 false, i1 false}
!377 = !{ptr @rtw89_pci_rxbd_deliver_skbs._entry_ptr.186, !375, !"_entry_ptr", i1 false, i1 false}
!378 = !{ptr @.str.188, !379, !"<string literal>", i1 false, i1 false}
!379 = !{!"../drivers/net/wireless/realtek/rtw89/pci.c", i32 254, i32 4}
!380 = !{ptr @rtw89_pci_rxbd_deliver_skbs._entry.187, !379, !"_entry", i1 false, i1 false}
!381 = !{ptr @rtw89_pci_rxbd_deliver_skbs._entry_ptr.189, !379, !"_entry_ptr", i1 false, i1 false}
!382 = !{ptr @.str.191, !383, !"<string literal>", i1 false, i1 false}
!383 = !{!"../drivers/net/wireless/realtek/rtw89/pci.c", i32 264, i32 3}
!384 = !{ptr @rtw89_pci_rxbd_deliver_skbs._entry.190, !383, !"_entry", i1 false, i1 false}
!385 = !{ptr @rtw89_pci_rxbd_deliver_skbs._entry_ptr.192, !383, !"_entry_ptr", i1 false, i1 false}
!386 = !{ptr @.str.193, !387, !"<string literal>", i1 false, i1 false}
!387 = !{!"../drivers/net/wireless/realtek/rtw89/pci.c", i32 182, i32 3}
!388 = !{ptr @.str.194, !389, !"<string literal>", i1 false, i1 false}
!389 = !{!"../drivers/net/wireless/realtek/rtw89/pci.c", i32 185, i32 42}
!390 = !{ptr @.str.195, !391, !"<string literal>", i1 false, i1 false}
!391 = !{!"../drivers/net/wireless/realtek/rtw89/pci.c", i32 191, i32 4}
!392 = !{ptr @.str.196, !391, !"<string literal>", i1 false, i1 false}
!393 = !{ptr @rtw89_skb_put_rx_data._entry, !391, !"_entry", i1 false, i1 false}
!394 = !{ptr @rtw89_skb_put_rx_data._entry_ptr, !391, !"_entry_ptr", i1 false, i1 false}
!395 = !{ptr @.str.197, !396, !"<string literal>", i1 false, i1 false}
!396 = !{!"../drivers/net/wireless/realtek/rtw89/debug.h", i32 65, i32 2}
!397 = !{ptr @.str.198, !396, !"<string literal>", i1 false, i1 false}
!398 = !{ptr @.str.199, !396, !"<string literal>", i1 false, i1 false}
!399 = !{ptr @rtw89_hex_dump.__UNIQUE_ID_ddebug392, !396, !"__UNIQUE_ID_ddebug392", i1 false, i1 false}
!400 = !{ptr @.str.200, !396, !"<string literal>", i1 false, i1 false}
!401 = !{ptr @.str.201, !402, !"<string literal>", i1 false, i1 false}
!402 = !{!"../drivers/net/wireless/realtek/rtw89/pci.c", i32 1961, i32 3}
!403 = !{ptr @.str.202, !402, !"<string literal>", i1 false, i1 false}
!404 = !{ptr @rtw89_pci_claim_device._entry, !402, !"_entry", i1 false, i1 false}
!405 = !{ptr @rtw89_pci_claim_device._entry_ptr, !402, !"_entry_ptr", i1 false, i1 false}
!406 = !{ptr @.str.203, !407, !"<string literal>", i1 false, i1 false}
!407 = !{!"../drivers/net/wireless/realtek/rtw89/pci.c", i32 2458, i32 3}
!408 = !{ptr @.str.204, !407, !"<string literal>", i1 false, i1 false}
!409 = !{ptr @rtw89_pci_setup_resource._entry, !407, !"_entry", i1 false, i1 false}
!410 = !{ptr @rtw89_pci_setup_resource._entry_ptr, !407, !"_entry_ptr", i1 false, i1 false}
!411 = !{ptr @.str.206, !412, !"<string literal>", i1 false, i1 false}
!412 = !{!"../drivers/net/wireless/realtek/rtw89/pci.c", i32 2464, i32 3}
!413 = !{ptr @rtw89_pci_setup_resource._entry.205, !412, !"_entry", i1 false, i1 false}
!414 = !{ptr @rtw89_pci_setup_resource._entry_ptr.207, !412, !"_entry_ptr", i1 false, i1 false}
!415 = !{ptr @rtw89_pci_setup_resource.__key, !416, !"__key", i1 false, i1 false}
!416 = !{!"../drivers/net/wireless/realtek/rtw89/pci.c", i32 2470, i32 2}
!417 = !{ptr @.str.208, !416, !"<string literal>", i1 false, i1 false}
!418 = !{ptr @rtw89_pci_setup_resource.__key.209, !419, !"__key", i1 false, i1 false}
!419 = !{!"../drivers/net/wireless/realtek/rtw89/pci.c", i32 2471, i32 2}
!420 = !{ptr @.str.210, !419, !"<string literal>", i1 false, i1 false}
!421 = !{ptr @.str.211, !422, !"<string literal>", i1 false, i1 false}
!422 = !{!"../drivers/net/wireless/realtek/rtw89/pci.c", i32 1990, i32 3}
!423 = !{ptr @.str.212, !422, !"<string literal>", i1 false, i1 false}
!424 = !{ptr @rtw89_pci_setup_mapping._entry, !422, !"_entry", i1 false, i1 false}
!425 = !{ptr @rtw89_pci_setup_mapping._entry_ptr, !422, !"_entry_ptr", i1 false, i1 false}
!426 = !{ptr @.str.214, !427, !"<string literal>", i1 false, i1 false}
!427 = !{!"../drivers/net/wireless/realtek/rtw89/pci.c", i32 1996, i32 3}
!428 = !{ptr @rtw89_pci_setup_mapping._entry.213, !427, !"_entry", i1 false, i1 false}
!429 = !{ptr @rtw89_pci_setup_mapping._entry_ptr.215, !427, !"_entry_ptr", i1 false, i1 false}
!430 = !{ptr @.str.217, !431, !"<string literal>", i1 false, i1 false}
!431 = !{!"../drivers/net/wireless/realtek/rtw89/pci.c", i32 2002, i32 3}
!432 = !{ptr @rtw89_pci_setup_mapping._entry.216, !431, !"_entry", i1 false, i1 false}
!433 = !{ptr @rtw89_pci_setup_mapping._entry_ptr.218, !431, !"_entry_ptr", i1 false, i1 false}
!434 = !{ptr @.str.220, !435, !"<string literal>", i1 false, i1 false}
!435 = !{!"../drivers/net/wireless/realtek/rtw89/pci.c", i32 2009, i32 3}
!436 = !{ptr @rtw89_pci_setup_mapping._entry.219, !435, !"_entry", i1 false, i1 false}
!437 = !{ptr @rtw89_pci_setup_mapping._entry_ptr.221, !435, !"_entry_ptr", i1 false, i1 false}
!438 = !{ptr @.str.222, !439, !"<string literal>", i1 false, i1 false}
!439 = !{!"../drivers/net/wireless/realtek/rtw89/pci.c", i32 2425, i32 3}
!440 = !{ptr @.str.223, !439, !"<string literal>", i1 false, i1 false}
!441 = !{ptr @rtw89_pci_alloc_trx_rings._entry, !439, !"_entry", i1 false, i1 false}
!442 = !{ptr @rtw89_pci_alloc_trx_rings._entry_ptr, !439, !"_entry_ptr", i1 false, i1 false}
!443 = !{ptr @.str.225, !444, !"<string literal>", i1 false, i1 false}
!444 = !{!"../drivers/net/wireless/realtek/rtw89/pci.c", i32 2431, i32 3}
!445 = !{ptr @rtw89_pci_alloc_trx_rings._entry.224, !444, !"_entry", i1 false, i1 false}
!446 = !{ptr @rtw89_pci_alloc_trx_rings._entry_ptr.226, !444, !"_entry_ptr", i1 false, i1 false}
!447 = !{ptr @.str.227, !448, !"<string literal>", i1 false, i1 false}
!448 = !{!"../drivers/net/wireless/realtek/rtw89/pci.c", i32 2281, i32 4}
!449 = !{ptr @.str.228, !448, !"<string literal>", i1 false, i1 false}
!450 = !{ptr @rtw89_pci_alloc_tx_rings._entry, !448, !"_entry", i1 false, i1 false}
!451 = !{ptr @rtw89_pci_alloc_tx_rings._entry_ptr, !448, !"_entry_ptr", i1 false, i1 false}
!452 = !{ptr @.str.229, !453, !"<string literal>", i1 false, i1 false}
!453 = !{!"../drivers/net/wireless/realtek/rtw89/pci.c", i32 2225, i32 3}
!454 = !{ptr @.str.230, !453, !"<string literal>", i1 false, i1 false}
!455 = !{ptr @rtw89_pci_alloc_tx_ring._entry, !453, !"_entry", i1 false, i1 false}
!456 = !{ptr @rtw89_pci_alloc_tx_ring._entry_ptr, !453, !"_entry_ptr", i1 false, i1 false}
!457 = !{ptr @.str.232, !458, !"<string literal>", i1 false, i1 false}
!458 = !{!"../drivers/net/wireless/realtek/rtw89/pci.c", i32 2232, i32 3}
!459 = !{ptr @rtw89_pci_alloc_tx_ring._entry.231, !458, !"_entry", i1 false, i1 false}
!460 = !{ptr @rtw89_pci_alloc_tx_ring._entry_ptr.233, !458, !"_entry_ptr", i1 false, i1 false}
!461 = !{ptr @skb_queue_head_init.__key, !462, !"__key", i1 false, i1 false}
!462 = !{!"../include/linux/skbuff.h", i32 1984, i32 2}
!463 = !{ptr @.str.234, !462, !"<string literal>", i1 false, i1 false}
!464 = !{ptr @.str.235, !465, !"<string literal>", i1 false, i1 false}
!465 = !{!"../drivers/net/wireless/realtek/rtw89/pci.c", i32 2401, i32 4}
!466 = !{ptr @.str.236, !465, !"<string literal>", i1 false, i1 false}
!467 = !{ptr @rtw89_pci_alloc_rx_rings._entry, !465, !"_entry", i1 false, i1 false}
!468 = !{ptr @rtw89_pci_alloc_rx_rings._entry_ptr, !465, !"_entry_ptr", i1 false, i1 false}
!469 = !{ptr @.str.237, !470, !"<string literal>", i1 false, i1 false}
!470 = !{!"../drivers/net/wireless/realtek/rtw89/pci.c", i32 2318, i32 3}
!471 = !{ptr @.str.238, !470, !"<string literal>", i1 false, i1 false}
!472 = !{ptr @rtw89_pci_alloc_rx_ring._entry, !470, !"_entry", i1 false, i1 false}
!473 = !{ptr @rtw89_pci_alloc_rx_ring._entry_ptr, !470, !"_entry_ptr", i1 false, i1 false}
!474 = !{ptr @.str.240, !475, !"<string literal>", i1 false, i1 false}
!475 = !{!"../drivers/net/wireless/realtek/rtw89/pci.c", i32 2354, i32 4}
!476 = !{ptr @rtw89_pci_alloc_rx_ring._entry.239, !475, !"_entry", i1 false, i1 false}
!477 = !{ptr @rtw89_pci_alloc_rx_ring._entry_ptr.241, !475, !"_entry_ptr", i1 false, i1 false}
!478 = !{ptr @.str.242, !479, !"<string literal>", i1 false, i1 false}
!479 = !{!"../drivers/net/wireless/realtek/rtw89/pci.c", i32 2518, i32 3}
!480 = !{ptr @.str.243, !479, !"<string literal>", i1 false, i1 false}
!481 = !{ptr @rtw89_pci_request_irq._entry, !479, !"_entry", i1 false, i1 false}
!482 = !{ptr @rtw89_pci_request_irq._entry_ptr, !479, !"_entry_ptr", i1 false, i1 false}
!483 = !{ptr @.str.245, !484, !"<string literal>", i1 false, i1 false}
!484 = !{!"../drivers/net/wireless/realtek/rtw89/pci.c", i32 2527, i32 3}
!485 = !{ptr @rtw89_pci_request_irq._entry.244, !484, !"_entry", i1 false, i1 false}
!486 = !{ptr @rtw89_pci_request_irq._entry_ptr.246, !484, !"_entry_ptr", i1 false, i1 false}
!487 = !{ptr @.str.247, !488, !"<string literal>", i1 false, i1 false}
!488 = !{!"../drivers/net/wireless/realtek/rtw89/pci.c", i32 607, i32 4}
!489 = !{ptr @.str.248, !488, !"<string literal>", i1 false, i1 false}
!490 = !{ptr @rtw89_pci_isr_rxd_unavail._entry, !488, !"_entry", i1 false, i1 false}
!491 = !{ptr @rtw89_pci_isr_rxd_unavail._entry_ptr, !488, !"_entry_ptr", i1 false, i1 false}
!492 = !{ptr @.str.249, !493, !"<string literal>", i1 false, i1 false}
!493 = !{!"../drivers/net/wireless/realtek/rtw89/pci.c", i32 609, i32 3}
!494 = !{i32 1, !"wchar_size", i32 2}
!495 = !{i32 1, !"min_enum_size", i32 4}
!496 = !{i32 8, !"branch-target-enforcement", i32 0}
!497 = !{i32 8, !"sign-return-address", i32 0}
!498 = !{i32 8, !"sign-return-address-all", i32 0}
!499 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!500 = !{i32 7, !"uwtable", i32 1}
!501 = !{i32 7, !"frame-pointer", i32 2}
!502 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!503 = !{!"auto-init"}
!504 = !{i8 0, i8 2}
!505 = !{!"branch_weights", i32 2000, i32 1}
!506 = !{i64 5058445}
!507 = !{i64 2158487576}
!508 = !{i64 5058665}
!509 = !{i64 2158484364}
!510 = !{i64 2158489707}
!511 = !{i64 5058247}
!512 = !{i64 2158487212}
!513 = !{i64 5057827}
!514 = !{i64 2158488198}
!515 = !{i64 2158488820}
!516 = !{i64 2158489037}
!517 = !{i64 5058050}
!518 = !{i64 2158489310}
!519 = !{i64 5057627}
!520 = !{!"branch_weights", i32 1, i32 2000}
!521 = !{i64 2148563650, i64 2148563655, i64 2148563668, i64 2148563712, i64 2148563746, i64 2148563767}
