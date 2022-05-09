; ModuleID = '/llk/IR_all_yes/drivers/staging/rtl8723bs/hal/hal_btcoex.c_pt.bc'
source_filename = "../drivers/staging/rtl8723bs/hal/hal_btcoex.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.btc_coexist = type { i8, ptr, %struct.btc_board_info, %struct.btc_bt_info, %struct.btc_stack_info, %struct.btc_bt_link_info, i32, i8, i8, i8, %struct.btc_statistics, [10 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.btc_board_info = type { i8, i8, i8, i8, i8 }
%struct.btc_bt_info = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i8, i32, i8, i8, i8, i8, i8, i8, i32 }
%struct.btc_stack_info = type { i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.btc_bt_link_info = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.btc_statistics = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.adapter = type { i32, [3 x i32], i32, ptr, %struct.mlme_priv, %struct.mlme_ext_priv, %struct.cmd_priv, %struct.evt_priv, %struct.io_priv, %struct.xmit_priv, %struct.recv_priv, %struct.sta_priv, %struct.security_priv, %struct.spinlock, %struct.registry_priv, %struct.eeprom_priv, ptr, i32, ptr, i32, %struct.hal_ops, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [16 x i8], %struct.rereg_nd_name_data, i32, %struct.net_device_stats, %struct.iw_statistics, ptr, %struct.rtw_wdev_priv, i32, i8, i8, i8, i8, i8, i8, ptr, i8, i8, i8, i8, i8, i8, i8 }
%struct.mlme_priv = type { %struct.spinlock, i32, i8, i8, i8, ptr, i8, i8, i32, i32, [6 x i8], ptr, i8, ptr, %struct.__queue, %struct.__queue, ptr, i32, %struct.ndis_802_11_ssid, [6 x i8], %struct.wlan_network, ptr, i32, %struct.timer_list, i32, i32, %struct.timer_list, i32, %struct.timer_list, %struct.atomic_t, %struct.qos_priv, i32, i32, %struct.ht_priv, %struct.rt_link_detect_t, %struct.timer_list, i8, i8, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, ptr, i32, ptr, i32, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, %struct.spinlock, i8, i8, i32 }
%struct.__queue = type { %struct.list_head, %struct.spinlock }
%struct.list_head = type { ptr, ptr }
%struct.ndis_802_11_ssid = type { i32, [32 x i8] }
%struct.wlan_network = type { %struct.list_head, i32, i32, i32, i32, i32, %struct.wlan_bssid_ex, %struct.wlan_bcn_info }
%struct.wlan_bssid_ex = type { i32, [6 x i8], [2 x i8], %struct.ndis_802_11_ssid, i32, i32, i32, %struct.ndis_802_11_conf, i32, [16 x i8], %struct.wlan_phy_info, i32, [768 x i8] }
%struct.ndis_802_11_conf = type { i32, i32, i32, i32 }
%struct.wlan_phy_info = type { i8, i8, i8, i8 }
%struct.wlan_bcn_info = type { i8, i32, i32, i32, i16, i8 }
%struct.atomic_t = type { i32 }
%struct.qos_priv = type { i32 }
%struct.ht_priv = type { i8, i8, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.ieee80211_ht_cap }
%struct.ieee80211_ht_cap = type <{ i16, i8, %struct.ieee80211_mcs_info, i16, i32, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.rt_link_detect_t = type { i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mlme_ext_priv = type { ptr, i8, %struct.atomic_t, i16, i16, i64, i64, i8, i8, i8, i8, i8, [14 x %struct.rt_channel_info], %struct.p2p_channels, [13 x i8], [13 x i8], [16 x i8], %struct.ss_res, %struct.mlme_ext_info, %struct.timer_list, %struct.timer_list, %struct.timer_list, i16, i32, i8, i8, i32, i64, i8, [9 x i32], [9 x i32], i32, i8, i8, i8, i8, i8, i16, i8 }
%struct.rt_channel_info = type { i8, i32 }
%struct.p2p_channels = type { [10 x %struct.p2p_reg_class], i32 }
%struct.p2p_reg_class = type { i8, [20 x i8], i32 }
%struct.ss_res = type { i32, i32, i32, i32, i8, i8, [9 x %struct.ndis_802_11_ssid], [51 x %struct.rtw_ieee80211_channel] }
%struct.rtw_ieee80211_channel = type { i16, i32 }
%struct.mlme_ext_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [128 x i8], i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.ADDBA_request, %struct.WMM_para_element, %struct.HT_caps_element, %struct.HT_info_element, %struct.wlan_bssid_ex, [32 x %struct.FW_Sta_Info] }
%struct.ADDBA_request = type <{ i8, i16, i16, i16 }>
%struct.WMM_para_element = type { i8, i8, [4 x %struct.AC_param] }
%struct.AC_param = type { i8, i8, i16 }
%struct.HT_caps_element = type { %union.anon.99 }
%union.anon.99 = type { %struct.anon.100 }
%struct.anon.100 = type { i16, i8, [16 x i8], i16, i16, i8 }
%struct.HT_info_element = type { i8, [5 x i8], [16 x i8] }
%struct.FW_Sta_Info = type { ptr, i32, i32, i32, [16 x i8] }
%struct.cmd_priv = type { %struct.completion, %struct.completion, %struct.__queue, i8, ptr, ptr, ptr, ptr, i32, i32, i32, %struct.atomic_t, i8, ptr, %struct.mutex }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.evt_priv = type { %struct.work_struct, i8, ptr, %struct.atomic_t, ptr, ptr, i32, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.io_priv = type { ptr, %struct.intf_hdl }
%struct.intf_hdl = type { ptr, ptr, %struct._io_ops }
%struct._io_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.xmit_priv = type { %struct.spinlock, %struct.completion, %struct.completion, %struct.__queue, %struct.__queue, %struct.__queue, %struct.__queue, %struct.__queue, ptr, ptr, i32, %struct.__queue, ptr, ptr, i32, %struct.__queue, i32, ptr, i8, i8, i8, i64, i64, i64, i64, ptr, i8, [4 x i8], ptr, %struct.completion, %struct.completion, %struct.__queue, %struct.__queue, ptr, ptr, i32, %struct.__queue, ptr, ptr, i32, [2 x %struct.xmit_buf], i16, i32, %struct.mutex, %struct.submit_ctx, i8, %struct.spinlock }
%struct.xmit_buf = type { %struct.list_head, ptr, ptr, ptr, ptr, i16, i16, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i8, i8 }
%struct.submit_ctx = type { i32, i32, i32, %struct.completion }
%struct.recv_priv = type { %struct.spinlock, %struct.__queue, %struct.__queue, %struct.__queue, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, i32, i32, %struct.tasklet_struct, %struct.tasklet_struct, %struct.sk_buff_head, %struct.sk_buff_head, ptr, ptr, %struct.__queue, i32, %struct.__queue, i8, i8, i8, i8, i8, i16, %struct.timer_list, i32, %struct.signal_stat, %struct.signal_stat }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.102, i32 }
%union.anon.102 = type { ptr }
%struct.sk_buff_head = type { %union.anon.64, i32, %struct.spinlock }
%union.anon.64 = type { %struct.anon.65 }
%struct.anon.65 = type { ptr, ptr }
%struct.signal_stat = type { i8, i8, i32, i32 }
%struct.sta_priv = type { ptr, ptr, %struct.__queue, %struct.spinlock, [32 x %struct.list_head], i32, %struct.__queue, %struct.__queue, ptr, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.spinlock, i8, i8, i32, i32, i32, [32 x ptr], i16, i16, i16, %struct.wlan_acl_pool }
%struct.wlan_acl_pool = type { i32, i32, [16 x %struct.rtw_wlan_acl_node], %struct.__queue }
%struct.rtw_wlan_acl_node = type { %struct.list_head, [6 x i8], i8 }
%struct.security_priv = type { i32, i32, i32, [4 x %union.Keytype], [4 x i32], i8, i32, i32, [5 x %union.Keytype], [5 x %union.Keytype], [5 x %union.Keytype], %union.pn48, %union.pn48, i32, [6 x %union.Keytype], %union.pn48, %union.pn48, i32, i32, i32, i32, i32, i32, [512 x i8], i32, %struct.arc4_ctx, %struct.arc4_ctx, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, %struct.wlan_bssid_ex, %struct.ndis_802_11_wep, [600 x i8], [256 x i8], [512 x i8], [256 x i8], [256 x i8], i32, i8, i8, i32, [16 x %struct.rt_pmkid_list], i8, i8 }
%union.Keytype = type { [4 x i32] }
%union.pn48 = type { i64 }
%struct.arc4_ctx = type { [256 x i32], i32, i32 }
%struct.ndis_802_11_wep = type { i32, i32, i32, [16 x i8] }
%struct.rt_pmkid_list = type { i8, [6 x i8], [16 x i8], [33 x i8], ptr, i16 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.registry_priv = type <{ i8, i8, i8, i8, %struct.ndis_802_11_ssid, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.wlan_bssid_ex, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [16 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [3 x i8] }>
%struct.eeprom_priv = type { i8, i8, i8, i8, [6 x i8], i16, i16, [512 x i8], i8, i8, i8, i8, i32, [17 x i8], [50 x i8] }
%struct.hal_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rereg_nd_name_data = type { ptr, [16 x i8], i8 }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.iw_statistics = type { i16, %struct.iw_quality, %struct.iw_discarded, %struct.iw_missed }
%struct.iw_quality = type { i8, i8, i8, i8 }
%struct.iw_discarded = type { i32, i32, i32, i32, i32 }
%struct.iw_missed = type { i32 }
%struct.rtw_wdev_priv = type { ptr, ptr, ptr, %struct.spinlock, ptr, [17 x i8], i8, i8, %struct.rtw_wdev_invit_info, %struct.rtw_wdev_nego_info, i8, i8, i8 }
%struct.rtw_wdev_invit_info = type { i8, [6 x i8], i8, i8, i8, i8, i8, i8 }
%struct.rtw_wdev_nego_info = type { i8, [6 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.hal_com_data = type { %struct.hal_version, i32, i32, i32, i16, i16, i16, i16, i32, i32, i8, i8, i8, i8, i16, i16, i16, i32, i8, i8, i8, i8, i8, i32, i8, [4 x i8], i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, %struct.efuse_hal, [4 x [14 x i8]], [4 x [14 x i8]], [4 x [4 x i8]], [4 x [4 x i8]], [4 x [4 x i8]], [4 x [4 x i8]], i8, i8, i8, i8, i8, [2 x [84 x i8]], [2 x [14 x i8]], [2 x [14 x i8]], [2 x [14 x i8]], [2 x [14 x i8]], [2 x [14 x i8]], [4 x [2 x [3 x [14 x [2 x i8]]]]], [2 x [3 x i8]], [2 x [14 x i8]], [2 x [14 x i8]], i8, i8, i8, i8, i8, i8, i8, [13 x [16 x i32]], i32, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, [4 x %struct.bb_register_def], [2 x i32], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i8, %struct.submit_ctx, i32, i32, i32, [4 x i8], %struct.spinlock, i8, i8, i8, i16, [3 x i32], %struct.dm_priv, %struct.dm_odm_t, %struct.bt_coexist, i32, i32 }
%struct.hal_version = type { i32, i32, i32, i32, i8 }
%struct.efuse_hal = type { i8, i32, [512 x i8], [512 x i8], [512 x i8], i16, i8, [3 x [512 x i8]], [1024 x i8], [1024 x i8], i16, [3 x [512 x i8]], [1024 x i8], [1024 x i8] }
%struct.bb_register_def = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.dm_priv = type { i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, [2 x i8], i8, i8, i8, i8, i8, [2 x [2 x i32]], i8, i8, i8, i8, i8, [16 x i32], [4 x i32], [9 x i32], [9 x i32], [6 x i8], [2 x i8], i8, i8, i8, i8, [2 x i8], [8 x i8], i8, i32, i32, i32, i32, i32, i32, [32 x i8] }
%struct.dm_odm_t = type { ptr, i8, i32, i8, i32, i32, i32, i8, i8, i8, i8, i8, i8, i32, i8, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i64, i64, i64, i64, i8, i8, i8, i8, i8, i32, i8, i32, i8, i64, i64, i32, i8, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, %struct.odm_noise_monitor, [32 x ptr], i8, %struct.odm_phy_dbg_info, ptr, %struct.fat_t, %struct.dig_t, %struct.ps_t, %struct.dynamic_primary_CCA, %struct.rxhp_t, %struct.ra_t, %struct.false_ALARM_STATISTICS, %struct.false_ALARM_STATISTICS, %struct.swat_t, i8, %struct.cfo_tracking, %struct.edca_t, i32, %struct.pathdiv_t, ptr, ptr, ptr, i8, %struct.timer_list, i8, i8, i8, i8, %struct.timer_list, i8, %struct.odm_rate_adaptive, %struct.ant_detected_info, %struct.odm_rf_cal_t, [4 x i8], i8, [4 x i8], i8, i8, i8, i8, i8, i8, i8, [4 x i8], [4 x i8], i8, i8, i8, i8, i8, i8, i8, [4 x i8], %struct.timer_list, %struct.timer_list, %struct.timer_list }
%struct.odm_noise_monitor = type { [4 x i8], i16 }
%struct.odm_phy_dbg_info = type { [4 x i8], i32, i32, i32, i8, [4 x i32] }
%struct.fat_t = type { [6 x i8], i8, i8, i8, i8, [7 x i32], [7 x i32], [7 x i32], i8, i32, [32 x i8], [32 x i8], [32 x i8], [32 x i32], [32 x i32], [32 x i32], [32 x i32], i8, i8, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dig_t = type { i8, i8, i8, i8, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i32, i32, ptr }
%struct.ps_t = type { i8, i8, i8, i8, i32, i8, i32, i32, i32, i32 }
%struct.dynamic_primary_CCA = type { i8, i8, i8, i8, i8, i8, i8 }
%struct.rxhp_t = type { i8, i8, [80 x i8], i8, i8, i8, i8, i8, i8, i8, %struct.timer_list }
%struct.ra_t = type { i8 }
%struct.false_ALARM_STATISTICS = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.swat_t = type { i8, i8, i32, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i8, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i8, i8, i8, %struct.timer_list, %struct.timer_list, i32, i8 }
%struct.cfo_tracking = type { i8, i8, i8, i8, i8, [2 x i32], i32, i32, i32, i8, i8 }
%struct.edca_t = type { i8, i8, i32 }
%struct.pathdiv_t = type { i8, [32 x i8], [32 x i32], [32 x i32], [32 x i32], [32 x i32] }
%struct.odm_rate_adaptive = type { i8, i8, i8, i8, i8, i8, i8 }
%struct.ant_detected_info = type { i8, i32, i32, i32 }
%struct.odm_rf_cal_t = type { i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, [2 x i8], i8, i8, i8, i8, [8 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i32, i8, i8, [4 x i8], [4 x i8], [4 x i8], [4 x i8], i8, [8 x i8], i8, [14 x %struct.iqk_matrix_regs_setting], i8, i8, i8, i8, i8, [30 x i8], [30 x i8], [30 x i8], [30 x i8], [30 x i8], [30 x i8], [30 x i8], [30 x i8], [30 x i8], [30 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, [16 x i32], [4 x i32], [9 x i32], [9 x i32], [2 x [3 x [2 x i32]]], [2 x [2 x [2 x i32]]], [2 x [2 x i32]], i8, i8, i8, i8, i8, i8, [2 x i32] }
%struct.iqk_matrix_regs_setting = type { i8, [3 x [8 x i32]], [3 x i8] }
%struct.bt_coexist = type { i8, i8, i8, i8 }
%struct.dvobj_priv = type { ptr, i32, %struct.debug_priv, %struct.spinlock, [32 x i32], %struct.mutex, %struct.mutex, %struct.mutex, %struct.mutex, i8, i8, i8, i32, ptr, %struct.cam_ctl_t, [32 x %struct.cam_entry_cache], [2 x i32], [4 x i32], [8 x i8], i8, %struct.atomic_t, %struct.atomic_t, %struct.pwrctrl_priv, %struct.rtw_traffic_statistics, %struct.sdio_data }
%struct.debug_priv = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.cam_ctl_t = type { %struct.spinlock, i64 }
%struct.cam_entry_cache = type { i16, [6 x i8], [16 x i8] }
%struct.pwrctrl_priv = type { %struct.mutex, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.work_struct, i8, %struct.work_struct, %struct.timer_list, i8, i8, i8, i8, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i32, i8, i8, i8, i8, i8, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.timer_list, ptr, i32, i8, i32, i32, i32, i8, i8, i8, i8, [4 x i32] }
%struct.rtw_traffic_statistics = type { i64, i64, i64, i64, i64, i32, i64, i64, i64, i64, i64, i32 }
%struct.sdio_data = type { i8, i8, i8, i32, ptr, ptr }

@GLBtCoexist = dso_local global { %struct.btc_coexist, [60 x i8] } zeroinitializer, align 32
@GLBtcWiFiInScanState = internal global { i1, [31 x i8] } zeroinitializer, align 32
@GLBtcWiFiInIQKState = internal global { i8, [31 x i8] } zeroinitializer, align 32
@halbtcoutsrc_GetWifiScanAPNum.scan_AP_num = internal global { i8, [31 x i8] } zeroinitializer, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@__sancov_gen_cov_switch_values = internal global [28 x i64] [i64 26, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23, i64 24, i64 25]
@__sancov_gen_cov_switch_values.1 = internal global [21 x i64] [i64 19, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 17, i64 18, i64 19]
@__sancov_gen_cov_switch_values.2 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.3 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.4 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.5 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.6 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.7 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.8 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.9 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.10 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.11 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.12 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.13 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.14 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.15 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.16 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.17 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.18 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.19 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.20 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.21 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.22 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.23 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.24 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.25 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.26 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.27 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.28 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@___asan_gen_.29 = private unnamed_addr constant [12 x i8] c"GLBtCoexist\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 15, i32 20 }
@___asan_gen_.32 = private unnamed_addr constant [21 x i8] c"GLBtcWiFiInScanState\00", align 1
@___asan_gen_.33 = private unnamed_addr constant [20 x i8] c"GLBtcWiFiInIQKState\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 17, i32 11 }
@___asan_gen_.36 = private unnamed_addr constant [12 x i8] c"scan_AP_num\00", align 1
@___asan_gen_.37 = private constant [46 x i8] c"../drivers/staging/rtl8723bs/hal/hal_btcoex.c\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 249, i32 12 }
@llvm.compiler.used = appending global [4 x ptr] [ptr @GLBtCoexist, ptr @GLBtcWiFiInScanState, ptr @GLBtcWiFiInIQKState, ptr @halbtcoutsrc_GetWifiScanAPNum.scan_AP_num], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @GLBtCoexist to i32), i32 228, i32 288, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @GLBtcWiFiInScanState to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @GLBtcWiFiInIQKState to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @halbtcoutsrc_GetWifiScanAPNum.scan_AP_num to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @hal_btcoex_Initialize(ptr noundef %padapter) local_unnamed_addr #0 align 64 {
EXhalbtcoutsrc_BindBtCoexWithAdapter.exit:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr @GLBtCoexist, i32 0, i32 228)
  store i32 3, ptr getelementptr inbounds (%struct.btc_coexist, ptr @GLBtCoexist, i32 0, i32 6), align 4
  store i8 1, ptr @GLBtCoexist, align 4
  %1 = load i32, ptr getelementptr inbounds (%struct.btc_coexist, ptr @GLBtCoexist, i32 0, i32 10), align 4
  %inc.i = add i32 %1, 1
  store i32 %inc.i, ptr getelementptr inbounds (%struct.btc_coexist, ptr @GLBtCoexist, i32 0, i32 10), align 4
  store ptr %padapter, ptr getelementptr inbounds (%struct.btc_coexist, ptr @GLBtCoexist, i32 0, i32 1), align 4
  store i8 0, ptr getelementptr inbounds (%struct.btc_coexist, ptr @GLBtCoexist, i32 0, i32 3, i32 4), align 4
  store i8 5, ptr getelementptr inbounds (%struct.btc_coexist, ptr @GLBtCoexist, i32 0, i32 3, i32 9), align 1
  store i8 1, ptr getelementptr inbounds (%struct.btc_coexist, ptr @GLBtCoexist, i32 0, i32 2, i32 3), align 1
  store ptr @halbtcoutsrc_Read1Byte, ptr getelementptr inbounds (%struct.btc_coexist, ptr @GLBtCoexist, i32 0, i32 12), align 4
  store ptr @halbtcoutsrc_Write1Byte, ptr getelementptr inbounds (%struct.btc_coexist, ptr @GLBtCoexist, i32 0, i32 13), align 4
  store ptr @halbtcoutsrc_BitMaskWrite1Byte, ptr getelementptr inbounds (%struct.btc_coexist, ptr @GLBtCoexist, i32 0, i32 14), align 4
  store ptr @halbtcoutsrc_Read2Byte, ptr getelementptr inbounds (%struct.btc_coexist, ptr @GLBtCoexist, i32 0, i32 15), align 4
  store ptr @halbtcoutsrc_Write2Byte, ptr getelementptr inbounds (%struct.btc_coexist, ptr @GLBtCoexist, i32 0, i32 16), align 4
  store ptr @halbtcoutsrc_Read4Byte, ptr getelementptr inbounds (%struct.btc_coexist, ptr @GLBtCoexist, i32 0, i32 17), align 4
  store ptr @halbtcoutsrc_Write4Byte, ptr getelementptr inbounds (%struct.btc_coexist, ptr @GLBtCoexist, i32 0, i32 18), align 4
  store ptr @halbtcoutsrc_WriteLocalReg1Byte, ptr getelementptr inbounds (%struct.btc_coexist, ptr @GLBtCoexist, i32 0, i32 19), align 4
  store ptr @halbtcoutsrc_SetBbReg, ptr getelementptr inbounds (%struct.btc_coexist, ptr @GLBtCoexist, i32 0, i32 20), align 4
  store ptr @halbtcoutsrc_GetBbReg, ptr getelementptr inbounds (%struct.btc_coexist, ptr @GLBtCoexist, i32 0, i32 21), align 4
  store ptr @halbtcoutsrc_SetRfReg, ptr getelementptr inbounds (%struct.btc_coexist, ptr @GLBtCoexist, i32 0, i32 22), align 4
  store ptr @halbtcoutsrc_GetRfReg, ptr getelementptr inbounds (%struct.btc_coexist, ptr @GLBtCoexist, i32 0, i32 23), align 4
  store ptr @halbtcoutsrc_FillH2cCmd, ptr getelementptr inbounds (%struct.btc_coexist, ptr @GLBtCoexist, i32 0, i32 24), align 4
  store ptr @halbtcoutsrc_Get, ptr getelementptr inbounds (%struct.btc_coexist, ptr @GLBtCoexist, i32 0, i32 25), align 4
  store ptr @halbtcoutsrc_Set, ptr getelementptr inbounds (%struct.btc_coexist, ptr @GLBtCoexist, i32 0, i32 26), align 4
  store ptr @halbtcoutsrc_GetBtReg, ptr getelementptr inbounds (%struct.btc_coexist, ptr @GLBtCoexist, i32 0, i32 27), align 4
  store ptr @halbtcoutsrc_SetBtReg, ptr getelementptr inbounds (%struct.btc_coexist, ptr @GLBtCoexist, i32 0, i32 28), align 4
  store i1 false, ptr @GLBtcWiFiInScanState, align 1
  store i8 0, ptr @GLBtcWiFiInIQKState, align 1
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @halbtcoutsrc_Read1Byte(ptr nocapture noundef readonly %pBtcContext, i32 noundef %RegAddr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %Adapter = getelementptr inbounds %struct.btc_coexist, ptr %pBtcContext, i32 0, i32 1
  %0 = ptrtoint ptr %Adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %Adapter, align 4
  %call = tail call zeroext i8 @rtw_read8(ptr noundef %1, i32 noundef %RegAddr) #9
  ret i8 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @halbtcoutsrc_Write1Byte(ptr nocapture noundef readonly %pBtcContext, i32 noundef %RegAddr, i8 noundef zeroext %Data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %Adapter = getelementptr inbounds %struct.btc_coexist, ptr %pBtcContext, i32 0, i32 1
  %0 = ptrtoint ptr %Adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %Adapter, align 4
  %call = tail call i32 @rtw_write8(ptr noundef %1, i32 noundef %RegAddr, i8 noundef zeroext %Data) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @halbtcoutsrc_BitMaskWrite1Byte(ptr nocapture noundef readonly %pBtcContext, i32 noundef %regAddr, i8 noundef zeroext %bitMask, i8 noundef zeroext %data1b) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %Adapter = getelementptr inbounds %struct.btc_coexist, ptr %pBtcContext, i32 0, i32 1
  %0 = ptrtoint ptr %Adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %Adapter, align 4
  %conv = zext i8 %bitMask to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bitMask)
  %cmp.not = icmp eq i8 %bitMask, -1
  br i1 %cmp.not, label %entry.if.end16_crit_edge, label %if.then

entry.if.end16_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

if.then:                                          ; preds = %entry
  %call = tail call zeroext i8 @rtw_read8(ptr noundef %1, i32 noundef %regAddr) #9
  %2 = and i32 %conv, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %for.cond, label %if.then.for.end_crit_edge

if.then.for.end_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.cond:                                         ; preds = %if.then
  %3 = and i32 %conv, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.1 = icmp eq i32 %3, 0
  br i1 %tobool.not.1, label %for.cond.1, label %for.cond.for.end_crit_edge

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.cond.1:                                       ; preds = %for.cond
  %4 = and i32 %conv, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.2 = icmp eq i32 %4, 0
  br i1 %tobool.not.2, label %for.cond.2, label %for.cond.1.for.end_crit_edge

for.cond.1.for.end_crit_edge:                     ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.cond.2:                                       ; preds = %for.cond.1
  %5 = and i32 %conv, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.3 = icmp eq i32 %5, 0
  br i1 %tobool.not.3, label %for.cond.3, label %for.cond.2.for.end_crit_edge

for.cond.2.for.end_crit_edge:                     ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.cond.3:                                       ; preds = %for.cond.2
  %6 = and i32 %conv, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.4 = icmp eq i32 %6, 0
  br i1 %tobool.not.4, label %for.cond.4, label %for.cond.3.for.end_crit_edge

for.cond.3.for.end_crit_edge:                     ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.cond.4:                                       ; preds = %for.cond.3
  %7 = and i32 %conv, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.5 = icmp eq i32 %7, 0
  br i1 %tobool.not.5, label %for.cond.5, label %for.cond.4.for.end_crit_edge

for.cond.4.for.end_crit_edge:                     ; preds = %for.cond.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.cond.5:                                       ; preds = %for.cond.4
  %8 = and i32 %conv, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.6 = icmp eq i32 %8, 0
  br i1 %tobool.not.6, label %for.cond.6, label %for.cond.5.for.end_crit_edge

for.cond.5.for.end_crit_edge:                     ; preds = %for.cond.5
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.cond.6:                                       ; preds = %for.cond.5
  call void @__sanitizer_cov_trace_pc() #11
  %9 = and i32 %conv, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.7 = icmp eq i32 %9, 0
  %spec.select = select i1 %tobool.not.7, i32 8, i32 7
  br label %for.end

for.end:                                          ; preds = %for.cond.6, %for.cond.5.for.end_crit_edge, %for.cond.4.for.end_crit_edge, %for.cond.3.for.end_crit_edge, %for.cond.2.for.end_crit_edge, %for.cond.1.for.end_crit_edge, %for.cond.for.end_crit_edge, %if.then.for.end_crit_edge
  %conv2.lcssa = phi i32 [ 0, %if.then.for.end_crit_edge ], [ 1, %for.cond.for.end_crit_edge ], [ 2, %for.cond.1.for.end_crit_edge ], [ 3, %for.cond.2.for.end_crit_edge ], [ 4, %for.cond.3.for.end_crit_edge ], [ 5, %for.cond.4.for.end_crit_edge ], [ 6, %for.cond.5.for.end_crit_edge ], [ %spec.select, %for.cond.6 ]
  %conv8 = zext i8 %call to i32
  %neg = xor i32 %conv, -1
  %and10 = and i32 %conv8, %neg
  %conv11 = zext i8 %data1b to i32
  %shl = shl nuw nsw i32 %conv11, %conv2.lcssa
  %and14 = and i32 %shl, %conv
  %or = or i32 %and14, %and10
  %conv15 = trunc i32 %or to i8
  br label %if.end16

if.end16:                                         ; preds = %for.end, %entry.if.end16_crit_edge
  %data1b.addr.0 = phi i8 [ %conv15, %for.end ], [ %data1b, %entry.if.end16_crit_edge ]
  %call17 = tail call i32 @rtw_write8(ptr noundef %1, i32 noundef %regAddr, i8 noundef zeroext %data1b.addr.0) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i16 @halbtcoutsrc_Read2Byte(ptr nocapture noundef readonly %pBtcContext, i32 noundef %RegAddr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %Adapter = getelementptr inbounds %struct.btc_coexist, ptr %pBtcContext, i32 0, i32 1
  %0 = ptrtoint ptr %Adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %Adapter, align 4
  %call = tail call zeroext i16 @rtw_read16(ptr noundef %1, i32 noundef %RegAddr) #9
  ret i16 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @halbtcoutsrc_Write2Byte(ptr nocapture noundef readonly %pBtcContext, i32 noundef %RegAddr, i16 noundef zeroext %Data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %Adapter = getelementptr inbounds %struct.btc_coexist, ptr %pBtcContext, i32 0, i32 1
  %0 = ptrtoint ptr %Adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %Adapter, align 4
  %call = tail call i32 @rtw_write16(ptr noundef %1, i32 noundef %RegAddr, i16 noundef zeroext %Data) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @halbtcoutsrc_Read4Byte(ptr nocapture noundef readonly %pBtcContext, i32 noundef %RegAddr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %Adapter = getelementptr inbounds %struct.btc_coexist, ptr %pBtcContext, i32 0, i32 1
  %0 = ptrtoint ptr %Adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %Adapter, align 4
  %call = tail call i32 @rtw_read32(ptr noundef %1, i32 noundef %RegAddr) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @halbtcoutsrc_Write4Byte(ptr nocapture noundef readonly %pBtcContext, i32 noundef %RegAddr, i32 noundef %Data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %Adapter = getelementptr inbounds %struct.btc_coexist, ptr %pBtcContext, i32 0, i32 1
  %0 = ptrtoint ptr %Adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %Adapter, align 4
  %call = tail call i32 @rtw_write32(ptr noundef %1, i32 noundef %RegAddr, i32 noundef %Data) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @halbtcoutsrc_WriteLocalReg1Byte(ptr nocapture noundef readonly %pBtcContext, i32 noundef %RegAddr, i8 noundef zeroext %Data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %Adapter1 = getelementptr inbounds %struct.btc_coexist, ptr %pBtcContext, i32 0, i32 1
  %0 = ptrtoint ptr %Adapter1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %Adapter1, align 4
  %chipInterface = getelementptr inbounds %struct.btc_coexist, ptr %pBtcContext, i32 0, i32 6
  %2 = ptrtoint ptr %chipInterface to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %chipInterface, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %cmp = icmp eq i32 %3, 3
  %or = or i32 %RegAddr, 270860288
  %RegAddr.sink = select i1 %cmp, i32 %or, i32 %RegAddr
  %call2 = tail call i32 @rtw_write8(ptr noundef %1, i32 noundef %RegAddr.sink, i8 noundef zeroext %Data) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @halbtcoutsrc_SetBbReg(ptr nocapture noundef readonly %pBtcContext, i32 noundef %RegAddr, i32 noundef %BitMask, i32 noundef %Data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %Adapter = getelementptr inbounds %struct.btc_coexist, ptr %pBtcContext, i32 0, i32 1
  %0 = ptrtoint ptr %Adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %Adapter, align 4
  tail call void @rtw_hal_write_bbreg(ptr noundef %1, i32 noundef %RegAddr, i32 noundef %BitMask, i32 noundef %Data) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @halbtcoutsrc_GetBbReg(ptr nocapture noundef readonly %pBtcContext, i32 noundef %RegAddr, i32 noundef %BitMask) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %Adapter = getelementptr inbounds %struct.btc_coexist, ptr %pBtcContext, i32 0, i32 1
  %0 = ptrtoint ptr %Adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %Adapter, align 4
  %call = tail call i32 @rtw_hal_read_bbreg(ptr noundef %1, i32 noundef %RegAddr, i32 noundef %BitMask) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @halbtcoutsrc_SetRfReg(ptr nocapture noundef readonly %pBtcContext, i8 noundef zeroext %eRFPath, i32 noundef %RegAddr, i32 noundef %BitMask, i32 noundef %Data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %Adapter = getelementptr inbounds %struct.btc_coexist, ptr %pBtcContext, i32 0, i32 1
  %0 = ptrtoint ptr %Adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %Adapter, align 4
  %conv = zext i8 %eRFPath to i32
  tail call void @rtw_hal_write_rfreg(ptr noundef %1, i32 noundef %conv, i32 noundef %RegAddr, i32 noundef %BitMask, i32 noundef %Data) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @halbtcoutsrc_GetRfReg(ptr nocapture noundef readonly %pBtcContext, i8 noundef zeroext %eRFPath, i32 noundef %RegAddr, i32 noundef %BitMask) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %Adapter = getelementptr inbounds %struct.btc_coexist, ptr %pBtcContext, i32 0, i32 1
  %0 = ptrtoint ptr %Adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %Adapter, align 4
  %conv = zext i8 %eRFPath to i32
  %call = tail call i32 @rtw_hal_read_rfreg(ptr noundef %1, i32 noundef %conv, i32 noundef %RegAddr, i32 noundef %BitMask) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @halbtcoutsrc_FillH2cCmd(ptr nocapture noundef readonly %pBtcContext, i8 noundef zeroext %elementId, i32 noundef %cmdLen, ptr noundef %pCmdBuffer) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %Adapter = getelementptr inbounds %struct.btc_coexist, ptr %pBtcContext, i32 0, i32 1
  %0 = ptrtoint ptr %Adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %Adapter, align 4
  %call = tail call i32 @rtw_hal_fill_h2c_cmd(ptr noundef %1, i8 noundef zeroext %elementId, i32 noundef %cmdLen, ptr noundef %pCmdBuffer) #9
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i8 @halbtcoutsrc_Get(ptr nocapture noundef readonly %pBtcContext, i8 noundef zeroext %getType, ptr noundef writeonly %pOutBuf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pBtcContext to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pBtcContext, align 4, !range !17
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i = icmp eq i8 %1, 0
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %halbtcoutsrc_IsBtCoexistAvailable.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

halbtcoutsrc_IsBtCoexistAvailable.exit:           ; preds = %entry
  %Adapter.i = getelementptr inbounds %struct.btc_coexist, ptr %pBtcContext, i32 0, i32 1
  %2 = ptrtoint ptr %Adapter.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %Adapter.i, align 4
  %tobool1.not.i.not = icmp eq ptr %3, null
  br i1 %tobool1.not.i.not, label %halbtcoutsrc_IsBtCoexistAvailable.exit.cleanup_crit_edge, label %if.end

halbtcoutsrc_IsBtCoexistAvailable.exit.cleanup_crit_edge: ; preds = %halbtcoutsrc_IsBtCoexistAvailable.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %halbtcoutsrc_IsBtCoexistAvailable.exit
  %4 = ptrtoint ptr %Adapter.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %Adapter.i, align 4
  %HalData = getelementptr inbounds %struct.adapter, ptr %5, i32 0, i32 18
  %6 = ptrtoint ptr %HalData to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %HalData, align 8
  %8 = zext i8 %getType to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i8 %getType, label %if.end.cleanup_crit_edge [
    i8 0, label %sw.bb
    i8 1, label %sw.bb1
    i8 2, label %sw.bb2
    i8 3, label %sw.bb5
    i8 4, label %sw.bb7
    i8 5, label %sw.bb8
    i8 6, label %sw.bb12
    i8 7, label %sw.bb16
    i8 8, label %sw.bb17
    i8 9, label %sw.bb21
    i8 10, label %sw.bb24
    i8 12, label %sw.bb30
    i8 11, label %sw.bb31
    i8 13, label %sw.bb32
    i8 14, label %sw.bb34
    i8 15, label %sw.bb35
    i8 16, label %sw.bb50
    i8 17, label %sw.bb57
    i8 18, label %sw.bb60
    i8 19, label %sw.bb62
    i8 20, label %sw.bb64
    i8 21, label %sw.bb66
    i8 22, label %sw.bb67
    i8 23, label %sw.bb68
    i8 24, label %sw.bb69
    i8 25, label %sw.bb71
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %pOutBuf to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %pOutBuf, align 1
  br label %cleanup

sw.bb1:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %pOutBuf to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %pOutBuf, align 1
  br label %cleanup

sw.bb2:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %fw_state.i = getelementptr inbounds %struct.adapter, ptr %5, i32 0, i32 4, i32 1
  %11 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %fw_state.i, align 4
  %13 = trunc i32 %12 to i8
  %14 = and i8 %13, 1
  %15 = ptrtoint ptr %pOutBuf to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %14, ptr %pOutBuf, align 1
  br label %cleanup

sw.bb5:                                           ; preds = %if.end
  %fw_state.i.i = getelementptr inbounds %struct.adapter, ptr %5, i32 0, i32 4, i32 1
  %16 = ptrtoint ptr %fw_state.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %fw_state.i.i, align 4
  %and.i.i = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.not.i, label %sw.bb5.if.end6.i_crit_edge, label %if.then.i

sw.bb5.if.end6.i_crit_edge:                       ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6.i

if.then.i:                                        ; preds = %sw.bb5
  %and.i10.i = and i32 %17, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i10.i)
  %tobool.not.i11.not.i = icmp eq i32 %and.i10.i, 0
  br i1 %tobool.not.i11.not.i, label %if.end.i, label %if.then.i.halbtcoutsrc_IsWifiBusy.exit_crit_edge

if.then.i.halbtcoutsrc_IsWifiBusy.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %halbtcoutsrc_IsWifiBusy.exit

if.end.i:                                         ; preds = %if.then.i
  %bBusyTraffic.i = getelementptr inbounds %struct.adapter, ptr %5, i32 0, i32 4, i32 34, i32 3
  %18 = ptrtoint ptr %bBusyTraffic.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %bBusyTraffic.i, align 4, !range !17
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool.not.i131 = icmp eq i8 %19, 0
  br i1 %tobool.not.i131, label %if.end.i.if.end6.i_crit_edge, label %if.end.i.halbtcoutsrc_IsWifiBusy.exit_crit_edge

if.end.i.halbtcoutsrc_IsWifiBusy.exit_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %halbtcoutsrc_IsWifiBusy.exit

if.end.i.if.end6.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.end.i.if.end6.i_crit_edge, %sw.bb5.if.end6.i_crit_edge
  br label %halbtcoutsrc_IsWifiBusy.exit

halbtcoutsrc_IsWifiBusy.exit:                     ; preds = %if.end6.i, %if.end.i.halbtcoutsrc_IsWifiBusy.exit_crit_edge, %if.then.i.halbtcoutsrc_IsWifiBusy.exit_crit_edge
  %retval.0.i132 = phi i8 [ 0, %if.end6.i ], [ 1, %if.then.i.halbtcoutsrc_IsWifiBusy.exit_crit_edge ], [ 1, %if.end.i.halbtcoutsrc_IsWifiBusy.exit_crit_edge ]
  %20 = ptrtoint ptr %pOutBuf to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %retval.0.i132, ptr %pOutBuf, align 1
  br label %cleanup

sw.bb7:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %.b = load i1, ptr @GLBtcWiFiInScanState, align 1
  %21 = zext i1 %.b to i8
  %22 = ptrtoint ptr %pOutBuf to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %21, ptr %pOutBuf, align 1
  br label %cleanup

sw.bb8:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %fw_state.i133 = getelementptr inbounds %struct.adapter, ptr %5, i32 0, i32 4, i32 1
  %23 = ptrtoint ptr %fw_state.i133 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %fw_state.i133, align 4
  %25 = trunc i32 %24 to i8
  %26 = lshr i8 %25, 7
  %27 = ptrtoint ptr %pOutBuf to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %26, ptr %pOutBuf, align 1
  br label %cleanup

sw.bb12:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %fw_state.i137 = getelementptr inbounds %struct.adapter, ptr %5, i32 0, i32 4, i32 1
  %28 = ptrtoint ptr %fw_state.i137 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %fw_state.i137, align 4
  %30 = trunc i32 %29 to i8
  %31 = lshr i8 %30, 7
  %32 = ptrtoint ptr %pOutBuf to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %31, ptr %pOutBuf, align 1
  br label %cleanup

sw.bb16:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %33 = ptrtoint ptr %pOutBuf to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 0, ptr %pOutBuf, align 1
  br label %cleanup

sw.bb17:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %fw_state.i141 = getelementptr inbounds %struct.adapter, ptr %5, i32 0, i32 4, i32 1
  %34 = ptrtoint ptr %fw_state.i141 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %fw_state.i141, align 4
  %36 = trunc i32 %35 to i8
  %37 = lshr i8 %36, 4
  %38 = and i8 %37, 1
  %39 = ptrtoint ptr %pOutBuf to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %38, ptr %pOutBuf, align 1
  br label %cleanup

sw.bb21:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %dot11PrivacyAlgrthm = getelementptr inbounds %struct.adapter, ptr %5, i32 0, i32 12, i32 1
  %40 = ptrtoint ptr %dot11PrivacyAlgrthm to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %dot11PrivacyAlgrthm, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %cmp = icmp ne i32 %41, 0
  %conv23 = zext i1 %cmp to i8
  %42 = ptrtoint ptr %pOutBuf to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %conv23, ptr %pOutBuf, align 1
  br label %cleanup

sw.bb24:                                          ; preds = %if.end
  %cur_wireless_mode = getelementptr inbounds %struct.adapter, ptr %5, i32 0, i32 5, i32 10
  %43 = ptrtoint ptr %cur_wireless_mode to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %cur_wireless_mode, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %44)
  %cmp26 = icmp eq i8 %44, 1
  br i1 %cmp26, label %if.then28, label %if.else

if.then28:                                        ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_pc() #11
  %45 = ptrtoint ptr %pOutBuf to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 1, ptr %pOutBuf, align 1
  br label %cleanup

if.else:                                          ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_pc() #11
  %46 = ptrtoint ptr %pOutBuf to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 0, ptr %pOutBuf, align 1
  br label %cleanup

sw.bb30:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %47 = ptrtoint ptr %pOutBuf to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 0, ptr %pOutBuf, align 1
  br label %cleanup

sw.bb31:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %48 = ptrtoint ptr %pOutBuf to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 0, ptr %pOutBuf, align 1
  br label %cleanup

sw.bb32:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %EntryMinUndecoratedSmoothedPWDB.i = getelementptr inbounds %struct.hal_com_data, ptr %7, i32 0, i32 140, i32 6
  %49 = ptrtoint ptr %EntryMinUndecoratedSmoothedPWDB.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %EntryMinUndecoratedSmoothedPWDB.i, align 8
  %51 = ptrtoint ptr %pOutBuf to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %pOutBuf, align 4
  br label %cleanup

sw.bb34:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %52 = ptrtoint ptr %pOutBuf to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 0, ptr %pOutBuf, align 4
  br label %cleanup

sw.bb35:                                          ; preds = %if.end
  %cur_wireless_mode36 = getelementptr inbounds %struct.adapter, ptr %5, i32 0, i32 5, i32 10
  %53 = ptrtoint ptr %cur_wireless_mode36 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %cur_wireless_mode36, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %54)
  %55 = icmp ult i8 %54, 4
  br i1 %55, label %if.then42, label %if.else43

if.then42:                                        ; preds = %sw.bb35
  call void @__sanitizer_cov_trace_pc() #11
  %56 = ptrtoint ptr %pOutBuf to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 0, ptr %pOutBuf, align 4
  br label %cleanup

if.else43:                                        ; preds = %sw.bb35
  %CurrentChannelBW = getelementptr inbounds %struct.hal_com_data, ptr %7, i32 0, i32 9
  %57 = ptrtoint ptr %CurrentChannelBW to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %CurrentChannelBW, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %cmp44 = icmp eq i32 %58, 0
  br i1 %cmp44, label %if.then46, label %if.else47

if.then46:                                        ; preds = %if.else43
  call void @__sanitizer_cov_trace_pc() #11
  %59 = ptrtoint ptr %pOutBuf to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 1, ptr %pOutBuf, align 4
  br label %cleanup

if.else47:                                        ; preds = %if.else43
  call void @__sanitizer_cov_trace_pc() #11
  %60 = ptrtoint ptr %pOutBuf to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 2, ptr %pOutBuf, align 4
  br label %cleanup

sw.bb50:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %LinkDetectInfo = getelementptr inbounds %struct.adapter, ptr %5, i32 0, i32 4, i32 34
  %61 = ptrtoint ptr %LinkDetectInfo to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %LinkDetectInfo, align 4
  %NumRxOkInPeriod = getelementptr inbounds %struct.adapter, ptr %5, i32 0, i32 4, i32 34, i32 1
  %63 = ptrtoint ptr %NumRxOkInPeriod to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %NumRxOkInPeriod, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %62, i32 %64)
  %cmp52 = icmp ule i32 %62, %64
  %. = zext i1 %cmp52 to i32
  %65 = ptrtoint ptr %pOutBuf to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %., ptr %pOutBuf, align 4
  br label %cleanup

sw.bb57:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %FirmwareVersion = getelementptr inbounds %struct.hal_com_data, ptr %7, i32 0, i32 4
  %66 = ptrtoint ptr %FirmwareVersion to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %FirmwareVersion, align 8
  %conv58 = zext i16 %67 to i32
  %shl = shl nuw i32 %conv58, 16
  %68 = ptrtoint ptr %pOutBuf to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %shl, ptr %pOutBuf, align 4
  %FirmwareSubVersion = getelementptr inbounds %struct.hal_com_data, ptr %7, i32 0, i32 6
  %69 = ptrtoint ptr %FirmwareSubVersion to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %FirmwareSubVersion, align 4
  %conv59 = zext i16 %70 to i32
  %or = or i32 %shl, %conv59
  store i32 %or, ptr %pOutBuf, align 4
  br label %cleanup

sw.bb60:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %fw_state.i.i.i = getelementptr inbounds %struct.adapter, ptr %5, i32 0, i32 4, i32 1
  %71 = ptrtoint ptr %fw_state.i.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %fw_state.i.i.i, align 4
  %and.i.i.i = and i32 %72, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  %and.i22.i.i = and i32 %72, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i22.i.i)
  %tobool.not.i23.not.i.i = icmp eq i32 %and.i22.i.i, 0
  %spec.select.i.i = select i1 %tobool.not.i23.not.i.i, i32 1, i32 2
  %spec.select.i146 = select i1 %tobool.not.i.not.i.i, i32 0, i32 %spec.select.i.i
  %73 = shl nuw nsw i32 %and.i.i.i, 16
  %or1.i = or i32 %spec.select.i146, %73
  %74 = ptrtoint ptr %pOutBuf to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %or1.i, ptr %pOutBuf, align 4
  br label %cleanup

sw.bb62:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %btRealFwVer.i = getelementptr inbounds %struct.btc_coexist, ptr %pBtcContext, i32 0, i32 3, i32 13
  %75 = ptrtoint ptr %btRealFwVer.i to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %btRealFwVer.i, align 2
  %conv.i = zext i16 %76 to i32
  %77 = ptrtoint ptr %pOutBuf to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %conv.i, ptr %pOutBuf, align 4
  br label %cleanup

sw.bb64:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %cur_channel = getelementptr inbounds %struct.adapter, ptr %5, i32 0, i32 5, i32 7
  %78 = ptrtoint ptr %cur_channel to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %cur_channel, align 8
  %80 = ptrtoint ptr %pOutBuf to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 %79, ptr %pOutBuf, align 1
  br label %cleanup

sw.bb66:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %CurrentChannel = getelementptr inbounds %struct.hal_com_data, ptr %7, i32 0, i32 10
  %81 = ptrtoint ptr %CurrentChannel to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %CurrentChannel, align 8
  %83 = ptrtoint ptr %pOutBuf to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 %82, ptr %pOutBuf, align 1
  br label %cleanup

sw.bb67:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %84 = ptrtoint ptr %pOutBuf to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 0, ptr %pOutBuf, align 1
  br label %cleanup

sw.bb68:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %85 = ptrtoint ptr %pOutBuf to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 0, ptr %pOutBuf, align 1
  br label %cleanup

sw.bb69:                                          ; preds = %if.end
  %.b.i = load i1, ptr @GLBtcWiFiInScanState, align 1
  br i1 %.b.i, label %sw.bb69.halbtcoutsrc_GetWifiScanAPNum.exit_crit_edge, label %if.then.i147

sw.bb69.halbtcoutsrc_GetWifiScanAPNum.exit_crit_edge: ; preds = %sw.bb69
  call void @__sanitizer_cov_trace_pc() #11
  br label %halbtcoutsrc_GetWifiScanAPNum.exit

if.then.i147:                                     ; preds = %sw.bb69
  call void @__sanitizer_cov_trace_pc() #11
  %bss_cnt.i = getelementptr inbounds %struct.adapter, ptr %5, i32 0, i32 5, i32 17, i32 1
  %86 = ptrtoint ptr %bss_cnt.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %bss_cnt.i, align 4
  %88 = tail call i32 @llvm.smin.i32(i32 %87, i32 255) #9
  %89 = trunc i32 %88 to i8
  store i8 %89, ptr @halbtcoutsrc_GetWifiScanAPNum.scan_AP_num, align 1
  br label %halbtcoutsrc_GetWifiScanAPNum.exit

halbtcoutsrc_GetWifiScanAPNum.exit:               ; preds = %if.then.i147, %sw.bb69.halbtcoutsrc_GetWifiScanAPNum.exit_crit_edge
  %90 = load i8, ptr @halbtcoutsrc_GetWifiScanAPNum.scan_AP_num, align 1
  %91 = ptrtoint ptr %pOutBuf to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 %90, ptr %pOutBuf, align 1
  br label %cleanup

sw.bb71:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %dvobj = getelementptr inbounds %struct.adapter, ptr %5, i32 0, i32 3
  %92 = ptrtoint ptr %dvobj to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %dvobj, align 4
  %pwr_mode = getelementptr inbounds %struct.dvobj_priv, ptr %93, i32 0, i32 22, i32 5
  %94 = ptrtoint ptr %pwr_mode to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %pwr_mode, align 4
  %96 = ptrtoint ptr %pOutBuf to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 %95, ptr %pOutBuf, align 1
  br label %cleanup

cleanup:                                          ; preds = %sw.bb71, %halbtcoutsrc_GetWifiScanAPNum.exit, %sw.bb68, %sw.bb67, %sw.bb66, %sw.bb64, %sw.bb62, %sw.bb60, %sw.bb57, %sw.bb50, %if.else47, %if.then46, %if.then42, %sw.bb34, %sw.bb32, %sw.bb31, %sw.bb30, %if.else, %if.then28, %sw.bb21, %sw.bb17, %sw.bb16, %sw.bb12, %sw.bb8, %sw.bb7, %halbtcoutsrc_IsWifiBusy.exit, %sw.bb2, %sw.bb1, %sw.bb, %if.end.cleanup_crit_edge, %halbtcoutsrc_IsBtCoexistAvailable.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i8 [ 0, %halbtcoutsrc_IsBtCoexistAvailable.exit.cleanup_crit_edge ], [ 1, %sw.bb71 ], [ 1, %halbtcoutsrc_GetWifiScanAPNum.exit ], [ 1, %sw.bb68 ], [ 0, %sw.bb67 ], [ 1, %sw.bb66 ], [ 1, %sw.bb64 ], [ 1, %sw.bb62 ], [ 1, %sw.bb60 ], [ 1, %sw.bb57 ], [ 1, %sw.bb50 ], [ 1, %if.then42 ], [ 1, %if.then46 ], [ 1, %if.else47 ], [ 0, %sw.bb34 ], [ 1, %sw.bb32 ], [ 1, %sw.bb31 ], [ 1, %sw.bb30 ], [ 1, %if.then28 ], [ 1, %if.else ], [ 1, %sw.bb21 ], [ 1, %sw.bb17 ], [ 1, %sw.bb16 ], [ 1, %sw.bb12 ], [ 1, %sw.bb8 ], [ 1, %sw.bb7 ], [ 1, %halbtcoutsrc_IsWifiBusy.exit ], [ 1, %sw.bb2 ], [ 0, %sw.bb1 ], [ 0, %sw.bb ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i8 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @halbtcoutsrc_Set(ptr noundef %pBtcContext, i8 noundef zeroext %setType, ptr nocapture noundef readonly %pInBuf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %Adapter = getelementptr inbounds %struct.btc_coexist, ptr %pBtcContext, i32 0, i32 1
  %0 = ptrtoint ptr %Adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %Adapter, align 4
  %2 = ptrtoint ptr %pBtcContext to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %pBtcContext, align 4, !range !17
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp eq i8 %3, 0
  %tobool1.not.i.not = icmp eq ptr %1, null
  %or.cond = select i1 %tobool.not.i, i1 true, i1 %tobool1.not.i.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = zext i8 %setType to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.1)
  switch i8 %setType, label %if.end.cleanup_crit_edge [
    i8 0, label %sw.bb
    i8 1, label %sw.bb2
    i8 2, label %sw.bb6
    i8 3, label %sw.bb10
    i8 4, label %sw.bb14
    i8 5, label %sw.bb18
    i8 6, label %sw.bb22
    i8 7, label %sw.bb26
    i8 8, label %sw.bb30
    i8 9, label %sw.bb32
    i8 19, label %sw.bb46
    i8 11, label %sw.bb35
    i8 12, label %sw.bb36
    i8 13, label %sw.bb38
    i8 14, label %sw.bb40
    i8 15, label %sw.bb42
    i8 16, label %sw.bb43
    i8 17, label %sw.bb44
    i8 18, label %sw.bb45
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %pInBuf to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %pInBuf, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool1 = icmp ne i8 %6, 0
  %btInfo = getelementptr inbounds %struct.btc_coexist, ptr %pBtcContext, i32 0, i32 3
  %frombool = zext i1 %tobool1 to i8
  %7 = ptrtoint ptr %btInfo to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %frombool, ptr %btInfo, align 4
  br label %cleanup

sw.bb2:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %pInBuf to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %pInBuf, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool3 = icmp ne i8 %9, 0
  %bBtBusy = getelementptr inbounds %struct.btc_coexist, ptr %pBtcContext, i32 0, i32 3, i32 10
  %frombool5 = zext i1 %tobool3 to i8
  %10 = ptrtoint ptr %bBtBusy to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %frombool5, ptr %bBtBusy, align 2
  br label %cleanup

sw.bb6:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %pInBuf to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %pInBuf, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool7 = icmp ne i8 %12, 0
  %bLimitedDig = getelementptr inbounds %struct.btc_coexist, ptr %pBtcContext, i32 0, i32 3, i32 11
  %frombool9 = zext i1 %tobool7 to i8
  %13 = ptrtoint ptr %bLimitedDig to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %frombool9, ptr %bLimitedDig, align 1
  br label %cleanup

sw.bb10:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %pInBuf to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %pInBuf, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool11 = icmp ne i8 %15, 0
  %bForceToRoam = getelementptr inbounds %struct.btc_coexist, ptr %pBtcContext, i32 0, i32 3, i32 19
  %frombool13 = zext i1 %tobool11 to i8
  %16 = ptrtoint ptr %bForceToRoam to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %frombool13, ptr %bForceToRoam, align 1
  br label %cleanup

sw.bb14:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %17 = ptrtoint ptr %pInBuf to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %pInBuf, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool15 = icmp ne i8 %18, 0
  %bRejectAggPkt = getelementptr inbounds %struct.btc_coexist, ptr %pBtcContext, i32 0, i32 3, i32 5
  %frombool17 = zext i1 %tobool15 to i8
  %19 = ptrtoint ptr %bRejectAggPkt to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %frombool17, ptr %bRejectAggPkt, align 1
  br label %cleanup

sw.bb18:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %20 = ptrtoint ptr %pInBuf to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %pInBuf, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool19 = icmp ne i8 %21, 0
  %bBtCtrlAggBufSize = getelementptr inbounds %struct.btc_coexist, ptr %pBtcContext, i32 0, i32 3, i32 4
  %frombool21 = zext i1 %tobool19 to i8
  %22 = ptrtoint ptr %bBtCtrlAggBufSize to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %frombool21, ptr %bBtCtrlAggBufSize, align 4
  br label %cleanup

sw.bb22:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %23 = ptrtoint ptr %pInBuf to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %pInBuf, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool23 = icmp ne i8 %24, 0
  %bIncreaseScanDevNum = getelementptr inbounds %struct.btc_coexist, ptr %pBtcContext, i32 0, i32 3, i32 6
  %frombool25 = zext i1 %tobool23 to i8
  %25 = ptrtoint ptr %bIncreaseScanDevNum to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %frombool25, ptr %bIncreaseScanDevNum, align 2
  br label %cleanup

sw.bb26:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %26 = ptrtoint ptr %pInBuf to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %pInBuf, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool27 = icmp ne i8 %27, 0
  %bBtTxRxMask = getelementptr inbounds %struct.btc_coexist, ptr %pBtcContext, i32 0, i32 3, i32 7
  %frombool29 = zext i1 %tobool27 to i8
  %28 = ptrtoint ptr %bBtTxRxMask to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %frombool29, ptr %bBtTxRxMask, align 1
  br label %cleanup

sw.bb30:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %29 = ptrtoint ptr %pInBuf to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %pInBuf, align 1
  %rssiAdjustForAgcTableOn = getelementptr inbounds %struct.btc_coexist, ptr %pBtcContext, i32 0, i32 3, i32 1
  %31 = ptrtoint ptr %rssiAdjustForAgcTableOn to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %30, ptr %rssiAdjustForAgcTableOn, align 1
  br label %cleanup

sw.bb32:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %32 = ptrtoint ptr %pInBuf to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %pInBuf, align 1
  %aggBufSize = getelementptr inbounds %struct.btc_coexist, ptr %pBtcContext, i32 0, i32 3, i32 9
  %34 = ptrtoint ptr %aggBufSize to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %33, ptr %aggBufSize, align 1
  br label %cleanup

sw.bb35:                                          ; preds = %if.end
  %bRejectAggPkt.i = getelementptr inbounds %struct.btc_coexist, ptr %pBtcContext, i32 0, i32 3, i32 5
  %35 = ptrtoint ptr %bRejectAggPkt.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %bRejectAggPkt.i, align 1, !range !17
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool.not.i98 = icmp eq i8 %36, 0
  br i1 %tobool.not.i98, label %if.else.i, label %sw.bb35.if.end33.sink.split.i_crit_edge

sw.bb35.if.end33.sink.split.i_crit_edge:          ; preds = %sw.bb35
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end33.sink.split.i

if.else.i:                                        ; preds = %sw.bb35
  %bPreBtCtrlAggBufSize.i = getelementptr inbounds %struct.btc_coexist, ptr %pBtcContext, i32 0, i32 3, i32 3
  %37 = ptrtoint ptr %bPreBtCtrlAggBufSize.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %bPreBtCtrlAggBufSize.i, align 1, !range !17
  %bBtCtrlAggBufSize.i = getelementptr inbounds %struct.btc_coexist, ptr %pBtcContext, i32 0, i32 3, i32 4
  %39 = ptrtoint ptr %bBtCtrlAggBufSize.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %bBtCtrlAggBufSize.i, align 4, !range !17
  call void @__sanitizer_cov_trace_cmp1(i8 %38, i8 %40)
  %cmp.not.i = icmp eq i8 %38, %40
  br i1 %cmp.not.i, label %if.end.i, label %if.end.thread.i

if.end.i:                                         ; preds = %if.else.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool15.not.i = icmp eq i8 %38, 0
  br i1 %tobool15.not.i, label %if.end.i.cleanup_crit_edge, label %if.then16.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.thread.i:                                  ; preds = %if.else.i
  %41 = ptrtoint ptr %bPreBtCtrlAggBufSize.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %40, ptr %bPreBtCtrlAggBufSize.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool15.not48.i = icmp eq i8 %40, 0
  br i1 %tobool15.not48.i, label %if.end.thread.i.if.then31.i_crit_edge, label %if.then16.thread.i

if.end.thread.i.if.then31.i_crit_edge:            ; preds = %if.end.thread.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then31.i

if.then16.thread.i:                               ; preds = %if.end.thread.i
  call void @__sanitizer_cov_trace_pc() #11
  %preAggBufSize49.i = getelementptr inbounds %struct.btc_coexist, ptr %pBtcContext, i32 0, i32 3, i32 8
  %aggBufSize50.i = getelementptr inbounds %struct.btc_coexist, ptr %pBtcContext, i32 0, i32 3, i32 9
  %42 = ptrtoint ptr %aggBufSize50.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %aggBufSize50.i, align 1
  %44 = ptrtoint ptr %preAggBufSize49.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %43, ptr %preAggBufSize49.i, align 4
  br label %if.then31.i

if.then16.i:                                      ; preds = %if.end.i
  %preAggBufSize.i = getelementptr inbounds %struct.btc_coexist, ptr %pBtcContext, i32 0, i32 3, i32 8
  %45 = ptrtoint ptr %preAggBufSize.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %preAggBufSize.i, align 4
  %aggBufSize.i = getelementptr inbounds %struct.btc_coexist, ptr %pBtcContext, i32 0, i32 3, i32 9
  %47 = ptrtoint ptr %aggBufSize.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %aggBufSize.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %46, i8 %48)
  %cmp21.not.i.not = icmp eq i8 %46, %48
  %49 = ptrtoint ptr %preAggBufSize.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %48, ptr %preAggBufSize.i, align 4
  br i1 %cmp21.not.i.not, label %if.then16.i.cleanup_crit_edge, label %if.then16.i.if.then31.i_crit_edge

if.then16.i.if.then31.i_crit_edge:                ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then31.i

if.then16.i.cleanup_crit_edge:                    ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then31.i:                                      ; preds = %if.then16.i.if.then31.i_crit_edge, %if.then16.thread.i, %if.end.thread.i.if.then31.i_crit_edge
  tail call void @rtw_btcoex_RejectApAggregatedPacket(ptr noundef nonnull %1, i8 noundef zeroext 1) #9
  br label %if.end33.sink.split.i

if.end33.sink.split.i:                            ; preds = %if.then31.i, %sw.bb35.if.end33.sink.split.i_crit_edge
  %.sink.i = phi i8 [ 0, %if.then31.i ], [ 1, %sw.bb35.if.end33.sink.split.i_crit_edge ]
  tail call void @rtw_btcoex_RejectApAggregatedPacket(ptr noundef nonnull %1, i8 noundef zeroext %.sink.i) #9
  br label %cleanup

sw.bb36:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %50 = ptrtoint ptr %pInBuf to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %pInBuf, align 1
  %rssiAdjustFor1AntCoexType = getelementptr inbounds %struct.btc_coexist, ptr %pBtcContext, i32 0, i32 3, i32 2
  %52 = ptrtoint ptr %rssiAdjustFor1AntCoexType to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %51, ptr %rssiAdjustFor1AntCoexType, align 2
  br label %cleanup

sw.bb38:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %53 = ptrtoint ptr %pInBuf to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %pInBuf, align 1
  %lpsVal = getelementptr inbounds %struct.btc_coexist, ptr %pBtcContext, i32 0, i32 3, i32 20
  %55 = ptrtoint ptr %lpsVal to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %54, ptr %lpsVal, align 4
  br label %cleanup

sw.bb40:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %56 = ptrtoint ptr %pInBuf to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %pInBuf, align 1
  %rpwmVal = getelementptr inbounds %struct.btc_coexist, ptr %pBtcContext, i32 0, i32 3, i32 21
  %58 = ptrtoint ptr %rpwmVal to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %57, ptr %rpwmVal, align 1
  br label %cleanup

sw.bb42:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %bBtCtrlLps.i = getelementptr inbounds %struct.btc_coexist, ptr %pBtcContext, i32 0, i32 3, i32 17
  %59 = ptrtoint ptr %bBtCtrlLps.i to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 1, ptr %bBtCtrlLps.i, align 1
  %bBtLpsOn.i = getelementptr inbounds %struct.btc_coexist, ptr %pBtcContext, i32 0, i32 3, i32 18
  %60 = ptrtoint ptr %bBtLpsOn.i to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 0, ptr %bBtLpsOn.i, align 2
  tail call void @rtw_btcoex_LPS_Leave(ptr noundef nonnull %1) #9
  br label %cleanup

sw.bb43:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %bBtCtrlLps.i102 = getelementptr inbounds %struct.btc_coexist, ptr %pBtcContext, i32 0, i32 3, i32 17
  %61 = ptrtoint ptr %bBtCtrlLps.i102 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 1, ptr %bBtCtrlLps.i102, align 1
  %bBtLpsOn.i103 = getelementptr inbounds %struct.btc_coexist, ptr %pBtcContext, i32 0, i32 3, i32 18
  %62 = ptrtoint ptr %bBtLpsOn.i103 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 1, ptr %bBtLpsOn.i103, align 2
  tail call void @rtw_btcoex_LPS_Enter(ptr noundef nonnull %1) #9
  br label %cleanup

sw.bb44:                                          ; preds = %if.end
  %bBtCtrlLps.i104 = getelementptr inbounds %struct.btc_coexist, ptr %pBtcContext, i32 0, i32 3, i32 17
  %63 = ptrtoint ptr %bBtCtrlLps.i104 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %bBtCtrlLps.i104, align 1, !range !17
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %64)
  %tobool.not.i105 = icmp eq i8 %64, 0
  br i1 %tobool.not.i105, label %sw.bb44.cleanup_crit_edge, label %if.then.i

sw.bb44.cleanup_crit_edge:                        ; preds = %sw.bb44
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.i:                                        ; preds = %sw.bb44
  call void @__sanitizer_cov_trace_pc() #11
  %bBtLpsOn.i107 = getelementptr inbounds %struct.btc_coexist, ptr %pBtcContext, i32 0, i32 3, i32 18
  %65 = ptrtoint ptr %bBtLpsOn.i107 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 0, ptr %bBtLpsOn.i107, align 2
  tail call void @rtw_btcoex_LPS_Leave(ptr noundef nonnull %1) #9
  %66 = ptrtoint ptr %bBtCtrlLps.i104 to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 0, ptr %bBtCtrlLps.i104, align 1
  br label %cleanup

sw.bb45:                                          ; preds = %if.end
  %67 = ptrtoint ptr %pInBuf to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %pInBuf, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %68)
  %tobool.i = icmp ne i8 %68, 0
  %bBtDisableLowPwr.i = getelementptr inbounds %struct.btc_coexist, ptr %pBtcContext, i32 0, i32 3, i32 16
  %frombool.i = zext i1 %tobool.i to i8
  %69 = ptrtoint ptr %bBtDisableLowPwr.i to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %frombool.i, ptr %bBtDisableLowPwr.i, align 4
  br i1 %tobool.i, label %if.then.i109, label %if.else.i110

if.then.i109:                                     ; preds = %sw.bb45
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %70 = load volatile i32, ptr @jiffies, align 128
  %call5.i.i = tail call i32 @rtw_register_task_alive(ptr noundef nonnull %1, i32 noundef 16) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call5.i.i)
  %cmp6.i.i = icmp eq i32 %call5.i.i, 1
  br i1 %cmp6.i.i, label %if.then.i109.cleanup_crit_edge, label %if.then.i109.if.end.i.i_crit_edge

if.then.i109.if.end.i.i_crit_edge:                ; preds = %if.then.i109
  br label %if.end.i.i

if.then.i109.cleanup_crit_edge:                   ; preds = %if.then.i109
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end4.i.i.if.end.i.i_crit_edge, %if.then.i109.if.end.i.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %71 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i = sub i32 %71, %70
  %call1.i.i = tail call i32 @jiffies_to_msecs(i32 noundef %sub.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 300, i32 %call1.i.i)
  %cmp2.i.i = icmp ugt i32 %call1.i.i, 300
  br i1 %cmp2.i.i, label %if.end.i.i.cleanup_crit_edge, label %if.end4.i.i

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4.i.i:                                      ; preds = %if.end.i.i
  tail call void @msleep(i32 noundef 1) #9
  %call.i.i = tail call i32 @rtw_register_task_alive(ptr noundef nonnull %1, i32 noundef 16) #9
  %cmp.i.i = icmp eq i32 %call.i.i, 1
  br i1 %cmp.i.i, label %if.end4.i.i.cleanup_crit_edge, label %if.end4.i.i.if.end.i.i_crit_edge

if.end4.i.i.if.end.i.i_crit_edge:                 ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i

if.end4.i.i.cleanup_crit_edge:                    ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.else.i110:                                     ; preds = %sw.bb45
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @rtw_unregister_task_alive(ptr noundef nonnull %1, i32 noundef 16) #9
  br label %cleanup

sw.bb46:                                          ; preds = %if.end
  %72 = ptrtoint ptr %pInBuf to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %pInBuf, align 4
  %raMask = getelementptr inbounds %struct.btc_coexist, ptr %pBtcContext, i32 0, i32 3, i32 22
  %74 = ptrtoint ptr %raMask to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %73, ptr %raMask, align 4
  %fw_state.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 4, i32 1
  %75 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %fw_state.i, align 4
  %and.i = and i32 %76, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i112.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i112.not, label %sw.bb46.cleanup_crit_edge, label %if.then50

sw.bb46.cleanup_crit_edge:                        ; preds = %sw.bb46
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then50:                                        ; preds = %sw.bb46
  call void @__sanitizer_cov_trace_pc() #11
  %stapriv = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 11
  %mac_address = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 5, i32 18, i32 39, i32 1
  %call51 = tail call ptr @rtw_get_stainfo(ptr noundef %stapriv, ptr noundef %mac_address) #9
  tail call void @rtw_hal_update_ra_mask(ptr noundef %call51, i8 noundef zeroext 0) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then50, %sw.bb46.cleanup_crit_edge, %if.else.i110, %if.end4.i.i.cleanup_crit_edge, %if.end.i.i.cleanup_crit_edge, %if.then.i109.cleanup_crit_edge, %if.then.i, %sw.bb44.cleanup_crit_edge, %sw.bb43, %sw.bb42, %sw.bb40, %sw.bb38, %sw.bb36, %if.end33.sink.split.i, %if.then16.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %sw.bb32, %sw.bb30, %sw.bb26, %sw.bb22, %sw.bb18, %sw.bb14, %sw.bb10, %sw.bb6, %sw.bb2, %sw.bb, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i8 [ 1, %if.then50 ], [ 1, %sw.bb46.cleanup_crit_edge ], [ 1, %sw.bb43 ], [ 1, %sw.bb42 ], [ 1, %sw.bb40 ], [ 1, %sw.bb38 ], [ 1, %sw.bb36 ], [ 1, %sw.bb32 ], [ 1, %sw.bb30 ], [ 1, %sw.bb26 ], [ 1, %sw.bb22 ], [ 1, %sw.bb18 ], [ 1, %sw.bb14 ], [ 1, %sw.bb10 ], [ 1, %sw.bb6 ], [ 1, %sw.bb2 ], [ 1, %sw.bb ], [ 0, %if.end.cleanup_crit_edge ], [ 1, %if.end.i.cleanup_crit_edge ], [ 1, %if.then16.i.cleanup_crit_edge ], [ 1, %if.end33.sink.split.i ], [ 1, %sw.bb44.cleanup_crit_edge ], [ 1, %if.then.i ], [ 1, %if.then.i109.cleanup_crit_edge ], [ 1, %if.else.i110 ], [ 0, %entry.cleanup_crit_edge ], [ 1, %if.end.i.i.cleanup_crit_edge ], [ 1, %if.end4.i.i.cleanup_crit_edge ]
  ret i8 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @halbtcoutsrc_GetBtReg(ptr nocapture noundef readnone %pBtcContext, i8 noundef zeroext %RegType, i32 noundef %RegAddr) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @halbtcoutsrc_SetBtReg(ptr nocapture noundef readonly %pBtcContext, i8 noundef zeroext %RegType, i32 noundef %RegAddr, i32 noundef %Data) #2 align 64 {
entry:
  %CmdBuffer1 = alloca [4 x i8], align 4
  %CmdBuffer2 = alloca [4 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %RegAddr.addr.sroa.0.0.extract.shift = lshr i32 %RegAddr, 24
  %RegAddr.addr.sroa.0.0.extract.trunc = trunc i32 %RegAddr.addr.sroa.0.0.extract.shift to i8
  %Data.addr.sroa.0.0.extract.shift = lshr i32 %Data, 24
  %Data.addr.sroa.0.0.extract.trunc = trunc i32 %Data.addr.sroa.0.0.extract.shift to i8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %CmdBuffer1) #9
  %0 = ptrtoint ptr %CmdBuffer1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 851968, ptr %CmdBuffer1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %CmdBuffer2) #9
  %1 = ptrtoint ptr %CmdBuffer2 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 269221888, ptr %CmdBuffer2, align 4
  %Adapter = getelementptr inbounds %struct.btc_coexist, ptr %pBtcContext, i32 0, i32 1
  %2 = ptrtoint ptr %Adapter to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %Adapter, align 4
  %arrayidx11 = getelementptr inbounds [4 x i8], ptr %CmdBuffer1, i32 0, i32 2
  %4 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %Data.addr.sroa.0.0.extract.trunc, ptr %arrayidx11, align 2
  %call = call i32 @rtw_hal_fill_h2c_cmd(ptr noundef %3, i8 noundef zeroext 103, i32 noundef 4, ptr noundef nonnull %CmdBuffer1) #9
  call void @msleep(i32 noundef 200) #9
  %arrayidx28 = getelementptr inbounds [4 x i8], ptr %CmdBuffer2, i32 0, i32 3
  %5 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %RegAddr.addr.sroa.0.0.extract.trunc, ptr %arrayidx28, align 1
  %call30 = call i32 @rtw_hal_fill_h2c_cmd(ptr noundef %3, i8 noundef zeroext 103, i32 noundef 4, ptr noundef nonnull %CmdBuffer2) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %CmdBuffer2) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %CmdBuffer1) #9
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @EXhalbtcoutsrc_PowerOnSetting(ptr noundef %pBtCoexist) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pBtCoexist to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pBtCoexist, align 4, !range !17
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i = icmp eq i8 %1, 0
  br i1 %tobool.not.i, label %entry.if.end10_crit_edge, label %halbtcoutsrc_IsBtCoexistAvailable.exit

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

halbtcoutsrc_IsBtCoexistAvailable.exit:           ; preds = %entry
  %Adapter.i = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 1
  %2 = ptrtoint ptr %Adapter.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %Adapter.i, align 4
  %tobool1.not.i.not = icmp eq ptr %3, null
  br i1 %tobool1.not.i.not, label %halbtcoutsrc_IsBtCoexistAvailable.exit.if.end10_crit_edge, label %if.end

halbtcoutsrc_IsBtCoexistAvailable.exit.if.end10_crit_edge: ; preds = %halbtcoutsrc_IsBtCoexistAvailable.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

if.end:                                           ; preds = %halbtcoutsrc_IsBtCoexistAvailable.exit
  %btdmAntNum = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 2, i32 2
  %4 = ptrtoint ptr %btdmAntNum to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %btdmAntNum, align 2
  %6 = zext i8 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.2)
  switch i8 %5, label %if.end.if.end10_crit_edge [
    i8 2, label %if.then2
    i8 1, label %if.then8
  ]

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @EXhalbtc8723b2ant_PowerOnSetting(ptr noundef %pBtCoexist) #9
  br label %if.end10

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @EXhalbtc8723b1ant_PowerOnSetting(ptr noundef %pBtCoexist) #9
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.then2, %if.end.if.end10_crit_edge, %halbtcoutsrc_IsBtCoexistAvailable.exit.if.end10_crit_edge, %entry.if.end10_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @EXhalbtc8723b2ant_PowerOnSetting(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @EXhalbtc8723b1ant_PowerOnSetting(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @EXhalbtcoutsrc_InitHwConfig(ptr noundef %pBtCoexist, i8 noundef zeroext %bWifiOnly) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pBtCoexist to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pBtCoexist, align 4, !range !17
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i = icmp eq i8 %1, 0
  br i1 %tobool.not.i, label %entry.if.end12_crit_edge, label %halbtcoutsrc_IsBtCoexistAvailable.exit

entry.if.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

halbtcoutsrc_IsBtCoexistAvailable.exit:           ; preds = %entry
  %Adapter.i = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 1
  %2 = ptrtoint ptr %Adapter.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %Adapter.i, align 4
  %tobool1.not.i.not = icmp eq ptr %3, null
  br i1 %tobool1.not.i.not, label %halbtcoutsrc_IsBtCoexistAvailable.exit.if.end12_crit_edge, label %if.end

halbtcoutsrc_IsBtCoexistAvailable.exit.if.end12_crit_edge: ; preds = %halbtcoutsrc_IsBtCoexistAvailable.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.end:                                           ; preds = %halbtcoutsrc_IsBtCoexistAvailable.exit
  %cntInitHwConfig = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 10, i32 2
  %4 = ptrtoint ptr %cntInitHwConfig to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cntInitHwConfig, align 4
  %inc = add i32 %5, 1
  store i32 %inc, ptr %cntInitHwConfig, align 4
  %btdmAntNum = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 2, i32 2
  %6 = ptrtoint ptr %btdmAntNum to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %btdmAntNum, align 2
  %8 = zext i8 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.3)
  switch i8 %7, label %if.end.if.end12_crit_edge [
    i8 2, label %if.then2
    i8 1, label %if.then9
  ]

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bWifiOnly)
  %tobool3 = icmp ne i8 %bWifiOnly, 0
  tail call void @EXhalbtc8723b2ant_InitHwConfig(ptr noundef %pBtCoexist, i1 noundef zeroext %tobool3) #9
  br label %if.end12

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bWifiOnly)
  %tobool10 = icmp ne i8 %bWifiOnly, 0
  tail call void @EXhalbtc8723b1ant_InitHwConfig(ptr noundef %pBtCoexist, i1 noundef zeroext %tobool10) #9
  br label %if.end12

if.end12:                                         ; preds = %if.then9, %if.then2, %if.end.if.end12_crit_edge, %halbtcoutsrc_IsBtCoexistAvailable.exit.if.end12_crit_edge, %entry.if.end12_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @EXhalbtc8723b2ant_InitHwConfig(ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @EXhalbtc8723b1ant_InitHwConfig(ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @EXhalbtcoutsrc_InitCoexDm(ptr noundef %pBtCoexist) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pBtCoexist to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pBtCoexist, align 4, !range !17
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i = icmp eq i8 %1, 0
  br i1 %tobool.not.i, label %entry.return_crit_edge, label %halbtcoutsrc_IsBtCoexistAvailable.exit

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

halbtcoutsrc_IsBtCoexistAvailable.exit:           ; preds = %entry
  %Adapter.i = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 1
  %2 = ptrtoint ptr %Adapter.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %Adapter.i, align 4
  %tobool1.not.i.not = icmp eq ptr %3, null
  br i1 %tobool1.not.i.not, label %halbtcoutsrc_IsBtCoexistAvailable.exit.return_crit_edge, label %if.end

halbtcoutsrc_IsBtCoexistAvailable.exit.return_crit_edge: ; preds = %halbtcoutsrc_IsBtCoexistAvailable.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %halbtcoutsrc_IsBtCoexistAvailable.exit
  %cntInitCoexDm = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 10, i32 3
  %4 = ptrtoint ptr %cntInitCoexDm to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cntInitCoexDm, align 4
  %inc = add i32 %5, 1
  store i32 %inc, ptr %cntInitCoexDm, align 4
  %btdmAntNum = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 2, i32 2
  %6 = ptrtoint ptr %btdmAntNum to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %btdmAntNum, align 2
  %8 = zext i8 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.4)
  switch i8 %7, label %if.end.if.end10_crit_edge [
    i8 2, label %if.then2
    i8 1, label %if.then8
  ]

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @EXhalbtc8723b2ant_InitCoexDm(ptr noundef %pBtCoexist) #9
  br label %if.end10

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @EXhalbtc8723b1ant_InitCoexDm(ptr noundef %pBtCoexist) #9
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.then2, %if.end.if.end10_crit_edge
  %bInitilized = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 7
  %9 = ptrtoint ptr %bInitilized to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %bInitilized, align 4
  br label %return

return:                                           ; preds = %if.end10, %halbtcoutsrc_IsBtCoexistAvailable.exit.return_crit_edge, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @EXhalbtc8723b2ant_InitCoexDm(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @EXhalbtc8723b1ant_InitCoexDm(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @EXhalbtcoutsrc_IpsNotify(ptr noundef %pBtCoexist, i8 noundef zeroext %type) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pBtCoexist to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pBtCoexist, align 4, !range !17
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i = icmp eq i8 %1, 0
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %halbtcoutsrc_IsBtCoexistAvailable.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

halbtcoutsrc_IsBtCoexistAvailable.exit:           ; preds = %entry
  %Adapter.i = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 1
  %2 = ptrtoint ptr %Adapter.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %Adapter.i, align 4
  %tobool1.not.i.not = icmp eq ptr %3, null
  br i1 %tobool1.not.i.not, label %halbtcoutsrc_IsBtCoexistAvailable.exit.cleanup_crit_edge, label %if.end

halbtcoutsrc_IsBtCoexistAvailable.exit.cleanup_crit_edge: ; preds = %halbtcoutsrc_IsBtCoexistAvailable.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %halbtcoutsrc_IsBtCoexistAvailable.exit
  %cntIpsNotify = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 10, i32 4
  %4 = ptrtoint ptr %cntIpsNotify to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cntIpsNotify, align 4
  %inc = add i32 %5, 1
  store i32 %inc, ptr %cntIpsNotify, align 4
  %bManualControl = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 9
  %6 = ptrtoint ptr %bManualControl to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %bManualControl, align 2, !range !17
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool1.not = icmp eq i8 %7, 0
  br i1 %tobool1.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %type)
  %cmp = icmp ne i8 %type, 0
  %. = zext i1 %cmp to i8
  %btdmAntNum = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 2, i32 2
  %8 = ptrtoint ptr %btdmAntNum to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %btdmAntNum, align 2
  %10 = zext i8 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.5)
  switch i8 %9, label %if.end3.cleanup_crit_edge [
    i8 2, label %if.then10
    i8 1, label %if.then17
  ]

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then10:                                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @EXhalbtc8723b2ant_IpsNotify(ptr noundef %pBtCoexist, i8 noundef zeroext %.) #9
  br label %cleanup

if.then17:                                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @EXhalbtc8723b1ant_IpsNotify(ptr noundef %pBtCoexist, i8 noundef zeroext %.) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then17, %if.then10, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %halbtcoutsrc_IsBtCoexistAvailable.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @EXhalbtc8723b2ant_IpsNotify(ptr noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @EXhalbtc8723b1ant_IpsNotify(ptr noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @EXhalbtcoutsrc_LpsNotify(ptr noundef %pBtCoexist, i8 noundef zeroext %type) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pBtCoexist to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pBtCoexist, align 4, !range !17
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i = icmp eq i8 %1, 0
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %halbtcoutsrc_IsBtCoexistAvailable.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

halbtcoutsrc_IsBtCoexistAvailable.exit:           ; preds = %entry
  %Adapter.i = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 1
  %2 = ptrtoint ptr %Adapter.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %Adapter.i, align 4
  %tobool1.not.i.not = icmp eq ptr %3, null
  br i1 %tobool1.not.i.not, label %halbtcoutsrc_IsBtCoexistAvailable.exit.cleanup_crit_edge, label %if.end

halbtcoutsrc_IsBtCoexistAvailable.exit.cleanup_crit_edge: ; preds = %halbtcoutsrc_IsBtCoexistAvailable.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %halbtcoutsrc_IsBtCoexistAvailable.exit
  %cntLpsNotify = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 10, i32 5
  %4 = ptrtoint ptr %cntLpsNotify to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cntLpsNotify, align 4
  %inc = add i32 %5, 1
  store i32 %inc, ptr %cntLpsNotify, align 4
  %bManualControl = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 9
  %6 = ptrtoint ptr %bManualControl to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %bManualControl, align 2, !range !17
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool1.not = icmp eq i8 %7, 0
  br i1 %tobool1.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %type)
  %cmp = icmp ne i8 %type, 1
  %. = zext i1 %cmp to i8
  %btdmAntNum = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 2, i32 2
  %8 = ptrtoint ptr %btdmAntNum to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %btdmAntNum, align 2
  %10 = zext i8 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.6)
  switch i8 %9, label %if.end3.cleanup_crit_edge [
    i8 2, label %if.then10
    i8 1, label %if.then17
  ]

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then10:                                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @EXhalbtc8723b2ant_LpsNotify(ptr noundef %pBtCoexist, i8 noundef zeroext %.) #9
  br label %cleanup

if.then17:                                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @EXhalbtc8723b1ant_LpsNotify(ptr noundef %pBtCoexist, i8 noundef zeroext %.) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then17, %if.then10, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %halbtcoutsrc_IsBtCoexistAvailable.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @EXhalbtc8723b2ant_LpsNotify(ptr noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @EXhalbtc8723b1ant_LpsNotify(ptr noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @EXhalbtcoutsrc_ScanNotify(ptr noundef %pBtCoexist, i8 noundef zeroext %type) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pBtCoexist to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pBtCoexist, align 4, !range !17
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i = icmp eq i8 %1, 0
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %halbtcoutsrc_IsBtCoexistAvailable.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

halbtcoutsrc_IsBtCoexistAvailable.exit:           ; preds = %entry
  %Adapter.i = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 1
  %2 = ptrtoint ptr %Adapter.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %Adapter.i, align 4
  %tobool1.not.i.not = icmp eq ptr %3, null
  br i1 %tobool1.not.i.not, label %halbtcoutsrc_IsBtCoexistAvailable.exit.cleanup_crit_edge, label %if.end

halbtcoutsrc_IsBtCoexistAvailable.exit.cleanup_crit_edge: ; preds = %halbtcoutsrc_IsBtCoexistAvailable.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %halbtcoutsrc_IsBtCoexistAvailable.exit
  %cntScanNotify = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 10, i32 6
  %4 = ptrtoint ptr %cntScanNotify to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cntScanNotify, align 4
  %inc = add i32 %5, 1
  store i32 %inc, ptr %cntScanNotify, align 4
  %bManualControl = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 9
  %6 = ptrtoint ptr %bManualControl to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %bManualControl, align 2, !range !17
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool1.not = icmp eq i8 %7, 0
  br i1 %tobool1.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %type)
  %tobool4.not = icmp ne i8 %type, 0
  %. = zext i1 %tobool4.not to i8
  store i1 %tobool4.not, ptr @GLBtcWiFiInScanState, align 1
  %btdmAntNum = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 2, i32 2
  %8 = ptrtoint ptr %btdmAntNum to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %btdmAntNum, align 2
  %10 = zext i8 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.7)
  switch i8 %9, label %if.end3.cleanup_crit_edge [
    i8 2, label %if.then8
    i8 1, label %if.then15
  ]

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then8:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @EXhalbtc8723b2ant_ScanNotify(ptr noundef %pBtCoexist, i8 noundef zeroext %.) #9
  br label %cleanup

if.then15:                                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @EXhalbtc8723b1ant_ScanNotify(ptr noundef %pBtCoexist, i8 noundef zeroext %.) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then15, %if.then8, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %halbtcoutsrc_IsBtCoexistAvailable.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @EXhalbtc8723b2ant_ScanNotify(ptr noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @EXhalbtc8723b1ant_ScanNotify(ptr noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @EXhalbtcoutsrc_ConnectNotify(ptr noundef %pBtCoexist, i8 noundef zeroext %action) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pBtCoexist to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pBtCoexist, align 4, !range !17
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i = icmp eq i8 %1, 0
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %halbtcoutsrc_IsBtCoexistAvailable.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

halbtcoutsrc_IsBtCoexistAvailable.exit:           ; preds = %entry
  %Adapter.i = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 1
  %2 = ptrtoint ptr %Adapter.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %Adapter.i, align 4
  %tobool1.not.i.not = icmp eq ptr %3, null
  br i1 %tobool1.not.i.not, label %halbtcoutsrc_IsBtCoexistAvailable.exit.cleanup_crit_edge, label %if.end

halbtcoutsrc_IsBtCoexistAvailable.exit.cleanup_crit_edge: ; preds = %halbtcoutsrc_IsBtCoexistAvailable.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %halbtcoutsrc_IsBtCoexistAvailable.exit
  %cntConnectNotify = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 10, i32 7
  %4 = ptrtoint ptr %cntConnectNotify to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cntConnectNotify, align 4
  %inc = add i32 %5, 1
  store i32 %inc, ptr %cntConnectNotify, align 4
  %bManualControl = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 9
  %6 = ptrtoint ptr %bManualControl to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %bManualControl, align 2, !range !17
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool1.not = icmp eq i8 %7, 0
  br i1 %tobool1.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %action)
  %tobool4.not = icmp ne i8 %action, 0
  %. = zext i1 %tobool4.not to i8
  %btdmAntNum = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 2, i32 2
  %8 = ptrtoint ptr %btdmAntNum to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %btdmAntNum, align 2
  %10 = zext i8 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.8)
  switch i8 %9, label %if.end3.cleanup_crit_edge [
    i8 2, label %if.then8
    i8 1, label %if.then15
  ]

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then8:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @EXhalbtc8723b2ant_ConnectNotify(ptr noundef %pBtCoexist, i8 noundef zeroext %.) #9
  br label %cleanup

if.then15:                                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @EXhalbtc8723b1ant_ConnectNotify(ptr noundef %pBtCoexist, i8 noundef zeroext %.) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then15, %if.then8, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %halbtcoutsrc_IsBtCoexistAvailable.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @EXhalbtc8723b2ant_ConnectNotify(ptr noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @EXhalbtc8723b1ant_ConnectNotify(ptr noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @EXhalbtcoutsrc_MediaStatusNotify(ptr noundef %pBtCoexist, i32 noundef %mediaStatus) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pBtCoexist to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pBtCoexist, align 4, !range !17
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i = icmp eq i8 %1, 0
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %halbtcoutsrc_IsBtCoexistAvailable.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

halbtcoutsrc_IsBtCoexistAvailable.exit:           ; preds = %entry
  %Adapter.i = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 1
  %2 = ptrtoint ptr %Adapter.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %Adapter.i, align 4
  %tobool1.not.i.not = icmp eq ptr %3, null
  br i1 %tobool1.not.i.not, label %halbtcoutsrc_IsBtCoexistAvailable.exit.cleanup_crit_edge, label %if.end

halbtcoutsrc_IsBtCoexistAvailable.exit.cleanup_crit_edge: ; preds = %halbtcoutsrc_IsBtCoexistAvailable.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %halbtcoutsrc_IsBtCoexistAvailable.exit
  %cntMediaStatusNotify = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 10, i32 8
  %4 = ptrtoint ptr %cntMediaStatusNotify to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cntMediaStatusNotify, align 4
  %inc = add i32 %5, 1
  store i32 %inc, ptr %cntMediaStatusNotify, align 4
  %bManualControl = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 9
  %6 = ptrtoint ptr %bManualControl to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %bManualControl, align 2, !range !17
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool1.not = icmp eq i8 %7, 0
  br i1 %tobool1.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %mediaStatus)
  %cmp = icmp eq i32 %mediaStatus, 1
  %. = zext i1 %cmp to i8
  %btdmAntNum = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 2, i32 2
  %8 = ptrtoint ptr %btdmAntNum to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %btdmAntNum, align 2
  %10 = zext i8 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.9)
  switch i8 %9, label %if.end3.cleanup_crit_edge [
    i8 2, label %if.then8
    i8 1, label %if.then15
  ]

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then8:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @EXhalbtc8723b2ant_MediaStatusNotify(ptr noundef %pBtCoexist, i8 noundef zeroext %.) #9
  br label %cleanup

if.then15:                                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @EXhalbtc8723b1ant_MediaStatusNotify(ptr noundef %pBtCoexist, i8 noundef zeroext %.) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then15, %if.then8, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %halbtcoutsrc_IsBtCoexistAvailable.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @EXhalbtc8723b2ant_MediaStatusNotify(ptr noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @EXhalbtc8723b1ant_MediaStatusNotify(ptr noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @EXhalbtcoutsrc_SpecialPacketNotify(ptr noundef %pBtCoexist, i8 noundef zeroext %pktType) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pBtCoexist to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pBtCoexist, align 4, !range !17
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i = icmp eq i8 %1, 0
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %halbtcoutsrc_IsBtCoexistAvailable.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

halbtcoutsrc_IsBtCoexistAvailable.exit:           ; preds = %entry
  %Adapter.i = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 1
  %2 = ptrtoint ptr %Adapter.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %Adapter.i, align 4
  %tobool1.not.i.not = icmp eq ptr %3, null
  br i1 %tobool1.not.i.not, label %halbtcoutsrc_IsBtCoexistAvailable.exit.cleanup_crit_edge, label %if.end

halbtcoutsrc_IsBtCoexistAvailable.exit.cleanup_crit_edge: ; preds = %halbtcoutsrc_IsBtCoexistAvailable.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %halbtcoutsrc_IsBtCoexistAvailable.exit
  %cntSpecialPacketNotify = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 10, i32 9
  %4 = ptrtoint ptr %cntSpecialPacketNotify to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cntSpecialPacketNotify, align 4
  %inc = add i32 %5, 1
  store i32 %inc, ptr %cntSpecialPacketNotify, align 4
  %bManualControl = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 9
  %6 = ptrtoint ptr %bManualControl to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %bManualControl, align 2, !range !17
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool1.not = icmp eq i8 %7, 0
  %pktType.off = add i8 %pktType, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %pktType.off)
  %switch = icmp ult i8 %pktType.off, 3
  %or.cond = and i1 %switch, %tobool1.not
  br i1 %or.cond, label %if.end18, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end18:                                         ; preds = %if.end
  %btdmAntNum = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 2, i32 2
  %8 = ptrtoint ptr %btdmAntNum to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %btdmAntNum, align 2
  %10 = zext i8 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.10)
  switch i8 %9, label %if.end18.cleanup_crit_edge [
    i8 2, label %if.then22
    i8 1, label %if.then29
  ]

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then22:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @EXhalbtc8723b2ant_SpecialPacketNotify(ptr noundef %pBtCoexist, i8 noundef zeroext %pktType) #9
  br label %cleanup

if.then29:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @EXhalbtc8723b1ant_SpecialPacketNotify(ptr noundef %pBtCoexist, i8 noundef zeroext %pktType) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then29, %if.then22, %if.end18.cleanup_crit_edge, %if.end.cleanup_crit_edge, %halbtcoutsrc_IsBtCoexistAvailable.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @EXhalbtc8723b2ant_SpecialPacketNotify(ptr noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @EXhalbtc8723b1ant_SpecialPacketNotify(ptr noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @EXhalbtcoutsrc_BtInfoNotify(ptr noundef %pBtCoexist, ptr noundef %tmpBuf, i8 noundef zeroext %length) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pBtCoexist to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pBtCoexist, align 4, !range !17
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i = icmp eq i8 %1, 0
  br i1 %tobool.not.i, label %entry.if.end10_crit_edge, label %halbtcoutsrc_IsBtCoexistAvailable.exit

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

halbtcoutsrc_IsBtCoexistAvailable.exit:           ; preds = %entry
  %Adapter.i = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 1
  %2 = ptrtoint ptr %Adapter.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %Adapter.i, align 4
  %tobool1.not.i.not = icmp eq ptr %3, null
  br i1 %tobool1.not.i.not, label %halbtcoutsrc_IsBtCoexistAvailable.exit.if.end10_crit_edge, label %if.end

halbtcoutsrc_IsBtCoexistAvailable.exit.if.end10_crit_edge: ; preds = %halbtcoutsrc_IsBtCoexistAvailable.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

if.end:                                           ; preds = %halbtcoutsrc_IsBtCoexistAvailable.exit
  %cntBtInfoNotify = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 10, i32 10
  %4 = ptrtoint ptr %cntBtInfoNotify to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cntBtInfoNotify, align 4
  %inc = add i32 %5, 1
  store i32 %inc, ptr %cntBtInfoNotify, align 4
  %btdmAntNum = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 2, i32 2
  %6 = ptrtoint ptr %btdmAntNum to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %btdmAntNum, align 2
  %8 = zext i8 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.11)
  switch i8 %7, label %if.end.if.end10_crit_edge [
    i8 2, label %if.then2
    i8 1, label %if.then8
  ]

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @EXhalbtc8723b2ant_BtInfoNotify(ptr noundef %pBtCoexist, ptr noundef %tmpBuf, i8 noundef zeroext %length) #9
  br label %if.end10

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @EXhalbtc8723b1ant_BtInfoNotify(ptr noundef %pBtCoexist, ptr noundef %tmpBuf, i8 noundef zeroext %length) #9
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.then2, %if.end.if.end10_crit_edge, %halbtcoutsrc_IsBtCoexistAvailable.exit.if.end10_crit_edge, %entry.if.end10_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @EXhalbtc8723b2ant_BtInfoNotify(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @EXhalbtc8723b1ant_BtInfoNotify(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @EXhalbtcoutsrc_HaltNotify(ptr noundef %pBtCoexist) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pBtCoexist to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pBtCoexist, align 4, !range !17
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i = icmp eq i8 %1, 0
  br i1 %tobool.not.i, label %entry.return_crit_edge, label %halbtcoutsrc_IsBtCoexistAvailable.exit

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

halbtcoutsrc_IsBtCoexistAvailable.exit:           ; preds = %entry
  %Adapter.i = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 1
  %2 = ptrtoint ptr %Adapter.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %Adapter.i, align 4
  %tobool1.not.i.not = icmp eq ptr %3, null
  br i1 %tobool1.not.i.not, label %halbtcoutsrc_IsBtCoexistAvailable.exit.return_crit_edge, label %if.end

halbtcoutsrc_IsBtCoexistAvailable.exit.return_crit_edge: ; preds = %halbtcoutsrc_IsBtCoexistAvailable.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %halbtcoutsrc_IsBtCoexistAvailable.exit
  %btdmAntNum = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 2, i32 2
  %4 = ptrtoint ptr %btdmAntNum to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %btdmAntNum, align 2
  %6 = zext i8 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.12)
  switch i8 %5, label %if.end.if.end10_crit_edge [
    i8 2, label %if.then2
    i8 1, label %if.then8
  ]

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @EXhalbtc8723b2ant_HaltNotify(ptr noundef %pBtCoexist) #9
  br label %if.end10

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @EXhalbtc8723b1ant_HaltNotify(ptr noundef %pBtCoexist) #9
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.then2, %if.end.if.end10_crit_edge
  %7 = ptrtoint ptr %pBtCoexist to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %pBtCoexist, align 4
  br label %return

return:                                           ; preds = %if.end10, %halbtcoutsrc_IsBtCoexistAvailable.exit.return_crit_edge, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @EXhalbtc8723b2ant_HaltNotify(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @EXhalbtc8723b1ant_HaltNotify(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @EXhalbtcoutsrc_PnpNotify(ptr noundef %pBtCoexist, i8 noundef zeroext %pnpState) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pBtCoexist to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pBtCoexist, align 4, !range !17
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i = icmp eq i8 %1, 0
  br i1 %tobool.not.i, label %entry.if.end10_crit_edge, label %halbtcoutsrc_IsBtCoexistAvailable.exit

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

halbtcoutsrc_IsBtCoexistAvailable.exit:           ; preds = %entry
  %Adapter.i = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 1
  %2 = ptrtoint ptr %Adapter.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %Adapter.i, align 4
  %tobool1.not.i.not = icmp eq ptr %3, null
  br i1 %tobool1.not.i.not, label %halbtcoutsrc_IsBtCoexistAvailable.exit.if.end10_crit_edge, label %if.end

halbtcoutsrc_IsBtCoexistAvailable.exit.if.end10_crit_edge: ; preds = %halbtcoutsrc_IsBtCoexistAvailable.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

if.end:                                           ; preds = %halbtcoutsrc_IsBtCoexistAvailable.exit
  %btdmAntNum = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 2, i32 2
  %4 = ptrtoint ptr %btdmAntNum to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %btdmAntNum, align 2
  %6 = zext i8 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.13)
  switch i8 %5, label %if.end.if.end10_crit_edge [
    i8 1, label %if.then2
    i8 2, label %if.then8
  ]

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @EXhalbtc8723b1ant_PnpNotify(ptr noundef %pBtCoexist, i8 noundef zeroext %pnpState) #9
  br label %if.end10

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @EXhalbtc8723b2ant_PnpNotify(ptr noundef %pBtCoexist, i8 noundef zeroext %pnpState) #9
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.then2, %if.end.if.end10_crit_edge, %halbtcoutsrc_IsBtCoexistAvailable.exit.if.end10_crit_edge, %entry.if.end10_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @EXhalbtc8723b1ant_PnpNotify(ptr noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @EXhalbtc8723b2ant_PnpNotify(ptr noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @EXhalbtcoutsrc_Periodical(ptr noundef %pBtCoexist) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pBtCoexist to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pBtCoexist, align 4, !range !17
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i = icmp eq i8 %1, 0
  br i1 %tobool.not.i, label %entry.if.end10_crit_edge, label %halbtcoutsrc_IsBtCoexistAvailable.exit

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

halbtcoutsrc_IsBtCoexistAvailable.exit:           ; preds = %entry
  %Adapter.i = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 1
  %2 = ptrtoint ptr %Adapter.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %Adapter.i, align 4
  %tobool1.not.i.not = icmp eq ptr %3, null
  br i1 %tobool1.not.i.not, label %halbtcoutsrc_IsBtCoexistAvailable.exit.if.end10_crit_edge, label %if.end

halbtcoutsrc_IsBtCoexistAvailable.exit.if.end10_crit_edge: ; preds = %halbtcoutsrc_IsBtCoexistAvailable.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

if.end:                                           ; preds = %halbtcoutsrc_IsBtCoexistAvailable.exit
  %cntPeriodical = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 10, i32 12
  %4 = ptrtoint ptr %cntPeriodical to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cntPeriodical, align 4
  %inc = add i32 %5, 1
  store i32 %inc, ptr %cntPeriodical, align 4
  %btdmAntNum = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 2, i32 2
  %6 = ptrtoint ptr %btdmAntNum to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %btdmAntNum, align 2
  %8 = zext i8 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.14)
  switch i8 %7, label %if.end.if.end10_crit_edge [
    i8 2, label %if.then2
    i8 1, label %if.then8
  ]

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @EXhalbtc8723b2ant_Periodical(ptr noundef %pBtCoexist) #9
  br label %if.end10

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @EXhalbtc8723b1ant_Periodical(ptr noundef %pBtCoexist) #9
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.then2, %if.end.if.end10_crit_edge, %halbtcoutsrc_IsBtCoexistAvailable.exit.if.end10_crit_edge, %entry.if.end10_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @EXhalbtc8723b2ant_Periodical(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @EXhalbtc8723b1ant_Periodical(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @EXhalbtcoutsrc_SetChipType(i8 zeroext %chipType) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  store i8 5, ptr getelementptr inbounds (%struct.btc_coexist, ptr @GLBtCoexist, i32 0, i32 2), align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @EXhalbtcoutsrc_SetAntNum(i8 noundef zeroext %type, i8 noundef zeroext %antNum) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i8 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.15)
  switch i8 %type, label %entry.if.end12_crit_edge [
    i8 0, label %if.then
    i8 1, label %entry.if.end12.sink.split_crit_edge
    i8 2, label %entry.if.end12.sink.split_crit_edge18
  ]

entry.if.end12.sink.split_crit_edge18:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12.sink.split

entry.if.end12.sink.split_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12.sink.split

entry.if.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  store i8 %antNum, ptr getelementptr inbounds (%struct.btc_coexist, ptr @GLBtCoexist, i32 0, i32 2, i32 1), align 1
  br label %if.end12.sink.split

if.end12.sink.split:                              ; preds = %if.then, %entry.if.end12.sink.split_crit_edge, %entry.if.end12.sink.split_crit_edge18
  store i8 %antNum, ptr getelementptr inbounds (%struct.btc_coexist, ptr @GLBtCoexist, i32 0, i32 2, i32 2), align 2
  br label %if.end12

if.end12:                                         ; preds = %if.end12.sink.split, %entry.if.end12_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @EXhalbtcoutsrc_SetSingleAntPath(i8 noundef zeroext %singleAntPath) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  store i8 %singleAntPath, ptr getelementptr inbounds (%struct.btc_coexist, ptr @GLBtCoexist, i32 0, i32 2, i32 4), align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @hal_btcoex_SetBTCoexist(ptr nocapture noundef readonly %padapter, i8 noundef zeroext %bBtExist) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %HalData = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 18
  %0 = ptrtoint ptr %HalData to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %HalData, align 8
  %bt_coexist = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 142
  %2 = ptrtoint ptr %bt_coexist to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %bBtExist, ptr %bt_coexist, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @hal_btcoex_IsBtExist(ptr nocapture noundef readonly %padapter) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %HalData = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 18
  %0 = ptrtoint ptr %HalData to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %HalData, align 8
  %bt_coexist = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 142
  %2 = ptrtoint ptr %bt_coexist to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %bt_coexist, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool = icmp ne i8 %3, 0
  ret i1 %tobool
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @hal_btcoex_IsBtDisabled(ptr nocapture noundef readonly %padapter) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %HalData.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 18
  %0 = ptrtoint ptr %HalData.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %HalData.i, align 8
  %bt_coexist.i = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 142
  %2 = ptrtoint ptr %bt_coexist.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %bt_coexist.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.i.not = icmp eq i8 %3, 0
  br i1 %tobool.i.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %4 = load i8, ptr getelementptr inbounds (%struct.btc_coexist, ptr @GLBtCoexist, i32 0, i32 3), align 4, !range !17
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp ne i8 %4, 0
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i1 [ true, %entry.return_crit_edge ], [ %tobool.not, %if.end ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @hal_btcoex_SetChipType(ptr nocapture noundef readonly %padapter, i8 noundef zeroext %chipType) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %HalData = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 18
  %0 = ptrtoint ptr %HalData to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %HalData, align 8
  %btChipType = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 142, i32 2
  %2 = ptrtoint ptr %btChipType to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %chipType, ptr %btChipType, align 2
  store i8 5, ptr getelementptr inbounds (%struct.btc_coexist, ptr @GLBtCoexist, i32 0, i32 2), align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @hal_btcoex_SetPgAntNum(ptr nocapture noundef readonly %padapter, i8 noundef zeroext %antNum) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %HalData = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 18
  %0 = ptrtoint ptr %HalData to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %HalData, align 8
  %btTotalAntNum = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 142, i32 1
  %2 = ptrtoint ptr %btTotalAntNum to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %antNum, ptr %btTotalAntNum, align 1
  store i8 %antNum, ptr getelementptr inbounds (%struct.btc_coexist, ptr @GLBtCoexist, i32 0, i32 2, i32 1), align 1
  store i8 %antNum, ptr getelementptr inbounds (%struct.btc_coexist, ptr @GLBtCoexist, i32 0, i32 2, i32 2), align 2
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @hal_btcoex_SetSingleAntPath(ptr nocapture noundef readnone %padapter, i8 noundef zeroext %singleAntPath) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  store i8 %singleAntPath, ptr getelementptr inbounds (%struct.btc_coexist, ptr @GLBtCoexist, i32 0, i32 2, i32 4), align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hal_btcoex_PowerOnSetting(ptr nocapture noundef readnone %padapter) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i8, ptr @GLBtCoexist, align 4, !range !17
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool.not.i.i = icmp eq i8 %0, 0
  br i1 %tobool.not.i.i, label %entry.EXhalbtcoutsrc_PowerOnSetting.exit_crit_edge, label %halbtcoutsrc_IsBtCoexistAvailable.exit.i

entry.EXhalbtcoutsrc_PowerOnSetting.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %EXhalbtcoutsrc_PowerOnSetting.exit

halbtcoutsrc_IsBtCoexistAvailable.exit.i:         ; preds = %entry
  %1 = load ptr, ptr getelementptr inbounds (%struct.btc_coexist, ptr @GLBtCoexist, i32 0, i32 1), align 4
  %tobool1.not.i.not.i = icmp eq ptr %1, null
  br i1 %tobool1.not.i.not.i, label %halbtcoutsrc_IsBtCoexistAvailable.exit.i.EXhalbtcoutsrc_PowerOnSetting.exit_crit_edge, label %if.end.i

halbtcoutsrc_IsBtCoexistAvailable.exit.i.EXhalbtcoutsrc_PowerOnSetting.exit_crit_edge: ; preds = %halbtcoutsrc_IsBtCoexistAvailable.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %EXhalbtcoutsrc_PowerOnSetting.exit

if.end.i:                                         ; preds = %halbtcoutsrc_IsBtCoexistAvailable.exit.i
  %2 = load i8, ptr getelementptr inbounds (%struct.btc_coexist, ptr @GLBtCoexist, i32 0, i32 2, i32 2), align 2
  %3 = zext i8 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.16)
  switch i8 %2, label %if.end.i.EXhalbtcoutsrc_PowerOnSetting.exit_crit_edge [
    i8 2, label %if.then2.i
    i8 1, label %if.then8.i
  ]

if.end.i.EXhalbtcoutsrc_PowerOnSetting.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %EXhalbtcoutsrc_PowerOnSetting.exit

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @EXhalbtc8723b2ant_PowerOnSetting(ptr noundef nonnull @GLBtCoexist) #9
  br label %EXhalbtcoutsrc_PowerOnSetting.exit

if.then8.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @EXhalbtc8723b1ant_PowerOnSetting(ptr noundef nonnull @GLBtCoexist) #9
  br label %EXhalbtcoutsrc_PowerOnSetting.exit

EXhalbtcoutsrc_PowerOnSetting.exit:               ; preds = %if.then8.i, %if.then2.i, %if.end.i.EXhalbtcoutsrc_PowerOnSetting.exit_crit_edge, %halbtcoutsrc_IsBtCoexistAvailable.exit.i.EXhalbtcoutsrc_PowerOnSetting.exit_crit_edge, %entry.EXhalbtcoutsrc_PowerOnSetting.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hal_btcoex_InitHwConfig(ptr nocapture noundef readonly %padapter, i8 noundef zeroext %bWifiOnly) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %HalData.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 18
  %0 = ptrtoint ptr %HalData.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %HalData.i, align 8
  %bt_coexist.i = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 142
  %2 = ptrtoint ptr %bt_coexist.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %bt_coexist.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.i.not = icmp eq i8 %3, 0
  br i1 %tobool.i.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %entry
  %4 = load i8, ptr @GLBtCoexist, align 4, !range !17
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not.i.i = icmp eq i8 %4, 0
  br i1 %tobool.not.i.i, label %if.end.return_crit_edge, label %halbtcoutsrc_IsBtCoexistAvailable.exit.i

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

halbtcoutsrc_IsBtCoexistAvailable.exit.i:         ; preds = %if.end
  %5 = load ptr, ptr getelementptr inbounds (%struct.btc_coexist, ptr @GLBtCoexist, i32 0, i32 1), align 4
  %tobool1.not.i.not.i = icmp eq ptr %5, null
  br i1 %tobool1.not.i.not.i, label %halbtcoutsrc_IsBtCoexistAvailable.exit.i.return_crit_edge, label %if.end.i

halbtcoutsrc_IsBtCoexistAvailable.exit.i.return_crit_edge: ; preds = %halbtcoutsrc_IsBtCoexistAvailable.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end.i:                                         ; preds = %halbtcoutsrc_IsBtCoexistAvailable.exit.i
  %6 = load i32, ptr getelementptr inbounds (%struct.btc_coexist, ptr @GLBtCoexist, i32 0, i32 10, i32 2), align 4
  %inc.i = add i32 %6, 1
  store i32 %inc.i, ptr getelementptr inbounds (%struct.btc_coexist, ptr @GLBtCoexist, i32 0, i32 10, i32 2), align 4
  %7 = load i8, ptr getelementptr inbounds (%struct.btc_coexist, ptr @GLBtCoexist, i32 0, i32 2, i32 2), align 2
  %8 = zext i8 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.17)
  switch i8 %7, label %if.end.i.EXhalbtcoutsrc_InitHwConfig.exit_crit_edge [
    i8 2, label %if.then2.i
    i8 1, label %if.then9.i
  ]

if.end.i.EXhalbtcoutsrc_InitHwConfig.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %EXhalbtcoutsrc_InitHwConfig.exit

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bWifiOnly)
  %tobool3.i = icmp ne i8 %bWifiOnly, 0
  tail call void @EXhalbtc8723b2ant_InitHwConfig(ptr noundef nonnull @GLBtCoexist, i1 noundef zeroext %tobool3.i) #9
  br label %EXhalbtcoutsrc_InitHwConfig.exit

if.then9.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bWifiOnly)
  %tobool10.i = icmp ne i8 %bWifiOnly, 0
  tail call void @EXhalbtc8723b1ant_InitHwConfig(ptr noundef nonnull @GLBtCoexist, i1 noundef zeroext %tobool10.i) #9
  br label %EXhalbtcoutsrc_InitHwConfig.exit

EXhalbtcoutsrc_InitHwConfig.exit:                 ; preds = %if.then9.i, %if.then2.i, %if.end.i.EXhalbtcoutsrc_InitHwConfig.exit_crit_edge
  %.pr = load i8, ptr @GLBtCoexist, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr)
  %tobool.not.i.i1 = icmp eq i8 %.pr, 0
  br i1 %tobool.not.i.i1, label %EXhalbtcoutsrc_InitHwConfig.exit.return_crit_edge, label %halbtcoutsrc_IsBtCoexistAvailable.exit.i3

EXhalbtcoutsrc_InitHwConfig.exit.return_crit_edge: ; preds = %EXhalbtcoutsrc_InitHwConfig.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

halbtcoutsrc_IsBtCoexistAvailable.exit.i3:        ; preds = %EXhalbtcoutsrc_InitHwConfig.exit
  %.pr10 = load ptr, ptr getelementptr inbounds (%struct.btc_coexist, ptr @GLBtCoexist, i32 0, i32 1), align 4
  %tobool1.not.i.not.i2 = icmp eq ptr %.pr10, null
  br i1 %tobool1.not.i.not.i2, label %halbtcoutsrc_IsBtCoexistAvailable.exit.i3.return_crit_edge, label %if.end.i5

halbtcoutsrc_IsBtCoexistAvailable.exit.i3.return_crit_edge: ; preds = %halbtcoutsrc_IsBtCoexistAvailable.exit.i3
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end.i5:                                        ; preds = %halbtcoutsrc_IsBtCoexistAvailable.exit.i3
  %9 = load i32, ptr getelementptr inbounds (%struct.btc_coexist, ptr @GLBtCoexist, i32 0, i32 10, i32 3), align 4
  %inc.i4 = add i32 %9, 1
  store i32 %inc.i4, ptr getelementptr inbounds (%struct.btc_coexist, ptr @GLBtCoexist, i32 0, i32 10, i32 3), align 4
  %10 = load i8, ptr getelementptr inbounds (%struct.btc_coexist, ptr @GLBtCoexist, i32 0, i32 2, i32 2), align 2
  %11 = zext i8 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.18)
  switch i8 %10, label %if.end.i5.if.end10.i_crit_edge [
    i8 2, label %if.then2.i6
    i8 1, label %if.then8.i
  ]

if.end.i5.if.end10.i_crit_edge:                   ; preds = %if.end.i5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10.i

if.then2.i6:                                      ; preds = %if.end.i5
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @EXhalbtc8723b2ant_InitCoexDm(ptr noundef nonnull @GLBtCoexist) #9
  br label %if.end10.i

if.then8.i:                                       ; preds = %if.end.i5
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @EXhalbtc8723b1ant_InitCoexDm(ptr noundef nonnull @GLBtCoexist) #9
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.then8.i, %if.then2.i6, %if.end.i5.if.end10.i_crit_edge
  store i8 1, ptr getelementptr inbounds (%struct.btc_coexist, ptr @GLBtCoexist, i32 0, i32 7), align 4
  br label %return

return:                                           ; preds = %if.end10.i, %halbtcoutsrc_IsBtCoexistAvailable.exit.i3.return_crit_edge, %EXhalbtcoutsrc_InitHwConfig.exit.return_crit_edge, %halbtcoutsrc_IsBtCoexistAvailable.exit.i.return_crit_edge, %if.end.return_crit_edge, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hal_btcoex_IpsNotify(ptr nocapture noundef readnone %padapter, i8 noundef zeroext %type) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i8, ptr @GLBtCoexist, align 4, !range !17
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool.not.i.i = icmp eq i8 %0, 0
  br i1 %tobool.not.i.i, label %entry.EXhalbtcoutsrc_IpsNotify.exit_crit_edge, label %halbtcoutsrc_IsBtCoexistAvailable.exit.i

entry.EXhalbtcoutsrc_IpsNotify.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %EXhalbtcoutsrc_IpsNotify.exit

halbtcoutsrc_IsBtCoexistAvailable.exit.i:         ; preds = %entry
  %1 = load ptr, ptr getelementptr inbounds (%struct.btc_coexist, ptr @GLBtCoexist, i32 0, i32 1), align 4
  %tobool1.not.i.not.i = icmp eq ptr %1, null
  br i1 %tobool1.not.i.not.i, label %halbtcoutsrc_IsBtCoexistAvailable.exit.i.EXhalbtcoutsrc_IpsNotify.exit_crit_edge, label %if.end.i

halbtcoutsrc_IsBtCoexistAvailable.exit.i.EXhalbtcoutsrc_IpsNotify.exit_crit_edge: ; preds = %halbtcoutsrc_IsBtCoexistAvailable.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %EXhalbtcoutsrc_IpsNotify.exit

if.end.i:                                         ; preds = %halbtcoutsrc_IsBtCoexistAvailable.exit.i
  %2 = load i32, ptr getelementptr inbounds (%struct.btc_coexist, ptr @GLBtCoexist, i32 0, i32 10, i32 4), align 4
  %inc.i = add i32 %2, 1
  store i32 %inc.i, ptr getelementptr inbounds (%struct.btc_coexist, ptr @GLBtCoexist, i32 0, i32 10, i32 4), align 4
  %3 = load i8, ptr getelementptr inbounds (%struct.btc_coexist, ptr @GLBtCoexist, i32 0, i32 9), align 2, !range !17
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool1.not.i = icmp eq i8 %3, 0
  br i1 %tobool1.not.i, label %if.end3.i, label %if.end.i.EXhalbtcoutsrc_IpsNotify.exit_crit_edge

if.end.i.EXhalbtcoutsrc_IpsNotify.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %EXhalbtcoutsrc_IpsNotify.exit

if.end3.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %type)
  %cmp.i = icmp ne i8 %type, 0
  %..i = zext i1 %cmp.i to i8
  %4 = load i8, ptr getelementptr inbounds (%struct.btc_coexist, ptr @GLBtCoexist, i32 0, i32 2, i32 2), align 2
  %5 = zext i8 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.19)
  switch i8 %4, label %if.end3.i.EXhalbtcoutsrc_IpsNotify.exit_crit_edge [
    i8 2, label %if.then10.i
    i8 1, label %if.then17.i
  ]

if.end3.i.EXhalbtcoutsrc_IpsNotify.exit_crit_edge: ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %EXhalbtcoutsrc_IpsNotify.exit

if.then10.i:                                      ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @EXhalbtc8723b2ant_IpsNotify(ptr noundef nonnull @GLBtCoexist, i8 noundef zeroext %..i) #9
  br label %EXhalbtcoutsrc_IpsNotify.exit

if.then17.i:                                      ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @EXhalbtc8723b1ant_IpsNotify(ptr noundef nonnull @GLBtCoexist, i8 noundef zeroext %..i) #9
  br label %EXhalbtcoutsrc_IpsNotify.exit

EXhalbtcoutsrc_IpsNotify.exit:                    ; preds = %if.then17.i, %if.then10.i, %if.end3.i.EXhalbtcoutsrc_IpsNotify.exit_crit_edge, %if.end.i.EXhalbtcoutsrc_IpsNotify.exit_crit_edge, %halbtcoutsrc_IsBtCoexistAvailable.exit.i.EXhalbtcoutsrc_IpsNotify.exit_crit_edge, %entry.EXhalbtcoutsrc_IpsNotify.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hal_btcoex_LpsNotify(ptr nocapture noundef readnone %padapter, i8 noundef zeroext %type) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i8, ptr @GLBtCoexist, align 4, !range !17
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool.not.i.i = icmp eq i8 %0, 0
  br i1 %tobool.not.i.i, label %entry.EXhalbtcoutsrc_LpsNotify.exit_crit_edge, label %halbtcoutsrc_IsBtCoexistAvailable.exit.i

entry.EXhalbtcoutsrc_LpsNotify.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %EXhalbtcoutsrc_LpsNotify.exit

halbtcoutsrc_IsBtCoexistAvailable.exit.i:         ; preds = %entry
  %1 = load ptr, ptr getelementptr inbounds (%struct.btc_coexist, ptr @GLBtCoexist, i32 0, i32 1), align 4
  %tobool1.not.i.not.i = icmp eq ptr %1, null
  br i1 %tobool1.not.i.not.i, label %halbtcoutsrc_IsBtCoexistAvailable.exit.i.EXhalbtcoutsrc_LpsNotify.exit_crit_edge, label %if.end.i

halbtcoutsrc_IsBtCoexistAvailable.exit.i.EXhalbtcoutsrc_LpsNotify.exit_crit_edge: ; preds = %halbtcoutsrc_IsBtCoexistAvailable.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %EXhalbtcoutsrc_LpsNotify.exit

if.end.i:                                         ; preds = %halbtcoutsrc_IsBtCoexistAvailable.exit.i
  %2 = load i32, ptr getelementptr inbounds (%struct.btc_coexist, ptr @GLBtCoexist, i32 0, i32 10, i32 5), align 4
  %inc.i = add i32 %2, 1
  store i32 %inc.i, ptr getelementptr inbounds (%struct.btc_coexist, ptr @GLBtCoexist, i32 0, i32 10, i32 5), align 4
  %3 = load i8, ptr getelementptr inbounds (%struct.btc_coexist, ptr @GLBtCoexist, i32 0, i32 9), align 2, !range !17
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool1.not.i = icmp eq i8 %3, 0
  br i1 %tobool1.not.i, label %if.end3.i, label %if.end.i.EXhalbtcoutsrc_LpsNotify.exit_crit_edge

if.end.i.EXhalbtcoutsrc_LpsNotify.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %EXhalbtcoutsrc_LpsNotify.exit

if.end3.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %type)
  %cmp.i = icmp ne i8 %type, 1
  %..i = zext i1 %cmp.i to i8
  %4 = load i8, ptr getelementptr inbounds (%struct.btc_coexist, ptr @GLBtCoexist, i32 0, i32 2, i32 2), align 2
  %5 = zext i8 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.20)
  switch i8 %4, label %if.end3.i.EXhalbtcoutsrc_LpsNotify.exit_crit_edge [
    i8 2, label %if.then10.i
    i8 1, label %if.then17.i
  ]

if.end3.i.EXhalbtcoutsrc_LpsNotify.exit_crit_edge: ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %EXhalbtcoutsrc_LpsNotify.exit

if.then10.i:                                      ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @EXhalbtc8723b2ant_LpsNotify(ptr noundef nonnull @GLBtCoexist, i8 noundef zeroext %..i) #9
  br label %EXhalbtcoutsrc_LpsNotify.exit

if.then17.i:                                      ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @EXhalbtc8723b1ant_LpsNotify(ptr noundef nonnull @GLBtCoexist, i8 noundef zeroext %..i) #9
  br label %EXhalbtcoutsrc_LpsNotify.exit

EXhalbtcoutsrc_LpsNotify.exit:                    ; preds = %if.then17.i, %if.then10.i, %if.end3.i.EXhalbtcoutsrc_LpsNotify.exit_crit_edge, %if.end.i.EXhalbtcoutsrc_LpsNotify.exit_crit_edge, %halbtcoutsrc_IsBtCoexistAvailable.exit.i.EXhalbtcoutsrc_LpsNotify.exit_crit_edge, %entry.EXhalbtcoutsrc_LpsNotify.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hal_btcoex_ScanNotify(ptr nocapture noundef readnone %padapter, i8 noundef zeroext %type) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i8, ptr @GLBtCoexist, align 4, !range !17
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool.not.i.i = icmp eq i8 %0, 0
  br i1 %tobool.not.i.i, label %entry.EXhalbtcoutsrc_ScanNotify.exit_crit_edge, label %halbtcoutsrc_IsBtCoexistAvailable.exit.i

entry.EXhalbtcoutsrc_ScanNotify.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %EXhalbtcoutsrc_ScanNotify.exit

halbtcoutsrc_IsBtCoexistAvailable.exit.i:         ; preds = %entry
  %1 = load ptr, ptr getelementptr inbounds (%struct.btc_coexist, ptr @GLBtCoexist, i32 0, i32 1), align 4
  %tobool1.not.i.not.i = icmp eq ptr %1, null
  br i1 %tobool1.not.i.not.i, label %halbtcoutsrc_IsBtCoexistAvailable.exit.i.EXhalbtcoutsrc_ScanNotify.exit_crit_edge, label %if.end.i

halbtcoutsrc_IsBtCoexistAvailable.exit.i.EXhalbtcoutsrc_ScanNotify.exit_crit_edge: ; preds = %halbtcoutsrc_IsBtCoexistAvailable.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %EXhalbtcoutsrc_ScanNotify.exit

if.end.i:                                         ; preds = %halbtcoutsrc_IsBtCoexistAvailable.exit.i
  %2 = load i32, ptr getelementptr inbounds (%struct.btc_coexist, ptr @GLBtCoexist, i32 0, i32 10, i32 6), align 4
  %inc.i = add i32 %2, 1
  store i32 %inc.i, ptr getelementptr inbounds (%struct.btc_coexist, ptr @GLBtCoexist, i32 0, i32 10, i32 6), align 4
  %3 = load i8, ptr getelementptr inbounds (%struct.btc_coexist, ptr @GLBtCoexist, i32 0, i32 9), align 2, !range !17
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool1.not.i = icmp eq i8 %3, 0
  br i1 %tobool1.not.i, label %if.end3.i, label %if.end.i.EXhalbtcoutsrc_ScanNotify.exit_crit_edge

if.end.i.EXhalbtcoutsrc_ScanNotify.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %EXhalbtcoutsrc_ScanNotify.exit

if.end3.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %type)
  %tobool4.not.i = icmp ne i8 %type, 0
  %..i = zext i1 %tobool4.not.i to i8
  store i1 %tobool4.not.i, ptr @GLBtcWiFiInScanState, align 1
  %4 = load i8, ptr getelementptr inbounds (%struct.btc_coexist, ptr @GLBtCoexist, i32 0, i32 2, i32 2), align 2
  %5 = zext i8 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.21)
  switch i8 %4, label %if.end3.i.EXhalbtcoutsrc_ScanNotify.exit_crit_edge [
    i8 2, label %if.then8.i
    i8 1, label %if.then15.i
  ]

