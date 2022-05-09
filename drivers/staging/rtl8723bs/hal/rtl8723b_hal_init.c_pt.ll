; ModuleID = '/llk/IR_all_yes/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c_pt.bc'
source_filename = "../drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.sdio_func = type { ptr, %struct.device, ptr, i32, i8, i16, i16, i32, i32, i32, i32, ptr, i8, i8, i32, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.firmware = type { i32, ptr, ptr }
%struct.rt_firmware = type { i32, ptr }
%struct.rt_firmware_hdr = type { i16, i8, i8, i16, i16, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32 }
%struct.sta_info = type { %struct.spinlock, %struct.list_head, %struct.list_head, ptr, %struct.sta_xmit_priv, %struct.sta_recv_priv, %struct.__queue, i32, i32, i32, i32, i32, [6 x i8], i32, i32, %union.Keytype, %union.Keytype, %union.Keytype, %union.pn48, %union.pn48, %union.pn48, [16 x i8], i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, i8, %struct.stainfo_stats, %struct.timer_list, [16 x %struct.recv_reorder_ctrl], [16 x i16], %struct.ht_priv, %struct.list_head, %struct.list_head, i32, i32, i32, [128 x i8], i16, i32, i32, i32, i32, i32, i32, i32, i8, [32 x i8], i8, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i8, i8, i32, i8, i8, ptr, i32, %struct.rssi_sta, i8, i8, [4 x i8], i8, [4 x i8], [4 x i8], i8, i16 }
%struct.sta_xmit_priv = type { %struct.spinlock, i32, i32, %struct.tx_servq, %struct.tx_servq, %struct.tx_servq, %struct.tx_servq, %struct.list_head, %struct.list_head, [16 x i16] }
%struct.tx_servq = type { %struct.list_head, %struct.__queue, i32 }
%struct.sta_recv_priv = type { %struct.spinlock, i32, %struct.__queue, %struct.stainfo_rxcache }
%struct.stainfo_rxcache = type { [16 x i16] }
%struct.stainfo_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.recv_reorder_ctrl = type { ptr, i8, i16, i16, i8, %struct.__queue, %struct.timer_list }
%struct.rssi_sta = type { i32, i32, i32, i64, i8 }
%struct.pgpkt_struct = type { i8, i8, [8 x i8], i8 }
%struct.c2h_evt_hdr_88xx = type { i8, i8, [12 x i8], i8, i8 }
%struct.TxPowerInfo24G = type { [4 x [6 x i8]], [4 x [6 x i8]], [4 x [4 x i8]], [4 x [4 x i8]], [4 x [4 x i8]], [4 x [4 x i8]] }
%struct.pkt_attrib = type { i8, i8, i8, i8, i16, i16, i16, i16, i32, i32, i8, i8, i8, i8, [18 x i8], [16 x i8], i8, i8, i8, i8, [6 x i8], [6 x i8], [6 x i8], [6 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, i8, i8, %union.Keytype, %union.Keytype, i8 }
%struct.xmit_frame = type { %struct.list_head, %struct.pkt_attrib, ptr, i32, ptr, ptr, ptr, i8, i8, i8, ptr, i8 }
%struct.tx_desc = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"rtlwifi/rtl8723bs_nic.bin\00", [38 x i8] zeroinitializer }, align 32
@rtl8723b_FirmwareDownload._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 331, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\016rtl8723bs: acquire FW from file:%s\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"rtl8723b_FirmwareDownload\00", [38 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c\00", [46 x i8] zeroinitializer }, align 32
@rtl8723b_FirmwareDownload._entry_ptr = internal global ptr @rtl8723b_FirmwareDownload._entry, section ".printk_index", align 4
@rtl8723b_FirmwareDownload._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.2, ptr @.str.3, i32 335, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013Request firmware failed with error 0x%x\0A\00", [53 x i8] zeroinitializer }, align 32
@rtl8723b_FirmwareDownload._entry_ptr.6 = internal global ptr @rtl8723b_FirmwareDownload._entry.4, section ".printk_index", align 4
@rtl8723b_FirmwareDownload._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 341, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013Firmware %s not available\0A\00", [35 x i8] zeroinitializer }, align 32
@rtl8723b_FirmwareDownload._entry_ptr.9 = internal global ptr @rtl8723b_FirmwareDownload._entry.7, section ".printk_index", align 4
@.str.10 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Firmware size:%u exceed %u\0A\00", [36 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.11 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"RTWHALXT\00", [23 x i8] zeroinitializer }, align 32
@g_fwdl_chksum_fail = dso_local global { i8, [31 x i8] } zeroinitializer, align 32
@g_fwdl_wintint_rdy_fail = dso_local global { i8, [31 x i8] } zeroinitializer, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@_WriteFW._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.3, i32 131, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"====>%s %d\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_WriteFW\00", [23 x i8] zeroinitializer }, align 32
@_WriteFW._entry_ptr = internal global ptr @_WriteFW._entry, section ".printk_index", align 4
@_WriteFW._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.3, i32 142, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@_WriteFW._entry_ptr.15 = internal global ptr @_WriteFW._entry.14, section ".printk_index", align 4
@_BlockWrite._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.3, i32 66, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"====>%s %d i:%d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"_BlockWrite\00", [20 x i8] zeroinitializer }, align 32
@_BlockWrite._entry_ptr = internal global ptr @_BlockWrite._entry, section ".printk_index", align 4
@_BlockWrite._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.3, i32 89, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@_BlockWrite._entry_ptr.19 = internal global ptr @_BlockWrite._entry.18, section ".printk_index", align 4
@switch.table.rtl8723b_update_txdesc = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\01\01\01\03\01", [27 x i8] zeroinitializer }, align 32
@switch.table.rtl8723b_fill_fake_txdesc = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 5373952, i32 5373952, i32 1179648, i32 13762560, i32 5373952, i32 9568256], [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 7, i64 1, i64 2]
@__sancov_gen_cov_switch_values.20 = internal global [9 x i64] [i64 7, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.21 = internal global [4 x i64] [i64 2, i64 7, i64 0, i64 1]
@__sancov_gen_cov_switch_values.22 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.23 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.24 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.25 = internal global [5 x i64] [i64 3, i64 16, i64 2054, i64 34958, i64 34996]
@__sancov_gen_cov_switch_values.26 = internal global [48 x i64] [i64 46, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 17, i64 18, i64 19, i64 22, i64 28, i64 29, i64 30, i64 32, i64 33, i64 34, i64 35, i64 36, i64 38, i64 42, i64 43, i64 44, i64 51, i64 59, i64 60, i64 61, i64 62, i64 63, i64 66, i64 68, i64 72, i64 74, i64 79, i64 89, i64 90, i64 91]
@__sancov_gen_cov_switch_values.27 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.28 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.29 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.30 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.31 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.32 = internal global [11 x i64] [i64 9, i64 8, i64 7, i64 22, i64 45, i64 59, i64 60, i64 61, i64 62, i64 66, i64 73]
@__sancov_gen_cov_switch_values.33 = internal global [14 x i64] [i64 12, i64 32, i64 4, i64 5, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 17, i64 18, i64 24, i64 30]
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 329, i32 15 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 331, i32 2 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 335, i32 3 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 341, i32 3 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 362, i32 9 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 3850, i32 29 }
@___asan_gen_.67 = private unnamed_addr constant [19 x i8] c"g_fwdl_chksum_fail\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 179, i32 4 }
@___asan_gen_.70 = private unnamed_addr constant [24 x i8] c"g_fwdl_wintint_rdy_fail\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 215, i32 4 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 131, i32 4 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 142, i32 4 }
@___asan_gen_.91 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 66, i32 4 }
@___asan_gen_.94 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.95 = private constant [53 x i8] c"../drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 89, i32 5 }
@___asan_gen_.97 = private unnamed_addr constant [36 x i8] c"switch.table.rtl8723b_update_txdesc\00", align 1
@___asan_gen_.98 = private unnamed_addr constant [39 x i8] c"switch.table.rtl8723b_fill_fake_txdesc\00", align 1
@llvm.compiler.used = appending global [30 x ptr] [ptr @_BlockWrite._entry, ptr @_BlockWrite._entry.18, ptr @_BlockWrite._entry_ptr, ptr @_BlockWrite._entry_ptr.19, ptr @_WriteFW._entry, ptr @_WriteFW._entry.14, ptr @_WriteFW._entry_ptr, ptr @_WriteFW._entry_ptr.15, ptr @rtl8723b_FirmwareDownload._entry, ptr @rtl8723b_FirmwareDownload._entry.4, ptr @rtl8723b_FirmwareDownload._entry.7, ptr @rtl8723b_FirmwareDownload._entry_ptr, ptr @rtl8723b_FirmwareDownload._entry_ptr.6, ptr @rtl8723b_FirmwareDownload._entry_ptr.9, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @g_fwdl_chksum_fail, ptr @g_fwdl_wintint_rdy_fail, ptr @.str.12, ptr @.str.13, ptr @.str.16, ptr @.str.17, ptr @switch.table.rtl8723b_update_txdesc, ptr @switch.table.rtl8723b_fill_fake_txdesc], section "llvm.metadata"
@0 = internal global [23 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8723b_FirmwareDownload._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8723b_FirmwareDownload._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8723b_FirmwareDownload._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @g_fwdl_chksum_fail to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @g_fwdl_wintint_rdy_fail to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_WriteFW._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_WriteFW._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_BlockWrite._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_BlockWrite._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.rtl8723b_update_txdesc to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.rtl8723b_fill_fake_txdesc to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @_8051Reset8723(ptr noundef %padapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i8 @rtw_read8(ptr noundef %padapter, i32 noundef 29) #14
  %0 = and i8 %call, -2
  %call2 = tail call i32 @rtw_write8(ptr noundef %padapter, i32 noundef 29, i8 noundef zeroext %0) #14
  %call3 = tail call zeroext i8 @rtw_read8(ptr noundef %padapter, i32 noundef 3) #14
  %1 = and i8 %call3, -5
  %call7 = tail call i32 @rtw_write8(ptr noundef %padapter, i32 noundef 3, i8 noundef zeroext %1) #14
  %call8 = tail call zeroext i8 @rtw_read8(ptr noundef %padapter, i32 noundef 29) #14
  %2 = or i8 %call8, 1
  %call11 = tail call i32 @rtw_write8(ptr noundef %padapter, i32 noundef 29, i8 noundef zeroext %2) #14
  %call12 = tail call zeroext i8 @rtw_read8(ptr noundef %padapter, i32 noundef 3) #14
  %3 = or i8 %call12, 4
  %call16 = tail call i32 @rtw_write8(ptr noundef %padapter, i32 noundef 3, i8 noundef zeroext %3) #14
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @rtw_read8(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_write8(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl8723b_FirmwareSelfReset(ptr noundef %padapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %HalData = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 18
  %0 = ptrtoint ptr %HalData to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %HalData, align 8
  %FirmwareSignature = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %FirmwareSignature to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %FirmwareSignature, align 2
  %4 = and i16 %3, -16
  call void @__sanitizer_cov_trace_const_cmp2(i16 -30528, i16 %4)
  %cmp = icmp eq i16 %4, -30528
  br i1 %cmp, label %land.lhs.true, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

land.lhs.true:                                    ; preds = %entry
  %FirmwareVersion = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 4
  %5 = ptrtoint ptr %FirmwareVersion to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %FirmwareVersion, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 33, i16 %6)
  %cmp4 = icmp ult i16 %6, 33
  br i1 %cmp4, label %land.lhs.true.if.end32_crit_edge, label %lor.lhs.false

land.lhs.true.if.end32_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end32

lor.lhs.false:                                    ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_const_cmp2(i16 33, i16 %6)
  %cmp8 = icmp eq i16 %6, 33
  br i1 %cmp8, label %land.lhs.true10, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

land.lhs.true10:                                  ; preds = %lor.lhs.false
  %FirmwareSubVersion = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 6
  %7 = ptrtoint ptr %FirmwareSubVersion to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %FirmwareSubVersion, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %cmp12 = icmp eq i16 %8, 0
  br i1 %cmp12, label %land.lhs.true10.if.end32_crit_edge, label %land.lhs.true10.if.then_crit_edge

land.lhs.true10.if.then_crit_edge:                ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

land.lhs.true10.if.end32_crit_edge:               ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end32

if.then:                                          ; preds = %land.lhs.true10.if.then_crit_edge, %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %call = tail call i32 @rtw_write8(ptr noundef %padapter, i32 noundef 463, i8 noundef zeroext 32) #14
  %call14 = tail call zeroext i8 @rtw_read8(ptr noundef %padapter, i32 noundef 3) #14
  %9 = and i8 %call14, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not46 = icmp eq i8 %9, 0
  br i1 %tobool.not46, label %if.then.if.end32_crit_edge, label %if.then.while.body_crit_edge

if.then.while.body_crit_edge:                     ; preds = %if.then
  br label %while.body

if.then.if.end32_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end32

while.body:                                       ; preds = %if.end.while.body_crit_edge, %if.then.while.body_crit_edge
  %Delay.047 = phi i8 [ %dec, %if.end.while.body_crit_edge ], [ 100, %if.then.while.body_crit_edge ]
  %dec = add nsw i8 %Delay.047, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %dec)
  %cmp18 = icmp eq i8 %dec, 0
  br i1 %cmp18, label %if.then25, label %if.end

if.end:                                           ; preds = %while.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 10737400) #14
  %call21 = tail call zeroext i8 @rtw_read8(ptr noundef %padapter, i32 noundef 3) #14
  %11 = and i8 %call21, 4
  %tobool.not = icmp eq i8 %11, 0
  br i1 %tobool.not, label %if.end.if.end32_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body

if.end.if.end32_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end32

if.then25:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  %call26 = tail call zeroext i8 @rtw_read8(ptr noundef %padapter, i32 noundef 3) #14
  %12 = and i8 %call26, -5
  %call30 = tail call i32 @rtw_write8(ptr noundef %padapter, i32 noundef 3, i8 noundef zeroext %12) #14
  br label %if.end32

if.end32:                                         ; preds = %if.then25, %if.end.if.end32_crit_edge, %if.then.if.end32_crit_edge, %land.lhs.true10.if.end32_crit_edge, %land.lhs.true.if.end32_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtl8723b_FirmwareDownload(ptr noundef %padapter, i1 noundef zeroext %bUsedWoWLANFw) local_unnamed_addr #0 align 64 {
entry:
  %fw = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %HalData = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 18
  %0 = ptrtoint ptr %HalData to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %HalData, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw) #14
  %2 = ptrtoint ptr %fw to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %fw, align 4, !annotation !49
  %dvobj = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 3
  %3 = ptrtoint ptr %dvobj to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dvobj, align 4
  %func.i = getelementptr inbounds %struct.dvobj_priv, ptr %4, i32 0, i32 24, i32 4
  %5 = ptrtoint ptr %func.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %func.i, align 8
  %dev.i = getelementptr inbounds %struct.sdio_func, ptr %6, i32 0, i32 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %7 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3520, i32 noundef 8) #17
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %8 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i171 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3520, i32 noundef 8) #17
  %tobool4.not = icmp eq ptr %call7.i.i171, null
  br i1 %tobool4.not, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #14
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %call7 = tail call zeroext i8 @rtw_read8(ptr noundef %padapter, i32 noundef 163) #14
  %9 = and i8 %call7, -8
  %10 = or i8 %9, 2
  %call11 = tail call i32 @rtw_write8(ptr noundef %padapter, i32 noundef 163, i8 noundef zeroext %10) #14
  %call12 = tail call zeroext i8 @rtw_read8(ptr noundef %padapter, i32 noundef 160) #14
  %11 = and i8 %call12, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %11)
  %cmp.not = icmp eq i8 %11, 1
  br i1 %cmp.not, label %if.end6.if.end19_crit_edge, label %if.then18

if.end6.if.end19_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end19

if.then18:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16
  %dbg_downloadfw_pwr_state_cnt = getelementptr inbounds %struct.dvobj_priv, ptr %4, i32 0, i32 2, i32 17
  %12 = ptrtoint ptr %dbg_downloadfw_pwr_state_cnt to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dbg_downloadfw_pwr_state_cnt, align 4
  %inc = add i32 %13, 1
  store i32 %inc, ptr %dbg_downloadfw_pwr_state_cnt, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.then18, %if.end6.if.end19_crit_edge
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str) #18
  %call21 = call i32 @request_firmware(ptr noundef nonnull %fw, ptr noundef nonnull @.str, ptr noundef %dev.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end29, label %do.end26

do.end26:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #16
  %call28 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %call21) #18
  br label %exit

if.end29:                                         ; preds = %if.end19
  %14 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %fw, align 4
  %tobool30.not = icmp eq ptr %15, null
  br i1 %tobool30.not, label %do.end34, label %if.end37

do.end34:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #16
  %call36 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str) #18
  br label %exit

if.end37:                                         ; preds = %if.end29
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32768, i32 %17)
  %cmp38 = icmp ugt i32 %17, 32768
  br i1 %cmp38, label %if.end37.exit_crit_edge, label %if.end41

if.end37.exit_crit_edge:                          ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #16
  br label %exit

if.end41:                                         ; preds = %if.end37
  %data = getelementptr inbounds %struct.firmware, ptr %15, i32 0, i32 1
  %18 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %data, align 4
  %call43 = call ptr @kmemdup(ptr noundef %19, i32 noundef %17, i32 noundef 3264) #14
  %fw_buffer_sz = getelementptr inbounds %struct.rt_firmware, ptr %call7.i.i, i32 0, i32 1
  %20 = ptrtoint ptr %fw_buffer_sz to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call43, ptr %fw_buffer_sz, align 4
  %tobool45.not = icmp eq ptr %call43, null
  br i1 %tobool45.not, label %if.end41.exit_crit_edge, label %if.end47

if.end41.exit_crit_edge:                          ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #16
  br label %exit

if.end47:                                         ; preds = %if.end41
  %21 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %fw, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %22, align 4
  %25 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %call7.i.i, align 8
  call void @release_firmware(ptr noundef %22) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 32768, i32 %24)
  %cmp50 = icmp ugt i32 %24, 32768
  br i1 %cmp50, label %if.then52, label %if.end54

if.then52:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #16
  %pnetdev = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 41
  %26 = ptrtoint ptr %pnetdev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pnetdev, align 8
  call void (ptr, ptr, ...) @netdev_emerg(ptr noundef %27, ptr noundef nonnull @.str.10, i32 noundef %24, i32 noundef 32768) #18
  br label %release_fw1

if.end54:                                         ; preds = %if.end47
  %28 = ptrtoint ptr %fw_buffer_sz to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %fw_buffer_sz, align 4
  %version = getelementptr inbounds %struct.rt_firmware_hdr, ptr %29, i32 0, i32 3
  %30 = ptrtoint ptr %version to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %version, align 4
  %32 = call i16 @llvm.bswap.i16(i16 %31)
  %FirmwareVersion = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 4
  %33 = ptrtoint ptr %FirmwareVersion to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %32, ptr %FirmwareVersion, align 8
  %subversion = getelementptr inbounds %struct.rt_firmware_hdr, ptr %29, i32 0, i32 4
  %34 = ptrtoint ptr %subversion to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %subversion, align 2
  %36 = call i16 @llvm.bswap.i16(i16 %35)
  %FirmwareSubVersion = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 6
  %37 = ptrtoint ptr %FirmwareSubVersion to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %36, ptr %FirmwareSubVersion, align 4
  %38 = ptrtoint ptr %29 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %29, align 4
  %40 = call i16 @llvm.bswap.i16(i16 %39)
  %FirmwareSignature = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 7
  %41 = ptrtoint ptr %FirmwareSignature to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %40, ptr %FirmwareSignature, align 2
  %42 = ptrtoint ptr %29 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %29, align 4
  %44 = and i16 %43, -3841
  call void @__sanitizer_cov_trace_const_cmp2(i16 83, i16 %44)
  %cmp60 = icmp eq i16 %44, 83
  %sub = add nsw i32 %24, -32
  %pFirmwareBuf.0.idx = select i1 %cmp60, i32 32, i32 0
  %pFirmwareBuf.0 = getelementptr i8, ptr %29, i32 %pFirmwareBuf.0.idx
  %FirmwareLen.0 = select i1 %cmp60, i32 %sub, i32 %24
  %call64 = call zeroext i8 @rtw_read8(ptr noundef %padapter, i32 noundef 128) #14
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %call64)
  %tobool67.not = icmp sgt i8 %call64, -1
  br i1 %tobool67.not, label %if.end54.if.end70_crit_edge, label %if.then68

if.end54.if.end70_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end70

if.then68:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #16
  %call69 = call i32 @rtw_write8(ptr noundef %padapter, i32 noundef 128, i8 noundef zeroext 0) #14
  call void @rtl8723b_FirmwareSelfReset(ptr noundef %padapter)
  br label %if.end70

if.end70:                                         ; preds = %if.then68, %if.end54.if.end70_crit_edge
  call fastcc void @_FWDownloadEnable(ptr noundef %padapter, i1 noundef zeroext true)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %45 = load volatile i32, ptr @jiffies, align 128
  %bDriverStopped = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 21
  %46 = ptrtoint ptr %bDriverStopped to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %bDriverStopped, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool71.not185 = icmp eq i32 %47, 0
  br i1 %tobool71.not185, label %land.lhs.true.lr.ph, label %if.end70.while.end.thread_crit_edge

if.end70.while.end.thread_crit_edge:              ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end.thread

land.lhs.true.lr.ph:                              ; preds = %if.end70
  %bSurpriseRemoved = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 22
  %div29.i = lshr i32 %FirmwareLen.0, 12
  %rem.i = and i32 %FirmwareLen.0, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %FirmwareLen.0)
  %cmp59.not.i = icmp ult i32 %FirmwareLen.0, 4096
  %umax.i = call i32 @llvm.umax.i32(i32 %div29.i, i32 1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %tobool.not.i = icmp eq i32 %rem.i, 0
  %mul4.i = and i32 %FirmwareLen.0, -4096
  %add.ptr5.i = getelementptr i8, ptr %pFirmwareBuf.0, i32 %mul4.i
  %48 = trunc i32 %div29.i to i8
  %49 = and i8 %48, 7
  %rem.i.i.i = and i32 %FirmwareLen.0, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %rem.i)
  %cmp67.not.i.i.i = icmp ult i32 %rem.i, 4
  %div62.i.i.i = lshr i32 %rem.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %rem.i.i.i, 0
  %mul11.i.i.i = and i32 %FirmwareLen.0, 4092
  %add18.i.i.i = or i32 %mul11.i.i.i, 4096
  %add.ptr20.i.i.i = getelementptr i8, ptr %add.ptr5.i, i32 %mul11.i.i.i
  %50 = ptrtoint ptr %bSurpriseRemoved to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %bSurpriseRemoved, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool72.not214 = icmp eq i32 %51, 0
  br i1 %tobool72.not214, label %land.rhs.preheader, label %land.lhs.true.lr.ph.while.end.thread_crit_edge

land.lhs.true.lr.ph.while.end.thread_crit_edge:   ; preds = %land.lhs.true.lr.ph
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end.thread

land.rhs.preheader:                               ; preds = %land.lhs.true.lr.ph
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %rem.i.i.i)
  %exitcond76.not.i.i.i = icmp eq i32 %rem.i.i.i, 1
  %add19.i.i.i.1 = or i32 %mul11.i.i.i, 4097
  %add.ptr21.i.i.i.1 = getelementptr i8, ptr %add.ptr20.i.i.i, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %rem.i.i.i)
  %exitcond76.not.i.i.i.1 = icmp eq i32 %rem.i.i.i, 2
  %add19.i.i.i.2 = or i32 %mul11.i.i.i, 4098
  %add.ptr21.i.i.i.2 = getelementptr i8, ptr %add.ptr20.i.i.i, i32 2
  br label %land.rhs

land.lhs.true:                                    ; preds = %while.cond.backedge
  %52 = ptrtoint ptr %bSurpriseRemoved to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %bSurpriseRemoved, align 8
  %tobool72.not = icmp eq i32 %53, 0
  br i1 %tobool72.not, label %land.lhs.true.land.rhs_crit_edge, label %land.lhs.true.while.end.thread_crit_edge

land.lhs.true.while.end.thread_crit_edge:         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end.thread

land.lhs.true.land.rhs_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.rhs

land.rhs:                                         ; preds = %land.lhs.true.land.rhs_crit_edge, %land.rhs.preheader
  %write_fw.0186216 = phi i8 [ %inc73, %land.lhs.true.land.rhs_crit_edge ], [ 0, %land.rhs.preheader ]
  %rtStatus.0187215 = phi i32 [ %rtStatus.0.be.ph, %land.lhs.true.land.rhs_crit_edge ], [ 0, %land.rhs.preheader ]
  %inc73 = add i8 %write_fw.0186216, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %write_fw.0186216)
  %cmp75 = icmp ult i8 %write_fw.0186216, 3
  br i1 %cmp75, label %land.rhs.while.body_crit_edge, label %lor.rhs

land.rhs.while.body_crit_edge:                    ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body

lor.rhs:                                          ; preds = %land.rhs
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %54 = load volatile i32, ptr @jiffies, align 128
  %sub77 = sub i32 %54, %45
  %call78 = call i32 @jiffies_to_msecs(i32 noundef %sub77) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 500, i32 %call78)
  %cmp79 = icmp ult i32 %call78, 500
  br i1 %cmp79, label %lor.rhs.while.body_crit_edge, label %lor.rhs.while.end.thread_crit_edge

lor.rhs.while.end.thread_crit_edge:               ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end.thread

lor.rhs.while.body_crit_edge:                     ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body

while.body:                                       ; preds = %lor.rhs.while.body_crit_edge, %land.rhs.while.body_crit_edge
  %call81 = call zeroext i8 @rtw_read8(ptr noundef %padapter, i32 noundef 128) #14
  %55 = or i8 %call81, 4
  %call85 = call i32 @rtw_write8(ptr noundef %padapter, i32 noundef 128, i8 noundef zeroext %55) #14
  br i1 %cmp59.not.i, label %while.body.for.end.i_crit_edge, label %while.body.for.body.i_crit_edge

while.body.for.body.i_crit_edge:                  ; preds = %while.body
  br label %for.body.i

while.body.for.end.i_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %while.body.for.body.i_crit_edge
  %page.060.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %while.body.for.body.i_crit_edge ]
  %mul.i = shl i32 %page.060.i, 12
  %add.ptr.i = getelementptr i8, ptr %pFirmwareBuf.0, i32 %mul.i
  %call.i.i = call zeroext i8 @rtw_read8(ptr noundef %padapter, i32 noundef 130) #14
  %56 = and i8 %call.i.i, -8
  %57 = trunc i32 %page.060.i to i8
  %58 = and i8 %57, 7
  %conv4.i.i = or i8 %56, %58
  %call5.i.i = call i32 @rtw_write8(ptr noundef %padapter, i32 noundef 130, i8 noundef zeroext %conv4.i.i) #14
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.inc.i.i.i.for.body.i.i.i_crit_edge, %for.body.i
  %i.068.i.i.i = phi i32 [ %inc.i.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ], [ 0, %for.body.i ]
  %mul.i.i.i = shl i32 %i.068.i.i.i, 2
  %add.i.i.i = add nuw nsw i32 %mul.i.i.i, 4096
  %add.ptr.i.i.i = getelementptr i8, ptr %add.ptr.i, i32 %mul.i.i.i
  %59 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %add.ptr.i.i.i, align 4
  %call.i.i.i = call i32 @rtw_write32(ptr noundef %padapter, i32 noundef %add.i.i.i, i32 noundef %60) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp2.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %cmp2.i.i.i, label %do.end.i, label %for.inc.i.i.i

for.inc.i.i.i:                                    ; preds = %for.body.i.i.i
  %inc.i.i.i = add nuw nsw i32 %i.068.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, 1024
  br i1 %exitcond.not.i.i.i, label %for.inc.i, label %for.inc.i.i.i.for.body.i.i.i_crit_edge

for.inc.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.i.i

do.end.i:                                         ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %call3.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, i32 noundef 66, i32 noundef %i.068.i.i.i) #18
  br label %_WriteFW.exit.thread

for.inc.i:                                        ; preds = %for.inc.i.i.i
  %inc.i = add nuw nsw i32 %page.060.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %umax.i
  br i1 %exitcond.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %while.body.for.end.i_crit_edge
  %ret.0.lcssa.i = phi i32 [ 1, %while.body.for.end.i_crit_edge ], [ %call.i.i.i, %for.inc.i.for.end.i_crit_edge ]
  br i1 %tobool.not.i, label %for.end.i._WriteFW.exit_crit_edge, label %if.then3.i

for.end.i._WriteFW.exit_crit_edge:                ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %_WriteFW.exit

if.then3.i:                                       ; preds = %for.end.i
  %call.i30.i = call zeroext i8 @rtw_read8(ptr noundef %padapter, i32 noundef 130) #14
  %61 = and i8 %call.i30.i, -8
  %conv4.i31.i = or i8 %61, %49
  %call5.i32.i = call i32 @rtw_write8(ptr noundef %padapter, i32 noundef 130, i8 noundef zeroext %conv4.i31.i) #14
  br i1 %cmp67.not.i.i.i, label %if.then3.i.for.end.i.i45.i_crit_edge, label %if.then3.i.for.body.i.i39.i_crit_edge

if.then3.i.for.body.i.i39.i_crit_edge:            ; preds = %if.then3.i
  br label %for.body.i.i39.i

if.then3.i.for.end.i.i45.i_crit_edge:             ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i.i45.i

for.body.i.i39.i:                                 ; preds = %for.inc.i.i44.i.for.body.i.i39.i_crit_edge, %if.then3.i.for.body.i.i39.i_crit_edge
  %i.068.i.i33.i = phi i32 [ %inc.i.i42.i, %for.inc.i.i44.i.for.body.i.i39.i_crit_edge ], [ 0, %if.then3.i.for.body.i.i39.i_crit_edge ]
  %mul.i.i34.i = shl i32 %i.068.i.i33.i, 2
  %add.i.i35.i = add nuw nsw i32 %mul.i.i34.i, 4096
  %add.ptr.i.i36.i = getelementptr i8, ptr %add.ptr5.i, i32 %mul.i.i34.i
  %62 = ptrtoint ptr %add.ptr.i.i36.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %add.ptr.i.i36.i, align 4
  %call.i.i37.i = call i32 @rtw_write32(ptr noundef %padapter, i32 noundef %add.i.i35.i, i32 noundef %63) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i37.i)
  %cmp2.i.i38.i = icmp eq i32 %call.i.i37.i, 0
  br i1 %cmp2.i.i38.i, label %do.end.i.i41.i, label %for.inc.i.i44.i

do.end.i.i41.i:                                   ; preds = %for.body.i.i39.i
  call void @__sanitizer_cov_trace_pc() #16
  %call3.i.i40.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, i32 noundef 66, i32 noundef %i.068.i.i33.i) #18
  br label %_WriteFW.exit.thread

for.inc.i.i44.i:                                  ; preds = %for.body.i.i39.i
  %inc.i.i42.i = add nuw nsw i32 %i.068.i.i33.i, 1
  %exitcond.not.i.i43.i = icmp eq i32 %inc.i.i42.i, %div62.i.i.i
  br i1 %exitcond.not.i.i43.i, label %for.inc.i.i44.i.for.end.i.i45.i_crit_edge, label %for.inc.i.i44.i.for.body.i.i39.i_crit_edge

for.inc.i.i44.i.for.body.i.i39.i_crit_edge:       ; preds = %for.inc.i.i44.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.i39.i

for.inc.i.i44.i.for.end.i.i45.i_crit_edge:        ; preds = %for.inc.i.i44.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i.i45.i

for.end.i.i45.i:                                  ; preds = %for.inc.i.i44.i.for.end.i.i45.i_crit_edge, %if.then3.i.for.end.i.i45.i_crit_edge
  %ret.0.lcssa.i.i.i = phi i32 [ 1, %if.then3.i.for.end.i.i45.i_crit_edge ], [ %call.i.i37.i, %for.inc.i.i44.i.for.end.i.i45.i_crit_edge ]
  br i1 %tobool.not.i.i.i, label %for.end.i.i45.i._WriteFW.exit_crit_edge, label %for.body17.i.i.i

for.end.i.i45.i._WriteFW.exit_crit_edge:          ; preds = %for.end.i.i45.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %_WriteFW.exit

for.body17.i.i.i:                                 ; preds = %for.end.i.i45.i
  %64 = ptrtoint ptr %add.ptr20.i.i.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %add.ptr20.i.i.i, align 1
  %call22.i.i.i = call i32 @rtw_write8(ptr noundef %padapter, i32 noundef %add18.i.i.i, i8 noundef zeroext %65) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i.i.i)
  %cmp23.i.i.i = icmp eq i32 %call22.i.i.i, 0
  br i1 %cmp23.i.i.i, label %for.body17.i.i.i.do.end27.i.i.i_crit_edge, label %for.inc31.i.i.i

for.body17.i.i.i.do.end27.i.i.i_crit_edge:        ; preds = %for.body17.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end27.i.i.i

do.end27.i.i.i:                                   ; preds = %for.body17.i.i.i.2.do.end27.i.i.i_crit_edge, %for.body17.i.i.i.1.do.end27.i.i.i_crit_edge, %for.body17.i.i.i.do.end27.i.i.i_crit_edge
  %i.170.i.i.i.lcssa = phi i32 [ 0, %for.body17.i.i.i.do.end27.i.i.i_crit_edge ], [ 1, %for.body17.i.i.i.1.do.end27.i.i.i_crit_edge ], [ 2, %for.body17.i.i.i.2.do.end27.i.i.i_crit_edge ]
  %call29.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, i32 noundef 89, i32 noundef %i.170.i.i.i.lcssa) #18
  br label %_WriteFW.exit.thread

for.inc31.i.i.i:                                  ; preds = %for.body17.i.i.i
  br i1 %exitcond76.not.i.i.i, label %for.inc31.i.i.i._WriteFW.exit_crit_edge, label %for.body17.i.i.i.1

for.inc31.i.i.i._WriteFW.exit_crit_edge:          ; preds = %for.inc31.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %_WriteFW.exit

for.body17.i.i.i.1:                               ; preds = %for.inc31.i.i.i
  %66 = ptrtoint ptr %add.ptr21.i.i.i.1 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %add.ptr21.i.i.i.1, align 1
  %call22.i.i.i.1 = call i32 @rtw_write8(ptr noundef %padapter, i32 noundef %add19.i.i.i.1, i8 noundef zeroext %67) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i.i.i.1)
  %cmp23.i.i.i.1 = icmp eq i32 %call22.i.i.i.1, 0
  br i1 %cmp23.i.i.i.1, label %for.body17.i.i.i.1.do.end27.i.i.i_crit_edge, label %for.inc31.i.i.i.1

for.body17.i.i.i.1.do.end27.i.i.i_crit_edge:      ; preds = %for.body17.i.i.i.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end27.i.i.i

for.inc31.i.i.i.1:                                ; preds = %for.body17.i.i.i.1
  br i1 %exitcond76.not.i.i.i.1, label %for.inc31.i.i.i.1._WriteFW.exit_crit_edge, label %for.body17.i.i.i.2

for.inc31.i.i.i.1._WriteFW.exit_crit_edge:        ; preds = %for.inc31.i.i.i.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %_WriteFW.exit

for.body17.i.i.i.2:                               ; preds = %for.inc31.i.i.i.1
  %68 = ptrtoint ptr %add.ptr21.i.i.i.2 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %add.ptr21.i.i.i.2, align 1
  %call22.i.i.i.2 = call i32 @rtw_write8(ptr noundef %padapter, i32 noundef %add19.i.i.i.2, i8 noundef zeroext %69) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i.i.i.2)
  %cmp23.i.i.i.2 = icmp eq i32 %call22.i.i.i.2, 0
  br i1 %cmp23.i.i.i.2, label %for.body17.i.i.i.2.do.end27.i.i.i_crit_edge, label %for.body17.i.i.i.2._WriteFW.exit_crit_edge

for.body17.i.i.i.2._WriteFW.exit_crit_edge:       ; preds = %for.body17.i.i.i.2
  call void @__sanitizer_cov_trace_pc() #16
  br label %_WriteFW.exit

for.body17.i.i.i.2.do.end27.i.i.i_crit_edge:      ; preds = %for.body17.i.i.i.2
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end27.i.i.i

_WriteFW.exit.thread:                             ; preds = %do.end27.i.i.i, %do.end.i.i41.i, %do.end.i
  %.sink.i = phi i32 [ 131, %do.end.i ], [ 142, %do.end.i.i41.i ], [ 142, %do.end27.i.i.i ]
  %call13.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, i32 noundef %.sink.i) #18
  br label %while.cond.backedge

_WriteFW.exit:                                    ; preds = %for.body17.i.i.i.2._WriteFW.exit_crit_edge, %for.inc31.i.i.i.1._WriteFW.exit_crit_edge, %for.inc31.i.i.i._WriteFW.exit_crit_edge, %for.end.i.i45.i._WriteFW.exit_crit_edge, %for.end.i._WriteFW.exit_crit_edge
  %ret.1.i = phi i32 [ %ret.0.lcssa.i, %for.end.i._WriteFW.exit_crit_edge ], [ %ret.0.lcssa.i.i.i, %for.end.i.i45.i._WriteFW.exit_crit_edge ], [ %call22.i.i.i, %for.inc31.i.i.i._WriteFW.exit_crit_edge ], [ %call22.i.i.i.1, %for.inc31.i.i.i.1._WriteFW.exit_crit_edge ], [ %call22.i.i.i.2, %for.body17.i.i.i.2._WriteFW.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %ret.1.i)
  %cmp87.not = icmp eq i32 %ret.1.i, 1
  br i1 %cmp87.not, label %if.end90, label %_WriteFW.exit.while.cond.backedge_crit_edge

_WriteFW.exit.while.cond.backedge_crit_edge:      ; preds = %_WriteFW.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.then11.i, %if.end.i.while.cond.backedge_crit_edge, %lor.lhs.false.i.while.cond.backedge_crit_edge, %_WriteFW.exit.while.cond.backedge_crit_edge, %_WriteFW.exit.thread
  %rtStatus.0.be.ph = phi i32 [ 0, %_WriteFW.exit.thread ], [ 0, %if.then11.i ], [ %ret.1.i, %_WriteFW.exit.while.cond.backedge_crit_edge ], [ 0, %lor.lhs.false.i.while.cond.backedge_crit_edge ], [ 0, %if.end.i.while.cond.backedge_crit_edge ]
  %70 = ptrtoint ptr %bDriverStopped to i32
  call void @__asan_load4_noabort(i32 %70)
  %.pr = load i32, ptr %bDriverStopped, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool71.not = icmp eq i32 %.pr, 0
  br i1 %tobool71.not, label %land.lhs.true, label %while.cond.backedge.while.end.thread_crit_edge

while.cond.backedge.while.end.thread_crit_edge:   ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end.thread

if.end90:                                         ; preds = %_WriteFW.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %71 = load volatile i32, ptr @jiffies, align 128
  br label %do.body.i

do.body.i:                                        ; preds = %if.end.i.do.body.i_crit_edge, %if.end90
  %cnt.0.i = phi i32 [ 0, %if.end90 ], [ %inc.i172, %if.end.i.do.body.i_crit_edge ]
  %inc.i172 = add i32 %cnt.0.i, 1
  %call.i = call i32 @rtw_read32(ptr noundef %padapter, i32 noundef 128) #14
  %and.i = and i32 %call.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i173 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i173, label %lor.lhs.false.i, label %if.end9.critedge.i

lor.lhs.false.i:                                  ; preds = %do.body.i
  %72 = ptrtoint ptr %bSurpriseRemoved to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %bSurpriseRemoved, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %tobool1.not.i = icmp eq i32 %73, 0
  br i1 %tobool1.not.i, label %lor.lhs.false2.i, label %lor.lhs.false.i.while.cond.backedge_crit_edge

lor.lhs.false.i.while.cond.backedge_crit_edge:    ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond.backedge

lor.lhs.false2.i:                                 ; preds = %lor.lhs.false.i
  %74 = ptrtoint ptr %bDriverStopped to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %bDriverStopped, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %tobool3.not.i = icmp eq i32 %75, 0
  br i1 %tobool3.not.i, label %if.end.i, label %lor.lhs.false2.i.while.end.thread_crit_edge

lor.lhs.false2.i.while.end.thread_crit_edge:      ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end.thread

if.end.i:                                         ; preds = %lor.lhs.false2.i
  call void @yield() #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %76 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %76, %71
  %call4.i = call i32 @jiffies_to_msecs(i32 noundef %sub.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 50, i32 %call4.i)
  %cmp.i = icmp ult i32 %call4.i, 50
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %inc.i172)
  %cmp5.i = icmp ult i32 %inc.i172, 5
  %or.cond.i = select i1 %cmp.i, i1 true, i1 %cmp5.i
  br i1 %or.cond.i, label %if.end.i.do.body.i_crit_edge, label %if.end.i.while.cond.backedge_crit_edge

if.end.i.while.cond.backedge_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond.backedge

if.end.i.do.body.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body.i

if.end9.critedge.i:                               ; preds = %do.body.i
  %77 = load i8, ptr @g_fwdl_chksum_fail, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %77)
  %tobool10.not.i = icmp eq i8 %77, 0
  br i1 %tobool10.not.i, label %if.end99, label %if.then11.i

if.then11.i:                                      ; preds = %if.end9.critedge.i
  call void @__sanitizer_cov_trace_pc() #16
  %dec.i = add i8 %77, -1
  store i8 %dec.i, ptr @g_fwdl_chksum_fail, align 1
  br label %while.cond.backedge

while.end.thread:                                 ; preds = %lor.lhs.false2.i.while.end.thread_crit_edge, %while.cond.backedge.while.end.thread_crit_edge, %lor.rhs.while.end.thread_crit_edge, %land.lhs.true.while.end.thread_crit_edge, %land.lhs.true.lr.ph.while.end.thread_crit_edge, %if.end70.while.end.thread_crit_edge
  %rtStatus.0.lcssa = phi i32 [ 0, %if.end70.while.end.thread_crit_edge ], [ 0, %land.lhs.true.lr.ph.while.end.thread_crit_edge ], [ 0, %lor.lhs.false2.i.while.end.thread_crit_edge ], [ %rtStatus.0187215, %lor.rhs.while.end.thread_crit_edge ], [ %rtStatus.0.be.ph, %land.lhs.true.while.end.thread_crit_edge ], [ %rtStatus.0.be.ph, %while.cond.backedge.while.end.thread_crit_edge ]
  call fastcc void @_FWDownloadEnable(ptr noundef %padapter, i1 noundef zeroext false)
  br label %exit

if.end99:                                         ; preds = %if.end9.critedge.i
  call void @__sanitizer_cov_trace_pc() #16
  call fastcc void @_FWDownloadEnable(ptr noundef %padapter, i1 noundef zeroext false)
  %call100 = call fastcc i32 @_FWFreeToGo(ptr noundef %padapter)
  br label %exit

exit:                                             ; preds = %if.end99, %while.end.thread, %if.end41.exit_crit_edge, %if.end37.exit_crit_edge, %do.end34, %do.end26
  %rtStatus.2 = phi i32 [ 0, %do.end26 ], [ %call100, %if.end99 ], [ 0, %do.end34 ], [ 0, %if.end37.exit_crit_edge ], [ 0, %if.end41.exit_crit_edge ], [ %rtStatus.0.lcssa, %while.end.thread ]
  %fw_buffer_sz105 = getelementptr inbounds %struct.rt_firmware, ptr %call7.i.i, i32 0, i32 1
  %78 = ptrtoint ptr %fw_buffer_sz105 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %fw_buffer_sz105, align 4
  call void @kfree(ptr noundef %79) #14
  call void @kfree(ptr noundef nonnull %call7.i.i) #14
  br label %release_fw1

release_fw1:                                      ; preds = %exit, %if.then52
  %rtStatus.3 = phi i32 [ %rtStatus.2, %exit ], [ 0, %if.then52 ]
  call void @kfree(ptr noundef nonnull %call7.i.i171) #14
  br label %cleanup

cleanup:                                          ; preds = %release_fw1, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rtStatus.3, %release_fw1 ], [ 0, %if.then5 ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw) #14
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_emerg(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @_FWDownloadEnable(ptr noundef %padapter, i1 noundef zeroext %enable) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %enable, label %if.then, label %entry.if.end28_crit_edge

entry.if.end28_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end28

if.then:                                          ; preds = %entry
  %call = tail call zeroext i8 @rtw_read8(ptr noundef %padapter, i32 noundef 3) #14
  %0 = or i8 %call, 4
  %call2 = tail call i32 @rtw_write8(ptr noundef %padapter, i32 noundef 3, i8 noundef zeroext %0) #14
  %call3 = tail call zeroext i8 @rtw_read8(ptr noundef %padapter, i32 noundef 128) #14
  %1 = or i8 %call3, 1
  %call7 = tail call i32 @rtw_write8(ptr noundef %padapter, i32 noundef 128, i8 noundef zeroext %1) #14
  br label %do.body

do.body:                                          ; preds = %if.end.do.body_crit_edge, %if.then
  %count.0 = phi i8 [ 0, %if.then ], [ %inc, %if.end.do.body_crit_edge ]
  %call8 = tail call zeroext i8 @rtw_read8(ptr noundef %padapter, i32 noundef 128) #14
  %2 = and i8 %call8, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool10.not = icmp eq i8 %2, 0
  br i1 %tobool10.not, label %if.end, label %do.body.if.end28_crit_edge

do.body.if.end28_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end28

if.end:                                           ; preds = %do.body
  %or13 = or i8 %call8, 1
  %call15 = tail call i32 @rtw_write8(ptr noundef %padapter, i32 noundef 128, i8 noundef zeroext %or13) #14
  tail call void @msleep(i32 noundef 1) #14
  %inc = add nuw nsw i8 %count.0, 1
  %cmp = icmp ult i8 %count.0, 100
  br i1 %cmp, label %if.end.do.body_crit_edge, label %if.end.if.end28_crit_edge

if.end.if.end28_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end28

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body

if.end28:                                         ; preds = %if.end.if.end28_crit_edge, %do.body.if.end28_crit_edge, %entry.if.end28_crit_edge
  %.sink45 = phi i32 [ 128, %entry.if.end28_crit_edge ], [ 130, %do.body.if.end28_crit_edge ], [ 130, %if.end.if.end28_crit_edge ]
  %.sink44 = phi i8 [ -2, %entry.if.end28_crit_edge ], [ -9, %do.body.if.end28_crit_edge ], [ -9, %if.end.if.end28_crit_edge ]
  %call23 = tail call zeroext i8 @rtw_read8(ptr noundef %padapter, i32 noundef %.sink45) #14
  %3 = and i8 %call23, %.sink44
  %call27 = tail call i32 @rtw_write8(ptr noundef %padapter, i32 noundef %.sink45, i8 noundef zeroext %3) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @_FWFreeToGo(ptr noundef %adapter) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %call = tail call i32 @rtw_read32(ptr noundef %adapter, i32 noundef 128) #14
  %or = and i32 %call, -67
  %and = or i32 %or, 2
  %call1 = tail call i32 @rtw_write32(ptr noundef %adapter, i32 noundef 128, i32 noundef %and) #14
  %call.i = tail call zeroext i8 @rtw_read8(ptr noundef %adapter, i32 noundef 29) #14
  %1 = and i8 %call.i, -2
  %call2.i = tail call i32 @rtw_write8(ptr noundef %adapter, i32 noundef 29, i8 noundef zeroext %1) #14
  %call3.i = tail call zeroext i8 @rtw_read8(ptr noundef %adapter, i32 noundef 3) #14
  %2 = and i8 %call3.i, -5
  %call7.i = tail call i32 @rtw_write8(ptr noundef %adapter, i32 noundef 3, i8 noundef zeroext %2) #14
  %call8.i = tail call zeroext i8 @rtw_read8(ptr noundef %adapter, i32 noundef 29) #14
  %3 = or i8 %call8.i, 1
  %call11.i = tail call i32 @rtw_write8(ptr noundef %adapter, i32 noundef 29, i8 noundef zeroext %3) #14
  %call12.i = tail call zeroext i8 @rtw_read8(ptr noundef %adapter, i32 noundef 3) #14
  %4 = or i8 %call12.i, 4
  %call16.i = tail call i32 @rtw_write8(ptr noundef %adapter, i32 noundef 3, i8 noundef zeroext %4) #14
  %bSurpriseRemoved = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 22
  %bDriverStopped = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 21
  br label %do.body

do.body:                                          ; preds = %if.end.do.body_crit_edge, %entry
  %cnt.0 = phi i32 [ 0, %entry ], [ %inc, %if.end.do.body_crit_edge ]
  %inc = add i32 %cnt.0, 1
  %call2 = tail call i32 @rtw_read32(ptr noundef %adapter, i32 noundef 128) #14
  %and3 = and i32 %call2, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool.not = icmp eq i32 %and3, 0
  br i1 %tobool.not, label %lor.lhs.false, label %if.end12.critedge

lor.lhs.false:                                    ; preds = %do.body
  %5 = ptrtoint ptr %bSurpriseRemoved to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %bSurpriseRemoved, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool4.not = icmp eq i32 %6, 0
  br i1 %tobool4.not, label %lor.lhs.false5, label %lor.lhs.false.exit_crit_edge

lor.lhs.false.exit_crit_edge:                     ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %exit

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %7 = ptrtoint ptr %bDriverStopped to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %bDriverStopped, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool6.not = icmp eq i32 %8, 0
  br i1 %tobool6.not, label %if.end, label %lor.lhs.false5.exit_crit_edge

lor.lhs.false5.exit_crit_edge:                    ; preds = %lor.lhs.false5
  call void @__sanitizer_cov_trace_pc() #16
  br label %exit

if.end:                                           ; preds = %lor.lhs.false5
  tail call void @yield() #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %9 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %9, %0
  %call7 = tail call i32 @jiffies_to_msecs(i32 noundef %sub) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 200, i32 %call7)
  %cmp = icmp ult i32 %call7, 200
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %inc)
  %cmp8 = icmp ult i32 %inc, 10
  %or.cond = select i1 %cmp, i1 true, i1 %cmp8
  br i1 %or.cond, label %if.end.do.body_crit_edge, label %if.end.exit_crit_edge

if.end.exit_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %exit

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body

if.end12.critedge:                                ; preds = %do.body
  %10 = load i8, ptr @g_fwdl_wintint_rdy_fail, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool13.not = icmp eq i8 %10, 0
  br i1 %tobool13.not, label %if.end12.critedge.exit_crit_edge, label %if.then14

if.end12.critedge.exit_crit_edge:                 ; preds = %if.end12.critedge
  call void @__sanitizer_cov_trace_pc() #16
  br label %exit

if.then14:                                        ; preds = %if.end12.critedge
  call void @__sanitizer_cov_trace_pc() #16
  %dec = add i8 %10, -1
  store i8 %dec, ptr @g_fwdl_wintint_rdy_fail, align 1
  br label %exit

exit:                                             ; preds = %if.then14, %if.end12.critedge.exit_crit_edge, %if.end.exit_crit_edge, %lor.lhs.false5.exit_crit_edge, %lor.lhs.false.exit_crit_edge
  %ret.0 = phi i32 [ 0, %if.then14 ], [ 1, %if.end12.critedge.exit_crit_edge ], [ 0, %if.end.exit_crit_edge ], [ 0, %lor.lhs.false.exit_crit_edge ], [ 0, %lor.lhs.false5.exit_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl8723b_InitializeFirmwareVars(ptr noundef %padapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %HalData = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 18
  %0 = ptrtoint ptr %HalData to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %HalData, align 8
  %dvobj = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 3
  %2 = ptrtoint ptr %dvobj to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dvobj, align 4
  %fw_current_in_ps_mode = getelementptr inbounds %struct.dvobj_priv, ptr %3, i32 0, i32 22, i32 36
  %4 = ptrtoint ptr %fw_current_in_ps_mode to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %fw_current_in_ps_mode, align 2
  %call = tail call i32 @rtw_write8(ptr noundef %padapter, i32 noundef 460, i8 noundef zeroext 15) #14
  %LastHMEBoxNum = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 102
  %5 = ptrtoint ptr %LastHMEBoxNum to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %LastHMEBoxNum, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl8723b_InitBeaconParameters(ptr noundef %padapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %HalData = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 18
  %0 = ptrtoint ptr %HalData to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %HalData, align 8
  %call = tail call i32 @rtw_write16(ptr noundef %padapter, i32 noundef 1360, i16 noundef zeroext 4120) #14
  %call6 = tail call i32 @rtw_write16(ptr noundef %padapter, i32 noundef 1344, i16 noundef zeroext 25604) #14
  %fw_state.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 1
  %2 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fw_state.i, align 4
  %4 = and i32 %3, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %call9 = tail call i32 @rtw_write8(ptr noundef %padapter, i32 noundef 1368, i8 noundef zeroext 5) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call10 = tail call i32 @rtw_write8(ptr noundef %padapter, i32 noundef 1369, i8 noundef zeroext 2) #14
  %call11 = tail call i32 @rtw_write16(ptr noundef %padapter, i32 noundef 1296, i16 noundef zeroext 26127) #14
  %call12 = tail call zeroext i8 @rtw_read8(ptr noundef %padapter, i32 noundef 1360) #14
  %RegBcnCtrlVal = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 105
  %5 = ptrtoint ptr %RegBcnCtrlVal to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %call12, ptr %RegBcnCtrlVal, align 4
  %call13 = tail call zeroext i8 @rtw_read8(ptr noundef %padapter, i32 noundef 1314) #14
  %RegTxPause = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 104
  %6 = ptrtoint ptr %RegTxPause to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %call13, ptr %RegTxPause, align 1
  %call14 = tail call zeroext i8 @rtw_read8(ptr noundef %padapter, i32 noundef 1058) #14
  %RegFwHwTxQCtrl = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 106
  %7 = ptrtoint ptr %RegFwHwTxQCtrl to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %call14, ptr %RegFwHwTxQCtrl, align 1
  %call15 = tail call zeroext i8 @rtw_read8(ptr noundef %padapter, i32 noundef 1346) #14
  %RegReg542 = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 107
  %8 = ptrtoint ptr %RegReg542 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %call15, ptr %RegReg542, align 2
  %call16 = tail call zeroext i8 @rtw_read8(ptr noundef %padapter, i32 noundef 257) #14
  %RegCR_1 = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 108
  %9 = ptrtoint ptr %RegCR_1 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %call16, ptr %RegCR_1, align 1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_write16(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @_InitBurstPktLen_8723BS(ptr noundef %Adapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %HalData = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 18
  %0 = ptrtoint ptr %HalData to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %HalData, align 8
  %call = tail call zeroext i8 @rtw_read8(ptr noundef %Adapter, i32 noundef 1223) #14
  %2 = or i8 %call, -128
  %call2 = tail call i32 @rtw_write8(ptr noundef %Adapter, i32 noundef 1223, i8 noundef zeroext %2) #14
  %call3 = tail call i32 @rtw_write8(ptr noundef %Adapter, i32 noundef 1548, i8 noundef zeroext 24) #14
  %call4 = tail call i32 @rtw_write8(ptr noundef %Adapter, i32 noundef 1226, i8 noundef zeroext 31) #14
  %call5 = tail call i32 @rtw_write8(ptr noundef %Adapter, i32 noundef 1298, i8 noundef zeroext 0) #14
  %call6 = tail call zeroext i8 @rtw_read8(ptr noundef %Adapter, i32 noundef 1056) #14
  %3 = and i8 %call6, 127
  %call9 = tail call i32 @rtw_write8(ptr noundef %Adapter, i32 noundef 1056, i8 noundef zeroext %3) #14
  %AMPDUBurstMode = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 130
  %4 = ptrtoint ptr %AMPDUBurstMode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %AMPDUBurstMode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %call10 = tail call i32 @rtw_write8(ptr noundef %Adapter, i32 noundef 1212, i8 noundef zeroext 95) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call11 = tail call i32 @rtw_write8(ptr noundef %Adapter, i32 noundef 1110, i8 noundef zeroext 112) #14
  %call12 = tail call i32 @rtw_write32(ptr noundef %Adapter, i32 noundef 1092, i32 noundef 16) #14
  %ChipType = getelementptr inbounds %struct.hal_version, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %ChipType to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ChipType, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp = icmp eq i32 %7, 1
  %. = select i1 %cmp, i32 -4096, i32 1041231872
  %call16 = tail call i32 @rtw_write32(ptr noundef %Adapter, i32 noundef 1096, i32 noundef %.) #14
  %call18 = tail call i32 @rtw_write32(ptr noundef %Adapter, i32 noundef 1100, i32 noundef 16) #14
  %call19 = tail call i32 @rtw_write32(ptr noundef %Adapter, i32 noundef 1104, i32 noundef 4190208) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_write32(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @rtl8723b_set_hal_ops(ptr noundef writeonly %pHalFunc) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %free_hal_data = getelementptr inbounds %struct.hal_ops, ptr %pHalFunc, i32 0, i32 4
  %0 = ptrtoint ptr %free_hal_data to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @rtl8723b_free_hal_data, ptr %free_hal_data, align 4
  %dm_init = getelementptr inbounds %struct.hal_ops, ptr %pHalFunc, i32 0, i32 12
  %1 = ptrtoint ptr %dm_init to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @rtl8723b_init_dm_priv, ptr %dm_init, align 4
  %read_chip_version = getelementptr inbounds %struct.hal_ops, ptr %pHalFunc, i32 0, i32 14
  %2 = ptrtoint ptr %read_chip_version to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @rtl8723b_read_chip_version, ptr %read_chip_version, align 4
  %UpdateRAMaskHandler = getelementptr inbounds %struct.hal_ops, ptr %pHalFunc, i32 0, i32 37
  %3 = ptrtoint ptr %UpdateRAMaskHandler to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @UpdateHalRAMask8723B, ptr %UpdateRAMaskHandler, align 4
  %set_bwmode_handler = getelementptr inbounds %struct.hal_ops, ptr %pHalFunc, i32 0, i32 23
  %4 = ptrtoint ptr %set_bwmode_handler to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @PHY_SetBWMode8723B, ptr %set_bwmode_handler, align 4
  %set_channel_handler = getelementptr inbounds %struct.hal_ops, ptr %pHalFunc, i32 0, i32 24
  %5 = ptrtoint ptr %set_channel_handler to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @PHY_SwChnl8723B, ptr %set_channel_handler, align 4
  %set_chnl_bw_handler = getelementptr inbounds %struct.hal_ops, ptr %pHalFunc, i32 0, i32 25
  %6 = ptrtoint ptr %set_chnl_bw_handler to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @PHY_SetSwChnlBWMode8723B, ptr %set_chnl_bw_handler, align 4
  %set_tx_power_level_handler = getelementptr inbounds %struct.hal_ops, ptr %pHalFunc, i32 0, i32 26
  %7 = ptrtoint ptr %set_tx_power_level_handler to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @PHY_SetTxPowerLevel8723B, ptr %set_tx_power_level_handler, align 4
  %get_tx_power_level_handler = getelementptr inbounds %struct.hal_ops, ptr %pHalFunc, i32 0, i32 27
  %8 = ptrtoint ptr %get_tx_power_level_handler to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @PHY_GetTxPowerLevel8723B, ptr %get_tx_power_level_handler, align 4
  %hal_dm_watchdog = getelementptr inbounds %struct.hal_ops, ptr %pHalFunc, i32 0, i32 28
  %9 = ptrtoint ptr %hal_dm_watchdog to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @rtl8723b_HalDmWatchDog, ptr %hal_dm_watchdog, align 4
  %hal_dm_watchdog_in_lps = getelementptr inbounds %struct.hal_ops, ptr %pHalFunc, i32 0, i32 29
  %10 = ptrtoint ptr %hal_dm_watchdog_in_lps to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @rtl8723b_HalDmWatchDog_in_LPS, ptr %hal_dm_watchdog_in_lps, align 4
  %SetBeaconRelatedRegistersHandler = getelementptr inbounds %struct.hal_ops, ptr %pHalFunc, i32 0, i32 38
  %11 = ptrtoint ptr %SetBeaconRelatedRegistersHandler to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @rtl8723b_SetBeaconRelatedRegisters, ptr %SetBeaconRelatedRegistersHandler, align 4
  %Add_RateATid = getelementptr inbounds %struct.hal_ops, ptr %pHalFunc, i32 0, i32 39
  %12 = ptrtoint ptr %Add_RateATid to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @rtl8723b_Add_RateATid, ptr %Add_RateATid, align 4
  %run_thread = getelementptr inbounds %struct.hal_ops, ptr %pHalFunc, i32 0, i32 40
  %13 = ptrtoint ptr %run_thread to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @rtl8723b_start_thread, ptr %run_thread, align 4
  %cancel_thread = getelementptr inbounds %struct.hal_ops, ptr %pHalFunc, i32 0, i32 41
  %14 = ptrtoint ptr %cancel_thread to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @rtl8723b_stop_thread, ptr %cancel_thread, align 4
  %read_bbreg = getelementptr inbounds %struct.hal_ops, ptr %pHalFunc, i32 0, i32 46
  %15 = ptrtoint ptr %read_bbreg to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @PHY_QueryBBReg_8723B, ptr %read_bbreg, align 4
  %write_bbreg = getelementptr inbounds %struct.hal_ops, ptr %pHalFunc, i32 0, i32 47
  %16 = ptrtoint ptr %write_bbreg to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @PHY_SetBBReg_8723B, ptr %write_bbreg, align 4
  %read_rfreg = getelementptr inbounds %struct.hal_ops, ptr %pHalFunc, i32 0, i32 48
  %17 = ptrtoint ptr %read_rfreg to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @PHY_QueryRFReg_8723B, ptr %read_rfreg, align 4
  %write_rfreg = getelementptr inbounds %struct.hal_ops, ptr %pHalFunc, i32 0, i32 49
  %18 = ptrtoint ptr %write_rfreg to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @PHY_SetRFReg_8723B, ptr %write_rfreg, align 4
  %BTEfusePowerSwitch = getelementptr inbounds %struct.hal_ops, ptr %pHalFunc, i32 0, i32 51
  %19 = ptrtoint ptr %BTEfusePowerSwitch to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @Hal_BT_EfusePowerSwitch, ptr %BTEfusePowerSwitch, align 4
  %EfusePowerSwitch = getelementptr inbounds %struct.hal_ops, ptr %pHalFunc, i32 0, i32 50
  %20 = ptrtoint ptr %EfusePowerSwitch to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @Hal_EfusePowerSwitch, ptr %EfusePowerSwitch, align 4
  %ReadEFuse = getelementptr inbounds %struct.hal_ops, ptr %pHalFunc, i32 0, i32 52
  %21 = ptrtoint ptr %ReadEFuse to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @Hal_ReadEFuse, ptr %ReadEFuse, align 4
  %EFUSEGetEfuseDefinition = getelementptr inbounds %struct.hal_ops, ptr %pHalFunc, i32 0, i32 53
  %22 = ptrtoint ptr %EFUSEGetEfuseDefinition to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @Hal_GetEfuseDefinition, ptr %EFUSEGetEfuseDefinition, align 4
  %EfuseGetCurrentSize = getelementptr inbounds %struct.hal_ops, ptr %pHalFunc, i32 0, i32 54
  %23 = ptrtoint ptr %EfuseGetCurrentSize to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @Hal_EfuseGetCurrentSize, ptr %EfuseGetCurrentSize, align 4
  %Efuse_PgPacketRead = getelementptr inbounds %struct.hal_ops, ptr %pHalFunc, i32 0, i32 55
  %24 = ptrtoint ptr %Efuse_PgPacketRead to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @Hal_EfusePgPacketRead, ptr %Efuse_PgPacketRead, align 4
  %Efuse_PgPacketWrite = getelementptr inbounds %struct.hal_ops, ptr %pHalFunc, i32 0, i32 56
  %25 = ptrtoint ptr %Efuse_PgPacketWrite to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @Hal_EfusePgPacketWrite, ptr %Efuse_PgPacketWrite, align 4
  %Efuse_WordEnableDataWrite = getelementptr inbounds %struct.hal_ops, ptr %pHalFunc, i32 0, i32 57
  %26 = ptrtoint ptr %Efuse_WordEnableDataWrite to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @Hal_EfuseWordEnableDataWrite, ptr %Efuse_WordEnableDataWrite, align 4
  %Efuse_PgPacketWrite_BT = getelementptr inbounds %struct.hal_ops, ptr %pHalFunc, i32 0, i32 58
  %27 = ptrtoint ptr %Efuse_PgPacketWrite_BT to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @Hal_EfusePgPacketWrite_BT, ptr %Efuse_PgPacketWrite_BT, align 4
  %GetHalODMVarHandler = getelementptr inbounds %struct.hal_ops, ptr %pHalFunc, i32 0, i32 35
  %28 = ptrtoint ptr %GetHalODMVarHandler to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @rtl8723b_GetHalODMVar, ptr %GetHalODMVarHandler, align 4
  %SetHalODMVarHandler = getelementptr inbounds %struct.hal_ops, ptr %pHalFunc, i32 0, i32 36
  %29 = ptrtoint ptr %SetHalODMVarHandler to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @rtl8723b_SetHalODMVar, ptr %SetHalODMVarHandler, align 4
  %xmit_thread_handler = getelementptr inbounds %struct.hal_ops, ptr %pHalFunc, i32 0, i32 59
  %30 = ptrtoint ptr %xmit_thread_handler to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @rtl8723bs_xmit_buf_handler, ptr %xmit_thread_handler, align 4
  %hal_notch_filter = getelementptr inbounds %struct.hal_ops, ptr %pHalFunc, i32 0, i32 60
  %31 = ptrtoint ptr %hal_notch_filter to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @hal_notch_filter_8723b, ptr %hal_notch_filter, align 4
  %c2h_handler = getelementptr inbounds %struct.hal_ops, ptr %pHalFunc, i32 0, i32 62
  %32 = ptrtoint ptr %c2h_handler to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @c2h_handler_8723b, ptr %c2h_handler, align 4
  %c2h_id_filter_ccx = getelementptr inbounds %struct.hal_ops, ptr %pHalFunc, i32 0, i32 63
  %33 = ptrtoint ptr %c2h_id_filter_ccx to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @c2h_id_filter_ccx_8723b, ptr %c2h_id_filter_ccx, align 4
  %fill_h2c_cmd = getelementptr inbounds %struct.hal_ops, ptr %pHalFunc, i32 0, i32 64
  %34 = ptrtoint ptr %fill_h2c_cmd to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @FillH2CCmd8723B, ptr %fill_h2c_cmd, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @rtl8723b_free_hal_data(ptr nocapture noundef %padapter) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl8723b_init_dm_priv(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtl8723b_read_chip_version(ptr noundef %padapter) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %HalData.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 18
  %0 = ptrtoint ptr %HalData.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %HalData.i, align 8, !noalias !50
  %call.i = tail call i32 @rtw_read32(ptr noundef %padapter, i32 noundef 240) #14, !noalias !50
  %and.i = lshr i32 %call.i, 23
  %and.lobit.i = and i32 %and.i, 1
  %2 = xor i32 %and.lobit.i, 1
  %and1.i = lshr i32 %call.i, 19
  %and1.lobit.i = and i32 %and1.i, 1
  %and4.i = lshr i32 %call.i, 12
  %shr.i = and i32 %and4.i, 15
  %and5.i = lshr i32 %call.i, 24
  %and5.lobit.i = and i32 %and5.i, 1
  %RegulatorMode.i = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 3
  %3 = ptrtoint ptr %RegulatorMode.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %and5.lobit.i, ptr %RegulatorMode.i, align 4, !noalias !50
  %call8.i = tail call i32 @rtw_read32(ptr noundef %padapter, i32 noundef 244) #14, !noalias !50
  %MultiFunc.i = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %MultiFunc.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %MultiFunc.i, align 4, !noalias !50
  %call11.i = tail call i32 @rtw_read32(ptr noundef %padapter, i32 noundef 104) #14, !noalias !50
  %and12.i = lshr i32 %call11.i, 2
  %and12.lobit.i = and i32 %and12.i, 1
  %5 = ptrtoint ptr %MultiFunc.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %MultiFunc.i, align 4, !noalias !50
  %or.i = or i32 %and12.lobit.i, %6
  %and16.i = lshr i32 %call11.i, 17
  %7 = and i32 %and16.i, 2
  %or20.i = or i32 %or.i, %7
  %and21.i = lshr i32 %call11.i, 20
  %8 = and i32 %and21.i, 4
  %or25.i = or i32 %or20.i, %8
  store i32 %or25.i, ptr %MultiFunc.i, align 4, !noalias !50
  %and26.i = lshr i32 %call11.i, 1
  %and26.lobit.i = and i32 %and26.i, 1
  %PolarityCtl.i = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 2
  %9 = ptrtoint ptr %PolarityCtl.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %and26.lobit.i, ptr %PolarityCtl.i, align 8, !noalias !50
  %10 = insertvalue [5 x i32] [i32 8, i32 undef, i32 undef, i32 undef, i32 undef], i32 %2, 1
  %11 = insertvalue [5 x i32] %10, i32 %shr.i, 2
  %12 = insertvalue [5 x i32] %11, i32 %and1.lobit.i, 3
  %13 = insertvalue [5 x i32] %12, i32 16777215, 4
  tail call void @dump_chip_info([5 x i32] %13) #14, !noalias !50
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 8, ptr %1, align 8
  %tmp.sroa.4.0..sroa_idx = getelementptr inbounds i8, ptr %1, i32 4
  %15 = ptrtoint ptr %tmp.sroa.4.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %2, ptr %tmp.sroa.4.0..sroa_idx, align 4
  %tmp.sroa.5.0..sroa_idx = getelementptr inbounds i8, ptr %1, i32 8
  %16 = ptrtoint ptr %tmp.sroa.5.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %shr.i, ptr %tmp.sroa.5.0..sroa_idx, align 8
  %tmp.sroa.6.0..sroa_idx = getelementptr inbounds i8, ptr %1, i32 12
  %17 = ptrtoint ptr %tmp.sroa.6.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %and1.lobit.i, ptr %tmp.sroa.6.0..sroa_idx, align 4
  %tmp.sroa.7.0..sroa_idx = getelementptr inbounds i8, ptr %1, i32 16
  %18 = ptrtoint ptr %tmp.sroa.7.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 16777215, ptr %tmp.sroa.7.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @UpdateHalRAMask8723B(ptr noundef %padapter, i32 noundef %mac_id, i8 noundef zeroext %rssi_level) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %HalData = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 18
  %0 = ptrtoint ptr %HalData to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %HalData, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %mac_id)
  %cmp = icmp ugt i32 %mac_id, 31
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 40, i32 %mac_id
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %call = tail call zeroext i8 @query_ra_short_GI(ptr noundef nonnull %3) #14
  %ra_mask = getelementptr inbounds %struct.sta_info, ptr %3, i32 0, i32 29
  %4 = ptrtoint ptr %ra_mask to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ra_mask, align 8
  %odmpriv = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 141
  %call4 = tail call i32 @ODM_Get_Rate_Bitmap(ptr noundef %odmpriv, i32 noundef %mac_id, i32 noundef %5, i8 noundef zeroext %rssi_level) #14
  %call5 = tail call i32 @hal_btcoex_GetRaMask(ptr noundef %padapter) #14
  %fw_ractrl = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 103
  %6 = ptrtoint ptr %fw_ractrl to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %fw_ractrl, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool7.not = icmp eq i8 %7, 0
  br i1 %tobool7.not, label %if.end3.if.end9_crit_edge, label %if.then8

if.end3.if.end9_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end9

if.then8:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #16
  %and = and i32 %call4, %5
  %neg = xor i32 %call5, -1
  %and6 = and i32 %and, %neg
  %conv = trunc i32 %mac_id to i8
  %raid = getelementptr inbounds %struct.sta_info, ptr %3, i32 0, i32 27
  %8 = ptrtoint ptr %raid to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %raid, align 2
  %bw_mode = getelementptr inbounds %struct.sta_info, ptr %3, i32 0, i32 31
  %10 = ptrtoint ptr %bw_mode to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %bw_mode, align 1
  tail call void @rtl8723b_set_FwMacIdConfig_cmd(ptr noundef %padapter, i8 noundef zeroext %conv, i8 noundef zeroext %9, i8 noundef zeroext %11, i8 noundef zeroext %call, i32 noundef %and6) #14
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.end3.if.end9_crit_edge
  %init_rate = getelementptr inbounds %struct.sta_info, ptr %3, i32 0, i32 28
  %12 = ptrtoint ptr %init_rate to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %init_rate, align 1
  %arrayidx10 = getelementptr %struct.hal_com_data, ptr %1, i32 0, i32 140, i32 50, i32 %mac_id
  %14 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %arrayidx10, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @PHY_SetBWMode8723B(ptr noundef, i32 noundef, i8 noundef zeroext) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @PHY_SwChnl8723B(ptr noundef, i8 noundef zeroext) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @PHY_SetSwChnlBWMode8723B(ptr noundef, i8 noundef zeroext, i32 noundef, i8 noundef zeroext, i8 noundef zeroext) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @PHY_SetTxPowerLevel8723B(ptr noundef, i8 noundef zeroext) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @PHY_GetTxPowerLevel8723B(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl8723b_HalDmWatchDog(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl8723b_HalDmWatchDog_in_LPS(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtl8723b_SetBeaconRelatedRegisters(ptr noundef %padapter) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rtw_write16(ptr noundef %padapter, i32 noundef 1370, i16 noundef zeroext 2) #14
  %bcn_interval = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 12
  %0 = ptrtoint ptr %bcn_interval to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %bcn_interval, align 2
  %call1 = tail call i32 @rtw_write16(ptr noundef %padapter, i32 noundef 1364, i16 noundef zeroext %1) #14
  tail call void @rtl8723b_InitBeaconParameters(ptr noundef %padapter)
  %call2 = tail call i32 @rtw_write8(ptr noundef %padapter, i32 noundef 1307, i8 noundef zeroext 9) #14
  %call3 = tail call i32 @rtw_read32(ptr noundef %padapter, i32 noundef 1540) #14
  %and = and i32 %call3, -2
  %call4 = tail call i32 @rtw_write32(ptr noundef %padapter, i32 noundef 1540, i32 noundef %and) #14
  %or = or i32 %call3, 1
  %call5 = tail call i32 @rtw_write32(ptr noundef %padapter, i32 noundef 1540, i32 noundef %or) #14
  %fw_state.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 1
  %2 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fw_state.i, align 4
  %and.i = and i32 %3, 112
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %call7 = tail call i32 @rtw_write8(ptr noundef %padapter, i32 noundef 1374, i8 noundef zeroext 80) #14
  %call8 = tail call i32 @rtw_write8(ptr noundef %padapter, i32 noundef 1375, i8 noundef zeroext 80) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call.i = tail call i32 @rtw_write8(ptr noundef %padapter, i32 noundef 1360, i8 noundef zeroext 26) #14
  %call1.i = tail call i32 @rtw_write8(ptr noundef %padapter, i32 noundef 1317, i8 noundef zeroext 111) #14
  %HalData.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 18
  %4 = ptrtoint ptr %HalData.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %HalData.i, align 8
  %RegFwHwTxQCtrl.i = getelementptr inbounds %struct.hal_com_data, ptr %5, i32 0, i32 106
  %6 = ptrtoint ptr %RegFwHwTxQCtrl.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %RegFwHwTxQCtrl.i, align 1
  %8 = or i8 %7, 64
  store i8 %8, ptr %RegFwHwTxQCtrl.i, align 1
  %call.i32 = tail call i32 @rtw_write8(ptr noundef %padapter, i32 noundef 1058, i8 noundef zeroext %8) #14
  %call3.i = tail call i32 @rtw_write8(ptr noundef %padapter, i32 noundef 1345, i8 noundef zeroext -1) #14
  %RegReg542.i = getelementptr inbounds %struct.hal_com_data, ptr %5, i32 0, i32 107
  %9 = ptrtoint ptr %RegReg542.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %RegReg542.i, align 2
  %11 = or i8 %10, 1
  store i8 %11, ptr %RegReg542.i, align 2
  %call8.i = tail call i32 @rtw_write8(ptr noundef %padapter, i32 noundef 1346, i8 noundef zeroext %11) #14
  %call9 = tail call zeroext i8 @rtw_read8(ptr noundef %padapter, i32 noundef 1360) #14
  %12 = or i8 %call9, 2
  %call12 = tail call i32 @rtw_write8(ptr noundef %padapter, i32 noundef 1360, i8 noundef zeroext %12) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl8723b_Add_RateATid(ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl8723b_start_thread(ptr noundef %padapter) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr (ptr, ptr, i32, ptr, ...) @kthread_create_on_node(ptr noundef nonnull @rtl8723bs_xmit_thread, ptr noundef %padapter, i32 noundef -1, ptr noundef nonnull @.str.11) #14
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %call3 = tail call i32 @wake_up_process(ptr noundef %call) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %SdioXmitThread = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 9, i32 28
  %0 = ptrtoint ptr %SdioXmitThread to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call, ptr %SdioXmitThread, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl8723b_stop_thread(ptr noundef %padapter) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %SdioXmitThread = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 9, i32 28
  %0 = ptrtoint ptr %SdioXmitThread to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %SdioXmitThread, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %SdioXmitStart = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 9, i32 29
  tail call void @complete(ptr noundef %SdioXmitStart) #14
  %SdioXmitTerminate = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 9, i32 30
  tail call void @wait_for_completion(ptr noundef %SdioXmitTerminate) #14
  %2 = ptrtoint ptr %SdioXmitThread to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %SdioXmitThread, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @PHY_QueryBBReg_8723B(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @PHY_SetBBReg_8723B(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @PHY_QueryRFReg_8723B(ptr noundef, i8 noundef zeroext, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @PHY_SetRFReg_8723B(ptr noundef, i8 noundef zeroext, i32 noundef, i32 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @Hal_BT_EfusePowerSwitch(ptr noundef %padapter, i8 noundef zeroext %bWrite, i8 noundef zeroext %PwrState) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %PwrState)
  %tobool.not = icmp eq i8 %PwrState, 0
  %call7 = tail call zeroext i8 @rtw_read8(ptr noundef %padapter, i32 noundef 107) #14
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %0 = or i8 %call7, 64
  %call2 = tail call i32 @rtw_write8(ptr noundef %padapter, i32 noundef 107, i8 noundef zeroext %0) #14
  tail call void @msleep(i32 noundef 1) #14
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %1 = or i8 %call7, -128
  %call11 = tail call i32 @rtw_write8(ptr noundef %padapter, i32 noundef 107, i8 noundef zeroext %1) #14
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %.sink31 = phi i8 [ -65, %if.else ], [ 127, %if.then ]
  %call12 = tail call zeroext i8 @rtw_read8(ptr noundef %padapter, i32 noundef 107) #14
  %2 = and i8 %call12, %.sink31
  %call16 = tail call i32 @rtw_write8(ptr noundef %padapter, i32 noundef 107, i8 noundef zeroext %2) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @Hal_EfusePowerSwitch(ptr noundef %padapter, i8 noundef zeroext %bWrite, i8 noundef zeroext %PwrState) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %PwrState)
  %tobool.not = icmp eq i8 %PwrState, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call zeroext i8 @rtw_read8(ptr noundef %padapter, i32 noundef 270860422) #14
  %0 = and i8 %call, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool1.not = icmp eq i8 %0, 0
  br i1 %tobool1.not, label %if.then.if.end20_crit_edge, label %if.then2

if.then.if.end20_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end20

if.then2:                                         ; preds = %if.then
  %and4 = and i8 %call, -2
  %call6 = tail call i32 @rtw_write8(ptr noundef %padapter, i32 noundef 270860422, i8 noundef zeroext %and4) #14
  %call797 = tail call zeroext i8 @rtw_read8(ptr noundef %padapter, i32 noundef 270860422) #14
  %1 = and i8 %call797, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %1)
  %cmp98 = icmp eq i8 %1, 2
  br i1 %cmp98, label %if.then2.if.end20_crit_edge, label %if.then2.if.end_crit_edge

if.then2.if.end_crit_edge:                        ; preds = %if.then2
  br label %if.end

if.then2.if.end20_crit_edge:                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end20

if.end:                                           ; preds = %while.body.preheader.if.end_crit_edge, %if.then2.if.end_crit_edge
  %count.099 = phi i8 [ %inc, %while.body.preheader.if.end_crit_edge ], [ 0, %if.then2.if.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 98, i8 %count.099)
  %cmp15 = icmp ugt i8 %count.099, 98
  br i1 %cmp15, label %if.end.if.end20_crit_edge, label %while.body.preheader

if.end.if.end20_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end20

while.body.preheader:                             ; preds = %if.end
  %inc = add nuw nsw i8 %count.099, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %2(i32 noundef 214748000) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %3 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %3(i32 noundef 214748000) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 214748000) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 214748000) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 214748000) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 214748000) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 214748000) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 214748000) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 214748000) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 214748000) #14
  %call7 = tail call zeroext i8 @rtw_read8(ptr noundef %padapter, i32 noundef 270860422) #14
  %12 = and i8 %call7, 3
  %cmp = icmp eq i8 %12, 2
  br i1 %cmp, label %while.body.preheader.if.end20_crit_edge, label %while.body.preheader.if.end_crit_edge

while.body.preheader.if.end_crit_edge:            ; preds = %while.body.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

while.body.preheader.if.end20_crit_edge:          ; preds = %while.body.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end20

if.end20:                                         ; preds = %while.body.preheader.if.end20_crit_edge, %if.end.if.end20_crit_edge, %if.then2.if.end20_crit_edge, %if.then.if.end20_crit_edge
  %call21 = tail call i32 @rtw_write8(ptr noundef %padapter, i32 noundef 207, i8 noundef zeroext 105) #14
  %call22 = tail call zeroext i16 @rtw_read16(ptr noundef %padapter, i32 noundef 2) #14
  %13 = and i16 %call22, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %tobool25.not = icmp eq i16 %13, 0
  br i1 %tobool25.not, label %if.then26, label %if.end20.if.end30_crit_edge

if.end20.if.end30_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end30

if.then26:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #16
  %or = or i16 %call22, 4096
  %call29 = tail call i32 @rtw_write16(ptr noundef %padapter, i32 noundef 2, i16 noundef zeroext %or) #14
  br label %if.end30

if.end30:                                         ; preds = %if.then26, %if.end20.if.end30_crit_edge
  %call31 = tail call zeroext i16 @rtw_read16(ptr noundef %padapter, i32 noundef 8) #14
  %14 = and i16 %call31, 34
  call void @__sanitizer_cov_trace_const_cmp2(i16 34, i16 %14)
  %.not = icmp eq i16 %14, 34
  br i1 %.not, label %if.end30.if.end43_crit_edge, label %if.then38

if.end30.if.end43_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end43

if.then38:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #16
  %or40 = or i16 %call31, 34
  %call42 = tail call i32 @rtw_write16(ptr noundef %padapter, i32 noundef 8, i16 noundef zeroext %or40) #14
  br label %if.end43

if.end43:                                         ; preds = %if.then38, %if.end30.if.end43_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bWrite)
  %tobool44.not = icmp eq i8 %bWrite, 0
  br i1 %tobool44.not, label %if.end43.if.end67_crit_edge, label %if.then45

if.end43.if.end67_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end67

if.then45:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #16
  %call46 = tail call zeroext i8 @rtw_read8(ptr noundef %padapter, i32 noundef 55) #14
  %15 = and i8 %call46, 15
  %16 = or i8 %15, -80
  br label %if.end67.sink.split

if.else:                                          ; preds = %entry
  %call58 = tail call i32 @rtw_write8(ptr noundef %padapter, i32 noundef 207, i8 noundef zeroext 0) #14
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bWrite)
  %tobool59.not = icmp eq i8 %bWrite, 0
  br i1 %tobool59.not, label %if.else.if.end67_crit_edge, label %if.then60

if.else.if.end67_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end67

if.then60:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  %call61 = tail call zeroext i8 @rtw_read8(ptr noundef %padapter, i32 noundef 55) #14
  %17 = and i8 %call61, 127
  br label %if.end67.sink.split

if.end67.sink.split:                              ; preds = %if.then60, %if.then45
  %.sink = phi i8 [ %17, %if.then60 ], [ %16, %if.then45 ]
  %call65 = tail call i32 @rtw_write8(ptr noundef %padapter, i32 noundef 55, i8 noundef zeroext %.sink) #14
  br label %if.end67

if.end67:                                         ; preds = %if.end67.sink.split, %if.else.if.end67_crit_edge, %if.end43.if.end67_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @Hal_ReadEFuse(ptr noundef %padapter, i8 noundef zeroext %efuseType, i16 noundef zeroext %_offset, i16 noundef zeroext %_size_byte, ptr nocapture noundef writeonly %pbuf, i1 noundef zeroext %bPseudoTest) #0 align 64 {
entry:
  %efuseHeader.i8 = alloca i8, align 1
  %efuseExtHdr.i9 = alloca i8, align 1
  %efuseData.i10 = alloca i8, align 1
  %total.i11 = alloca i16, align 2
  %used.i12 = alloca i16, align 2
  %efuse_usage.i13 = alloca i8, align 1
  %efuseHeader.i = alloca i8, align 1
  %efuseExtHdr.i = alloca i8, align 1
  %efuseData.i = alloca i8, align 1
  %total.i = alloca i16, align 2
  %used.i = alloca i16, align 2
  %efuse_usage.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %efuseType)
  %cmp = icmp eq i8 %efuseType, 0
  %HalData.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 18
  %0 = ptrtoint ptr %HalData.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %HalData.i, align 8
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %efuseHeader.i) #14
  %2 = ptrtoint ptr %efuseHeader.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %efuseHeader.i, align 1, !annotation !49
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %efuseExtHdr.i) #14
  %3 = ptrtoint ptr %efuseExtHdr.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %efuseExtHdr.i, align 1, !annotation !49
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %efuseData.i) #14
  %4 = ptrtoint ptr %efuseData.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %efuseData.i, align 1, !annotation !49
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %total.i) #14
  %5 = ptrtoint ptr %total.i to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 -1, ptr %total.i, align 2, !annotation !49
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %used.i) #14
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %efuse_usage.i) #14
  %conv.i = zext i16 %_offset to i32
  %conv1.i = zext i16 %_size_byte to i32
  %add.i = add nuw nsw i32 %conv1.i, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %add.i)
  %cmp.i = icmp ugt i32 %add.i, 512
  br i1 %cmp.i, label %if.then.hal_ReadEFuse_WiFi.exit_crit_edge, label %if.end.i

if.then.hal_ReadEFuse_WiFi.exit_crit_edge:        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %hal_ReadEFuse_WiFi.exit

if.end.i:                                         ; preds = %if.then
  %call.i = tail call ptr @_rtw_malloc(i32 noundef 512) #14
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end.i.hal_ReadEFuse_WiFi.exit_crit_edge, label %if.end4.i

if.end.i.hal_ReadEFuse_WiFi.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %hal_ReadEFuse_WiFi.exit

if.end4.i:                                        ; preds = %if.end.i
  %6 = call ptr @memset(ptr %call.i, i32 255, i32 512)
  br i1 %bPseudoTest, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #16
  %7 = ptrtoint ptr %HalData.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %HalData.i, align 8
  %EfuseHal.i.i = getelementptr inbounds %struct.hal_com_data, ptr %8, i32 0, i32 44
  %9 = ptrtoint ptr %EfuseHal.i.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %EfuseHal.i.i, align 4
  br label %while.body.i.preheader

if.else.i.i:                                      ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #16
  %call.i.i = tail call i32 @rtw_read32(ptr noundef %padapter, i32 noundef 52) #14
  %and.i.i = and i32 %call.i.i, -769
  %call12.i.i = tail call i32 @rtw_write32(ptr noundef %padapter, i32 noundef 52, i32 noundef %and.i.i) #14
  br label %while.body.i.preheader

while.body.i.preheader:                           ; preds = %if.else.i.i, %if.then.i.i
  br label %while.body.i

while.body.i:                                     ; preds = %while.cond.backedge.i.while.body.i_crit_edge, %while.body.i.preheader
  %eFuse_Addr.0172.i = phi i16 [ %eFuse_Addr.0.be.i, %while.cond.backedge.i.while.body.i_crit_edge ], [ 0, %while.body.i.preheader ]
  %inc.i = add nuw nsw i16 %eFuse_Addr.0172.i, 1
  %call11.i = call zeroext i8 @efuse_OneByteRead(ptr noundef %padapter, i16 noundef zeroext %eFuse_Addr.0172.i, ptr noundef nonnull %efuseHeader.i, i1 noundef zeroext %bPseudoTest) #14
  %10 = ptrtoint ptr %efuseHeader.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %efuseHeader.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %11)
  %cmp13.i = icmp eq i8 %11, -1
  br i1 %cmp13.i, label %while.body.i.while.end.i_crit_edge, label %if.end16.i

while.body.i.while.end.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end.i

if.end16.i:                                       ; preds = %while.body.i
  %12 = and i8 %11, 31
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %12)
  %cmp18.i = icmp eq i8 %12, 15
  br i1 %cmp18.i, label %if.then20.i, label %if.end48.thread.i

if.then20.i:                                      ; preds = %if.end16.i
  %inc24.i = add nuw nsw i16 %eFuse_Addr.0172.i, 2
  %call26.i = call zeroext i8 @efuse_OneByteRead(ptr noundef %padapter, i16 noundef zeroext %inc.i, ptr noundef nonnull %efuseExtHdr.i, i1 noundef zeroext %bPseudoTest) #14
  %13 = ptrtoint ptr %efuseExtHdr.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %efuseExtHdr.i, align 1
  %15 = and i8 %14, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %15)
  %cmp29.i = icmp eq i8 %15, 15
  br i1 %cmp29.i, label %if.then20.i.while.cond.backedge.i_crit_edge, label %if.end48.i

if.then20.i.while.cond.backedge.i_crit_edge:      ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond.backedge.i

if.end48.thread.i:                                ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #16
  %16 = lshr i8 %11, 4
  %and46.i = and i8 %11, 15
  br label %if.then52.i

if.end48.i:                                       ; preds = %if.then20.i
  %17 = lshr i8 %11, 5
  %and34.i = lshr i8 %14, 1
  %18 = and i8 %and34.i, 120
  %or.i = or i8 %18, %17
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %or.i)
  %cmp50.i = icmp ult i8 %or.i, 64
  br i1 %cmp50.i, label %if.end48.i.if.then52.i_crit_edge, label %if.else77.i

if.end48.i.if.then52.i_crit_edge:                 ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then52.i

if.then52.i:                                      ; preds = %if.end48.i.if.then52.i_crit_edge, %if.end48.thread.i
  %wden.0168.i = phi i8 [ %and46.i, %if.end48.thread.i ], [ %15, %if.end48.i.if.then52.i_crit_edge ]
  %offset.0167.i = phi i8 [ %16, %if.end48.thread.i ], [ %or.i, %if.end48.i.if.then52.i_crit_edge ]
  %eFuse_Addr.1166.i = phi i16 [ %inc.i, %if.end48.thread.i ], [ %inc24.i, %if.end48.i.if.then52.i_crit_edge ]
  %conv58.i = zext i8 %wden.0168.i to i32
  %19 = zext i8 %offset.0167.i to i32
  %20 = shl nuw nsw i32 %19, 3
  %and60.i = and i32 %conv58.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and60.i)
  %tobool61.not.i = icmp eq i32 %and60.i, 0
  br i1 %tobool61.not.i, label %if.then62.i, label %if.then52.i.if.end72.i_crit_edge

if.then52.i.if.end72.i_crit_edge:                 ; preds = %if.then52.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end72.i

if.then62.i:                                      ; preds = %if.then52.i
  call void @__sanitizer_cov_trace_pc() #16
  %inc63.i = add nuw nsw i16 %eFuse_Addr.1166.i, 1
  %call65.i = call zeroext i8 @efuse_OneByteRead(ptr noundef %padapter, i16 noundef zeroext %eFuse_Addr.1166.i, ptr noundef nonnull %efuseData.i, i1 noundef zeroext %bPseudoTest) #14
  %21 = ptrtoint ptr %efuseData.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %efuseData.i, align 1
  %arrayidx.i = getelementptr i8, ptr %call.i, i32 %20
  %23 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %22, ptr %arrayidx.i, align 1
  %inc66.i = add nuw nsw i16 %eFuse_Addr.1166.i, 2
  %call68.i = call zeroext i8 @efuse_OneByteRead(ptr noundef %padapter, i16 noundef zeroext %inc63.i, ptr noundef nonnull %efuseData.i, i1 noundef zeroext %bPseudoTest) #14
  %24 = ptrtoint ptr %efuseData.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %efuseData.i, align 1
  %add70.i = or i32 %20, 1
  %arrayidx71.i = getelementptr i8, ptr %call.i, i32 %add70.i
  %26 = ptrtoint ptr %arrayidx71.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %25, ptr %arrayidx71.i, align 1
  br label %if.end72.i

if.end72.i:                                       ; preds = %if.then62.i, %if.then52.i.if.end72.i_crit_edge
  %eFuse_Addr.3.i = phi i16 [ %eFuse_Addr.1166.i, %if.then52.i.if.end72.i_crit_edge ], [ %inc66.i, %if.then62.i ]
  %and60.1.i = and i32 %conv58.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and60.1.i)
  %tobool61.not.1.i = icmp eq i32 %and60.1.i, 0
  br i1 %tobool61.not.1.i, label %if.then62.1.i, label %if.end72.i.if.end72.1.i_crit_edge

if.end72.i.if.end72.1.i_crit_edge:                ; preds = %if.end72.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end72.1.i

if.then62.1.i:                                    ; preds = %if.end72.i
  call void @__sanitizer_cov_trace_pc() #16
  %indvars.iv.next.i = or i32 %20, 2
  %inc63.1.i = add nuw nsw i16 %eFuse_Addr.3.i, 1
  %call65.1.i = call zeroext i8 @efuse_OneByteRead(ptr noundef %padapter, i16 noundef zeroext %eFuse_Addr.3.i, ptr noundef nonnull %efuseData.i, i1 noundef zeroext %bPseudoTest) #14
  %27 = ptrtoint ptr %efuseData.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %efuseData.i, align 1
  %arrayidx.1.i = getelementptr i8, ptr %call.i, i32 %indvars.iv.next.i
  %29 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %28, ptr %arrayidx.1.i, align 1
  %inc66.1.i = add nuw nsw i16 %eFuse_Addr.3.i, 2
  %call68.1.i = call zeroext i8 @efuse_OneByteRead(ptr noundef %padapter, i16 noundef zeroext %inc63.1.i, ptr noundef nonnull %efuseData.i, i1 noundef zeroext %bPseudoTest) #14
  %30 = ptrtoint ptr %efuseData.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %efuseData.i, align 1
  %add70.1.i = or i32 %20, 3
  %arrayidx71.1.i = getelementptr i8, ptr %call.i, i32 %add70.1.i
  %32 = ptrtoint ptr %arrayidx71.1.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %31, ptr %arrayidx71.1.i, align 1
  br label %if.end72.1.i

if.end72.1.i:                                     ; preds = %if.then62.1.i, %if.end72.i.if.end72.1.i_crit_edge
  %eFuse_Addr.3.1.i = phi i16 [ %eFuse_Addr.3.i, %if.end72.i.if.end72.1.i_crit_edge ], [ %inc66.1.i, %if.then62.1.i ]
  %and60.2.i = and i32 %conv58.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and60.2.i)
  %tobool61.not.2.i = icmp eq i32 %and60.2.i, 0
  br i1 %tobool61.not.2.i, label %if.then62.2.i, label %if.end72.1.i.if.end72.2.i_crit_edge

if.end72.1.i.if.end72.2.i_crit_edge:              ; preds = %if.end72.1.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end72.2.i

if.then62.2.i:                                    ; preds = %if.end72.1.i
  call void @__sanitizer_cov_trace_pc() #16
  %indvars.iv.next.1.i = or i32 %20, 4
  %inc63.2.i = add nuw nsw i16 %eFuse_Addr.3.1.i, 1
  %call65.2.i = call zeroext i8 @efuse_OneByteRead(ptr noundef %padapter, i16 noundef zeroext %eFuse_Addr.3.1.i, ptr noundef nonnull %efuseData.i, i1 noundef zeroext %bPseudoTest) #14
  %33 = ptrtoint ptr %efuseData.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %efuseData.i, align 1
  %arrayidx.2.i = getelementptr i8, ptr %call.i, i32 %indvars.iv.next.1.i
  %35 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %34, ptr %arrayidx.2.i, align 1
  %inc66.2.i = add nuw nsw i16 %eFuse_Addr.3.1.i, 2
  %call68.2.i = call zeroext i8 @efuse_OneByteRead(ptr noundef %padapter, i16 noundef zeroext %inc63.2.i, ptr noundef nonnull %efuseData.i, i1 noundef zeroext %bPseudoTest) #14
  %36 = ptrtoint ptr %efuseData.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %efuseData.i, align 1
  %add70.2.i = or i32 %20, 5
  %arrayidx71.2.i = getelementptr i8, ptr %call.i, i32 %add70.2.i
  %38 = ptrtoint ptr %arrayidx71.2.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %37, ptr %arrayidx71.2.i, align 1
  br label %if.end72.2.i

if.end72.2.i:                                     ; preds = %if.then62.2.i, %if.end72.1.i.if.end72.2.i_crit_edge
  %eFuse_Addr.3.2.i = phi i16 [ %eFuse_Addr.3.1.i, %if.end72.1.i.if.end72.2.i_crit_edge ], [ %inc66.2.i, %if.then62.2.i ]
  %and60.3.i = and i32 %conv58.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and60.3.i)
  %tobool61.not.3.i = icmp eq i32 %and60.3.i, 0
  br i1 %tobool61.not.3.i, label %if.then62.3.i, label %if.end72.2.i.while.cond.backedge.i_crit_edge

if.end72.2.i.while.cond.backedge.i_crit_edge:     ; preds = %if.end72.2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond.backedge.i

if.then62.3.i:                                    ; preds = %if.end72.2.i
  call void @__sanitizer_cov_trace_pc() #16
  %indvars.iv.next.2.i = or i32 %20, 6
  %inc63.3.i = add nuw nsw i16 %eFuse_Addr.3.2.i, 1
  %call65.3.i = call zeroext i8 @efuse_OneByteRead(ptr noundef %padapter, i16 noundef zeroext %eFuse_Addr.3.2.i, ptr noundef nonnull %efuseData.i, i1 noundef zeroext %bPseudoTest) #14
  %39 = ptrtoint ptr %efuseData.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %efuseData.i, align 1
  %arrayidx.3.i = getelementptr i8, ptr %call.i, i32 %indvars.iv.next.2.i
  %41 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %40, ptr %arrayidx.3.i, align 1
  %inc66.3.i = add nuw nsw i16 %eFuse_Addr.3.2.i, 2
  %call68.3.i = call zeroext i8 @efuse_OneByteRead(ptr noundef %padapter, i16 noundef zeroext %inc63.3.i, ptr noundef nonnull %efuseData.i, i1 noundef zeroext %bPseudoTest) #14
  %42 = ptrtoint ptr %efuseData.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %efuseData.i, align 1
  %add70.3.i = or i32 %20, 7
  %arrayidx71.3.i = getelementptr i8, ptr %call.i, i32 %add70.3.i
  %44 = ptrtoint ptr %arrayidx71.3.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %43, ptr %arrayidx71.3.i, align 1
  br label %while.cond.backedge.i

if.else77.i:                                      ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #16
  %call78.i = call zeroext i8 @Efuse_CalculateWordCnts(i8 noundef zeroext %15) #14
  %conv79.i = zext i8 %call78.i to i16
  %mul80.i = shl nuw nsw i16 %conv79.i, 1
  %add82.i = add nuw nsw i16 %mul80.i, %inc24.i
  br label %while.cond.backedge.i

while.cond.backedge.i:                            ; preds = %if.else77.i, %if.then62.3.i, %if.end72.2.i.while.cond.backedge.i_crit_edge, %if.then20.i.while.cond.backedge.i_crit_edge
  %eFuse_Addr.0.be.i = phi i16 [ %inc24.i, %if.then20.i.while.cond.backedge.i_crit_edge ], [ %add82.i, %if.else77.i ], [ %eFuse_Addr.3.2.i, %if.end72.2.i.while.cond.backedge.i_crit_edge ], [ %inc66.3.i, %if.then62.3.i ]
  %cmp8.i = icmp ult i16 %eFuse_Addr.0.be.i, 512
  br i1 %cmp8.i, label %while.cond.backedge.i.while.body.i_crit_edge, label %while.cond.backedge.i.while.end.i_crit_edge

while.cond.backedge.i.while.end.i_crit_edge:      ; preds = %while.cond.backedge.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end.i

while.cond.backedge.i.while.body.i_crit_edge:     ; preds = %while.cond.backedge.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i

while.end.i:                                      ; preds = %while.cond.backedge.i.while.end.i_crit_edge, %while.body.i.while.end.i_crit_edge
  %eFuse_Addr.5.i = phi i16 [ %inc.i, %while.body.i.while.end.i_crit_edge ], [ %eFuse_Addr.0.be.i, %while.cond.backedge.i.while.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %_size_byte)
  %cmp88173.not.i = icmp eq i16 %_size_byte, 0
  br i1 %cmp88173.not.i, label %while.end.i.for.end99.i_crit_edge, label %while.end.i.for.body90.i_crit_edge

while.end.i.for.body90.i_crit_edge:               ; preds = %while.end.i
  br label %for.body90.i

while.end.i.for.end99.i_crit_edge:                ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end99.i

for.body90.i:                                     ; preds = %for.body90.i.for.body90.i_crit_edge, %while.end.i.for.body90.i_crit_edge
  %indvars.iv.i = phi i32 [ %indvars.iv.next177.i, %for.body90.i.for.body90.i_crit_edge ], [ 0, %while.end.i.for.body90.i_crit_edge ]
  %add93.i = add nuw nsw i32 %indvars.iv.i, %conv.i
  %arrayidx94.i = getelementptr i8, ptr %call.i, i32 %add93.i
  %45 = ptrtoint ptr %arrayidx94.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx94.i, align 1
  %arrayidx96.i = getelementptr i8, ptr %pbuf, i32 %indvars.iv.i
  %47 = ptrtoint ptr %arrayidx96.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %46, ptr %arrayidx96.i, align 1
  %indvars.iv.next177.i = add nuw nsw i32 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i32 %indvars.iv.next177.i, %conv1.i
  br i1 %exitcond.not.i, label %for.body90.i.for.end99.i_crit_edge, label %for.body90.i.for.body90.i_crit_edge

for.body90.i.for.body90.i_crit_edge:              ; preds = %for.body90.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body90.i

for.body90.i.for.end99.i_crit_edge:               ; preds = %for.body90.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end99.i

for.end99.i:                                      ; preds = %for.body90.i.for.end99.i_crit_edge, %while.end.i.for.end99.i_crit_edge
  call void @EFUSE_GetEfuseDefinition(ptr noundef %padapter, i8 noundef zeroext 0, i8 noundef zeroext 3, ptr noundef nonnull %total.i, i1 noundef zeroext %bPseudoTest) #14
  %sub.i = add i16 %eFuse_Addr.5.i, -1
  %48 = ptrtoint ptr %used.i to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %sub.i, ptr %used.i, align 2
  %conv103.i = zext i16 %sub.i to i32
  %mul104.i = mul nuw nsw i32 %conv103.i, 100
  %49 = ptrtoint ptr %total.i to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %total.i, align 2
  %conv105.i = zext i16 %50 to i32
  %div.i = udiv i32 %mul104.i, %conv105.i
  %conv106.i = trunc i32 %div.i to i8
  %51 = ptrtoint ptr %efuse_usage.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %conv106.i, ptr %efuse_usage.i, align 1
  br i1 %bPseudoTest, label %if.then108.i, label %if.else110.i

if.then108.i:                                     ; preds = %for.end99.i
  call void @__sanitizer_cov_trace_pc() #16
  %fakeEfuseUsedBytes.i = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 44, i32 1
  %52 = ptrtoint ptr %fakeEfuseUsedBytes.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %conv103.i, ptr %fakeEfuseUsedBytes.i, align 4
  br label %if.end111.i

if.else110.i:                                     ; preds = %for.end99.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @rtw_hal_set_hwreg(ptr noundef %padapter, i8 noundef zeroext 60, ptr noundef nonnull %used.i) #14
  call void @rtw_hal_set_hwreg(ptr noundef %padapter, i8 noundef zeroext 59, ptr noundef nonnull %efuse_usage.i) #14
  br label %if.end111.i

if.end111.i:                                      ; preds = %if.else110.i, %if.then108.i
  call void @kfree(ptr noundef nonnull %call.i) #14
  br label %hal_ReadEFuse_WiFi.exit

hal_ReadEFuse_WiFi.exit:                          ; preds = %if.end111.i, %if.end.i.hal_ReadEFuse_WiFi.exit_crit_edge, %if.then.hal_ReadEFuse_WiFi.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %efuse_usage.i) #14
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %used.i) #14
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %total.i) #14
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %efuseData.i) #14
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %efuseExtHdr.i) #14
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %efuseHeader.i) #14
  br label %if.end

if.else:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %efuseHeader.i8) #14
  %53 = ptrtoint ptr %efuseHeader.i8 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 -1, ptr %efuseHeader.i8, align 1, !annotation !49
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %efuseExtHdr.i9) #14
  %54 = ptrtoint ptr %efuseExtHdr.i9 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 -1, ptr %efuseExtHdr.i9, align 1, !annotation !49
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %efuseData.i10) #14
  %55 = ptrtoint ptr %efuseData.i10 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 -1, ptr %efuseData.i10, align 1, !annotation !49
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %total.i11) #14
  %56 = ptrtoint ptr %total.i11 to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 -1, ptr %total.i11, align 2, !annotation !49
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %used.i12) #14
  %57 = ptrtoint ptr %used.i12 to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 -1, ptr %used.i12, align 2, !annotation !49
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %efuse_usage.i13) #14
  %58 = ptrtoint ptr %efuse_usage.i13 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 -1, ptr %efuse_usage.i13, align 1, !annotation !49
  %conv.i15 = zext i16 %_offset to i32
  %conv1.i16 = zext i16 %_size_byte to i32
  %add.i17 = add nuw nsw i32 %conv1.i16, %conv.i15
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %add.i17)
  %cmp.i18 = icmp ugt i32 %add.i17, 1024
  br i1 %cmp.i18, label %if.else.hal_ReadEFuse_BT.exit_crit_edge, label %if.end.i21

if.else.hal_ReadEFuse_BT.exit_crit_edge:          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %hal_ReadEFuse_BT.exit

if.end.i21:                                       ; preds = %if.else
  %call.i19 = tail call ptr @_rtw_malloc(i32 noundef 1024) #14
  %tobool.not.i20 = icmp eq ptr %call.i19, null
  br i1 %tobool.not.i20, label %if.end.i21.hal_ReadEFuse_BT.exit_crit_edge, label %if.end4.i22

if.end.i21.hal_ReadEFuse_BT.exit_crit_edge:       ; preds = %if.end.i21
  call void @__sanitizer_cov_trace_pc() #16
  br label %hal_ReadEFuse_BT.exit

if.end4.i22:                                      ; preds = %if.end.i21
  %59 = call ptr @memset(ptr %call.i19, i32 255, i32 1024)
  call void @EFUSE_GetEfuseDefinition(ptr noundef %padapter, i8 noundef zeroext 1, i8 noundef zeroext 2, ptr noundef nonnull %total.i11, i1 noundef zeroext %bPseudoTest) #14
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc102.i.for.body.i_crit_edge, %if.end4.i22
  %bank.0222.i = phi i8 [ 1, %if.end4.i22 ], [ %inc103.i, %for.inc102.i.for.body.i_crit_edge ]
  br i1 %bPseudoTest, label %hal_EfuseSwitchToBank.exit.thread.i, label %if.else.i.i25

hal_EfuseSwitchToBank.exit.thread.i:              ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  %60 = ptrtoint ptr %HalData.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %HalData.i, align 8
  %EfuseHal.i.i23 = getelementptr inbounds %struct.hal_com_data, ptr %61, i32 0, i32 44
  %62 = ptrtoint ptr %EfuseHal.i.i23 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %bank.0222.i, ptr %EfuseHal.i.i23, align 4
  br label %while.body.i27.preheader

if.else.i.i25:                                    ; preds = %for.body.i
  %call.i.i24 = call i32 @rtw_read32(ptr noundef %padapter, i32 noundef 52) #14
  %trunc.i = trunc i8 %bank.0222.i to i7
  %63 = zext i7 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %63, ptr @__sancov_gen_cov_switch_values)
  switch i7 %trunc.i, label %exit.loopexit.i [
    i7 2, label %sw.bb4.i.i
    i7 1, label %if.else.i.i25.hal_EfuseSwitchToBank.exit.thread230.i_crit_edge
  ]

if.else.i.i25.hal_EfuseSwitchToBank.exit.thread230.i_crit_edge: ; preds = %if.else.i.i25
  call void @__sanitizer_cov_trace_pc() #16
  br label %hal_EfuseSwitchToBank.exit.thread230.i

sw.bb4.i.i:                                       ; preds = %if.else.i.i25
  call void @__sanitizer_cov_trace_pc() #16
  br label %hal_EfuseSwitchToBank.exit.thread230.i

hal_EfuseSwitchToBank.exit.thread230.i:           ; preds = %sw.bb4.i.i, %if.else.i.i25.hal_EfuseSwitchToBank.exit.thread230.i_crit_edge
  %.sink.i = phi i32 [ 512, %sw.bb4.i.i ], [ 256, %if.else.i.i25.hal_EfuseSwitchToBank.exit.thread230.i_crit_edge ]
  %and5.i.i = and i32 %call.i.i24, -769
  %or6.i.i = or i32 %.sink.i, %and5.i.i
  %call12.i233.i = call i32 @rtw_write32(ptr noundef %padapter, i32 noundef 52, i32 noundef %or6.i.i) #14
  br label %while.body.i27.preheader

while.body.i27.preheader:                         ; preds = %hal_EfuseSwitchToBank.exit.thread230.i, %hal_EfuseSwitchToBank.exit.thread.i
  br label %while.body.i27

while.body.i27:                                   ; preds = %while.cond.backedge.i28.while.body.i27_crit_edge, %while.body.i27.preheader
  %eFuse_Addr.1221.i = phi i16 [ %eFuse_Addr.1.be.i, %while.cond.backedge.i28.while.body.i27_crit_edge ], [ 0, %while.body.i27.preheader ]
  %inc.i26 = add nuw nsw i16 %eFuse_Addr.1221.i, 1
  %call20.i = call zeroext i8 @efuse_OneByteRead(ptr noundef %padapter, i16 noundef zeroext %eFuse_Addr.1221.i, ptr noundef nonnull %efuseHeader.i8, i1 noundef zeroext %bPseudoTest) #14
  %64 = ptrtoint ptr %efuseHeader.i8 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %efuseHeader.i8, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %65)
  %cmp22.i = icmp eq i8 %65, -1
  br i1 %cmp22.i, label %while.body.i27.while.end.i37_crit_edge, label %if.end25.i

while.body.i27.while.end.i37_crit_edge:           ; preds = %while.body.i27
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end.i37

if.end25.i:                                       ; preds = %while.body.i27
  %66 = and i8 %65, 31
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %66)
  %cmp27.i = icmp eq i8 %66, 15
  br i1 %cmp27.i, label %if.then29.i, label %if.end57.thread.i

if.then29.i:                                      ; preds = %if.end25.i
  %inc33.i = add nuw nsw i16 %eFuse_Addr.1221.i, 2
  %call35.i = call zeroext i8 @efuse_OneByteRead(ptr noundef %padapter, i16 noundef zeroext %inc.i26, ptr noundef nonnull %efuseExtHdr.i9, i1 noundef zeroext %bPseudoTest) #14
  %67 = ptrtoint ptr %efuseExtHdr.i9 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %efuseExtHdr.i9, align 1
  %69 = and i8 %68, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %69)
  %cmp38.i = icmp eq i8 %69, 15
  br i1 %cmp38.i, label %if.then29.i.while.cond.backedge.i28_crit_edge, label %if.end57.i

if.then29.i.while.cond.backedge.i28_crit_edge:    ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond.backedge.i28

while.cond.backedge.i28:                          ; preds = %if.then73.3.i, %if.end83.2.i.while.cond.backedge.i28_crit_edge, %if.then29.i.while.cond.backedge.i28_crit_edge
  %eFuse_Addr.1.be.i = phi i16 [ %inc33.i, %if.then29.i.while.cond.backedge.i28_crit_edge ], [ %eFuse_Addr.4.2.i, %if.end83.2.i.while.cond.backedge.i28_crit_edge ], [ %inc77.3.i, %if.then73.3.i ]
  %cmp17.i = icmp ult i16 %eFuse_Addr.1.be.i, 512
  br i1 %cmp17.i, label %while.cond.backedge.i28.while.body.i27_crit_edge, label %while.cond.backedge.i28.while.end.i37_crit_edge

while.cond.backedge.i28.while.end.i37_crit_edge:  ; preds = %while.cond.backedge.i28
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end.i37

while.cond.backedge.i28.while.body.i27_crit_edge: ; preds = %while.cond.backedge.i28
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i27

if.end57.thread.i:                                ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #16
  %70 = lshr i8 %65, 4
  %and55.i = and i8 %65, 15
  br label %if.then61.i

if.end57.i:                                       ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #16
  %71 = lshr i8 %65, 5
  %and43.i = lshr i8 %68, 1
  %72 = and i8 %and43.i, 120
  %or.i29 = or i8 %72, %71
  br label %if.then61.i

if.then61.i:                                      ; preds = %if.end57.i, %if.end57.thread.i
  %wden.0216.i = phi i8 [ %and55.i, %if.end57.thread.i ], [ %69, %if.end57.i ]
  %offset.0215.i = phi i8 [ %70, %if.end57.thread.i ], [ %or.i29, %if.end57.i ]
  %eFuse_Addr.2214.i = phi i16 [ %inc.i26, %if.end57.thread.i ], [ %inc33.i, %if.end57.i ]
  %conv69.i = zext i8 %wden.0216.i to i32
  %73 = zext i8 %offset.0215.i to i32
  %74 = shl nuw nsw i32 %73, 3
  %and71.i = and i32 %conv69.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and71.i)
  %tobool72.not.i = icmp eq i32 %and71.i, 0
  br i1 %tobool72.not.i, label %if.then73.i, label %if.then61.i.if.end83.i_crit_edge

if.then61.i.if.end83.i_crit_edge:                 ; preds = %if.then61.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end83.i

if.then73.i:                                      ; preds = %if.then61.i
  call void @__sanitizer_cov_trace_pc() #16
  %inc74.i = add nuw nsw i16 %eFuse_Addr.2214.i, 1
  %call76.i = call zeroext i8 @efuse_OneByteRead(ptr noundef %padapter, i16 noundef zeroext %eFuse_Addr.2214.i, ptr noundef nonnull %efuseData.i10, i1 noundef zeroext %bPseudoTest) #14
  %75 = ptrtoint ptr %efuseData.i10 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %efuseData.i10, align 1
  %arrayidx.i30 = getelementptr i8, ptr %call.i19, i32 %74
  %77 = ptrtoint ptr %arrayidx.i30 to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 %76, ptr %arrayidx.i30, align 1
  %inc77.i = add nuw nsw i16 %eFuse_Addr.2214.i, 2
  %call79.i = call zeroext i8 @efuse_OneByteRead(ptr noundef %padapter, i16 noundef zeroext %inc74.i, ptr noundef nonnull %efuseData.i10, i1 noundef zeroext %bPseudoTest) #14
  %78 = ptrtoint ptr %efuseData.i10 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %efuseData.i10, align 1
  %add81.i = or i32 %74, 1
  %arrayidx82.i = getelementptr i8, ptr %call.i19, i32 %add81.i
  %80 = ptrtoint ptr %arrayidx82.i to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 %79, ptr %arrayidx82.i, align 1
  br label %if.end83.i

if.end83.i:                                       ; preds = %if.then73.i, %if.then61.i.if.end83.i_crit_edge
  %eFuse_Addr.4.i = phi i16 [ %eFuse_Addr.2214.i, %if.then61.i.if.end83.i_crit_edge ], [ %inc77.i, %if.then73.i ]
  %and71.1.i = and i32 %conv69.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and71.1.i)
  %tobool72.not.1.i = icmp eq i32 %and71.1.i, 0
  br i1 %tobool72.not.1.i, label %if.then73.1.i, label %if.end83.i.if.end83.1.i_crit_edge

if.end83.i.if.end83.1.i_crit_edge:                ; preds = %if.end83.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end83.1.i

if.then73.1.i:                                    ; preds = %if.end83.i
  call void @__sanitizer_cov_trace_pc() #16
  %indvars.iv.next.i31 = or i32 %74, 2
  %inc74.1.i = add nuw nsw i16 %eFuse_Addr.4.i, 1
  %call76.1.i = call zeroext i8 @efuse_OneByteRead(ptr noundef %padapter, i16 noundef zeroext %eFuse_Addr.4.i, ptr noundef nonnull %efuseData.i10, i1 noundef zeroext %bPseudoTest) #14
  %81 = ptrtoint ptr %efuseData.i10 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %efuseData.i10, align 1
  %arrayidx.1.i32 = getelementptr i8, ptr %call.i19, i32 %indvars.iv.next.i31
  %83 = ptrtoint ptr %arrayidx.1.i32 to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 %82, ptr %arrayidx.1.i32, align 1
  %inc77.1.i = add nuw nsw i16 %eFuse_Addr.4.i, 2
  %call79.1.i = call zeroext i8 @efuse_OneByteRead(ptr noundef %padapter, i16 noundef zeroext %inc74.1.i, ptr noundef nonnull %efuseData.i10, i1 noundef zeroext %bPseudoTest) #14
  %84 = ptrtoint ptr %efuseData.i10 to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %efuseData.i10, align 1
  %add81.1.i = or i32 %74, 3
  %arrayidx82.1.i = getelementptr i8, ptr %call.i19, i32 %add81.1.i
  %86 = ptrtoint ptr %arrayidx82.1.i to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 %85, ptr %arrayidx82.1.i, align 1
  br label %if.end83.1.i

if.end83.1.i:                                     ; preds = %if.then73.1.i, %if.end83.i.if.end83.1.i_crit_edge
  %eFuse_Addr.4.1.i = phi i16 [ %eFuse_Addr.4.i, %if.end83.i.if.end83.1.i_crit_edge ], [ %inc77.1.i, %if.then73.1.i ]
  %and71.2.i = and i32 %conv69.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and71.2.i)
  %tobool72.not.2.i = icmp eq i32 %and71.2.i, 0
  br i1 %tobool72.not.2.i, label %if.then73.2.i, label %if.end83.1.i.if.end83.2.i_crit_edge

if.end83.1.i.if.end83.2.i_crit_edge:              ; preds = %if.end83.1.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end83.2.i

if.then73.2.i:                                    ; preds = %if.end83.1.i
  call void @__sanitizer_cov_trace_pc() #16
  %indvars.iv.next.1.i33 = or i32 %74, 4
  %inc74.2.i = add nuw nsw i16 %eFuse_Addr.4.1.i, 1
  %call76.2.i = call zeroext i8 @efuse_OneByteRead(ptr noundef %padapter, i16 noundef zeroext %eFuse_Addr.4.1.i, ptr noundef nonnull %efuseData.i10, i1 noundef zeroext %bPseudoTest) #14
  %87 = ptrtoint ptr %efuseData.i10 to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %efuseData.i10, align 1
  %arrayidx.2.i34 = getelementptr i8, ptr %call.i19, i32 %indvars.iv.next.1.i33
  %89 = ptrtoint ptr %arrayidx.2.i34 to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 %88, ptr %arrayidx.2.i34, align 1
  %inc77.2.i = add nuw nsw i16 %eFuse_Addr.4.1.i, 2
  %call79.2.i = call zeroext i8 @efuse_OneByteRead(ptr noundef %padapter, i16 noundef zeroext %inc74.2.i, ptr noundef nonnull %efuseData.i10, i1 noundef zeroext %bPseudoTest) #14
  %90 = ptrtoint ptr %efuseData.i10 to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %efuseData.i10, align 1
  %add81.2.i = or i32 %74, 5
  %arrayidx82.2.i = getelementptr i8, ptr %call.i19, i32 %add81.2.i
  %92 = ptrtoint ptr %arrayidx82.2.i to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 %91, ptr %arrayidx82.2.i, align 1
  br label %if.end83.2.i

if.end83.2.i:                                     ; preds = %if.then73.2.i, %if.end83.1.i.if.end83.2.i_crit_edge
  %eFuse_Addr.4.2.i = phi i16 [ %eFuse_Addr.4.1.i, %if.end83.1.i.if.end83.2.i_crit_edge ], [ %inc77.2.i, %if.then73.2.i ]
  %and71.3.i = and i32 %conv69.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and71.3.i)
  %tobool72.not.3.i = icmp eq i32 %and71.3.i, 0
  br i1 %tobool72.not.3.i, label %if.then73.3.i, label %if.end83.2.i.while.cond.backedge.i28_crit_edge

if.end83.2.i.while.cond.backedge.i28_crit_edge:   ; preds = %if.end83.2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond.backedge.i28

if.then73.3.i:                                    ; preds = %if.end83.2.i
  call void @__sanitizer_cov_trace_pc() #16
  %indvars.iv.next.2.i35 = or i32 %74, 6
  %inc74.3.i = add nuw nsw i16 %eFuse_Addr.4.2.i, 1
  %call76.3.i = call zeroext i8 @efuse_OneByteRead(ptr noundef %padapter, i16 noundef zeroext %eFuse_Addr.4.2.i, ptr noundef nonnull %efuseData.i10, i1 noundef zeroext %bPseudoTest) #14
  %93 = ptrtoint ptr %efuseData.i10 to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %efuseData.i10, align 1
  %arrayidx.3.i36 = getelementptr i8, ptr %call.i19, i32 %indvars.iv.next.2.i35
  %95 = ptrtoint ptr %arrayidx.3.i36 to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 %94, ptr %arrayidx.3.i36, align 1
  %inc77.3.i = add nuw nsw i16 %eFuse_Addr.4.2.i, 2
  %call79.3.i = call zeroext i8 @efuse_OneByteRead(ptr noundef %padapter, i16 noundef zeroext %inc74.3.i, ptr noundef nonnull %efuseData.i10, i1 noundef zeroext %bPseudoTest) #14
  %96 = ptrtoint ptr %efuseData.i10 to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %efuseData.i10, align 1
  %add81.3.i = or i32 %74, 7
  %arrayidx82.3.i = getelementptr i8, ptr %call.i19, i32 %add81.3.i
  %98 = ptrtoint ptr %arrayidx82.3.i to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 %97, ptr %arrayidx82.3.i, align 1
  br label %while.cond.backedge.i28

while.end.i37:                                    ; preds = %while.cond.backedge.i28.while.end.i37_crit_edge, %while.body.i27.while.end.i37_crit_edge
  %eFuse_Addr.6.i = phi i16 [ %inc.i26, %while.body.i27.while.end.i37_crit_edge ], [ %eFuse_Addr.1.be.i, %while.cond.backedge.i28.while.end.i37_crit_edge ]
  %99 = ptrtoint ptr %total.i11 to i32
  call void @__asan_load2_noabort(i32 %99)
  %100 = load i16, ptr %total.i11, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %eFuse_Addr.6.i, i16 %100)
  %cmp98.not.i = icmp ugt i16 %eFuse_Addr.6.i, %100
  br i1 %cmp98.not.i, label %for.inc102.i, label %while.end.i37.for.end104.i_crit_edge

while.end.i37.for.end104.i_crit_edge:             ; preds = %while.end.i37
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end104.i

for.inc102.i:                                     ; preds = %while.end.i37
  %inc103.i = add nuw nsw i8 %bank.0222.i, 1
  %cmp7.i = icmp ult i8 %bank.0222.i, 2
  br i1 %cmp7.i, label %for.inc102.i.for.body.i_crit_edge, label %for.inc102.i.for.end104.i_crit_edge

for.inc102.i.for.end104.i_crit_edge:              ; preds = %for.inc102.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end104.i

for.inc102.i.for.body.i_crit_edge:                ; preds = %for.inc102.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

for.end104.i:                                     ; preds = %for.inc102.i.for.end104.i_crit_edge, %while.end.i37.for.end104.i_crit_edge
  %bank.0.lcssa.i = phi i8 [ %bank.0222.i, %while.end.i37.for.end104.i_crit_edge ], [ 3, %for.inc102.i.for.end104.i_crit_edge ]
  %conv6.le.i = zext i8 %bank.0.lcssa.i to i16
  br i1 %bPseudoTest, label %if.then.i199.i, label %if.else.i201.i

if.then.i199.i:                                   ; preds = %for.end104.i
  call void @__sanitizer_cov_trace_pc() #16
  %101 = ptrtoint ptr %HalData.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %HalData.i, align 8
  %EfuseHal.i198.i = getelementptr inbounds %struct.hal_com_data, ptr %102, i32 0, i32 44
  %103 = ptrtoint ptr %EfuseHal.i198.i to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 0, ptr %EfuseHal.i198.i, align 4
  br label %hal_EfuseSwitchToBank.exit209.i

if.else.i201.i:                                   ; preds = %for.end104.i
  call void @__sanitizer_cov_trace_pc() #16
  %call.i200.i = call i32 @rtw_read32(ptr noundef %padapter, i32 noundef 52) #14
  %and.i202.i = and i32 %call.i200.i, -769
  %call12.i206.i = call i32 @rtw_write32(ptr noundef %padapter, i32 noundef 52, i32 noundef %and.i202.i) #14
  br label %hal_EfuseSwitchToBank.exit209.i

hal_EfuseSwitchToBank.exit209.i:                  ; preds = %if.else.i201.i, %if.then.i199.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %_size_byte)
  %cmp110223.not.i = icmp eq i16 %_size_byte, 0
  br i1 %cmp110223.not.i, label %hal_EfuseSwitchToBank.exit209.i.for.end121.i_crit_edge, label %hal_EfuseSwitchToBank.exit209.i.for.body112.i_crit_edge

hal_EfuseSwitchToBank.exit209.i.for.body112.i_crit_edge: ; preds = %hal_EfuseSwitchToBank.exit209.i
  br label %for.body112.i

hal_EfuseSwitchToBank.exit209.i.for.end121.i_crit_edge: ; preds = %hal_EfuseSwitchToBank.exit209.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end121.i

for.body112.i:                                    ; preds = %for.body112.i.for.body112.i_crit_edge, %hal_EfuseSwitchToBank.exit209.i.for.body112.i_crit_edge
  %indvars.iv.i38 = phi i32 [ %indvars.iv.next227.i, %for.body112.i.for.body112.i_crit_edge ], [ 0, %hal_EfuseSwitchToBank.exit209.i.for.body112.i_crit_edge ]
  %add115.i = add nuw nsw i32 %indvars.iv.i38, %conv.i15
  %arrayidx116.i = getelementptr i8, ptr %call.i19, i32 %add115.i
  %104 = ptrtoint ptr %arrayidx116.i to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %arrayidx116.i, align 1
  %arrayidx118.i = getelementptr i8, ptr %pbuf, i32 %indvars.iv.i38
  %106 = ptrtoint ptr %arrayidx118.i to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 %105, ptr %arrayidx118.i, align 1
  %indvars.iv.next227.i = add nuw nsw i32 %indvars.iv.i38, 1
  %exitcond.not.i39 = icmp eq i32 %indvars.iv.next227.i, %conv1.i16
  br i1 %exitcond.not.i39, label %for.body112.i.for.end121.i_crit_edge, label %for.body112.i.for.body112.i_crit_edge

for.body112.i.for.body112.i_crit_edge:            ; preds = %for.body112.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body112.i

for.body112.i.for.end121.i_crit_edge:             ; preds = %for.body112.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end121.i

for.end121.i:                                     ; preds = %for.body112.i.for.end121.i_crit_edge, %hal_EfuseSwitchToBank.exit209.i.for.end121.i_crit_edge
  call void @EFUSE_GetEfuseDefinition(ptr noundef %padapter, i8 noundef zeroext 1, i8 noundef zeroext 3, ptr noundef nonnull %total.i11, i1 noundef zeroext %bPseudoTest) #14
  %sub124.i = shl nuw i16 %conv6.le.i, 9
  %add127.i = add i16 %eFuse_Addr.6.i, -513
  %sub128.i = add i16 %add127.i, %sub124.i
  %107 = ptrtoint ptr %used.i12 to i32
  call void @__asan_store2_noabort(i32 %107)
  store i16 %sub128.i, ptr %used.i12, align 2
  %conv130.i = zext i16 %sub128.i to i32
  %mul131.i = mul nuw nsw i32 %conv130.i, 100
  %108 = ptrtoint ptr %total.i11 to i32
  call void @__asan_load2_noabort(i32 %108)
  %109 = load i16, ptr %total.i11, align 2
  %conv132.i = zext i16 %109 to i32
  %div.i40 = udiv i32 %mul131.i, %conv132.i
  %conv133.i = trunc i32 %div.i40 to i8
  %110 = ptrtoint ptr %efuse_usage.i13 to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 %conv133.i, ptr %efuse_usage.i13, align 1
  br i1 %bPseudoTest, label %if.then135.i, label %if.else136.i

if.then135.i:                                     ; preds = %for.end121.i
  call void @__sanitizer_cov_trace_pc() #16
  %fakeBTEfuseUsedBytes.i = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 44, i32 10
  %111 = ptrtoint ptr %fakeBTEfuseUsedBytes.i to i32
  call void @__asan_store2_noabort(i32 %111)
  store i16 %sub128.i, ptr %fakeBTEfuseUsedBytes.i, align 4
  br label %exit.i

if.else136.i:                                     ; preds = %for.end121.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @rtw_hal_set_hwreg(ptr noundef %padapter, i8 noundef zeroext 62, ptr noundef nonnull %used.i12) #14
  call void @rtw_hal_set_hwreg(ptr noundef %padapter, i8 noundef zeroext 61, ptr noundef nonnull %efuse_usage.i13) #14
  br label %exit.i

exit.loopexit.i:                                  ; preds = %if.else.i.i25
  call void @__sanitizer_cov_trace_pc() #16
  %and10.i.i = and i32 %call.i.i24, -769
  %call12.i.i41 = call i32 @rtw_write32(ptr noundef %padapter, i32 noundef 52, i32 noundef %and10.i.i) #14
  br label %exit.i

exit.i:                                           ; preds = %exit.loopexit.i, %if.else136.i, %if.then135.i
  call void @kfree(ptr noundef nonnull %call.i19) #14
  br label %hal_ReadEFuse_BT.exit

hal_ReadEFuse_BT.exit:                            ; preds = %exit.i, %if.end.i21.hal_ReadEFuse_BT.exit_crit_edge, %if.else.hal_ReadEFuse_BT.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %efuse_usage.i13) #14
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %used.i12) #14
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %total.i11) #14
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %efuseData.i10) #14
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %efuseExtHdr.i9) #14
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %efuseHeader.i8) #14
  br label %if.end

if.end:                                           ; preds = %hal_ReadEFuse_BT.exit, %hal_ReadEFuse_WiFi.exit
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @Hal_GetEfuseDefinition(ptr nocapture noundef readnone %padapter, i8 noundef zeroext %efuseType, i8 noundef zeroext %type, ptr nocapture noundef writeonly %pOut, i1 noundef zeroext %bPseudoTest) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i8 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.20)
  switch i8 %type, label %sw.default [
    i8 0, label %sw.bb
    i8 1, label %sw.bb3
    i8 2, label %sw.bb10
    i8 3, label %sw.bb18
    i8 4, label %sw.bb26
    i8 5, label %sw.bb34
    i8 6, label %if.end48
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %efuseType)
  %cmp = icmp eq i8 %efuseType, 0
  %. = select i1 %cmp, i8 64, i8 -128
  %1 = ptrtoint ptr %pOut to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %., ptr %pOut, align 1
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %efuseType)
  %cmp5 = icmp eq i8 %efuseType, 0
  %.75 = select i1 %cmp5, i16 512, i16 1536
  %2 = ptrtoint ptr %pOut to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %.75, ptr %pOut, align 2
  br label %sw.epilog

sw.bb10:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %efuseType)
  %cmp13 = icmp eq i8 %efuseType, 0
  %.76 = select i1 %cmp13, i16 497, i16 496
  %3 = ptrtoint ptr %pOut to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 %.76, ptr %pOut, align 2
  br label %sw.epilog

sw.bb18:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %efuseType)
  %cmp21 = icmp eq i8 %efuseType, 0
  %.77 = select i1 %cmp21, i16 497, i16 1488
  %4 = ptrtoint ptr %pOut to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %.77, ptr %pOut, align 2
  br label %sw.epilog

sw.bb26:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %efuseType)
  %cmp29 = icmp eq i8 %efuseType, 0
  %.78 = select i1 %cmp29, i16 512, i16 1024
  %5 = ptrtoint ptr %pOut to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %.78, ptr %pOut, align 2
  br label %sw.epilog

sw.bb34:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %efuseType)
  %cmp36 = icmp eq i8 %efuseType, 0
  %.79 = select i1 %cmp36, i8 15, i8 16
  %6 = ptrtoint ptr %pOut to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %.79, ptr %pOut, align 1
  br label %sw.epilog

if.end48:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %7 = ptrtoint ptr %pOut to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 512, ptr %pOut, align 2
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %8 = ptrtoint ptr %pOut to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %pOut, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end48, %sw.bb34, %sw.bb26, %sw.bb18, %sw.bb10, %sw.bb3, %sw.bb
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i16 @Hal_EfuseGetCurrentSize(ptr noundef %padapter, i8 noundef zeroext %efuseType, i1 noundef zeroext %bPseudoTest) #0 align 64 {
entry:
  %btusedbytes.i = alloca i16, align 2
  %efuse_data.i7 = alloca i8, align 1
  %retU2.i = alloca i16, align 2
  %efuse_addr.i = alloca i16, align 2
  %efuse_data.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %efuseType)
  %cmp = icmp eq i8 %efuseType, 0
  %HalData.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 18
  %0 = ptrtoint ptr %HalData.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %HalData.i, align 8
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %efuse_addr.i) #14
  %2 = ptrtoint ptr %efuse_addr.i to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 0, ptr %efuse_addr.i, align 2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %efuse_data.i) #14
  %3 = ptrtoint ptr %efuse_data.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %efuse_data.i, align 1, !annotation !49
  br i1 %bPseudoTest, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %fakeEfuseUsedBytes.i = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 44, i32 1
  %4 = ptrtoint ptr %fakeEfuseUsedBytes.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fakeEfuseUsedBytes.i, align 4
  %conv.i = trunc i32 %5 to i16
  %6 = ptrtoint ptr %efuse_addr.i to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %conv.i, ptr %efuse_addr.i, align 2
  %EfuseHal.i.i = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 44
  %7 = ptrtoint ptr %EfuseHal.i.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %EfuseHal.i.i, align 4
  br label %while.condthread-pre-split.outer.i.preheader

if.else.i.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  call void @rtw_hal_get_hwreg(ptr noundef %padapter, i8 noundef zeroext 60, ptr noundef nonnull %efuse_addr.i) #14
  %8 = ptrtoint ptr %efuse_addr.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %efuse_addr.i, align 2
  %call.i.i = call i32 @rtw_read32(ptr noundef %padapter, i32 noundef 52) #14
  %and.i.i = and i32 %call.i.i, -769
  %call12.i.i = call i32 @rtw_write32(ptr noundef %padapter, i32 noundef 52, i32 noundef %and.i.i) #14
  br label %while.condthread-pre-split.outer.i.preheader

while.condthread-pre-split.outer.i.preheader:     ; preds = %if.else.i.i, %if.then.i.i
  %start_addr.0.ph.ph94.i.ph = phi i16 [ %conv.i, %if.then.i.i ], [ %9, %if.else.i.i ]
  br label %while.condthread-pre-split.outer.i

while.condthread-pre-split.loopexit.i:            ; preds = %if.then36.i
  %10 = ptrtoint ptr %efuse_addr.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %.pr.i = load i16, ptr %efuse_addr.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 512, i16 %.pr.i)
  %cmp97.i = icmp ult i16 %.pr.i, 512
  br i1 %cmp97.i, label %while.condthread-pre-split.loopexit.i.while.body.i.backedge_crit_edge, label %while.condthread-pre-split.loopexit.i.while.end.i_crit_edge

while.condthread-pre-split.loopexit.i.while.end.i_crit_edge: ; preds = %while.condthread-pre-split.loopexit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end.i

while.condthread-pre-split.loopexit.i.while.body.i.backedge_crit_edge: ; preds = %while.condthread-pre-split.loopexit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i.backedge

while.body.i:                                     ; preds = %while.body.i.backedge, %while.condthread-pre-split.outer95.i.while.body.i_crit_edge
  %11 = phi i16 [ %.be, %while.body.i.backedge ], [ %.pr98.i, %while.condthread-pre-split.outer95.i.while.body.i_crit_edge ]
  %call5.i = call zeroext i8 @efuse_OneByteRead(ptr noundef %padapter, i16 noundef zeroext %11, ptr noundef nonnull %efuse_data.i, i1 noundef zeroext %bPseudoTest) #14
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call5.i)
  %cmp7.i = icmp eq i8 %call5.i, 0
  br i1 %cmp7.i, label %while.body.i.error.i_crit_edge, label %if.end10.i

while.body.i.error.i_crit_edge:                   ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %error.i

if.end10.i:                                       ; preds = %while.body.i
  %12 = ptrtoint ptr %efuse_data.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %efuse_data.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %13)
  %cmp12.i = icmp eq i8 %13, -1
  br i1 %cmp12.i, label %if.end10.i.while.end.i_crit_edge, label %if.end15.i

if.end10.i.while.end.i_crit_edge:                 ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end.i

if.end15.i:                                       ; preds = %if.end10.i
  br i1 %cmp17.not.i, label %if.end15.i.if.end32.i_crit_edge, label %land.lhs.true.i

if.end15.i.if.end32.i_crit_edge:                  ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end32.i

land.lhs.true.i:                                  ; preds = %if.end15.i
  %14 = ptrtoint ptr %efuse_addr.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %efuse_addr.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %15, i16 %start_addr.0.ph.ph94.i)
  %cmp21.i = icmp eq i16 %15, %start_addr.0.ph.ph94.i
  br i1 %cmp21.i, label %if.then23.i, label %land.lhs.true.i.if.end32.i_crit_edge

land.lhs.true.i.if.end32.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end32.i

if.then23.i:                                      ; preds = %land.lhs.true.i
  %16 = ptrtoint ptr %efuse_data.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 -1, ptr %efuse_data.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %count.0.ph.ph96.i)
  %exitcond.not.i = icmp eq i32 %count.0.ph.ph96.i, 3
  br i1 %exitcond.not.i, label %if.then23.i.error.i_crit_edge, label %if.then26.i

if.then23.i.error.i_crit_edge:                    ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %error.i

if.then26.i:                                      ; preds = %if.then23.i
  %inc.i = add nuw nsw i32 %count.0.ph.ph96.i, 1
  %cmp27.i = icmp eq i32 %inc.i, 3
  br i1 %cmp27.i, label %if.then29.i, label %if.then26.i.while.condthread-pre-split.outer95.i_crit_edge

if.then26.i.while.condthread-pre-split.outer95.i_crit_edge: ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.condthread-pre-split.outer95.i

if.then29.i:                                      ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #16
  %17 = ptrtoint ptr %efuse_addr.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 0, ptr %efuse_addr.i, align 2
  br label %while.condthread-pre-split.outer.i

while.condthread-pre-split.outer.i:               ; preds = %if.then29.i, %while.condthread-pre-split.outer.i.preheader
  %start_addr.0.ph.ph94.i = phi i16 [ 0, %if.then29.i ], [ %start_addr.0.ph.ph94.i.ph, %while.condthread-pre-split.outer.i.preheader ]
  %count.0.ph.ph.i = phi i32 [ 3, %if.then29.i ], [ 0, %while.condthread-pre-split.outer.i.preheader ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %start_addr.0.ph.ph94.i)
  %cmp17.not.i = icmp eq i16 %start_addr.0.ph.ph94.i, 0
  br label %while.condthread-pre-split.outer95.i

while.condthread-pre-split.outer95.i:             ; preds = %while.condthread-pre-split.outer.i, %if.then26.i.while.condthread-pre-split.outer95.i_crit_edge
  %count.0.ph.ph96.i = phi i32 [ %count.0.ph.ph.i, %while.condthread-pre-split.outer.i ], [ %inc.i, %if.then26.i.while.condthread-pre-split.outer95.i_crit_edge ]
  %18 = ptrtoint ptr %efuse_addr.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %.pr98.i = load i16, ptr %efuse_addr.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 512, i16 %.pr98.i)
  %cmp9799.i = icmp ult i16 %.pr98.i, 512
  br i1 %cmp9799.i, label %while.condthread-pre-split.outer95.i.while.body.i_crit_edge, label %while.condthread-pre-split.outer95.i.while.end.i_crit_edge

while.condthread-pre-split.outer95.i.while.end.i_crit_edge: ; preds = %while.condthread-pre-split.outer95.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end.i

while.condthread-pre-split.outer95.i.while.body.i_crit_edge: ; preds = %while.condthread-pre-split.outer95.i
  br label %while.body.i

if.end32.i:                                       ; preds = %land.lhs.true.i.if.end32.i_crit_edge, %if.end15.i.if.end32.i_crit_edge
  %19 = and i8 %13, 31
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %19)
  %cmp34.i = icmp eq i8 %19, 15
  br i1 %cmp34.i, label %if.then36.i, label %if.else57.i

if.then36.i:                                      ; preds = %if.end32.i
  %20 = ptrtoint ptr %efuse_addr.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %efuse_addr.i, align 2
  %inc40.i = add i16 %21, 1
  store i16 %inc40.i, ptr %efuse_addr.i, align 2
  %call42.i = call zeroext i8 @efuse_OneByteRead(ptr noundef %padapter, i16 noundef zeroext %inc40.i, ptr noundef nonnull %efuse_data.i, i1 noundef zeroext %bPseudoTest) #14
  %22 = ptrtoint ptr %efuse_data.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %efuse_data.i, align 1
  %24 = and i8 %23, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %24)
  %cmp45.i = icmp eq i8 %24, 15
  br i1 %cmp45.i, label %while.condthread-pre-split.loopexit.i, label %if.then36.i.if.end65.i_crit_edge

if.then36.i.if.end65.i_crit_edge:                 ; preds = %if.then36.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end65.i

if.else57.i:                                      ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #16
  %and63.i = and i8 %13, 15
  br label %if.end65.i

if.end65.i:                                       ; preds = %if.else57.i, %if.then36.i.if.end65.i_crit_edge
  %hworden.0.i = phi i8 [ %and63.i, %if.else57.i ], [ %24, %if.then36.i.if.end65.i_crit_edge ]
  %call66.i = call zeroext i8 @Efuse_CalculateWordCnts(i8 noundef zeroext %hworden.0.i) #14
  %conv67.i = zext i8 %call66.i to i16
  %mul.i = shl nuw nsw i16 %conv67.i, 1
  %25 = ptrtoint ptr %efuse_addr.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %efuse_addr.i, align 2
  %add.i = add i16 %26, 1
  %add69.i = add i16 %add.i, %mul.i
  store i16 %add69.i, ptr %efuse_addr.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 512, i16 %add69.i)
  %cmp.i = icmp ult i16 %add69.i, 512
  br i1 %cmp.i, label %if.end65.i.while.body.i.backedge_crit_edge, label %if.end65.i.while.end.i_crit_edge

if.end65.i.while.end.i_crit_edge:                 ; preds = %if.end65.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end.i

if.end65.i.while.body.i.backedge_crit_edge:       ; preds = %if.end65.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i.backedge

while.body.i.backedge:                            ; preds = %if.end65.i.while.body.i.backedge_crit_edge, %while.condthread-pre-split.loopexit.i.while.body.i.backedge_crit_edge
  %.be = phi i16 [ %add69.i, %if.end65.i.while.body.i.backedge_crit_edge ], [ %.pr.i, %while.condthread-pre-split.loopexit.i.while.body.i.backedge_crit_edge ]
  br label %while.body.i

while.end.i:                                      ; preds = %if.end65.i.while.end.i_crit_edge, %while.condthread-pre-split.outer95.i.while.end.i_crit_edge, %if.end10.i.while.end.i_crit_edge, %while.condthread-pre-split.loopexit.i.while.end.i_crit_edge
  br i1 %bPseudoTest, label %if.then72.i, label %if.else75.i

if.then72.i:                                      ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %27 = ptrtoint ptr %efuse_addr.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %efuse_addr.i, align 2
  %conv73.i = zext i16 %28 to i32
  %fakeEfuseUsedBytes74.i = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 44, i32 1
  %29 = ptrtoint ptr %fakeEfuseUsedBytes74.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %conv73.i, ptr %fakeEfuseUsedBytes74.i, align 4
  br label %hal_EfuseGetCurrentSize_WiFi.exit

if.else75.i:                                      ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @rtw_hal_set_hwreg(ptr noundef %padapter, i8 noundef zeroext 60, ptr noundef nonnull %efuse_addr.i) #14
  br label %hal_EfuseGetCurrentSize_WiFi.exit

error.i:                                          ; preds = %if.then23.i.error.i_crit_edge, %while.body.i.error.i_crit_edge
  call void @EFUSE_GetEfuseDefinition(ptr noundef %padapter, i8 noundef zeroext 0, i8 noundef zeroext 3, ptr noundef nonnull %efuse_addr.i, i1 noundef zeroext %bPseudoTest) #14
  br label %hal_EfuseGetCurrentSize_WiFi.exit

hal_EfuseGetCurrentSize_WiFi.exit:                ; preds = %error.i, %if.else75.i, %if.then72.i
  %30 = ptrtoint ptr %efuse_addr.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %efuse_addr.i, align 2
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %efuse_data.i) #14
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %efuse_addr.i) #14
  br label %if.end

if.else:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %btusedbytes.i) #14
  %32 = ptrtoint ptr %btusedbytes.i to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 -1, ptr %btusedbytes.i, align 2, !annotation !49
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %efuse_data.i7) #14
  %33 = ptrtoint ptr %efuse_data.i7 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 -1, ptr %efuse_data.i7, align 1, !annotation !49
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %retU2.i) #14
  %34 = ptrtoint ptr %retU2.i to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 0, ptr %retU2.i, align 2
  br i1 %bPseudoTest, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  %fakeBTEfuseUsedBytes.i = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 44, i32 10
  %35 = ptrtoint ptr %fakeBTEfuseUsedBytes.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %fakeBTEfuseUsedBytes.i, align 4
  %37 = ptrtoint ptr %btusedbytes.i to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %36, ptr %btusedbytes.i, align 2
  br label %if.end.i

if.else.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  call void @rtw_hal_get_hwreg(ptr noundef %padapter, i8 noundef zeroext 62, ptr noundef nonnull %btusedbytes.i) #14
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %38 = ptrtoint ptr %btusedbytes.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %btusedbytes.i, align 2
  %rem.i = and i16 %39, 511
  %40 = lshr i16 %39, 9
  %41 = trunc i16 %40 to i8
  %conv3.i = add nuw i8 %41, 1
  call void @EFUSE_GetEfuseDefinition(ptr noundef %padapter, i8 noundef zeroext 1, i8 noundef zeroext 2, ptr noundef nonnull %retU2.i, i1 noundef zeroext %bPseudoTest) #14
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %41)
  %cmp132.i = icmp ult i8 %41, 2
  br i1 %cmp132.i, label %for.body.i, label %if.end.i.for.end.i_crit_edge

if.end.i.for.end.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i

for.body.i:                                       ; preds = %if.end.i
  br i1 %bPseudoTest, label %hal_EfuseSwitchToBank.exit.thread.i, label %if.else.i.i11

hal_EfuseSwitchToBank.exit.thread.i:              ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  %42 = ptrtoint ptr %HalData.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %HalData.i, align 8
  %EfuseHal.i.i9 = getelementptr inbounds %struct.hal_com_data, ptr %43, i32 0, i32 44
  %44 = ptrtoint ptr %EfuseHal.i.i9 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %conv3.i, ptr %EfuseHal.i.i9, align 4
  br label %while.body.i13.preheader

if.else.i.i11:                                    ; preds = %for.body.i
  %call.i.i10 = call i32 @rtw_read32(ptr noundef %padapter, i32 noundef 52) #14
  %trunc = trunc i16 %40 to i7
  %45 = zext i7 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %45, ptr @__sancov_gen_cov_switch_values.21)
  switch i7 %trunc, label %if.else.i.i11.for.end.thread.i_crit_edge [
    i7 1, label %sw.bb4.i.i
    i7 0, label %if.else.i.i11.hal_EfuseSwitchToBank.exit.thread116.i_crit_edge
  ]

if.else.i.i11.hal_EfuseSwitchToBank.exit.thread116.i_crit_edge: ; preds = %if.else.i.i11
  call void @__sanitizer_cov_trace_pc() #16
  br label %hal_EfuseSwitchToBank.exit.thread116.i

if.else.i.i11.for.end.thread.i_crit_edge:         ; preds = %if.else.i.i11
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.thread.i

sw.bb4.i.i:                                       ; preds = %if.else.i.i11
  call void @__sanitizer_cov_trace_pc() #16
  br label %hal_EfuseSwitchToBank.exit.thread116.i

hal_EfuseSwitchToBank.exit.thread116.i:           ; preds = %sw.bb4.i.i, %if.else.i.i11.hal_EfuseSwitchToBank.exit.thread116.i_crit_edge
  %.sink.i = phi i32 [ 512, %sw.bb4.i.i ], [ 256, %if.else.i.i11.hal_EfuseSwitchToBank.exit.thread116.i_crit_edge ]
  %and5.i.i = and i32 %call.i.i10, -769
  %or6.i.i = or i32 %.sink.i, %and5.i.i
  %call12.i119.i = call i32 @rtw_write32(ptr noundef %padapter, i32 noundef 52, i32 noundef %or6.i.i) #14
  br label %while.body.i13.preheader

for.end.thread.i:                                 ; preds = %if.else.i.i11.1.for.end.thread.i_crit_edge, %if.else.i.i11.for.end.thread.i_crit_edge
  %bank.0135.i.lcssa = phi i8 [ %conv3.i, %if.else.i.i11.for.end.thread.i_crit_edge ], [ %inc79.i, %if.else.i.i11.1.for.end.thread.i_crit_edge ]
  %efuse_addr.0133.i.lcssa = phi i16 [ %rem.i, %if.else.i.i11.for.end.thread.i_crit_edge ], [ %efuse_addr.2.lcssa.i.ph, %if.else.i.i11.1.for.end.thread.i_crit_edge ]
  %call.i.i10.lcssa = phi i32 [ %call.i.i10, %if.else.i.i11.for.end.thread.i_crit_edge ], [ %call.i.i10.1, %if.else.i.i11.1.for.end.thread.i_crit_edge ]
  %and10.i.i = and i32 %call.i.i10.lcssa, -769
  %call12.i.i12 = call i32 @rtw_write32(ptr noundef %padapter, i32 noundef 52, i32 noundef %and10.i.i) #14
  %conv5.tr122.i = zext i8 %bank.0135.i.lcssa to i16
  %46 = shl i16 %conv5.tr122.i, 9
  %47 = add i16 %efuse_addr.0133.i.lcssa, -512
  %conv84123.i = add i16 %47, %46
  br label %if.else88.i

while.body.i13.preheader:                         ; preds = %hal_EfuseSwitchToBank.exit.thread116.i, %hal_EfuseSwitchToBank.exit.thread.i
  br label %while.body.i13

while.body.i13:                                   ; preds = %while.cond.backedge.i.while.body.i13_crit_edge, %while.body.i13.preheader
  %efuse_addr.2129.i = phi i16 [ %efuse_addr.2.be.i, %while.cond.backedge.i.while.body.i13_crit_edge ], [ %rem.i, %while.body.i13.preheader ]
  %call23.i = call zeroext i8 @efuse_OneByteRead(ptr noundef %padapter, i16 noundef zeroext %efuse_addr.2129.i, ptr noundef nonnull %efuse_data.i7, i1 noundef zeroext %bPseudoTest) #14
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call23.i)
  %cmp25.i = icmp eq i8 %call23.i, 0
  br i1 %cmp25.i, label %while.body.i13.while.end.i20_crit_edge, label %if.end28.i

while.body.i13.while.end.i20_crit_edge:           ; preds = %while.body.i13
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end.i20

if.end28.i:                                       ; preds = %while.body.i13
  %48 = ptrtoint ptr %efuse_data.i7 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %efuse_data.i7, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %49)
  %cmp30.i = icmp eq i8 %49, -1
  br i1 %cmp30.i, label %if.end28.i.while.end.i20_crit_edge, label %if.end33.i

if.end28.i.while.end.i20_crit_edge:               ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end.i20

if.end33.i:                                       ; preds = %if.end28.i
  %50 = and i8 %49, 31
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %50)
  %cmp35.i = icmp eq i8 %50, 15
  br i1 %cmp35.i, label %if.then37.i, label %if.else58.i

if.then37.i:                                      ; preds = %if.end33.i
  %inc.i14 = add nuw nsw i16 %efuse_addr.2129.i, 1
  %call42.i15 = call zeroext i8 @efuse_OneByteRead(ptr noundef %padapter, i16 noundef zeroext %inc.i14, ptr noundef nonnull %efuse_data.i7, i1 noundef zeroext %bPseudoTest) #14
  %51 = ptrtoint ptr %efuse_data.i7 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %efuse_data.i7, align 1
  %53 = and i8 %52, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %53)
  %cmp45.i16 = icmp eq i8 %53, 15
  br i1 %cmp45.i16, label %if.then47.i, label %if.then37.i.if.end66.i_crit_edge

if.then37.i.if.end66.i_crit_edge:                 ; preds = %if.then37.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end66.i

if.then47.i:                                      ; preds = %if.then37.i
  call void @__sanitizer_cov_trace_pc() #16
  %inc48.i = add nuw nsw i16 %efuse_addr.2129.i, 2
  br label %while.cond.backedge.i

while.cond.backedge.i:                            ; preds = %if.end66.i, %if.then47.i
  %efuse_addr.2.be.i = phi i16 [ %inc48.i, %if.then47.i ], [ %add71.i, %if.end66.i ]
  %cmp20.i = icmp ult i16 %efuse_addr.2.be.i, 512
  br i1 %cmp20.i, label %while.cond.backedge.i.while.body.i13_crit_edge, label %while.cond.backedge.i.while.end.i20_crit_edge

while.cond.backedge.i.while.end.i20_crit_edge:    ; preds = %while.cond.backedge.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end.i20

while.cond.backedge.i.while.body.i13_crit_edge:   ; preds = %while.cond.backedge.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i13

if.else58.i:                                      ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #16
  %and64.i = and i8 %49, 15
  br label %if.end66.i

if.end66.i:                                       ; preds = %if.else58.i, %if.then37.i.if.end66.i_crit_edge
  %efuse_addr.3.i = phi i16 [ %efuse_addr.2129.i, %if.else58.i ], [ %inc.i14, %if.then37.i.if.end66.i_crit_edge ]
  %hworden.0.i17 = phi i8 [ %and64.i, %if.else58.i ], [ %53, %if.then37.i.if.end66.i_crit_edge ]
  %call67.i = call zeroext i8 @Efuse_CalculateWordCnts(i8 noundef zeroext %hworden.0.i17) #14
  %conv68.i = zext i8 %call67.i to i16
  %mul.i18 = shl nuw nsw i16 %conv68.i, 1
  %add69.i19 = add nuw nsw i16 %efuse_addr.3.i, 1
  %add71.i = add nuw nsw i16 %add69.i19, %mul.i18
  br label %while.cond.backedge.i

while.end.i20:                                    ; preds = %while.cond.backedge.i.while.end.i20_crit_edge, %if.end28.i.while.end.i20_crit_edge, %while.body.i13.while.end.i20_crit_edge
  %efuse_addr.2.lcssa.i.ph = phi i16 [ %efuse_addr.2.be.i, %while.cond.backedge.i.while.end.i20_crit_edge ], [ %efuse_addr.2129.i, %while.body.i13.while.end.i20_crit_edge ], [ %efuse_addr.2129.i, %if.end28.i.while.end.i20_crit_edge ]
  %54 = ptrtoint ptr %retU2.i to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %retU2.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %efuse_addr.2.lcssa.i.ph, i16 %55)
  %cmp75.i = icmp ult i16 %efuse_addr.2.lcssa.i.ph, %55
  br i1 %cmp75.i, label %while.end.i20.for.end.i_crit_edge, label %for.inc.i

while.end.i20.for.end.i_crit_edge:                ; preds = %while.end.i20
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i

for.inc.i:                                        ; preds = %while.end.i20
  %inc79.i = add nuw i8 %41, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %cmp.i21 = icmp eq i8 %41, 0
  br i1 %cmp.i21, label %for.body.i.1, label %for.inc.i.for.end.i_crit_edge

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i

for.body.i.1:                                     ; preds = %for.inc.i
  br i1 %bPseudoTest, label %hal_EfuseSwitchToBank.exit.thread.i.1, label %if.else.i.i11.1

if.else.i.i11.1:                                  ; preds = %for.body.i.1
  %call.i.i10.1 = call i32 @rtw_read32(ptr noundef %padapter, i32 noundef 52) #14
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %cond = icmp eq i8 %41, 0
  br i1 %cond, label %hal_EfuseSwitchToBank.exit.thread116.i.1, label %if.else.i.i11.1.for.end.thread.i_crit_edge

if.else.i.i11.1.for.end.thread.i_crit_edge:       ; preds = %if.else.i.i11.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.thread.i

hal_EfuseSwitchToBank.exit.thread116.i.1:         ; preds = %if.else.i.i11.1
  call void @__sanitizer_cov_trace_pc() #16
  %and5.i.i.1 = and i32 %call.i.i10.1, -769
  %or6.i.i.1 = or i32 512, %and5.i.i.1
  %call12.i119.i.1 = call i32 @rtw_write32(ptr noundef %padapter, i32 noundef 52, i32 noundef %or6.i.i.1) #14
  br label %while.body.i13.preheader.1

hal_EfuseSwitchToBank.exit.thread.i.1:            ; preds = %for.body.i.1
  call void @__sanitizer_cov_trace_pc() #16
  %56 = ptrtoint ptr %HalData.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %HalData.i, align 8
  %EfuseHal.i.i9.1 = getelementptr inbounds %struct.hal_com_data, ptr %57, i32 0, i32 44
  %58 = ptrtoint ptr %EfuseHal.i.i9.1 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %inc79.i, ptr %EfuseHal.i.i9.1, align 4
  br label %while.body.i13.preheader.1

while.body.i13.preheader.1:                       ; preds = %hal_EfuseSwitchToBank.exit.thread.i.1, %hal_EfuseSwitchToBank.exit.thread116.i.1
  br label %while.body.i13.1

while.body.i13.1:                                 ; preds = %while.cond.backedge.i.1.while.body.i13.1_crit_edge, %while.body.i13.preheader.1
  %efuse_addr.2129.i.1 = phi i16 [ %efuse_addr.2.be.i.1, %while.cond.backedge.i.1.while.body.i13.1_crit_edge ], [ 0, %while.body.i13.preheader.1 ]
  %call23.i.1 = call zeroext i8 @efuse_OneByteRead(ptr noundef %padapter, i16 noundef zeroext %efuse_addr.2129.i.1, ptr noundef nonnull %efuse_data.i7, i1 noundef zeroext %bPseudoTest) #14
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call23.i.1)
  %cmp25.i.1 = icmp eq i8 %call23.i.1, 0
  br i1 %cmp25.i.1, label %while.body.i13.1.while.end.i20.1_crit_edge, label %if.end28.i.1

while.body.i13.1.while.end.i20.1_crit_edge:       ; preds = %while.body.i13.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end.i20.1

if.end28.i.1:                                     ; preds = %while.body.i13.1
  %59 = ptrtoint ptr %efuse_data.i7 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %efuse_data.i7, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %60)
  %cmp30.i.1 = icmp eq i8 %60, -1
  br i1 %cmp30.i.1, label %if.end28.i.1.while.end.i20.1_crit_edge, label %if.end33.i.1

if.end28.i.1.while.end.i20.1_crit_edge:           ; preds = %if.end28.i.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end.i20.1

if.end33.i.1:                                     ; preds = %if.end28.i.1
  %61 = and i8 %60, 31
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %61)
  %cmp35.i.1 = icmp eq i8 %61, 15
  br i1 %cmp35.i.1, label %if.then37.i.1, label %if.else58.i.1

if.else58.i.1:                                    ; preds = %if.end33.i.1
  call void @__sanitizer_cov_trace_pc() #16
  %and64.i.1 = and i8 %60, 15
  br label %if.end66.i.1

if.then37.i.1:                                    ; preds = %if.end33.i.1
  %inc.i14.1 = add nuw nsw i16 %efuse_addr.2129.i.1, 1
  %call42.i15.1 = call zeroext i8 @efuse_OneByteRead(ptr noundef %padapter, i16 noundef zeroext %inc.i14.1, ptr noundef nonnull %efuse_data.i7, i1 noundef zeroext %bPseudoTest) #14
  %62 = ptrtoint ptr %efuse_data.i7 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %efuse_data.i7, align 1
  %64 = and i8 %63, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %64)
  %cmp45.i16.1 = icmp eq i8 %64, 15
  br i1 %cmp45.i16.1, label %if.then47.i.1, label %if.then37.i.1.if.end66.i.1_crit_edge

if.then37.i.1.if.end66.i.1_crit_edge:             ; preds = %if.then37.i.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end66.i.1

if.end66.i.1:                                     ; preds = %if.then37.i.1.if.end66.i.1_crit_edge, %if.else58.i.1
  %efuse_addr.3.i.1 = phi i16 [ %efuse_addr.2129.i.1, %if.else58.i.1 ], [ %inc.i14.1, %if.then37.i.1.if.end66.i.1_crit_edge ]
  %hworden.0.i17.1 = phi i8 [ %and64.i.1, %if.else58.i.1 ], [ %64, %if.then37.i.1.if.end66.i.1_crit_edge ]
  %call67.i.1 = call zeroext i8 @Efuse_CalculateWordCnts(i8 noundef zeroext %hworden.0.i17.1) #14
  %conv68.i.1 = zext i8 %call67.i.1 to i16
  %mul.i18.1 = shl nuw nsw i16 %conv68.i.1, 1
  %add69.i19.1 = add nuw nsw i16 %efuse_addr.3.i.1, 1
  %add71.i.1 = add nuw nsw i16 %add69.i19.1, %mul.i18.1
  br label %while.cond.backedge.i.1

if.then47.i.1:                                    ; preds = %if.then37.i.1
  call void @__sanitizer_cov_trace_pc() #16
  %inc48.i.1 = add nuw nsw i16 %efuse_addr.2129.i.1, 2
  br label %while.cond.backedge.i.1

while.cond.backedge.i.1:                          ; preds = %if.then47.i.1, %if.end66.i.1
  %efuse_addr.2.be.i.1 = phi i16 [ %inc48.i.1, %if.then47.i.1 ], [ %add71.i.1, %if.end66.i.1 ]
  %cmp20.i.1 = icmp ult i16 %efuse_addr.2.be.i.1, 512
  br i1 %cmp20.i.1, label %while.cond.backedge.i.1.while.body.i13.1_crit_edge, label %while.cond.backedge.i.1.while.end.i20.1_crit_edge

while.cond.backedge.i.1.while.end.i20.1_crit_edge: ; preds = %while.cond.backedge.i.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end.i20.1

while.cond.backedge.i.1.while.body.i13.1_crit_edge: ; preds = %while.cond.backedge.i.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i13.1

while.end.i20.1:                                  ; preds = %while.cond.backedge.i.1.while.end.i20.1_crit_edge, %if.end28.i.1.while.end.i20.1_crit_edge, %while.body.i13.1.while.end.i20.1_crit_edge
  %efuse_addr.2.lcssa.i.ph.1 = phi i16 [ %efuse_addr.2.be.i.1, %while.cond.backedge.i.1.while.end.i20.1_crit_edge ], [ %efuse_addr.2129.i.1, %while.body.i13.1.while.end.i20.1_crit_edge ], [ %efuse_addr.2129.i.1, %if.end28.i.1.while.end.i20.1_crit_edge ]
  %65 = ptrtoint ptr %retU2.i to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %retU2.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %efuse_addr.2.lcssa.i.ph.1, i16 %66)
  %cmp75.i.1 = icmp ult i16 %efuse_addr.2.lcssa.i.ph.1, %66
  %spec.select = select i1 %cmp75.i.1, i8 %inc79.i, i8 3
  br label %for.end.i

for.end.i:                                        ; preds = %while.end.i20.1, %for.inc.i.for.end.i_crit_edge, %while.end.i20.for.end.i_crit_edge, %if.end.i.for.end.i_crit_edge
  %bank.0.lcssa.i = phi i8 [ %conv3.i, %if.end.i.for.end.i_crit_edge ], [ %conv3.i, %while.end.i20.for.end.i_crit_edge ], [ 3, %for.inc.i.for.end.i_crit_edge ], [ %spec.select, %while.end.i20.1 ]
  %efuse_addr.4.i = phi i16 [ %rem.i, %if.end.i.for.end.i_crit_edge ], [ %efuse_addr.2.lcssa.i.ph, %while.end.i20.for.end.i_crit_edge ], [ %efuse_addr.2.lcssa.i.ph, %for.inc.i.for.end.i_crit_edge ], [ %efuse_addr.2.lcssa.i.ph.1, %while.end.i20.1 ]
  %conv5.tr.i = zext i8 %bank.0.lcssa.i to i16
  %67 = shl i16 %conv5.tr.i, 9
  %68 = add i16 %efuse_addr.4.i, -512
  %conv84.i = add i16 %68, %67
  br i1 %bPseudoTest, label %if.then86.i, label %for.end.i.if.else88.i_crit_edge

for.end.i.if.else88.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else88.i

if.then86.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %fakeBTEfuseUsedBytes87.i = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 44, i32 10
  %69 = ptrtoint ptr %fakeBTEfuseUsedBytes87.i to i32
  call void @__asan_store2_noabort(i32 %69)
  store i16 %conv84.i, ptr %fakeBTEfuseUsedBytes87.i, align 4
  br label %hal_EfuseGetCurrentSize_BT.exit

if.else88.i:                                      ; preds = %for.end.i.if.else88.i_crit_edge, %for.end.thread.i
  %conv84124.i = phi i16 [ %conv84123.i, %for.end.thread.i ], [ %conv84.i, %for.end.i.if.else88.i_crit_edge ]
  %BTEfuseUsedBytes.i = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 44, i32 5
  %70 = ptrtoint ptr %BTEfuseUsedBytes.i to i32
  call void @__asan_store2_noabort(i32 %70)
  store i16 %conv84124.i, ptr %BTEfuseUsedBytes.i, align 4
  br label %hal_EfuseGetCurrentSize_BT.exit

hal_EfuseGetCurrentSize_BT.exit:                  ; preds = %if.else88.i, %if.then86.i
  %conv84125.i = phi i16 [ %conv84124.i, %if.else88.i ], [ %conv84.i, %if.then86.i ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %retU2.i) #14
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %efuse_data.i7) #14
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %btusedbytes.i) #14
  br label %if.end

if.end:                                           ; preds = %hal_EfuseGetCurrentSize_BT.exit, %hal_EfuseGetCurrentSize_WiFi.exit
  %ret.0 = phi i16 [ %31, %hal_EfuseGetCurrentSize_WiFi.exit ], [ %conv84125.i, %hal_EfuseGetCurrentSize_BT.exit ]
  ret i16 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @Hal_EfusePgPacketRead(ptr noundef %padapter, i8 noundef zeroext %offset, ptr noundef writeonly %data, i1 noundef zeroext %bPseudoTest) #0 align 64 {
entry:
  %efuse_data = alloca i8, align 1
  %max_section = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %efuse_data) #14
  %0 = ptrtoint ptr %efuse_data to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %efuse_data, align 1, !annotation !49
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %max_section) #14
  %1 = ptrtoint ptr %max_section to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %max_section, align 1
  %tobool.not = icmp eq ptr %data, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @EFUSE_GetEfuseDefinition(ptr noundef %padapter, i8 noundef zeroext 0, i8 noundef zeroext 0, ptr noundef nonnull %max_section, i1 noundef zeroext %bPseudoTest) #14
  %2 = ptrtoint ptr %max_section to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %max_section, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %3, i8 %offset)
  %cmp = icmp ult i8 %3, %offset
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %4 = ptrtoint ptr %data to i32
  call void @__asan_storeN_noabort(i32 %4, i32 8)
  store i64 -1, ptr %data, align 1
  %arrayidx74 = getelementptr i8, ptr %data, i32 1
  %arrayidx.1 = getelementptr i8, ptr %data, i32 2
  %arrayidx74.1 = getelementptr i8, ptr %data, i32 3
  %arrayidx.2 = getelementptr i8, ptr %data, i32 4
  %arrayidx74.2 = getelementptr i8, ptr %data, i32 5
  %arrayidx.3 = getelementptr i8, ptr %data, i32 6
  %arrayidx74.3 = getelementptr i8, ptr %data, i32 7
  br label %while.body

while.body:                                       ; preds = %while.cond.backedge.while.body_crit_edge, %if.end5
  %efuse_addr.0118 = phi i16 [ 0, %if.end5 ], [ %efuse_addr.0.be, %while.cond.backedge.while.body_crit_edge ]
  %inc = add nuw nsw i16 %efuse_addr.0118, 1
  %call = call zeroext i8 @efuse_OneByteRead(ptr noundef %padapter, i16 noundef zeroext %efuse_addr.0118, ptr noundef nonnull %efuse_data, i1 noundef zeroext %bPseudoTest) #14
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call)
  %cmp11 = icmp eq i8 %call, 0
  br i1 %cmp11, label %while.body.cleanup_crit_edge, label %if.end14

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end14:                                         ; preds = %while.body
  %5 = ptrtoint ptr %efuse_data to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %efuse_data, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %6)
  %cmp16 = icmp eq i8 %6, -1
  br i1 %cmp16, label %if.end14.cleanup_crit_edge, label %if.end19

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end19:                                         ; preds = %if.end14
  %7 = and i8 %6, 31
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %7)
  %cmp21 = icmp eq i8 %7, 15
  br i1 %cmp21, label %if.then23, label %if.else

if.then23:                                        ; preds = %if.end19
  %inc27 = add nuw nsw i16 %efuse_addr.0118, 2
  %call29 = call zeroext i8 @efuse_OneByteRead(ptr noundef %padapter, i16 noundef zeroext %inc, ptr noundef nonnull %efuse_data, i1 noundef zeroext %bPseudoTest) #14
  %8 = ptrtoint ptr %efuse_data to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %efuse_data, align 1
  %10 = and i8 %9, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %10)
  %cmp32 = icmp eq i8 %10, 15
  br i1 %cmp32, label %if.then23.while.cond.backedge_crit_edge, label %if.end35

if.then23.while.cond.backedge_crit_edge:          ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond.backedge

if.end35:                                         ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #16
  %11 = lshr i8 %6, 5
  %and37 = lshr i8 %9, 1
  %12 = and i8 %and37, 120
  %or = or i8 %12, %11
  br label %if.end51

if.else:                                          ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #16
  %13 = lshr i8 %6, 4
  %and49 = and i8 %6, 15
  br label %if.end51

if.end51:                                         ; preds = %if.else, %if.end35
  %efuse_addr.1 = phi i16 [ %inc27, %if.end35 ], [ %inc, %if.else ]
  %hoffset.0 = phi i8 [ %or, %if.end35 ], [ %13, %if.else ]
  %hworden.0 = phi i8 [ %10, %if.end35 ], [ %and49, %if.else ]
  call void @__sanitizer_cov_trace_cmp1(i8 %hoffset.0, i8 %offset)
  %cmp54 = icmp eq i8 %hoffset.0, %offset
  br i1 %cmp54, label %for.cond.preheader, label %if.else77

for.cond.preheader:                               ; preds = %if.end51
  %conv60 = zext i8 %hworden.0 to i32
  %and62 = and i32 %conv60, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and62)
  %tobool63.not = icmp eq i32 %and62, 0
  br i1 %tobool63.not, label %if.then64, label %for.cond.preheader.for.inc_crit_edge

for.cond.preheader.for.inc_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.then64:                                        ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #16
  %inc65 = add nuw nsw i16 %efuse_addr.1, 1
  %call67 = call zeroext i8 @efuse_OneByteRead(ptr noundef %padapter, i16 noundef zeroext %efuse_addr.1, ptr noundef nonnull %efuse_data, i1 noundef zeroext %bPseudoTest) #14
  %14 = ptrtoint ptr %efuse_data to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %efuse_data, align 1
  %16 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %data, align 1
  %inc69 = add nuw nsw i16 %efuse_addr.1, 2
  %call71 = call zeroext i8 @efuse_OneByteRead(ptr noundef %padapter, i16 noundef zeroext %inc65, ptr noundef nonnull %efuse_data, i1 noundef zeroext %bPseudoTest) #14
  %17 = ptrtoint ptr %efuse_data to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %efuse_data, align 1
  %19 = ptrtoint ptr %arrayidx74 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %18, ptr %arrayidx74, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.then64, %for.cond.preheader.for.inc_crit_edge
  %efuse_addr.3 = phi i16 [ %efuse_addr.1, %for.cond.preheader.for.inc_crit_edge ], [ %inc69, %if.then64 ]
  %and62.1 = and i32 %conv60, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and62.1)
  %tobool63.not.1 = icmp eq i32 %and62.1, 0
  br i1 %tobool63.not.1, label %if.then64.1, label %for.inc.for.inc.1_crit_edge

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.1

if.then64.1:                                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  %inc65.1 = add nuw nsw i16 %efuse_addr.3, 1
  %call67.1 = call zeroext i8 @efuse_OneByteRead(ptr noundef %padapter, i16 noundef zeroext %efuse_addr.3, ptr noundef nonnull %efuse_data, i1 noundef zeroext %bPseudoTest) #14
  %20 = ptrtoint ptr %efuse_data to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %efuse_data, align 1
  %22 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %21, ptr %arrayidx.1, align 1
  %inc69.1 = add nuw nsw i16 %efuse_addr.3, 2
  %call71.1 = call zeroext i8 @efuse_OneByteRead(ptr noundef %padapter, i16 noundef zeroext %inc65.1, ptr noundef nonnull %efuse_data, i1 noundef zeroext %bPseudoTest) #14
  %23 = ptrtoint ptr %efuse_data to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %efuse_data, align 1
  %25 = ptrtoint ptr %arrayidx74.1 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %24, ptr %arrayidx74.1, align 1
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then64.1, %for.inc.for.inc.1_crit_edge
  %efuse_addr.3.1 = phi i16 [ %efuse_addr.3, %for.inc.for.inc.1_crit_edge ], [ %inc69.1, %if.then64.1 ]
  %and62.2 = and i32 %conv60, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and62.2)
  %tobool63.not.2 = icmp eq i32 %and62.2, 0
  br i1 %tobool63.not.2, label %if.then64.2, label %for.inc.1.for.inc.2_crit_edge

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.2

if.then64.2:                                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #16
  %inc65.2 = add nuw nsw i16 %efuse_addr.3.1, 1
  %call67.2 = call zeroext i8 @efuse_OneByteRead(ptr noundef %padapter, i16 noundef zeroext %efuse_addr.3.1, ptr noundef nonnull %efuse_data, i1 noundef zeroext %bPseudoTest) #14
  %26 = ptrtoint ptr %efuse_data to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %efuse_data, align 1
  %28 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %27, ptr %arrayidx.2, align 1
  %inc69.2 = add nuw nsw i16 %efuse_addr.3.1, 2
  %call71.2 = call zeroext i8 @efuse_OneByteRead(ptr noundef %padapter, i16 noundef zeroext %inc65.2, ptr noundef nonnull %efuse_data, i1 noundef zeroext %bPseudoTest) #14
  %29 = ptrtoint ptr %efuse_data to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %efuse_data, align 1
  %31 = ptrtoint ptr %arrayidx74.2 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %30, ptr %arrayidx74.2, align 1
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then64.2, %for.inc.1.for.inc.2_crit_edge
  %efuse_addr.3.2 = phi i16 [ %efuse_addr.3.1, %for.inc.1.for.inc.2_crit_edge ], [ %inc69.2, %if.then64.2 ]
  %and62.3 = and i32 %conv60, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and62.3)
  %tobool63.not.3 = icmp eq i32 %and62.3, 0
  br i1 %tobool63.not.3, label %if.then64.3, label %for.inc.2.while.cond.backedge_crit_edge

for.inc.2.while.cond.backedge_crit_edge:          ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond.backedge

if.then64.3:                                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #16
  %inc65.3 = add nuw nsw i16 %efuse_addr.3.2, 1
  %call67.3 = call zeroext i8 @efuse_OneByteRead(ptr noundef %padapter, i16 noundef zeroext %efuse_addr.3.2, ptr noundef nonnull %efuse_data, i1 noundef zeroext %bPseudoTest) #14
  %32 = ptrtoint ptr %efuse_data to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %efuse_data, align 1
  %34 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %33, ptr %arrayidx.3, align 1
  %inc69.3 = add nuw nsw i16 %efuse_addr.3.2, 2
  %call71.3 = call zeroext i8 @efuse_OneByteRead(ptr noundef %padapter, i16 noundef zeroext %inc65.3, ptr noundef nonnull %efuse_data, i1 noundef zeroext %bPseudoTest) #14
  %35 = ptrtoint ptr %efuse_data to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %efuse_data, align 1
  %37 = ptrtoint ptr %arrayidx74.3 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %36, ptr %arrayidx74.3, align 1
  br label %while.cond.backedge

if.else77:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #16
  %call78 = call zeroext i8 @Efuse_CalculateWordCnts(i8 noundef zeroext %hworden.0) #14
  %conv79 = zext i8 %call78 to i16
  %mul80 = shl nuw nsw i16 %conv79, 1
  %add82 = add nuw nsw i16 %mul80, %efuse_addr.1
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.else77, %if.then64.3, %for.inc.2.while.cond.backedge_crit_edge, %if.then23.while.cond.backedge_crit_edge
  %efuse_addr.0.be = phi i16 [ %inc27, %if.then23.while.cond.backedge_crit_edge ], [ %add82, %if.else77 ], [ %efuse_addr.3.2, %for.inc.2.while.cond.backedge_crit_edge ], [ %inc69.3, %if.then64.3 ]
  %cmp7 = icmp ult i16 %efuse_addr.0.be, 512
  br i1 %cmp7, label %while.cond.backedge.while.body_crit_edge, label %while.cond.backedge.cleanup_crit_edge

while.cond.backedge.cleanup_crit_edge:            ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

while.cond.backedge.while.body_crit_edge:         ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body

cleanup:                                          ; preds = %while.cond.backedge.cleanup_crit_edge, %if.end14.cleanup_crit_edge, %while.body.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %while.body.cleanup_crit_edge ], [ 1, %while.cond.backedge.cleanup_crit_edge ], [ 1, %if.end14.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %max_section) #14
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %efuse_data) #14
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @Hal_EfusePgPacketWrite(ptr noundef %padapter, i8 noundef zeroext %offset, i8 noundef zeroext %word_en, ptr noundef %pData, i1 noundef zeroext %bPseudoTest) #0 align 64 {
entry:
  %max_available.i = alloca i16, align 2
  %targetPkt = alloca %struct.pgpkt_struct, align 1
  %startAddr = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %bPseudoTest to i8
  call void @llvm.lifetime.start.p0(i64 11, ptr nonnull %targetPkt) #14
  %0 = getelementptr inbounds %struct.pgpkt_struct, ptr %targetPkt, i32 0, i32 1
  %1 = getelementptr inbounds %struct.pgpkt_struct, ptr %targetPkt, i32 0, i32 2
  %2 = getelementptr inbounds i8, ptr %targetPkt, i32 10
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %2, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %startAddr) #14
  %4 = ptrtoint ptr %startAddr to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 0, ptr %startAddr, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %max_available.i) #14
  %5 = ptrtoint ptr %max_available.i to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 0, ptr %max_available.i, align 2
  call void @EFUSE_GetEfuseDefinition(ptr noundef %padapter, i8 noundef zeroext 0, i8 noundef zeroext 3, ptr noundef nonnull %max_available.i, i1 noundef zeroext %bPseudoTest) #14
  %call.i = call zeroext i16 @Efuse_GetCurrentSize(ptr noundef %padapter, i8 noundef zeroext 0, i1 noundef zeroext %bPseudoTest) #14
  %6 = ptrtoint ptr %max_available.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %max_available.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %call.i, i16 %7)
  %cmp.not.i.not = icmp ult i16 %call.i, %7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %max_available.i) #14
  br i1 %cmp.not.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = getelementptr inbounds %struct.pgpkt_struct, ptr %targetPkt, i32 0, i32 3
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %9, i32 8)
  store i64 -1, ptr %1, align 1
  %10 = ptrtoint ptr %targetPkt to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %offset, ptr %targetPkt, align 1
  %11 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %word_en, ptr %0, align 1
  call void @efuse_WordEnableDataRead(i8 noundef zeroext %word_en, ptr noundef %pData, ptr noundef %1) #14
  %12 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %0, align 1
  %call.i31 = call zeroext i8 @Efuse_CalculateWordCnts(i8 noundef zeroext %13) #14
  %14 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %call.i31, ptr %8, align 1
  %call4 = call fastcc zeroext i8 @hal_EfusePartialWriteCheck(ptr noundef %padapter, i8 noundef zeroext 0, ptr noundef nonnull %startAddr, i8 noundef zeroext %frombool)
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call4)
  %tobool5.not = icmp eq i8 %call4, 0
  br i1 %tobool5.not, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %call10 = call fastcc zeroext i8 @hal_EfusePgPacketWriteHeader(ptr noundef %padapter, i8 noundef zeroext 0, ptr noundef nonnull %startAddr, ptr noundef nonnull %targetPkt, i8 noundef zeroext %frombool)
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call10)
  %tobool11.not = icmp eq i8 %call10, 0
  br i1 %tobool11.not, label %if.end7.cleanup_crit_edge, label %if.end13

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end13:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #16
  %15 = ptrtoint ptr %startAddr to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %startAddr, align 2
  %add.i = add i16 %16, 1
  %17 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %0, align 1
  %call.i33 = call zeroext i8 @Efuse_WordEnableDataWrite(ptr noundef %padapter, i16 noundef zeroext %add.i, i8 noundef zeroext %18, ptr noundef %1, i1 noundef zeroext %bPseudoTest) #14
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %call.i33)
  %cmp.not.i34.not = icmp eq i8 %call.i33, 15
  %. = zext i1 %cmp.not.i34.not to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.end7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.end7.cleanup_crit_edge ], [ %., %if.end13 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %startAddr) #14
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %targetPkt) #14
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @Hal_EfuseWordEnableDataWrite(ptr noundef %padapter, i16 noundef zeroext %efuse_addr, i8 noundef zeroext %word_en, ptr nocapture noundef readonly %data, i1 noundef zeroext %bPseudoTest) #0 align 64 {
entry:
  %tmpdata = alloca [8 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmpdata) #14
  %0 = getelementptr inbounds [8 x i8], ptr %tmpdata, i32 0, i32 1
  %1 = getelementptr inbounds [8 x i8], ptr %tmpdata, i32 0, i32 2
  %2 = getelementptr inbounds [8 x i8], ptr %tmpdata, i32 0, i32 3
  %3 = getelementptr inbounds [8 x i8], ptr %tmpdata, i32 0, i32 4
  %4 = getelementptr inbounds [8 x i8], ptr %tmpdata, i32 0, i32 5
  %5 = getelementptr inbounds [8 x i8], ptr %tmpdata, i32 0, i32 6
  %6 = getelementptr inbounds [8 x i8], ptr %tmpdata, i32 0, i32 7
  %conv = zext i8 %word_en to i32
  %and = and i32 %conv, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %7 = ptrtoint ptr %tmpdata to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 -1, ptr %tmpdata, align 8
  br i1 %tobool.not, label %if.then, label %entry.if.end29_crit_edge

entry.if.end29_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end29

if.then:                                          ; preds = %entry
  %inc = add i16 %efuse_addr, 1
  %8 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %data, align 1
  %call = tail call zeroext i8 @efuse_OneByteWrite(ptr noundef %padapter, i16 noundef zeroext %efuse_addr, i8 noundef zeroext %9, i1 noundef zeroext %bPseudoTest) #14
  %inc2 = add i16 %efuse_addr, 2
  %arrayidx3 = getelementptr i8, ptr %data, i32 1
  %10 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx3, align 1
  %call5 = tail call zeroext i8 @efuse_OneByteWrite(ptr noundef %padapter, i16 noundef zeroext %inc, i8 noundef zeroext %11, i1 noundef zeroext %bPseudoTest) #14
  %call8 = call zeroext i8 @efuse_OneByteRead(ptr noundef %padapter, i16 noundef zeroext %efuse_addr, ptr noundef nonnull %tmpdata, i1 noundef zeroext %bPseudoTest) #14
  %call13 = call zeroext i8 @efuse_OneByteRead(ptr noundef %padapter, i16 noundef zeroext %inc, ptr noundef %0, i1 noundef zeroext %bPseudoTest) #14
  %12 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %data, align 1
  %14 = ptrtoint ptr %tmpdata to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %tmpdata, align 8
  call void @__sanitizer_cov_trace_cmp1(i8 %13, i8 %15)
  %cmp.not = icmp eq i8 %13, %15
  br i1 %cmp.not, label %lor.lhs.false, label %if.then.if.then25_crit_edge

if.then.if.then25_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then25

lor.lhs.false:                                    ; preds = %if.then
  %16 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx3, align 1
  %18 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %0, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %17, i8 %19)
  %cmp23.not = icmp eq i8 %17, %19
  br i1 %cmp23.not, label %lor.lhs.false.if.end29_crit_edge, label %lor.lhs.false.if.then25_crit_edge

lor.lhs.false.if.then25_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then25

lor.lhs.false.if.end29_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end29

if.then25:                                        ; preds = %lor.lhs.false.if.then25_crit_edge, %if.then.if.then25_crit_edge
  br label %if.end29

if.end29:                                         ; preds = %if.then25, %lor.lhs.false.if.end29_crit_edge, %entry.if.end29_crit_edge
  %start_addr.0 = phi i16 [ %efuse_addr, %entry.if.end29_crit_edge ], [ %inc2, %if.then25 ], [ %inc2, %lor.lhs.false.if.end29_crit_edge ]
  %badworden.0 = phi i8 [ 15, %entry.if.end29_crit_edge ], [ 14, %if.then25 ], [ 15, %lor.lhs.false.if.end29_crit_edge ]
  %and31 = and i32 %conv, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  br i1 %tobool32.not, label %if.then33, label %if.end29.if.end69_crit_edge

if.end29.if.end69_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

if.then33:                                        ; preds = %if.end29
  %inc34 = add i16 %start_addr.0, 1
  %arrayidx35 = getelementptr i8, ptr %data, i32 2
  %20 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx35, align 1
  %call37 = call zeroext i8 @efuse_OneByteWrite(ptr noundef %padapter, i16 noundef zeroext %start_addr.0, i8 noundef zeroext %21, i1 noundef zeroext %bPseudoTest) #14
  %inc38 = add i16 %start_addr.0, 2
  %arrayidx39 = getelementptr i8, ptr %data, i32 3
  %22 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx39, align 1
  %call41 = call zeroext i8 @efuse_OneByteWrite(ptr noundef %padapter, i16 noundef zeroext %inc34, i8 noundef zeroext %23, i1 noundef zeroext %bPseudoTest) #14
  %call44 = call zeroext i8 @efuse_OneByteRead(ptr noundef %padapter, i16 noundef zeroext %start_addr.0, ptr noundef %1, i1 noundef zeroext %bPseudoTest) #14
  %call50 = call zeroext i8 @efuse_OneByteRead(ptr noundef %padapter, i16 noundef zeroext %inc34, ptr noundef %2, i1 noundef zeroext %bPseudoTest) #14
  %24 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx35, align 1
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %1, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %25, i8 %27)
  %cmp55.not = icmp eq i8 %25, %27
  br i1 %cmp55.not, label %lor.lhs.false57, label %if.then33.if.then64_crit_edge

if.then33.if.then64_crit_edge:                    ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then64

lor.lhs.false57:                                  ; preds = %if.then33
  %28 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx39, align 1
  %30 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %2, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %29, i8 %31)
  %cmp62.not = icmp eq i8 %29, %31
  br i1 %cmp62.not, label %lor.lhs.false57.if.end69_crit_edge, label %lor.lhs.false57.if.then64_crit_edge

lor.lhs.false57.if.then64_crit_edge:              ; preds = %lor.lhs.false57
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then64

lor.lhs.false57.if.end69_crit_edge:               ; preds = %lor.lhs.false57
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

if.then64:                                        ; preds = %lor.lhs.false57.if.then64_crit_edge, %if.then33.if.then64_crit_edge
  %32 = and i8 %badworden.0, 13
  br label %if.end69

if.end69:                                         ; preds = %if.then64, %lor.lhs.false57.if.end69_crit_edge, %if.end29.if.end69_crit_edge
  %start_addr.1 = phi i16 [ %start_addr.0, %if.end29.if.end69_crit_edge ], [ %inc38, %if.then64 ], [ %inc38, %lor.lhs.false57.if.end69_crit_edge ]
  %badworden.1 = phi i8 [ %badworden.0, %if.end29.if.end69_crit_edge ], [ %32, %if.then64 ], [ %badworden.0, %lor.lhs.false57.if.end69_crit_edge ]
  %and71 = and i32 %conv, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and71)
  %tobool72.not = icmp eq i32 %and71, 0
  br i1 %tobool72.not, label %if.then73, label %if.end69.if.end109_crit_edge

if.end69.if.end109_crit_edge:                     ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end109

if.then73:                                        ; preds = %if.end69
  %inc74 = add i16 %start_addr.1, 1
  %arrayidx75 = getelementptr i8, ptr %data, i32 4
  %33 = ptrtoint ptr %arrayidx75 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx75, align 1
  %call77 = call zeroext i8 @efuse_OneByteWrite(ptr noundef %padapter, i16 noundef zeroext %start_addr.1, i8 noundef zeroext %34, i1 noundef zeroext %bPseudoTest) #14
  %inc78 = add i16 %start_addr.1, 2
  %arrayidx79 = getelementptr i8, ptr %data, i32 5
  %35 = ptrtoint ptr %arrayidx79 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx79, align 1
  %call81 = call zeroext i8 @efuse_OneByteWrite(ptr noundef %padapter, i16 noundef zeroext %inc74, i8 noundef zeroext %36, i1 noundef zeroext %bPseudoTest) #14
  %call84 = call zeroext i8 @efuse_OneByteRead(ptr noundef %padapter, i16 noundef zeroext %start_addr.1, ptr noundef %3, i1 noundef zeroext %bPseudoTest) #14
  %call90 = call zeroext i8 @efuse_OneByteRead(ptr noundef %padapter, i16 noundef zeroext %inc74, ptr noundef %4, i1 noundef zeroext %bPseudoTest) #14
  %37 = ptrtoint ptr %arrayidx75 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx75, align 1
  %39 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %3, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %38, i8 %40)
  %cmp95.not = icmp eq i8 %38, %40
  br i1 %cmp95.not, label %lor.lhs.false97, label %if.then73.if.then104_crit_edge

if.then73.if.then104_crit_edge:                   ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then104

lor.lhs.false97:                                  ; preds = %if.then73
  %41 = ptrtoint ptr %arrayidx79 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx79, align 1
  %43 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %4, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %42, i8 %44)
  %cmp102.not = icmp eq i8 %42, %44
  br i1 %cmp102.not, label %lor.lhs.false97.if.end109_crit_edge, label %lor.lhs.false97.if.then104_crit_edge

lor.lhs.false97.if.then104_crit_edge:             ; preds = %lor.lhs.false97
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then104

lor.lhs.false97.if.end109_crit_edge:              ; preds = %lor.lhs.false97
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end109

if.then104:                                       ; preds = %lor.lhs.false97.if.then104_crit_edge, %if.then73.if.then104_crit_edge
  %45 = and i8 %badworden.1, -5
  br label %if.end109

if.end109:                                        ; preds = %if.then104, %lor.lhs.false97.if.end109_crit_edge, %if.end69.if.end109_crit_edge
  %start_addr.2 = phi i16 [ %start_addr.1, %if.end69.if.end109_crit_edge ], [ %inc78, %if.then104 ], [ %inc78, %lor.lhs.false97.if.end109_crit_edge ]
  %badworden.2 = phi i8 [ %badworden.1, %if.end69.if.end109_crit_edge ], [ %45, %if.then104 ], [ %badworden.1, %lor.lhs.false97.if.end109_crit_edge ]
  %and111 = and i32 %conv, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and111)
  %tobool112.not = icmp eq i32 %and111, 0
  br i1 %tobool112.not, label %if.then113, label %if.end109.if.end149_crit_edge

if.end109.if.end149_crit_edge:                    ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end149

if.then113:                                       ; preds = %if.end109
  %inc114 = add i16 %start_addr.2, 1
  %arrayidx115 = getelementptr i8, ptr %data, i32 6
  %46 = ptrtoint ptr %arrayidx115 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx115, align 1
  %call117 = call zeroext i8 @efuse_OneByteWrite(ptr noundef %padapter, i16 noundef zeroext %start_addr.2, i8 noundef zeroext %47, i1 noundef zeroext %bPseudoTest) #14
  %arrayidx119 = getelementptr i8, ptr %data, i32 7
  %48 = ptrtoint ptr %arrayidx119 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %arrayidx119, align 1
  %call121 = call zeroext i8 @efuse_OneByteWrite(ptr noundef %padapter, i16 noundef zeroext %inc114, i8 noundef zeroext %49, i1 noundef zeroext %bPseudoTest) #14
  %call124 = call zeroext i8 @efuse_OneByteRead(ptr noundef %padapter, i16 noundef zeroext %start_addr.2, ptr noundef %5, i1 noundef zeroext %bPseudoTest) #14
  %call130 = call zeroext i8 @efuse_OneByteRead(ptr noundef %padapter, i16 noundef zeroext %inc114, ptr noundef %6, i1 noundef zeroext %bPseudoTest) #14
  %50 = ptrtoint ptr %arrayidx115 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx115, align 1
  %52 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %5, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %51, i8 %53)
  %cmp135.not = icmp eq i8 %51, %53
  br i1 %cmp135.not, label %lor.lhs.false137, label %if.then113.if.then144_crit_edge

if.then113.if.then144_crit_edge:                  ; preds = %if.then113
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then144

lor.lhs.false137:                                 ; preds = %if.then113
  %54 = ptrtoint ptr %arrayidx119 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx119, align 1
  %56 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %6, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %55, i8 %57)
  %cmp142.not = icmp eq i8 %55, %57
  br i1 %cmp142.not, label %lor.lhs.false137.if.end149_crit_edge, label %lor.lhs.false137.if.then144_crit_edge

lor.lhs.false137.if.then144_crit_edge:            ; preds = %lor.lhs.false137
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then144

lor.lhs.false137.if.end149_crit_edge:             ; preds = %lor.lhs.false137
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end149

if.then144:                                       ; preds = %lor.lhs.false137.if.then144_crit_edge, %if.then113.if.then144_crit_edge
  %58 = and i8 %badworden.2, -9
  br label %if.end149

if.end149:                                        ; preds = %if.then144, %lor.lhs.false137.if.end149_crit_edge, %if.end109.if.end149_crit_edge
  %badworden.3 = phi i8 [ %badworden.2, %if.end109.if.end149_crit_edge ], [ %58, %if.then144 ], [ %badworden.2, %lor.lhs.false137.if.end149_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmpdata) #14
  ret i8 %badworden.3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @Hal_EfusePgPacketWrite_BT(ptr noundef %padapter, i8 noundef zeroext %offset, i8 noundef zeroext %word_en, ptr noundef %pData, i1 noundef zeroext %bPseudoTest) #0 align 64 {
entry:
  %max_available.i = alloca i16, align 2
  %targetPkt = alloca %struct.pgpkt_struct, align 1
  %startAddr = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %bPseudoTest to i8
  call void @llvm.lifetime.start.p0(i64 11, ptr nonnull %targetPkt) #14
  %0 = getelementptr inbounds %struct.pgpkt_struct, ptr %targetPkt, i32 0, i32 1
  %1 = getelementptr inbounds %struct.pgpkt_struct, ptr %targetPkt, i32 0, i32 2
  %2 = getelementptr inbounds i8, ptr %targetPkt, i32 10
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %2, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %startAddr) #14
  %4 = ptrtoint ptr %startAddr to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 0, ptr %startAddr, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %max_available.i) #14
  %5 = ptrtoint ptr %max_available.i to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 0, ptr %max_available.i, align 2
  call void @EFUSE_GetEfuseDefinition(ptr noundef %padapter, i8 noundef zeroext 1, i8 noundef zeroext 3, ptr noundef nonnull %max_available.i, i1 noundef zeroext %bPseudoTest) #14
  %call.i = call zeroext i16 @Efuse_GetCurrentSize(ptr noundef %padapter, i8 noundef zeroext 1, i1 noundef zeroext %bPseudoTest) #14
  %6 = ptrtoint ptr %max_available.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %max_available.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %call.i, i16 %7)
  %cmp.not.i.not = icmp ult i16 %call.i, %7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %max_available.i) #14
  br i1 %cmp.not.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = getelementptr inbounds %struct.pgpkt_struct, ptr %targetPkt, i32 0, i32 3
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %9, i32 8)
  store i64 -1, ptr %1, align 1
  %10 = ptrtoint ptr %targetPkt to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %offset, ptr %targetPkt, align 1
  %11 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %word_en, ptr %0, align 1
  call void @efuse_WordEnableDataRead(i8 noundef zeroext %word_en, ptr noundef %pData, ptr noundef %1) #14
  %12 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %0, align 1
  %call.i31 = call zeroext i8 @Efuse_CalculateWordCnts(i8 noundef zeroext %13) #14
  %14 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %call.i31, ptr %8, align 1
  %call4 = call fastcc zeroext i8 @hal_EfusePartialWriteCheck(ptr noundef %padapter, i8 noundef zeroext 1, ptr noundef nonnull %startAddr, i8 noundef zeroext %frombool)
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call4)
  %tobool5.not = icmp eq i8 %call4, 0
  br i1 %tobool5.not, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %call10 = call fastcc zeroext i8 @hal_EfusePgPacketWriteHeader(ptr noundef %padapter, i8 noundef zeroext 1, ptr noundef nonnull %startAddr, ptr noundef nonnull %targetPkt, i8 noundef zeroext %frombool)
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call10)
  %tobool11.not = icmp eq i8 %call10, 0
  br i1 %tobool11.not, label %if.end7.cleanup_crit_edge, label %if.end13

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end13:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #16
  %15 = ptrtoint ptr %startAddr to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %startAddr, align 2
  %add.i = add i16 %16, 1
  %17 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %0, align 1
  %call.i33 = call zeroext i8 @Efuse_WordEnableDataWrite(ptr noundef %padapter, i16 noundef zeroext %add.i, i8 noundef zeroext %18, ptr noundef %1, i1 noundef zeroext %bPseudoTest) #14
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %call.i33)
  %cmp.not.i34.not = icmp eq i8 %call.i33, 15
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.end7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %entry.cleanup_crit_edge ], [ false, %if.end.cleanup_crit_edge ], [ false, %if.end7.cleanup_crit_edge ], [ %cmp.not.i34.not, %if.end13 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %startAddr) #14
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %targetPkt) #14
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtl8723b_GetHalODMVar(ptr noundef %Adapter, i32 noundef %eVariable, ptr noundef %pValue1, ptr noundef %pValue2) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @GetHalODMVar(ptr noundef %Adapter, i32 noundef %eVariable, ptr noundef %pValue1, ptr noundef %pValue2) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtl8723b_SetHalODMVar(ptr noundef %Adapter, i32 noundef %eVariable, ptr noundef %pValue1, i1 noundef zeroext %bSet) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @SetHalODMVar(ptr noundef %Adapter, i32 noundef %eVariable, ptr noundef %pValue1, i1 noundef zeroext %bSet) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtl8723bs_xmit_buf_handler(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hal_notch_filter_8723b(ptr noundef %adapter, i1 noundef zeroext %enable) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i8 @rtw_read8(ptr noundef %adapter, i32 noundef 3137) #14
  %0 = and i8 %call, -3
  %masksel = select i1 %enable, i8 2, i8 0
  %.sink = or i8 %0, %masksel
  %call6 = tail call i32 @rtw_write8(ptr noundef %adapter, i32 noundef 3137, i8 noundef zeroext %.sink) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @c2h_handler_8723b(ptr noundef %padapter, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %buf, null
  br i1 %tobool.not, label %entry.exit_crit_edge, label %if.end

entry.exit_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %exit

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %buf, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %1)
  %cond = icmp eq i8 %1, 9
  br i1 %cond, label %sw.bb1, label %if.end.exit_crit_edge

if.end.exit_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %exit

sw.bb1:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %plen = getelementptr inbounds %struct.c2h_evt_hdr_88xx, ptr %buf, i32 0, i32 3
  %2 = ptrtoint ptr %plen to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %plen, align 1
  %payload = getelementptr inbounds %struct.c2h_evt_hdr_88xx, ptr %buf, i32 0, i32 2
  tail call void @hal_btcoex_BtInfoNotify(ptr noundef %padapter, i8 noundef zeroext %3, ptr noundef %payload) #14
  br label %exit

exit:                                             ; preds = %sw.bb1, %if.end.exit_crit_edge, %entry.exit_crit_edge
  %ret.0 = phi i32 [ 1, %sw.bb1 ], [ 1, %if.end.exit_crit_edge ], [ 0, %entry.exit_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @c2h_id_filter_ccx_8723b(ptr nocapture noundef readonly %buf) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %buf, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %1)
  %cmp = icmp eq i8 %1, 3
  %spec.store.select = zext i1 %cmp to i32
  ret i32 %spec.store.select
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @FillH2CCmd8723B(ptr noundef, i8 noundef zeroext, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl8723b_InitAntenna_Selection(ptr noundef %padapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i8 @rtw_read8(ptr noundef %padapter, i32 noundef 78) #14
  %0 = or i8 %call, -128
  %call2 = tail call i32 @rtw_write8(ptr noundef %padapter, i32 noundef 78, i8 noundef zeroext %0) #14
  ret void
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl8723b_init_default_value(ptr nocapture noundef %padapter) local_unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %HalData = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 18
  %0 = ptrtoint ptr %HalData to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %HalData, align 8
  %wireless_mode = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 14, i32 7
  %2 = ptrtoint ptr %wireless_mode to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 11, ptr %wireless_mode, align 2
  %fw_ractrl = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 103
  %3 = ptrtoint ptr %fw_ractrl to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %fw_ractrl, align 2
  %bIQKInitialized = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 89
  %4 = ptrtoint ptr %bIQKInitialized to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %bIQKInitialized, align 1
  %dvobj = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 3
  %5 = ptrtoint ptr %dvobj to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dvobj, align 4
  %bkeepfwalive = getelementptr inbounds %struct.dvobj_priv, ptr %6, i32 0, i32 22, i32 57
  %7 = ptrtoint ptr %bkeepfwalive to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %bkeepfwalive, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %LastHMEBoxNum = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 102
  %9 = ptrtoint ptr %LastHMEBoxNum to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %LastHMEBoxNum, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %10 = ptrtoint ptr %bIQKInitialized to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %bIQKInitialized, align 1
  %TM_Trigger = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 140, i32 18
  %11 = ptrtoint ptr %TM_Trigger to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %TM_Trigger, align 1
  %ThermalValue_HP_index = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 140, i32 43
  %12 = ptrtoint ptr %ThermalValue_HP_index to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %ThermalValue_HP_index, align 2
  %uglygep = getelementptr i8, ptr %1, i32 11474
  %13 = ptrtoint ptr %uglygep to i32
  call void @__asan_storeN_noabort(i32 %13, i32 8)
  store i64 0, ptr %uglygep, align 1
  %EfuseUsedBytes = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 43
  %14 = ptrtoint ptr %EfuseUsedBytes to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 0, ptr %EfuseUsedBytes, align 2
  %EfuseUsedPercentage = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 42
  %15 = ptrtoint ptr %EfuseUsedPercentage to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %EfuseUsedPercentage, align 4
  %EfuseHal = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 44
  %16 = ptrtoint ptr %EfuseHal to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %EfuseHal, align 8
  %fakeEfuseUsedBytes = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 44, i32 1
  %17 = ptrtoint ptr %fakeEfuseUsedBytes to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %fakeEfuseUsedBytes, align 4
  %fakeEfuseContent = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 44, i32 2
  %BTEfuseUsedBytes = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 44, i32 5
  %18 = call ptr @memset(ptr %fakeEfuseContent, i32 255, i32 1536)
  %19 = ptrtoint ptr %BTEfuseUsedBytes to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 0, ptr %BTEfuseUsedBytes, align 8
  %BTEfuseUsedPercentage = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 44, i32 6
  %20 = ptrtoint ptr %BTEfuseUsedPercentage to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %BTEfuseUsedPercentage, align 2
  %BTEfuseContent = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 44, i32 7
  %fakeBTEfuseUsedBytes = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 44, i32 10
  %21 = call ptr @memset(ptr %BTEfuseContent, i32 255, i32 3584)
  %22 = ptrtoint ptr %fakeBTEfuseUsedBytes to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 0, ptr %fakeBTEfuseUsedBytes, align 4
  %fakeBTEfuseContent = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 44, i32 11
  %23 = call ptr @memset(ptr %fakeBTEfuseContent, i32 255, i32 3584)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @GetEEPROMSize8723B(ptr noundef %padapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i16 @rtw_read16(ptr noundef %padapter, i32 noundef 10) #14
  %0 = and i16 %call, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %0)
  %tobool.not = icmp eq i16 %0, 0
  %conv1 = select i1 %tobool.not, i8 4, i8 6
  ret i8 %conv1
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @rtw_read16(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtl8723b_InitLLTTable(ptr noundef %padapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rtw_read32(ptr noundef %padapter, i32 noundef 548) #14
  %or = or i32 %call, 65536
  %call1 = tail call i32 @rtw_write32(ptr noundef %padapter, i32 noundef 548, i32 noundef %or) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %call210 = tail call i32 @rtw_read32(ptr noundef %padapter, i32 noundef 548) #14
  %and11 = and i32 %call210, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool.not12 = icmp eq i32 %and11, 0
  br i1 %tobool.not12, label %entry.do.end_crit_edge, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  br label %if.end

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

if.end:                                           ; preds = %if.end5.if.end_crit_edge, %entry.if.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %1 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %1, %0
  %call3 = tail call i32 @jiffies_to_msecs(i32 noundef %sub) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %call3)
  %cmp = icmp ugt i32 %call3, 1000
  br i1 %cmp, label %if.end.do.end_crit_edge, label %if.end5

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

if.end5:                                          ; preds = %if.end
  tail call void @msleep(i32 noundef 1) #14
  %call2 = tail call i32 @rtw_read32(ptr noundef %padapter, i32 noundef 548) #14
  %and = and i32 %call2, 65536
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end5.do.end_crit_edge, label %if.end5.if.end_crit_edge

if.end5.if.end_crit_edge:                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.end5.do.end_crit_edge:                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

do.end:                                           ; preds = %if.end5.do.end_crit_edge, %if.end.do.end_crit_edge, %entry.do.end_crit_edge
  %ret.0 = phi i32 [ 1, %entry.do.end_crit_edge ], [ 1, %if.end5.do.end_crit_edge ], [ 0, %if.end.do.end_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_read32(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @Hal_InitPGData(ptr noundef %padapter, ptr nocapture noundef writeonly %PROMContent) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %eeprompriv = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 15
  %0 = ptrtoint ptr %eeprompriv to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %eeprompriv, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  %EepromOrEfuse = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 15, i32 3
  %2 = ptrtoint ptr %EepromOrEfuse to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %EepromOrEfuse, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool1.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br i1 %tobool1.not, label %if.then.if.end9.sink.split.sink.split_crit_edge, label %if.then.if.end9_crit_edge

if.then.if.end9_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end9

if.then.if.end9.sink.split.sink.split_crit_edge:  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end9.sink.split.sink.split

if.else:                                          ; preds = %entry
  br i1 %tobool1.not, label %if.else.if.end9.sink.split.sink.split_crit_edge, label %if.else.if.end9.sink.split_crit_edge

if.else.if.end9.sink.split_crit_edge:             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end9.sink.split

if.else.if.end9.sink.split.sink.split_crit_edge:  ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end9.sink.split.sink.split

if.end9.sink.split.sink.split:                    ; preds = %if.else.if.end9.sink.split.sink.split_crit_edge, %if.then.if.end9.sink.split.sink.split_crit_edge
  tail call void @EFUSE_ShadowMapUpdate(ptr noundef %padapter, i8 noundef zeroext 0, i1 noundef zeroext false) #14
  br label %if.end9.sink.split

if.end9.sink.split:                               ; preds = %if.end9.sink.split.sink.split, %if.else.if.end9.sink.split_crit_edge
  %efuse_eeprom_data = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 15, i32 7
  %4 = call ptr @memcpy(ptr %PROMContent, ptr %efuse_eeprom_data, i32 512)
  br label %if.end9

if.end9:                                          ; preds = %if.end9.sink.split, %if.then.if.end9_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @EFUSE_ShadowMapUpdate(ptr noundef, i8 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @Hal_EfuseParseIDCode(ptr nocapture noundef writeonly %padapter, ptr nocapture noundef readonly %hwinfo) local_unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hwinfo to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %hwinfo, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 10625, i16 %1)
  %cmp.not = icmp ne i16 %1, 10625
  %. = zext i1 %cmp.not to i8
  %eeprompriv = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 15
  %2 = ptrtoint ptr %eeprompriv to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %., ptr %eeprompriv, align 4
  ret void
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @Hal_EfuseParseTxPowerInfo_8723B(ptr nocapture noundef readonly %padapter, ptr nocapture noundef readonly %PROMContent, i1 noundef zeroext %AutoLoadFail) local_unnamed_addr #8 align 64 {
entry:
  %pwrInfo24G = alloca %struct.TxPowerInfo24G, align 1
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %HalData = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 18
  %0 = ptrtoint ptr %HalData to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %HalData, align 8
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %pwrInfo24G) #14
  %2 = call ptr @memset(ptr %pwrInfo24G, i32 0, i32 112)
  %arrayidx.i = getelementptr i8, ptr %PROMContent, i32 17
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %4)
  %cmp.i = icmp eq i8 %4, -1
  %spec.select.i = or i1 %cmp.i, %AutoLoadFail
  br i1 %spec.select.i, label %for.inc35.3.3.i, label %if.end41.i

for.inc35.3.3.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %uglygep491.i = getelementptr inbounds i8, ptr %pwrInfo24G, i32 24
  %5 = call ptr @memset(ptr %pwrInfo24G, i32 45, i32 6)
  %6 = call ptr @memset(ptr %uglygep491.i, i32 45, i32 6)
  %arrayidx22.i = getelementptr inbounds %struct.TxPowerInfo24G, ptr %pwrInfo24G, i32 0, i32 3, i32 0
  %arrayidx20.i = getelementptr inbounds %struct.TxPowerInfo24G, ptr %pwrInfo24G, i32 0, i32 4, i32 0
  %7 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 2, ptr %arrayidx20.i, align 1
  %8 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 4, ptr %arrayidx22.i, align 1
  %arrayidx26.1.i = getelementptr inbounds %struct.TxPowerInfo24G, ptr %pwrInfo24G, i32 0, i32 4, i32 0, i32 1
  %9 = ptrtoint ptr %arrayidx26.1.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 -2, ptr %arrayidx26.1.i, align 1
  %arrayidx28.1.i = getelementptr inbounds %struct.TxPowerInfo24G, ptr %pwrInfo24G, i32 0, i32 5, i32 0, i32 1
  %10 = ptrtoint ptr %arrayidx28.1.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 -2, ptr %arrayidx28.1.i, align 1
  %arrayidx30.1.i = getelementptr inbounds %struct.TxPowerInfo24G, ptr %pwrInfo24G, i32 0, i32 2, i32 0, i32 1
  %11 = ptrtoint ptr %arrayidx30.1.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 -2, ptr %arrayidx30.1.i, align 1
  %arrayidx33.1.i = getelementptr inbounds %struct.TxPowerInfo24G, ptr %pwrInfo24G, i32 0, i32 3, i32 0, i32 1
  %12 = ptrtoint ptr %arrayidx33.1.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 -2, ptr %arrayidx33.1.i, align 1
  %arrayidx26.2.i = getelementptr inbounds %struct.TxPowerInfo24G, ptr %pwrInfo24G, i32 0, i32 4, i32 0, i32 2
  %13 = ptrtoint ptr %arrayidx26.2.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 -2, ptr %arrayidx26.2.i, align 1
  %arrayidx28.2.i = getelementptr inbounds %struct.TxPowerInfo24G, ptr %pwrInfo24G, i32 0, i32 5, i32 0, i32 2
  %14 = ptrtoint ptr %arrayidx28.2.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 -2, ptr %arrayidx28.2.i, align 1
  %arrayidx30.2.i = getelementptr inbounds %struct.TxPowerInfo24G, ptr %pwrInfo24G, i32 0, i32 2, i32 0, i32 2
  %15 = ptrtoint ptr %arrayidx30.2.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 -2, ptr %arrayidx30.2.i, align 1
  %arrayidx33.2.i = getelementptr inbounds %struct.TxPowerInfo24G, ptr %pwrInfo24G, i32 0, i32 3, i32 0, i32 2
  %16 = ptrtoint ptr %arrayidx33.2.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 -2, ptr %arrayidx33.2.i, align 1
  %arrayidx26.3.i = getelementptr inbounds %struct.TxPowerInfo24G, ptr %pwrInfo24G, i32 0, i32 4, i32 0, i32 3
  %17 = ptrtoint ptr %arrayidx26.3.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 -2, ptr %arrayidx26.3.i, align 1
  %arrayidx28.3.i = getelementptr inbounds %struct.TxPowerInfo24G, ptr %pwrInfo24G, i32 0, i32 5, i32 0, i32 3
  %18 = ptrtoint ptr %arrayidx28.3.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 -2, ptr %arrayidx28.3.i, align 1
  %arrayidx30.3.i = getelementptr inbounds %struct.TxPowerInfo24G, ptr %pwrInfo24G, i32 0, i32 2, i32 0, i32 3
  %19 = ptrtoint ptr %arrayidx30.3.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 -2, ptr %arrayidx30.3.i, align 1
  %arrayidx33.3.i = getelementptr inbounds %struct.TxPowerInfo24G, ptr %pwrInfo24G, i32 0, i32 3, i32 0, i32 3
  %20 = ptrtoint ptr %arrayidx33.3.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 -2, ptr %arrayidx33.3.i, align 1
  %uglygep491.1.i = getelementptr inbounds i8, ptr %pwrInfo24G, i32 30
  %uglygep.1.i = getelementptr inbounds i8, ptr %pwrInfo24G, i32 6
  %21 = call ptr @memset(ptr %uglygep.1.i, i32 45, i32 6)
  %22 = call ptr @memset(ptr %uglygep491.1.i, i32 45, i32 6)
  %arrayidx22.1.i = getelementptr inbounds %struct.TxPowerInfo24G, ptr %pwrInfo24G, i32 0, i32 3, i32 1
  %arrayidx20.1.i = getelementptr inbounds %struct.TxPowerInfo24G, ptr %pwrInfo24G, i32 0, i32 4, i32 1
  %23 = ptrtoint ptr %arrayidx20.1.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 2, ptr %arrayidx20.1.i, align 1
  %24 = ptrtoint ptr %arrayidx22.1.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 4, ptr %arrayidx22.1.i, align 1
  %arrayidx26.1.1.i = getelementptr inbounds %struct.TxPowerInfo24G, ptr %pwrInfo24G, i32 0, i32 4, i32 1, i32 1
  %25 = ptrtoint ptr %arrayidx26.1.1.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 -2, ptr %arrayidx26.1.1.i, align 1
  %arrayidx28.1.1.i = getelementptr inbounds %struct.TxPowerInfo24G, ptr %pwrInfo24G, i32 0, i32 5, i32 1, i32 1
  %26 = ptrtoint ptr %arrayidx28.1.1.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 -2, ptr %arrayidx28.1.1.i, align 1
  %arrayidx30.1.1.i = getelementptr inbounds %struct.TxPowerInfo24G, ptr %pwrInfo24G, i32 0, i32 2, i32 1, i32 1
  %27 = ptrtoint ptr %arrayidx30.1.1.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 -2, ptr %arrayidx30.1.1.i, align 1
  %arrayidx33.1.1.i = getelementptr inbounds %struct.TxPowerInfo24G, ptr %pwrInfo24G, i32 0, i32 3, i32 1, i32 1
  %28 = ptrtoint ptr %arrayidx33.1.1.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 -2, ptr %arrayidx33.1.1.i, align 1
  %arrayidx26.2.1.i = getelementptr inbounds %struct.TxPowerInfo24G, ptr %pwrInfo24G, i32 0, i32 4, i32 1, i32 2
  %29 = ptrtoint ptr %arrayidx26.2.1.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 -2, ptr %arrayidx26.2.1.i, align 1
  %arrayidx28.2.1.i = getelementptr inbounds %struct.TxPowerInfo24G, ptr %pwrInfo24G, i32 0, i32 5, i32 1, i32 2
  %30 = ptrtoint ptr %arrayidx28.2.1.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 -2, ptr %arrayidx28.2.1.i, align 1
  %arrayidx30.2.1.i = getelementptr inbounds %struct.TxPowerInfo24G, ptr %pwrInfo24G, i32 0, i32 2, i32 1, i32 2
  %31 = ptrtoint ptr %arrayidx30.2.1.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 -2, ptr %arrayidx30.2.1.i, align 1
  %arrayidx33.2.1.i = getelementptr inbounds %struct.TxPowerInfo24G, ptr %pwrInfo24G, i32 0, i32 3, i32 1, i32 2
  %32 = ptrtoint ptr %arrayidx33.2.1.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 -2, ptr %arrayidx33.2.1.i, align 1
  %arrayidx26.3.1.i = getelementptr inbounds %struct.TxPowerInfo24G, ptr %pwrInfo24G, i32 0, i32 4, i32 1, i32 3
  %33 = ptrtoint ptr %arrayidx26.3.1.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 -2, ptr %arrayidx26.3.1.i, align 1
  %arrayidx28.3.1.i = getelementptr inbounds %struct.TxPowerInfo24G, ptr %pwrInfo24G, i32 0, i32 5, i32 1, i32 3
  %34 = ptrtoint ptr %arrayidx28.3.1.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 -2, ptr %arrayidx28.3.1.i, align 1
  %arrayidx30.3.1.i = getelementptr inbounds %struct.TxPowerInfo24G, ptr %pwrInfo24G, i32 0, i32 2, i32 1, i32 3
  %35 = ptrtoint ptr %arrayidx30.3.1.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 -2, ptr %arrayidx30.3.1.i, align 1
  %arrayidx33.3.1.i = getelementptr inbounds %struct.TxPowerInfo24G, ptr %pwrInfo24G, i32 0, i32 3, i32 1, i32 3
  %36 = ptrtoint ptr %arrayidx33.3.1.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 -2, ptr %arrayidx33.3.1.i, align 1
  %uglygep491.2.i = getelementptr inbounds i8, ptr %pwrInfo24G, i32 36
  %uglygep.2.i = getelementptr inbounds i8, ptr %pwrInfo24G, i32 12
  %37 = call ptr @memset(ptr %uglygep.2.i, i32 45, i32 6)
  %38 = call ptr @memset(ptr %uglygep491.2.i, i32 45, i32 6)
  %arrayidx22.2.i = getelementptr inbounds %struct.TxPowerInfo24G, ptr %pwrInfo24G, i32 0, i32 3, i32 2
  %arrayidx20.2.i = getelementptr inbounds %struct.TxPowerInfo24G, ptr %pwrInfo24G, i32 0, i32 4, i32 2
  %39 = ptrtoint ptr %arrayidx20.2.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 2, ptr %arrayidx20.2.i, align 1
  %40 = ptrtoint ptr %arrayidx22.2.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 4, ptr %arrayidx22.2.i, align 1
  %arrayidx26.1.2.i = getelementptr inbounds %struct.TxPowerInfo24G, ptr %pwrInfo24G, i32 0, i32 4, i32 2, i32 1
  %41 = ptrtoint ptr %arrayidx26.1.2.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 -2, ptr %arrayidx26.1.2.i, align 1
  %arrayidx28.1.2.i = getelementptr inbounds %struct.TxPowerInfo24G, ptr %pwrInfo24G, i32 0, i32 5, i32 2, i32 1
  %42 = ptrtoint ptr %arrayidx28.1.2.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 -2, ptr %arrayidx28.1.2.i, align 1
  %arrayidx30.1.2.i = getelementptr inbounds %struct.TxPowerInfo24G, ptr %pwrInfo24G, i32 0, i32 2, i32 2, i32 1
  %43 = ptrtoint ptr %arrayidx30.1.2.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 -2, ptr %arrayidx30.1.2.i, align 1
  %arrayidx33.1.2.i = getelementptr inbounds %struct.TxPowerInfo24G, ptr %pwrInfo24G, i32 0, i32 3, i32 2, i32 1
  %44 = ptrtoint ptr %arrayidx33.1.2.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 -2, ptr %arrayidx33.1.2.i, align 1
  %arrayidx26.2.2.i = getelementptr inbounds %struct.TxPowerInfo24G, ptr %pwrInfo24G, i32 0, i32 4, i32 2, i32 2
  %45 = ptrtoint ptr %arrayidx26.2.2.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 -2, ptr %arrayidx26.2.2.i, align 1
  %arrayidx28.2.2.i = getelementptr inbounds %struct.TxPowerInfo24G, ptr %pwrInfo24G, i32 0, i32 5, i32 2, i32 2
  %46 = ptrtoint ptr %arrayidx28.2.2.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 -2, ptr %arrayidx28.2.2.i, align 1
  %arrayidx30.2.2.i = getelementptr inbounds %struct.TxPowerInfo24G, ptr %pwrInfo24G, i32 0, i32 2, i32 2, i32 2
  %47 = ptrtoint ptr %arrayidx30.2.2.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 -2, ptr %arrayidx30.2.2.i, align 1
  %arrayidx33.2.2.i = getelementptr inbounds %struct.TxPowerInfo24G, ptr %pwrInfo24G, i32 0, i32 3, i32 2, i32 2
  %48 = ptrtoint ptr %arrayidx33.2.2.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 -2, ptr %arrayidx33.2.2.i, align 1
  %arrayidx26.3.2.i = getelementptr inbounds %struct.TxPowerInfo24G, ptr %pwrInfo24G, i32 0, i32 4, i32 2, i32 3
  %49 = ptrtoint ptr %arrayidx26.3.2.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 -2, ptr %arrayidx26.3.2.i, align 1
  %arrayidx28.3.2.i = getelementptr inbounds %struct.TxPowerInfo24G, ptr %pwrInfo24G, i32 0, i32 5, i32 2, i32 3
  %50 = ptrtoint ptr %arrayidx28.3.2.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 -2, ptr %arrayidx28.3.2.i, align 1
  %arrayidx30.3.2.i = getelementptr inbounds %struct.TxPowerInfo24G, ptr %pwrInfo24G, i32 0, i32 2, i32 2, i32 3
  %51 = ptrtoint ptr %arrayidx30.3.2.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 -2, ptr %arrayidx30.3.2.i, align 1
  %arrayidx33.3.2.i = getelementptr inbounds %struct.TxPowerInfo24G, ptr %pwrInfo24G, i32 0, i32 3, i32 2, i32 3
  %52 = ptrtoint ptr %arrayidx33.3.2.i to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 -2, ptr %arrayidx33.3.2.i, align 1
  %uglygep491.3.i = getelementptr inbounds i8, ptr %pwrInfo24G, i32 42
  %uglygep.3.i = getelementptr inbounds i8, ptr %pwrInfo24G, i32 18
  %53 = call ptr @memset(ptr %uglygep.3.i, i32 45, i32 6)
  %54 = call ptr @memset(ptr %uglygep491.3.i, i32 45, i32 6)
  %arrayidx22.3.i = getelementptr inbounds %struct.TxPowerInfo24G, ptr %pwrInfo24G, i32 0, i32 3, i32 3
  %arrayidx20.3.i = getelementptr inbounds %struct.TxPowerInfo24G, ptr %pwrInfo24G, i32 0, i32 4, i32 3
  %55 = ptrtoint ptr %arrayidx20.3.i to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 2, ptr %arrayidx20.3.i, align 1
  %56 = ptrtoint ptr %arrayidx22.3.i to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 4, ptr %arrayidx22.3.i, align 1
  %arrayidx26.1.3.i = getelementptr inbounds %struct.TxPowerInfo24G, ptr %pwrInfo24G, i32 0, i32 4, i32 3, i32 1
  %57 = ptrtoint ptr %arrayidx26.1.3.i to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 -2, ptr %arrayidx26.1.3.i, align 1
  %arrayidx28.1.3.i = getelementptr inbounds %struct.TxPowerInfo24G, ptr %pwrInfo24G, i32 0, i32 5, i32 3, i32 1
  %58 = ptrtoint ptr %arrayidx28.1.3.i to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 -2, ptr %arrayidx28.1.3.i, align 1
  %arrayidx30.1.3.i = getelementptr inbounds %struct.TxPowerInfo24G, ptr %pwrInfo24G, i32 0, i32 2, i32 3, i32 1
  %59 = ptrtoint ptr %arrayidx30.1.3.i to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 -2, ptr %arrayidx30.1.3.i, align 1
  %arrayidx33.1.3.i = getelementptr inbounds %struct.TxPowerInfo24G, ptr %pwrInfo24G, i32 0, i32 3, i32 3, i32 1
  %60 = ptrtoint ptr %arrayidx33.1.3.i to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 -2, ptr %arrayidx33.1.3.i, align 1
  %arrayidx26.2.3.i = getelementptr inbounds %struct.TxPowerInfo24G, ptr %pwrInfo24G, i32 0, i32 4, i32 3, i32 2
  %61 = ptrtoint ptr %arrayidx26.2.3.i to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 -2, ptr %arrayidx26.2.3.i, align 1
  %arrayidx28.2.3.i = getelementptr inbounds %struct.TxPowerInfo24G, ptr %pwrInfo24G, i32 0, i32 5, i32 3, i32 2
  %62 = ptrtoint ptr %arrayidx28.2.3.i to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 -2, ptr %arrayidx28.2.3.i, align 1
  %arrayidx30.2.3.i = getelementptr inbounds %struct.TxPowerInfo24G, ptr %pwrInfo24G, i32 0, i32 2, i32 3, i32 2
  %63 = ptrtoint ptr %arrayidx30.2.3.i to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 -2, ptr %arrayidx30.2.3.i, align 1
  %arrayidx33.2.3.i = getelementptr inbounds %struct.TxPowerInfo24G, ptr %pwrInfo24G, i32 0, i32 3, i32 3, i32 2
  %64 = ptrtoint ptr %arrayidx33.2.3.i to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 -2, ptr %arrayidx33.2.3.i, align 1
  %arrayidx26.3.3.i = getelementptr inbounds %struct.TxPowerInfo24G, ptr %pwrInfo24G, i32 0, i32 4, i32 3, i32 3
  %65 = ptrtoint ptr %arrayidx26.3.3.i to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 -2, ptr %arrayidx26.3.3.i, align 1
  %arrayidx28.3.3.i = getelementptr inbounds %struct.TxPowerInfo24G, ptr %pwrInfo24G, i32 0, i32 5, i32 3, i32 3
  %66 = ptrtoint ptr %arrayidx28.3.3.i to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 -2, ptr %arrayidx28.3.3.i, align 1
  %arrayidx30.3.3.i = getelementptr inbounds %struct.TxPowerInfo24G, ptr %pwrInfo24G, i32 0, i32 2, i32 3, i32 3
  %67 = ptrtoint ptr %arrayidx30.3.3.i to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 -2, ptr %arrayidx30.3.3.i, align 1
  %arrayidx33.3.3.i = getelementptr inbounds %struct.TxPowerInfo24G, ptr %pwrInfo24G, i32 0, i32 3, i32 3, i32 3
  %68 = ptrtoint ptr %arrayidx33.3.3.i to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 -2, ptr %arrayidx33.3.3.i, align 1
  br label %for.body6.peel.next170.preheader

if.end41.i:                                       ; preds = %entry
  %bTXPowerDataReadFromEEPORM.i = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 38
  %69 = ptrtoint ptr %bTXPowerDataReadFromEEPORM.i to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 1, ptr %bTXPowerDataReadFromEEPORM.i, align 8
  br label %if.then98.i

if.then98.i:                                      ; preds = %for.inc296.i.3.if.then98.i_crit_edge, %if.end41.i
  %eeAddr.0484.i = phi i32 [ 16, %if.end41.i ], [ %inc165.i.3, %for.inc296.i.3.if.then98.i_crit_edge ]
  %rfPath.1483.i = phi i32 [ 0, %if.end41.i ], [ %inc300.i, %for.inc296.i.3.if.then98.i_crit_edge ]
  %inc50.i = or i32 %eeAddr.0484.i, 1
  %arrayidx51.i = getelementptr i8, ptr %PROMContent, i32 %eeAddr.0484.i
  %70 = ptrtoint ptr %arrayidx51.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %arrayidx51.i, align 1
  %arrayidx54.i = getelementptr [4 x [6 x i8]], ptr %pwrInfo24G, i32 0, i32 %rfPath.1483.i, i32 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %71)
  %cmp59.i = icmp eq i8 %71, -1
  %spec.select469.i = select i1 %cmp59.i, i8 45, i8 %71
  %72 = ptrtoint ptr %arrayidx54.i to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 %spec.select469.i, ptr %arrayidx54.i, align 1
  %inc50.1.i = add i32 %eeAddr.0484.i, 2
  %arrayidx51.1.i = getelementptr i8, ptr %PROMContent, i32 %inc50.i
  %73 = ptrtoint ptr %arrayidx51.1.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %arrayidx51.1.i, align 1
  %arrayidx54.1.i = getelementptr [4 x [6 x i8]], ptr %pwrInfo24G, i32 0, i32 %rfPath.1483.i, i32 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %74)
  %cmp59.1.i = icmp eq i8 %74, -1
  %spec.select469.1.i = select i1 %cmp59.1.i, i8 45, i8 %74
  %75 = ptrtoint ptr %arrayidx54.1.i to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 %spec.select469.1.i, ptr %arrayidx54.1.i, align 1
  %inc50.2.i = add i32 %eeAddr.0484.i, 3
  %arrayidx51.2.i = getelementptr i8, ptr %PROMContent, i32 %inc50.1.i
  %76 = ptrtoint ptr %arrayidx51.2.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %arrayidx51.2.i, align 1
  %arrayidx54.2.i = getelementptr [4 x [6 x i8]], ptr %pwrInfo24G, i32 0, i32 %rfPath.1483.i, i32 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %77)
  %cmp59.2.i = icmp eq i8 %77, -1
  %spec.select469.2.i = select i1 %cmp59.2.i, i8 45, i8 %77
  %78 = ptrtoint ptr %arrayidx54.2.i to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 %spec.select469.2.i, ptr %arrayidx54.2.i, align 1
  %inc50.3.i = add i32 %eeAddr.0484.i, 4
  %arrayidx51.3.i = getelementptr i8, ptr %PROMContent, i32 %inc50.2.i
  %79 = ptrtoint ptr %arrayidx51.3.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %arrayidx51.3.i, align 1
  %arrayidx54.3.i = getelementptr [4 x [6 x i8]], ptr %pwrInfo24G, i32 0, i32 %rfPath.1483.i, i32 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %80)
  %cmp59.3.i = icmp eq i8 %80, -1
  %spec.select469.3.i = select i1 %cmp59.3.i, i8 45, i8 %80
  %81 = ptrtoint ptr %arrayidx54.3.i to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 %spec.select469.3.i, ptr %arrayidx54.3.i, align 1
  %inc50.4.i = add i32 %eeAddr.0484.i, 5
  %arrayidx51.4.i = getelementptr i8, ptr %PROMContent, i32 %inc50.3.i
  %82 = ptrtoint ptr %arrayidx51.4.i to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %arrayidx51.4.i, align 1
  %arrayidx54.4.i = getelementptr [4 x [6 x i8]], ptr %pwrInfo24G, i32 0, i32 %rfPath.1483.i, i32 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %83)
  %cmp59.4.i = icmp eq i8 %83, -1
  %spec.select469.4.i = select i1 %cmp59.4.i, i8 45, i8 %83
  %84 = ptrtoint ptr %arrayidx54.4.i to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 %spec.select469.4.i, ptr %arrayidx54.4.i, align 1
  %inc50.5.i = add i32 %eeAddr.0484.i, 6
  %arrayidx51.5.i = getelementptr i8, ptr %PROMContent, i32 %inc50.4.i
  %85 = ptrtoint ptr %arrayidx51.5.i to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %arrayidx51.5.i, align 1
  %arrayidx54.5.i = getelementptr [4 x [6 x i8]], ptr %pwrInfo24G, i32 0, i32 %rfPath.1483.i, i32 5
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %86)
  %cmp59.5.i = icmp eq i8 %86, -1
  %spec.select469.5.i = select i1 %cmp59.5.i, i8 45, i8 %86
  %87 = ptrtoint ptr %arrayidx54.5.i to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 %spec.select469.5.i, ptr %arrayidx54.5.i, align 1
  %inc73.i = add i32 %eeAddr.0484.i, 7
  %arrayidx74.i = getelementptr i8, ptr %PROMContent, i32 %inc50.5.i
  %88 = ptrtoint ptr %arrayidx74.i to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %arrayidx74.i, align 1
  %arrayidx77.i = getelementptr %struct.TxPowerInfo24G, ptr %pwrInfo24G, i32 0, i32 1, i32 %rfPath.1483.i, i32 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %89)
  %cmp82.i = icmp eq i8 %89, -1
  %spec.select470.i = select i1 %cmp82.i, i8 45, i8 %89
  %90 = ptrtoint ptr %arrayidx77.i to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 %spec.select470.i, ptr %arrayidx77.i, align 1
  %inc73.1.i = add i32 %eeAddr.0484.i, 8
  %arrayidx74.1.i = getelementptr i8, ptr %PROMContent, i32 %inc73.i
  %91 = ptrtoint ptr %arrayidx74.1.i to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %arrayidx74.1.i, align 1
  %arrayidx77.1.i = getelementptr %struct.TxPowerInfo24G, ptr %pwrInfo24G, i32 0, i32 1, i32 %rfPath.1483.i, i32 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %92)
  %cmp82.1.i = icmp eq i8 %92, -1
  %spec.select470.1.i = select i1 %cmp82.1.i, i8 45, i8 %92
  %93 = ptrtoint ptr %arrayidx77.1.i to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 %spec.select470.1.i, ptr %arrayidx77.1.i, align 1
  %inc73.2.i = add i32 %eeAddr.0484.i, 9
  %arrayidx74.2.i = getelementptr i8, ptr %PROMContent, i32 %inc73.1.i
  %94 = ptrtoint ptr %arrayidx74.2.i to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %arrayidx74.2.i, align 1
  %arrayidx77.2.i = getelementptr %struct.TxPowerInfo24G, ptr %pwrInfo24G, i32 0, i32 1, i32 %rfPath.1483.i, i32 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %95)
  %cmp82.2.i = icmp eq i8 %95, -1
  %spec.select470.2.i = select i1 %cmp82.2.i, i8 45, i8 %95
  %96 = ptrtoint ptr %arrayidx77.2.i to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 %spec.select470.2.i, ptr %arrayidx77.2.i, align 1
  %inc73.3.i = add i32 %eeAddr.0484.i, 10
  %arrayidx74.3.i = getelementptr i8, ptr %PROMContent, i32 %inc73.2.i
  %97 = ptrtoint ptr %arrayidx74.3.i to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %arrayidx74.3.i, align 1
  %arrayidx77.3.i = getelementptr %struct.TxPowerInfo24G, ptr %pwrInfo24G, i32 0, i32 1, i32 %rfPath.1483.i, i32 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %98)
  %cmp82.3.i = icmp eq i8 %98, -1
  %spec.select470.3.i = select i1 %cmp82.3.i, i8 45, i8 %98
  %99 = ptrtoint ptr %arrayidx77.3.i to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 %spec.select470.3.i, ptr %arrayidx77.3.i, align 1
  %arrayidx74.4.i = getelementptr i8, ptr %PROMContent, i32 %inc73.3.i
  %100 = ptrtoint ptr %arrayidx74.4.i to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %arrayidx74.4.i, align 1
  %arrayidx77.4.i = getelementptr %struct.TxPowerInfo24G, ptr %pwrInfo24G, i32 0, i32 1, i32 %rfPath.1483.i, i32 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %101)
  %cmp82.4.i = icmp eq i8 %101, -1
  %spec.select470.4.i = select i1 %cmp82.4.i, i8 45, i8 %101
  %102 = ptrtoint ptr %arrayidx77.4.i to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 %spec.select470.4.i, ptr %arrayidx77.4.i, align 1
  %arrayidx115.i = getelementptr %struct.TxPowerInfo24G, ptr %pwrInfo24G, i32 0, i32 4, i32 %rfPath.1483.i
  %arrayidx145.i = getelementptr %struct.TxPowerInfo24G, ptr %pwrInfo24G, i32 0, i32 3, i32 %rfPath.1483.i
  %arrayidx163.i = getelementptr %struct.TxPowerInfo24G, ptr %pwrInfo24G, i32 0, i32 2, i32 %rfPath.1483.i
  %inc73.4.i = add i32 %eeAddr.0484.i, 11
  %arrayidx100.i = getelementptr %struct.TxPowerInfo24G, ptr %pwrInfo24G, i32 0, i32 5, i32 %rfPath.1483.i
  %103 = ptrtoint ptr %arrayidx100.i to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 0, ptr %arrayidx100.i, align 1
  %arrayidx102.i = getelementptr i8, ptr %PROMContent, i32 %inc73.4.i
  %104 = ptrtoint ptr %arrayidx102.i to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %arrayidx102.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %105)
  %cmp104.i = icmp eq i8 %105, -1
  br i1 %cmp104.i, label %if.end130.i.thread153, label %if.else110.i

if.end130.i.thread153:                            ; preds = %if.then98.i
  call void @__sanitizer_cov_trace_pc() #16
  %106 = ptrtoint ptr %arrayidx115.i to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 2, ptr %arrayidx115.i, align 1
  br label %if.end161.sink.split.i

if.else110.i:                                     ; preds = %if.then98.i
  %107 = lshr i8 %105, 4
  %or.i = or i8 %107, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %105)
  %tobool122.not.i169 = icmp slt i8 %105, 0
  %spec.select = select i1 %tobool122.not.i169, i8 %or.i, i8 %107
  %108 = ptrtoint ptr %arrayidx115.i to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 %spec.select, ptr %arrayidx115.i, align 1
  %109 = and i8 %105, 15
  %110 = ptrtoint ptr %arrayidx145.i to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 %109, ptr %arrayidx145.i, align 1
  %111 = and i8 %105, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %111)
  %tobool152.not.i = icmp eq i8 %111, 0
  br i1 %tobool152.not.i, label %if.else110.i.if.else166.i.1_crit_edge, label %if.then153.i

if.else110.i.if.else166.i.1_crit_edge:            ; preds = %if.else110.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else166.i.1

if.then153.i:                                     ; preds = %if.else110.i
  call void @__sanitizer_cov_trace_pc() #16
  %or158.i = or i8 %105, -16
  br label %if.end161.sink.split.i

if.end161.sink.split.i:                           ; preds = %if.then153.i, %if.end130.i.thread153
  %or158.sink.i = phi i8 [ %or158.i, %if.then153.i ], [ 4, %if.end130.i.thread153 ]
  %112 = ptrtoint ptr %arrayidx145.i to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 %or158.sink.i, ptr %arrayidx145.i, align 1
  br label %if.else166.i.1

if.else166.i.1:                                   ; preds = %if.end161.sink.split.i, %if.else110.i.if.else166.i.1_crit_edge
  %113 = ptrtoint ptr %arrayidx163.i to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 0, ptr %arrayidx163.i, align 1
  %.pre = add i32 %eeAddr.0484.i, 12
  %arrayidx167.i.1 = getelementptr i8, ptr %PROMContent, i32 %.pre
  %114 = ptrtoint ptr %arrayidx167.i.1 to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %arrayidx167.i.1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %115)
  %cmp169.i.1 = icmp eq i8 %115, -1
  br i1 %cmp169.i.1, label %if.then203.i.1, label %if.else175.i.1

if.else175.i.1:                                   ; preds = %if.else166.i.1
  %116 = lshr i8 %115, 4
  %arrayidx183.i.1 = getelementptr %struct.TxPowerInfo24G, ptr %pwrInfo24G, i32 0, i32 5, i32 %rfPath.1483.i, i32 1
  %or195.i.1 = or i8 %116, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %115)
  %tobool189.not.i167.1 = icmp slt i8 %115, 0
  %spec.select160.1 = select i1 %tobool189.not.i167.1, i8 %or195.i.1, i8 %116
  %117 = ptrtoint ptr %arrayidx183.i.1 to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 %spec.select160.1, ptr %arrayidx183.i.1, align 1
  %118 = and i8 %115, 15
  %arrayidx214.i.1 = getelementptr %struct.TxPowerInfo24G, ptr %pwrInfo24G, i32 0, i32 4, i32 %rfPath.1483.i, i32 1
  %119 = ptrtoint ptr %arrayidx214.i.1 to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 %118, ptr %arrayidx214.i.1, align 1
  %120 = and i8 %115, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %120)
  %tobool220.not.i.1 = icmp eq i8 %120, 0
  br i1 %tobool220.not.i.1, label %if.else175.i.1.if.end229.i.1_crit_edge, label %if.then221.i.1

if.else175.i.1.if.end229.i.1_crit_edge:           ; preds = %if.else175.i.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end229.i.1

if.then221.i.1:                                   ; preds = %if.else175.i.1
  call void @__sanitizer_cov_trace_pc() #16
  %or226.i.1 = or i8 %115, -16
  %121 = ptrtoint ptr %arrayidx214.i.1 to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 %or226.i.1, ptr %arrayidx214.i.1, align 1
  br label %if.end229.i.1

if.then203.i.1:                                   ; preds = %if.else166.i.1
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx174.i.1 = getelementptr %struct.TxPowerInfo24G, ptr %pwrInfo24G, i32 0, i32 5, i32 %rfPath.1483.i, i32 1
  %122 = ptrtoint ptr %arrayidx174.i.1 to i32
  call void @__asan_store1_noabort(i32 %122)
  store i8 -2, ptr %arrayidx174.i.1, align 1
  %arrayidx206.i.1 = getelementptr %struct.TxPowerInfo24G, ptr %pwrInfo24G, i32 0, i32 4, i32 %rfPath.1483.i, i32 1
  %123 = ptrtoint ptr %arrayidx206.i.1 to i32
  call void @__asan_store1_noabort(i32 %123)
  store i8 -2, ptr %arrayidx206.i.1, align 1
  br label %if.end229.i.1

if.end229.i.1:                                    ; preds = %if.then203.i.1, %if.then221.i.1, %if.else175.i.1.if.end229.i.1_crit_edge
  %inc230.i.1 = add i32 %eeAddr.0484.i, 13
  %arrayidx231.i.1 = getelementptr i8, ptr %PROMContent, i32 %inc230.i.1
  %124 = ptrtoint ptr %arrayidx231.i.1 to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %arrayidx231.i.1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %125)
  %cmp233.i.1 = icmp eq i8 %125, -1
  br i1 %cmp233.i.1, label %if.then267.i.1, label %if.else239.i.1

if.else239.i.1:                                   ; preds = %if.end229.i.1
  %126 = lshr i8 %125, 4
  %arrayidx247.i.1 = getelementptr %struct.TxPowerInfo24G, ptr %pwrInfo24G, i32 0, i32 3, i32 %rfPath.1483.i, i32 1
  %or259.i.1 = or i8 %126, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %125)
  %tobool253.not.i168.1 = icmp slt i8 %125, 0
  %spec.select161.1 = select i1 %tobool253.not.i168.1, i8 %or259.i.1, i8 %126
  %127 = ptrtoint ptr %arrayidx247.i.1 to i32
  call void @__asan_store1_noabort(i32 %127)
  store i8 %spec.select161.1, ptr %arrayidx247.i.1, align 1
  %128 = and i8 %125, 15
  %arrayidx278.i.1 = getelementptr %struct.TxPowerInfo24G, ptr %pwrInfo24G, i32 0, i32 2, i32 %rfPath.1483.i, i32 1
  %129 = ptrtoint ptr %arrayidx278.i.1 to i32
  call void @__asan_store1_noabort(i32 %129)
  store i8 %128, ptr %arrayidx278.i.1, align 1
  %130 = and i8 %125, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %130)
  %tobool284.not.i.1 = icmp eq i8 %130, 0
  br i1 %tobool284.not.i.1, label %if.else239.i.1.if.else166.i.2_crit_edge, label %if.then285.i.1

if.else239.i.1.if.else166.i.2_crit_edge:          ; preds = %if.else239.i.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else166.i.2

if.then285.i.1:                                   ; preds = %if.else239.i.1
  call void @__sanitizer_cov_trace_pc() #16
  %or290.i.1 = or i8 %125, -16
  %131 = ptrtoint ptr %arrayidx278.i.1 to i32
  call void @__asan_store1_noabort(i32 %131)
  store i8 %or290.i.1, ptr %arrayidx278.i.1, align 1
  br label %if.else166.i.2

if.then267.i.1:                                   ; preds = %if.end229.i.1
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx238.i.1 = getelementptr %struct.TxPowerInfo24G, ptr %pwrInfo24G, i32 0, i32 3, i32 %rfPath.1483.i, i32 1
  %132 = ptrtoint ptr %arrayidx238.i.1 to i32
  call void @__asan_store1_noabort(i32 %132)
  store i8 -2, ptr %arrayidx238.i.1, align 1
  %arrayidx270.i.1 = getelementptr %struct.TxPowerInfo24G, ptr %pwrInfo24G, i32 0, i32 2, i32 %rfPath.1483.i, i32 1
  %133 = ptrtoint ptr %arrayidx270.i.1 to i32
  call void @__asan_store1_noabort(i32 %133)
  store i8 -2, ptr %arrayidx270.i.1, align 1
  br label %if.else166.i.2

if.else166.i.2:                                   ; preds = %if.then267.i.1, %if.then285.i.1, %if.else239.i.1.if.else166.i.2_crit_edge
  %inc165.i.1 = add i32 %eeAddr.0484.i, 14
  %arrayidx167.i.2 = getelementptr i8, ptr %PROMContent, i32 %inc165.i.1
  %134 = ptrtoint ptr %arrayidx167.i.2 to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %arrayidx167.i.2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %135)
  %cmp169.i.2 = icmp eq i8 %135, -1
  br i1 %cmp169.i.2, label %if.then203.i.2, label %if.else175.i.2

if.else175.i.2:                                   ; preds = %if.else166.i.2
  %136 = lshr i8 %135, 4
  %arrayidx183.i.2 = getelementptr %struct.TxPowerInfo24G, ptr %pwrInfo24G, i32 0, i32 5, i32 %rfPath.1483.i, i32 2
  %or195.i.2 = or i8 %136, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %135)
  %tobool189.not.i167.2 = icmp slt i8 %135, 0
  %spec.select160.2 = select i1 %tobool189.not.i167.2, i8 %or195.i.2, i8 %136
  %137 = ptrtoint ptr %arrayidx183.i.2 to i32
  call void @__asan_store1_noabort(i32 %137)
  store i8 %spec.select160.2, ptr %arrayidx183.i.2, align 1
  %138 = and i8 %135, 15
  %arrayidx214.i.2 = getelementptr %struct.TxPowerInfo24G, ptr %pwrInfo24G, i32 0, i32 4, i32 %rfPath.1483.i, i32 2
  %139 = ptrtoint ptr %arrayidx214.i.2 to i32
  call void @__asan_store1_noabort(i32 %139)
  store i8 %138, ptr %arrayidx214.i.2, align 1
  %140 = and i8 %135, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %140)
  %tobool220.not.i.2 = icmp eq i8 %140, 0
  br i1 %tobool220.not.i.2, label %if.else175.i.2.if.end229.i.2_crit_edge, label %if.then221.i.2

if.else175.i.2.if.end229.i.2_crit_edge:           ; preds = %if.else175.i.2
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end229.i.2

if.then221.i.2:                                   ; preds = %if.else175.i.2
  call void @__sanitizer_cov_trace_pc() #16
  %or226.i.2 = or i8 %135, -16
  %141 = ptrtoint ptr %arrayidx214.i.2 to i32
  call void @__asan_store1_noabort(i32 %141)
  store i8 %or226.i.2, ptr %arrayidx214.i.2, align 1
  br label %if.end229.i.2

if.then203.i.2:                                   ; preds = %if.else166.i.2
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx174.i.2 = getelementptr %struct.TxPowerInfo24G, ptr %pwrInfo24G, i32 0, i32 5, i32 %rfPath.1483.i, i32 2
  %142 = ptrtoint ptr %arrayidx174.i.2 to i32
  call void @__asan_store1_noabort(i32 %142)
  store i8 -2, ptr %arrayidx174.i.2, align 1
  %arrayidx206.i.2 = getelementptr %struct.TxPowerInfo24G, ptr %pwrInfo24G, i32 0, i32 4, i32 %rfPath.1483.i, i32 2
  %143 = ptrtoint ptr %arrayidx206.i.2 to i32
  call void @__asan_store1_noabort(i32 %143)
  store i8 -2, ptr %arrayidx206.i.2, align 1
  br label %if.end229.i.2

if.end229.i.2:                                    ; preds = %if.then203.i.2, %if.then221.i.2, %if.else175.i.2.if.end229.i.2_crit_edge
  %inc230.i.2 = add i32 %eeAddr.0484.i, 15
  %arrayidx231.i.2 = getelementptr i8, ptr %PROMContent, i32 %inc230.i.2
  %144 = ptrtoint ptr %arrayidx231.i.2 to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %arrayidx231.i.2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %145)
  %cmp233.i.2 = icmp eq i8 %145, -1
  br i1 %cmp233.i.2, label %if.then267.i.2, label %if.else239.i.2

if.else239.i.2:                                   ; preds = %if.end229.i.2
  %146 = lshr i8 %145, 4
  %arrayidx247.i.2 = getelementptr %struct.TxPowerInfo24G, ptr %pwrInfo24G, i32 0, i32 3, i32 %rfPath.1483.i, i32 2
  %or259.i.2 = or i8 %146, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %145)
  %tobool253.not.i168.2 = icmp slt i8 %145, 0
  %spec.select161.2 = select i1 %tobool253.not.i168.2, i8 %or259.i.2, i8 %146
  %147 = ptrtoint ptr %arrayidx247.i.2 to i32
  call void @__asan_store1_noabort(i32 %147)
  store i8 %spec.select161.2, ptr %arrayidx247.i.2, align 1
  %148 = and i8 %145, 15
  %arrayidx278.i.2 = getelementptr %struct.TxPowerInfo24G, ptr %pwrInfo24G, i32 0, i32 2, i32 %rfPath.1483.i, i32 2
  %149 = ptrtoint ptr %arrayidx278.i.2 to i32
  call void @__asan_store1_noabort(i32 %149)
  store i8 %148, ptr %arrayidx278.i.2, align 1
  %150 = and i8 %145, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %150)
  %tobool284.not.i.2 = icmp eq i8 %150, 0
  br i1 %tobool284.not.i.2, label %if.else239.i.2.if.else166.i.3_crit_edge, label %if.then285.i.2

if.else239.i.2.if.else166.i.3_crit_edge:          ; preds = %if.else239.i.2
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else166.i.3

if.then285.i.2:                                   ; preds = %if.else239.i.2
  call void @__sanitizer_cov_trace_pc() #16
  %or290.i.2 = or i8 %145, -16
  %151 = ptrtoint ptr %arrayidx278.i.2 to i32
  call void @__asan_store1_noabort(i32 %151)
  store i8 %or290.i.2, ptr %arrayidx278.i.2, align 1
  br label %if.else166.i.3

if.then267.i.2:                                   ; preds = %if.end229.i.2
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx238.i.2 = getelementptr %struct.TxPowerInfo24G, ptr %pwrInfo24G, i32 0, i32 3, i32 %rfPath.1483.i, i32 2
  %152 = ptrtoint ptr %arrayidx238.i.2 to i32
  call void @__asan_store1_noabort(i32 %152)
  store i8 -2, ptr %arrayidx238.i.2, align 1
  %arrayidx270.i.2 = getelementptr %struct.TxPowerInfo24G, ptr %pwrInfo24G, i32 0, i32 2, i32 %rfPath.1483.i, i32 2
  %153 = ptrtoint ptr %arrayidx270.i.2 to i32
  call void @__asan_store1_noabort(i32 %153)
  store i8 -2, ptr %arrayidx270.i.2, align 1
  br label %if.else166.i.3

if.else166.i.3:                                   ; preds = %if.then267.i.2, %if.then285.i.2, %if.else239.i.2.if.else166.i.3_crit_edge
  %inc165.i.2 = add i32 %eeAddr.0484.i, 16
  %arrayidx167.i.3 = getelementptr i8, ptr %PROMContent, i32 %inc165.i.2
  %154 = ptrtoint ptr %arrayidx167.i.3 to i32
  call void @__asan_load1_noabort(i32 %154)
  %155 = load i8, ptr %arrayidx167.i.3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %155)
  %cmp169.i.3 = icmp eq i8 %155, -1
  br i1 %cmp169.i.3, label %if.then203.i.3, label %if.else175.i.3

if.else175.i.3:                                   ; preds = %if.else166.i.3
  %156 = lshr i8 %155, 4
  %arrayidx183.i.3 = getelementptr %struct.TxPowerInfo24G, ptr %pwrInfo24G, i32 0, i32 5, i32 %rfPath.1483.i, i32 3
  %or195.i.3 = or i8 %156, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %155)
  %tobool189.not.i167.3 = icmp slt i8 %155, 0
  %spec.select160.3 = select i1 %tobool189.not.i167.3, i8 %or195.i.3, i8 %156
  %157 = ptrtoint ptr %arrayidx183.i.3 to i32
  call void @__asan_store1_noabort(i32 %157)
  store i8 %spec.select160.3, ptr %arrayidx183.i.3, align 1
  %158 = and i8 %155, 15
  %arrayidx214.i.3 = getelementptr %struct.TxPowerInfo24G, ptr %pwrInfo24G, i32 0, i32 4, i32 %rfPath.1483.i, i32 3
  %159 = ptrtoint ptr %arrayidx214.i.3 to i32
  call void @__asan_store1_noabort(i32 %159)
  store i8 %158, ptr %arrayidx214.i.3, align 1
  %160 = and i8 %155, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %160)
  %tobool220.not.i.3 = icmp eq i8 %160, 0
  br i1 %tobool220.not.i.3, label %if.else175.i.3.if.end229.i.3_crit_edge, label %if.then221.i.3

if.else175.i.3.if.end229.i.3_crit_edge:           ; preds = %if.else175.i.3
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end229.i.3

if.then221.i.3:                                   ; preds = %if.else175.i.3
  call void @__sanitizer_cov_trace_pc() #16
  %or226.i.3 = or i8 %155, -16
  %161 = ptrtoint ptr %arrayidx214.i.3 to i32
  call void @__asan_store1_noabort(i32 %161)
  store i8 %or226.i.3, ptr %arrayidx214.i.3, align 1
  br label %if.end229.i.3

if.then203.i.3:                                   ; preds = %if.else166.i.3
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx174.i.3 = getelementptr %struct.TxPowerInfo24G, ptr %pwrInfo24G, i32 0, i32 5, i32 %rfPath.1483.i, i32 3
  %162 = ptrtoint ptr %arrayidx174.i.3 to i32
  call void @__asan_store1_noabort(i32 %162)
  store i8 -2, ptr %arrayidx174.i.3, align 1
  %arrayidx206.i.3 = getelementptr %struct.TxPowerInfo24G, ptr %pwrInfo24G, i32 0, i32 4, i32 %rfPath.1483.i, i32 3
  %163 = ptrtoint ptr %arrayidx206.i.3 to i32
  call void @__asan_store1_noabort(i32 %163)
  store i8 -2, ptr %arrayidx206.i.3, align 1
  br label %if.end229.i.3

if.end229.i.3:                                    ; preds = %if.then203.i.3, %if.then221.i.3, %if.else175.i.3.if.end229.i.3_crit_edge
  %inc230.i.3 = add i32 %eeAddr.0484.i, 17
  %arrayidx231.i.3 = getelementptr i8, ptr %PROMContent, i32 %inc230.i.3
  %164 = ptrtoint ptr %arrayidx231.i.3 to i32
  call void @__asan_load1_noabort(i32 %164)
  %165 = load i8, ptr %arrayidx231.i.3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %165)
  %cmp233.i.3 = icmp eq i8 %165, -1
  br i1 %cmp233.i.3, label %if.then267.i.3, label %if.else239.i.3

if.else239.i.3:                                   ; preds = %if.end229.i.3
  %166 = lshr i8 %165, 4
  %arrayidx247.i.3 = getelementptr %struct.TxPowerInfo24G, ptr %pwrInfo24G, i32 0, i32 3, i32 %rfPath.1483.i, i32 3
  %or259.i.3 = or i8 %166, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %165)
  %tobool253.not.i168.3 = icmp slt i8 %165, 0
  %spec.select161.3 = select i1 %tobool253.not.i168.3, i8 %or259.i.3, i8 %166
  %167 = ptrtoint ptr %arrayidx247.i.3 to i32
  call void @__asan_store1_noabort(i32 %167)
  store i8 %spec.select161.3, ptr %arrayidx247.i.3, align 1
  %168 = and i8 %165, 15
  %arrayidx278.i.3 = getelementptr %struct.TxPowerInfo24G, ptr %pwrInfo24G, i32 0, i32 2, i32 %rfPath.1483.i, i32 3
  %169 = ptrtoint ptr %arrayidx278.i.3 to i32
  call void @__asan_store1_noabort(i32 %169)
  store i8 %168, ptr %arrayidx278.i.3, align 1
  %170 = and i8 %165, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %170)
  %tobool284.not.i.3 = icmp eq i8 %170, 0
  br i1 %tobool284.not.i.3, label %if.else239.i.3.for.inc296.i.3_crit_edge, label %if.then285.i.3

if.else239.i.3.for.inc296.i.3_crit_edge:          ; preds = %if.else239.i.3
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc296.i.3

if.then285.i.3:                                   ; preds = %if.else239.i.3
  call void @__sanitizer_cov_trace_pc() #16
  %or290.i.3 = or i8 %165, -16
  %171 = ptrtoint ptr %arrayidx278.i.3 to i32
  call void @__asan_store1_noabort(i32 %171)
  store i8 %or290.i.3, ptr %arrayidx278.i.3, align 1
  br label %for.inc296.i.3

if.then267.i.3:                                   ; preds = %if.end229.i.3
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx238.i.3 = getelementptr %struct.TxPowerInfo24G, ptr %pwrInfo24G, i32 0, i32 3, i32 %rfPath.1483.i, i32 3
  %172 = ptrtoint ptr %arrayidx238.i.3 to i32
  call void @__asan_store1_noabort(i32 %172)
  store i8 -2, ptr %arrayidx238.i.3, align 1
  %arrayidx270.i.3 = getelementptr %struct.TxPowerInfo24G, ptr %pwrInfo24G, i32 0, i32 2, i32 %rfPath.1483.i, i32 3
  %173 = ptrtoint ptr %arrayidx270.i.3 to i32
  call void @__asan_store1_noabort(i32 %173)
  store i8 -2, ptr %arrayidx270.i.3, align 1
  br label %for.inc296.i.3

for.inc296.i.3:                                   ; preds = %if.then267.i.3, %if.then285.i.3, %if.else239.i.3.for.inc296.i.3_crit_edge
  %inc165.i.3 = add i32 %eeAddr.0484.i, 18
  %inc300.i = add nuw nsw i32 %rfPath.1483.i, 1
  %exitcond490.not.i = icmp eq i32 %inc300.i, 4
  br i1 %exitcond490.not.i, label %for.inc296.i.3.for.body6.peel.next170.preheader_crit_edge, label %for.inc296.i.3.if.then98.i_crit_edge

for.inc296.i.3.if.then98.i_crit_edge:             ; preds = %for.inc296.i.3
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then98.i

for.inc296.i.3.for.body6.peel.next170.preheader_crit_edge: ; preds = %for.inc296.i.3
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body6.peel.next170.preheader

for.body6.peel.next170.preheader:                 ; preds = %for.inc296.i.3.for.body6.peel.next170.preheader_crit_edge, %for.inc35.3.3.i
  br label %for.body6.peel.next170

for.body6.peel.next170:                           ; preds = %for.body49.preheader.for.body6.peel.next170_crit_edge, %for.body6.peel.next170.preheader
  %indvars.iv198 = phi i32 [ %indvars.iv.next199, %for.body49.preheader.for.body6.peel.next170_crit_edge ], [ 0, %for.body6.peel.next170.preheader ]
  %arrayidx12 = getelementptr [4 x [6 x i8]], ptr %pwrInfo24G, i32 0, i32 %indvars.iv198, i32 5
  %arrayidx16 = getelementptr %struct.hal_com_data, ptr %1, i32 0, i32 45, i32 %indvars.iv198, i32 13
  %arrayidx24 = getelementptr %struct.hal_com_data, ptr %1, i32 0, i32 46, i32 %indvars.iv198, i32 13
  %arrayidx29.peel = getelementptr [4 x [6 x i8]], ptr %pwrInfo24G, i32 0, i32 %indvars.iv198, i32 0
  %174 = ptrtoint ptr %arrayidx29.peel to i32
  call void @__asan_load1_noabort(i32 %174)
  %175 = load i8, ptr %arrayidx29.peel, align 1
  %arrayidx34.peel = getelementptr %struct.hal_com_data, ptr %1, i32 0, i32 45, i32 %indvars.iv198, i32 0
  %176 = ptrtoint ptr %arrayidx34.peel to i32
  call void @__asan_store1_noabort(i32 %176)
  store i8 %175, ptr %arrayidx34.peel, align 1
  %arrayidx39.peel = getelementptr %struct.TxPowerInfo24G, ptr %pwrInfo24G, i32 0, i32 1, i32 %indvars.iv198, i32 0
  %177 = ptrtoint ptr %arrayidx39.peel to i32
  call void @__asan_load1_noabort(i32 %177)
  %178 = load i8, ptr %arrayidx39.peel, align 1
  %arrayidx44.peel = getelementptr %struct.hal_com_data, ptr %1, i32 0, i32 46, i32 %indvars.iv198, i32 0
  %179 = ptrtoint ptr %arrayidx44.peel to i32
  call void @__asan_store1_noabort(i32 %179)
  store i8 %178, ptr %arrayidx44.peel, align 1
  %arrayidx29.peel188 = getelementptr [4 x [6 x i8]], ptr %pwrInfo24G, i32 0, i32 %indvars.iv198, i32 0
  %180 = ptrtoint ptr %arrayidx29.peel188 to i32
  call void @__asan_load1_noabort(i32 %180)
  %181 = load i8, ptr %arrayidx29.peel188, align 1
  %arrayidx34.peel189 = getelementptr %struct.hal_com_data, ptr %1, i32 0, i32 45, i32 %indvars.iv198, i32 1
  %182 = ptrtoint ptr %arrayidx34.peel189 to i32
  call void @__asan_store1_noabort(i32 %182)
  store i8 %181, ptr %arrayidx34.peel189, align 1
  %arrayidx39.peel190 = getelementptr %struct.TxPowerInfo24G, ptr %pwrInfo24G, i32 0, i32 1, i32 %indvars.iv198, i32 0
  %183 = ptrtoint ptr %arrayidx39.peel190 to i32
  call void @__asan_load1_noabort(i32 %183)
  %184 = load i8, ptr %arrayidx39.peel190, align 1
  %arrayidx44.peel191 = getelementptr %struct.hal_com_data, ptr %1, i32 0, i32 46, i32 %indvars.iv198, i32 1
  %185 = ptrtoint ptr %arrayidx44.peel191 to i32
  call void @__asan_store1_noabort(i32 %185)
  store i8 %184, ptr %arrayidx44.peel191, align 1
  br label %land.lhs.true8.i

land.lhs.true8.i:                                 ; preds = %if.end.land.lhs.true8.i_crit_edge, %for.body6.peel.next170
  %indvars.iv = phi i32 [ 2, %for.body6.peel.next170 ], [ %indvars.iv.next, %if.end.land.lhs.true8.i_crit_edge ]
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %indvars.iv)
  %cmp10.i = icmp ult i32 %indvars.iv, 5
  br i1 %cmp10.i, label %land.lhs.true8.i.if.end_crit_edge, label %land.lhs.true17.i

land.lhs.true8.i.if.end_crit_edge:                ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.lhs.true17.i:                                ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %indvars.iv)
  %cmp19.i = icmp ult i32 %indvars.iv, 8
  br i1 %cmp19.i, label %land.lhs.true17.i.if.end_crit_edge, label %hal_get_chnl_group_8723b.exit

land.lhs.true17.i.if.end_crit_edge:               ; preds = %land.lhs.true17.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

hal_get_chnl_group_8723b.exit:                    ; preds = %land.lhs.true17.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %indvars.iv)
  %cmp28.i = icmp ult i32 %indvars.iv, 11
  %..i = select i1 %cmp28.i, i8 3, i8 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %indvars.iv)
  %cmp10 = icmp eq i32 %indvars.iv, 13
  br i1 %cmp10, label %if.end.thread, label %hal_get_chnl_group_8723b.exit.if.end_crit_edge

hal_get_chnl_group_8723b.exit.if.end_crit_edge:   ; preds = %hal_get_chnl_group_8723b.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.end.thread:                                    ; preds = %hal_get_chnl_group_8723b.exit
  call void @__sanitizer_cov_trace_pc() #16
  %186 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load1_noabort(i32 %186)
  %187 = load i8, ptr %arrayidx12, align 1
  %188 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store1_noabort(i32 %188)
  store i8 %187, ptr %arrayidx16, align 1
  %idxprom19 = zext i8 %..i to i32
  %arrayidx20 = getelementptr %struct.TxPowerInfo24G, ptr %pwrInfo24G, i32 0, i32 1, i32 %indvars.iv198, i32 %idxprom19
  %189 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load1_noabort(i32 %189)
  %190 = load i8, ptr %arrayidx20, align 1
  %191 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_store1_noabort(i32 %191)
  store i8 %190, ptr %arrayidx24, align 1
  br label %for.body49.preheader

if.end:                                           ; preds = %hal_get_chnl_group_8723b.exit.if.end_crit_edge, %land.lhs.true17.i.if.end_crit_edge, %land.lhs.true8.i.if.end_crit_edge
  %.sink.i150157 = phi i8 [ %..i, %hal_get_chnl_group_8723b.exit.if.end_crit_edge ], [ 2, %land.lhs.true17.i.if.end_crit_edge ], [ 1, %land.lhs.true8.i.if.end_crit_edge ]
  %idxprom28 = zext i8 %.sink.i150157 to i32
  %arrayidx29 = getelementptr [4 x [6 x i8]], ptr %pwrInfo24G, i32 0, i32 %indvars.iv198, i32 %idxprom28
  %192 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load1_noabort(i32 %192)
  %193 = load i8, ptr %arrayidx29, align 1
  %arrayidx34 = getelementptr %struct.hal_com_data, ptr %1, i32 0, i32 45, i32 %indvars.iv198, i32 %indvars.iv
  %194 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_store1_noabort(i32 %194)
  store i8 %193, ptr %arrayidx34, align 1
  %arrayidx39 = getelementptr %struct.TxPowerInfo24G, ptr %pwrInfo24G, i32 0, i32 1, i32 %indvars.iv198, i32 %idxprom28
  %195 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load1_noabort(i32 %195)
  %196 = load i8, ptr %arrayidx39, align 1
  %arrayidx44 = getelementptr %struct.hal_com_data, ptr %1, i32 0, i32 46, i32 %indvars.iv198, i32 %indvars.iv
  %197 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_store1_noabort(i32 %197)
  store i8 %196, ptr %arrayidx44, align 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, 14
  br i1 %exitcond.not, label %if.end.for.body49.preheader_crit_edge, label %if.end.land.lhs.true8.i_crit_edge, !llvm.loop !53

if.end.land.lhs.true8.i_crit_edge:                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true8.i

if.end.for.body49.preheader_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body49.preheader

for.body49.preheader:                             ; preds = %if.end.for.body49.preheader_crit_edge, %if.end.thread
  %arrayidx53 = getelementptr %struct.TxPowerInfo24G, ptr %pwrInfo24G, i32 0, i32 2, i32 %indvars.iv198, i32 0
  %198 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_load1_noabort(i32 %198)
  %199 = load i8, ptr %arrayidx53, align 1
  %arrayidx57 = getelementptr %struct.hal_com_data, ptr %1, i32 0, i32 47, i32 %indvars.iv198, i32 0
  %200 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_store1_noabort(i32 %200)
  store i8 %199, ptr %arrayidx57, align 1
  %arrayidx61 = getelementptr %struct.TxPowerInfo24G, ptr %pwrInfo24G, i32 0, i32 3, i32 %indvars.iv198, i32 0
  %201 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_load1_noabort(i32 %201)
  %202 = load i8, ptr %arrayidx61, align 1
  %arrayidx65 = getelementptr %struct.hal_com_data, ptr %1, i32 0, i32 48, i32 %indvars.iv198, i32 0
  %203 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_store1_noabort(i32 %203)
  store i8 %202, ptr %arrayidx65, align 1
  %arrayidx69 = getelementptr %struct.TxPowerInfo24G, ptr %pwrInfo24G, i32 0, i32 4, i32 %indvars.iv198, i32 0
  %204 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_load1_noabort(i32 %204)
  %205 = load i8, ptr %arrayidx69, align 1
  %arrayidx73 = getelementptr %struct.hal_com_data, ptr %1, i32 0, i32 49, i32 %indvars.iv198, i32 0
  %206 = ptrtoint ptr %arrayidx73 to i32
  call void @__asan_store1_noabort(i32 %206)
  store i8 %205, ptr %arrayidx73, align 1
  %arrayidx77 = getelementptr %struct.TxPowerInfo24G, ptr %pwrInfo24G, i32 0, i32 5, i32 %indvars.iv198, i32 0
  %207 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_load1_noabort(i32 %207)
  %208 = load i8, ptr %arrayidx77, align 1
  %arrayidx81 = getelementptr %struct.hal_com_data, ptr %1, i32 0, i32 50, i32 %indvars.iv198, i32 0
  %209 = ptrtoint ptr %arrayidx81 to i32
  call void @__asan_store1_noabort(i32 %209)
  store i8 %208, ptr %arrayidx81, align 1
  %arrayidx53.1 = getelementptr %struct.TxPowerInfo24G, ptr %pwrInfo24G, i32 0, i32 2, i32 %indvars.iv198, i32 1
  %210 = ptrtoint ptr %arrayidx53.1 to i32
  call void @__asan_load1_noabort(i32 %210)
  %211 = load i8, ptr %arrayidx53.1, align 1
  %arrayidx57.1 = getelementptr %struct.hal_com_data, ptr %1, i32 0, i32 47, i32 %indvars.iv198, i32 1
  %212 = ptrtoint ptr %arrayidx57.1 to i32
  call void @__asan_store1_noabort(i32 %212)
  store i8 %211, ptr %arrayidx57.1, align 1
  %arrayidx61.1 = getelementptr %struct.TxPowerInfo24G, ptr %pwrInfo24G, i32 0, i32 3, i32 %indvars.iv198, i32 1
  %213 = ptrtoint ptr %arrayidx61.1 to i32
  call void @__asan_load1_noabort(i32 %213)
  %214 = load i8, ptr %arrayidx61.1, align 1
  %arrayidx65.1 = getelementptr %struct.hal_com_data, ptr %1, i32 0, i32 48, i32 %indvars.iv198, i32 1
  %215 = ptrtoint ptr %arrayidx65.1 to i32
  call void @__asan_store1_noabort(i32 %215)
  store i8 %214, ptr %arrayidx65.1, align 1
  %arrayidx69.1 = getelementptr %struct.TxPowerInfo24G, ptr %pwrInfo24G, i32 0, i32 4, i32 %indvars.iv198, i32 1
  %216 = ptrtoint ptr %arrayidx69.1 to i32
  call void @__asan_load1_noabort(i32 %216)
  %217 = load i8, ptr %arrayidx69.1, align 1
  %arrayidx73.1 = getelementptr %struct.hal_com_data, ptr %1, i32 0, i32 49, i32 %indvars.iv198, i32 1
  %218 = ptrtoint ptr %arrayidx73.1 to i32
  call void @__asan_store1_noabort(i32 %218)
  store i8 %217, ptr %arrayidx73.1, align 1
  %arrayidx77.1 = getelementptr %struct.TxPowerInfo24G, ptr %pwrInfo24G, i32 0, i32 5, i32 %indvars.iv198, i32 1
  %219 = ptrtoint ptr %arrayidx77.1 to i32
  call void @__asan_load1_noabort(i32 %219)
  %220 = load i8, ptr %arrayidx77.1, align 1
  %arrayidx81.1 = getelementptr %struct.hal_com_data, ptr %1, i32 0, i32 50, i32 %indvars.iv198, i32 1
  %221 = ptrtoint ptr %arrayidx81.1 to i32
  call void @__asan_store1_noabort(i32 %221)
  store i8 %220, ptr %arrayidx81.1, align 1
  %arrayidx53.2 = getelementptr %struct.TxPowerInfo24G, ptr %pwrInfo24G, i32 0, i32 2, i32 %indvars.iv198, i32 2
  %222 = ptrtoint ptr %arrayidx53.2 to i32
  call void @__asan_load1_noabort(i32 %222)
  %223 = load i8, ptr %arrayidx53.2, align 1
  %arrayidx57.2 = getelementptr %struct.hal_com_data, ptr %1, i32 0, i32 47, i32 %indvars.iv198, i32 2
  %224 = ptrtoint ptr %arrayidx57.2 to i32
  call void @__asan_store1_noabort(i32 %224)
  store i8 %223, ptr %arrayidx57.2, align 1
  %arrayidx61.2 = getelementptr %struct.TxPowerInfo24G, ptr %pwrInfo24G, i32 0, i32 3, i32 %indvars.iv198, i32 2
  %225 = ptrtoint ptr %arrayidx61.2 to i32
  call void @__asan_load1_noabort(i32 %225)
  %226 = load i8, ptr %arrayidx61.2, align 1
  %arrayidx65.2 = getelementptr %struct.hal_com_data, ptr %1, i32 0, i32 48, i32 %indvars.iv198, i32 2
  %227 = ptrtoint ptr %arrayidx65.2 to i32
  call void @__asan_store1_noabort(i32 %227)
  store i8 %226, ptr %arrayidx65.2, align 1
  %arrayidx69.2 = getelementptr %struct.TxPowerInfo24G, ptr %pwrInfo24G, i32 0, i32 4, i32 %indvars.iv198, i32 2
  %228 = ptrtoint ptr %arrayidx69.2 to i32
  call void @__asan_load1_noabort(i32 %228)
  %229 = load i8, ptr %arrayidx69.2, align 1
  %arrayidx73.2 = getelementptr %struct.hal_com_data, ptr %1, i32 0, i32 49, i32 %indvars.iv198, i32 2
  %230 = ptrtoint ptr %arrayidx73.2 to i32
  call void @__asan_store1_noabort(i32 %230)
  store i8 %229, ptr %arrayidx73.2, align 1
  %arrayidx77.2 = getelementptr %struct.TxPowerInfo24G, ptr %pwrInfo24G, i32 0, i32 5, i32 %indvars.iv198, i32 2
  %231 = ptrtoint ptr %arrayidx77.2 to i32
  call void @__asan_load1_noabort(i32 %231)
  %232 = load i8, ptr %arrayidx77.2, align 1
  %arrayidx81.2 = getelementptr %struct.hal_com_data, ptr %1, i32 0, i32 50, i32 %indvars.iv198, i32 2
  %233 = ptrtoint ptr %arrayidx81.2 to i32
  call void @__asan_store1_noabort(i32 %233)
  store i8 %232, ptr %arrayidx81.2, align 1
  %arrayidx53.3 = getelementptr %struct.TxPowerInfo24G, ptr %pwrInfo24G, i32 0, i32 2, i32 %indvars.iv198, i32 3
  %234 = ptrtoint ptr %arrayidx53.3 to i32
  call void @__asan_load1_noabort(i32 %234)
  %235 = load i8, ptr %arrayidx53.3, align 1
  %arrayidx57.3 = getelementptr %struct.hal_com_data, ptr %1, i32 0, i32 47, i32 %indvars.iv198, i32 3
  %236 = ptrtoint ptr %arrayidx57.3 to i32
  call void @__asan_store1_noabort(i32 %236)
  store i8 %235, ptr %arrayidx57.3, align 1
  %arrayidx61.3 = getelementptr %struct.TxPowerInfo24G, ptr %pwrInfo24G, i32 0, i32 3, i32 %indvars.iv198, i32 3
  %237 = ptrtoint ptr %arrayidx61.3 to i32
  call void @__asan_load1_noabort(i32 %237)
  %238 = load i8, ptr %arrayidx61.3, align 1
  %arrayidx65.3 = getelementptr %struct.hal_com_data, ptr %1, i32 0, i32 48, i32 %indvars.iv198, i32 3
  %239 = ptrtoint ptr %arrayidx65.3 to i32
  call void @__asan_store1_noabort(i32 %239)
  store i8 %238, ptr %arrayidx65.3, align 1
  %arrayidx69.3 = getelementptr %struct.TxPowerInfo24G, ptr %pwrInfo24G, i32 0, i32 4, i32 %indvars.iv198, i32 3
  %240 = ptrtoint ptr %arrayidx69.3 to i32
  call void @__asan_load1_noabort(i32 %240)
  %241 = load i8, ptr %arrayidx69.3, align 1
  %arrayidx73.3 = getelementptr %struct.hal_com_data, ptr %1, i32 0, i32 49, i32 %indvars.iv198, i32 3
  %242 = ptrtoint ptr %arrayidx73.3 to i32
  call void @__asan_store1_noabort(i32 %242)
  store i8 %241, ptr %arrayidx73.3, align 1
  %arrayidx77.3 = getelementptr %struct.TxPowerInfo24G, ptr %pwrInfo24G, i32 0, i32 5, i32 %indvars.iv198, i32 3
  %243 = ptrtoint ptr %arrayidx77.3 to i32
  call void @__asan_load1_noabort(i32 %243)
  %244 = load i8, ptr %arrayidx77.3, align 1
  %arrayidx81.3 = getelementptr %struct.hal_com_data, ptr %1, i32 0, i32 50, i32 %indvars.iv198, i32 3
  %245 = ptrtoint ptr %arrayidx81.3 to i32
  call void @__asan_store1_noabort(i32 %245)
  store i8 %244, ptr %arrayidx81.3, align 1
  %indvars.iv.next199 = add nuw nsw i32 %indvars.iv198, 1
  %exitcond200.not = icmp eq i32 %indvars.iv.next199, 4
  br i1 %exitcond200.not, label %for.end87, label %for.body49.preheader.for.body6.peel.next170_crit_edge

for.body49.preheader.for.body6.peel.next170_crit_edge: ; preds = %for.body49.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body6.peel.next170

for.end87:                                        ; preds = %for.body49.preheader
  br i1 %AutoLoadFail, label %if.else100, label %if.then89

if.then89:                                        ; preds = %for.end87
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx90 = getelementptr i8, ptr %PROMContent, i32 193
  %246 = ptrtoint ptr %arrayidx90 to i32
  call void @__asan_load1_noabort(i32 %246)
  %247 = load i8, ptr %arrayidx90, align 1
  %248 = and i8 %247, 7
  %EEPROMRegulatory = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 31
  %249 = ptrtoint ptr %EEPROMRegulatory to i32
  call void @__asan_store1_noabort(i32 %249)
  store i8 %248, ptr %EEPROMRegulatory, align 1
  %250 = load i8, ptr %arrayidx90, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %250)
  %cmp95 = icmp eq i8 %250, -1
  %spec.store.select = select i1 %cmp95, i8 0, i8 %248
  %251 = ptrtoint ptr %EEPROMRegulatory to i32
  call void @__asan_store1_noabort(i32 %251)
  store i8 %spec.store.select, ptr %EEPROMRegulatory, align 1
  br label %if.end102

if.else100:                                       ; preds = %for.end87
  call void @__sanitizer_cov_trace_pc() #16
  %EEPROMRegulatory101 = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 31
  %252 = ptrtoint ptr %EEPROMRegulatory101 to i32
  call void @__asan_store1_noabort(i32 %252)
  store i8 0, ptr %EEPROMRegulatory101, align 1
  br label %if.end102

if.end102:                                        ; preds = %if.else100, %if.then89
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %pwrInfo24G) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @Hal_EfuseParseBTCoexistInfo_8723B(ptr noundef %padapter, ptr nocapture noundef readonly %hwinfo, i1 noundef zeroext %AutoLoadFail) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %HalData = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 18
  %0 = ptrtoint ptr %HalData to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %HalData, align 8
  br i1 %AutoLoadFail, label %if.else24, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call i32 @rtw_read32(ptr noundef %padapter, i32 noundef 104) #14
  %and = lshr i32 %call, 18
  %2 = trunc i32 %and to i8
  %3 = and i8 %2, 1
  %4 = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 33
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %3, ptr %4, align 1
  %EEPROMBluetoothType = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 34
  %6 = ptrtoint ptr %EEPROMBluetoothType to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 8, ptr %EEPROMBluetoothType, align 4
  %arrayidx = getelementptr i8, ptr %hwinfo, i32 195
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %8)
  %cmp.not = icmp eq i8 %8, -1
  br i1 %cmp.not, label %if.else13, label %if.then5

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %and7 = and i8 %8, 1
  %EEPROMBluetoothAntNum = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 35
  %9 = ptrtoint ptr %EEPROMBluetoothAntNum to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %and7, ptr %EEPROMBluetoothAntNum, align 1
  %10 = lshr i8 %8, 6
  %.lobit = and i8 %10, 1
  %ant_path = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 116
  %11 = ptrtoint ptr %ant_path to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %.lobit, ptr %ant_path, align 8
  br label %if.end29

if.else13:                                        ; preds = %if.then
  %EEPROMBluetoothAntNum14 = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 35
  %12 = ptrtoint ptr %EEPROMBluetoothAntNum14 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %EEPROMBluetoothAntNum14, align 1
  %PackageType = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 19
  %13 = ptrtoint ptr %PackageType to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %PackageType, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %14)
  %cmp16 = icmp eq i8 %14, 1
  %ant_path19 = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 116
  br i1 %cmp16, label %if.then18, label %if.else20

if.then18:                                        ; preds = %if.else13
  call void @__sanitizer_cov_trace_pc() #16
  %15 = ptrtoint ptr %ant_path19 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %ant_path19, align 8
  br label %if.end29

if.else20:                                        ; preds = %if.else13
  call void @__sanitizer_cov_trace_pc() #16
  %16 = ptrtoint ptr %ant_path19 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %ant_path19, align 8
  br label %if.end29

if.else24:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %EEPROMBluetoothCoexist25 = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 33
  %17 = ptrtoint ptr %EEPROMBluetoothCoexist25 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %EEPROMBluetoothCoexist25, align 1
  %EEPROMBluetoothType26 = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 34
  %18 = ptrtoint ptr %EEPROMBluetoothType26 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 8, ptr %EEPROMBluetoothType26, align 4
  %EEPROMBluetoothAntNum27 = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 35
  %19 = ptrtoint ptr %EEPROMBluetoothAntNum27 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 1, ptr %EEPROMBluetoothAntNum27, align 1
  %ant_path28 = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 116
  %20 = ptrtoint ptr %ant_path28 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %ant_path28, align 8
  br label %if.end29

if.end29:                                         ; preds = %if.else24, %if.else20, %if.then18, %if.then5
  %ant_num = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 14, i32 50
  %21 = ptrtoint ptr %ant_num to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %ant_num, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %cmp31 = icmp sgt i8 %22, 0
  br i1 %cmp31, label %if.then33, label %if.end29.if.end40_crit_edge

if.end29.if.end40_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end40

if.then33:                                        ; preds = %if.end29
  %23 = zext i8 %22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.22)
  switch i8 %22, label %if.then33.if.end40_crit_edge [
    i8 1, label %if.then33.if.end40.sink.split_crit_edge
    i8 2, label %sw.bb38
  ]

if.then33.if.end40.sink.split_crit_edge:          ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end40.sink.split

if.then33.if.end40_crit_edge:                     ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end40

sw.bb38:                                          ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end40.sink.split

if.end40.sink.split:                              ; preds = %sw.bb38, %if.then33.if.end40.sink.split_crit_edge
  %.sink = phi i8 [ 0, %sw.bb38 ], [ %22, %if.then33.if.end40.sink.split_crit_edge ]
  %EEPROMBluetoothAntNum37 = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 35
  %24 = ptrtoint ptr %EEPROMBluetoothAntNum37 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %.sink, ptr %EEPROMBluetoothAntNum37, align 1
  br label %if.end40

if.end40:                                         ; preds = %if.end40.sink.split, %if.then33.if.end40_crit_edge, %if.end29.if.end40_crit_edge
  %EEPROMBluetoothCoexist41 = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 33
  %25 = ptrtoint ptr %EEPROMBluetoothCoexist41 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %EEPROMBluetoothCoexist41, align 1
  tail call void @hal_btcoex_SetBTCoexist(ptr noundef %padapter, i8 noundef zeroext %26) #14
  %EEPROMBluetoothType42 = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 34
  %27 = ptrtoint ptr %EEPROMBluetoothType42 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %EEPROMBluetoothType42, align 4
  tail call void @hal_btcoex_SetChipType(ptr noundef %padapter, i8 noundef zeroext %28) #14
  %EEPROMBluetoothAntNum43 = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 35
  %29 = ptrtoint ptr %EEPROMBluetoothAntNum43 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %EEPROMBluetoothAntNum43, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %cmp45 = icmp eq i8 %30, 0
  %conv48 = select i1 %cmp45, i8 2, i8 1
  tail call void @hal_btcoex_SetPgAntNum(ptr noundef %padapter, i8 noundef zeroext %conv48) #14
  %31 = ptrtoint ptr %EEPROMBluetoothAntNum43 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %EEPROMBluetoothAntNum43, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %32)
  %cmp51 = icmp eq i8 %32, 1
  br i1 %cmp51, label %if.then53, label %if.end40.if.end55_crit_edge

if.end40.if.end55_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end55

if.then53:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #16
  %ant_path54 = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 116
  %33 = ptrtoint ptr %ant_path54 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %ant_path54, align 8
  tail call void @hal_btcoex_SetSingleAntPath(ptr noundef %padapter, i8 noundef zeroext %34) #14
  br label %if.end55

if.end55:                                         ; preds = %if.then53, %if.end40.if.end55_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hal_btcoex_SetBTCoexist(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @hal_btcoex_SetChipType(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @hal_btcoex_SetPgAntNum(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @hal_btcoex_SetSingleAntPath(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @Hal_EfuseParseEEPROMVer_8723B(ptr nocapture noundef readonly %padapter, ptr nocapture noundef readonly %hwinfo, i1 noundef zeroext %AutoLoadFail) local_unnamed_addr #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %HalData = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 18
  %0 = ptrtoint ptr %HalData to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %HalData, align 8
  br i1 %AutoLoadFail, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx = getelementptr i8, ptr %hwinfo, i32 196
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %.sink = phi i8 [ %3, %if.then ], [ 1, %entry.if.end_crit_edge ]
  %4 = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 30
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %.sink, ptr %4, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @Hal_EfuseParsePackageType_8723B(ptr noundef %padapter, ptr nocapture noundef readnone %hwinfo, i1 noundef zeroext %AutoLoadFail) local_unnamed_addr #0 align 64 {
entry:
  %efuseContent = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %HalData = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 18
  %0 = ptrtoint ptr %HalData to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %HalData, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %efuseContent) #14
  %2 = ptrtoint ptr %efuseContent to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %efuseContent, align 1, !annotation !49
  tail call void @Efuse_PowerSwitch(ptr noundef %padapter, i8 noundef zeroext 0, i8 noundef zeroext 1) #14
  %call = call zeroext i8 @efuse_OneByteRead(ptr noundef %padapter, i16 noundef zeroext 507, ptr noundef nonnull %efuseContent, i1 noundef zeroext false) #14
  call void @Efuse_PowerSwitch(ptr noundef %padapter, i8 noundef zeroext 0, i8 noundef zeroext 0) #14
  %3 = ptrtoint ptr %efuseContent to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %efuseContent, align 1
  %5 = and i8 %4, 7
  %conv2 = zext i8 %5 to i32
  %switch.tableidx = add nsw i32 %conv2, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %switch.tableidx)
  %6 = icmp ult i32 %switch.tableidx, 4
  %switch.shiftamt = shl nsw i32 %switch.tableidx, 3
  %switch.downshift = lshr i32 50397700, %switch.shiftamt
  %switch.masked = trunc i32 %switch.downshift to i8
  %.sink = select i1 %6, i8 %switch.masked, i8 0
  %PackageType9 = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 19
  %7 = ptrtoint ptr %PackageType9 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %.sink, ptr %PackageType9, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %efuseContent) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @Efuse_PowerSwitch(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @efuse_OneByteRead(ptr noundef, i16 noundef zeroext, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @Hal_EfuseParseVoltage_8723B(ptr nocapture noundef writeonly %padapter, ptr nocapture noundef readonly %hwinfo, i1 noundef zeroext %AutoLoadFail) local_unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr i8, ptr %hwinfo, i32 8
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  %2 = lshr i8 %1, 4
  %adjuseVoltageVal = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 15, i32 8
  %3 = ptrtoint ptr %adjuseVoltageVal to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %2, ptr %adjuseVoltageVal, align 2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @Hal_EfuseParseChnlPlan_8723B(ptr noundef %padapter, ptr noundef readonly %hwinfo, i1 noundef zeroext %AutoLoadFail) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %hwinfo, null
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx = getelementptr i8, ptr %hwinfo, i32 184
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi i8 [ %1, %cond.true ], [ -1, %entry.cond.end_crit_edge ]
  %channel_plan = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 14, i32 49
  %2 = ptrtoint ptr %channel_plan to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %channel_plan, align 2
  %call = tail call zeroext i8 @hal_com_config_channel_plan(ptr noundef %padapter, i8 noundef zeroext %cond, i8 noundef zeroext %3, i8 noundef zeroext 32, i1 noundef zeroext %AutoLoadFail) #14
  %ChannelPlan = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 37
  %4 = ptrtoint ptr %ChannelPlan to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %call, ptr %ChannelPlan, align 1
  %conv5 = zext i8 %call to i16
  tail call void @Hal_ChannelPlanToRegulation(ptr noundef %padapter, i16 noundef zeroext %conv5) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @hal_com_config_channel_plan(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @Hal_ChannelPlanToRegulation(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @Hal_EfuseParseCustomerID_8723B(ptr nocapture noundef readonly %padapter, ptr nocapture noundef readonly %hwinfo, i1 noundef zeroext %AutoLoadFail) local_unnamed_addr #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %HalData = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 18
  %0 = ptrtoint ptr %HalData to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %HalData, align 8
  br i1 %AutoLoadFail, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx = getelementptr i8, ptr %hwinfo, i32 197
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %.sink = phi i8 [ %3, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %4 = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 28
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %.sink, ptr %4, align 2
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @Hal_EfuseParseAntennaDiversity_8723B(ptr nocapture noundef %padapter, ptr nocapture noundef %hwinfo, i1 noundef zeroext %AutoLoadFail) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @Hal_EfuseParseXtal_8723B(ptr nocapture noundef readonly %padapter, ptr nocapture noundef readonly %hwinfo, i1 noundef zeroext %AutoLoadFail) local_unnamed_addr #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %HalData = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 18
  %0 = ptrtoint ptr %HalData to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %HalData, align 8
  br i1 %AutoLoadFail, label %entry.if.end6_crit_edge, label %if.then

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end6

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx = getelementptr i8, ptr %hwinfo, i32 185
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %3)
  %cmp = icmp eq i8 %3, -1
  %spec.store.select = select i1 %cmp, i8 32, i8 %3
  br label %if.end6

if.end6:                                          ; preds = %if.then, %entry.if.end6_crit_edge
  %spec.store.select.sink = phi i8 [ %spec.store.select, %if.then ], [ 32, %entry.if.end6_crit_edge ]
  %4 = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 75
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %spec.store.select.sink, ptr %4, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @Hal_EfuseParseThermalMeter_8723B(ptr nocapture noundef readonly %padapter, ptr nocapture noundef readonly %PROMContent, i8 noundef zeroext %AutoLoadFail) local_unnamed_addr #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %HalData = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 18
  %0 = ptrtoint ptr %HalData to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %HalData, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %AutoLoadFail)
  %tobool.not = icmp eq i8 %AutoLoadFail, 0
  br i1 %tobool.not, label %if.end, label %entry.if.then6_crit_edge

entry.if.then6_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then6

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr i8, ptr %PROMContent, i32 186
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %EEPROMThermalMeter = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 32
  %4 = ptrtoint ptr %EEPROMThermalMeter to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %3, ptr %EEPROMThermalMeter, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %3)
  %cmp.not = icmp eq i8 %3, -1
  br i1 %cmp.not, label %if.end.if.then6_crit_edge, label %if.end.if.end8_crit_edge

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end8

if.end.if.then6_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then6

if.then6:                                         ; preds = %if.end.if.then6_crit_edge, %entry.if.then6_crit_edge
  %EEPROMThermalMeter217 = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 32
  %bAPKThermalMeterIgnore = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 39
  %5 = ptrtoint ptr %bAPKThermalMeterIgnore to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %bAPKThermalMeterIgnore, align 1
  %6 = ptrtoint ptr %EEPROMThermalMeter217 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 24, ptr %EEPROMThermalMeter217, align 2
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.end.if.end8_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @Hal_ReadRFGainOffset(ptr noundef %Adapter, ptr nocapture noundef readonly %PROMContent, i1 noundef zeroext %AutoloadFail) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %AutoloadFail, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx = getelementptr i8, ptr %PROMContent, i32 193
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  %EEPROMRFGainOffset = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 15, i32 9
  %2 = ptrtoint ptr %EEPROMRFGainOffset to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %1, ptr %EEPROMRFGainOffset, align 1
  %call = tail call zeroext i8 @EFUSE_Read1Byte(ptr noundef %Adapter, i16 noundef zeroext 502) #14
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %EEPROMRFGainOffset3 = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 15, i32 9
  %3 = ptrtoint ptr %EEPROMRFGainOffset3 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %EEPROMRFGainOffset3, align 1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %call.sink = phi i8 [ -1, %if.else ], [ %call, %if.then ]
  %4 = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 15, i32 10
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %call.sink, ptr %4, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @EFUSE_Read1Byte(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i8 @BWMapping_8723B(ptr nocapture noundef readonly %Adapter, ptr nocapture noundef readonly %pattrib) local_unnamed_addr #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %HalData = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 18
  %0 = ptrtoint ptr %HalData to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %HalData, align 8
  %CurrentChannelBW = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %CurrentChannelBW to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %CurrentChannelBW, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp eq i32 %3, 1
  br i1 %cmp, label %if.then, label %entry.if.end5_crit_edge

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end5

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %bwmode = getelementptr inbounds %struct.pkt_attrib, ptr %pattrib, i32 0, i32 28
  %4 = ptrtoint ptr %bwmode to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %bwmode, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %5)
  %cmp1 = icmp eq i8 %5, 1
  %. = zext i1 %cmp1 to i8
  br label %if.end5

if.end5:                                          ; preds = %if.then, %entry.if.end5_crit_edge
  %BWSettingOfDesc.0 = phi i8 [ %., %if.then ], [ 0, %entry.if.end5_crit_edge ]
  ret i8 %BWSettingOfDesc.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i8 @SCMapping_8723B(ptr nocapture noundef readonly %Adapter, ptr nocapture noundef readonly %pattrib) local_unnamed_addr #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %HalData = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 18
  %0 = ptrtoint ptr %HalData to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %HalData, align 8
  %CurrentChannelBW = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %CurrentChannelBW to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %CurrentChannelBW, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp eq i32 %3, 1
  br i1 %cmp, label %if.then, label %entry.if.end24_crit_edge

entry.if.end24_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end24

if.then:                                          ; preds = %entry
  %bwmode = getelementptr inbounds %struct.pkt_attrib, ptr %pattrib, i32 0, i32 28
  %4 = ptrtoint ptr %bwmode to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %bwmode, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cond = icmp eq i8 %5, 0
  br i1 %cond, label %if.then8, label %if.then.if.end24_crit_edge

if.then.if.end24_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end24

if.then8:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %nCur40MhzPrimeSC = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 12
  %6 = ptrtoint ptr %nCur40MhzPrimeSC to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %nCur40MhzPrimeSC, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %7)
  %switch.selectcmp = icmp eq i8 %7, 1
  %switch.select = select i1 %switch.selectcmp, i8 2, i8 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %7)
  %switch.selectcmp28 = icmp eq i8 %7, 2
  %switch.select29 = select i1 %switch.selectcmp28, i8 1, i8 %switch.select
  br label %if.end24

if.end24:                                         ; preds = %if.then8, %if.then.if.end24_crit_edge, %entry.if.end24_crit_edge
  %SCSettingOfDesc.0 = phi i8 [ 0, %if.then.if.end24_crit_edge ], [ 0, %entry.if.end24_crit_edge ], [ %switch.select29, %if.then8 ]
  ret i8 %SCSettingOfDesc.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl8723b_update_txdesc(ptr noundef readonly %pxmitframe, ptr noundef %pbuf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %pbuf, i32 0, i32 40)
  %padapter1.i = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 4
  %1 = ptrtoint ptr %padapter1.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %padapter1.i, align 4
  %HalData.i = getelementptr inbounds %struct.adapter, ptr %2, i32 0, i32 18
  %3 = ptrtoint ptr %HalData.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %HalData.i, align 8
  %ra.i = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 23
  %5 = ptrtoint ptr %ra.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %ra.i, align 1
  %7 = and i8 %6, 1
  %frame_tag.i = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 3
  %8 = ptrtoint ptr %frame_tag.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %frame_tag.i, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.23)
  switch i32 %9, label %if.else263.i [
    i32 1, label %if.then.i
    i32 3, label %if.then184.i
  ]

if.then.i:                                        ; preds = %entry
  %mac_id.i = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 18
  %11 = ptrtoint ptr %mac_id.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %mac_id.i, align 4
  %13 = ptrtoint ptr %pbuf to i32
  call void @__asan_loadN_noabort(i32 %13, i32 40)
  %bf.load.i = load i320, ptr %pbuf, align 4
  %14 = and i8 %12, 127
  %bf.value.i = zext i8 %14 to i320
  %bf.shl.i = shl nuw nsw i320 %bf.value.i, 281
  %bf.clear.i = and i320 %bf.load.i, -493437898625335184013543324333173802287171337119243438397960352073681688442122958536705
  %bf.set.i = or i320 %bf.shl.i, %bf.clear.i
  store i320 %bf.set.i, ptr %pbuf, align 4
  %raid.i = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 27
  %15 = ptrtoint ptr %raid.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %raid.i, align 1
  %17 = and i8 %16, 31
  %bf.value4.i = zext i8 %17 to i320
  %bf.shl5.i = shl nuw nsw i320 %bf.value4.i, 267
  %bf.clear6.i = and i320 %bf.set.i, -7351408161498730615051674696231577893788404786452188129737083093494388774580256769
  %bf.set7.i = or i320 %bf.shl5.i, %bf.clear6.i
  store i320 %bf.set7.i, ptr %pbuf, align 4
  %qsel.i = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 36
  %18 = ptrtoint ptr %qsel.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %qsel.i, align 2
  %20 = and i8 %19, 31
  %bf.value11.i = zext i8 %20 to i320
  %bf.shl12.i = shl nuw nsw i320 %bf.value11.i, 275
  %bf.clear13.i = and i320 %bf.set7.i, -1881960489343675037453228722235283940809831625331760161212693271934563526292545732609
  %bf.set14.i = or i320 %bf.clear13.i, %bf.shl12.i
  store i320 %bf.set14.i, ptr %pbuf, align 4
  %seqnum.i = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 5
  %21 = ptrtoint ptr %seqnum.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %seqnum.i, align 2
  %23 = and i16 %22, 4095
  %bf.value18.i = zext i16 %23 to i320
  %bf.shl19.i = shl nuw nsw i320 %bf.value18.i, 8
  %bf.clear20.i = and i320 %bf.set14.i, -1048321
  %bf.set21.i = or i320 %bf.clear20.i, %bf.shl19.i
  store i320 %bf.set21.i, ptr %pbuf, align 4
  %encrypt.i.i = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 11
  %24 = ptrtoint ptr %encrypt.i.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %encrypt.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %cmp.not.i.i = icmp eq i8 %25, 0
  br i1 %cmp.not.i.i, label %if.then.i.fill_txdesc_sectype.exit.i_crit_edge, label %land.lhs.true.i.i

if.then.i.fill_txdesc_sectype.exit.i_crit_edge:   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %fill_txdesc_sectype.exit.i

land.lhs.true.i.i:                                ; preds = %if.then.i
  %bswenc.i.i = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 2
  %26 = ptrtoint ptr %bswenc.i.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %bswenc.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool.not.i.i = icmp eq i8 %27, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %land.lhs.true.i.i.fill_txdesc_sectype.exit.i_crit_edge

land.lhs.true.i.i.fill_txdesc_sectype.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %fill_txdesc_sectype.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  %switch.tableidx = add i8 %25, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %switch.tableidx)
  %28 = icmp ult i8 %switch.tableidx, 5
  br i1 %28, label %switch.lookup, label %if.then.i.i.fill_txdesc_sectype.exit.i_crit_edge

if.then.i.i.fill_txdesc_sectype.exit.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %fill_txdesc_sectype.exit.i

switch.lookup:                                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %29 = sext i8 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [5 x i8], ptr @switch.table.rtl8723b_update_txdesc, i32 0, i32 %29
  %30 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load1_noabort(i32 %30)
  %switch.load = load i8, ptr %switch.gep, align 1
  br label %fill_txdesc_sectype.exit.i

fill_txdesc_sectype.exit.i:                       ; preds = %switch.lookup, %if.then.i.i.fill_txdesc_sectype.exit.i_crit_edge, %land.lhs.true.i.i.fill_txdesc_sectype.exit.i_crit_edge, %if.then.i.fill_txdesc_sectype.exit.i_crit_edge
  %sectype.0.i.i = phi i8 [ 0, %land.lhs.true.i.i.fill_txdesc_sectype.exit.i_crit_edge ], [ 0, %if.then.i.i.fill_txdesc_sectype.exit.i_crit_edge ], [ 0, %if.then.i.fill_txdesc_sectype.exit.i_crit_edge ], [ %switch.load, %switch.lookup ]
  %bf.value26.i = zext i8 %sectype.0.i.i to i320
  %bf.shl27.i = shl nuw nsw i320 %bf.value26.i, 264
  %bf.clear28.i = and i320 %bf.set21.i, -88928324534258838085302516486672313231311348223211953182303424518077283563470849
  %bf.set29.i = or i320 %bf.shl27.i, %bf.clear28.i
  %31 = ptrtoint ptr %pbuf to i32
  call void @__asan_storeN_noabort(i32 %31, i32 40)
  store i320 %bf.set29.i, ptr %pbuf, align 4
  %vcs_mode.i.i = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 19
  %32 = ptrtoint ptr %vcs_mode.i.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %vcs_mode.i.i, align 1
  %34 = zext i8 %33 to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values.24)
  switch i8 %33, label %fill_txdesc_sectype.exit.i.sw.epilog.i.i_crit_edge [
    i8 0, label %fill_txdesc_sectype.exit.i.fill_txdesc_vcs_8723b.exit.i_crit_edge
    i8 1, label %fill_txdesc_sectype.exit.i.sw.epilog.sink.split.i.i_crit_edge
    i8 2, label %sw.bb5.i.i
  ]

fill_txdesc_sectype.exit.i.sw.epilog.sink.split.i.i_crit_edge: ; preds = %fill_txdesc_sectype.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog.sink.split.i.i

fill_txdesc_sectype.exit.i.fill_txdesc_vcs_8723b.exit.i_crit_edge: ; preds = %fill_txdesc_sectype.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %fill_txdesc_vcs_8723b.exit.i

fill_txdesc_sectype.exit.i.sw.epilog.i.i_crit_edge: ; preds = %fill_txdesc_sectype.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog.i.i

sw.bb5.i.i:                                       ; preds = %fill_txdesc_sectype.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog.sink.split.i.i

sw.epilog.sink.split.i.i:                         ; preds = %sw.bb5.i.i, %fill_txdesc_sectype.exit.i.sw.epilog.sink.split.i.i_crit_edge
  %.sink.i.i = phi i320 [ 6582018229284824168619876730229402019930943462534319453394436096, %sw.bb5.i.i ], [ 4936513671963618126464907547672051514948207596900739590045827072, %fill_txdesc_sectype.exit.i.sw.epilog.sink.split.i.i_crit_edge ]
  %bf.set8.i.i = or i320 %.sink.i.i, %bf.set29.i
  %35 = ptrtoint ptr %pbuf to i32
  call void @__asan_storeN_noabort(i32 %35, i32 40)
  store i320 %bf.set8.i.i, ptr %pbuf, align 4
  br label %sw.epilog.i.i

sw.epilog.i.i:                                    ; preds = %sw.epilog.sink.split.i.i, %fill_txdesc_sectype.exit.i.sw.epilog.i.i_crit_edge
  %36 = ptrtoint ptr %pbuf to i32
  call void @__asan_loadN_noabort(i32 %36, i32 40)
  %bf.load10.i.i = load i320, ptr %pbuf, align 4
  %bf.clear11.i.i = and i320 %bf.load10.i.i, -718719737186943466279189682815221068010158634794221569
  %bf.set15.i.i = or i320 %bf.clear11.i.i, 718450820885674580142240204806001271934541943206313984
  store i320 %bf.set15.i.i, ptr %pbuf, align 4
  %preamble_mode.i.i = getelementptr inbounds %struct.adapter, ptr %2, i32 0, i32 5, i32 18, i32 16
  %37 = ptrtoint ptr %preamble_mode.i.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %preamble_mode.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %38)
  %cmp.i.i = icmp eq i8 %38, 3
  br i1 %cmp.i.i, label %if.then18.i.i, label %sw.epilog.i.i.if.end.i.i_crit_edge

sw.epilog.i.i.if.end.i.i_crit_edge:               ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i.i

if.then18.i.i:                                    ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %bf.set21.i.i = or i320 %bf.clear11.i.i, 718450821064080541730485189938287018115728835254157312
  %39 = ptrtoint ptr %pbuf to i32
  call void @__asan_storeN_noabort(i32 %39, i32 40)
  store i320 %bf.set21.i.i, ptr %pbuf, align 4
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then18.i.i, %sw.epilog.i.i.if.end.i.i_crit_edge
  %ht_en.i.i = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 26
  %40 = ptrtoint ptr %ht_en.i.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %ht_en.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool22.not.i.i = icmp eq i8 %41, 0
  br i1 %tobool22.not.i.i, label %if.end.i.i.fill_txdesc_vcs_8723b.exit.i_crit_edge, label %if.then23.i.i

if.end.i.i.fill_txdesc_vcs_8723b.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %fill_txdesc_vcs_8723b.exit.i

if.then23.i.i:                                    ; preds = %if.end.i.i
  %42 = ptrtoint ptr %HalData.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %HalData.i, align 8
  %CurrentChannelBW.i.i.i = getelementptr inbounds %struct.hal_com_data, ptr %43, i32 0, i32 9
  %44 = ptrtoint ptr %CurrentChannelBW.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %CurrentChannelBW.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %45)
  %cmp.i.i.i = icmp eq i32 %45, 1
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %if.then23.i.i.SCMapping_8723B.exit.i.i_crit_edge

if.then23.i.i.SCMapping_8723B.exit.i.i_crit_edge: ; preds = %if.then23.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %SCMapping_8723B.exit.i.i

if.then.i.i.i:                                    ; preds = %if.then23.i.i
  %bwmode.i.i.i = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 28
  %46 = ptrtoint ptr %bwmode.i.i.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %bwmode.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %cond.i.i.i = icmp eq i8 %47, 0
  br i1 %cond.i.i.i, label %if.then8.i.i.i, label %if.then.i.i.i.SCMapping_8723B.exit.i.i_crit_edge

if.then.i.i.i.SCMapping_8723B.exit.i.i_crit_edge: ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %SCMapping_8723B.exit.i.i

if.then8.i.i.i:                                   ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %nCur40MhzPrimeSC.i.i.i = getelementptr inbounds %struct.hal_com_data, ptr %43, i32 0, i32 12
  %48 = ptrtoint ptr %nCur40MhzPrimeSC.i.i.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %nCur40MhzPrimeSC.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %49)
  %switch.selectcmp.i.i.i = icmp eq i8 %49, 1
  %switch.select.i.i.i = select i1 %switch.selectcmp.i.i.i, i8 2, i8 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %49)
  %switch.selectcmp28.i.i.i = icmp eq i8 %49, 2
  %switch.select29.i.i.i = select i1 %switch.selectcmp28.i.i.i, i8 1, i8 %switch.select.i.i.i
  br label %SCMapping_8723B.exit.i.i

SCMapping_8723B.exit.i.i:                         ; preds = %if.then8.i.i.i, %if.then.i.i.i.SCMapping_8723B.exit.i.i_crit_edge, %if.then23.i.i.SCMapping_8723B.exit.i.i_crit_edge
  %SCSettingOfDesc.0.i.i.i = phi i8 [ 0, %if.then.i.i.i.SCMapping_8723B.exit.i.i_crit_edge ], [ 0, %if.then23.i.i.SCMapping_8723B.exit.i.i_crit_edge ], [ %switch.select29.i.i.i, %if.then8.i.i.i ]
  %50 = ptrtoint ptr %pbuf to i32
  call void @__asan_loadN_noabort(i32 %50, i32 40)
  %bf.load25.i.i = load i320, ptr %pbuf, align 4
  %bf.value.i.i = zext i8 %SCSettingOfDesc.0.i.i.i to i320
  %bf.shl.i.i = shl nuw nsw i320 %bf.value.i.i, 143
  %bf.clear26.i.i = and i320 %bf.load25.i.i, -167255588988979673561517887044862711294853121
  %bf.set27.i.i = or i320 %bf.clear26.i.i, %bf.shl.i.i
  store i320 %bf.set27.i.i, ptr %pbuf, align 4
  br label %fill_txdesc_vcs_8723b.exit.i

fill_txdesc_vcs_8723b.exit.i:                     ; preds = %SCMapping_8723B.exit.i.i, %if.end.i.i.fill_txdesc_vcs_8723b.exit.i_crit_edge, %fill_txdesc_sectype.exit.i.fill_txdesc_vcs_8723b.exit.i_crit_edge
  %icmp_pkt.i = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 50
  %51 = ptrtoint ptr %icmp_pkt.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %icmp_pkt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %52)
  %cmp32.i = icmp eq i8 %52, 1
  br i1 %cmp32.i, label %land.lhs.true.i, label %fill_txdesc_vcs_8723b.exit.i.if.end.i_crit_edge

fill_txdesc_vcs_8723b.exit.i.if.end.i_crit_edge:  ; preds = %fill_txdesc_vcs_8723b.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %fill_txdesc_vcs_8723b.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  %wifi_spec.i = getelementptr inbounds %struct.adapter, ptr %2, i32 0, i32 14, i32 48
  %53 = ptrtoint ptr %wifi_spec.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %wifi_spec.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %54)
  %cmp35.i = icmp eq i8 %54, 1
  br label %if.end.i

if.end.i:                                         ; preds = %land.lhs.true.i, %fill_txdesc_vcs_8723b.exit.i.if.end.i_crit_edge
  %cmp57.not.i = phi i1 [ false, %fill_txdesc_vcs_8723b.exit.i.if.end.i_crit_edge ], [ %cmp35.i, %land.lhs.true.i ]
  %ether_type.i = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 4
  %55 = ptrtoint ptr %ether_type.i to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %ether_type.i, align 4
  %57 = zext i16 %56 to i64
  call void @__sanitizer_cov_trace_switch(i64 %57, ptr @__sancov_gen_cov_switch_values.25)
  switch i16 %56, label %land.lhs.true51.i [
    i16 -30578, label %if.end.i.if.else149.i_crit_edge
    i16 2054, label %if.end.i.if.else149.i_crit_edge2
    i16 -30540, label %if.end.i.if.else149.i_crit_edge3
  ]

if.end.i.if.else149.i_crit_edge3:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else149.i

if.end.i.if.else149.i_crit_edge2:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else149.i

if.end.i.if.else149.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else149.i

land.lhs.true51.i:                                ; preds = %if.end.i
  %dhcp_pkt.i = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 3
  %58 = ptrtoint ptr %dhcp_pkt.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %dhcp_pkt.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %59)
  %cmp53.not.i = icmp eq i8 %59, 1
  %brmerge.i = select i1 %cmp53.not.i, i1 true, i1 %cmp57.not.i
  br i1 %brmerge.i, label %land.lhs.true51.i.if.else149.i_crit_edge, label %if.then59.i

land.lhs.true51.i.if.else149.i_crit_edge:         ; preds = %land.lhs.true51.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else149.i

if.then59.i:                                      ; preds = %land.lhs.true51.i
  %ampdu_en.i = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 31
  %60 = ptrtoint ptr %ampdu_en.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %ampdu_en.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %61)
  %tobool.not.i = icmp eq i8 %61, 0
  %62 = ptrtoint ptr %pbuf to i32
  call void @__asan_loadN_noabort(i32 %62, i32 40)
  %bf.load74.i = load i320, ptr %pbuf, align 4
  br i1 %tobool.not.i, label %if.else.i, label %if.then60.i

if.then60.i:                                      ; preds = %if.then59.i
  call void @__sanitizer_cov_trace_pc() #16
  %bf.set66.i = or i320 %bf.load74.i, 14134776518426334954154494800110551426070175337717704836201915921918328832
  %63 = ptrtoint ptr %pbuf to i32
  call void @__asan_storeN_noabort(i32 %63, i32 40)
  store i320 %bf.set66.i, ptr %pbuf, align 4
  %ampdu_spacing.i = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 32
  %64 = ptrtoint ptr %ampdu_spacing.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %ampdu_spacing.i, align 2
  %66 = and i8 %65, 7
  %bf.value69.i = zext i8 %66 to i320
  %bf.shl70.i = shl nuw nsw i320 %bf.value69.i, 233
  %bf.clear71.i = and i320 %bf.set66.i, -96624448855067893024086582071878356334315525610385411772275339133190145
  %bf.set72.i = or i320 %bf.shl70.i, %bf.clear71.i
  br label %if.end77.i

if.else.i:                                        ; preds = %if.then59.i
  call void @__sanitizer_cov_trace_pc() #16
  %bf.set76.i = or i320 %bf.load74.i, 883423532389192164791648750371459257913741948437809479060803100646309888
  br label %if.end77.i

if.end77.i:                                       ; preds = %if.else.i, %if.then60.i
  %storemerge428.i = phi i320 [ %bf.set76.i, %if.else.i ], [ %bf.set72.i, %if.then60.i ]
  %67 = ptrtoint ptr %pbuf to i32
  call void @__asan_storeN_noabort(i32 %67, i32 40)
  store i320 %storemerge428.i, ptr %pbuf, align 4
  %ht_en.i429.i = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 26
  %68 = ptrtoint ptr %ht_en.i429.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %ht_en.i429.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %69)
  %tobool.not.i430.i = icmp eq i8 %69, 0
  br i1 %tobool.not.i430.i, label %if.end77.i.fill_txdesc_phy_8723b.exit.i_crit_edge, label %if.then.i434.i

if.end77.i.fill_txdesc_phy_8723b.exit.i_crit_edge: ; preds = %if.end77.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %fill_txdesc_phy_8723b.exit.i

if.then.i434.i:                                   ; preds = %if.end77.i
  %70 = ptrtoint ptr %HalData.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %HalData.i, align 8
  %CurrentChannelBW.i.i432.i = getelementptr inbounds %struct.hal_com_data, ptr %71, i32 0, i32 9
  %72 = ptrtoint ptr %CurrentChannelBW.i.i432.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %CurrentChannelBW.i.i432.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %73)
  %cmp.i.i433.i = icmp eq i32 %73, 1
  br i1 %cmp.i.i433.i, label %if.then.i.i436.i, label %if.then.i434.i.BWMapping_8723B.exit.i.i_crit_edge

if.then.i434.i.BWMapping_8723B.exit.i.i_crit_edge: ; preds = %if.then.i434.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %BWMapping_8723B.exit.i.i

if.then.i.i436.i:                                 ; preds = %if.then.i434.i
  call void @__sanitizer_cov_trace_pc() #16
  %bwmode.i.i435.i = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 28
  %74 = ptrtoint ptr %bwmode.i.i435.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %bwmode.i.i435.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %75)
  %cmp1.i.i.i = icmp eq i8 %75, 1
  %..i.i.i = zext i1 %cmp1.i.i.i to i8
  br label %BWMapping_8723B.exit.i.i

BWMapping_8723B.exit.i.i:                         ; preds = %if.then.i.i436.i, %if.then.i434.i.BWMapping_8723B.exit.i.i_crit_edge
  %BWSettingOfDesc.0.i.i.i = phi i8 [ %..i.i.i, %if.then.i.i436.i ], [ 0, %if.then.i434.i.BWMapping_8723B.exit.i.i_crit_edge ]
  %bf.value.i437.i = zext i8 %BWSettingOfDesc.0.i.i.i to i320
  %bf.shl.i438.i = shl nuw nsw i320 %bf.value.i437.i, 153
  %bf.clear.i.i = and i320 %storemerge428.i, -34253944624943037145398863266787883273185918977
  %bf.set.i.i = or i320 %bf.shl.i438.i, %bf.clear.i.i
  %76 = ptrtoint ptr %pbuf to i32
  call void @__asan_storeN_noabort(i32 %76, i32 40)
  store i320 %bf.set.i.i, ptr %pbuf, align 4
  %77 = ptrtoint ptr %HalData.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %HalData.i, align 8
  %CurrentChannelBW.i14.i.i = getelementptr inbounds %struct.hal_com_data, ptr %78, i32 0, i32 9
  %79 = ptrtoint ptr %CurrentChannelBW.i14.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %CurrentChannelBW.i14.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %80)
  %cmp.i15.i.i = icmp eq i32 %80, 1
  br i1 %cmp.i15.i.i, label %if.then.i17.i.i, label %BWMapping_8723B.exit.i.i.SCMapping_8723B.exit.i447.i_crit_edge

BWMapping_8723B.exit.i.i.SCMapping_8723B.exit.i447.i_crit_edge: ; preds = %BWMapping_8723B.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %SCMapping_8723B.exit.i447.i

if.then.i17.i.i:                                  ; preds = %BWMapping_8723B.exit.i.i
  %bwmode.i16.i.i = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 28
  %81 = ptrtoint ptr %bwmode.i16.i.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %bwmode.i16.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %82)
  %cond.i.i439.i = icmp eq i8 %82, 0
  br i1 %cond.i.i439.i, label %if.then8.i.i445.i, label %if.then.i17.i.i.SCMapping_8723B.exit.i447.i_crit_edge

if.then.i17.i.i.SCMapping_8723B.exit.i447.i_crit_edge: ; preds = %if.then.i17.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %SCMapping_8723B.exit.i447.i

if.then8.i.i445.i:                                ; preds = %if.then.i17.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %nCur40MhzPrimeSC.i.i440.i = getelementptr inbounds %struct.hal_com_data, ptr %78, i32 0, i32 12
  %83 = ptrtoint ptr %nCur40MhzPrimeSC.i.i440.i to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %nCur40MhzPrimeSC.i.i440.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %84)
  %switch.selectcmp.i.i441.i = icmp eq i8 %84, 1
  %switch.select.i.i442.i = select i1 %switch.selectcmp.i.i441.i, i8 2, i8 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %84)
  %switch.selectcmp28.i.i443.i = icmp eq i8 %84, 2
  %switch.select29.i.i444.i = select i1 %switch.selectcmp28.i.i443.i, i8 1, i8 %switch.select.i.i442.i
  br label %SCMapping_8723B.exit.i447.i

SCMapping_8723B.exit.i447.i:                      ; preds = %if.then8.i.i445.i, %if.then.i17.i.i.SCMapping_8723B.exit.i447.i_crit_edge, %BWMapping_8723B.exit.i.i.SCMapping_8723B.exit.i447.i_crit_edge
  %SCSettingOfDesc.0.i.i446.i = phi i8 [ 0, %if.then.i17.i.i.SCMapping_8723B.exit.i447.i_crit_edge ], [ 0, %BWMapping_8723B.exit.i.i.SCMapping_8723B.exit.i447.i_crit_edge ], [ %switch.select29.i.i444.i, %if.then8.i.i445.i ]
  %bf.value4.i.i = zext i8 %SCSettingOfDesc.0.i.i446.i to i320
  %bf.shl5.i.i = shl nuw nsw i320 %bf.value4.i.i, 156
  %bf.clear6.i.i = and i320 %bf.set.i.i, -1392993748081016843912887106182707253109560705025
  %bf.set7.i.i = or i320 %bf.shl5.i.i, %bf.clear6.i.i
  %85 = ptrtoint ptr %pbuf to i32
  call void @__asan_storeN_noabort(i32 %85, i32 40)
  store i320 %bf.set7.i.i, ptr %pbuf, align 4
  br label %fill_txdesc_phy_8723b.exit.i

fill_txdesc_phy_8723b.exit.i:                     ; preds = %SCMapping_8723B.exit.i447.i, %if.end77.i.fill_txdesc_phy_8723b.exit.i_crit_edge
  %86 = ptrtoint ptr %pbuf to i32
  call void @__asan_loadN_noabort(i32 %86, i32 40)
  %bf.load78.i = load i320, ptr %pbuf, align 4
  %bf.set80.i = or i320 %bf.load78.i, 23753680883421277304554378920829792346090456393845833728
  store i320 %bf.set80.i, ptr %pbuf, align 4
  %fw_ractrl.i = getelementptr inbounds %struct.hal_com_data, ptr %4, i32 0, i32 103
  %87 = ptrtoint ptr %fw_ractrl.i to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %fw_ractrl.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %88)
  %tobool81.not.i = icmp eq i8 %88, 0
  br i1 %tobool81.not.i, label %if.then82.i, label %fill_txdesc_phy_8723b.exit.i.if.end107.i_crit_edge

fill_txdesc_phy_8723b.exit.i.if.end107.i_crit_edge: ; preds = %fill_txdesc_phy_8723b.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end107.i

if.then82.i:                                      ; preds = %fill_txdesc_phy_8723b.exit.i
  %bf.set85.i = or i320 %bf.load78.i, 52656145858032274232380291146389595080277340046365012021001322496
  %89 = ptrtoint ptr %pbuf to i32
  call void @__asan_storeN_noabort(i32 %89, i32 40)
  store i320 %bf.set85.i, ptr %pbuf, align 4
  %90 = ptrtoint ptr %mac_id.i to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %mac_id.i, align 4
  %idxprom.i = zext i8 %91 to i32
  %arrayidx.i = getelementptr %struct.hal_com_data, ptr %4, i32 0, i32 140, i32 50, i32 %idxprom.i
  %92 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %93)
  %tobool88.not.i = icmp sgt i8 %93, -1
  br i1 %tobool88.not.i, label %if.then82.i.if.end93.i_crit_edge, label %if.then89.i

if.then82.i.if.end93.i_crit_edge:                 ; preds = %if.then82.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end93.i

if.then89.i:                                      ; preds = %if.then82.i
  call void @__sanitizer_cov_trace_pc() #16
  %bf.set92.i = or i320 %bf.load78.i, 52656145858032274278052217312980311274142491068748856385249214464
  %94 = ptrtoint ptr %pbuf to i32
  call void @__asan_storeN_noabort(i32 %94, i32 40)
  store i320 %bf.set92.i, ptr %pbuf, align 4
  br label %if.end93.i

if.end93.i:                                       ; preds = %if.then89.i, %if.then82.i.if.end93.i_crit_edge
  %95 = ptrtoint ptr %mac_id.i to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %mac_id.i, align 4
  %idxprom97.i = zext i8 %96 to i32
  %arrayidx98.i = getelementptr %struct.hal_com_data, ptr %4, i32 0, i32 140, i32 50, i32 %idxprom97.i
  %97 = ptrtoint ptr %arrayidx98.i to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %arrayidx98.i, align 1
  %99 = ptrtoint ptr %pbuf to i32
  call void @__asan_loadN_noabort(i32 %99, i32 40)
  %bf.load101.i = load i320, ptr %pbuf, align 4
  %100 = and i8 %98, 127
  %bf.value102.i = zext i8 %100 to i320
  %bf.shl103.i = shl nuw nsw i320 %bf.value102.i, 185
  %bf.clear104.i = and i320 %bf.load101.i, -6228061878078972320368322318338856522226555792554159243265
  %bf.set105.i = or i320 %bf.shl103.i, %bf.clear104.i
  store i320 %bf.set105.i, ptr %pbuf, align 4
  br label %if.end107.i

if.end107.i:                                      ; preds = %if.end93.i, %fill_txdesc_phy_8723b.exit.i.if.end107.i_crit_edge
  %fix_rate.i = getelementptr inbounds %struct.adapter, ptr %2, i32 0, i32 58
  %101 = ptrtoint ptr %fix_rate.i to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %fix_rate.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %102)
  %cmp109.not.i = icmp eq i8 %102, -1
  br i1 %cmp109.not.i, label %if.end107.i.if.end136.i_crit_edge, label %if.then111.i

if.end107.i.if.end136.i_crit_edge:                ; preds = %if.end107.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end136.i

if.then111.i:                                     ; preds = %if.end107.i
  %103 = ptrtoint ptr %pbuf to i32
  call void @__asan_loadN_noabort(i32 %103, i32 40)
  %bf.load112.i = load i320, ptr %pbuf, align 4
  %bf.set114.i = or i320 %bf.load112.i, 52656145834278593348959013841835216159447547700274555627155488768
  store i320 %bf.set114.i, ptr %pbuf, align 4
  %104 = ptrtoint ptr %fix_rate.i to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %fix_rate.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %105)
  %tobool118.not.i = icmp sgt i8 %105, -1
  br i1 %tobool118.not.i, label %if.then111.i.if.end123.i_crit_edge, label %if.then119.i

if.then111.i.if.end123.i_crit_edge:               ; preds = %if.then111.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end123.i

if.then119.i:                                     ; preds = %if.then111.i
  call void @__sanitizer_cov_trace_pc() #16
  %bf.set122.i = or i320 %bf.load112.i, 52656145834278593394630940008425932353312698722658399991403380736
  %106 = ptrtoint ptr %pbuf to i32
  call void @__asan_storeN_noabort(i32 %106, i32 40)
  store i320 %bf.set122.i, ptr %pbuf, align 4
  br label %if.end123.i

if.end123.i:                                      ; preds = %if.then119.i, %if.then111.i.if.end123.i_crit_edge
  %107 = ptrtoint ptr %fix_rate.i to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %fix_rate.i, align 1
  %109 = ptrtoint ptr %pbuf to i32
  call void @__asan_loadN_noabort(i32 %109, i32 40)
  %bf.load127.i = load i320, ptr %pbuf, align 4
  %110 = and i8 %108, 127
  %bf.value128.i = zext i8 %110 to i320
  %bf.shl129.i = shl nuw nsw i320 %bf.value128.i, 185
  %bf.clear130.i = and i320 %bf.load127.i, -13164042686631526416212073828781122378718409151624431460948115457
  %bf.set131.i = or i320 %bf.shl129.i, %bf.clear130.i
  %bf.set135.i = or i320 %bf.set131.i, 13164036458569648337239753460458804039861886925068638906788872192
  store i320 %bf.set135.i, ptr %pbuf, align 4
  br label %if.end136.i

if.end136.i:                                      ; preds = %if.end123.i, %if.end107.i.if.end136.i_crit_edge
  %ldpc.i = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 43
  %111 = ptrtoint ptr %ldpc.i to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %ldpc.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %112)
  %tobool137.not.i = icmp eq i8 %112, 0
  br i1 %tobool137.not.i, label %if.end136.i.if.end142.i_crit_edge, label %if.then138.i

if.end136.i.if.end142.i_crit_edge:                ; preds = %if.end136.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end142.i

if.then138.i:                                     ; preds = %if.end136.i
  call void @__sanitizer_cov_trace_pc() #16
  %113 = ptrtoint ptr %pbuf to i32
  call void @__asan_loadN_noabort(i32 %113, i32 40)
  %bf.load139.i = load i320, ptr %pbuf, align 4
  %bf.set141.i = or i320 %bf.load139.i, 5708990770823839524233143877797980545530986496
  store i320 %bf.set141.i, ptr %pbuf, align 4
  br label %if.end142.i

if.end142.i:                                      ; preds = %if.then138.i, %if.end136.i.if.end142.i_crit_edge
  %stbc.i = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 44
  %114 = ptrtoint ptr %stbc.i to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %stbc.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %115)
  %tobool143.not.i = icmp eq i8 %115, 0
  br i1 %tobool143.not.i, label %if.end142.i.if.end172.i_crit_edge, label %if.then144.i

if.end142.i.if.end172.i_crit_edge:                ; preds = %if.end142.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end172.i

if.then144.i:                                     ; preds = %if.end142.i
  call void @__sanitizer_cov_trace_pc() #16
  %116 = ptrtoint ptr %pbuf to i32
  call void @__asan_loadN_noabort(i32 %116, i32 40)
  %bf.load145.i = load i320, ptr %pbuf, align 4
  %bf.clear146.i = and i320 %bf.load145.i, -4281743078117879643174857908348485409148239873
  %bf.set147.i = or i320 %bf.clear146.i, 1427247692705959881058285969449495136382746624
  br label %if.end172.sink.split.i

if.else149.i:                                     ; preds = %land.lhs.true51.i.if.else149.i_crit_edge, %if.end.i.if.else149.i_crit_edge, %if.end.i.if.else149.i_crit_edge2, %if.end.i.if.else149.i_crit_edge3
  %117 = ptrtoint ptr %pbuf to i32
  call void @__asan_loadN_noabort(i32 %117, i32 40)
  %bf.load150.i = load i320, ptr %pbuf, align 4
  %bf.set155.i = or i320 %bf.load150.i, 883423585045337999070242099330473099748958107885357179335358727801798656
  store i320 %bf.set155.i, ptr %pbuf, align 4
  %preamble_mode.i = getelementptr inbounds %struct.adapter, ptr %2, i32 0, i32 5, i32 18, i32 16
  %118 = ptrtoint ptr %preamble_mode.i to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %preamble_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %119)
  %cmp157.i = icmp eq i8 %119, 3
  br i1 %cmp157.i, label %if.then159.i, label %if.else149.i.if.end163.i_crit_edge

if.else149.i.if.end163.i_crit_edge:               ; preds = %if.else149.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end163.i

if.then159.i:                                     ; preds = %if.else149.i
  call void @__sanitizer_cov_trace_pc() #16
  %bf.set162.i = or i320 %bf.load150.i, 883423585045337999070242145002399266339674301750508201719203092049690624
  %120 = ptrtoint ptr %pbuf to i32
  call void @__asan_storeN_noabort(i32 %120, i32 40)
  store i320 %bf.set162.i, ptr %pbuf, align 4
  br label %if.end163.i

if.end163.i:                                      ; preds = %if.then159.i, %if.else149.i.if.end163.i_crit_edge
  %tx_rate.i = getelementptr inbounds %struct.adapter, ptr %2, i32 0, i32 5, i32 25
  %121 = ptrtoint ptr %tx_rate.i to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %tx_rate.i, align 1
  %call164.i = tail call zeroext i8 @MRateToHwRate(i8 noundef zeroext %122) #14
  %123 = ptrtoint ptr %pbuf to i32
  call void @__asan_loadN_noabort(i32 %123, i32 40)
  %bf.load166.i = load i320, ptr %pbuf, align 4
  %124 = and i8 %call164.i, 127
  %bf.value167.i = zext i8 %124 to i320
  %bf.shl168.i = shl nuw nsw i320 %bf.value167.i, 185
  %bf.clear169.i = and i320 %bf.load166.i, -6228061878078972320368322318338856522226555792554159243265
  %bf.set170.i = or i320 %bf.shl168.i, %bf.clear169.i
  br label %if.end172.sink.split.i

if.end172.sink.split.i:                           ; preds = %if.end163.i, %if.then144.i
  %bf.set147.sink.i = phi i320 [ %bf.set147.i, %if.then144.i ], [ %bf.set170.i, %if.end163.i ]
  %125 = ptrtoint ptr %pbuf to i32
  call void @__asan_storeN_noabort(i32 %125, i32 40)
  store i320 %bf.set147.sink.i, ptr %pbuf, align 4
  br label %if.end172.i

if.end172.i:                                      ; preds = %if.end172.sink.split.i, %if.end142.i.if.end172.i_crit_edge
  %agg_num.i = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 8
  %126 = ptrtoint ptr %agg_num.i to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %agg_num.i, align 1
  %128 = zext i8 %127 to i320
  %129 = ptrtoint ptr %pbuf to i32
  call void @__asan_loadN_noabort(i32 %129, i32 40)
  %bf.load174.i = load i320, ptr %pbuf, align 4
  %bf.shl176.i = shl nuw nsw i320 %128, 64
  %bf.clear177.i = and i320 %bf.load174.i, -4703919738795935662081
  %bf.set178.i = or i320 %bf.clear177.i, %bf.shl176.i
  br label %if.end309.sink.split.i

if.then184.i:                                     ; preds = %entry
  %mac_id185.i = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 18
  %130 = ptrtoint ptr %mac_id185.i to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %mac_id185.i, align 4
  %132 = ptrtoint ptr %pbuf to i32
  call void @__asan_loadN_noabort(i32 %132, i32 40)
  %bf.load187.i = load i320, ptr %pbuf, align 4
  %133 = and i8 %131, 127
  %bf.value188.i = zext i8 %133 to i320
  %bf.shl189.i = shl nuw nsw i320 %bf.value188.i, 281
  %bf.clear190.i = and i320 %bf.load187.i, -493437898625335184013543324333173802287171337119243438397960352073681688442122958536705
  %bf.set191.i = or i320 %bf.shl189.i, %bf.clear190.i
  store i320 %bf.set191.i, ptr %pbuf, align 4
  %qsel193.i = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 36
  %134 = ptrtoint ptr %qsel193.i to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %qsel193.i, align 2
  %136 = and i8 %135, 31
  %bf.value196.i = zext i8 %136 to i320
  %bf.shl197.i = shl nuw nsw i320 %bf.value196.i, 275
  %bf.clear198.i = and i320 %bf.set191.i, -1881960489343675037453228722235283940809831625331760161212693271934563526292545732609
  %bf.set199.i = or i320 %bf.shl197.i, %bf.clear198.i
  store i320 %bf.set199.i, ptr %pbuf, align 4
  %raid201.i = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 27
  %137 = ptrtoint ptr %raid201.i to i32
  call void @__asan_load1_noabort(i32 %137)
  %138 = load i8, ptr %raid201.i, align 1
  %139 = and i8 %138, 31
  %bf.value204.i = zext i8 %139 to i320
  %bf.shl205.i = shl nuw nsw i320 %bf.value204.i, 267
  %bf.clear206.i = and i320 %bf.set199.i, -7351408161498730615051674696231577893788404786452188129737083093494388774580256769
  %bf.set207.i = or i320 %bf.clear206.i, %bf.shl205.i
  store i320 %bf.set207.i, ptr %pbuf, align 4
  %seqnum209.i = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 5
  %140 = ptrtoint ptr %seqnum209.i to i32
  call void @__asan_load2_noabort(i32 %140)
  %141 = load i16, ptr %seqnum209.i, align 2
  %142 = and i16 %141, 4095
  %bf.value212.i = zext i16 %142 to i320
  %bf.shl213.i = shl nuw nsw i320 %bf.value212.i, 8
  %bf.clear214.i = and i320 %bf.set207.i, -52656145834278593348959013841835216159447547700274555627156537089
  %bf.set215.i = or i320 %bf.clear214.i, %bf.shl213.i
  %bf.set219.i = or i320 %bf.set215.i, 52656145834278593348959013841835216159447547700274555627155488768
  store i320 %bf.set219.i, ptr %pbuf, align 4
  %mbssid.i = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 42
  %143 = ptrtoint ptr %mbssid.i to i32
  call void @__asan_load1_noabort(i32 %143)
  %144 = load i8, ptr %mbssid.i, align 4
  %145 = and i8 %144, 15
  %bf.value223.i = zext i8 %145 to i320
  %bf.shl224.i = shl nuw nsw i320 %bf.value223.i, 112
  %bf.clear225.i = and i320 %bf.set219.i, -23945242826029513489733625177245995422000243722420225
  %bf.set226.i = or i320 %bf.clear225.i, %bf.shl224.i
  %bf.set230.i = or i320 %bf.set226.i, 23945242826029513411849172299223580994042798784118784
  store i320 %bf.set230.i, ptr %pbuf, align 4
  %retry_ctrl.i = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 41
  %146 = ptrtoint ptr %retry_ctrl.i to i32
  call void @__asan_load1_noabort(i32 %146)
  %147 = load i8, ptr %retry_ctrl.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %147)
  %tobool231.not.i = icmp eq i8 %147, 0
  %bf.clear238.i = and i320 %bf.set230.i, -23571098406872802264789028982048212541010880053116929
  %..i = select i1 %tobool231.not.i, i320 4489733029880533764721719806104421436383024772022272, i320 2244866514940266882360859903052210718191512386011136
  %bf.set239.i = or i320 %bf.clear238.i, %..i
  %148 = ptrtoint ptr %pbuf to i32
  call void @__asan_storeN_noabort(i32 %148, i32 40)
  store i320 %bf.set239.i, ptr %pbuf, align 4
  %tx_rate241.i = getelementptr inbounds %struct.adapter, ptr %2, i32 0, i32 5, i32 25
  %149 = ptrtoint ptr %tx_rate241.i to i32
  call void @__asan_load1_noabort(i32 %149)
  %150 = load i8, ptr %tx_rate241.i, align 1
  %call242.i = tail call zeroext i8 @MRateToHwRate(i8 noundef zeroext %150) #14
  %151 = ptrtoint ptr %pbuf to i32
  call void @__asan_loadN_noabort(i32 %151, i32 40)
  %bf.load244.i = load i320, ptr %pbuf, align 4
  %152 = and i8 %call242.i, 127
  %bf.value245.i = zext i8 %152 to i320
  %bf.shl246.i = shl nuw nsw i320 %bf.value245.i, 185
  %bf.clear247.i = and i320 %bf.load244.i, -6228061878078972320368322318338856522226555792554159243265
  %bf.set248.i = or i320 %bf.shl246.i, %bf.clear247.i
  store i320 %bf.set248.i, ptr %pbuf, align 4
  %ack_report.i = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 9
  %153 = ptrtoint ptr %ack_report.i to i32
  call void @__asan_load1_noabort(i32 %153)
  %154 = load i8, ptr %ack_report.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %154)
  %tobool250.not.i = icmp eq i8 %154, 0
  br i1 %tobool250.not.i, label %if.then184.i.if.end309.i_crit_edge, label %if.then251.i

if.then184.i.if.end309.i_crit_edge:               ; preds = %if.then184.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end309.i

if.then251.i:                                     ; preds = %if.then184.i
  call void @__sanitizer_cov_trace_pc() #16
  %bf.set254.i = or i320 %bf.set248.i, 110427941548649020598956093796432407239217743554726184882600387580788736
  %155 = ptrtoint ptr %pbuf to i32
  call void @__asan_storeN_noabort(i32 %155, i32 40)
  store i320 %bf.set254.i, ptr %pbuf, align 4
  %dvobj.i = getelementptr inbounds %struct.adapter, ptr %2, i32 0, i32 3
  %156 = ptrtoint ptr %dvobj.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %dvobj.i, align 4
  %158 = ptrtoint ptr %157 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %157, align 8
  %seq_no.i = getelementptr inbounds %struct.adapter, ptr %159, i32 0, i32 9, i32 45
  %160 = ptrtoint ptr %seq_no.i to i32
  call void @__asan_load1_noabort(i32 %160)
  %161 = load i8, ptr %seq_no.i, align 4
  %162 = zext i8 %161 to i320
  %bf.shl258.i = shl nuw nsw i320 %162, 116
  %bf.clear259.i = and i320 %bf.set254.i, -340199290171201906221318119490500689921
  %bf.set260.i = or i320 %bf.shl258.i, %bf.clear259.i
  br label %if.end309.sink.split.i

if.else263.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %mac_id264.i = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 18
  %163 = ptrtoint ptr %mac_id264.i to i32
  call void @__asan_load1_noabort(i32 %163)
  %164 = load i8, ptr %mac_id264.i, align 4
  %165 = ptrtoint ptr %pbuf to i32
  call void @__asan_loadN_noabort(i32 %165, i32 40)
  %bf.load266.i = load i320, ptr %pbuf, align 4
  %166 = and i8 %164, 127
  %bf.value267.i = zext i8 %166 to i320
  %bf.shl268.i = shl nuw nsw i320 %bf.value267.i, 281
  %bf.clear269.i = and i320 %bf.load266.i, -493437898625335184013543324333173802287171337119243438397960352073681688442122958536705
  %bf.set270.i = or i320 %bf.shl268.i, %bf.clear269.i
  store i320 %bf.set270.i, ptr %pbuf, align 4
  %raid272.i = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 27
  %167 = ptrtoint ptr %raid272.i to i32
  call void @__asan_load1_noabort(i32 %167)
  %168 = load i8, ptr %raid272.i, align 1
  %169 = and i8 %168, 31
  %bf.value275.i = zext i8 %169 to i320
  %bf.shl276.i = shl nuw nsw i320 %bf.value275.i, 267
  %bf.clear277.i = and i320 %bf.set270.i, -7351408161498730615051674696231577893788404786452188129737083093494388774580256769
  %bf.set278.i = or i320 %bf.shl276.i, %bf.clear277.i
  store i320 %bf.set278.i, ptr %pbuf, align 4
  %qsel280.i = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 36
  %170 = ptrtoint ptr %qsel280.i to i32
  call void @__asan_load1_noabort(i32 %170)
  %171 = load i8, ptr %qsel280.i, align 2
  %172 = and i8 %171, 31
  %bf.value283.i = zext i8 %172 to i320
  %bf.shl284.i = shl nuw nsw i320 %bf.value283.i, 275
  %bf.clear285.i = and i320 %bf.set278.i, -1881960489343675037453228722235283940809831625331760161212693271934563526292545732609
  %bf.set286.i = or i320 %bf.clear285.i, %bf.shl284.i
  store i320 %bf.set286.i, ptr %pbuf, align 4
  %seqnum288.i = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 5
  %173 = ptrtoint ptr %seqnum288.i to i32
  call void @__asan_load2_noabort(i32 %173)
  %174 = load i16, ptr %seqnum288.i, align 2
  %175 = and i16 %174, 4095
  %bf.value291.i = zext i16 %175 to i320
  %bf.shl292.i = shl nuw nsw i320 %bf.value291.i, 8
  %bf.clear293.i = and i320 %bf.set286.i, -52656145834278593348959013841835216159447547700274555627156537089
  %bf.set294.i = or i320 %bf.clear293.i, %bf.shl292.i
  %bf.set298.i = or i320 %bf.set294.i, 52656145834278593348959013841835216159447547700274555627155488768
  store i320 %bf.set298.i, ptr %pbuf, align 4
  %tx_rate299.i = getelementptr inbounds %struct.adapter, ptr %2, i32 0, i32 5, i32 25
  %176 = ptrtoint ptr %tx_rate299.i to i32
  call void @__asan_load1_noabort(i32 %176)
  %177 = load i8, ptr %tx_rate299.i, align 1
  %call300.i = tail call zeroext i8 @MRateToHwRate(i8 noundef zeroext %177) #14
  %178 = ptrtoint ptr %pbuf to i32
  call void @__asan_loadN_noabort(i32 %178, i32 40)
  %bf.load302.i = load i320, ptr %pbuf, align 4
  %179 = and i8 %call300.i, 127
  %bf.value303.i = zext i8 %179 to i320
  %bf.shl304.i = shl nuw nsw i320 %bf.value303.i, 185
  %bf.clear305.i = and i320 %bf.load302.i, -6228061878078972320368322318338856522226555792554159243265
  %bf.set306.i = or i320 %bf.shl304.i, %bf.clear305.i
  br label %if.end309.sink.split.i

if.end309.sink.split.i:                           ; preds = %if.else263.i, %if.then251.i, %if.end172.i
  %bf.set306.sink.i = phi i320 [ %bf.set306.i, %if.else263.i ], [ %bf.set260.i, %if.then251.i ], [ %bf.set178.i, %if.end172.i ]
  %180 = ptrtoint ptr %pbuf to i32
  call void @__asan_storeN_noabort(i32 %180, i32 40)
  store i320 %bf.set306.sink.i, ptr %pbuf, align 4
  br label %if.end309.i

if.end309.i:                                      ; preds = %if.end309.sink.split.i, %if.then184.i.if.end309.i_crit_edge
  %last_txcmdsz.i = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 9
  %181 = ptrtoint ptr %last_txcmdsz.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %last_txcmdsz.i, align 4
  %183 = ptrtoint ptr %pbuf to i32
  call void @__asan_loadN_noabort(i32 %183, i32 40)
  %bf.load310.i = load i320, ptr %pbuf, align 4
  %bf.value311.i = zext i32 %182 to i320
  %bf.shl312.i = shl i320 %bf.value311.i, 304
  %bf.clear313.i = and i320 %bf.load310.i, 127314748520905380391777855525586135065716774604121015664758778084648831235208544136462335
  %bf.set314.i = or i320 %bf.clear313.i, %bf.shl312.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool319.not.i = icmp eq i8 %7, 0
  %storemerge.v.i = select i1 %tobool319.not.i, i320 5092589940836215215671114221023445402628670984164840626590351123385953249408341765458493440, i320 5156247315096667905867003148786238470161529371466901134422730512428277665025946037526724608
  %storemerge.i = or i320 %bf.set314.i, %storemerge.v.i
  %184 = ptrtoint ptr %pbuf to i32
  call void @__asan_storeN_noabort(i32 %184, i32 40)
  store i320 %storemerge.i, ptr %pbuf, align 4
  %qos_en.i = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 25
  %185 = ptrtoint ptr %qos_en.i to i32
  call void @__asan_load1_noabort(i32 %185)
  %186 = load i8, ptr %qos_en.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %186)
  %tobool325.not.i = icmp eq i8 %186, 0
  br i1 %tobool325.not.i, label %if.then326.i, label %if.end309.i.rtl8723b_fill_default_txdesc.exit_crit_edge

if.end309.i.rtl8723b_fill_default_txdesc.exit_crit_edge: ; preds = %if.end309.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rtl8723b_fill_default_txdesc.exit

if.then326.i:                                     ; preds = %if.end309.i
  call void @__sanitizer_cov_trace_pc() #16
  %bf.set329.i = or i320 %storemerge.i, 281474976710656
  %187 = ptrtoint ptr %pbuf to i32
  call void @__asan_storeN_noabort(i32 %187, i32 40)
  store i320 %bf.set329.i, ptr %pbuf, align 4
  br label %rtl8723b_fill_default_txdesc.exit

rtl8723b_fill_default_txdesc.exit:                ; preds = %if.then326.i, %if.end309.i.rtl8723b_fill_default_txdesc.exit_crit_edge
  %txdw7.i = getelementptr %struct.tx_desc, ptr %pbuf, i32 0, i32 7
  %188 = ptrtoint ptr %txdw7.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %txdw7.i, align 4
  %and.i = and i32 %189, 65535
  %190 = ptrtoint ptr %pbuf to i32
  call void @__asan_load2_noabort(i32 %190)
  %191 = load i16, ptr %pbuf, align 2
  %add.ptr.1.i = getelementptr i16, ptr %pbuf, i32 1
  %192 = ptrtoint ptr %add.ptr.1.i to i32
  call void @__asan_load2_noabort(i32 %192)
  %193 = load i16, ptr %add.ptr.1.i, align 2
  %add.ptr.2.i = getelementptr i16, ptr %pbuf, i32 2
  %194 = ptrtoint ptr %add.ptr.2.i to i32
  call void @__asan_load2_noabort(i32 %194)
  %195 = load i16, ptr %add.ptr.2.i, align 2
  %add.ptr.3.i = getelementptr i16, ptr %pbuf, i32 3
  %196 = ptrtoint ptr %add.ptr.3.i to i32
  call void @__asan_load2_noabort(i32 %196)
  %197 = load i16, ptr %add.ptr.3.i, align 2
  %add.ptr.4.i = getelementptr i16, ptr %pbuf, i32 4
  %198 = ptrtoint ptr %add.ptr.4.i to i32
  call void @__asan_load2_noabort(i32 %198)
  %199 = load i16, ptr %add.ptr.4.i, align 2
  %add.ptr.5.i = getelementptr i16, ptr %pbuf, i32 5
  %200 = ptrtoint ptr %add.ptr.5.i to i32
  call void @__asan_load2_noabort(i32 %200)
  %201 = load i16, ptr %add.ptr.5.i, align 2
  %add.ptr.6.i = getelementptr i16, ptr %pbuf, i32 6
  %202 = ptrtoint ptr %add.ptr.6.i to i32
  call void @__asan_load2_noabort(i32 %202)
  %203 = load i16, ptr %add.ptr.6.i, align 2
  %add.ptr.7.i = getelementptr i16, ptr %pbuf, i32 7
  %204 = ptrtoint ptr %add.ptr.7.i to i32
  call void @__asan_load2_noabort(i32 %204)
  %205 = load i16, ptr %add.ptr.7.i, align 2
  %add.ptr.8.i = getelementptr i16, ptr %pbuf, i32 8
  %206 = ptrtoint ptr %add.ptr.8.i to i32
  call void @__asan_load2_noabort(i32 %206)
  %207 = load i16, ptr %add.ptr.8.i, align 2
  %add.ptr.9.i = getelementptr i16, ptr %pbuf, i32 9
  %208 = ptrtoint ptr %add.ptr.9.i to i32
  call void @__asan_load2_noabort(i32 %208)
  %209 = load i16, ptr %add.ptr.9.i, align 2
  %add.ptr.10.i = getelementptr i16, ptr %pbuf, i32 10
  %210 = ptrtoint ptr %add.ptr.10.i to i32
  call void @__asan_load2_noabort(i32 %210)
  %211 = load i16, ptr %add.ptr.10.i, align 2
  %add.ptr.11.i = getelementptr i16, ptr %pbuf, i32 11
  %212 = ptrtoint ptr %add.ptr.11.i to i32
  call void @__asan_load2_noabort(i32 %212)
  %213 = load i16, ptr %add.ptr.11.i, align 2
  %add.ptr.12.i = getelementptr i16, ptr %pbuf, i32 12
  %214 = ptrtoint ptr %add.ptr.12.i to i32
  call void @__asan_load2_noabort(i32 %214)
  %215 = load i16, ptr %add.ptr.12.i, align 2
  %add.ptr.13.i = getelementptr i16, ptr %pbuf, i32 13
  %216 = ptrtoint ptr %add.ptr.13.i to i32
  call void @__asan_load2_noabort(i32 %216)
  %217 = load i16, ptr %add.ptr.13.i, align 2
  %218 = trunc i32 %189 to i16
  %219 = or i16 %191, %218
  %220 = or i16 %219, %193
  %221 = or i16 %220, %195
  %222 = or i16 %221, %197
  %223 = or i16 %222, %199
  %224 = or i16 %223, %201
  %225 = or i16 %224, %203
  %226 = or i16 %225, %205
  %227 = or i16 %226, %207
  %228 = or i16 %227, %209
  %229 = or i16 %228, %211
  %230 = or i16 %229, %213
  %231 = or i16 %230, %215
  %232 = or i16 %231, %217
  %233 = tail call i16 @llvm.bswap.i16(i16 %232) #14
  %or.15.i = zext i16 %233 to i32
  %234 = tail call i32 @llvm.bswap.i32(i32 %or.15.i) #14
  %or6.i = or i32 %234, %and.i
  %235 = ptrtoint ptr %txdw7.i to i32
  call void @__asan_store4_noabort(i32 %235)
  store i32 %or6.i, ptr %txdw7.i, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @rtl8723b_fill_fake_txdesc(ptr nocapture noundef readonly %padapter, ptr noundef %pDesc, i32 noundef %BufferLen, i8 noundef zeroext %IsPsPoll, i8 noundef zeroext %IsBTQosNull, i8 noundef zeroext %bDataFrame) local_unnamed_addr #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %pDesc, i32 0, i32 40)
  %and6 = and i32 %BufferLen, 65407
  %add.ptr = getelementptr i8, ptr %pDesc, i32 4
  %1 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 4608, ptr %add.ptr, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %IsPsPoll)
  %tobool.not = icmp eq i8 %IsPsPoll, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr11 = getelementptr i8, ptr %pDesc, i32 12
  %2 = ptrtoint ptr %add.ptr11 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %add.ptr11, align 4
  %4 = or i32 %3, 8388608
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr15 = getelementptr i8, ptr %pDesc, i32 32
  %5 = ptrtoint ptr %add.ptr15 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %add.ptr15, align 4
  %7 = or i32 %6, 8388608
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  %9 = ptrtoint ptr %add.ptr15 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %add.ptr15, align 4
  %add.ptr19 = getelementptr i8, ptr %pDesc, i32 12
  %10 = ptrtoint ptr %add.ptr19 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %add.ptr19, align 4
  %12 = and i32 %11, 1073741823
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %.sink101 = phi i32 [ %12, %if.else ], [ %4, %if.then ]
  %add.ptr19.sink = phi ptr [ %add.ptr19, %if.else ], [ %add.ptr11, %if.then ]
  %13 = tail call i32 @llvm.bswap.i32(i32 %.sink101)
  %14 = ptrtoint ptr %add.ptr19.sink to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %add.ptr19.sink, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %IsBTQosNull)
  %tobool23.not = icmp eq i8 %IsBTQosNull, 0
  br i1 %tobool23.not, label %if.end.if.end29_crit_edge, label %if.then24

if.end.if.end29_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end29

if.then24:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr25 = getelementptr i8, ptr %pDesc, i32 8
  %15 = ptrtoint ptr %add.ptr25 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %add.ptr25, align 4
  %17 = or i32 %16, 32768
  %18 = tail call i32 @llvm.bswap.i32(i32 %17)
  %19 = ptrtoint ptr %add.ptr25 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %add.ptr25, align 4
  br label %if.end29

if.end29:                                         ; preds = %if.then24, %if.end.if.end29_crit_edge
  %add.ptr30 = getelementptr i8, ptr %pDesc, i32 12
  %20 = ptrtoint ptr %add.ptr30 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %add.ptr30, align 4
  %22 = or i32 %21, 65536
  %23 = tail call i32 @llvm.bswap.i32(i32 %22)
  %24 = ptrtoint ptr %add.ptr30 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %add.ptr30, align 4
  %25 = or i32 %and6, 67108992
  %26 = tail call i32 @llvm.bswap.i32(i32 %25)
  %27 = ptrtoint ptr %pDesc to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %pDesc, align 4
  %add.ptr36 = getelementptr i8, ptr %pDesc, i32 16
  %28 = ptrtoint ptr %add.ptr36 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %add.ptr36, align 4
  %30 = and i32 %29, -2130706433
  %31 = tail call i32 @llvm.bswap.i32(i32 %30)
  %32 = ptrtoint ptr %add.ptr36 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %add.ptr36, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bDataFrame)
  %tobool40.not = icmp eq i8 %bDataFrame, 0
  br i1 %tobool40.not, label %if.end29.if.end65_crit_edge, label %if.then41

if.end29.if.end65_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end65

if.then41:                                        ; preds = %if.end29
  %dot11PrivacyAlgrthm = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 12, i32 1
  %33 = ptrtoint ptr %dot11PrivacyAlgrthm to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %dot11PrivacyAlgrthm, align 4
  %switch.tableidx = add i32 %34, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %switch.tableidx)
  %35 = icmp ult i32 %switch.tableidx, 6
  br i1 %35, label %switch.lookup, label %if.then41.if.end65.sink.split_crit_edge

if.then41.if.end65.sink.split_crit_edge:          ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end65.sink.split

switch.lookup:                                    ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #16
  %switch.gep = getelementptr inbounds [6 x i32], ptr @switch.table.rtl8723b_fill_fake_txdesc, i32 0, i32 %switch.tableidx
  %36 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %36)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %if.end65.sink.split

if.end65.sink.split:                              ; preds = %switch.lookup, %if.then41.if.end65.sink.split_crit_edge
  %.sink = phi i32 [ 1179648, %if.then41.if.end65.sink.split_crit_edge ], [ %switch.load, %switch.lookup ]
  %37 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %.sink, ptr %add.ptr, align 4
  br label %if.end65

if.end65:                                         ; preds = %if.end65.sink.split, %if.end29.if.end65_crit_edge
  %txdw7.i = getelementptr %struct.tx_desc, ptr %pDesc, i32 0, i32 7
  %38 = ptrtoint ptr %txdw7.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %txdw7.i, align 4
  %and.i = and i32 %39, 65535
  %40 = ptrtoint ptr %pDesc to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %pDesc, align 2
  %add.ptr.1.i = getelementptr i16, ptr %pDesc, i32 1
  %42 = ptrtoint ptr %add.ptr.1.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %add.ptr.1.i, align 2
  %44 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %add.ptr, align 2
  %add.ptr.3.i = getelementptr i16, ptr %pDesc, i32 3
  %46 = ptrtoint ptr %add.ptr.3.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %add.ptr.3.i, align 2
  %add.ptr.4.i = getelementptr i16, ptr %pDesc, i32 4
  %48 = ptrtoint ptr %add.ptr.4.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %add.ptr.4.i, align 2
  %add.ptr.5.i = getelementptr i16, ptr %pDesc, i32 5
  %50 = ptrtoint ptr %add.ptr.5.i to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %add.ptr.5.i, align 2
  %52 = ptrtoint ptr %add.ptr30 to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %add.ptr30, align 2
  %add.ptr.7.i = getelementptr i16, ptr %pDesc, i32 7
  %54 = ptrtoint ptr %add.ptr.7.i to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %add.ptr.7.i, align 2
  %56 = ptrtoint ptr %add.ptr36 to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %add.ptr36, align 2
  %add.ptr.9.i = getelementptr i16, ptr %pDesc, i32 9
  %58 = ptrtoint ptr %add.ptr.9.i to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %add.ptr.9.i, align 2
  %add.ptr.10.i = getelementptr i16, ptr %pDesc, i32 10
  %60 = ptrtoint ptr %add.ptr.10.i to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %add.ptr.10.i, align 2
  %add.ptr.11.i = getelementptr i16, ptr %pDesc, i32 11
  %62 = ptrtoint ptr %add.ptr.11.i to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %add.ptr.11.i, align 2
  %add.ptr.12.i = getelementptr i16, ptr %pDesc, i32 12
  %64 = ptrtoint ptr %add.ptr.12.i to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %add.ptr.12.i, align 2
  %add.ptr.13.i = getelementptr i16, ptr %pDesc, i32 13
  %66 = ptrtoint ptr %add.ptr.13.i to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %add.ptr.13.i, align 2
  %68 = trunc i32 %39 to i16
  %69 = or i16 %41, %68
  %70 = or i16 %69, %43
  %71 = or i16 %70, %45
  %72 = or i16 %71, %47
  %73 = or i16 %72, %49
  %74 = or i16 %73, %51
  %75 = or i16 %74, %53
  %76 = or i16 %75, %55
  %77 = or i16 %76, %57
  %78 = or i16 %77, %59
  %79 = or i16 %78, %61
  %80 = or i16 %79, %63
  %81 = or i16 %80, %65
  %82 = or i16 %81, %67
  %83 = tail call i16 @llvm.bswap.i16(i16 %82) #14
  %or.15.i = zext i16 %83 to i32
  %84 = tail call i32 @llvm.bswap.i32(i32 %or.15.i) #14
  %or6.i = or i32 %84, %and.i
  %85 = ptrtoint ptr %txdw7.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %or6.i, ptr %txdw7.i, align 4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @CCX_FwC2HTxRpt_8723b(ptr noundef %padapter, ptr nocapture noundef readonly %pdata, i8 noundef zeroext %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pdata to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pdata, align 1
  %conv = zext i8 %1 to i32
  %2 = lshr i32 %conv, 7
  %3 = lshr i32 %conv, 6
  %and4 = and i32 %3, 1
  %or = or i32 %and4, %2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or)
  %tobool.not = icmp eq i32 %or, 0
  %xmitpriv5 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 9
  %. = select i1 %tobool.not, i32 0, i32 8
  tail call void @rtw_ack_tx_done(ptr noundef %xmitpriv5, i32 noundef %.) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_ack_tx_done(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @hal_btcoex_BtInfoNotify(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @C2HPacketHandler_8723B(ptr noundef %padapter, ptr noundef %pbuffer, i16 noundef zeroext %length) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pbuffer to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pbuffer, align 1
  %add.ptr = getelementptr i8, ptr %pbuffer, i32 2
  %tobool.not.i = icmp ne ptr %add.ptr, null
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %1)
  %cond.i = icmp eq i8 %1, 9
  %or.cond = select i1 %tobool.not.i, i1 %cond.i, i1 false
  br i1 %or.cond, label %sw.bb1.i, label %entry.process_c2h_event.exit_crit_edge

entry.process_c2h_event.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %process_c2h_event.exit

sw.bb1.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %conv = trunc i16 %length to i8
  %sub = add i8 %conv, -2
  tail call void @hal_btcoex_BtInfoNotify(ptr noundef %padapter, i8 noundef zeroext %sub, ptr noundef nonnull %add.ptr) #14
  br label %process_c2h_event.exit

process_c2h_event.exit:                           ; preds = %sw.bb1.i, %entry.process_c2h_event.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @SetHwReg8723B(ptr noundef %padapter, i8 noundef zeroext %variable, ptr noundef %val) local_unnamed_addr #0 align 64 {
entry:
  %BrateCfg = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %HalData = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 18
  %0 = ptrtoint ptr %HalData to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %HalData, align 8
  %2 = zext i8 %variable to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.26)
  switch i8 %variable, label %sw.default [
    i8 0, label %sw.bb
    i8 1, label %sw.bb7
    i8 2, label %sw.bb17
    i8 3, label %sw.bb18
    i8 4, label %sw.bb19
    i8 6, label %sw.bb20
    i8 7, label %sw.bb47
    i8 8, label %sw.bb49
    i8 9, label %sw.bb50
    i8 10, label %sw.bb51
    i8 11, label %sw.bb59
    i8 12, label %sw.bb60
    i8 13, label %sw.bb64
    i8 14, label %sw.bb68
    i8 15, label %sw.bb72
    i8 16, label %sw.bb76
    i8 17, label %sw.bb78
    i8 18, label %sw.bb80
    i8 19, label %sw.bb88
    i8 28, label %sw.bb96
    i8 29, label %sw.bb119
    i8 30, label %sw.bb121
    i8 32, label %sw.bb127
    i8 33, label %sw.bb129
    i8 34, label %sw.bb131
    i8 35, label %sw.bb134
    i8 36, label %sw.bb136
    i8 38, label %sw.bb170
    i8 42, label %sw.bb180
    i8 43, label %sw.bb186
    i8 44, label %sw.bb187
    i8 51, label %sw.bb188
    i8 59, label %sw.bb199
    i8 60, label %sw.bb200
    i8 61, label %sw.bb201
    i8 62, label %sw.bb202
    i8 63, label %sw.bb204
    i8 66, label %sw.bb221
    i8 68, label %sw.bb222
    i8 72, label %sw.bb231
    i8 22, label %sw.bb237
    i8 74, label %sw.bb243
    i8 79, label %sw.bb249
    i8 89, label %sw.bb250
    i8 90, label %sw.bb257
    i8 91, label %sw.bb274
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %call = tail call zeroext i8 @rtw_read8(ptr noundef %padapter, i32 noundef 258) #14
  %3 = and i8 %call, 12
  %4 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %val, align 1
  %or484 = or i8 %3, %5
  %call6 = tail call i32 @rtw_write8(ptr noundef %padapter, i32 noundef 258, i8 noundef zeroext %or484) #14
  br label %sw.epilog291

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %call8 = tail call zeroext i8 @rtw_read8(ptr noundef %padapter, i32 noundef 258) #14
  %6 = and i8 %call8, 3
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %val, align 1
  %shl = shl i8 %8, 2
  %or14 = or i8 %shl, %6
  %call16 = tail call i32 @rtw_write8(ptr noundef %padapter, i32 noundef 258, i8 noundef zeroext %or14) #14
  br label %sw.epilog291

sw.bb17:                                          ; preds = %entry
  %9 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %val, align 1
  %call.i = tail call zeroext i8 @rtw_read8(ptr noundef %padapter, i32 noundef 1360) #14
  %11 = or i8 %call.i, 16
  %call2.i = tail call i32 @rtw_write8(ptr noundef %padapter, i32 noundef 1360, i8 noundef zeroext %11) #14
  tail call void @Set_MSR(ptr noundef %padapter, i8 noundef zeroext %10) #14
  %12 = zext i8 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.27)
  switch i8 %10, label %sw.bb17.sw.epilog291_crit_edge [
    i8 2, label %sw.bb17.if.then.i_crit_edge
    i8 0, label %sw.bb17.if.then.i_crit_edge537
    i8 1, label %if.then12.i
    i8 3, label %if.then18.i
  ]

sw.bb17.if.then.i_crit_edge537:                   ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i

sw.bb17.if.then.i_crit_edge:                      ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i

sw.bb17.sw.epilog291_crit_edge:                   ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog291

if.then.i:                                        ; preds = %sw.bb17.if.then.i_crit_edge, %sw.bb17.if.then.i_crit_edge537
  %13 = ptrtoint ptr %HalData to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %HalData, align 8
  %RegFwHwTxQCtrl.i.i = getelementptr inbounds %struct.hal_com_data, ptr %14, i32 0, i32 106
  %15 = ptrtoint ptr %RegFwHwTxQCtrl.i.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %RegFwHwTxQCtrl.i.i, align 1
  %17 = and i8 %16, -65
  store i8 %17, ptr %RegFwHwTxQCtrl.i.i, align 1
  %call.i.i = tail call i32 @rtw_write8(ptr noundef %padapter, i32 noundef 1058, i8 noundef zeroext %17) #14
  %call3.i.i = tail call i32 @rtw_write8(ptr noundef %padapter, i32 noundef 1345, i8 noundef zeroext 100) #14
  %RegReg542.i.i = getelementptr inbounds %struct.hal_com_data, ptr %14, i32 0, i32 107
  %18 = ptrtoint ptr %RegReg542.i.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %RegReg542.i.i, align 2
  %20 = and i8 %19, -2
  store i8 %20, ptr %RegReg542.i.i, align 2
  %call8.i.i = tail call i32 @rtw_write8(ptr noundef %padapter, i32 noundef 1346, i8 noundef zeroext %20) #14
  tail call void @CheckFwRsvdPageContent(ptr noundef %padapter) #14
  %call8.i = tail call i32 @rtw_write8(ptr noundef %padapter, i32 noundef 1360, i8 noundef zeroext 25) #14
  br label %sw.epilog291

if.then12.i:                                      ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #16
  %21 = ptrtoint ptr %HalData to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %HalData, align 8
  %RegFwHwTxQCtrl.i2.i = getelementptr inbounds %struct.hal_com_data, ptr %22, i32 0, i32 106
  %23 = ptrtoint ptr %RegFwHwTxQCtrl.i2.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %RegFwHwTxQCtrl.i2.i, align 1
  %25 = or i8 %24, 64
  store i8 %25, ptr %RegFwHwTxQCtrl.i2.i, align 1
  %call.i3.i = tail call i32 @rtw_write8(ptr noundef %padapter, i32 noundef 1058, i8 noundef zeroext %25) #14
  %call3.i4.i = tail call i32 @rtw_write8(ptr noundef %padapter, i32 noundef 1345, i8 noundef zeroext -1) #14
  %RegReg542.i5.i = getelementptr inbounds %struct.hal_com_data, ptr %22, i32 0, i32 107
  %26 = ptrtoint ptr %RegReg542.i5.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %RegReg542.i5.i, align 2
  %28 = or i8 %27, 1
  store i8 %28, ptr %RegReg542.i5.i, align 2
  %call8.i6.i = tail call i32 @rtw_write8(ptr noundef %padapter, i32 noundef 1346, i8 noundef zeroext %28) #14
  %call13.i = tail call i32 @rtw_write8(ptr noundef %padapter, i32 noundef 1360, i8 noundef zeroext 26) #14
  br label %sw.epilog291

if.then18.i:                                      ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #16
  %29 = ptrtoint ptr %HalData to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %HalData, align 8
  %RegFwHwTxQCtrl.i8.i = getelementptr inbounds %struct.hal_com_data, ptr %30, i32 0, i32 106
  %31 = ptrtoint ptr %RegFwHwTxQCtrl.i8.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %RegFwHwTxQCtrl.i8.i, align 1
  %33 = or i8 %32, 64
  store i8 %33, ptr %RegFwHwTxQCtrl.i8.i, align 1
  %call.i9.i = tail call i32 @rtw_write8(ptr noundef %padapter, i32 noundef 1058, i8 noundef zeroext %33) #14
  %call3.i10.i = tail call i32 @rtw_write8(ptr noundef %padapter, i32 noundef 1345, i8 noundef zeroext -1) #14
  %RegReg542.i11.i = getelementptr inbounds %struct.hal_com_data, ptr %30, i32 0, i32 107
  %34 = ptrtoint ptr %RegReg542.i11.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %RegReg542.i11.i, align 2
  %36 = or i8 %35, 1
  store i8 %36, ptr %RegReg542.i11.i, align 2
  %call8.i12.i = tail call i32 @rtw_write8(ptr noundef %padapter, i32 noundef 1346, i8 noundef zeroext %36) #14
  %call19.i = tail call i32 @rtw_write8(ptr noundef %padapter, i32 noundef 1360, i8 noundef zeroext 18) #14
  %call20.i = tail call i32 @rtw_write32(ptr noundef %padapter, i32 noundef 1544, i32 noundef 1879056526) #14
  %call21.i = tail call i32 @rtw_write16(ptr noundef %padapter, i32 noundef 1700, i16 noundef zeroext -1) #14
  %call22.i = tail call i32 @rtw_write16(ptr noundef %padapter, i32 noundef 1698, i16 noundef zeroext 1024) #14
  %call23.i = tail call i32 @rtw_write8(ptr noundef %padapter, i32 noundef 1369, i8 noundef zeroext 2) #14
  %call24.i = tail call i32 @rtw_write8(ptr noundef %padapter, i32 noundef 1370, i8 noundef zeroext 10) #14
  %call25.i = tail call i32 @rtw_write16(ptr noundef %padapter, i32 noundef 1296, i16 noundef zeroext 0) #14
  %call26.i = tail call i32 @rtw_write16(ptr noundef %padapter, i32 noundef 1344, i16 noundef zeroext -252) #14
  %call27.i = tail call i32 @rtw_write16(ptr noundef %padapter, i32 noundef 1304, i16 noundef zeroext 32767) #14
  %call28.i = tail call i32 @rtw_write8(ptr noundef %padapter, i32 noundef 1363, i8 noundef zeroext 1) #14
  %call29.i = tail call i32 @rtw_write8(ptr noundef %padapter, i32 noundef 1360, i8 noundef zeroext 30) #14
  tail call void @rtw_hal_set_hwreg(ptr noundef %padapter, i8 noundef zeroext 74, ptr noundef null) #14
  %call30.i = tail call zeroext i8 @rtw_read8(ptr noundef %padapter, i32 noundef 1108) #14
  %37 = and i8 %call30.i, -33
  %call33.i = tail call i32 @rtw_write8(ptr noundef %padapter, i32 noundef 1108, i8 noundef zeroext %37) #14
  %call34.i = tail call zeroext i8 @rtw_read8(ptr noundef %padapter, i32 noundef 1361) #14
  %38 = or i8 %call34.i, 1
  %call38.i = tail call i32 @rtw_write8(ptr noundef %padapter, i32 noundef 1361, i8 noundef zeroext %38) #14
  br label %sw.epilog291

sw.bb18:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %dvobj.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 3
  %39 = ptrtoint ptr %dvobj.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dvobj.i, align 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %40, align 8
  %43 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %val, align 1
  %call.i488 = tail call i32 @rtw_write8(ptr noundef %42, i32 noundef 1552, i8 noundef zeroext %44) #14
  %45 = ptrtoint ptr %dvobj.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dvobj.i, align 4
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %46, align 8
  %arrayidx.1.i = getelementptr i8, ptr %val, i32 1
  %49 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx.1.i, align 1
  %call.1.i = tail call i32 @rtw_write8(ptr noundef %48, i32 noundef 1553, i8 noundef zeroext %50) #14
  %51 = ptrtoint ptr %dvobj.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dvobj.i, align 4
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %52, align 8
  %arrayidx.2.i = getelementptr i8, ptr %val, i32 2
  %55 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %arrayidx.2.i, align 1
  %call.2.i = tail call i32 @rtw_write8(ptr noundef %54, i32 noundef 1554, i8 noundef zeroext %56) #14
  %57 = ptrtoint ptr %dvobj.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %dvobj.i, align 4
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %58, align 8
  %arrayidx.3.i = getelementptr i8, ptr %val, i32 3
  %61 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %arrayidx.3.i, align 1
  %call.3.i = tail call i32 @rtw_write8(ptr noundef %60, i32 noundef 1555, i8 noundef zeroext %62) #14
  %63 = ptrtoint ptr %dvobj.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %dvobj.i, align 4
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %64, align 8
  %arrayidx.4.i = getelementptr i8, ptr %val, i32 4
  %67 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %arrayidx.4.i, align 1
  %call.4.i = tail call i32 @rtw_write8(ptr noundef %66, i32 noundef 1556, i8 noundef zeroext %68) #14
  %69 = ptrtoint ptr %dvobj.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %dvobj.i, align 4
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %70, align 8
  %arrayidx.5.i = getelementptr i8, ptr %val, i32 5
  %73 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %arrayidx.5.i, align 1
  %call.5.i = tail call i32 @rtw_write8(ptr noundef %72, i32 noundef 1557, i8 noundef zeroext %74) #14
  br label %sw.epilog291

sw.bb19:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %75 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %val, align 1
  %call.i489 = tail call i32 @rtw_write8(ptr noundef %padapter, i32 noundef 1560, i8 noundef zeroext %76) #14
  %arrayidx.1.i490 = getelementptr i8, ptr %val, i32 1
  %77 = ptrtoint ptr %arrayidx.1.i490 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %arrayidx.1.i490, align 1
  %call.1.i491 = tail call i32 @rtw_write8(ptr noundef %padapter, i32 noundef 1561, i8 noundef zeroext %78) #14
  %arrayidx.2.i492 = getelementptr i8, ptr %val, i32 2
  %79 = ptrtoint ptr %arrayidx.2.i492 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %arrayidx.2.i492, align 1
  %call.2.i493 = tail call i32 @rtw_write8(ptr noundef %padapter, i32 noundef 1562, i8 noundef zeroext %80) #14
  %arrayidx.3.i494 = getelementptr i8, ptr %val, i32 3
  %81 = ptrtoint ptr %arrayidx.3.i494 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %arrayidx.3.i494, align 1
  %call.3.i495 = tail call i32 @rtw_write8(ptr noundef %padapter, i32 noundef 1563, i8 noundef zeroext %82) #14
  %arrayidx.4.i496 = getelementptr i8, ptr %val, i32 4
  %83 = ptrtoint ptr %arrayidx.4.i496 to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %arrayidx.4.i496, align 1
  %call.4.i497 = tail call i32 @rtw_write8(ptr noundef %padapter, i32 noundef 1564, i8 noundef zeroext %84) #14
  %arrayidx.5.i498 = getelementptr i8, ptr %val, i32 5
  %85 = ptrtoint ptr %arrayidx.5.i498 to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %arrayidx.5.i498, align 1
  %call.5.i499 = tail call i32 @rtw_write8(ptr noundef %padapter, i32 noundef 1565, i8 noundef zeroext %86) #14
  br label %sw.epilog291

sw.bb20:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %BrateCfg) #14
  %87 = ptrtoint ptr %BrateCfg to i32
  call void @__asan_store2_noabort(i32 %87)
  store i16 0, ptr %BrateCfg, align 2
  call void @HalSetBrateCfg(ptr noundef %padapter, ptr noundef %val, ptr noundef nonnull %BrateCfg) #14
  %88 = ptrtoint ptr %BrateCfg to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %BrateCfg, align 2
  %90 = and i16 %89, 338
  %91 = or i16 %90, 13
  store i16 %91, ptr %BrateCfg, align 2
  %assoc_AP_vendor = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 14
  %92 = ptrtoint ptr %assoc_AP_vendor to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %assoc_AP_vendor, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %93)
  %cmp = icmp eq i8 %93, 6
  %94 = and i16 %89, 336
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %94)
  %cmp34 = icmp eq i16 %94, 0
  %or.cond = select i1 %cmp, i1 %cmp34, i1 false
  br i1 %or.cond, label %if.then36, label %sw.bb20.if.end40_crit_edge

sw.bb20.if.end40_crit_edge:                       ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end40

if.then36:                                        ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #16
  %or38 = or i16 %90, 29
  %95 = ptrtoint ptr %BrateCfg to i32
  call void @__asan_store2_noabort(i32 %95)
  store i16 %or38, ptr %BrateCfg, align 2
  br label %if.end40

if.end40:                                         ; preds = %if.then36, %sw.bb20.if.end40_crit_edge
  %96 = ptrtoint ptr %BrateCfg to i32
  call void @__asan_load2_noabort(i32 %96)
  %97 = load i16, ptr %BrateCfg, align 2
  %BasicRateSet = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 15
  %98 = ptrtoint ptr %BasicRateSet to i32
  call void @__asan_store2_noabort(i32 %98)
  store i16 %97, ptr %BasicRateSet, align 2
  %call41 = call i32 @rtw_write16(ptr noundef %padapter, i32 noundef 1088, i16 noundef zeroext %97) #14
  %call42 = call zeroext i8 @rtw_read8(ptr noundef %padapter, i32 noundef 1090) #14
  %99 = and i8 %call42, -16
  %call46 = call i32 @rtw_write8(ptr noundef %padapter, i32 noundef 1090, i8 noundef zeroext %99) #14
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %BrateCfg) #14
  br label %sw.epilog291

sw.bb47:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %100 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %val, align 1
  %call48 = tail call i32 @rtw_write8(ptr noundef %padapter, i32 noundef 1314, i8 noundef zeroext %101) #14
  br label %sw.epilog291

sw.bb49:                                          ; preds = %entry
  %102 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %val, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %103)
  %tobool.not.i = icmp eq i8 %103, 0
  br i1 %tobool.not.i, label %if.else.i, label %sw.bb49.hw_var_set_bcn_func.exit_crit_edge

sw.bb49.hw_var_set_bcn_func.exit_crit_edge:       ; preds = %sw.bb49
  call void @__sanitizer_cov_trace_pc() #16
  br label %hw_var_set_bcn_func.exit

if.else.i:                                        ; preds = %sw.bb49
  call void @__sanitizer_cov_trace_pc() #16
  %call1.i = tail call zeroext i8 @rtw_read8(ptr noundef %padapter, i32 noundef 1360) #14
  %104 = and i8 %call1.i, -13
  %105 = or i8 %104, 8
  br label %hw_var_set_bcn_func.exit

hw_var_set_bcn_func.exit:                         ; preds = %if.else.i, %sw.bb49.hw_var_set_bcn_func.exit_crit_edge
  %.sink.i = phi i8 [ %105, %if.else.i ], [ 12, %sw.bb49.hw_var_set_bcn_func.exit_crit_edge ]
  %call7.i = tail call i32 @rtw_write8(ptr noundef %padapter, i32 noundef 1360, i8 noundef zeroext %.sink.i) #14
  br label %sw.epilog291

sw.bb50:                                          ; preds = %entry
  %mlmext_info.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18
  %TSFValue.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 27
  %106 = ptrtoint ptr %TSFValue.i to i32
  call void @__asan_load8_noabort(i32 %106)
  %107 = load i64, ptr %TSFValue.i, align 8
  %bcn_interval.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 12
  %108 = ptrtoint ptr %bcn_interval.i to i32
  call void @__asan_load2_noabort(i32 %108)
  %109 = load i16, ptr %bcn_interval.i, align 2
  %conv.i = zext i16 %109 to i32
  %mul.i = shl nuw nsw i32 %conv.i, 10
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %107)
  %cmp174.i = icmp ult i64 %107, 4294967296
  br i1 %cmp174.i, label %if.then178.i, label %if.else187.i, !prof !55

if.then178.i:                                     ; preds = %sw.bb50
  call void @__sanitizer_cov_trace_pc() #16
  %conv180.i = trunc i64 %107 to i32
  %conv180.i.frozen = freeze i32 %conv180.i
  %mul.i.frozen = freeze i32 %mul.i
  %div184.i = udiv i32 %conv180.i.frozen, %mul.i.frozen
  %110 = mul i32 %div184.i, %mul.i.frozen
  %rem181.i.decomposed = sub i32 %conv180.i.frozen, %110
  %conv185.i = zext i32 %div184.i to i64
  br label %if.end192.i

if.else187.i:                                     ; preds = %sw.bb50
  call void @__sanitizer_cov_trace_pc() #16
  %111 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %mul.i, i64 %107) #19, !srcloc !56
  %asmresult.i3.i = extractvalue { i64, i64 } %111, 0
  %asmresult1.i.i = extractvalue { i64, i64 } %111, 1
  %shr.i.i = lshr i64 %asmresult.i3.i, 32
  %conv.i.i = trunc i64 %shr.i.i to i32
  br label %if.end192.i

if.end192.i:                                      ; preds = %if.else187.i, %if.then178.i
  %storemerge = phi i64 [ %asmresult1.i.i, %if.else187.i ], [ %conv185.i, %if.then178.i ]
  %__rem.0.i = phi i32 [ %conv.i.i, %if.else187.i ], [ %rem181.i.decomposed, %if.then178.i ]
  %112 = ptrtoint ptr %TSFValue.i to i32
  call void @__asan_store8_noabort(i32 %112)
  store i64 %storemerge, ptr %TSFValue.i, align 8
  %conv194.i = zext i32 %__rem.0.i to i64
  %sub195.i = sub i64 %107, %conv194.i
  %sub196.i = add i64 %sub195.i, -1024
  %113 = ptrtoint ptr %mlmext_info.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %mlmext_info.i, align 4
  %and197.i = and i32 %114, 3
  %115 = zext i32 %and197.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %115, ptr @__sancov_gen_cov_switch_values.28)
  switch i32 %and197.i, label %if.end192.i.if.end205.i_crit_edge [
    i32 1, label %if.end192.i.if.then204.i_crit_edge
    i32 3, label %if.end192.i.if.then204.i_crit_edge538
  ]

if.end192.i.if.then204.i_crit_edge538:            ; preds = %if.end192.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then204.i

if.end192.i.if.then204.i_crit_edge:               ; preds = %if.end192.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then204.i

if.end192.i.if.end205.i_crit_edge:                ; preds = %if.end192.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end205.i

if.then204.i:                                     ; preds = %if.end192.i.if.then204.i_crit_edge, %if.end192.i.if.then204.i_crit_edge538
  %RegFwHwTxQCtrl.i.i503 = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 106
  %116 = ptrtoint ptr %RegFwHwTxQCtrl.i.i503 to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %RegFwHwTxQCtrl.i.i503, align 1
  %118 = and i8 %117, -65
  store i8 %118, ptr %RegFwHwTxQCtrl.i.i503, align 1
  %call.i.i504 = tail call i32 @rtw_write8(ptr noundef %padapter, i32 noundef 1058, i8 noundef zeroext %118) #14
  %call3.i.i505 = tail call i32 @rtw_write8(ptr noundef %padapter, i32 noundef 1345, i8 noundef zeroext 100) #14
  %RegReg542.i.i506 = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 107
  %119 = ptrtoint ptr %RegReg542.i.i506 to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %RegReg542.i.i506, align 2
  %121 = and i8 %120, -2
  store i8 %121, ptr %RegReg542.i.i506, align 2
  %call8.i.i507 = tail call i32 @rtw_write8(ptr noundef %padapter, i32 noundef 1346, i8 noundef zeroext %121) #14
  tail call void @CheckFwRsvdPageContent(ptr noundef %padapter) #14
  br label %if.end205.i

if.end205.i:                                      ; preds = %if.then204.i, %if.end192.i.if.end205.i_crit_edge
  %call206.i = tail call zeroext i8 @rtw_read8(ptr noundef %padapter, i32 noundef 1360) #14
  %122 = and i8 %call206.i, -9
  %call210.i = tail call i32 @rtw_write8(ptr noundef %padapter, i32 noundef 1360, i8 noundef zeroext %122) #14
  %conv211.i = trunc i64 %sub196.i to i32
  %call212.i = tail call i32 @rtw_write32(ptr noundef %padapter, i32 noundef 1376, i32 noundef %conv211.i) #14
  %shr213.i = lshr i64 %sub196.i, 32
  %conv214.i = trunc i64 %shr213.i to i32
  %call215.i = tail call i32 @rtw_write32(ptr noundef %padapter, i32 noundef 1380, i32 noundef %conv214.i) #14
  %call216.i = tail call zeroext i8 @rtw_read8(ptr noundef %padapter, i32 noundef 1360) #14
  %123 = or i8 %call216.i, 8
  %call220.i = tail call i32 @rtw_write8(ptr noundef %padapter, i32 noundef 1360, i8 noundef zeroext %123) #14
  %124 = ptrtoint ptr %mlmext_info.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %mlmext_info.i, align 4
  %and222.i = and i32 %125, 3
  %126 = zext i32 %and222.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %126, ptr @__sancov_gen_cov_switch_values.29)
  switch i32 %and222.i, label %if.end205.i.sw.epilog291_crit_edge [
    i32 1, label %if.end205.i.if.then230.i_crit_edge
    i32 3, label %if.end205.i.if.then230.i_crit_edge539
  ]

if.end205.i.if.then230.i_crit_edge539:            ; preds = %if.end205.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then230.i

if.end205.i.if.then230.i_crit_edge:               ; preds = %if.end205.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then230.i

if.end205.i.sw.epilog291_crit_edge:               ; preds = %if.end205.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog291

if.then230.i:                                     ; preds = %if.end205.i.if.then230.i_crit_edge, %if.end205.i.if.then230.i_crit_edge539
  %127 = ptrtoint ptr %HalData to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %HalData, align 8
  %RegFwHwTxQCtrl.i5.i = getelementptr inbounds %struct.hal_com_data, ptr %128, i32 0, i32 106
  %129 = ptrtoint ptr %RegFwHwTxQCtrl.i5.i to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %RegFwHwTxQCtrl.i5.i, align 1
  %131 = or i8 %130, 64
  store i8 %131, ptr %RegFwHwTxQCtrl.i5.i, align 1
  %call.i6.i = tail call i32 @rtw_write8(ptr noundef %padapter, i32 noundef 1058, i8 noundef zeroext %131) #14
  %call3.i7.i = tail call i32 @rtw_write8(ptr noundef %padapter, i32 noundef 1345, i8 noundef zeroext -1) #14
  %RegReg542.i8.i = getelementptr inbounds %struct.hal_com_data, ptr %128, i32 0, i32 107
  %132 = ptrtoint ptr %RegReg542.i8.i to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %RegReg542.i8.i, align 2
  %134 = or i8 %133, 1
  store i8 %134, ptr %RegReg542.i8.i, align 2
  %call8.i9.i = tail call i32 @rtw_write8(ptr noundef %padapter, i32 noundef 1346, i8 noundef zeroext %134) #14
  br label %sw.epilog291

sw.bb51:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %call53 = tail call i32 @rtw_read32(ptr noundef %padapter, i32 noundef 1544) #14
  %135 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %val, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %136)
  %tobool.not = icmp eq i8 %136, 0
  %and56 = and i32 %call53, -193
  %masksel = select i1 %tobool.not, i32 0, i32 192
  %val3252.0 = or i32 %masksel, %and56
  %call58 = tail call i32 @rtw_write32(ptr noundef %padapter, i32 noundef 1544, i32 noundef %val3252.0) #14
  br label %sw.epilog291

sw.bb59:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %call.i508 = tail call i32 @rtw_write16(ptr noundef %padapter, i32 noundef 1700, i16 noundef zeroext 0) #14
  %call1.i509 = tail call i32 @rtw_write8(ptr noundef %padapter, i32 noundef 1363, i8 noundef zeroext 1) #14
  %call2.i510 = tail call zeroext i8 @rtw_read8(ptr noundef %padapter, i32 noundef 1360) #14
  %137 = or i8 %call2.i510, 16
  %call4.i = tail call i32 @rtw_write8(ptr noundef %padapter, i32 noundef 1360, i8 noundef zeroext %137) #14
  br label %sw.epilog291

sw.bb60:                                          ; preds = %entry
  %fw_state.i.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 1
  %call1.i511 = tail call i32 @rtw_read32(ptr noundef %padapter, i32 noundef 1544) #14
  %138 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %val, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %139)
  %tobool.not.i512 = icmp eq i8 %139, 0
  br i1 %tobool.not.i512, label %if.else.i515, label %if.then2.i

if.then2.i:                                       ; preds = %sw.bb60
  %and.i = and i32 %call1.i511, -129
  %call3.i = tail call i32 @rtw_write32(ptr noundef %padapter, i32 noundef 1544, i32 noundef %and.i) #14
  %call4.i513 = tail call i32 @rtw_write16(ptr noundef %padapter, i32 noundef 1700, i16 noundef zeroext 0) #14
  %140 = ptrtoint ptr %fw_state.i.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %fw_state.i.i, align 4
  %and.i2.i = and i32 %141, 104
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i2.i)
  %tobool.not.i3.not.i = icmp eq i32 %and.i2.i, 0
  br i1 %tobool.not.i3.not.i, label %if.then2.i.if.end11.i_crit_edge, label %if.then7.i

if.then2.i.if.end11.i_crit_edge:                  ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end11.i

if.then7.i:                                       ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #16
  %call8.i514 = tail call zeroext i8 @rtw_read8(ptr noundef %padapter, i32 noundef 1360) #14
  %142 = or i8 %call8.i514, 16
  %call10.i = tail call i32 @rtw_write8(ptr noundef %padapter, i32 noundef 1360, i8 noundef zeroext %142) #14
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.then7.i, %if.then2.i.if.end11.i_crit_edge
  %call12.i = tail call zeroext i16 @rtw_read16(ptr noundef %padapter, i32 noundef 1088) #14
  %RegRRSR.i = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 111
  %143 = ptrtoint ptr %RegRRSR.i to i32
  call void @__asan_store2_noabort(i32 %143)
  store i16 %call12.i, ptr %RegRRSR.i, align 2
  br label %hw_var_set_mlme_sitesurvey.exit

if.else.i515:                                     ; preds = %sw.bb60
  %144 = ptrtoint ptr %fw_state.i.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %fw_state.i.i, align 4
  %and.i6.i = and i32 %145, 17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i6.i)
  %tobool.not.i7.not.i = icmp eq i32 %and.i6.i, 0
  br i1 %tobool.not.i7.not.i, label %if.else.i515.if.end17.i_crit_edge, label %if.then15.i

if.else.i515.if.end17.i_crit_edge:                ; preds = %if.else.i515
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end17.i

if.then15.i:                                      ; preds = %if.else.i515
  call void @__sanitizer_cov_trace_pc() #16
  %call16.i = tail call i32 @rtw_write16(ptr noundef %padapter, i32 noundef 1700, i16 noundef zeroext -1) #14
  br label %if.end17.i

if.end17.i:                                       ; preds = %if.then15.i, %if.else.i515.if.end17.i_crit_edge
  %146 = ptrtoint ptr %fw_state.i.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %fw_state.i.i, align 4
  %and.i10.i = and i32 %147, 104
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i10.i)
  %tobool.not.i11.not.i = icmp eq i32 %and.i10.i, 0
  br i1 %tobool.not.i11.not.i, label %if.end17.i.if.end26.i_crit_edge, label %if.then20.i

if.end17.i.if.end26.i_crit_edge:                  ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end26.i

if.then20.i:                                      ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #16
  %call21.i516 = tail call zeroext i8 @rtw_read8(ptr noundef %padapter, i32 noundef 1360) #14
  %148 = and i8 %call21.i516, -17
  %call25.i517 = tail call i32 @rtw_write8(ptr noundef %padapter, i32 noundef 1360, i8 noundef zeroext %148) #14
  br label %if.end26.i

if.end26.i:                                       ; preds = %if.then20.i, %if.end17.i.if.end26.i_crit_edge
  %or27.i = or i32 %call1.i511, 128
  %call28.i518 = tail call i32 @rtw_write32(ptr noundef %padapter, i32 noundef 1544, i32 noundef %or27.i) #14
  %RegRRSR29.i = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 111
  %149 = ptrtoint ptr %RegRRSR29.i to i32
  call void @__asan_load2_noabort(i32 %149)
  %150 = load i16, ptr %RegRRSR29.i, align 2
  %call30.i519 = tail call i32 @rtw_write16(ptr noundef %padapter, i32 noundef 1088, i16 noundef zeroext %150) #14
  br label %hw_var_set_mlme_sitesurvey.exit

hw_var_set_mlme_sitesurvey.exit:                  ; preds = %if.end26.i, %if.end11.i
  %151 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %151)
  %152 = load i8, ptr %val, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %152)
  %tobool62.not = icmp ne i8 %152, 0
  %conv63 = zext i1 %tobool62.not to i8
  tail call void @hal_btcoex_ScanNotify(ptr noundef %padapter, i8 noundef zeroext %conv63) #14
  br label %sw.epilog291

sw.bb64:                                          ; preds = %entry
  %153 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %153)
  %154 = load i8, ptr %val, align 1
  %155 = zext i8 %154 to i64
  call void @__sanitizer_cov_trace_switch(i64 %155, ptr @__sancov_gen_cov_switch_values.30)
  switch i8 %154, label %sw.bb64.hw_var_set_mlme_join.exit_crit_edge [
    i8 0, label %if.then.i527
    i8 1, label %if.then19.i
    i8 2, label %if.then25.i
  ]

sw.bb64.hw_var_set_mlme_join.exit_crit_edge:      ; preds = %sw.bb64
  call void @__sanitizer_cov_trace_pc() #16
  br label %hw_var_set_mlme_join.exit

if.then.i527:                                     ; preds = %sw.bb64
  %call.i520 = tail call i32 @rtw_write16(ptr noundef %padapter, i32 noundef 1700, i16 noundef zeroext -1) #14
  %call2.i521 = tail call i32 @rtw_read32(ptr noundef %padapter, i32 noundef 1544) #14
  %in_cta_test.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 63
  %156 = ptrtoint ptr %in_cta_test.i to i32
  call void @__asan_load1_noabort(i32 %156)
  %157 = load i8, ptr %in_cta_test.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %157)
  %tobool.not.i522 = icmp eq i8 %157, 0
  %and.i523 = and i32 %call2.i521, -193
  %masksel.i = select i1 %tobool.not.i522, i32 192, i32 0
  %val32.0.i = or i32 %masksel.i, %and.i523
  %call4.i524 = tail call i32 @rtw_write32(ptr noundef %padapter, i32 noundef 1544, i32 noundef %val32.0.i) #14
  %fw_state.i.i525 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 1
  %158 = ptrtoint ptr %fw_state.i.i525 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %fw_state.i.i525, align 4
  %and.i.i526 = and i32 %159, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i526)
  %tobool.not.i.not.i = icmp eq i32 %and.i.i526, 0
  br i1 %tobool.not.i.not.i, label %if.then.i527.hw_var_set_mlme_join.exit_crit_edge, label %if.then8.i

if.then.i527.hw_var_set_mlme_join.exit_crit_edge: ; preds = %if.then.i527
  call void @__sanitizer_cov_trace_pc() #16
  br label %hw_var_set_mlme_join.exit

if.then8.i:                                       ; preds = %if.then.i527
  call void @__sanitizer_cov_trace_pc() #16
  %CustomerID.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 15, i32 6
  %160 = ptrtoint ptr %CustomerID.i to i32
  call void @__asan_load2_noabort(i32 %160)
  %161 = load i16, ptr %CustomerID.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 18, i16 %161)
  %cmp10.i = icmp eq i16 %161, 18
  %cond.i = select i1 %cmp10.i, i16 7, i16 48
  br label %hw_var_set_mlme_join.exit

if.then19.i:                                      ; preds = %sw.bb64
  call void @__sanitizer_cov_trace_pc() #16
  %call20.i528 = tail call i32 @rtw_write16(ptr noundef %padapter, i32 noundef 1700, i16 noundef zeroext 0) #14
  br label %hw_var_set_mlme_join.exit

if.then25.i:                                      ; preds = %sw.bb64
  call void @__sanitizer_cov_trace_pc() #16
  %call26.i529 = tail call zeroext i8 @rtw_read8(ptr noundef %padapter, i32 noundef 1360) #14
  %162 = and i8 %call26.i529, -17
  %call30.i530 = tail call i32 @rtw_write8(ptr noundef %padapter, i32 noundef 1360, i8 noundef zeroext %162) #14
  %fw_state.i1.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 1
  %163 = ptrtoint ptr %fw_state.i1.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %fw_state.i1.i, align 4
  %and.i2.i531 = and i32 %164, 96
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i2.i531)
  %tobool.not.i3.not.i532 = icmp eq i32 %and.i2.i531, 0
  %spec.select.i = select i1 %tobool.not.i3.not.i532, i16 48, i16 7
  br label %hw_var_set_mlme_join.exit

hw_var_set_mlme_join.exit:                        ; preds = %if.then25.i, %if.then19.i, %if.then8.i, %if.then.i527.hw_var_set_mlme_join.exit_crit_edge, %sw.bb64.hw_var_set_mlme_join.exit_crit_edge
  %RetryLimit.0.i = phi i16 [ %cond.i, %if.then8.i ], [ 48, %if.then19.i ], [ 7, %if.then.i527.hw_var_set_mlme_join.exit_crit_edge ], [ 48, %sw.bb64.hw_var_set_mlme_join.exit_crit_edge ], [ %spec.select.i, %if.then25.i ]
  %or41.i = mul nuw nsw i16 %RetryLimit.0.i, 257
  %call43.i = tail call i32 @rtw_write16(ptr noundef %padapter, i32 noundef 1066, i16 noundef zeroext %or41.i) #14
  %165 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %165)
  %166 = load i8, ptr %val, align 1
  %167 = zext i8 %166 to i64
  call void @__sanitizer_cov_trace_switch(i64 %167, ptr @__sancov_gen_cov_switch_values.31)
  switch i8 %166, label %hw_var_set_mlme_join.exit.sw.epilog291_crit_edge [
    i8 0, label %sw.bb66
    i8 1, label %sw.bb67
  ]

hw_var_set_mlme_join.exit.sw.epilog291_crit_edge: ; preds = %hw_var_set_mlme_join.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog291

sw.bb66:                                          ; preds = %hw_var_set_mlme_join.exit
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @hal_btcoex_ConnectNotify(ptr noundef %padapter, i8 noundef zeroext 1) #14
  br label %sw.epilog291

sw.bb67:                                          ; preds = %hw_var_set_mlme_join.exit
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @hal_btcoex_ConnectNotify(ptr noundef %padapter, i8 noundef zeroext 0) #14
  br label %sw.epilog291

sw.bb68:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %call69 = tail call i32 @rtw_read32(ptr noundef %padapter, i32 noundef 1544) #14
  %or70 = or i32 %call69, 4
  %call71 = tail call i32 @rtw_write32(ptr noundef %padapter, i32 noundef 1544, i32 noundef %or70) #14
  br label %sw.epilog291

sw.bb72:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %call73 = tail call i32 @rtw_read32(ptr noundef %padapter, i32 noundef 1544) #14
  %and74 = and i32 %call73, -5
  %call75 = tail call i32 @rtw_write32(ptr noundef %padapter, i32 noundef 1544, i32 noundef %and74) #14
  br label %sw.epilog291

sw.bb76:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %168 = ptrtoint ptr %val to i32
  call void @__asan_load2_noabort(i32 %168)
  %169 = load i16, ptr %val, align 2
  %call77 = tail call i32 @rtw_write16(ptr noundef %padapter, i32 noundef 1364, i16 noundef zeroext %169) #14
  br label %sw.epilog291

sw.bb78:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %170 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %170)
  %171 = load i8, ptr %val, align 1
  %call79 = tail call i32 @rtw_write8(ptr noundef %padapter, i32 noundef 1307, i8 noundef zeroext %171) #14
  br label %sw.epilog291

sw.bb80:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %172 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %172)
  %173 = load i8, ptr %val, align 1
  %call81 = tail call i32 @rtw_write8(ptr noundef %padapter, i32 noundef 1596, i8 noundef zeroext %173) #14
  %arrayidx82 = getelementptr i8, ptr %val, i32 1
  %174 = ptrtoint ptr %arrayidx82 to i32
  call void @__asan_load1_noabort(i32 %174)
  %175 = load i8, ptr %arrayidx82, align 1
  %call83 = tail call i32 @rtw_write8(ptr noundef %padapter, i32 noundef 1597, i8 noundef zeroext %175) #14
  %arrayidx84 = getelementptr i8, ptr %val, i32 2
  %176 = ptrtoint ptr %arrayidx84 to i32
  call void @__asan_load1_noabort(i32 %176)
  %177 = load i8, ptr %arrayidx84, align 1
  %call85 = tail call i32 @rtw_write8(ptr noundef %padapter, i32 noundef 1598, i8 noundef zeroext %177) #14
  %arrayidx86 = getelementptr i8, ptr %val, i32 3
  %178 = ptrtoint ptr %arrayidx86 to i32
  call void @__asan_load1_noabort(i32 %178)
  %179 = load i8, ptr %arrayidx86, align 1
  %call87 = tail call i32 @rtw_write8(ptr noundef %padapter, i32 noundef 1599, i8 noundef zeroext %179) #14
  br label %sw.epilog291

sw.bb88:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %180 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %180)
  %181 = load i8, ptr %val, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %181)
  %tobool89.not = icmp eq i8 %181, 0
  %spec.select = select i1 %tobool89.not, i8 0, i8 -128
  %call95 = tail call i32 @rtw_write8(ptr noundef %padapter, i32 noundef 1090, i8 noundef zeroext %spec.select) #14
  br label %sw.epilog291

sw.bb96:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %182 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %182)
  %183 = load i8, ptr %val, align 1
  %184 = and i8 %183, 3
  %185 = or i8 %184, 16
  %or109 = zext i8 %185 to i32
  %conv113 = zext i8 %183 to i32
  %mul = shl nuw nsw i32 %conv113, 3
  %or116 = or i32 %mul, -2147418112
  %call117 = tail call i32 @rtw_write32(ptr noundef %padapter, i32 noundef 1652, i32 noundef %or109) #14
  %call118 = tail call i32 @rtw_write32(ptr noundef %padapter, i32 noundef 1648, i32 noundef %or116) #14
  %or116.1 = or i32 %mul, -2147418111
  %call117.1 = tail call i32 @rtw_write32(ptr noundef %padapter, i32 noundef 1652, i32 noundef 0) #14
  %call118.1 = tail call i32 @rtw_write32(ptr noundef %padapter, i32 noundef 1648, i32 noundef %or116.1) #14
  %or116.2 = or i32 %mul, -2147418110
  %call117.2 = tail call i32 @rtw_write32(ptr noundef %padapter, i32 noundef 1652, i32 noundef 0) #14
  %call118.2 = tail call i32 @rtw_write32(ptr noundef %padapter, i32 noundef 1648, i32 noundef %or116.2) #14
  %or116.3 = or i32 %mul, -2147418109
  %call117.3 = tail call i32 @rtw_write32(ptr noundef %padapter, i32 noundef 1652, i32 noundef 0) #14
  %call118.3 = tail call i32 @rtw_write32(ptr noundef %padapter, i32 noundef 1648, i32 noundef %or116.3) #14
  %or116.4 = or i32 %mul, -2147418108
  %call117.4 = tail call i32 @rtw_write32(ptr noundef %padapter, i32 noundef 1652, i32 noundef 0) #14
  %call118.4 = tail call i32 @rtw_write32(ptr noundef %padapter, i32 noundef 1648, i32 noundef %or116.4) #14
  %or116.5 = or i32 %mul, -2147418107
  %call117.5 = tail call i32 @rtw_write32(ptr noundef %padapter, i32 noundef 1652, i32 noundef 0) #14
  %call118.5 = tail call i32 @rtw_write32(ptr noundef %padapter, i32 noundef 1648, i32 noundef %or116.5) #14
  %or116.6 = or i32 %mul, -2147418106
  %call117.6 = tail call i32 @rtw_write32(ptr noundef %padapter, i32 noundef 1652, i32 noundef 0) #14
  %call118.6 = tail call i32 @rtw_write32(ptr noundef %padapter, i32 noundef 1648, i32 noundef %or116.6) #14
  %or116.7 = or i32 %mul, -2147418105
  %call117.7 = tail call i32 @rtw_write32(ptr noundef %padapter, i32 noundef 1652, i32 noundef 0) #14
  %call118.7 = tail call i32 @rtw_write32(ptr noundef %padapter, i32 noundef 1648, i32 noundef %or116.7) #14
  br label %sw.epilog291

sw.bb119:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %call120 = tail call i32 @rtw_write32(ptr noundef %padapter, i32 noundef 1648, i32 noundef -1073741824) #14
  br label %sw.epilog291

sw.bb121:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %186 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %val, align 4
  %call123 = tail call i32 @rtw_write32(ptr noundef %padapter, i32 noundef 1652, i32 noundef %187) #14
  %arrayidx124 = getelementptr i32, ptr %val, i32 1
  %188 = ptrtoint ptr %arrayidx124 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %arrayidx124, align 4
  %or125 = or i32 %189, -2147418112
  %call126 = tail call i32 @rtw_write32(ptr noundef %padapter, i32 noundef 1648, i32 noundef %or125) #14
  br label %sw.epilog291

sw.bb127:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %190 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %val, align 4
  %call128 = tail call i32 @rtw_write32(ptr noundef %padapter, i32 noundef 1280, i32 noundef %191) #14
  br label %sw.epilog291

sw.bb129:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %192 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %val, align 4
  %call130 = tail call i32 @rtw_write32(ptr noundef %padapter, i32 noundef 1284, i32 noundef %193) #14
  br label %sw.epilog291

sw.bb131:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %194 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %val, align 4
  %AcParam_BE = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 98
  %196 = ptrtoint ptr %AcParam_BE to i32
  call void @__asan_store4_noabort(i32 %196)
  store i32 %195, ptr %AcParam_BE, align 4
  %197 = load i32, ptr %val, align 4
  %call133 = tail call i32 @rtw_write32(ptr noundef %padapter, i32 noundef 1288, i32 noundef %197) #14
  br label %sw.epilog291

sw.bb134:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %198 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %val, align 4
  %call135 = tail call i32 @rtw_write32(ptr noundef %padapter, i32 noundef 1292, i32 noundef %199) #14
  br label %sw.epilog291

sw.bb136:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %200 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %200)
  %201 = load i8, ptr %val, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %201)
  %cmp138.not = icmp eq i8 %201, 0
  %202 = and i8 %201, 14
  %203 = or i8 %202, 1
  %hwctrl.2 = select i1 %cmp138.not, i8 0, i8 %203
  %call169 = tail call i32 @rtw_write8(ptr noundef %padapter, i32 noundef 1472, i8 noundef zeroext %hwctrl.2) #14
  br label %sw.epilog291

sw.bb170:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %204 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %204)
  %205 = load i8, ptr %val, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %205)
  %cmp172 = icmp ult i8 %205, 2
  %conv171 = zext i8 %205 to i32
  %shl176 = shl i32 8192, %conv171
  %sub = add i32 %shl176, -1
  %AMPDULen.0 = select i1 %cmp172, i32 %sub, i32 32767
  %call179 = tail call i32 @rtw_write32(ptr noundef %padapter, i32 noundef 1112, i32 noundef %AMPDULen.0) #14
  br label %sw.epilog291

sw.bb180:                                         ; preds = %entry
  %206 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %206)
  %207 = load i8, ptr %val, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %207)
  %cmp182.not = icmp eq i8 %207, 1
  br i1 %cmp182.not, label %sw.bb180.if.end185_crit_edge, label %if.then184

sw.bb180.if.end185_crit_edge:                     ; preds = %sw.bb180
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end185

if.then184:                                       ; preds = %sw.bb180
  call void @__sanitizer_cov_trace_pc() #16
  %odmpriv = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 141
  tail call void @ODM_RF_Saving(ptr noundef %odmpriv, i8 noundef zeroext 1) #14
  br label %if.end185

if.end185:                                        ; preds = %if.then184, %sw.bb180.if.end185_crit_edge
  tail call void @rtl8723b_set_FwPwrMode_cmd(ptr noundef %padapter, i8 noundef zeroext %207) #14
  br label %sw.epilog291

sw.bb186:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @rtl8723b_set_FwPsTuneParam_cmd(ptr noundef %padapter) #14
  br label %sw.epilog291

sw.bb187:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %208 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %208)
  %209 = load i8, ptr %val, align 1
  tail call void @rtl8723b_set_FwJoinBssRpt_cmd(ptr noundef %padapter, i8 noundef zeroext %209) #14
  br label %sw.epilog291

sw.bb188:                                         ; preds = %entry
  %odmpriv189 = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 141
  %210 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %211)
  %cmp190 = icmp eq i32 %211, 255
  br i1 %cmp190, label %if.then192, label %if.else194

if.then192:                                       ; preds = %sw.bb188
  call void @__sanitizer_cov_trace_pc() #16
  %BackupIGValue = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 141, i32 131, i32 13
  %212 = ptrtoint ptr %BackupIGValue to i32
  call void @__asan_load1_noabort(i32 %212)
  %213 = load i8, ptr %BackupIGValue, align 1
  tail call void @ODM_Write_DIG(ptr noundef %odmpriv189, i8 noundef zeroext %213) #14
  br label %sw.epilog291

if.else194:                                       ; preds = %sw.bb188
  call void @__sanitizer_cov_trace_pc() #16
  %CurIGValue = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 141, i32 131, i32 12
  %214 = ptrtoint ptr %CurIGValue to i32
  call void @__asan_load1_noabort(i32 %214)
  %215 = load i8, ptr %CurIGValue, align 4
  %BackupIGValue195 = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 141, i32 131, i32 13
  %216 = ptrtoint ptr %BackupIGValue195 to i32
  call void @__asan_store1_noabort(i32 %216)
  store i8 %215, ptr %BackupIGValue195, align 1
  %conv197 = trunc i32 %211 to i8
  tail call void @ODM_Write_DIG(ptr noundef %odmpriv189, i8 noundef zeroext %conv197) #14
  br label %sw.epilog291

sw.bb199:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %217 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %217)
  %218 = load i8, ptr %val, align 1
  %EfuseUsedPercentage = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 42
  %219 = ptrtoint ptr %EfuseUsedPercentage to i32
  call void @__asan_store1_noabort(i32 %219)
  store i8 %218, ptr %EfuseUsedPercentage, align 4
  br label %sw.epilog291

sw.bb200:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %220 = ptrtoint ptr %val to i32
  call void @__asan_load2_noabort(i32 %220)
  %221 = load i16, ptr %val, align 2
  %EfuseUsedBytes = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 43
  %222 = ptrtoint ptr %EfuseUsedBytes to i32
  call void @__asan_store2_noabort(i32 %222)
  store i16 %221, ptr %EfuseUsedBytes, align 2
  br label %sw.epilog291

sw.bb201:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %223 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %223)
  %224 = load i8, ptr %val, align 1
  %BTEfuseUsedPercentage = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 44, i32 6
  %225 = ptrtoint ptr %BTEfuseUsedPercentage to i32
  call void @__asan_store1_noabort(i32 %225)
  store i8 %224, ptr %BTEfuseUsedPercentage, align 2
  br label %sw.epilog291

sw.bb202:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %226 = ptrtoint ptr %val to i32
  call void @__asan_load2_noabort(i32 %226)
  %227 = load i16, ptr %val, align 2
  %BTEfuseUsedBytes = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 44, i32 5
  %228 = ptrtoint ptr %BTEfuseUsedBytes to i32
  call void @__asan_store2_noabort(i32 %228)
  store i16 %227, ptr %BTEfuseUsedBytes, align 8
  br label %sw.epilog291

sw.bb204:                                         ; preds = %entry
  %dvobj = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 3
  %229 = ptrtoint ptr %dvobj to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %dvobj, align 4
  %call205 = tail call i32 @rtw_write8(ptr noundef %padapter, i32 noundef 1314, i8 noundef zeroext -1) #14
  %call206 = tail call zeroext i16 @rtw_read16(ptr noundef %padapter, i32 noundef 1244) #14
  %nqos_ssn = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 9, i32 41
  %231 = ptrtoint ptr %nqos_ssn to i32
  call void @__asan_store2_noabort(i32 %231)
  store i16 %call206, ptr %nqos_ssn, align 4
  %bkeepfwalive = getelementptr inbounds %struct.dvobj_priv, ptr %230, i32 0, i32 22, i32 57
  %232 = ptrtoint ptr %bkeepfwalive to i32
  call void @__asan_load1_noabort(i32 %232)
  %233 = load i8, ptr %bkeepfwalive, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %233)
  %tobool207.not = icmp eq i8 %233, 0
  br i1 %tobool207.not, label %if.then208, label %sw.bb204.sw.epilog291_crit_edge

sw.bb204.sw.epilog291_crit_edge:                  ; preds = %sw.bb204
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog291

if.then208:                                       ; preds = %sw.bb204
  %call209 = tail call i32 @rtw_read32(ptr noundef %padapter, i32 noundef 644) #14
  %or210 = or i32 %call209, 262144
  %call211 = tail call i32 @rtw_write32(ptr noundef %padapter, i32 noundef 644, i32 noundef %or210) #14
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %if.then208
  %trycnt.0 = phi i8 [ 100, %if.then208 ], [ %dec, %do.body.do.body_crit_edge ]
  %call212 = tail call i32 @rtw_read32(ptr noundef %padapter, i32 noundef 644) #14
  %and213 = and i32 %call212, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and213)
  %tobool214.not = icmp ne i32 %and213, 0
  %dec = add nsw i8 %trycnt.0, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %dec)
  %tobool217.not = icmp eq i8 %dec, 0
  %or.cond486 = select i1 %tobool214.not, i1 true, i1 %tobool217.not
  br i1 %or.cond486, label %do.end, label %do.body.do.body_crit_edge

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  %call218 = tail call i32 @rtw_write16(ptr noundef %padapter, i32 noundef 532, i16 noundef zeroext 0) #14
  %call219 = tail call i32 @rtw_write32(ptr noundef %padapter, i32 noundef 512, i32 noundef -2147483648) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %234 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %234(i32 noundef 429496000) #14
  br label %sw.epilog291

sw.bb221:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %235 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %235)
  %236 = load i8, ptr %val, align 1
  %bMacPwrCtrlOn = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 127
  %237 = ptrtoint ptr %bMacPwrCtrlOn to i32
  call void @__asan_store1_noabort(i32 %237)
  store i8 %236, ptr %bMacPwrCtrlOn, align 8
  br label %sw.epilog291

sw.bb222:                                         ; preds = %entry
  %238 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32640, i32 %239)
  %cmp223 = icmp ugt i32 %239, 32640
  br i1 %cmp223, label %sw.bb222.sw.epilog291_crit_edge, label %if.end226

sw.bb222.sw.epilog291_crit_edge:                  ; preds = %sw.bb222
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog291

if.end226:                                        ; preds = %sw.bb222
  call void @__sanitizer_cov_trace_pc() #16
  %sub228 = add nuw nsw i32 %239, 127
  %div483 = lshr i32 %sub228, 7
  %conv229 = trunc i32 %div483 to i8
  %call230 = tail call i32 @rtw_write8(ptr noundef %padapter, i32 noundef 1618, i8 noundef zeroext %conv229) #14
  br label %sw.epilog291

sw.bb231:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %240 = ptrtoint ptr %val to i32
  call void @__asan_load2_noabort(i32 %240)
  %241 = load i16, ptr %val, align 2
  %conv234 = trunc i16 %241 to i8
  %242 = lshr i16 %241, 8
  %conv236 = trunc i16 %242 to i8
  tail call void @rtl8723b_set_FwMediaStatusRpt_cmd(ptr noundef %padapter, i8 noundef zeroext %conv234, i8 noundef zeroext %conv236) #14
  br label %sw.epilog291

sw.bb237:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %call238 = tail call zeroext i8 @rtw_read8(ptr noundef %padapter, i32 noundef 522) #14
  %243 = or i8 %call238, 1
  %call242 = tail call i32 @rtw_write8(ptr noundef %padapter, i32 noundef 522, i8 noundef zeroext %243) #14
  br label %sw.epilog291

sw.bb243:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %call244 = tail call zeroext i8 @rtw_read8(ptr noundef %padapter, i32 noundef 554) #14
  %244 = and i8 %call244, -17
  %call248 = tail call i32 @rtw_write8(ptr noundef %padapter, i32 noundef 554, i8 noundef zeroext %244) #14
  br label %sw.epilog291

sw.bb249:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %bNeedIQK = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 94
  %245 = ptrtoint ptr %bNeedIQK to i32
  call void @__asan_store1_noabort(i32 %245)
  store i8 1, ptr %bNeedIQK, align 8
  br label %sw.epilog291

sw.bb250:                                         ; preds = %entry
  %fw_state.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 1
  %246 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load i32, ptr %fw_state.i, align 4
  %and.i533 = and i32 %247, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i533)
  %tobool.not.i534.not = icmp eq i32 %and.i533, 0
  br i1 %tobool.not.i534.not, label %if.else255, label %if.then254

if.then254:                                       ; preds = %sw.bb250
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @rtl8723b_download_BTCoex_AP_mode_rsvd_page(ptr noundef %padapter) #14
  br label %sw.epilog291

if.else255:                                       ; preds = %sw.bb250
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @rtl8723b_download_rsvd_page(ptr noundef %padapter, i8 noundef zeroext 1) #14
  br label %sw.epilog291

sw.bb257:                                         ; preds = %entry
  %248 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %249)
  %cmp258 = icmp ugt i32 %249, 31
  br i1 %cmp258, label %sw.bb257.sw.epilog291_crit_edge, label %if.end261

sw.bb257.sw.epilog291_crit_edge:                  ; preds = %sw.bb257
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog291

if.end261:                                        ; preds = %sw.bb257
  %call263 = tail call i32 @rtw_read32(ptr noundef %padapter, i32 noundef 1236) #14
  %shl265 = shl nuw i32 1, %249
  %and266 = and i32 %call263, %shl265
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and266)
  %tobool267.not = icmp eq i32 %and266, 0
  br i1 %tobool267.not, label %if.end269, label %if.end261.sw.epilog291_crit_edge

if.end261.sw.epilog291_crit_edge:                 ; preds = %if.end261
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog291

if.end269:                                        ; preds = %if.end261
  call void @__sanitizer_cov_trace_pc() #16
  %or272 = or i32 %call263, %shl265
  %call273 = tail call i32 @rtw_write32(ptr noundef %padapter, i32 noundef 1236, i32 noundef %or272) #14
  br label %sw.epilog291

sw.bb274:                                         ; preds = %entry
  %250 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %251)
  %cmp275 = icmp ugt i32 %251, 31
  br i1 %cmp275, label %sw.bb274.sw.epilog291_crit_edge, label %if.end278

sw.bb274.sw.epilog291_crit_edge:                  ; preds = %sw.bb274
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog291

if.end278:                                        ; preds = %sw.bb274
  %call280 = tail call i32 @rtw_read32(ptr noundef %padapter, i32 noundef 1236) #14
  %shl282 = shl nuw i32 1, %251
  %and283 = and i32 %call280, %shl282
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and283)
  %tobool284.not = icmp eq i32 %and283, 0
  br i1 %tobool284.not, label %if.end278.sw.epilog291_crit_edge, label %if.end286

if.end278.sw.epilog291_crit_edge:                 ; preds = %if.end278
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog291

if.end286:                                        ; preds = %if.end278
  call void @__sanitizer_cov_trace_pc() #16
  %neg = xor i32 %shl282, -1
  %and289 = and i32 %call280, %neg
  %call290 = tail call i32 @rtw_write32(ptr noundef %padapter, i32 noundef 1236, i32 noundef %and289) #14
  br label %sw.epilog291

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @SetHwReg(ptr noundef %padapter, i8 noundef zeroext %variable, ptr noundef %val) #14
  br label %sw.epilog291

sw.epilog291:                                     ; preds = %sw.default, %if.end286, %if.end278.sw.epilog291_crit_edge, %sw.bb274.sw.epilog291_crit_edge, %if.end269, %if.end261.sw.epilog291_crit_edge, %sw.bb257.sw.epilog291_crit_edge, %if.else255, %if.then254, %sw.bb249, %sw.bb243, %sw.bb237, %sw.bb231, %if.end226, %sw.bb222.sw.epilog291_crit_edge, %sw.bb221, %do.end, %sw.bb204.sw.epilog291_crit_edge, %sw.bb202, %sw.bb201, %sw.bb200, %sw.bb199, %if.else194, %if.then192, %sw.bb187, %sw.bb186, %if.end185, %sw.bb170, %sw.bb136, %sw.bb134, %sw.bb131, %sw.bb129, %sw.bb127, %sw.bb121, %sw.bb119, %sw.bb96, %sw.bb88, %sw.bb80, %sw.bb78, %sw.bb76, %sw.bb72, %sw.bb68, %sw.bb67, %sw.bb66, %hw_var_set_mlme_join.exit.sw.epilog291_crit_edge, %hw_var_set_mlme_sitesurvey.exit, %sw.bb59, %sw.bb51, %if.then230.i, %if.end205.i.sw.epilog291_crit_edge, %hw_var_set_bcn_func.exit, %sw.bb47, %if.end40, %sw.bb19, %sw.bb18, %if.then18.i, %if.then12.i, %if.then.i, %sw.bb17.sw.epilog291_crit_edge, %sw.bb7, %sw.bb
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @HalSetBrateCfg(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @hal_btcoex_ScanNotify(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @hal_btcoex_ConnectNotify(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ODM_RF_Saving(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl8723b_set_FwPwrMode_cmd(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl8723b_set_FwPsTuneParam_cmd(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl8723b_set_FwJoinBssRpt_cmd(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ODM_Write_DIG(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl8723b_set_FwMediaStatusRpt_cmd(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl8723b_download_BTCoex_AP_mode_rsvd_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl8723b_download_rsvd_page(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @SetHwReg(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @GetHwReg8723B(ptr noundef %padapter, i8 noundef zeroext %variable, ptr noundef %val) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %HalData = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 18
  %0 = ptrtoint ptr %HalData to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %HalData, align 8
  %2 = zext i8 %variable to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.32)
  switch i8 %variable, label %sw.default [
    i8 7, label %sw.bb
    i8 22, label %sw.bb1
    i8 45, label %sw.bb5
    i8 59, label %sw.bb14
    i8 60, label %sw.bb15
    i8 61, label %sw.bb16
    i8 62, label %sw.bb17
    i8 66, label %sw.bb19
    i8 73, label %sw.bb20
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %call = tail call zeroext i8 @rtw_read8(ptr noundef %padapter, i32 noundef 1314) #14
  %3 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %call, ptr %val, align 1
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %call2 = tail call zeroext i8 @rtw_read8(ptr noundef %padapter, i32 noundef 522) #14
  %4 = and i8 %call2, 1
  %5 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %4, ptr %val, align 1
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  %bSurpriseRemoved = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 22
  %6 = ptrtoint ptr %bSurpriseRemoved to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bSurpriseRemoved, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool6.not = icmp eq i32 %7, 0
  br i1 %tobool6.not, label %lor.lhs.false, label %sw.bb5.if.then_crit_edge

sw.bb5.if.then_crit_edge:                         ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

lor.lhs.false:                                    ; preds = %sw.bb5
  %dvobj = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 3
  %8 = ptrtoint ptr %dvobj to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dvobj, align 4
  %rf_pwrstate = getelementptr inbounds %struct.dvobj_priv, ptr %9, i32 0, i32 22, i32 53
  %10 = ptrtoint ptr %rf_pwrstate to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rf_pwrstate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %11)
  %cmp = icmp eq i32 %11, 2
  br i1 %cmp, label %lor.lhs.false.if.then_crit_edge, label %if.else

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %sw.bb5.if.then_crit_edge
  %12 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %val, align 1
  br label %sw.epilog

if.else:                                          ; preds = %lor.lhs.false
  %call8 = tail call i32 @rtw_read32(ptr noundef %padapter, i32 noundef 1544) #14
  %and9 = and i32 %call8, 458752
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.else12, label %if.then11

if.then11:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  %13 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %val, align 1
  br label %sw.epilog

if.else12:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  %14 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %val, align 1
  br label %sw.epilog

sw.bb14:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %EfuseUsedPercentage = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 42
  %15 = ptrtoint ptr %EfuseUsedPercentage to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %EfuseUsedPercentage, align 4
  %17 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %val, align 1
  br label %sw.epilog

sw.bb15:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %EfuseUsedBytes = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 43
  %18 = ptrtoint ptr %EfuseUsedBytes to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %EfuseUsedBytes, align 2
  %20 = ptrtoint ptr %val to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %19, ptr %val, align 2
  br label %sw.epilog

sw.bb16:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %BTEfuseUsedPercentage = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 44, i32 6
  %21 = ptrtoint ptr %BTEfuseUsedPercentage to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %BTEfuseUsedPercentage, align 2
  %23 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %22, ptr %val, align 1
  br label %sw.epilog

sw.bb17:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %BTEfuseUsedBytes = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 44, i32 5
  %24 = ptrtoint ptr %BTEfuseUsedBytes to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %BTEfuseUsedBytes, align 8
  %26 = ptrtoint ptr %val to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %25, ptr %val, align 2
  br label %sw.epilog

sw.bb19:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %bMacPwrCtrlOn = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 127
  %27 = ptrtoint ptr %bMacPwrCtrlOn to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %bMacPwrCtrlOn, align 8
  %29 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %28, ptr %val, align 1
  br label %sw.epilog

sw.bb20:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %call21 = tail call zeroext i16 @rtw_read16(ptr noundef %padapter, i32 noundef 1050) #14
  %30 = lshr i16 %call21, 10
  %31 = trunc i16 %30 to i8
  %32 = and i8 %31, 1
  %33 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %32, ptr %val, align 1
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @GetHwReg(ptr noundef %padapter, i8 noundef zeroext %variable, ptr noundef %val) #14
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb20, %sw.bb19, %sw.bb17, %sw.bb16, %sw.bb15, %sw.bb14, %if.else12, %if.then11, %if.then, %sw.bb1, %sw.bb
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @GetHwReg(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @SetHalDefVar8723B(ptr noundef %padapter, i32 noundef %variable, ptr noundef %pval) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i8 @SetHalDefVar(ptr noundef %padapter, i32 noundef %variable, ptr noundef %pval) #14
  ret i8 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @SetHalDefVar(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @GetHalDefVar8723B(ptr noundef %padapter, i32 noundef %variable, ptr noundef %pval) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %variable to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.33)
  switch i32 %variable, label %sw.default [
    i32 4, label %sw.bb
    i32 5, label %sw.bb1
    i32 17, label %sw.bb2
    i32 11, label %entry.sw.bb3_crit_edge
    i32 12, label %entry.sw.bb3_crit_edge41
    i32 13, label %sw.bb4
    i32 14, label %sw.bb5
    i32 15, label %entry.sw.bb6_crit_edge
    i32 16, label %entry.sw.bb6_crit_edge42
    i32 18, label %sw.bb7
    i32 24, label %sw.bb16
    i32 30, label %sw.bb17
  ]

entry.sw.bb6_crit_edge42:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb6

entry.sw.bb6_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb6

entry.sw.bb3_crit_edge41:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb3

entry.sw.bb3_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb3

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %1 = ptrtoint ptr %pval to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 10240, ptr %pval, align 4
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %2 = ptrtoint ptr %pval to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 56, ptr %pval, align 4
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %3 = ptrtoint ptr %pval to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1, ptr %pval, align 4
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry.sw.bb3_crit_edge, %entry.sw.bb3_crit_edge41
  %4 = ptrtoint ptr %pval to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %pval, align 1
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %5 = ptrtoint ptr %pval to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %pval, align 1
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %6 = ptrtoint ptr %pval to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %pval, align 1
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry.sw.bb6_crit_edge, %entry.sw.bb6_crit_edge42
  %7 = ptrtoint ptr %pval to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %pval, align 1
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %8 = ptrtoint ptr %pval to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %pval, align 1
  %conv = zext i8 %9 to i32
  %or = or i32 %conv, 1073742080
  %call = tail call i32 @rtw_write32(ptr noundef %padapter, i32 noundef 140, i32 noundef %or) #14
  tail call void @msleep(i32 noundef 10) #14
  %call8 = tail call i32 @rtw_read32(ptr noundef %padapter, i32 noundef 752) #14
  %or10 = or i32 %conv, 1073742848
  %call11 = tail call i32 @rtw_write32(ptr noundef %padapter, i32 noundef 140, i32 noundef %or10) #14
  tail call void @msleep(i32 noundef 10) #14
  %call12 = tail call i32 @rtw_read32(ptr noundef %padapter, i32 noundef 752) #14
  %call13 = tail call i32 @rtw_read32(ptr noundef %padapter, i32 noundef 756) #14
  %call14 = tail call i32 @rtw_read32(ptr noundef %padapter, i32 noundef 760) #14
  %call15 = tail call i32 @rtw_read32(ptr noundef %padapter, i32 noundef 764) #14
  br label %sw.epilog

sw.bb16:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %10 = ptrtoint ptr %pval to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 -8, ptr %pval, align 1
  br label %sw.epilog

sw.bb17:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %11 = ptrtoint ptr %pval to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %pval, align 1
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %call18 = tail call zeroext i8 @GetHalDefVar(ptr noundef %padapter, i32 noundef %variable, ptr noundef %pval) #14
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb17, %sw.bb16, %sw.bb7, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb
  %bResult.0 = phi i8 [ %call18, %sw.default ], [ 1, %sw.bb17 ], [ 1, %sw.bb7 ], [ 1, %sw.bb6 ], [ 1, %sw.bb5 ], [ 1, %sw.bb4 ], [ 1, %sw.bb3 ], [ 1, %sw.bb2 ], [ 1, %sw.bb1 ], [ 1, %sw.bb ], [ 1, %sw.bb16 ]
  ret i8 %bResult.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @GetHalDefVar(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kthread_create_on_node(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtl8723bs_xmit_thread(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: null_pointer_is_valid
declare dso_local void @yield() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_chip_info([5 x i32]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @query_ra_short_GI(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ODM_Get_Rate_Bitmap(ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hal_btcoex_GetRaMask(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl8723b_set_FwMacIdConfig_cmd(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @_rtw_malloc(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @Efuse_CalculateWordCnts(i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @EFUSE_GetEfuseDefinition(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_hal_set_hwreg(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_hal_get_hwreg(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i8 @hal_EfusePartialWriteCheck(ptr noundef %padapter, i8 noundef zeroext %efuseType, ptr nocapture noundef writeonly %pAddr, i8 noundef zeroext %bPseudoTest) unnamed_addr #0 align 64 {
entry:
  %startAddr = alloca i16, align 2
  %efuse_max_available_len = alloca i16, align 2
  %efuse_max = alloca i16, align 2
  %efuse_data = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %HalData = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 18
  %0 = ptrtoint ptr %HalData to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %HalData, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %startAddr) #14
  %2 = ptrtoint ptr %startAddr to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 0, ptr %startAddr, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %efuse_max_available_len) #14
  %3 = ptrtoint ptr %efuse_max_available_len to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 0, ptr %efuse_max_available_len, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %efuse_max) #14
  %4 = ptrtoint ptr %efuse_max to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 0, ptr %efuse_max, align 2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %efuse_data) #14
  %5 = ptrtoint ptr %efuse_data to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %efuse_data, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bPseudoTest)
  %tobool = icmp ne i8 %bPseudoTest, 0
  call void @EFUSE_GetEfuseDefinition(ptr noundef %padapter, i8 noundef zeroext %efuseType, i8 noundef zeroext 3, ptr noundef nonnull %efuse_max_available_len, i1 noundef zeroext %tobool) #14
  call void @EFUSE_GetEfuseDefinition(ptr noundef %padapter, i8 noundef zeroext %efuseType, i8 noundef zeroext 6, ptr noundef nonnull %efuse_max, i1 noundef zeroext %tobool) #14
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %efuseType)
  %cmp = icmp eq i8 %efuseType, 0
  br i1 %cmp, label %if.then, label %if.else6

if.then:                                          ; preds = %entry
  br i1 %tobool, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %fakeEfuseUsedBytes = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 44, i32 1
  %6 = ptrtoint ptr %fakeEfuseUsedBytes to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %fakeEfuseUsedBytes, align 4
  %conv5 = trunc i32 %7 to i16
  %8 = ptrtoint ptr %startAddr to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %conv5, ptr %startAddr, align 2
  br label %if.end11

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  call void @rtw_hal_get_hwreg(ptr noundef %padapter, i8 noundef zeroext 60, ptr noundef nonnull %startAddr) #14
  br label %if.end11

if.else6:                                         ; preds = %entry
  br i1 %tobool, label %if.then8, label %if.else9

if.then8:                                         ; preds = %if.else6
  call void @__sanitizer_cov_trace_pc() #16
  %fakeBTEfuseUsedBytes = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 44, i32 10
  %9 = ptrtoint ptr %fakeBTEfuseUsedBytes to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %fakeBTEfuseUsedBytes, align 4
  %11 = ptrtoint ptr %startAddr to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %10, ptr %startAddr, align 2
  br label %if.end11

if.else9:                                         ; preds = %if.else6
  call void @__sanitizer_cov_trace_pc() #16
  call void @rtw_hal_get_hwreg(ptr noundef %padapter, i8 noundef zeroext 62, ptr noundef nonnull %startAddr) #14
  br label %if.end11

if.end11:                                         ; preds = %if.else9, %if.then8, %if.else, %if.then4
  %12 = ptrtoint ptr %efuse_max to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %efuse_max, align 2
  %14 = ptrtoint ptr %startAddr to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %startAddr, align 2
  %16 = urem i16 %15, %13
  store i16 %16, ptr %startAddr, align 2
  %17 = ptrtoint ptr %efuse_max_available_len to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %efuse_max_available_len, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %16, i16 %18)
  %cmp17.not = icmp ult i16 %16, %18
  br i1 %cmp17.not, label %if.end20, label %if.end11.while.end_crit_edge

if.end11.while.end_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

if.end20:                                         ; preds = %if.end11
  %call = call zeroext i8 @efuse_OneByteRead(ptr noundef %padapter, i16 noundef zeroext %16, ptr noundef nonnull %efuse_data, i1 noundef zeroext %tobool) #14
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call)
  %tobool23.not = icmp eq i8 %call, 0
  br i1 %tobool23.not, label %if.end20.if.else28_crit_edge, label %land.lhs.true

if.end20.if.else28_crit_edge:                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else28

land.lhs.true:                                    ; preds = %if.end20
  %19 = ptrtoint ptr %efuse_data to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %efuse_data, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %20)
  %cmp25.not = icmp eq i8 %20, -1
  br i1 %cmp25.not, label %land.lhs.true.if.else28_crit_edge, label %land.lhs.true.while.end_crit_edge

land.lhs.true.while.end_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

land.lhs.true.if.else28_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else28

if.else28:                                        ; preds = %land.lhs.true.if.else28_crit_edge, %if.end20.if.else28_crit_edge
  %21 = ptrtoint ptr %startAddr to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %startAddr, align 2
  %23 = ptrtoint ptr %pAddr to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %22, ptr %pAddr, align 2
  br label %while.end

while.end:                                        ; preds = %if.else28, %land.lhs.true.while.end_crit_edge, %if.end11.while.end_crit_edge
  %bRet.0 = phi i8 [ 1, %if.else28 ], [ 0, %if.end11.while.end_crit_edge ], [ 0, %land.lhs.true.while.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %efuse_data) #14
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %efuse_max) #14
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %efuse_max_available_len) #14
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %startAddr) #14
  ret i8 %bRet.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i8 @hal_EfusePgPacketWriteHeader(ptr noundef %padapter, i8 noundef zeroext %efuseType, ptr nocapture noundef %pAddr, ptr nocapture noundef readonly %pTargetPkt, i8 noundef zeroext %bPseudoTest) unnamed_addr #0 align 64 {
entry:
  %tmp_header.i9 = alloca i8, align 1
  %efuse_max_available_len.i = alloca i16, align 2
  %tmp_header.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pTargetPkt to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pTargetPkt, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %1)
  %cmp = icmp ugt i8 %1, 15
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %efuse_max_available_len.i) #14
  %2 = ptrtoint ptr %efuse_max_available_len.i to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 0, ptr %efuse_max_available_len.i, align 2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp_header.i) #14
  %3 = ptrtoint ptr %tmp_header.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %tmp_header.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bPseudoTest)
  %tobool.i = icmp ne i8 %bPseudoTest, 0
  call void @EFUSE_GetEfuseDefinition(ptr noundef %padapter, i8 noundef zeroext %efuseType, i8 noundef zeroext 2, ptr noundef nonnull %efuse_max_available_len.i, i1 noundef zeroext %tobool.i) #14
  %4 = ptrtoint ptr %pAddr to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %pAddr, align 2
  %6 = ptrtoint ptr %efuse_max_available_len.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %efuse_max_available_len.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %5, i16 %7)
  %cmp.not.i = icmp ult i16 %5, %7
  br i1 %cmp.not.i, label %if.end.i, label %if.then.hal_EfusePgPacketWrite2ByteHeader.exit_crit_edge

if.then.hal_EfusePgPacketWrite2ByteHeader.exit_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %hal_EfusePgPacketWrite2ByteHeader.exit

if.end.i:                                         ; preds = %if.then
  %8 = ptrtoint ptr %pTargetPkt to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %pTargetPkt, align 1
  %10 = shl i8 %9, 5
  %11 = or i8 %10, 15
  %call.i = call zeroext i8 @efuse_OneByteWrite(ptr noundef %padapter, i16 noundef zeroext %5, i8 noundef zeroext %11, i1 noundef zeroext %tobool.i) #14
  %call7.i = call zeroext i8 @efuse_OneByteRead(ptr noundef %padapter, i16 noundef zeroext %5, ptr noundef nonnull %tmp_header.i, i1 noundef zeroext %tobool.i) #14
  %12 = ptrtoint ptr %tmp_header.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %tmp_header.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %13)
  %cmp9.not.i = icmp eq i8 %13, -1
  br i1 %cmp9.not.i, label %if.end12.i, label %if.end.i.do.end.i_crit_edge

if.end.i.do.end.i_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end.i

if.end12.i:                                       ; preds = %if.end.i
  %call.1.i = call zeroext i8 @efuse_OneByteWrite(ptr noundef %padapter, i16 noundef zeroext %5, i8 noundef zeroext %11, i1 noundef zeroext %tobool.i) #14
  %call7.1.i = call zeroext i8 @efuse_OneByteRead(ptr noundef %padapter, i16 noundef zeroext %5, ptr noundef nonnull %tmp_header.i, i1 noundef zeroext %tobool.i) #14
  %14 = ptrtoint ptr %tmp_header.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %tmp_header.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %15)
  %cmp9.not.1.i = icmp eq i8 %15, -1
  br i1 %cmp9.not.1.i, label %if.end12.1.i, label %if.end12.i.do.end.i_crit_edge

if.end12.i.do.end.i_crit_edge:                    ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end.i

if.end12.1.i:                                     ; preds = %if.end12.i
  %call.2.i = call zeroext i8 @efuse_OneByteWrite(ptr noundef %padapter, i16 noundef zeroext %5, i8 noundef zeroext %11, i1 noundef zeroext %tobool.i) #14
  %call7.2.i = call zeroext i8 @efuse_OneByteRead(ptr noundef %padapter, i16 noundef zeroext %5, ptr noundef nonnull %tmp_header.i, i1 noundef zeroext %tobool.i) #14
  %16 = ptrtoint ptr %tmp_header.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %tmp_header.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %17)
  %cmp9.not.2.i = icmp eq i8 %17, -1
  br i1 %cmp9.not.2.i, label %if.end12.2.i, label %if.end12.1.i.do.end.i_crit_edge

if.end12.1.i.do.end.i_crit_edge:                  ; preds = %if.end12.1.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end.i

if.end12.2.i:                                     ; preds = %if.end12.1.i
  %call.3.i = call zeroext i8 @efuse_OneByteWrite(ptr noundef %padapter, i16 noundef zeroext %5, i8 noundef zeroext %11, i1 noundef zeroext %tobool.i) #14
  %call7.3.i = call zeroext i8 @efuse_OneByteRead(ptr noundef %padapter, i16 noundef zeroext %5, ptr noundef nonnull %tmp_header.i, i1 noundef zeroext %tobool.i) #14
  %18 = ptrtoint ptr %tmp_header.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %tmp_header.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %19)
  %cmp9.not.3.i = icmp eq i8 %19, -1
  br i1 %cmp9.not.3.i, label %if.end12.3.i, label %if.end12.2.i.do.end.i_crit_edge

if.end12.2.i.do.end.i_crit_edge:                  ; preds = %if.end12.2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end.i

if.end12.3.i:                                     ; preds = %if.end12.2.i
  %call.4.i = call zeroext i8 @efuse_OneByteWrite(ptr noundef %padapter, i16 noundef zeroext %5, i8 noundef zeroext %11, i1 noundef zeroext %tobool.i) #14
  %call7.4.i = call zeroext i8 @efuse_OneByteRead(ptr noundef %padapter, i16 noundef zeroext %5, ptr noundef nonnull %tmp_header.i, i1 noundef zeroext %tobool.i) #14
  %20 = ptrtoint ptr %tmp_header.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %tmp_header.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %21)
  %cmp9.not.4.i = icmp eq i8 %21, -1
  br i1 %cmp9.not.4.i, label %if.end12.3.i.hal_EfusePgPacketWrite2ByteHeader.exit_crit_edge, label %if.end12.3.i.do.end.i_crit_edge

if.end12.3.i.do.end.i_crit_edge:                  ; preds = %if.end12.3.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end.i

if.end12.3.i.hal_EfusePgPacketWrite2ByteHeader.exit_crit_edge: ; preds = %if.end12.3.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %hal_EfusePgPacketWrite2ByteHeader.exit

do.end.i:                                         ; preds = %if.end12.3.i.do.end.i_crit_edge, %if.end12.2.i.do.end.i_crit_edge, %if.end12.1.i.do.end.i_crit_edge, %if.end12.i.do.end.i_crit_edge, %if.end.i.do.end.i_crit_edge
  %cmp44.i = phi i1 [ true, %if.end12.3.i.do.end.i_crit_edge ], [ false, %if.end12.2.i.do.end.i_crit_edge ], [ false, %if.end12.1.i.do.end.i_crit_edge ], [ false, %if.end12.i.do.end.i_crit_edge ], [ false, %if.end.i.do.end.i_crit_edge ]
  %cmp44.i.1 = phi i1 [ true, %if.end12.3.i.do.end.i_crit_edge ], [ true, %if.end12.2.i.do.end.i_crit_edge ], [ false, %if.end12.1.i.do.end.i_crit_edge ], [ false, %if.end12.i.do.end.i_crit_edge ], [ false, %if.end.i.do.end.i_crit_edge ]
  %cmp44.i.2 = phi i1 [ true, %if.end12.3.i.do.end.i_crit_edge ], [ true, %if.end12.2.i.do.end.i_crit_edge ], [ true, %if.end12.1.i.do.end.i_crit_edge ], [ false, %if.end12.i.do.end.i_crit_edge ], [ false, %if.end.i.do.end.i_crit_edge ]
  %.lcssa89.i = phi i8 [ %21, %if.end12.3.i.do.end.i_crit_edge ], [ %19, %if.end12.2.i.do.end.i_crit_edge ], [ %17, %if.end12.1.i.do.end.i_crit_edge ], [ %15, %if.end12.i.do.end.i_crit_edge ], [ %13, %if.end.i.do.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp1(i8 %.lcssa89.i, i8 %11)
  %cmp20.not.i = icmp eq i8 %.lcssa89.i, %11
  br i1 %cmp20.not.i, label %if.end23.i, label %do.end.i.hal_EfusePgPacketWrite2ByteHeader.exit_crit_edge

do.end.i.hal_EfusePgPacketWrite2ByteHeader.exit_crit_edge: ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %hal_EfusePgPacketWrite2ByteHeader.exit

if.end23.i:                                       ; preds = %do.end.i
  %inc24.i = add nuw i16 %5, 1
  %22 = ptrtoint ptr %pTargetPkt to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %pTargetPkt, align 1
  %24 = shl i8 %23, 1
  %25 = and i8 %24, -16
  %word_en.i = getelementptr inbounds %struct.pgpkt_struct, ptr %pTargetPkt, i32 0, i32 1
  %26 = ptrtoint ptr %word_en.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %word_en.i, align 1
  %or3081.i = or i8 %25, %27
  %call34.i = call zeroext i8 @efuse_OneByteWrite(ptr noundef %padapter, i16 noundef zeroext %inc24.i, i8 noundef zeroext %or3081.i, i1 noundef zeroext %tobool.i) #14
  %call36.i = call zeroext i8 @efuse_OneByteRead(ptr noundef %padapter, i16 noundef zeroext %inc24.i, ptr noundef nonnull %tmp_header.i, i1 noundef zeroext %tobool.i) #14
  %28 = ptrtoint ptr %tmp_header.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %tmp_header.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %29)
  %cmp38.not.i = icmp eq i8 %29, -1
  br i1 %cmp38.not.i, label %if.end41.i, label %if.end23.i.do.end49.i_crit_edge

if.end23.i.do.end49.i_crit_edge:                  ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end49.i

if.end41.i:                                       ; preds = %if.end23.i
  br i1 %cmp44.i, label %if.end41.i.hal_EfusePgPacketWrite2ByteHeader.exit_crit_edge, label %do.body32.i.1

if.end41.i.hal_EfusePgPacketWrite2ByteHeader.exit_crit_edge: ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %hal_EfusePgPacketWrite2ByteHeader.exit

do.body32.i.1:                                    ; preds = %if.end41.i
  %call34.i.1 = call zeroext i8 @efuse_OneByteWrite(ptr noundef %padapter, i16 noundef zeroext %inc24.i, i8 noundef zeroext %or3081.i, i1 noundef zeroext %tobool.i) #14
  %call36.i.1 = call zeroext i8 @efuse_OneByteRead(ptr noundef %padapter, i16 noundef zeroext %inc24.i, ptr noundef nonnull %tmp_header.i, i1 noundef zeroext %tobool.i) #14
  %30 = ptrtoint ptr %tmp_header.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %tmp_header.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %31)
  %cmp38.not.i.1 = icmp eq i8 %31, -1
  br i1 %cmp38.not.i.1, label %if.end41.i.1, label %do.body32.i.1.do.end49.i_crit_edge

do.body32.i.1.do.end49.i_crit_edge:               ; preds = %do.body32.i.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end49.i

if.end41.i.1:                                     ; preds = %do.body32.i.1
  br i1 %cmp44.i.1, label %if.end41.i.1.hal_EfusePgPacketWrite2ByteHeader.exit_crit_edge, label %do.body32.i.2

if.end41.i.1.hal_EfusePgPacketWrite2ByteHeader.exit_crit_edge: ; preds = %if.end41.i.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %hal_EfusePgPacketWrite2ByteHeader.exit

do.body32.i.2:                                    ; preds = %if.end41.i.1
  %call34.i.2 = call zeroext i8 @efuse_OneByteWrite(ptr noundef %padapter, i16 noundef zeroext %inc24.i, i8 noundef zeroext %or3081.i, i1 noundef zeroext %tobool.i) #14
  %call36.i.2 = call zeroext i8 @efuse_OneByteRead(ptr noundef %padapter, i16 noundef zeroext %inc24.i, ptr noundef nonnull %tmp_header.i, i1 noundef zeroext %tobool.i) #14
  %32 = ptrtoint ptr %tmp_header.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %tmp_header.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %33)
  %cmp38.not.i.2 = icmp eq i8 %33, -1
  br i1 %cmp38.not.i.2, label %if.end41.i.2, label %do.body32.i.2.do.end49.i_crit_edge

do.body32.i.2.do.end49.i_crit_edge:               ; preds = %do.body32.i.2
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end49.i

if.end41.i.2:                                     ; preds = %do.body32.i.2
  br i1 %cmp44.i.2, label %if.end41.i.2.hal_EfusePgPacketWrite2ByteHeader.exit_crit_edge, label %do.body32.i.3

if.end41.i.2.hal_EfusePgPacketWrite2ByteHeader.exit_crit_edge: ; preds = %if.end41.i.2
  call void @__sanitizer_cov_trace_pc() #16
  br label %hal_EfusePgPacketWrite2ByteHeader.exit

do.body32.i.3:                                    ; preds = %if.end41.i.2
  %call34.i.3 = call zeroext i8 @efuse_OneByteWrite(ptr noundef %padapter, i16 noundef zeroext %inc24.i, i8 noundef zeroext %or3081.i, i1 noundef zeroext %tobool.i) #14
  %call36.i.3 = call zeroext i8 @efuse_OneByteRead(ptr noundef %padapter, i16 noundef zeroext %inc24.i, ptr noundef nonnull %tmp_header.i, i1 noundef zeroext %tobool.i) #14
  %34 = ptrtoint ptr %tmp_header.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %tmp_header.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %35)
  %cmp38.not.i.3 = icmp eq i8 %35, -1
  br i1 %cmp38.not.i.3, label %if.end41.i.3, label %do.body32.i.3.do.end49.i_crit_edge

do.body32.i.3.do.end49.i_crit_edge:               ; preds = %do.body32.i.3
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end49.i

if.end41.i.3:                                     ; preds = %do.body32.i.3
  br i1 %cmp9.not.i, label %if.end41.i.3.hal_EfusePgPacketWrite2ByteHeader.exit_crit_edge, label %do.body32.i.4

if.end41.i.3.hal_EfusePgPacketWrite2ByteHeader.exit_crit_edge: ; preds = %if.end41.i.3
  call void @__sanitizer_cov_trace_pc() #16
  br label %hal_EfusePgPacketWrite2ByteHeader.exit

do.body32.i.4:                                    ; preds = %if.end41.i.3
  %call34.i.4 = call zeroext i8 @efuse_OneByteWrite(ptr noundef %padapter, i16 noundef zeroext %inc24.i, i8 noundef zeroext %or3081.i, i1 noundef zeroext %tobool.i) #14
  %call36.i.4 = call zeroext i8 @efuse_OneByteRead(ptr noundef %padapter, i16 noundef zeroext %inc24.i, ptr noundef nonnull %tmp_header.i, i1 noundef zeroext %tobool.i) #14
  %36 = ptrtoint ptr %tmp_header.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %tmp_header.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %37)
  %cmp38.not.i.4 = icmp eq i8 %37, -1
  br i1 %cmp38.not.i.4, label %do.body32.i.4.hal_EfusePgPacketWrite2ByteHeader.exit_crit_edge, label %do.body32.i.4.do.end49.i_crit_edge

do.body32.i.4.do.end49.i_crit_edge:               ; preds = %do.body32.i.4
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end49.i

do.body32.i.4.hal_EfusePgPacketWrite2ByteHeader.exit_crit_edge: ; preds = %do.body32.i.4
  call void @__sanitizer_cov_trace_pc() #16
  br label %hal_EfusePgPacketWrite2ByteHeader.exit

do.end49.i:                                       ; preds = %do.body32.i.4.do.end49.i_crit_edge, %do.body32.i.3.do.end49.i_crit_edge, %do.body32.i.2.do.end49.i_crit_edge, %do.body32.i.1.do.end49.i_crit_edge, %if.end23.i.do.end49.i_crit_edge
  %.lcssa = phi i8 [ %29, %if.end23.i.do.end49.i_crit_edge ], [ %31, %do.body32.i.1.do.end49.i_crit_edge ], [ %33, %do.body32.i.2.do.end49.i_crit_edge ], [ %35, %do.body32.i.3.do.end49.i_crit_edge ], [ %37, %do.body32.i.4.do.end49.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp1(i8 %.lcssa, i8 %or3081.i)
  %cmp52.not.i = icmp eq i8 %.lcssa, %or3081.i
  br i1 %cmp52.not.i, label %if.end55.i, label %do.end49.i.hal_EfusePgPacketWrite2ByteHeader.exit_crit_edge

do.end49.i.hal_EfusePgPacketWrite2ByteHeader.exit_crit_edge: ; preds = %do.end49.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %hal_EfusePgPacketWrite2ByteHeader.exit

if.end55.i:                                       ; preds = %do.end49.i
  call void @__sanitizer_cov_trace_pc() #16
  %38 = ptrtoint ptr %pAddr to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %inc24.i, ptr %pAddr, align 2
  br label %hal_EfusePgPacketWrite2ByteHeader.exit

hal_EfusePgPacketWrite2ByteHeader.exit:           ; preds = %if.end55.i, %do.end49.i.hal_EfusePgPacketWrite2ByteHeader.exit_crit_edge, %do.body32.i.4.hal_EfusePgPacketWrite2ByteHeader.exit_crit_edge, %if.end41.i.3.hal_EfusePgPacketWrite2ByteHeader.exit_crit_edge, %if.end41.i.2.hal_EfusePgPacketWrite2ByteHeader.exit_crit_edge, %if.end41.i.1.hal_EfusePgPacketWrite2ByteHeader.exit_crit_edge, %if.end41.i.hal_EfusePgPacketWrite2ByteHeader.exit_crit_edge, %do.end.i.hal_EfusePgPacketWrite2ByteHeader.exit_crit_edge, %if.end12.3.i.hal_EfusePgPacketWrite2ByteHeader.exit_crit_edge, %if.then.hal_EfusePgPacketWrite2ByteHeader.exit_crit_edge
  %retval.0.i = phi i8 [ 1, %if.end55.i ], [ 0, %if.then.hal_EfusePgPacketWrite2ByteHeader.exit_crit_edge ], [ 0, %do.end.i.hal_EfusePgPacketWrite2ByteHeader.exit_crit_edge ], [ 0, %do.end49.i.hal_EfusePgPacketWrite2ByteHeader.exit_crit_edge ], [ 0, %if.end12.3.i.hal_EfusePgPacketWrite2ByteHeader.exit_crit_edge ], [ 0, %do.body32.i.4.hal_EfusePgPacketWrite2ByteHeader.exit_crit_edge ], [ 0, %if.end41.i.3.hal_EfusePgPacketWrite2ByteHeader.exit_crit_edge ], [ 0, %if.end41.i.2.hal_EfusePgPacketWrite2ByteHeader.exit_crit_edge ], [ 0, %if.end41.i.1.hal_EfusePgPacketWrite2ByteHeader.exit_crit_edge ], [ 0, %if.end41.i.hal_EfusePgPacketWrite2ByteHeader.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp_header.i) #14
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %efuse_max_available_len.i) #14
  br label %if.end

if.else:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp_header.i9) #14
  %39 = ptrtoint ptr %tmp_header.i9 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 0, ptr %tmp_header.i9, align 1
  %40 = ptrtoint ptr %pAddr to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %pAddr, align 2
  %shl.i = shl nuw i8 %1, 4
  %word_en.i10 = getelementptr inbounds %struct.pgpkt_struct, ptr %pTargetPkt, i32 0, i32 1
  %42 = ptrtoint ptr %word_en.i10 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %word_en.i10, align 1
  %or.i = or i8 %43, %shl.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bPseudoTest)
  %tobool.i11 = icmp ne i8 %bPseudoTest, 0
  %call.i12 = tail call zeroext i8 @efuse_OneByteWrite(ptr noundef %padapter, i16 noundef zeroext %41, i8 noundef zeroext %or.i, i1 noundef zeroext %tobool.i11) #14
  %call4.i = call zeroext i8 @efuse_OneByteRead(ptr noundef %padapter, i16 noundef zeroext %41, ptr noundef nonnull %tmp_header.i9, i1 noundef zeroext %tobool.i11) #14
  %44 = ptrtoint ptr %tmp_header.i9 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %tmp_header.i9, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %45)
  %cmp.not.i13 = icmp eq i8 %45, -1
  br i1 %cmp.not.i13, label %if.end.i15, label %if.else.do.end.i19_crit_edge

if.else.do.end.i19_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end.i19

if.end.i15:                                       ; preds = %if.else
  %call.1.i14 = call zeroext i8 @efuse_OneByteWrite(ptr noundef %padapter, i16 noundef zeroext %41, i8 noundef zeroext %or.i, i1 noundef zeroext %tobool.i11) #14
  %call4.1.i = call zeroext i8 @efuse_OneByteRead(ptr noundef %padapter, i16 noundef zeroext %41, ptr noundef nonnull %tmp_header.i9, i1 noundef zeroext %tobool.i11) #14
  %46 = ptrtoint ptr %tmp_header.i9 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %tmp_header.i9, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %47)
  %cmp.not.1.i = icmp eq i8 %47, -1
  br i1 %cmp.not.1.i, label %if.end.1.i, label %if.end.i15.do.end.i19_crit_edge

if.end.i15.do.end.i19_crit_edge:                  ; preds = %if.end.i15
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end.i19

if.end.1.i:                                       ; preds = %if.end.i15
  %call.2.i16 = call zeroext i8 @efuse_OneByteWrite(ptr noundef %padapter, i16 noundef zeroext %41, i8 noundef zeroext %or.i, i1 noundef zeroext %tobool.i11) #14
  %call4.2.i = call zeroext i8 @efuse_OneByteRead(ptr noundef %padapter, i16 noundef zeroext %41, ptr noundef nonnull %tmp_header.i9, i1 noundef zeroext %tobool.i11) #14
  %48 = ptrtoint ptr %tmp_header.i9 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %tmp_header.i9, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %49)
  %cmp.not.2.i = icmp eq i8 %49, -1
  br i1 %cmp.not.2.i, label %if.end.2.i, label %if.end.1.i.do.end.i19_crit_edge

if.end.1.i.do.end.i19_crit_edge:                  ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end.i19

if.end.2.i:                                       ; preds = %if.end.1.i
  %call.3.i17 = call zeroext i8 @efuse_OneByteWrite(ptr noundef %padapter, i16 noundef zeroext %41, i8 noundef zeroext %or.i, i1 noundef zeroext %tobool.i11) #14
  %call4.3.i = call zeroext i8 @efuse_OneByteRead(ptr noundef %padapter, i16 noundef zeroext %41, ptr noundef nonnull %tmp_header.i9, i1 noundef zeroext %tobool.i11) #14
  %50 = ptrtoint ptr %tmp_header.i9 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %tmp_header.i9, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %51)
  %cmp.not.3.i = icmp eq i8 %51, -1
  br i1 %cmp.not.3.i, label %if.end.3.i, label %if.end.2.i.do.end.i19_crit_edge

if.end.2.i.do.end.i19_crit_edge:                  ; preds = %if.end.2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end.i19

if.end.3.i:                                       ; preds = %if.end.2.i
  %call.4.i18 = call zeroext i8 @efuse_OneByteWrite(ptr noundef %padapter, i16 noundef zeroext %41, i8 noundef zeroext %or.i, i1 noundef zeroext %tobool.i11) #14
  %call4.4.i = call zeroext i8 @efuse_OneByteRead(ptr noundef %padapter, i16 noundef zeroext %41, ptr noundef nonnull %tmp_header.i9, i1 noundef zeroext %tobool.i11) #14
  %52 = ptrtoint ptr %tmp_header.i9 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %tmp_header.i9, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %53)
  %cmp.not.4.i = icmp eq i8 %53, -1
  br i1 %cmp.not.4.i, label %if.end.3.i.hal_EfusePgPacketWrite1ByteHeader.exit_crit_edge, label %if.end.3.i.do.end.i19_crit_edge

if.end.3.i.do.end.i19_crit_edge:                  ; preds = %if.end.3.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end.i19

if.end.3.i.hal_EfusePgPacketWrite1ByteHeader.exit_crit_edge: ; preds = %if.end.3.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %hal_EfusePgPacketWrite1ByteHeader.exit

do.end.i19:                                       ; preds = %if.end.3.i.do.end.i19_crit_edge, %if.end.2.i.do.end.i19_crit_edge, %if.end.1.i.do.end.i19_crit_edge, %if.end.i15.do.end.i19_crit_edge, %if.else.do.end.i19_crit_edge
  %.lcssa.i = phi i8 [ %45, %if.else.do.end.i19_crit_edge ], [ %47, %if.end.i15.do.end.i19_crit_edge ], [ %49, %if.end.1.i.do.end.i19_crit_edge ], [ %51, %if.end.2.i.do.end.i19_crit_edge ], [ %53, %if.end.3.i.do.end.i19_crit_edge ]
  call void @__sanitizer_cov_trace_cmp1(i8 %.lcssa.i, i8 %or.i)
  %cmp14.not.i = icmp eq i8 %.lcssa.i, %or.i
  br i1 %cmp14.not.i, label %if.end17.i, label %do.end.i19.hal_EfusePgPacketWrite1ByteHeader.exit_crit_edge

do.end.i19.hal_EfusePgPacketWrite1ByteHeader.exit_crit_edge: ; preds = %do.end.i19
  call void @__sanitizer_cov_trace_pc() #16
  br label %hal_EfusePgPacketWrite1ByteHeader.exit

if.end17.i:                                       ; preds = %do.end.i19
  call void @__sanitizer_cov_trace_pc() #16
  %54 = ptrtoint ptr %pAddr to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 %41, ptr %pAddr, align 2
  br label %hal_EfusePgPacketWrite1ByteHeader.exit

hal_EfusePgPacketWrite1ByteHeader.exit:           ; preds = %if.end17.i, %do.end.i19.hal_EfusePgPacketWrite1ByteHeader.exit_crit_edge, %if.end.3.i.hal_EfusePgPacketWrite1ByteHeader.exit_crit_edge
  %retval.0.i20 = phi i8 [ 1, %if.end17.i ], [ 0, %do.end.i19.hal_EfusePgPacketWrite1ByteHeader.exit_crit_edge ], [ 0, %if.end.3.i.hal_EfusePgPacketWrite1ByteHeader.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp_header.i9) #14
  br label %if.end

if.end:                                           ; preds = %hal_EfusePgPacketWrite1ByteHeader.exit, %hal_EfusePgPacketWrite2ByteHeader.exit
  %bRet.0 = phi i8 [ %retval.0.i, %hal_EfusePgPacketWrite2ByteHeader.exit ], [ %retval.0.i20, %hal_EfusePgPacketWrite1ByteHeader.exit ]
  ret i8 %bRet.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @Efuse_GetCurrentSize(ptr noundef, i8 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @efuse_WordEnableDataRead(i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @efuse_OneByteWrite(ptr noundef, i16 noundef zeroext, i8 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @Efuse_WordEnableDataWrite(ptr noundef, i16 noundef zeroext, i8 noundef zeroext, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @GetHalODMVar(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @SetHalODMVar(ptr noundef, i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @MRateToHwRate(i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @Set_MSR(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @CheckFwRsvdPageContent(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #14

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

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
define internal void @asan.module_ctor() #15 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #15 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { nounwind }
attributes #15 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #16 = { nomerge }
attributes #17 = { nounwind allocsize(2) }
attributes #18 = { cold nounwind }
attributes #19 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !16, !18, !20, !22, !24, !26, !27, !28, !29, !31, !32, !34, !35, !36, !37, !39}
!llvm.module.flags = !{!40, !41, !42, !43, !44, !45, !46, !47}
!llvm.ident = !{!48}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c", i32 329, i32 15}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c", i32 331, i32 2}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @rtl8723b_FirmwareDownload._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @rtl8723b_FirmwareDownload._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c", i32 335, i32 3}
!10 = !{ptr @rtl8723b_FirmwareDownload._entry.4, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @rtl8723b_FirmwareDownload._entry_ptr.6, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c", i32 341, i32 3}
!14 = !{ptr @rtl8723b_FirmwareDownload._entry.7, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @rtl8723b_FirmwareDownload._entry_ptr.9, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.10, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c", i32 362, i32 9}
!18 = !{ptr @.str.11, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c", i32 3850, i32 29}
!20 = !{ptr @g_fwdl_chksum_fail, !21, !"g_fwdl_chksum_fail", i1 false, i1 false}
!21 = !{!"../drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c", i32 179, i32 4}
!22 = !{ptr @g_fwdl_wintint_rdy_fail, !23, !"g_fwdl_wintint_rdy_fail", i1 false, i1 false}
!23 = !{!"../drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c", i32 215, i32 4}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c", i32 131, i32 4}
!26 = !{ptr @.str.13, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @_WriteFW._entry, !25, !"_entry", i1 false, i1 false}
!28 = !{ptr @_WriteFW._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @_WriteFW._entry.14, !30, !"_entry", i1 false, i1 false}
!30 = !{!"../drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c", i32 142, i32 4}
!31 = !{ptr @_WriteFW._entry_ptr.15, !30, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c", i32 66, i32 4}
!34 = !{ptr @.str.17, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @_BlockWrite._entry, !33, !"_entry", i1 false, i1 false}
!36 = !{ptr @_BlockWrite._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @_BlockWrite._entry.18, !38, !"_entry", i1 false, i1 false}
!38 = !{!"../drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c", i32 89, i32 5}
!39 = !{ptr @_BlockWrite._entry_ptr.19, !38, !"_entry_ptr", i1 false, i1 false}
!40 = !{i32 1, !"wchar_size", i32 2}
!41 = !{i32 1, !"min_enum_size", i32 4}
!42 = !{i32 8, !"branch-target-enforcement", i32 0}
!43 = !{i32 8, !"sign-return-address", i32 0}
!44 = !{i32 8, !"sign-return-address-all", i32 0}
!45 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!46 = !{i32 7, !"uwtable", i32 1}
!47 = !{i32 7, !"frame-pointer", i32 2}
!48 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!49 = !{!"auto-init"}
!50 = !{!51}
!51 = distinct !{!51, !52, !"ReadChipVersion8723B: %agg.result"}
!52 = distinct !{!52, !"ReadChipVersion8723B"}
!53 = distinct !{!53, !54}
!54 = !{!"llvm.loop.peeled.count", i32 2}
!55 = !{!"branch_weights", i32 2000, i32 1}
!56 = !{i64 2148508570, i64 2148508850, i64 2148509184, i64 2148509518}