if.end3.i.EXhalbtcoutsrc_ScanNotify.exit_crit_edge: ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %EXhalbtcoutsrc_ScanNotify.exit

if.then8.i:                                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @EXhalbtc8723b2ant_ScanNotify(ptr noundef nonnull @GLBtCoexist, i8 noundef zeroext %..i) #9
  br label %EXhalbtcoutsrc_ScanNotify.exit

if.then15.i:                                      ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @EXhalbtc8723b1ant_ScanNotify(ptr noundef nonnull @GLBtCoexist, i8 noundef zeroext %..i) #9
  br label %EXhalbtcoutsrc_ScanNotify.exit

EXhalbtcoutsrc_ScanNotify.exit:                   ; preds = %if.then15.i, %if.then8.i, %if.end3.i.EXhalbtcoutsrc_ScanNotify.exit_crit_edge, %if.end.i.EXhalbtcoutsrc_ScanNotify.exit_crit_edge, %halbtcoutsrc_IsBtCoexistAvailable.exit.i.EXhalbtcoutsrc_ScanNotify.exit_crit_edge, %entry.EXhalbtcoutsrc_ScanNotify.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hal_btcoex_ConnectNotify(ptr nocapture noundef readnone %padapter, i8 noundef zeroext %action) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i8, ptr @GLBtCoexist, align 4, !range !17
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool.not.i.i = icmp eq i8 %0, 0
  br i1 %tobool.not.i.i, label %entry.EXhalbtcoutsrc_ConnectNotify.exit_crit_edge, label %halbtcoutsrc_IsBtCoexistAvailable.exit.i

entry.EXhalbtcoutsrc_ConnectNotify.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %EXhalbtcoutsrc_ConnectNotify.exit

halbtcoutsrc_IsBtCoexistAvailable.exit.i:         ; preds = %entry
  %1 = load ptr, ptr getelementptr inbounds (%struct.btc_coexist, ptr @GLBtCoexist, i32 0, i32 1), align 4
  %tobool1.not.i.not.i = icmp eq ptr %1, null
  br i1 %tobool1.not.i.not.i, label %halbtcoutsrc_IsBtCoexistAvailable.exit.i.EXhalbtcoutsrc_ConnectNotify.exit_crit_edge, label %if.end.i

halbtcoutsrc_IsBtCoexistAvailable.exit.i.EXhalbtcoutsrc_ConnectNotify.exit_crit_edge: ; preds = %halbtcoutsrc_IsBtCoexistAvailable.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %EXhalbtcoutsrc_ConnectNotify.exit

if.end.i:                                         ; preds = %halbtcoutsrc_IsBtCoexistAvailable.exit.i
  %2 = load i32, ptr getelementptr inbounds (%struct.btc_coexist, ptr @GLBtCoexist, i32 0, i32 10, i32 7), align 4
  %inc.i = add i32 %2, 1
  store i32 %inc.i, ptr getelementptr inbounds (%struct.btc_coexist, ptr @GLBtCoexist, i32 0, i32 10, i32 7), align 4
  %3 = load i8, ptr getelementptr inbounds (%struct.btc_coexist, ptr @GLBtCoexist, i32 0, i32 9), align 2, !range !17
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool1.not.i = icmp eq i8 %3, 0
  br i1 %tobool1.not.i, label %if.end3.i, label %if.end.i.EXhalbtcoutsrc_ConnectNotify.exit_crit_edge

if.end.i.EXhalbtcoutsrc_ConnectNotify.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %EXhalbtcoutsrc_ConnectNotify.exit

if.end3.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %action)
  %tobool4.not.i = icmp ne i8 %action, 0
  %..i = zext i1 %tobool4.not.i to i8
  %4 = load i8, ptr getelementptr inbounds (%struct.btc_coexist, ptr @GLBtCoexist, i32 0, i32 2, i32 2), align 2
  %5 = zext i8 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.22)
  switch i8 %4, label %if.end3.i.EXhalbtcoutsrc_ConnectNotify.exit_crit_edge [
    i8 2, label %if.then8.i
    i8 1, label %if.then15.i
  ]

if.end3.i.EXhalbtcoutsrc_ConnectNotify.exit_crit_edge: ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %EXhalbtcoutsrc_ConnectNotify.exit

if.then8.i:                                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @EXhalbtc8723b2ant_ConnectNotify(ptr noundef nonnull @GLBtCoexist, i8 noundef zeroext %..i) #9
  br label %EXhalbtcoutsrc_ConnectNotify.exit

if.then15.i:                                      ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @EXhalbtc8723b1ant_ConnectNotify(ptr noundef nonnull @GLBtCoexist, i8 noundef zeroext %..i) #9
  br label %EXhalbtcoutsrc_ConnectNotify.exit

EXhalbtcoutsrc_ConnectNotify.exit:                ; preds = %if.then15.i, %if.then8.i, %if.end3.i.EXhalbtcoutsrc_ConnectNotify.exit_crit_edge, %if.end.i.EXhalbtcoutsrc_ConnectNotify.exit_crit_edge, %halbtcoutsrc_IsBtCoexistAvailable.exit.i.EXhalbtcoutsrc_ConnectNotify.exit_crit_edge, %entry.EXhalbtcoutsrc_ConnectNotify.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hal_btcoex_MediaStatusNotify(ptr nocapture noundef readnone %padapter, i8 noundef zeroext %mediaStatus) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i8, ptr @GLBtCoexist, align 4, !range !17
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool.not.i.i = icmp eq i8 %0, 0
  br i1 %tobool.not.i.i, label %entry.EXhalbtcoutsrc_MediaStatusNotify.exit_crit_edge, label %halbtcoutsrc_IsBtCoexistAvailable.exit.i

entry.EXhalbtcoutsrc_MediaStatusNotify.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %EXhalbtcoutsrc_MediaStatusNotify.exit

halbtcoutsrc_IsBtCoexistAvailable.exit.i:         ; preds = %entry
  %1 = load ptr, ptr getelementptr inbounds (%struct.btc_coexist, ptr @GLBtCoexist, i32 0, i32 1), align 4
  %tobool1.not.i.not.i = icmp eq ptr %1, null
  br i1 %tobool1.not.i.not.i, label %halbtcoutsrc_IsBtCoexistAvailable.exit.i.EXhalbtcoutsrc_MediaStatusNotify.exit_crit_edge, label %if.end.i

halbtcoutsrc_IsBtCoexistAvailable.exit.i.EXhalbtcoutsrc_MediaStatusNotify.exit_crit_edge: ; preds = %halbtcoutsrc_IsBtCoexistAvailable.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %EXhalbtcoutsrc_MediaStatusNotify.exit

if.end.i:                                         ; preds = %halbtcoutsrc_IsBtCoexistAvailable.exit.i
  %2 = load i32, ptr getelementptr inbounds (%struct.btc_coexist, ptr @GLBtCoexist, i32 0, i32 10, i32 8), align 4
  %inc.i = add i32 %2, 1
  store i32 %inc.i, ptr getelementptr inbounds (%struct.btc_coexist, ptr @GLBtCoexist, i32 0, i32 10, i32 8), align 4
  %3 = load i8, ptr getelementptr inbounds (%struct.btc_coexist, ptr @GLBtCoexist, i32 0, i32 9), align 2, !range !17
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool1.not.i = icmp eq i8 %3, 0
  br i1 %tobool1.not.i, label %if.end3.i, label %if.end.i.EXhalbtcoutsrc_MediaStatusNotify.exit_crit_edge

if.end.i.EXhalbtcoutsrc_MediaStatusNotify.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %EXhalbtcoutsrc_MediaStatusNotify.exit

if.end3.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %mediaStatus)
  %cmp.i = icmp eq i8 %mediaStatus, 1
  %..i = zext i1 %cmp.i to i8
  %4 = load i8, ptr getelementptr inbounds (%struct.btc_coexist, ptr @GLBtCoexist, i32 0, i32 2, i32 2), align 2
  %5 = zext i8 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.23)
  switch i8 %4, label %if.end3.i.EXhalbtcoutsrc_MediaStatusNotify.exit_crit_edge [
    i8 2, label %if.then8.i
    i8 1, label %if.then15.i
  ]

if.end3.i.EXhalbtcoutsrc_MediaStatusNotify.exit_crit_edge: ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %EXhalbtcoutsrc_MediaStatusNotify.exit

if.then8.i:                                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @EXhalbtc8723b2ant_MediaStatusNotify(ptr noundef nonnull @GLBtCoexist, i8 noundef zeroext %..i) #9
  br label %EXhalbtcoutsrc_MediaStatusNotify.exit

if.then15.i:                                      ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @EXhalbtc8723b1ant_MediaStatusNotify(ptr noundef nonnull @GLBtCoexist, i8 noundef zeroext %..i) #9
  br label %EXhalbtcoutsrc_MediaStatusNotify.exit

EXhalbtcoutsrc_MediaStatusNotify.exit:            ; preds = %if.then15.i, %if.then8.i, %if.end3.i.EXhalbtcoutsrc_MediaStatusNotify.exit_crit_edge, %if.end.i.EXhalbtcoutsrc_MediaStatusNotify.exit_crit_edge, %halbtcoutsrc_IsBtCoexistAvailable.exit.i.EXhalbtcoutsrc_MediaStatusNotify.exit_crit_edge, %entry.EXhalbtcoutsrc_MediaStatusNotify.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hal_btcoex_SpecialPacketNotify(ptr nocapture noundef readnone %padapter, i8 noundef zeroext %pktType) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i8, ptr @GLBtCoexist, align 4, !range !17
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool.not.i.i = icmp eq i8 %0, 0
  br i1 %tobool.not.i.i, label %entry.EXhalbtcoutsrc_SpecialPacketNotify.exit_crit_edge, label %halbtcoutsrc_IsBtCoexistAvailable.exit.i

entry.EXhalbtcoutsrc_SpecialPacketNotify.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %EXhalbtcoutsrc_SpecialPacketNotify.exit

halbtcoutsrc_IsBtCoexistAvailable.exit.i:         ; preds = %entry
  %1 = load ptr, ptr getelementptr inbounds (%struct.btc_coexist, ptr @GLBtCoexist, i32 0, i32 1), align 4
  %tobool1.not.i.not.i = icmp eq ptr %1, null
  br i1 %tobool1.not.i.not.i, label %halbtcoutsrc_IsBtCoexistAvailable.exit.i.EXhalbtcoutsrc_SpecialPacketNotify.exit_crit_edge, label %if.end.i

halbtcoutsrc_IsBtCoexistAvailable.exit.i.EXhalbtcoutsrc_SpecialPacketNotify.exit_crit_edge: ; preds = %halbtcoutsrc_IsBtCoexistAvailable.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %EXhalbtcoutsrc_SpecialPacketNotify.exit

if.end.i:                                         ; preds = %halbtcoutsrc_IsBtCoexistAvailable.exit.i
  %2 = load i32, ptr getelementptr inbounds (%struct.btc_coexist, ptr @GLBtCoexist, i32 0, i32 10, i32 9), align 4
  %inc.i = add i32 %2, 1
  store i32 %inc.i, ptr getelementptr inbounds (%struct.btc_coexist, ptr @GLBtCoexist, i32 0, i32 10, i32 9), align 4
  %3 = load i8, ptr getelementptr inbounds (%struct.btc_coexist, ptr @GLBtCoexist, i32 0, i32 9), align 2, !range !17
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool1.not.i = icmp eq i8 %3, 0
  %pktType.off.i = add i8 %pktType, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %pktType.off.i)
  %switch.i = icmp ult i8 %pktType.off.i, 3
  %or.cond.i = and i1 %switch.i, %tobool1.not.i
  br i1 %or.cond.i, label %if.end18.i, label %if.end.i.EXhalbtcoutsrc_SpecialPacketNotify.exit_crit_edge

if.end.i.EXhalbtcoutsrc_SpecialPacketNotify.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %EXhalbtcoutsrc_SpecialPacketNotify.exit

if.end18.i:                                       ; preds = %if.end.i
  %4 = load i8, ptr getelementptr inbounds (%struct.btc_coexist, ptr @GLBtCoexist, i32 0, i32 2, i32 2), align 2
  %5 = zext i8 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.24)
  switch i8 %4, label %if.end18.i.EXhalbtcoutsrc_SpecialPacketNotify.exit_crit_edge [
    i8 2, label %if.then22.i
    i8 1, label %if.then29.i
  ]

if.end18.i.EXhalbtcoutsrc_SpecialPacketNotify.exit_crit_edge: ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %EXhalbtcoutsrc_SpecialPacketNotify.exit

if.then22.i:                                      ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @EXhalbtc8723b2ant_SpecialPacketNotify(ptr noundef nonnull @GLBtCoexist, i8 noundef zeroext %pktType) #9
  br label %EXhalbtcoutsrc_SpecialPacketNotify.exit

if.then29.i:                                      ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @EXhalbtc8723b1ant_SpecialPacketNotify(ptr noundef nonnull @GLBtCoexist, i8 noundef zeroext %pktType) #9
  br label %EXhalbtcoutsrc_SpecialPacketNotify.exit

EXhalbtcoutsrc_SpecialPacketNotify.exit:          ; preds = %if.then29.i, %if.then22.i, %if.end18.i.EXhalbtcoutsrc_SpecialPacketNotify.exit_crit_edge, %if.end.i.EXhalbtcoutsrc_SpecialPacketNotify.exit_crit_edge, %halbtcoutsrc_IsBtCoexistAvailable.exit.i.EXhalbtcoutsrc_SpecialPacketNotify.exit_crit_edge, %entry.EXhalbtcoutsrc_SpecialPacketNotify.exit_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @hal_btcoex_IQKNotify(ptr nocapture noundef readnone %padapter, i8 noundef zeroext %state) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  store i8 %state, ptr @GLBtcWiFiInIQKState, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hal_btcoex_BtInfoNotify(ptr nocapture noundef readnone %padapter, i8 noundef zeroext %length, ptr noundef %tmpBuf) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i8, ptr @GLBtcWiFiInIQKState, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i8, ptr @GLBtCoexist, align 4, !range !17
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i.i = icmp eq i8 %1, 0
  br i1 %tobool.not.i.i, label %if.end.return_crit_edge, label %halbtcoutsrc_IsBtCoexistAvailable.exit.i

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

halbtcoutsrc_IsBtCoexistAvailable.exit.i:         ; preds = %if.end
  %2 = load ptr, ptr getelementptr inbounds (%struct.btc_coexist, ptr @GLBtCoexist, i32 0, i32 1), align 4
  %tobool1.not.i.not.i = icmp eq ptr %2, null
  br i1 %tobool1.not.i.not.i, label %halbtcoutsrc_IsBtCoexistAvailable.exit.i.return_crit_edge, label %if.end.i

halbtcoutsrc_IsBtCoexistAvailable.exit.i.return_crit_edge: ; preds = %halbtcoutsrc_IsBtCoexistAvailable.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end.i:                                         ; preds = %halbtcoutsrc_IsBtCoexistAvailable.exit.i
  %3 = load i32, ptr getelementptr inbounds (%struct.btc_coexist, ptr @GLBtCoexist, i32 0, i32 10, i32 10), align 4
  %inc.i = add i32 %3, 1
  store i32 %inc.i, ptr getelementptr inbounds (%struct.btc_coexist, ptr @GLBtCoexist, i32 0, i32 10, i32 10), align 4
  %4 = load i8, ptr getelementptr inbounds (%struct.btc_coexist, ptr @GLBtCoexist, i32 0, i32 2, i32 2), align 2
  %5 = zext i8 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.25)
  switch i8 %4, label %if.end.i.return_crit_edge [
    i8 2, label %if.then2.i
    i8 1, label %if.then8.i
  ]

if.end.i.return_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @EXhalbtc8723b2ant_BtInfoNotify(ptr noundef nonnull @GLBtCoexist, ptr noundef %tmpBuf, i8 noundef zeroext %length) #9
  br label %return

if.then8.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @EXhalbtc8723b1ant_BtInfoNotify(ptr noundef nonnull @GLBtCoexist, ptr noundef %tmpBuf, i8 noundef zeroext %length) #9
  br label %return

return:                                           ; preds = %if.then8.i, %if.then2.i, %if.end.i.return_crit_edge, %halbtcoutsrc_IsBtCoexistAvailable.exit.i.return_crit_edge, %if.end.return_crit_edge, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hal_btcoex_SuspendNotify(ptr nocapture noundef readnone %padapter, i8 noundef zeroext %state) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %state)
  %cmp = icmp eq i8 %state, 1
  %. = zext i1 %cmp to i8
  %0 = load i8, ptr @GLBtCoexist, align 4, !range !17
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool.not.i.i = icmp eq i8 %0, 0
  br i1 %tobool.not.i.i, label %entry.EXhalbtcoutsrc_PnpNotify.exit_crit_edge, label %halbtcoutsrc_IsBtCoexistAvailable.exit.i

entry.EXhalbtcoutsrc_PnpNotify.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %EXhalbtcoutsrc_PnpNotify.exit

halbtcoutsrc_IsBtCoexistAvailable.exit.i:         ; preds = %entry
  %1 = load ptr, ptr getelementptr inbounds (%struct.btc_coexist, ptr @GLBtCoexist, i32 0, i32 1), align 4
  %tobool1.not.i.not.i = icmp eq ptr %1, null
  br i1 %tobool1.not.i.not.i, label %halbtcoutsrc_IsBtCoexistAvailable.exit.i.EXhalbtcoutsrc_PnpNotify.exit_crit_edge, label %if.end.i

halbtcoutsrc_IsBtCoexistAvailable.exit.i.EXhalbtcoutsrc_PnpNotify.exit_crit_edge: ; preds = %halbtcoutsrc_IsBtCoexistAvailable.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %EXhalbtcoutsrc_PnpNotify.exit

if.end.i:                                         ; preds = %halbtcoutsrc_IsBtCoexistAvailable.exit.i
  %2 = load i8, ptr getelementptr inbounds (%struct.btc_coexist, ptr @GLBtCoexist, i32 0, i32 2, i32 2), align 2
  %3 = zext i8 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.26)
  switch i8 %2, label %if.end.i.EXhalbtcoutsrc_PnpNotify.exit_crit_edge [
    i8 1, label %if.then2.i
    i8 2, label %if.then8.i
  ]

if.end.i.EXhalbtcoutsrc_PnpNotify.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %EXhalbtcoutsrc_PnpNotify.exit

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @EXhalbtc8723b1ant_PnpNotify(ptr noundef nonnull @GLBtCoexist, i8 noundef zeroext %.) #9
  br label %EXhalbtcoutsrc_PnpNotify.exit

if.then8.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @EXhalbtc8723b2ant_PnpNotify(ptr noundef nonnull @GLBtCoexist, i8 noundef zeroext %.) #9
  br label %EXhalbtcoutsrc_PnpNotify.exit

EXhalbtcoutsrc_PnpNotify.exit:                    ; preds = %if.then8.i, %if.then2.i, %if.end.i.EXhalbtcoutsrc_PnpNotify.exit_crit_edge, %halbtcoutsrc_IsBtCoexistAvailable.exit.i.EXhalbtcoutsrc_PnpNotify.exit_crit_edge, %entry.EXhalbtcoutsrc_PnpNotify.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hal_btcoex_HaltNotify(ptr nocapture noundef readnone %padapter) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i8, ptr @GLBtCoexist, align 4, !range !17
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool.not.i.i = icmp eq i8 %0, 0
  br i1 %tobool.not.i.i, label %entry.EXhalbtcoutsrc_HaltNotify.exit_crit_edge, label %halbtcoutsrc_IsBtCoexistAvailable.exit.i

entry.EXhalbtcoutsrc_HaltNotify.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %EXhalbtcoutsrc_HaltNotify.exit

halbtcoutsrc_IsBtCoexistAvailable.exit.i:         ; preds = %entry
  %1 = load ptr, ptr getelementptr inbounds (%struct.btc_coexist, ptr @GLBtCoexist, i32 0, i32 1), align 4
  %tobool1.not.i.not.i = icmp eq ptr %1, null
  br i1 %tobool1.not.i.not.i, label %halbtcoutsrc_IsBtCoexistAvailable.exit.i.EXhalbtcoutsrc_HaltNotify.exit_crit_edge, label %if.end.i

halbtcoutsrc_IsBtCoexistAvailable.exit.i.EXhalbtcoutsrc_HaltNotify.exit_crit_edge: ; preds = %halbtcoutsrc_IsBtCoexistAvailable.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %EXhalbtcoutsrc_HaltNotify.exit

if.end.i:                                         ; preds = %halbtcoutsrc_IsBtCoexistAvailable.exit.i
  %2 = load i8, ptr getelementptr inbounds (%struct.btc_coexist, ptr @GLBtCoexist, i32 0, i32 2, i32 2), align 2
  %3 = zext i8 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.27)
  switch i8 %2, label %if.end.i.if.end10.i_crit_edge [
    i8 2, label %if.then2.i
    i8 1, label %if.then8.i
  ]

if.end.i.if.end10.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @EXhalbtc8723b2ant_HaltNotify(ptr noundef nonnull @GLBtCoexist) #9
  br label %if.end10.i

if.then8.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @EXhalbtc8723b1ant_HaltNotify(ptr noundef nonnull @GLBtCoexist) #9
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.then8.i, %if.then2.i, %if.end.i.if.end10.i_crit_edge
  store i8 0, ptr @GLBtCoexist, align 4
  br label %EXhalbtcoutsrc_HaltNotify.exit

EXhalbtcoutsrc_HaltNotify.exit:                   ; preds = %if.end10.i, %halbtcoutsrc_IsBtCoexistAvailable.exit.i.EXhalbtcoutsrc_HaltNotify.exit_crit_edge, %entry.EXhalbtcoutsrc_HaltNotify.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hal_btcoex_Handler(ptr nocapture noundef readnone %padapter) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i8, ptr @GLBtCoexist, align 4, !range !17
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool.not.i.i = icmp eq i8 %0, 0
  br i1 %tobool.not.i.i, label %entry.EXhalbtcoutsrc_Periodical.exit_crit_edge, label %halbtcoutsrc_IsBtCoexistAvailable.exit.i

entry.EXhalbtcoutsrc_Periodical.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %EXhalbtcoutsrc_Periodical.exit

halbtcoutsrc_IsBtCoexistAvailable.exit.i:         ; preds = %entry
  %1 = load ptr, ptr getelementptr inbounds (%struct.btc_coexist, ptr @GLBtCoexist, i32 0, i32 1), align 4
  %tobool1.not.i.not.i = icmp eq ptr %1, null
  br i1 %tobool1.not.i.not.i, label %halbtcoutsrc_IsBtCoexistAvailable.exit.i.EXhalbtcoutsrc_Periodical.exit_crit_edge, label %if.end.i

halbtcoutsrc_IsBtCoexistAvailable.exit.i.EXhalbtcoutsrc_Periodical.exit_crit_edge: ; preds = %halbtcoutsrc_IsBtCoexistAvailable.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %EXhalbtcoutsrc_Periodical.exit

if.end.i:                                         ; preds = %halbtcoutsrc_IsBtCoexistAvailable.exit.i
  %2 = load i32, ptr getelementptr inbounds (%struct.btc_coexist, ptr @GLBtCoexist, i32 0, i32 10, i32 12), align 4
  %inc.i = add i32 %2, 1
  store i32 %inc.i, ptr getelementptr inbounds (%struct.btc_coexist, ptr @GLBtCoexist, i32 0, i32 10, i32 12), align 4
  %3 = load i8, ptr getelementptr inbounds (%struct.btc_coexist, ptr @GLBtCoexist, i32 0, i32 2, i32 2), align 2
  %4 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.28)
  switch i8 %3, label %if.end.i.EXhalbtcoutsrc_Periodical.exit_crit_edge [
    i8 2, label %if.then2.i
    i8 1, label %if.then8.i
  ]

if.end.i.EXhalbtcoutsrc_Periodical.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %EXhalbtcoutsrc_Periodical.exit

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @EXhalbtc8723b2ant_Periodical(ptr noundef nonnull @GLBtCoexist) #9
  br label %EXhalbtcoutsrc_Periodical.exit

if.then8.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @EXhalbtc8723b1ant_Periodical(ptr noundef nonnull @GLBtCoexist) #9
  br label %EXhalbtcoutsrc_Periodical.exit

EXhalbtcoutsrc_Periodical.exit:                   ; preds = %if.then8.i, %if.then2.i, %if.end.i.EXhalbtcoutsrc_Periodical.exit_crit_edge, %halbtcoutsrc_IsBtCoexistAvailable.exit.i.EXhalbtcoutsrc_Periodical.exit_crit_edge, %entry.EXhalbtcoutsrc_Periodical.exit_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @hal_btcoex_IsBTCoexCtrlAMPDUSize(ptr nocapture noundef readnone %padapter) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i8, ptr getelementptr inbounds (%struct.btc_coexist, ptr @GLBtCoexist, i32 0, i32 3, i32 4), align 4, !range !17
  %1 = zext i8 %0 to i32
  ret i32 %1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @hal_btcoex_SetManualControl(ptr nocapture noundef readnone %padapter, i8 noundef zeroext %bmanual) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bmanual)
  %tobool = icmp ne i8 %bmanual, 0
  %frombool = zext i1 %tobool to i8
  store i8 %frombool, ptr getelementptr inbounds (%struct.btc_coexist, ptr @GLBtCoexist, i32 0, i32 9), align 2
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @hal_btcoex_IsBtControlLps(ptr nocapture noundef readonly %padapter) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %HalData.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 18
  %0 = ptrtoint ptr %HalData.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %HalData.i, align 8
  %bt_coexist.i = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 142
  %2 = ptrtoint ptr %bt_coexist.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %bt_coexist.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.i.not = icmp eq i8 %3, 0
  br i1 %tobool.i.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %entry
  %4 = load i8, ptr getelementptr inbounds (%struct.btc_coexist, ptr @GLBtCoexist, i32 0, i32 3), align 4, !range !17
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %if.end2, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end2:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %5 = load i8, ptr getelementptr inbounds (%struct.btc_coexist, ptr @GLBtCoexist, i32 0, i32 3, i32 17), align 1, !range !17
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool3.not = icmp ne i8 %5, 0
  br label %return

return:                                           ; preds = %if.end2, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i1 [ false, %entry.return_crit_edge ], [ false, %if.end.return_crit_edge ], [ %tobool3.not, %if.end2 ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @hal_btcoex_IsLpsOn(ptr nocapture noundef readonly %padapter) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %HalData.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 18
  %0 = ptrtoint ptr %HalData.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %HalData.i, align 8
  %bt_coexist.i = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 142
  %2 = ptrtoint ptr %bt_coexist.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %bt_coexist.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.i.not = icmp eq i8 %3, 0
  br i1 %tobool.i.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %entry
  %4 = load i8, ptr getelementptr inbounds (%struct.btc_coexist, ptr @GLBtCoexist, i32 0, i32 3), align 4, !range !17
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %if.end2, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end2:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %5 = load i8, ptr getelementptr inbounds (%struct.btc_coexist, ptr @GLBtCoexist, i32 0, i32 3, i32 18), align 2, !range !17
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool3.not = icmp ne i8 %5, 0
  br label %return

return:                                           ; preds = %if.end2, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i1 [ false, %entry.return_crit_edge ], [ false, %if.end.return_crit_edge ], [ %tobool3.not, %if.end2 ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i8 @hal_btcoex_RpwmVal(ptr nocapture noundef readnone %padapter) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i8, ptr getelementptr inbounds (%struct.btc_coexist, ptr @GLBtCoexist, i32 0, i32 3, i32 21), align 1
  ret i8 %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i8 @hal_btcoex_LpsVal(ptr nocapture noundef readnone %padapter) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i8, ptr getelementptr inbounds (%struct.btc_coexist, ptr @GLBtCoexist, i32 0, i32 3, i32 20), align 4
  ret i8 %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @hal_btcoex_GetRaMask(ptr nocapture noundef readonly %padapter) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %HalData.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 18
  %0 = ptrtoint ptr %HalData.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %HalData.i, align 8
  %bt_coexist.i = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 142
  %2 = ptrtoint ptr %bt_coexist.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %bt_coexist.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.i.not = icmp eq i8 %3, 0
  br i1 %tobool.i.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %entry
  %4 = load i8, ptr getelementptr inbounds (%struct.btc_coexist, ptr @GLBtCoexist, i32 0, i32 3), align 4, !range !17
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %if.end2, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end2:                                          ; preds = %if.end
  %5 = load i8, ptr getelementptr inbounds (%struct.btc_coexist, ptr @GLBtCoexist, i32 0, i32 2, i32 2), align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %5)
  %cmp.not = icmp eq i8 %5, 1
  br i1 %cmp.not, label %if.end5, label %if.end2.return_crit_edge

if.end2.return_crit_edge:                         ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end5:                                          ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #11
  %6 = load i32, ptr getelementptr inbounds (%struct.btc_coexist, ptr @GLBtCoexist, i32 0, i32 3, i32 22), align 4
  br label %return

return:                                           ; preds = %if.end5, %if.end2.return_crit_edge, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ %6, %if.end5 ], [ 0, %entry.return_crit_edge ], [ 0, %if.end.return_crit_edge ], [ 0, %if.end2.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @hal_btcoex_RecordPwrMode(ptr nocapture noundef readnone %padapter, ptr nocapture noundef readonly %pCmdBuf, i8 noundef zeroext %cmdLen) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %cmdLen to i32
  %0 = call ptr @memcpy(ptr getelementptr inbounds (%struct.btc_coexist, ptr @GLBtCoexist, i32 0, i32 11), ptr %pCmdBuf, i32 %conv)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @rtw_read8(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_write8(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @rtw_read16(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_write16(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_read32(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_write32(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_hal_write_bbreg(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_hal_read_bbreg(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_hal_write_rfreg(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_hal_read_rfreg(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_hal_fill_h2c_cmd(ptr noundef, i8 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rtw_get_stainfo(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_hal_update_ra_mask(ptr noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_btcoex_RejectApAggregatedPacket(ptr noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_btcoex_LPS_Leave(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_btcoex_LPS_Enter(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_register_task_alive(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_unregister_task_alive(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6}
!llvm.module.flags = !{!8, !9, !10, !11, !12, !13, !14, !15}
!llvm.ident = !{!16}

!0 = !{ptr @GLBtCoexist, !1, !"GLBtCoexist", i1 false, i1 false}
!1 = !{!"../drivers/staging/rtl8723bs/hal/hal_btcoex.c", i32 15, i32 20}
!2 = distinct !{null, !3, !"GLBtcWiFiInScanState", i1 false, i1 false}
!3 = !{!"../drivers/staging/rtl8723bs/hal/hal_btcoex.c", i32 16, i32 11}
!4 = !{ptr @GLBtcWiFiInIQKState, !5, !"GLBtcWiFiInIQKState", i1 false, i1 false}
!5 = !{!"../drivers/staging/rtl8723bs/hal/hal_btcoex.c", i32 17, i32 11}
!6 = !{ptr @halbtcoutsrc_GetWifiScanAPNum.scan_AP_num, !7, !"scan_AP_num", i1 false, i1 false}
!7 = !{!"../drivers/staging/rtl8723bs/hal/hal_btcoex.c", i32 249, i32 12}
!8 = !{i32 1, !"wchar_size", i32 2}
!9 = !{i32 1, !"min_enum_size", i32 4}
!10 = !{i32 8, !"branch-target-enforcement", i32 0}
!11 = !{i32 8, !"sign-return-address", i32 0}
!12 = !{i32 8, !"sign-return-address-all", i32 0}
!13 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!14 = !{i32 7, !"uwtable", i32 1}
!15 = !{i32 7, !"frame-pointer", i32 2}
!16 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!17 = !{i8 0, i8 2}
