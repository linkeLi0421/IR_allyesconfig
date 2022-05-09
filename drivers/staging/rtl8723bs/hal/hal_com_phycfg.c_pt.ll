; ModuleID = '/llk/IR_all_yes/drivers/staging/rtl8723bs/hal/hal_com_phycfg.c_pt.bc'
source_filename = "../drivers/staging/rtl8723bs/hal/hal_com_phycfg.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

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

@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"FCC\00", [28 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"MKK\00", [28 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ETSI\00", [27 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"WW13\00", [27 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"CCK\00", [28 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"1T\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"OFDM\00", [27 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"HT\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"20M\00", [28 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"40M\00", [28 x i8] zeroinitializer }, align 32
@__const.phy_ConvertTxPowerByRateInDbmToRelativeValues.ofdmRates = private unnamed_addr constant [8 x i8] c"\0C\12\18$0H`l", align 1
@__const.phy_ConvertTxPowerByRateInDbmToRelativeValues.mcs0_7Rates = private unnamed_addr constant [8 x i8] c"\80\81\82\83\84\85\86\87", align 1
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.10 = internal global [12 x i64] [i64 10, i64 32, i64 2096, i64 2100, i64 2104, i64 2108, i64 2120, i64 2156, i64 3588, i64 3592, i64 3600, i64 3604]
@__sancov_gen_cov_switch_values.11 = internal global [33 x i64] [i64 31, i64 32, i64 2096, i64 2100, i64 2104, i64 2108, i64 2120, i64 2156, i64 3104, i64 3108, i64 3112, i64 3116, i64 3120, i64 3584, i64 3588, i64 3592, i64 3600, i64 3604, i64 3616, i64 3620, i64 3624, i64 3628, i64 3632, i64 6176, i64 6180, i64 6184, i64 6188, i64 6192, i64 6688, i64 6692, i64 6696, i64 6700, i64 6704]
@__sancov_gen_cov_switch_values.12 = internal global [4 x i64] [i64 2, i64 32, i64 255, i64 4294967040]
@__sancov_gen_cov_switch_values.13 = internal global [21 x i64] [i64 19, i64 8, i64 4, i64 11, i64 12, i64 18, i64 22, i64 24, i64 36, i64 48, i64 72, i64 96, i64 108, i64 128, i64 129, i64 130, i64 131, i64 132, i64 133, i64 134, i64 135]
@__sancov_gen_cov_switch_values.14 = internal global [12 x i64] [i64 10, i64 32, i64 2096, i64 2100, i64 2104, i64 2108, i64 2120, i64 2156, i64 3588, i64 3592, i64 3600, i64 3604]
@__sancov_gen_cov_switch_values.15 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 2]
@__sancov_gen_cov_switch_values.16 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 2]
@__sancov_gen_cov_switch_values.17 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 2]
@__sancov_gen_cov_switch_values.18 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 2]
@__sancov_gen_cov_switch_values.19 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 2]
@__sancov_gen_cov_switch_values.20 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 2]
@__sancov_gen_cov_switch_values.21 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 2]
@__sancov_gen_cov_switch_values.22 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 2]
@__sancov_gen_cov_switch_values.23 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 2]
@__sancov_gen_cov_switch_values.24 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 2]
@__sancov_gen_cov_switch_values.25 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 2]
@__sancov_gen_cov_switch_values.26 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 2]
@__sancov_gen_cov_switch_values.27 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 2]
@__sancov_gen_cov_switch_values.28 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 2]
@__sancov_gen_cov_switch_values.29 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.30 = internal global [6 x i64] [i64 4, i64 8, i64 2, i64 4, i64 11, i64 22]
@__sancov_gen_cov_switch_values.31 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.32 = internal global [6 x i64] [i64 4, i64 8, i64 2, i64 4, i64 11, i64 22]
@__sancov_gen_cov_switch_values.33 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 2]
@__sancov_gen_cov_switch_values.34 = internal global [38 x i64] [i64 36, i64 16, i64 33, i64 34, i64 35, i64 36, i64 37, i64 38, i64 39, i64 40, i64 41, i64 48, i64 49, i64 50, i64 51, i64 52, i64 53, i64 54, i64 55, i64 56, i64 57, i64 64, i64 66, i64 67, i64 68, i64 69, i64 70, i64 71, i64 72, i64 73, i64 80, i64 81, i64 82, i64 83, i64 84, i64 85, i64 86, i64 87]
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 824, i32 33 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 826, i32 38 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 828, i32 38 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 830, i32 38 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 833, i32 34 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 833, i32 71 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 835, i32 39 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 837, i32 39 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 842, i32 32 }
@___asan_gen_.62 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.63 = private constant [50 x i8] c"../drivers/staging/rtl8723bs/hal/hal_com_phycfg.c\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 844, i32 37 }
@llvm.compiler.used = appending global [10 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9], section "llvm.metadata"
@0 = internal global [10 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i8 @PHY_GetTxPowerByRateBase(ptr nocapture noundef readonly %Adapter, i8 noundef zeroext %RfPath, i32 noundef %RateSection) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %HalData = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 18
  %0 = ptrtoint ptr %HalData to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %HalData, align 8
  %conv = zext i8 %RfPath to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %RfPath)
  %cmp = icmp ugt i8 %RfPath, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = zext i32 %RateSection to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %RateSection, label %if.end.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb3
    i32 2, label %sw.bb8
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx = getelementptr %struct.hal_com_data, ptr %1, i32 0, i32 63, i32 %conv
  br label %cleanup.sink.split

sw.bb3:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx7 = getelementptr %struct.hal_com_data, ptr %1, i32 0, i32 63, i32 %conv, i32 1
  br label %cleanup.sink.split

sw.bb8:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx12 = getelementptr %struct.hal_com_data, ptr %1, i32 0, i32 63, i32 %conv, i32 2
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %sw.bb8, %sw.bb3, %sw.bb
  %arrayidx.sink = phi ptr [ %arrayidx, %sw.bb ], [ %arrayidx7, %sw.bb3 ], [ %arrayidx12, %sw.bb8 ]
  %3 = ptrtoint ptr %arrayidx.sink to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx.sink, align 1
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i8 [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ %4, %cleanup.sink.split ]
  ret i8 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i8 @PHY_GetRateSectionIndexOfTxPowerByRate(ptr nocapture noundef readonly %padapter, i32 noundef %RegAddr, i32 noundef %BitMask) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %HalData = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 18
  %0 = ptrtoint ptr %HalData to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %HalData, align 8
  %PhyRegPgVersion = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 141, i32 3
  %2 = ptrtoint ptr %PhyRegPgVersion to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %PhyRegPgVersion, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp = icmp eq i8 %3, 0
  br i1 %cmp, label %if.then, label %entry.if.end19_crit_edge

entry.if.end19_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

if.then:                                          ; preds = %entry
  %4 = zext i32 %RegAddr to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.10)
  switch i32 %RegAddr, label %if.then.if.end19_crit_edge [
    i32 2120, label %sw.bb18
    i32 3588, label %sw.bb2
    i32 3592, label %sw.bb3
    i32 2156, label %sw.bb4
    i32 3600, label %sw.bb12
    i32 3604, label %sw.bb13
    i32 2096, label %sw.bb14
    i32 2100, label %sw.bb15
    i32 2104, label %sw.bb16
    i32 2108, label %sw.bb17
  ]

if.then.if.end19_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

sw.bb2:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

sw.bb3:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

sw.bb4:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %BitMask)
  %switch.selectcmp = icmp eq i32 %BitMask, 255
  %switch.select = select i1 %switch.selectcmp, i8 15, i8 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -256, i32 %BitMask)
  %switch.selectcmp21 = icmp eq i32 %BitMask, -256
  %switch.select22 = select i1 %switch.selectcmp21, i8 7, i8 %switch.select
  br label %if.end19

sw.bb12:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

sw.bb13:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

sw.bb14:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

sw.bb15:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

sw.bb16:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

sw.bb17:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

sw.bb18:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

if.end19:                                         ; preds = %sw.bb18, %sw.bb17, %sw.bb16, %sw.bb15, %sw.bb14, %sw.bb13, %sw.bb12, %sw.bb4, %sw.bb3, %sw.bb2, %if.then.if.end19_crit_edge, %entry.if.end19_crit_edge
  %index.0 = phi i8 [ 11, %sw.bb18 ], [ 10, %sw.bb17 ], [ 14, %sw.bb16 ], [ 9, %sw.bb15 ], [ 8, %sw.bb14 ], [ 3, %sw.bb13 ], [ 2, %sw.bb12 ], [ 6, %sw.bb3 ], [ 1, %sw.bb2 ], [ 0, %entry.if.end19_crit_edge ], [ 0, %if.then.if.end19_crit_edge ], [ %switch.select22, %sw.bb4 ]
  ret i8 %index.0
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong writeonly uwtable(sync)
define dso_local void @PHY_GetRateValuesOfTxPowerByRate(ptr nocapture readnone %padapter, i32 noundef %RegAddr, i32 noundef %BitMask, i32 noundef %Value, ptr noundef writeonly %RateIndex, ptr nocapture noundef writeonly %PwrByRateVal, ptr nocapture noundef writeonly %RateNum) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %RegAddr to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.11)
  switch i32 %RegAddr, label %entry.sw.epilog_crit_edge [
    i32 3584, label %entry.sw.bb_crit_edge
    i32 2096, label %entry.sw.bb_crit_edge508
    i32 3588, label %entry.sw.bb17_crit_edge
    i32 2100, label %entry.sw.bb17_crit_edge509
    i32 3592, label %sw.bb48
    i32 2156, label %sw.bb59
    i32 3600, label %entry.sw.bb103_crit_edge
    i32 2108, label %entry.sw.bb103_crit_edge510
    i32 3604, label %entry.sw.bb134_crit_edge
    i32 2120, label %entry.sw.bb134_crit_edge511
    i32 2104, label %sw.bb165
    i32 3104, label %entry.sw.bb195_crit_edge
    i32 3616, label %entry.sw.bb195_crit_edge512
    i32 6176, label %entry.sw.bb195_crit_edge513
    i32 6688, label %entry.sw.bb195_crit_edge514
    i32 3108, label %entry.sw.bb226_crit_edge
    i32 3620, label %entry.sw.bb226_crit_edge515
    i32 6180, label %entry.sw.bb226_crit_edge516
    i32 6692, label %entry.sw.bb226_crit_edge517
    i32 3112, label %entry.sw.bb257_crit_edge
    i32 3624, label %entry.sw.bb257_crit_edge518
    i32 6184, label %entry.sw.bb257_crit_edge519
    i32 6696, label %entry.sw.bb257_crit_edge520
    i32 3116, label %entry.sw.bb288_crit_edge
    i32 3628, label %entry.sw.bb288_crit_edge521
    i32 6188, label %entry.sw.bb288_crit_edge522
    i32 6700, label %entry.sw.bb288_crit_edge523
    i32 3120, label %entry.sw.bb319_crit_edge
    i32 3632, label %entry.sw.bb319_crit_edge524
    i32 6192, label %entry.sw.bb319_crit_edge525
    i32 6704, label %entry.sw.bb319_crit_edge526
  ]

entry.sw.bb319_crit_edge526:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb319

entry.sw.bb319_crit_edge525:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb319

entry.sw.bb319_crit_edge524:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb319

entry.sw.bb319_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb319

entry.sw.bb288_crit_edge523:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb288

entry.sw.bb288_crit_edge522:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb288

entry.sw.bb288_crit_edge521:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb288

entry.sw.bb288_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb288

entry.sw.bb257_crit_edge520:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb257

entry.sw.bb257_crit_edge519:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb257

entry.sw.bb257_crit_edge518:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb257

entry.sw.bb257_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb257

entry.sw.bb226_crit_edge517:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb226

entry.sw.bb226_crit_edge516:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb226

entry.sw.bb226_crit_edge515:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb226

entry.sw.bb226_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb226

entry.sw.bb195_crit_edge514:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb195

entry.sw.bb195_crit_edge513:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb195

entry.sw.bb195_crit_edge512:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb195

entry.sw.bb195_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb195

entry.sw.bb134_crit_edge511:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb134

entry.sw.bb134_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb134

entry.sw.bb103_crit_edge510:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb103

entry.sw.bb103_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb103

entry.sw.bb17_crit_edge509:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb17

entry.sw.bb17_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb17

entry.sw.bb_crit_edge508:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge508
  %1 = ptrtoint ptr %RateIndex to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 4, ptr %RateIndex, align 1
  %arrayidx2 = getelementptr i8, ptr %RateIndex, i32 1
  %2 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 5, ptr %arrayidx2, align 1
  %arrayidx4 = getelementptr i8, ptr %RateIndex, i32 2
  %3 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 6, ptr %arrayidx4, align 1
  %arrayidx6 = getelementptr i8, ptr %RateIndex, i32 3
  %4 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 7, ptr %arrayidx6, align 1
  %shr = lshr i32 %Value, 4
  %and = and i32 %shr, 15
  %mul9 = mul nuw nsw i32 %and, 10
  %and13 = and i32 %Value, 15
  %add14 = add nuw nsw i32 %mul9, %and13
  %conv15 = trunc i32 %add14 to i8
  %5 = ptrtoint ptr %PwrByRateVal to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv15, ptr %PwrByRateVal, align 1
  %shr.1 = lshr i32 %Value, 12
  %and.1 = and i32 %shr.1, 15
  %mul9.1 = mul nuw nsw i32 %and.1, 10
  %shr12.1 = lshr i32 %Value, 8
  %and13.1 = and i32 %shr12.1, 15
  %add14.1 = add nuw nsw i32 %mul9.1, %and13.1
  %conv15.1 = trunc i32 %add14.1 to i8
  %arrayidx16.1 = getelementptr i8, ptr %PwrByRateVal, i32 1
  %6 = ptrtoint ptr %arrayidx16.1 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv15.1, ptr %arrayidx16.1, align 1
  %shr.2 = lshr i32 %Value, 20
  %and.2 = and i32 %shr.2, 15
  %mul9.2 = mul nuw nsw i32 %and.2, 10
  %shr12.2 = lshr i32 %Value, 16
  %and13.2 = and i32 %shr12.2, 15
  %add14.2 = add nuw nsw i32 %mul9.2, %and13.2
  %conv15.2 = trunc i32 %add14.2 to i8
  %arrayidx16.2 = getelementptr i8, ptr %PwrByRateVal, i32 2
  %7 = ptrtoint ptr %arrayidx16.2 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv15.2, ptr %arrayidx16.2, align 1
  %shr.3 = lshr i32 %Value, 28
  %mul9.3 = mul nuw nsw i32 %shr.3, 10
  %shr12.3 = lshr i32 %Value, 24
  %and13.3 = and i32 %shr12.3, 15
  %add14.3 = add nuw nsw i32 %mul9.3, %and13.3
  %conv15.3 = trunc i32 %add14.3 to i8
  %arrayidx16.3 = getelementptr i8, ptr %PwrByRateVal, i32 3
  %8 = ptrtoint ptr %arrayidx16.3 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv15.3, ptr %arrayidx16.3, align 1
  br label %sw.epilog.sink.split

sw.bb17:                                          ; preds = %entry.sw.bb17_crit_edge, %entry.sw.bb17_crit_edge509
  %9 = ptrtoint ptr %RateIndex to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 8, ptr %RateIndex, align 1
  %arrayidx21 = getelementptr i8, ptr %RateIndex, i32 1
  %10 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 9, ptr %arrayidx21, align 1
  %arrayidx23 = getelementptr i8, ptr %RateIndex, i32 2
  %11 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 10, ptr %arrayidx23, align 1
  %arrayidx25 = getelementptr i8, ptr %RateIndex, i32 3
  %12 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 11, ptr %arrayidx25, align 1
  %shr34 = lshr i32 %Value, 4
  %and35 = and i32 %shr34, 15
  %mul36 = mul nuw nsw i32 %and35, 10
  %and40 = and i32 %Value, 15
  %add41 = add nuw nsw i32 %mul36, %and40
  %conv42 = trunc i32 %add41 to i8
  %13 = ptrtoint ptr %PwrByRateVal to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv42, ptr %PwrByRateVal, align 1
  %shr34.1 = lshr i32 %Value, 12
  %and35.1 = and i32 %shr34.1, 15
  %mul36.1 = mul nuw nsw i32 %and35.1, 10
  %shr39.1 = lshr i32 %Value, 8
  %and40.1 = and i32 %shr39.1, 15
  %add41.1 = add nuw nsw i32 %mul36.1, %and40.1
  %conv42.1 = trunc i32 %add41.1 to i8
  %arrayidx44.1 = getelementptr i8, ptr %PwrByRateVal, i32 1
  %14 = ptrtoint ptr %arrayidx44.1 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv42.1, ptr %arrayidx44.1, align 1
  %shr34.2 = lshr i32 %Value, 20
  %and35.2 = and i32 %shr34.2, 15
  %mul36.2 = mul nuw nsw i32 %and35.2, 10
  %shr39.2 = lshr i32 %Value, 16
  %and40.2 = and i32 %shr39.2, 15
  %add41.2 = add nuw nsw i32 %mul36.2, %and40.2
  %conv42.2 = trunc i32 %add41.2 to i8
  %arrayidx44.2 = getelementptr i8, ptr %PwrByRateVal, i32 2
  %15 = ptrtoint ptr %arrayidx44.2 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv42.2, ptr %arrayidx44.2, align 1
  %shr34.3 = lshr i32 %Value, 28
  %mul36.3 = mul nuw nsw i32 %shr34.3, 10
  %shr39.3 = lshr i32 %Value, 24
  %and40.3 = and i32 %shr39.3, 15
  %add41.3 = add nuw nsw i32 %mul36.3, %and40.3
  %conv42.3 = trunc i32 %add41.3 to i8
  %arrayidx44.3 = getelementptr i8, ptr %PwrByRateVal, i32 3
  %16 = ptrtoint ptr %arrayidx44.3 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv42.3, ptr %arrayidx44.3, align 1
  br label %sw.epilog.sink.split

sw.bb48:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %17 = ptrtoint ptr %RateIndex to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %RateIndex, align 1
  %shr51 = lshr i32 %Value, 12
  %and52 = and i32 %shr51, 15
  %mul53 = mul nuw nsw i32 %and52, 10
  %shr54 = lshr i32 %Value, 8
  %and55 = and i32 %shr54, 15
  %add56 = add nuw nsw i32 %mul53, %and55
  %conv57 = trunc i32 %add56 to i8
  %18 = ptrtoint ptr %PwrByRateVal to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv57, ptr %PwrByRateVal, align 1
  br label %sw.epilog.sink.split

sw.bb59:                                          ; preds = %entry
  %19 = zext i32 %BitMask to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.12)
  switch i32 %BitMask, label %sw.bb59.sw.epilog_crit_edge [
    i32 -256, label %if.then
    i32 255, label %if.then92
  ]

sw.bb59.sw.epilog_crit_edge:                      ; preds = %sw.bb59
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.then:                                          ; preds = %sw.bb59
  call void @__sanitizer_cov_trace_pc() #12
  %20 = ptrtoint ptr %RateIndex to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 1, ptr %RateIndex, align 1
  %arrayidx65 = getelementptr i8, ptr %RateIndex, i32 1
  %21 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 2, ptr %arrayidx65, align 1
  %arrayidx67 = getelementptr i8, ptr %RateIndex, i32 2
  %22 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 3, ptr %arrayidx67, align 1
  %shr76 = lshr i32 %Value, 12
  %and77 = and i32 %shr76, 15
  %mul78 = mul nuw nsw i32 %and77, 10
  %shr81 = lshr i32 %Value, 8
  %and82 = and i32 %shr81, 15
  %add83 = add nuw nsw i32 %mul78, %and82
  %conv84 = trunc i32 %add83 to i8
  %23 = ptrtoint ptr %PwrByRateVal to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv84, ptr %PwrByRateVal, align 1
  %shr76.1 = lshr i32 %Value, 20
  %and77.1 = and i32 %shr76.1, 15
  %mul78.1 = mul nuw nsw i32 %and77.1, 10
  %shr81.1 = lshr i32 %Value, 16
  %and82.1 = and i32 %shr81.1, 15
  %add83.1 = add nuw nsw i32 %mul78.1, %and82.1
  %conv84.1 = trunc i32 %add83.1 to i8
  %arrayidx86.1 = getelementptr i8, ptr %PwrByRateVal, i32 1
  %24 = ptrtoint ptr %arrayidx86.1 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv84.1, ptr %arrayidx86.1, align 1
  %shr76.2 = lshr i32 %Value, 28
  %mul78.2 = mul nuw nsw i32 %shr76.2, 10
  %shr81.2 = lshr i32 %Value, 24
  %and82.2 = and i32 %shr81.2, 15
  %add83.2 = add nuw nsw i32 %mul78.2, %and82.2
  %conv84.2 = trunc i32 %add83.2 to i8
  %arrayidx86.2 = getelementptr i8, ptr %PwrByRateVal, i32 2
  %25 = ptrtoint ptr %arrayidx86.2 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv84.2, ptr %arrayidx86.2, align 1
  br label %sw.epilog.sink.split

if.then92:                                        ; preds = %sw.bb59
  call void @__sanitizer_cov_trace_pc() #12
  %26 = ptrtoint ptr %RateIndex to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 3, ptr %RateIndex, align 1
  %shr95 = lshr i32 %Value, 4
  %and96 = and i32 %shr95, 15
  %mul97 = mul nuw nsw i32 %and96, 10
  %and98 = and i32 %Value, 15
  %add99 = add nuw nsw i32 %mul97, %and98
  %conv100 = trunc i32 %add99 to i8
  %27 = ptrtoint ptr %PwrByRateVal to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv100, ptr %PwrByRateVal, align 1
  br label %sw.epilog.sink.split

sw.bb103:                                         ; preds = %entry.sw.bb103_crit_edge, %entry.sw.bb103_crit_edge510
  %28 = ptrtoint ptr %RateIndex to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 12, ptr %RateIndex, align 1
  %arrayidx107 = getelementptr i8, ptr %RateIndex, i32 1
  %29 = ptrtoint ptr %arrayidx107 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 13, ptr %arrayidx107, align 1
  %arrayidx109 = getelementptr i8, ptr %RateIndex, i32 2
  %30 = ptrtoint ptr %arrayidx109 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 14, ptr %arrayidx109, align 1
  %arrayidx111 = getelementptr i8, ptr %RateIndex, i32 3
  %31 = ptrtoint ptr %arrayidx111 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 15, ptr %arrayidx111, align 1
  %shr120 = lshr i32 %Value, 4
  %and121 = and i32 %shr120, 15
  %mul122 = mul nuw nsw i32 %and121, 10
  %and126 = and i32 %Value, 15
  %add127 = add nuw nsw i32 %mul122, %and126
  %conv128 = trunc i32 %add127 to i8
  %32 = ptrtoint ptr %PwrByRateVal to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %conv128, ptr %PwrByRateVal, align 1
  %shr120.1 = lshr i32 %Value, 12
  %and121.1 = and i32 %shr120.1, 15
  %mul122.1 = mul nuw nsw i32 %and121.1, 10
  %shr125.1 = lshr i32 %Value, 8
  %and126.1 = and i32 %shr125.1, 15
  %add127.1 = add nuw nsw i32 %mul122.1, %and126.1
  %conv128.1 = trunc i32 %add127.1 to i8
  %arrayidx130.1 = getelementptr i8, ptr %PwrByRateVal, i32 1
  %33 = ptrtoint ptr %arrayidx130.1 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %conv128.1, ptr %arrayidx130.1, align 1
  %shr120.2 = lshr i32 %Value, 20
  %and121.2 = and i32 %shr120.2, 15
  %mul122.2 = mul nuw nsw i32 %and121.2, 10
  %shr125.2 = lshr i32 %Value, 16
  %and126.2 = and i32 %shr125.2, 15
  %add127.2 = add nuw nsw i32 %mul122.2, %and126.2
  %conv128.2 = trunc i32 %add127.2 to i8
  %arrayidx130.2 = getelementptr i8, ptr %PwrByRateVal, i32 2
  %34 = ptrtoint ptr %arrayidx130.2 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %conv128.2, ptr %arrayidx130.2, align 1
  %shr120.3 = lshr i32 %Value, 28
  %mul122.3 = mul nuw nsw i32 %shr120.3, 10
  %shr125.3 = lshr i32 %Value, 24
  %and126.3 = and i32 %shr125.3, 15
  %add127.3 = add nuw nsw i32 %mul122.3, %and126.3
  %conv128.3 = trunc i32 %add127.3 to i8
  %arrayidx130.3 = getelementptr i8, ptr %PwrByRateVal, i32 3
  %35 = ptrtoint ptr %arrayidx130.3 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %conv128.3, ptr %arrayidx130.3, align 1
  br label %sw.epilog.sink.split

sw.bb134:                                         ; preds = %entry.sw.bb134_crit_edge, %entry.sw.bb134_crit_edge511
  %36 = ptrtoint ptr %RateIndex to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 16, ptr %RateIndex, align 1
  %arrayidx138 = getelementptr i8, ptr %RateIndex, i32 1
  %37 = ptrtoint ptr %arrayidx138 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 17, ptr %arrayidx138, align 1
  %arrayidx140 = getelementptr i8, ptr %RateIndex, i32 2
  %38 = ptrtoint ptr %arrayidx140 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 18, ptr %arrayidx140, align 1
  %arrayidx142 = getelementptr i8, ptr %RateIndex, i32 3
  %39 = ptrtoint ptr %arrayidx142 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 19, ptr %arrayidx142, align 1
  %shr151 = lshr i32 %Value, 4
  %and152 = and i32 %shr151, 15
  %mul153 = mul nuw nsw i32 %and152, 10
  %and157 = and i32 %Value, 15
  %add158 = add nuw nsw i32 %mul153, %and157
  %conv159 = trunc i32 %add158 to i8
  %40 = ptrtoint ptr %PwrByRateVal to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %conv159, ptr %PwrByRateVal, align 1
  %shr151.1 = lshr i32 %Value, 12
  %and152.1 = and i32 %shr151.1, 15
  %mul153.1 = mul nuw nsw i32 %and152.1, 10
  %shr156.1 = lshr i32 %Value, 8
  %and157.1 = and i32 %shr156.1, 15
  %add158.1 = add nuw nsw i32 %mul153.1, %and157.1
  %conv159.1 = trunc i32 %add158.1 to i8
  %arrayidx161.1 = getelementptr i8, ptr %PwrByRateVal, i32 1
  %41 = ptrtoint ptr %arrayidx161.1 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %conv159.1, ptr %arrayidx161.1, align 1
  %shr151.2 = lshr i32 %Value, 20
  %and152.2 = and i32 %shr151.2, 15
  %mul153.2 = mul nuw nsw i32 %and152.2, 10
  %shr156.2 = lshr i32 %Value, 16
  %and157.2 = and i32 %shr156.2, 15
  %add158.2 = add nuw nsw i32 %mul153.2, %and157.2
  %conv159.2 = trunc i32 %add158.2 to i8
  %arrayidx161.2 = getelementptr i8, ptr %PwrByRateVal, i32 2
  %42 = ptrtoint ptr %arrayidx161.2 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %conv159.2, ptr %arrayidx161.2, align 1
  %shr151.3 = lshr i32 %Value, 28
  %mul153.3 = mul nuw nsw i32 %shr151.3, 10
  %shr156.3 = lshr i32 %Value, 24
  %and157.3 = and i32 %shr156.3, 15
  %add158.3 = add nuw nsw i32 %mul153.3, %and157.3
  %conv159.3 = trunc i32 %add158.3 to i8
  %arrayidx161.3 = getelementptr i8, ptr %PwrByRateVal, i32 3
  %43 = ptrtoint ptr %arrayidx161.3 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %conv159.3, ptr %arrayidx161.3, align 1
  br label %sw.epilog.sink.split

sw.bb165:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %44 = ptrtoint ptr %RateIndex to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 0, ptr %RateIndex, align 1
  %arrayidx169 = getelementptr i8, ptr %RateIndex, i32 1
  %45 = ptrtoint ptr %arrayidx169 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 1, ptr %arrayidx169, align 1
  %arrayidx171 = getelementptr i8, ptr %RateIndex, i32 2
  %46 = ptrtoint ptr %arrayidx171 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 2, ptr %arrayidx171, align 1
  %shr180 = lshr i32 %Value, 12
  %and181 = and i32 %shr180, 15
  %mul182 = mul nuw nsw i32 %and181, 10
  %shr185 = lshr i32 %Value, 8
  %and186 = and i32 %shr185, 15
  %add187 = add nuw nsw i32 %mul182, %and186
  %conv188 = trunc i32 %add187 to i8
  %47 = ptrtoint ptr %PwrByRateVal to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %conv188, ptr %PwrByRateVal, align 1
  %shr180.1 = lshr i32 %Value, 20
  %and181.1 = and i32 %shr180.1, 15
  %mul182.1 = mul nuw nsw i32 %and181.1, 10
  %shr185.1 = lshr i32 %Value, 16
  %and186.1 = and i32 %shr185.1, 15
  %add187.1 = add nuw nsw i32 %mul182.1, %and186.1
  %conv188.1 = trunc i32 %add187.1 to i8
  %arrayidx191.1 = getelementptr i8, ptr %PwrByRateVal, i32 1
  %48 = ptrtoint ptr %arrayidx191.1 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %conv188.1, ptr %arrayidx191.1, align 1
  %shr180.2 = lshr i32 %Value, 28
  %mul182.2 = mul nuw nsw i32 %shr180.2, 10
  %shr185.2 = lshr i32 %Value, 24
  %and186.2 = and i32 %shr185.2, 15
  %add187.2 = add nuw nsw i32 %mul182.2, %and186.2
  %conv188.2 = trunc i32 %add187.2 to i8
  %arrayidx191.2 = getelementptr i8, ptr %PwrByRateVal, i32 2
  %49 = ptrtoint ptr %arrayidx191.2 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %conv188.2, ptr %arrayidx191.2, align 1
  br label %sw.epilog.sink.split

sw.bb195:                                         ; preds = %entry.sw.bb195_crit_edge, %entry.sw.bb195_crit_edge512, %entry.sw.bb195_crit_edge513, %entry.sw.bb195_crit_edge514
  %50 = ptrtoint ptr %RateIndex to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 0, ptr %RateIndex, align 1
  %arrayidx199 = getelementptr i8, ptr %RateIndex, i32 1
  %51 = ptrtoint ptr %arrayidx199 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 1, ptr %arrayidx199, align 1
  %arrayidx201 = getelementptr i8, ptr %RateIndex, i32 2
  %52 = ptrtoint ptr %arrayidx201 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 2, ptr %arrayidx201, align 1
  %arrayidx203 = getelementptr i8, ptr %RateIndex, i32 3
  %53 = ptrtoint ptr %arrayidx203 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 3, ptr %arrayidx203, align 1
  %shr212 = lshr i32 %Value, 4
  %and213 = and i32 %shr212, 15
  %mul214 = mul nuw nsw i32 %and213, 10
  %and218 = and i32 %Value, 15
  %add219 = add nuw nsw i32 %mul214, %and218
  %conv220 = trunc i32 %add219 to i8
  %54 = ptrtoint ptr %PwrByRateVal to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %conv220, ptr %PwrByRateVal, align 1
  %shr212.1 = lshr i32 %Value, 12
  %and213.1 = and i32 %shr212.1, 15
  %mul214.1 = mul nuw nsw i32 %and213.1, 10
  %shr217.1 = lshr i32 %Value, 8
  %and218.1 = and i32 %shr217.1, 15
  %add219.1 = add nuw nsw i32 %mul214.1, %and218.1
  %conv220.1 = trunc i32 %add219.1 to i8
  %arrayidx222.1 = getelementptr i8, ptr %PwrByRateVal, i32 1
  %55 = ptrtoint ptr %arrayidx222.1 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %conv220.1, ptr %arrayidx222.1, align 1
  %shr212.2 = lshr i32 %Value, 20
  %and213.2 = and i32 %shr212.2, 15
  %mul214.2 = mul nuw nsw i32 %and213.2, 10
  %shr217.2 = lshr i32 %Value, 16
  %and218.2 = and i32 %shr217.2, 15
  %add219.2 = add nuw nsw i32 %mul214.2, %and218.2
  %conv220.2 = trunc i32 %add219.2 to i8
  %arrayidx222.2 = getelementptr i8, ptr %PwrByRateVal, i32 2
  %56 = ptrtoint ptr %arrayidx222.2 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %conv220.2, ptr %arrayidx222.2, align 1
  %shr212.3 = lshr i32 %Value, 28
  %mul214.3 = mul nuw nsw i32 %shr212.3, 10
  %shr217.3 = lshr i32 %Value, 24
  %and218.3 = and i32 %shr217.3, 15
  %add219.3 = add nuw nsw i32 %mul214.3, %and218.3
  %conv220.3 = trunc i32 %add219.3 to i8
  %arrayidx222.3 = getelementptr i8, ptr %PwrByRateVal, i32 3
  %57 = ptrtoint ptr %arrayidx222.3 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %conv220.3, ptr %arrayidx222.3, align 1
  br label %sw.epilog.sink.split

sw.bb226:                                         ; preds = %entry.sw.bb226_crit_edge, %entry.sw.bb226_crit_edge515, %entry.sw.bb226_crit_edge516, %entry.sw.bb226_crit_edge517
  %58 = ptrtoint ptr %RateIndex to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 4, ptr %RateIndex, align 1
  %arrayidx230 = getelementptr i8, ptr %RateIndex, i32 1
  %59 = ptrtoint ptr %arrayidx230 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 5, ptr %arrayidx230, align 1
  %arrayidx232 = getelementptr i8, ptr %RateIndex, i32 2
  %60 = ptrtoint ptr %arrayidx232 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 6, ptr %arrayidx232, align 1
  %arrayidx234 = getelementptr i8, ptr %RateIndex, i32 3
  %61 = ptrtoint ptr %arrayidx234 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 7, ptr %arrayidx234, align 1
  %shr243 = lshr i32 %Value, 4
  %and244 = and i32 %shr243, 15
  %mul245 = mul nuw nsw i32 %and244, 10
  %and249 = and i32 %Value, 15
  %add250 = add nuw nsw i32 %mul245, %and249
  %conv251 = trunc i32 %add250 to i8
  %62 = ptrtoint ptr %PwrByRateVal to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %conv251, ptr %PwrByRateVal, align 1
  %shr243.1 = lshr i32 %Value, 12
  %and244.1 = and i32 %shr243.1, 15
  %mul245.1 = mul nuw nsw i32 %and244.1, 10
  %shr248.1 = lshr i32 %Value, 8
  %and249.1 = and i32 %shr248.1, 15
  %add250.1 = add nuw nsw i32 %mul245.1, %and249.1
  %conv251.1 = trunc i32 %add250.1 to i8
  %arrayidx253.1 = getelementptr i8, ptr %PwrByRateVal, i32 1
  %63 = ptrtoint ptr %arrayidx253.1 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %conv251.1, ptr %arrayidx253.1, align 1
  %shr243.2 = lshr i32 %Value, 20
  %and244.2 = and i32 %shr243.2, 15
  %mul245.2 = mul nuw nsw i32 %and244.2, 10
  %shr248.2 = lshr i32 %Value, 16
  %and249.2 = and i32 %shr248.2, 15
  %add250.2 = add nuw nsw i32 %mul245.2, %and249.2
  %conv251.2 = trunc i32 %add250.2 to i8
  %arrayidx253.2 = getelementptr i8, ptr %PwrByRateVal, i32 2
  %64 = ptrtoint ptr %arrayidx253.2 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %conv251.2, ptr %arrayidx253.2, align 1
  %shr243.3 = lshr i32 %Value, 28
  %mul245.3 = mul nuw nsw i32 %shr243.3, 10
  %shr248.3 = lshr i32 %Value, 24
  %and249.3 = and i32 %shr248.3, 15
  %add250.3 = add nuw nsw i32 %mul245.3, %and249.3
  %conv251.3 = trunc i32 %add250.3 to i8
  %arrayidx253.3 = getelementptr i8, ptr %PwrByRateVal, i32 3
  %65 = ptrtoint ptr %arrayidx253.3 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %conv251.3, ptr %arrayidx253.3, align 1
  br label %sw.epilog.sink.split

sw.bb257:                                         ; preds = %entry.sw.bb257_crit_edge, %entry.sw.bb257_crit_edge518, %entry.sw.bb257_crit_edge519, %entry.sw.bb257_crit_edge520
  %66 = ptrtoint ptr %RateIndex to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 8, ptr %RateIndex, align 1
  %arrayidx261 = getelementptr i8, ptr %RateIndex, i32 1
  %67 = ptrtoint ptr %arrayidx261 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 9, ptr %arrayidx261, align 1
  %arrayidx263 = getelementptr i8, ptr %RateIndex, i32 2
  %68 = ptrtoint ptr %arrayidx263 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 10, ptr %arrayidx263, align 1
  %arrayidx265 = getelementptr i8, ptr %RateIndex, i32 3
  %69 = ptrtoint ptr %arrayidx265 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 11, ptr %arrayidx265, align 1
  %shr274 = lshr i32 %Value, 4
  %and275 = and i32 %shr274, 15
  %mul276 = mul nuw nsw i32 %and275, 10
  %and280 = and i32 %Value, 15
  %add281 = add nuw nsw i32 %mul276, %and280
  %conv282 = trunc i32 %add281 to i8
  %70 = ptrtoint ptr %PwrByRateVal to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %conv282, ptr %PwrByRateVal, align 1
  %shr274.1 = lshr i32 %Value, 12
  %and275.1 = and i32 %shr274.1, 15
  %mul276.1 = mul nuw nsw i32 %and275.1, 10
  %shr279.1 = lshr i32 %Value, 8
  %and280.1 = and i32 %shr279.1, 15
  %add281.1 = add nuw nsw i32 %mul276.1, %and280.1
  %conv282.1 = trunc i32 %add281.1 to i8
  %arrayidx284.1 = getelementptr i8, ptr %PwrByRateVal, i32 1
  %71 = ptrtoint ptr %arrayidx284.1 to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 %conv282.1, ptr %arrayidx284.1, align 1
  %shr274.2 = lshr i32 %Value, 20
  %and275.2 = and i32 %shr274.2, 15
  %mul276.2 = mul nuw nsw i32 %and275.2, 10
  %shr279.2 = lshr i32 %Value, 16
  %and280.2 = and i32 %shr279.2, 15
  %add281.2 = add nuw nsw i32 %mul276.2, %and280.2
  %conv282.2 = trunc i32 %add281.2 to i8
  %arrayidx284.2 = getelementptr i8, ptr %PwrByRateVal, i32 2
  %72 = ptrtoint ptr %arrayidx284.2 to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 %conv282.2, ptr %arrayidx284.2, align 1
  %shr274.3 = lshr i32 %Value, 28
  %mul276.3 = mul nuw nsw i32 %shr274.3, 10
  %shr279.3 = lshr i32 %Value, 24
  %and280.3 = and i32 %shr279.3, 15
  %add281.3 = add nuw nsw i32 %mul276.3, %and280.3
  %conv282.3 = trunc i32 %add281.3 to i8
  %arrayidx284.3 = getelementptr i8, ptr %PwrByRateVal, i32 3
  %73 = ptrtoint ptr %arrayidx284.3 to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 %conv282.3, ptr %arrayidx284.3, align 1
  br label %sw.epilog.sink.split

sw.bb288:                                         ; preds = %entry.sw.bb288_crit_edge, %entry.sw.bb288_crit_edge521, %entry.sw.bb288_crit_edge522, %entry.sw.bb288_crit_edge523
  %74 = ptrtoint ptr %RateIndex to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 12, ptr %RateIndex, align 1
  %arrayidx292 = getelementptr i8, ptr %RateIndex, i32 1
  %75 = ptrtoint ptr %arrayidx292 to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 13, ptr %arrayidx292, align 1
  %arrayidx294 = getelementptr i8, ptr %RateIndex, i32 2
  %76 = ptrtoint ptr %arrayidx294 to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 14, ptr %arrayidx294, align 1
  %arrayidx296 = getelementptr i8, ptr %RateIndex, i32 3
  %77 = ptrtoint ptr %arrayidx296 to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 15, ptr %arrayidx296, align 1
  %shr305 = lshr i32 %Value, 4
  %and306 = and i32 %shr305, 15
  %mul307 = mul nuw nsw i32 %and306, 10
  %and311 = and i32 %Value, 15
  %add312 = add nuw nsw i32 %mul307, %and311
  %conv313 = trunc i32 %add312 to i8
  %78 = ptrtoint ptr %PwrByRateVal to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 %conv313, ptr %PwrByRateVal, align 1
  %shr305.1 = lshr i32 %Value, 12
  %and306.1 = and i32 %shr305.1, 15
  %mul307.1 = mul nuw nsw i32 %and306.1, 10
  %shr310.1 = lshr i32 %Value, 8
  %and311.1 = and i32 %shr310.1, 15
  %add312.1 = add nuw nsw i32 %mul307.1, %and311.1
  %conv313.1 = trunc i32 %add312.1 to i8
  %arrayidx315.1 = getelementptr i8, ptr %PwrByRateVal, i32 1
  %79 = ptrtoint ptr %arrayidx315.1 to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 %conv313.1, ptr %arrayidx315.1, align 1
  %shr305.2 = lshr i32 %Value, 20
  %and306.2 = and i32 %shr305.2, 15
  %mul307.2 = mul nuw nsw i32 %and306.2, 10
  %shr310.2 = lshr i32 %Value, 16
  %and311.2 = and i32 %shr310.2, 15
  %add312.2 = add nuw nsw i32 %mul307.2, %and311.2
  %conv313.2 = trunc i32 %add312.2 to i8
  %arrayidx315.2 = getelementptr i8, ptr %PwrByRateVal, i32 2
  %80 = ptrtoint ptr %arrayidx315.2 to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 %conv313.2, ptr %arrayidx315.2, align 1
  %shr305.3 = lshr i32 %Value, 28
  %mul307.3 = mul nuw nsw i32 %shr305.3, 10
  %shr310.3 = lshr i32 %Value, 24
  %and311.3 = and i32 %shr310.3, 15
  %add312.3 = add nuw nsw i32 %mul307.3, %and311.3
  %conv313.3 = trunc i32 %add312.3 to i8
  %arrayidx315.3 = getelementptr i8, ptr %PwrByRateVal, i32 3
  %81 = ptrtoint ptr %arrayidx315.3 to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 %conv313.3, ptr %arrayidx315.3, align 1
  br label %sw.epilog.sink.split

sw.bb319:                                         ; preds = %entry.sw.bb319_crit_edge, %entry.sw.bb319_crit_edge524, %entry.sw.bb319_crit_edge525, %entry.sw.bb319_crit_edge526
  %82 = ptrtoint ptr %RateIndex to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 16, ptr %RateIndex, align 1
  %arrayidx323 = getelementptr i8, ptr %RateIndex, i32 1
  %83 = ptrtoint ptr %arrayidx323 to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 17, ptr %arrayidx323, align 1
  %arrayidx325 = getelementptr i8, ptr %RateIndex, i32 2
  %84 = ptrtoint ptr %arrayidx325 to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 18, ptr %arrayidx325, align 1
  %arrayidx327 = getelementptr i8, ptr %RateIndex, i32 3
  %85 = ptrtoint ptr %arrayidx327 to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 19, ptr %arrayidx327, align 1
  %shr336 = lshr i32 %Value, 4
  %and337 = and i32 %shr336, 15
  %mul338 = mul nuw nsw i32 %and337, 10
  %and342 = and i32 %Value, 15
  %add343 = add nuw nsw i32 %mul338, %and342
  %conv344 = trunc i32 %add343 to i8
  %86 = ptrtoint ptr %PwrByRateVal to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 %conv344, ptr %PwrByRateVal, align 1
  %shr336.1 = lshr i32 %Value, 12
  %and337.1 = and i32 %shr336.1, 15
  %mul338.1 = mul nuw nsw i32 %and337.1, 10
  %shr341.1 = lshr i32 %Value, 8
  %and342.1 = and i32 %shr341.1, 15
  %add343.1 = add nuw nsw i32 %mul338.1, %and342.1
  %conv344.1 = trunc i32 %add343.1 to i8
  %arrayidx346.1 = getelementptr i8, ptr %PwrByRateVal, i32 1
  %87 = ptrtoint ptr %arrayidx346.1 to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 %conv344.1, ptr %arrayidx346.1, align 1
  %shr336.2 = lshr i32 %Value, 20
  %and337.2 = and i32 %shr336.2, 15
  %mul338.2 = mul nuw nsw i32 %and337.2, 10
  %shr341.2 = lshr i32 %Value, 16
  %and342.2 = and i32 %shr341.2, 15
  %add343.2 = add nuw nsw i32 %mul338.2, %and342.2
  %conv344.2 = trunc i32 %add343.2 to i8
  %arrayidx346.2 = getelementptr i8, ptr %PwrByRateVal, i32 2
  %88 = ptrtoint ptr %arrayidx346.2 to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 %conv344.2, ptr %arrayidx346.2, align 1
  %shr336.3 = lshr i32 %Value, 28
  %mul338.3 = mul nuw nsw i32 %shr336.3, 10
  %shr341.3 = lshr i32 %Value, 24
  %and342.3 = and i32 %shr341.3, 15
  %add343.3 = add nuw nsw i32 %mul338.3, %and342.3
  %conv344.3 = trunc i32 %add343.3 to i8
  %arrayidx346.3 = getelementptr i8, ptr %PwrByRateVal, i32 3
  %89 = ptrtoint ptr %arrayidx346.3 to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 %conv344.3, ptr %arrayidx346.3, align 1
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb319, %sw.bb288, %sw.bb257, %sw.bb226, %sw.bb195, %sw.bb165, %sw.bb134, %sw.bb103, %if.then92, %if.then, %sw.bb48, %sw.bb17, %sw.bb
  %.sink = phi i8 [ 3, %if.then ], [ 1, %if.then92 ], [ 4, %sw.bb319 ], [ 4, %sw.bb288 ], [ 4, %sw.bb257 ], [ 4, %sw.bb226 ], [ 4, %sw.bb195 ], [ 3, %sw.bb165 ], [ 4, %sw.bb134 ], [ 4, %sw.bb103 ], [ 1, %sw.bb48 ], [ 4, %sw.bb17 ], [ 4, %sw.bb ]
  %90 = ptrtoint ptr %RateNum to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 %.sink, ptr %RateNum, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %sw.bb59.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i8 @PHY_GetRateIndexOfTxPowerByRate(i8 noundef zeroext %Rate) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i8 %Rate to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.13)
  switch i8 %Rate, label %entry.sw.epilog_crit_edge [
    i8 -121, label %sw.bb19
    i8 4, label %sw.bb1
    i8 11, label %sw.bb2
    i8 22, label %sw.bb3
    i8 12, label %sw.bb4
    i8 18, label %sw.bb5
    i8 24, label %sw.bb6
    i8 36, label %sw.bb7
    i8 48, label %sw.bb8
    i8 72, label %sw.bb9
    i8 96, label %sw.bb10
    i8 108, label %sw.bb11
    i8 -128, label %sw.bb12
    i8 -127, label %sw.bb13
    i8 -126, label %sw.bb14
    i8 -125, label %sw.bb15
    i8 -124, label %sw.bb16
    i8 -123, label %sw.bb17
    i8 -122, label %sw.bb18
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb9:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb10:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb11:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb12:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb13:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb14:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb15:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb16:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb17:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb18:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb19:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb19, %sw.bb18, %sw.bb17, %sw.bb16, %sw.bb15, %sw.bb14, %sw.bb13, %sw.bb12, %sw.bb11, %sw.bb10, %sw.bb9, %sw.bb8, %sw.bb7, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %entry.sw.epilog_crit_edge
  %index.0 = phi i8 [ 19, %sw.bb19 ], [ 18, %sw.bb18 ], [ 17, %sw.bb17 ], [ 16, %sw.bb16 ], [ 15, %sw.bb15 ], [ 14, %sw.bb14 ], [ 13, %sw.bb13 ], [ 12, %sw.bb12 ], [ 11, %sw.bb11 ], [ 10, %sw.bb10 ], [ 9, %sw.bb9 ], [ 8, %sw.bb8 ], [ 7, %sw.bb7 ], [ 6, %sw.bb6 ], [ 5, %sw.bb5 ], [ 4, %sw.bb4 ], [ 3, %sw.bb3 ], [ 2, %sw.bb2 ], [ 1, %sw.bb1 ], [ 0, %entry.sw.epilog_crit_edge ]
  ret i8 %index.0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @PHY_InitTxPowerByRate(ptr nocapture noundef readonly %padapter) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %HalData = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 18
  %0 = ptrtoint ptr %HalData to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %HalData, align 8
  %uglygep19 = getelementptr i8, ptr %1, i32 9005
  %2 = call ptr @memset(ptr %uglygep19, i32 0, i32 168)
  ret void
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @PHY_StoreTxPowerByRate(ptr nocapture noundef readonly %padapter, i32 noundef %RfPath, i32 noundef %RegAddr, i32 noundef %BitMask, i32 noundef %Data) local_unnamed_addr #5 align 64 {
entry:
  %rateIndex.i = alloca [4 x i8], align 4
  %rateNum.i = alloca i8, align 1
  %PwrByRateVal.i = alloca [4 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %HalData = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 18
  %0 = ptrtoint ptr %HalData to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %HalData, align 8
  %PhyRegPgVersion = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 141, i32 3
  %2 = ptrtoint ptr %PhyRegPgVersion to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %PhyRegPgVersion, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp.not = icmp eq i8 %3, 0
  br i1 %cmp.not, label %if.then.i.i, label %if.then

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rateIndex.i) #10
  %4 = ptrtoint ptr %rateIndex.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %rateIndex.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %rateNum.i) #10
  %5 = ptrtoint ptr %rateNum.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %rateNum.i, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %PwrByRateVal.i) #10
  %6 = ptrtoint ptr %PwrByRateVal.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %PwrByRateVal.i, align 4
  call void @PHY_GetRateValuesOfTxPowerByRate(ptr undef, i32 noundef %RegAddr, i32 noundef %BitMask, i32 noundef %Data, ptr noundef nonnull %rateIndex.i, ptr noundef nonnull %PwrByRateVal.i, ptr noundef nonnull %rateNum.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %RfPath)
  %cmp.i = icmp ugt i32 %RfPath, 1
  br i1 %cmp.i, label %if.then.PHY_StoreTxPowerByRateNew.exit_crit_edge, label %for.cond.preheader.i

if.then.PHY_StoreTxPowerByRateNew.exit_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %PHY_StoreTxPowerByRateNew.exit

for.cond.preheader.i:                             ; preds = %if.then
  %7 = ptrtoint ptr %rateNum.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %rateNum.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %cmp319.not.i = icmp eq i8 %8, 0
  br i1 %cmp319.not.i, label %for.cond.preheader.i.PHY_StoreTxPowerByRateNew.exit_crit_edge, label %for.body.preheader.i

for.cond.preheader.i.PHY_StoreTxPowerByRateNew.exit_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %PHY_StoreTxPowerByRateNew.exit

for.body.preheader.i:                             ; preds = %for.cond.preheader.i
  %wide.trip.count.i = zext i8 %8 to i32
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.preheader.i
  %indvars.iv.i = phi i32 [ 0, %for.body.preheader.i ], [ %indvars.iv.next.i, %for.body.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [4 x i8], ptr %PwrByRateVal.i, i32 0, i32 %indvars.iv.i
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx.i, align 1
  %arrayidx7.i = getelementptr [4 x i8], ptr %rateIndex.i, i32 0, i32 %indvars.iv.i
  %11 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx7.i, align 1
  %idxprom8.i = zext i8 %12 to i32
  %arrayidx9.i = getelementptr %struct.hal_com_data, ptr %1, i32 0, i32 56, i32 %RfPath, i32 %idxprom8.i
  %13 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %10, ptr %arrayidx9.i, align 1
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i32 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %for.body.i.PHY_StoreTxPowerByRateNew.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.body.i.PHY_StoreTxPowerByRateNew.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %PHY_StoreTxPowerByRateNew.exit

PHY_StoreTxPowerByRateNew.exit:                   ; preds = %for.body.i.PHY_StoreTxPowerByRateNew.exit_crit_edge, %for.cond.preheader.i.PHY_StoreTxPowerByRateNew.exit_crit_edge, %if.then.PHY_StoreTxPowerByRateNew.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %PwrByRateVal.i) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %rateNum.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rateIndex.i) #10
  br label %if.end7

if.then.i.i:                                      ; preds = %entry
  %14 = zext i32 %RegAddr to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.14)
  switch i32 %RegAddr, label %if.then.i.i.PHY_StoreTxPowerByRateOld.exit_crit_edge [
    i32 2120, label %sw.bb18.i.i
    i32 3588, label %sw.bb2.i.i
    i32 3592, label %sw.bb3.i.i
    i32 2156, label %sw.bb4.i.i
    i32 3600, label %sw.bb12.i.i
    i32 3604, label %sw.bb13.i.i
    i32 2096, label %sw.bb14.i.i
    i32 2100, label %sw.bb15.i.i
    i32 2104, label %sw.bb16.i.i
    i32 2108, label %sw.bb17.i.i
  ]

if.then.i.i.PHY_StoreTxPowerByRateOld.exit_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %PHY_StoreTxPowerByRateOld.exit

sw.bb2.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %PHY_StoreTxPowerByRateOld.exit

sw.bb3.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %PHY_StoreTxPowerByRateOld.exit

sw.bb4.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %BitMask)
  %switch.selectcmp.i.i = icmp eq i32 %BitMask, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 -256, i32 %BitMask)
  %switch.selectcmp21.i.i = icmp eq i32 %BitMask, -256
  %15 = select i1 %switch.selectcmp.i.i, i32 15, i32 0
  %phi.cast.i = select i1 %switch.selectcmp21.i.i, i32 7, i32 %15
  br label %PHY_StoreTxPowerByRateOld.exit

sw.bb12.i.i:                                      ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %PHY_StoreTxPowerByRateOld.exit

sw.bb13.i.i:                                      ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %PHY_StoreTxPowerByRateOld.exit

sw.bb14.i.i:                                      ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %PHY_StoreTxPowerByRateOld.exit

sw.bb15.i.i:                                      ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %PHY_StoreTxPowerByRateOld.exit

sw.bb16.i.i:                                      ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %PHY_StoreTxPowerByRateOld.exit

sw.bb17.i.i:                                      ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %PHY_StoreTxPowerByRateOld.exit

sw.bb18.i.i:                                      ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %PHY_StoreTxPowerByRateOld.exit

PHY_StoreTxPowerByRateOld.exit:                   ; preds = %sw.bb18.i.i, %sw.bb17.i.i, %sw.bb16.i.i, %sw.bb15.i.i, %sw.bb14.i.i, %sw.bb13.i.i, %sw.bb12.i.i, %sw.bb4.i.i, %sw.bb3.i.i, %sw.bb2.i.i, %if.then.i.i.PHY_StoreTxPowerByRateOld.exit_crit_edge
  %index.0.i.i = phi i32 [ 11, %sw.bb18.i.i ], [ 10, %sw.bb17.i.i ], [ 14, %sw.bb16.i.i ], [ 9, %sw.bb15.i.i ], [ 8, %sw.bb14.i.i ], [ 3, %sw.bb13.i.i ], [ 2, %sw.bb12.i.i ], [ 6, %sw.bb3.i.i ], [ 1, %sw.bb2.i.i ], [ 0, %if.then.i.i.PHY_StoreTxPowerByRateOld.exit_crit_edge ], [ %phi.cast.i, %sw.bb4.i.i ]
  %pwrGroupCnt.i = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 72
  %16 = ptrtoint ptr %pwrGroupCnt.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %pwrGroupCnt.i, align 1
  %idxprom.i = zext i8 %17 to i32
  %arrayidx2.i = getelementptr %struct.hal_com_data, ptr %1, i32 0, i32 73, i32 %idxprom.i, i32 %index.0.i.i
  %18 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %Data, ptr %arrayidx2.i, align 4
  br label %if.end7

if.end7:                                          ; preds = %PHY_StoreTxPowerByRateOld.exit, %PHY_StoreTxPowerByRateNew.exit
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @PHY_TxPowerByRateConfiguration(ptr nocapture noundef readonly %padapter) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %HalData.i.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 18
  %RegEnableTxPowerByRate.i.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 14, i32 63
  %0 = ptrtoint ptr %HalData.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %HalData.i.i, align 8
  %2 = ptrtoint ptr %RegEnableTxPowerByRate.i.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %RegEnableTxPowerByRate.i.i, align 1
  %4 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.15)
  switch i8 %3, label %entry.if.end19.i.i_crit_edge [
    i8 2, label %land.lhs.true.i.i
    i8 0, label %entry.phy_SetTxPowerByRateBase.exit.i_crit_edge
  ]

entry.phy_SetTxPowerByRateBase.exit.i_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %phy_SetTxPowerByRateBase.exit.i

entry.if.end19.i.i_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %EEPROMRegulatory.i.i = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 31
  %5 = ptrtoint ptr %EEPROMRegulatory.i.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %EEPROMRegulatory.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %6)
  %cmp3.i.i = icmp eq i8 %6, 2
  br i1 %cmp3.i.i, label %land.lhs.true.i.i.phy_SetTxPowerByRateBase.exit.i_crit_edge, label %land.lhs.true.i.i.if.end19.i.i_crit_edge

land.lhs.true.i.i.if.end19.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19.i.i

land.lhs.true.i.i.phy_SetTxPowerByRateBase.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %phy_SetTxPowerByRateBase.exit.i

if.end19.i.i:                                     ; preds = %land.lhs.true.i.i.if.end19.i.i_crit_edge, %entry.if.end19.i.i_crit_edge
  %arrayidx21.i.i = getelementptr %struct.hal_com_data, ptr %1, i32 0, i32 56, i32 0, i32 3
  %7 = ptrtoint ptr %arrayidx21.i.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx21.i.i, align 1
  br label %phy_SetTxPowerByRateBase.exit.i

phy_SetTxPowerByRateBase.exit.i:                  ; preds = %if.end19.i.i, %land.lhs.true.i.i.phy_SetTxPowerByRateBase.exit.i_crit_edge, %entry.phy_SetTxPowerByRateBase.exit.i_crit_edge
  %retval.0.i.i = phi i8 [ %8, %if.end19.i.i ], [ 0, %land.lhs.true.i.i.phy_SetTxPowerByRateBase.exit.i_crit_edge ], [ %3, %entry.phy_SetTxPowerByRateBase.exit.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.hal_com_data, ptr %1, i32 0, i32 63, i32 0
  %9 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %retval.0.i.i, ptr %arrayidx.i.i, align 1
  %10 = ptrtoint ptr %HalData.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %HalData.i.i, align 8
  %12 = ptrtoint ptr %RegEnableTxPowerByRate.i.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %RegEnableTxPowerByRate.i.i, align 1
  %14 = zext i8 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.16)
  switch i8 %13, label %phy_SetTxPowerByRateBase.exit.i.if.end19.i33.i_crit_edge [
    i8 2, label %land.lhs.true.i27.i
    i8 0, label %phy_SetTxPowerByRateBase.exit.i.phy_SetTxPowerByRateBase.exit40.i_crit_edge
  ]

phy_SetTxPowerByRateBase.exit.i.phy_SetTxPowerByRateBase.exit40.i_crit_edge: ; preds = %phy_SetTxPowerByRateBase.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %phy_SetTxPowerByRateBase.exit40.i

phy_SetTxPowerByRateBase.exit.i.if.end19.i33.i_crit_edge: ; preds = %phy_SetTxPowerByRateBase.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19.i33.i

land.lhs.true.i27.i:                              ; preds = %phy_SetTxPowerByRateBase.exit.i
  %EEPROMRegulatory.i23.i = getelementptr inbounds %struct.hal_com_data, ptr %11, i32 0, i32 31
  %15 = ptrtoint ptr %EEPROMRegulatory.i23.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %EEPROMRegulatory.i23.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %16)
  %cmp3.i24.i = icmp eq i8 %16, 2
  br i1 %cmp3.i24.i, label %land.lhs.true.i27.i.phy_SetTxPowerByRateBase.exit40.i_crit_edge, label %land.lhs.true.i27.i.if.end19.i33.i_crit_edge

land.lhs.true.i27.i.if.end19.i33.i_crit_edge:     ; preds = %land.lhs.true.i27.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19.i33.i

land.lhs.true.i27.i.phy_SetTxPowerByRateBase.exit40.i_crit_edge: ; preds = %land.lhs.true.i27.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %phy_SetTxPowerByRateBase.exit40.i

if.end19.i33.i:                                   ; preds = %land.lhs.true.i27.i.if.end19.i33.i_crit_edge, %phy_SetTxPowerByRateBase.exit.i.if.end19.i33.i_crit_edge
  %arrayidx21.i32.i = getelementptr %struct.hal_com_data, ptr %11, i32 0, i32 56, i32 0, i32 11
  %17 = ptrtoint ptr %arrayidx21.i32.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx21.i32.i, align 1
  br label %phy_SetTxPowerByRateBase.exit40.i

phy_SetTxPowerByRateBase.exit40.i:                ; preds = %if.end19.i33.i, %land.lhs.true.i27.i.phy_SetTxPowerByRateBase.exit40.i_crit_edge, %phy_SetTxPowerByRateBase.exit.i.phy_SetTxPowerByRateBase.exit40.i_crit_edge
  %retval.0.i34.i = phi i8 [ %18, %if.end19.i33.i ], [ 0, %land.lhs.true.i27.i.phy_SetTxPowerByRateBase.exit40.i_crit_edge ], [ %13, %phy_SetTxPowerByRateBase.exit.i.phy_SetTxPowerByRateBase.exit40.i_crit_edge ]
  %arrayidx7.i.i = getelementptr %struct.hal_com_data, ptr %11, i32 0, i32 63, i32 0, i32 1
  %19 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %retval.0.i34.i, ptr %arrayidx7.i.i, align 1
  %20 = ptrtoint ptr %HalData.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %HalData.i.i, align 8
  %22 = ptrtoint ptr %RegEnableTxPowerByRate.i.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %RegEnableTxPowerByRate.i.i, align 1
  %24 = zext i8 %23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.17)
  switch i8 %23, label %phy_SetTxPowerByRateBase.exit40.i.if.end19.i54.i_crit_edge [
    i8 2, label %land.lhs.true.i48.i
    i8 0, label %phy_SetTxPowerByRateBase.exit40.i.phy_SetTxPowerByRateBase.exit61.i_crit_edge
  ]

phy_SetTxPowerByRateBase.exit40.i.phy_SetTxPowerByRateBase.exit61.i_crit_edge: ; preds = %phy_SetTxPowerByRateBase.exit40.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %phy_SetTxPowerByRateBase.exit61.i

phy_SetTxPowerByRateBase.exit40.i.if.end19.i54.i_crit_edge: ; preds = %phy_SetTxPowerByRateBase.exit40.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19.i54.i

land.lhs.true.i48.i:                              ; preds = %phy_SetTxPowerByRateBase.exit40.i
  %EEPROMRegulatory.i44.i = getelementptr inbounds %struct.hal_com_data, ptr %21, i32 0, i32 31
  %25 = ptrtoint ptr %EEPROMRegulatory.i44.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %EEPROMRegulatory.i44.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %26)
  %cmp3.i45.i = icmp eq i8 %26, 2
  br i1 %cmp3.i45.i, label %land.lhs.true.i48.i.phy_SetTxPowerByRateBase.exit61.i_crit_edge, label %land.lhs.true.i48.i.if.end19.i54.i_crit_edge

land.lhs.true.i48.i.if.end19.i54.i_crit_edge:     ; preds = %land.lhs.true.i48.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19.i54.i

land.lhs.true.i48.i.phy_SetTxPowerByRateBase.exit61.i_crit_edge: ; preds = %land.lhs.true.i48.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %phy_SetTxPowerByRateBase.exit61.i

if.end19.i54.i:                                   ; preds = %land.lhs.true.i48.i.if.end19.i54.i_crit_edge, %phy_SetTxPowerByRateBase.exit40.i.if.end19.i54.i_crit_edge
  %arrayidx21.i53.i = getelementptr %struct.hal_com_data, ptr %21, i32 0, i32 56, i32 0, i32 19
  %27 = ptrtoint ptr %arrayidx21.i53.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx21.i53.i, align 1
  br label %phy_SetTxPowerByRateBase.exit61.i

phy_SetTxPowerByRateBase.exit61.i:                ; preds = %if.end19.i54.i, %land.lhs.true.i48.i.phy_SetTxPowerByRateBase.exit61.i_crit_edge, %phy_SetTxPowerByRateBase.exit40.i.phy_SetTxPowerByRateBase.exit61.i_crit_edge
  %retval.0.i55.i = phi i8 [ %28, %if.end19.i54.i ], [ 0, %land.lhs.true.i48.i.phy_SetTxPowerByRateBase.exit61.i_crit_edge ], [ %23, %phy_SetTxPowerByRateBase.exit40.i.phy_SetTxPowerByRateBase.exit61.i_crit_edge ]
  %arrayidx12.i.i = getelementptr %struct.hal_com_data, ptr %21, i32 0, i32 63, i32 0, i32 2
  %29 = ptrtoint ptr %arrayidx12.i.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %retval.0.i55.i, ptr %arrayidx12.i.i, align 1
  %30 = ptrtoint ptr %HalData.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %HalData.i.i, align 8
  %32 = ptrtoint ptr %RegEnableTxPowerByRate.i.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %RegEnableTxPowerByRate.i.i, align 1
  %34 = zext i8 %33 to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values.18)
  switch i8 %33, label %phy_SetTxPowerByRateBase.exit61.i.if.end19.i.1.i_crit_edge [
    i8 2, label %land.lhs.true.i.1.i
    i8 0, label %phy_SetTxPowerByRateBase.exit61.i.phy_SetTxPowerByRateBase.exit.1.i_crit_edge
  ]

phy_SetTxPowerByRateBase.exit61.i.phy_SetTxPowerByRateBase.exit.1.i_crit_edge: ; preds = %phy_SetTxPowerByRateBase.exit61.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %phy_SetTxPowerByRateBase.exit.1.i

phy_SetTxPowerByRateBase.exit61.i.if.end19.i.1.i_crit_edge: ; preds = %phy_SetTxPowerByRateBase.exit61.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19.i.1.i

land.lhs.true.i.1.i:                              ; preds = %phy_SetTxPowerByRateBase.exit61.i
  %EEPROMRegulatory.i.1.i = getelementptr inbounds %struct.hal_com_data, ptr %31, i32 0, i32 31
  %35 = ptrtoint ptr %EEPROMRegulatory.i.1.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %EEPROMRegulatory.i.1.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %36)
  %cmp3.i.1.i = icmp eq i8 %36, 2
  br i1 %cmp3.i.1.i, label %land.lhs.true.i.1.i.phy_SetTxPowerByRateBase.exit.1.i_crit_edge, label %land.lhs.true.i.1.i.if.end19.i.1.i_crit_edge

land.lhs.true.i.1.i.if.end19.i.1.i_crit_edge:     ; preds = %land.lhs.true.i.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19.i.1.i

land.lhs.true.i.1.i.phy_SetTxPowerByRateBase.exit.1.i_crit_edge: ; preds = %land.lhs.true.i.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %phy_SetTxPowerByRateBase.exit.1.i

if.end19.i.1.i:                                   ; preds = %land.lhs.true.i.1.i.if.end19.i.1.i_crit_edge, %phy_SetTxPowerByRateBase.exit61.i.if.end19.i.1.i_crit_edge
  %arrayidx21.i.1.i = getelementptr %struct.hal_com_data, ptr %31, i32 0, i32 56, i32 1, i32 3
  %37 = ptrtoint ptr %arrayidx21.i.1.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx21.i.1.i, align 1
  br label %phy_SetTxPowerByRateBase.exit.1.i

phy_SetTxPowerByRateBase.exit.1.i:                ; preds = %if.end19.i.1.i, %land.lhs.true.i.1.i.phy_SetTxPowerByRateBase.exit.1.i_crit_edge, %phy_SetTxPowerByRateBase.exit61.i.phy_SetTxPowerByRateBase.exit.1.i_crit_edge
  %retval.0.i.1.i = phi i8 [ %38, %if.end19.i.1.i ], [ 0, %land.lhs.true.i.1.i.phy_SetTxPowerByRateBase.exit.1.i_crit_edge ], [ %33, %phy_SetTxPowerByRateBase.exit61.i.phy_SetTxPowerByRateBase.exit.1.i_crit_edge ]
  %arrayidx.i.1.i = getelementptr %struct.hal_com_data, ptr %31, i32 0, i32 63, i32 1
  %39 = ptrtoint ptr %arrayidx.i.1.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %retval.0.i.1.i, ptr %arrayidx.i.1.i, align 1
  %40 = ptrtoint ptr %HalData.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %HalData.i.i, align 8
  %42 = ptrtoint ptr %RegEnableTxPowerByRate.i.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %RegEnableTxPowerByRate.i.i, align 1
  %44 = zext i8 %43 to i64
  call void @__sanitizer_cov_trace_switch(i64 %44, ptr @__sancov_gen_cov_switch_values.19)
  switch i8 %43, label %phy_SetTxPowerByRateBase.exit.1.i.if.end19.i33.1.i_crit_edge [
    i8 2, label %land.lhs.true.i27.1.i
    i8 0, label %phy_SetTxPowerByRateBase.exit.1.i.phy_SetTxPowerByRateBase.exit40.1.i_crit_edge
  ]

phy_SetTxPowerByRateBase.exit.1.i.phy_SetTxPowerByRateBase.exit40.1.i_crit_edge: ; preds = %phy_SetTxPowerByRateBase.exit.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %phy_SetTxPowerByRateBase.exit40.1.i

phy_SetTxPowerByRateBase.exit.1.i.if.end19.i33.1.i_crit_edge: ; preds = %phy_SetTxPowerByRateBase.exit.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19.i33.1.i

land.lhs.true.i27.1.i:                            ; preds = %phy_SetTxPowerByRateBase.exit.1.i
  %EEPROMRegulatory.i23.1.i = getelementptr inbounds %struct.hal_com_data, ptr %41, i32 0, i32 31
  %45 = ptrtoint ptr %EEPROMRegulatory.i23.1.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %EEPROMRegulatory.i23.1.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %46)
  %cmp3.i24.1.i = icmp eq i8 %46, 2
  br i1 %cmp3.i24.1.i, label %land.lhs.true.i27.1.i.phy_SetTxPowerByRateBase.exit40.1.i_crit_edge, label %land.lhs.true.i27.1.i.if.end19.i33.1.i_crit_edge

land.lhs.true.i27.1.i.if.end19.i33.1.i_crit_edge: ; preds = %land.lhs.true.i27.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19.i33.1.i

land.lhs.true.i27.1.i.phy_SetTxPowerByRateBase.exit40.1.i_crit_edge: ; preds = %land.lhs.true.i27.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %phy_SetTxPowerByRateBase.exit40.1.i

if.end19.i33.1.i:                                 ; preds = %land.lhs.true.i27.1.i.if.end19.i33.1.i_crit_edge, %phy_SetTxPowerByRateBase.exit.1.i.if.end19.i33.1.i_crit_edge
  %arrayidx21.i32.1.i = getelementptr %struct.hal_com_data, ptr %41, i32 0, i32 56, i32 1, i32 11
  %47 = ptrtoint ptr %arrayidx21.i32.1.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx21.i32.1.i, align 1
  br label %phy_SetTxPowerByRateBase.exit40.1.i

phy_SetTxPowerByRateBase.exit40.1.i:              ; preds = %if.end19.i33.1.i, %land.lhs.true.i27.1.i.phy_SetTxPowerByRateBase.exit40.1.i_crit_edge, %phy_SetTxPowerByRateBase.exit.1.i.phy_SetTxPowerByRateBase.exit40.1.i_crit_edge
  %retval.0.i34.1.i = phi i8 [ %48, %if.end19.i33.1.i ], [ 0, %land.lhs.true.i27.1.i.phy_SetTxPowerByRateBase.exit40.1.i_crit_edge ], [ %43, %phy_SetTxPowerByRateBase.exit.1.i.phy_SetTxPowerByRateBase.exit40.1.i_crit_edge ]
  %arrayidx7.i.1.i = getelementptr %struct.hal_com_data, ptr %41, i32 0, i32 63, i32 1, i32 1
  %49 = ptrtoint ptr %arrayidx7.i.1.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %retval.0.i34.1.i, ptr %arrayidx7.i.1.i, align 1
  %50 = ptrtoint ptr %HalData.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %HalData.i.i, align 8
  %52 = ptrtoint ptr %RegEnableTxPowerByRate.i.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %RegEnableTxPowerByRate.i.i, align 1
  %54 = zext i8 %53 to i64
  call void @__sanitizer_cov_trace_switch(i64 %54, ptr @__sancov_gen_cov_switch_values.20)
  switch i8 %53, label %phy_SetTxPowerByRateBase.exit40.1.i.if.end19.i54.1.i_crit_edge [
    i8 2, label %land.lhs.true.i48.1.i
    i8 0, label %phy_SetTxPowerByRateBase.exit40.1.i.phy_StoreTxPowerByRateBase.exit_crit_edge
  ]

phy_SetTxPowerByRateBase.exit40.1.i.phy_StoreTxPowerByRateBase.exit_crit_edge: ; preds = %phy_SetTxPowerByRateBase.exit40.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %phy_StoreTxPowerByRateBase.exit

phy_SetTxPowerByRateBase.exit40.1.i.if.end19.i54.1.i_crit_edge: ; preds = %phy_SetTxPowerByRateBase.exit40.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19.i54.1.i

land.lhs.true.i48.1.i:                            ; preds = %phy_SetTxPowerByRateBase.exit40.1.i
  %EEPROMRegulatory.i44.1.i = getelementptr inbounds %struct.hal_com_data, ptr %51, i32 0, i32 31
  %55 = ptrtoint ptr %EEPROMRegulatory.i44.1.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %EEPROMRegulatory.i44.1.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %56)
  %cmp3.i45.1.i = icmp eq i8 %56, 2
  br i1 %cmp3.i45.1.i, label %land.lhs.true.i48.1.i.phy_StoreTxPowerByRateBase.exit_crit_edge, label %land.lhs.true.i48.1.i.if.end19.i54.1.i_crit_edge

land.lhs.true.i48.1.i.if.end19.i54.1.i_crit_edge: ; preds = %land.lhs.true.i48.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19.i54.1.i

land.lhs.true.i48.1.i.phy_StoreTxPowerByRateBase.exit_crit_edge: ; preds = %land.lhs.true.i48.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %phy_StoreTxPowerByRateBase.exit

if.end19.i54.1.i:                                 ; preds = %land.lhs.true.i48.1.i.if.end19.i54.1.i_crit_edge, %phy_SetTxPowerByRateBase.exit40.1.i.if.end19.i54.1.i_crit_edge
  %arrayidx21.i53.1.i = getelementptr %struct.hal_com_data, ptr %51, i32 0, i32 56, i32 1, i32 19
  %57 = ptrtoint ptr %arrayidx21.i53.1.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %arrayidx21.i53.1.i, align 1
  br label %phy_StoreTxPowerByRateBase.exit

phy_StoreTxPowerByRateBase.exit:                  ; preds = %if.end19.i54.1.i, %land.lhs.true.i48.1.i.phy_StoreTxPowerByRateBase.exit_crit_edge, %phy_SetTxPowerByRateBase.exit40.1.i.phy_StoreTxPowerByRateBase.exit_crit_edge
  %retval.0.i55.1.i = phi i8 [ %58, %if.end19.i54.1.i ], [ 0, %land.lhs.true.i48.1.i.phy_StoreTxPowerByRateBase.exit_crit_edge ], [ %53, %phy_SetTxPowerByRateBase.exit40.1.i.phy_StoreTxPowerByRateBase.exit_crit_edge ]
  %arrayidx12.i.1.i = getelementptr %struct.hal_com_data, ptr %51, i32 0, i32 63, i32 1, i32 2
  %59 = ptrtoint ptr %arrayidx12.i.1.i to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %retval.0.i55.1.i, ptr %arrayidx12.i.1.i, align 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc49.i.for.body.i_crit_edge, %phy_StoreTxPowerByRateBase.exit
  %indvars.iv216.i = phi i32 [ 0, %phy_StoreTxPowerByRateBase.exit ], [ %indvars.iv.next217.i, %for.inc49.i.for.body.i_crit_edge ]
  %60 = ptrtoint ptr %HalData.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %HalData.i.i, align 8
  %62 = ptrtoint ptr %RegEnableTxPowerByRate.i.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %RegEnableTxPowerByRate.i.i, align 1
  %64 = zext i8 %63 to i64
  call void @__sanitizer_cov_trace_switch(i64 %64, ptr @__sancov_gen_cov_switch_values.21)
  switch i8 %63, label %for.body.i.PHY_GetTxPowerByRate.exit100.thread186.i_crit_edge [
    i8 2, label %land.lhs.true.i.i6
    i8 0, label %for.body.i.PHY_SetTxPowerByRate.exit.i_crit_edge
  ]

for.body.i.PHY_SetTxPowerByRate.exit.i_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %PHY_SetTxPowerByRate.exit.i

for.body.i.PHY_GetTxPowerByRate.exit100.thread186.i_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %PHY_GetTxPowerByRate.exit100.thread186.i

land.lhs.true.i.i6:                               ; preds = %for.body.i
  %EEPROMRegulatory.i.i4 = getelementptr inbounds %struct.hal_com_data, ptr %61, i32 0, i32 31
  %65 = ptrtoint ptr %EEPROMRegulatory.i.i4 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %EEPROMRegulatory.i.i4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %66)
  %cmp3.i.i5 = icmp eq i8 %66, 2
  br i1 %cmp3.i.i5, label %land.lhs.true.i.i6.PHY_SetTxPowerByRate.exit.i_crit_edge, label %land.lhs.true.i.i6.PHY_GetTxPowerByRate.exit100.thread186.i_crit_edge

land.lhs.true.i.i6.PHY_GetTxPowerByRate.exit100.thread186.i_crit_edge: ; preds = %land.lhs.true.i.i6
  call void @__sanitizer_cov_trace_pc() #12
  br label %PHY_GetTxPowerByRate.exit100.thread186.i

land.lhs.true.i.i6.PHY_SetTxPowerByRate.exit.i_crit_edge: ; preds = %land.lhs.true.i.i6
  call void @__sanitizer_cov_trace_pc() #12
  br label %PHY_SetTxPowerByRate.exit.i

PHY_GetTxPowerByRate.exit100.thread186.i:         ; preds = %land.lhs.true.i.i6.PHY_GetTxPowerByRate.exit100.thread186.i_crit_edge, %for.body.i.PHY_GetTxPowerByRate.exit100.thread186.i_crit_edge
  %retval.0.i228.i.in = getelementptr %struct.hal_com_data, ptr %61, i32 0, i32 56, i32 %indvars.iv216.i, i32 3
  %67 = ptrtoint ptr %retval.0.i228.i.in to i32
  call void @__asan_load1_noabort(i32 %67)
  %retval.0.i228.i = load i8, ptr %retval.0.i228.i.in, align 1
  %arrayidx21.i97.i = getelementptr %struct.hal_com_data, ptr %61, i32 0, i32 56, i32 %indvars.iv216.i, i32 0
  %68 = ptrtoint ptr %arrayidx21.i97.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %arrayidx21.i97.i, align 1
  br label %PHY_SetTxPowerByRate.exit.i

PHY_SetTxPowerByRate.exit.i:                      ; preds = %PHY_GetTxPowerByRate.exit100.thread186.i, %land.lhs.true.i.i6.PHY_SetTxPowerByRate.exit.i_crit_edge, %for.body.i.PHY_SetTxPowerByRate.exit.i_crit_edge
  %retval.0.i226.i = phi i8 [ %retval.0.i228.i, %PHY_GetTxPowerByRate.exit100.thread186.i ], [ %63, %for.body.i.PHY_SetTxPowerByRate.exit.i_crit_edge ], [ 0, %land.lhs.true.i.i6.PHY_SetTxPowerByRate.exit.i_crit_edge ]
  %.pn208.i = phi i8 [ %69, %PHY_GetTxPowerByRate.exit100.thread186.i ], [ %63, %for.body.i.PHY_SetTxPowerByRate.exit.i_crit_edge ], [ 0, %land.lhs.true.i.i6.PHY_SetTxPowerByRate.exit.i_crit_edge ]
  %sub190.i = sub i8 %.pn208.i, %retval.0.i226.i
  %arrayidx8.i.i = getelementptr %struct.hal_com_data, ptr %61, i32 0, i32 56, i32 %indvars.iv216.i, i32 0
  %70 = ptrtoint ptr %arrayidx8.i.i to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %sub190.i, ptr %arrayidx8.i.i, align 1
  %71 = ptrtoint ptr %HalData.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %HalData.i.i, align 8
  %73 = ptrtoint ptr %RegEnableTxPowerByRate.i.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %RegEnableTxPowerByRate.i.i, align 1
  %75 = zext i8 %74 to i64
  call void @__sanitizer_cov_trace_switch(i64 %75, ptr @__sancov_gen_cov_switch_values.22)
  switch i8 %74, label %PHY_SetTxPowerByRate.exit.i.PHY_GetTxPowerByRate.exit100.thread186.1.i_crit_edge [
    i8 2, label %land.lhs.true.i92.1.i
    i8 0, label %PHY_SetTxPowerByRate.exit.i.PHY_SetTxPowerByRate.exit.1.i_crit_edge
  ]

PHY_SetTxPowerByRate.exit.i.PHY_SetTxPowerByRate.exit.1.i_crit_edge: ; preds = %PHY_SetTxPowerByRate.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %PHY_SetTxPowerByRate.exit.1.i

PHY_SetTxPowerByRate.exit.i.PHY_GetTxPowerByRate.exit100.thread186.1.i_crit_edge: ; preds = %PHY_SetTxPowerByRate.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %PHY_GetTxPowerByRate.exit100.thread186.1.i

land.lhs.true.i92.1.i:                            ; preds = %PHY_SetTxPowerByRate.exit.i
  %EEPROMRegulatory.i88.1.i = getelementptr inbounds %struct.hal_com_data, ptr %72, i32 0, i32 31
  %76 = ptrtoint ptr %EEPROMRegulatory.i88.1.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %EEPROMRegulatory.i88.1.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %77)
  %cmp3.i89.1.i = icmp eq i8 %77, 2
  br i1 %cmp3.i89.1.i, label %land.lhs.true.i92.1.i.PHY_SetTxPowerByRate.exit.1.i_crit_edge, label %land.lhs.true.i92.1.i.PHY_GetTxPowerByRate.exit100.thread186.1.i_crit_edge

land.lhs.true.i92.1.i.PHY_GetTxPowerByRate.exit100.thread186.1.i_crit_edge: ; preds = %land.lhs.true.i92.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %PHY_GetTxPowerByRate.exit100.thread186.1.i

land.lhs.true.i92.1.i.PHY_SetTxPowerByRate.exit.1.i_crit_edge: ; preds = %land.lhs.true.i92.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %PHY_SetTxPowerByRate.exit.1.i

PHY_GetTxPowerByRate.exit100.thread186.1.i:       ; preds = %land.lhs.true.i92.1.i.PHY_GetTxPowerByRate.exit100.thread186.1.i_crit_edge, %PHY_SetTxPowerByRate.exit.i.PHY_GetTxPowerByRate.exit100.thread186.1.i_crit_edge
  %arrayidx21.i97.1.i = getelementptr %struct.hal_com_data, ptr %72, i32 0, i32 56, i32 %indvars.iv216.i, i32 1
  %78 = ptrtoint ptr %arrayidx21.i97.1.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %arrayidx21.i97.1.i, align 1
  br label %PHY_SetTxPowerByRate.exit.1.i

PHY_SetTxPowerByRate.exit.1.i:                    ; preds = %PHY_GetTxPowerByRate.exit100.thread186.1.i, %land.lhs.true.i92.1.i.PHY_SetTxPowerByRate.exit.1.i_crit_edge, %PHY_SetTxPowerByRate.exit.i.PHY_SetTxPowerByRate.exit.1.i_crit_edge
  %.pn208.1.i = phi i8 [ %79, %PHY_GetTxPowerByRate.exit100.thread186.1.i ], [ %74, %PHY_SetTxPowerByRate.exit.i.PHY_SetTxPowerByRate.exit.1.i_crit_edge ], [ 0, %land.lhs.true.i92.1.i.PHY_SetTxPowerByRate.exit.1.i_crit_edge ]
  %sub190.1.i = sub i8 %.pn208.1.i, %retval.0.i226.i
  %arrayidx8.i.1.i = getelementptr %struct.hal_com_data, ptr %72, i32 0, i32 56, i32 %indvars.iv216.i, i32 1
  %80 = ptrtoint ptr %arrayidx8.i.1.i to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 %sub190.1.i, ptr %arrayidx8.i.1.i, align 1
  %81 = ptrtoint ptr %HalData.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %HalData.i.i, align 8
  %83 = ptrtoint ptr %RegEnableTxPowerByRate.i.i to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %RegEnableTxPowerByRate.i.i, align 1
  %85 = zext i8 %84 to i64
  call void @__sanitizer_cov_trace_switch(i64 %85, ptr @__sancov_gen_cov_switch_values.23)
  switch i8 %84, label %PHY_SetTxPowerByRate.exit.1.i.PHY_GetTxPowerByRate.exit100.thread186.2.i_crit_edge [
    i8 2, label %land.lhs.true.i92.2.i
    i8 0, label %PHY_SetTxPowerByRate.exit.1.i.PHY_SetTxPowerByRate.exit.2.i_crit_edge
  ]

PHY_SetTxPowerByRate.exit.1.i.PHY_SetTxPowerByRate.exit.2.i_crit_edge: ; preds = %PHY_SetTxPowerByRate.exit.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %PHY_SetTxPowerByRate.exit.2.i

PHY_SetTxPowerByRate.exit.1.i.PHY_GetTxPowerByRate.exit100.thread186.2.i_crit_edge: ; preds = %PHY_SetTxPowerByRate.exit.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %PHY_GetTxPowerByRate.exit100.thread186.2.i

land.lhs.true.i92.2.i:                            ; preds = %PHY_SetTxPowerByRate.exit.1.i
  %EEPROMRegulatory.i88.2.i = getelementptr inbounds %struct.hal_com_data, ptr %82, i32 0, i32 31
  %86 = ptrtoint ptr %EEPROMRegulatory.i88.2.i to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %EEPROMRegulatory.i88.2.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %87)
  %cmp3.i89.2.i = icmp eq i8 %87, 2
  br i1 %cmp3.i89.2.i, label %land.lhs.true.i92.2.i.PHY_SetTxPowerByRate.exit.2.i_crit_edge, label %land.lhs.true.i92.2.i.PHY_GetTxPowerByRate.exit100.thread186.2.i_crit_edge

land.lhs.true.i92.2.i.PHY_GetTxPowerByRate.exit100.thread186.2.i_crit_edge: ; preds = %land.lhs.true.i92.2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %PHY_GetTxPowerByRate.exit100.thread186.2.i

land.lhs.true.i92.2.i.PHY_SetTxPowerByRate.exit.2.i_crit_edge: ; preds = %land.lhs.true.i92.2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %PHY_SetTxPowerByRate.exit.2.i

PHY_GetTxPowerByRate.exit100.thread186.2.i:       ; preds = %land.lhs.true.i92.2.i.PHY_GetTxPowerByRate.exit100.thread186.2.i_crit_edge, %PHY_SetTxPowerByRate.exit.1.i.PHY_GetTxPowerByRate.exit100.thread186.2.i_crit_edge
  %arrayidx21.i97.2.i = getelementptr %struct.hal_com_data, ptr %82, i32 0, i32 56, i32 %indvars.iv216.i, i32 2
  %88 = ptrtoint ptr %arrayidx21.i97.2.i to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %arrayidx21.i97.2.i, align 1
  br label %PHY_SetTxPowerByRate.exit.2.i

PHY_SetTxPowerByRate.exit.2.i:                    ; preds = %PHY_GetTxPowerByRate.exit100.thread186.2.i, %land.lhs.true.i92.2.i.PHY_SetTxPowerByRate.exit.2.i_crit_edge, %PHY_SetTxPowerByRate.exit.1.i.PHY_SetTxPowerByRate.exit.2.i_crit_edge
  %.pn208.2.i = phi i8 [ %89, %PHY_GetTxPowerByRate.exit100.thread186.2.i ], [ %84, %PHY_SetTxPowerByRate.exit.1.i.PHY_SetTxPowerByRate.exit.2.i_crit_edge ], [ 0, %land.lhs.true.i92.2.i.PHY_SetTxPowerByRate.exit.2.i_crit_edge ]
  %sub190.2.i = sub i8 %.pn208.2.i, %retval.0.i226.i
  %arrayidx8.i.2.i = getelementptr %struct.hal_com_data, ptr %82, i32 0, i32 56, i32 %indvars.iv216.i, i32 2
  %90 = ptrtoint ptr %arrayidx8.i.2.i to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 %sub190.2.i, ptr %arrayidx8.i.2.i, align 1
  %91 = ptrtoint ptr %HalData.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %HalData.i.i, align 8
  %93 = ptrtoint ptr %RegEnableTxPowerByRate.i.i to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %RegEnableTxPowerByRate.i.i, align 1
  %95 = zext i8 %94 to i64
  call void @__sanitizer_cov_trace_switch(i64 %95, ptr @__sancov_gen_cov_switch_values.24)
  switch i8 %94, label %PHY_SetTxPowerByRate.exit.2.i.PHY_GetTxPowerByRate.exit100.thread186.3.i_crit_edge [
    i8 2, label %land.lhs.true.i92.3.i
    i8 0, label %PHY_SetTxPowerByRate.exit.2.i.PHY_SetTxPowerByRate.exit.3.i_crit_edge
  ]

PHY_SetTxPowerByRate.exit.2.i.PHY_SetTxPowerByRate.exit.3.i_crit_edge: ; preds = %PHY_SetTxPowerByRate.exit.2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %PHY_SetTxPowerByRate.exit.3.i

PHY_SetTxPowerByRate.exit.2.i.PHY_GetTxPowerByRate.exit100.thread186.3.i_crit_edge: ; preds = %PHY_SetTxPowerByRate.exit.2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %PHY_GetTxPowerByRate.exit100.thread186.3.i

land.lhs.true.i92.3.i:                            ; preds = %PHY_SetTxPowerByRate.exit.2.i
  %EEPROMRegulatory.i88.3.i = getelementptr inbounds %struct.hal_com_data, ptr %92, i32 0, i32 31
  %96 = ptrtoint ptr %EEPROMRegulatory.i88.3.i to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %EEPROMRegulatory.i88.3.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %97)
  %cmp3.i89.3.i = icmp eq i8 %97, 2
  br i1 %cmp3.i89.3.i, label %land.lhs.true.i92.3.i.PHY_SetTxPowerByRate.exit.3.i_crit_edge, label %land.lhs.true.i92.3.i.PHY_GetTxPowerByRate.exit100.thread186.3.i_crit_edge

land.lhs.true.i92.3.i.PHY_GetTxPowerByRate.exit100.thread186.3.i_crit_edge: ; preds = %land.lhs.true.i92.3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %PHY_GetTxPowerByRate.exit100.thread186.3.i

land.lhs.true.i92.3.i.PHY_SetTxPowerByRate.exit.3.i_crit_edge: ; preds = %land.lhs.true.i92.3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %PHY_SetTxPowerByRate.exit.3.i

PHY_GetTxPowerByRate.exit100.thread186.3.i:       ; preds = %land.lhs.true.i92.3.i.PHY_GetTxPowerByRate.exit100.thread186.3.i_crit_edge, %PHY_SetTxPowerByRate.exit.2.i.PHY_GetTxPowerByRate.exit100.thread186.3.i_crit_edge
  %arrayidx21.i97.3.i = getelementptr %struct.hal_com_data, ptr %92, i32 0, i32 56, i32 %indvars.iv216.i, i32 3
  %98 = ptrtoint ptr %arrayidx21.i97.3.i to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %arrayidx21.i97.3.i, align 1
  br label %PHY_SetTxPowerByRate.exit.3.i

PHY_SetTxPowerByRate.exit.3.i:                    ; preds = %PHY_GetTxPowerByRate.exit100.thread186.3.i, %land.lhs.true.i92.3.i.PHY_SetTxPowerByRate.exit.3.i_crit_edge, %PHY_SetTxPowerByRate.exit.2.i.PHY_SetTxPowerByRate.exit.3.i_crit_edge
  %.pn208.3.i = phi i8 [ %99, %PHY_GetTxPowerByRate.exit100.thread186.3.i ], [ %94, %PHY_SetTxPowerByRate.exit.2.i.PHY_SetTxPowerByRate.exit.3.i_crit_edge ], [ 0, %land.lhs.true.i92.3.i.PHY_SetTxPowerByRate.exit.3.i_crit_edge ]
  %sub190.3.i = sub i8 %.pn208.3.i, %retval.0.i226.i
  %arrayidx8.i.3.i = getelementptr %struct.hal_com_data, ptr %92, i32 0, i32 56, i32 %indvars.iv216.i, i32 3
  %100 = ptrtoint ptr %arrayidx8.i.3.i to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 %sub190.3.i, ptr %arrayidx8.i.3.i, align 1
  %101 = ptrtoint ptr %HalData.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %HalData.i.i, align 8
  %103 = ptrtoint ptr %RegEnableTxPowerByRate.i.i to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %RegEnableTxPowerByRate.i.i, align 1
  %105 = zext i8 %104 to i64
  call void @__sanitizer_cov_trace_switch(i64 %105, ptr @__sancov_gen_cov_switch_values.25)
  switch i8 %104, label %PHY_SetTxPowerByRate.exit.3.i.if.end19.i116.i_crit_edge [
    i8 2, label %land.lhs.true.i110.i
    i8 0, label %PHY_SetTxPowerByRate.exit.3.i.PHY_GetTxPowerByRate.exit118.i_crit_edge
  ]

PHY_SetTxPowerByRate.exit.3.i.PHY_GetTxPowerByRate.exit118.i_crit_edge: ; preds = %PHY_SetTxPowerByRate.exit.3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %PHY_GetTxPowerByRate.exit118.i

PHY_SetTxPowerByRate.exit.3.i.if.end19.i116.i_crit_edge: ; preds = %PHY_SetTxPowerByRate.exit.3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19.i116.i

land.lhs.true.i110.i:                             ; preds = %PHY_SetTxPowerByRate.exit.3.i
  %EEPROMRegulatory.i106.i = getelementptr inbounds %struct.hal_com_data, ptr %102, i32 0, i32 31
  %106 = ptrtoint ptr %EEPROMRegulatory.i106.i to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %EEPROMRegulatory.i106.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %107)
  %cmp3.i107.i = icmp eq i8 %107, 2
  br i1 %cmp3.i107.i, label %land.lhs.true.i110.i.PHY_GetTxPowerByRate.exit118.i_crit_edge, label %land.lhs.true.i110.i.if.end19.i116.i_crit_edge

land.lhs.true.i110.i.if.end19.i116.i_crit_edge:   ; preds = %land.lhs.true.i110.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19.i116.i

land.lhs.true.i110.i.PHY_GetTxPowerByRate.exit118.i_crit_edge: ; preds = %land.lhs.true.i110.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %PHY_GetTxPowerByRate.exit118.i

if.end19.i116.i:                                  ; preds = %land.lhs.true.i110.i.if.end19.i116.i_crit_edge, %PHY_SetTxPowerByRate.exit.3.i.if.end19.i116.i_crit_edge
  %arrayidx21.i115.i = getelementptr %struct.hal_com_data, ptr %102, i32 0, i32 56, i32 %indvars.iv216.i, i32 11
  %108 = ptrtoint ptr %arrayidx21.i115.i to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %arrayidx21.i115.i, align 1
  br label %PHY_GetTxPowerByRate.exit118.i

PHY_GetTxPowerByRate.exit118.i:                   ; preds = %if.end19.i116.i, %land.lhs.true.i110.i.PHY_GetTxPowerByRate.exit118.i_crit_edge, %PHY_SetTxPowerByRate.exit.3.i.PHY_GetTxPowerByRate.exit118.i_crit_edge
  %retval.0.i117.i = phi i8 [ %109, %if.end19.i116.i ], [ 0, %land.lhs.true.i110.i.PHY_GetTxPowerByRate.exit118.i_crit_edge ], [ %104, %PHY_SetTxPowerByRate.exit.3.i.PHY_GetTxPowerByRate.exit118.i_crit_edge ]
  br label %for.body18.i

for.body18.i:                                     ; preds = %PHY_SetTxPowerByRate.exit142.i.for.body18.i_crit_edge, %PHY_GetTxPowerByRate.exit118.i
  %indvars.iv.i = phi i32 [ 0, %PHY_GetTxPowerByRate.exit118.i ], [ %indvars.iv.next.i, %PHY_SetTxPowerByRate.exit142.i.for.body18.i_crit_edge ]
  %arrayidx20.i = getelementptr [8 x i8], ptr @__const.phy_ConvertTxPowerByRateInDbmToRelativeValues.ofdmRates, i32 0, i32 %indvars.iv.i
  %110 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %arrayidx20.i, align 1
  %112 = ptrtoint ptr %HalData.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %HalData.i.i, align 8
  %call.i120.i = tail call zeroext i8 @PHY_GetRateIndexOfTxPowerByRate(i8 noundef zeroext %111) #10
  %114 = ptrtoint ptr %RegEnableTxPowerByRate.i.i to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %RegEnableTxPowerByRate.i.i, align 1
  %116 = zext i8 %115 to i64
  call void @__sanitizer_cov_trace_switch(i64 %116, ptr @__sancov_gen_cov_switch_values.26)
  switch i8 %115, label %for.body18.i.PHY_GetTxPowerByRate.exit134.thread194.i_crit_edge [
    i8 2, label %land.lhs.true.i126.i
    i8 0, label %for.body18.i.PHY_GetTxPowerByRate.exit134.if.end6.i141_crit_edge.i_crit_edge
  ]

for.body18.i.PHY_GetTxPowerByRate.exit134.if.end6.i141_crit_edge.i_crit_edge: ; preds = %for.body18.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %PHY_GetTxPowerByRate.exit134.if.end6.i141_crit_edge.i

for.body18.i.PHY_GetTxPowerByRate.exit134.thread194.i_crit_edge: ; preds = %for.body18.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %PHY_GetTxPowerByRate.exit134.thread194.i

land.lhs.true.i126.i:                             ; preds = %for.body18.i
  %EEPROMRegulatory.i122.i = getelementptr inbounds %struct.hal_com_data, ptr %113, i32 0, i32 31
  %117 = ptrtoint ptr %EEPROMRegulatory.i122.i to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %EEPROMRegulatory.i122.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %118)
  %cmp3.i123.i = icmp eq i8 %118, 2
  br i1 %cmp3.i123.i, label %land.lhs.true.i126.i.PHY_GetTxPowerByRate.exit134.if.end6.i141_crit_edge.i_crit_edge, label %land.lhs.true.i126.i.PHY_GetTxPowerByRate.exit134.thread194.i_crit_edge

land.lhs.true.i126.i.PHY_GetTxPowerByRate.exit134.thread194.i_crit_edge: ; preds = %land.lhs.true.i126.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %PHY_GetTxPowerByRate.exit134.thread194.i

land.lhs.true.i126.i.PHY_GetTxPowerByRate.exit134.if.end6.i141_crit_edge.i_crit_edge: ; preds = %land.lhs.true.i126.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %PHY_GetTxPowerByRate.exit134.if.end6.i141_crit_edge.i

PHY_GetTxPowerByRate.exit134.thread194.i:         ; preds = %land.lhs.true.i126.i.PHY_GetTxPowerByRate.exit134.thread194.i_crit_edge, %for.body18.i.PHY_GetTxPowerByRate.exit134.thread194.i_crit_edge
  %conv15.i130.i = zext i8 %call.i120.i to i32
  %arrayidx21.i131.i = getelementptr %struct.hal_com_data, ptr %113, i32 0, i32 56, i32 %indvars.iv216.i, i32 %conv15.i130.i
  %119 = ptrtoint ptr %arrayidx21.i131.i to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %arrayidx21.i131.i, align 1
  br label %PHY_SetTxPowerByRate.exit142.i

PHY_GetTxPowerByRate.exit134.if.end6.i141_crit_edge.i: ; preds = %land.lhs.true.i126.i.PHY_GetTxPowerByRate.exit134.if.end6.i141_crit_edge.i_crit_edge, %for.body18.i.PHY_GetTxPowerByRate.exit134.if.end6.i141_crit_edge.i_crit_edge
  %.pre219.i = zext i8 %call.i120.i to i32
  br label %PHY_SetTxPowerByRate.exit142.i

PHY_SetTxPowerByRate.exit142.i:                   ; preds = %PHY_GetTxPowerByRate.exit134.if.end6.i141_crit_edge.i, %PHY_GetTxPowerByRate.exit134.thread194.i
  %conv2.i139.pre-phi.i = phi i32 [ %.pre219.i, %PHY_GetTxPowerByRate.exit134.if.end6.i141_crit_edge.i ], [ %conv15.i130.i, %PHY_GetTxPowerByRate.exit134.thread194.i ]
  %.pn207.i = phi i8 [ 0, %PHY_GetTxPowerByRate.exit134.if.end6.i141_crit_edge.i ], [ %120, %PHY_GetTxPowerByRate.exit134.thread194.i ]
  %sub26198.i = sub i8 %.pn207.i, %retval.0.i117.i
  %arrayidx8.i140.i = getelementptr %struct.hal_com_data, ptr %113, i32 0, i32 56, i32 %indvars.iv216.i, i32 %conv2.i139.pre-phi.i
  %121 = ptrtoint ptr %arrayidx8.i140.i to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 %sub26198.i, ptr %arrayidx8.i140.i, align 1
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i32 %indvars.iv.next.i, 8
  br i1 %exitcond.not.i, label %for.end30.i, label %PHY_SetTxPowerByRate.exit142.i.for.body18.i_crit_edge

PHY_SetTxPowerByRate.exit142.i.for.body18.i_crit_edge: ; preds = %PHY_SetTxPowerByRate.exit142.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body18.i

for.end30.i:                                      ; preds = %PHY_SetTxPowerByRate.exit142.i
  %122 = ptrtoint ptr %HalData.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %HalData.i.i, align 8
  %124 = ptrtoint ptr %RegEnableTxPowerByRate.i.i to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %RegEnableTxPowerByRate.i.i, align 1
  %126 = zext i8 %125 to i64
  call void @__sanitizer_cov_trace_switch(i64 %126, ptr @__sancov_gen_cov_switch_values.27)
  switch i8 %125, label %for.end30.i.if.end19.i156.i_crit_edge [
    i8 2, label %land.lhs.true.i150.i
    i8 0, label %for.end30.i.PHY_GetTxPowerByRate.exit158.i_crit_edge
  ]

for.end30.i.PHY_GetTxPowerByRate.exit158.i_crit_edge: ; preds = %for.end30.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %PHY_GetTxPowerByRate.exit158.i

for.end30.i.if.end19.i156.i_crit_edge:            ; preds = %for.end30.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19.i156.i

land.lhs.true.i150.i:                             ; preds = %for.end30.i
  %EEPROMRegulatory.i146.i = getelementptr inbounds %struct.hal_com_data, ptr %123, i32 0, i32 31
  %127 = ptrtoint ptr %EEPROMRegulatory.i146.i to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %EEPROMRegulatory.i146.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %128)
  %cmp3.i147.i = icmp eq i8 %128, 2
  br i1 %cmp3.i147.i, label %land.lhs.true.i150.i.PHY_GetTxPowerByRate.exit158.i_crit_edge, label %land.lhs.true.i150.i.if.end19.i156.i_crit_edge

land.lhs.true.i150.i.if.end19.i156.i_crit_edge:   ; preds = %land.lhs.true.i150.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19.i156.i

land.lhs.true.i150.i.PHY_GetTxPowerByRate.exit158.i_crit_edge: ; preds = %land.lhs.true.i150.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %PHY_GetTxPowerByRate.exit158.i

if.end19.i156.i:                                  ; preds = %land.lhs.true.i150.i.if.end19.i156.i_crit_edge, %for.end30.i.if.end19.i156.i_crit_edge
  %arrayidx21.i155.i = getelementptr %struct.hal_com_data, ptr %123, i32 0, i32 56, i32 %indvars.iv216.i, i32 19
  %129 = ptrtoint ptr %arrayidx21.i155.i to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %arrayidx21.i155.i, align 1
  br label %PHY_GetTxPowerByRate.exit158.i

PHY_GetTxPowerByRate.exit158.i:                   ; preds = %if.end19.i156.i, %land.lhs.true.i150.i.PHY_GetTxPowerByRate.exit158.i_crit_edge, %for.end30.i.PHY_GetTxPowerByRate.exit158.i_crit_edge
  %retval.0.i157.i = phi i8 [ %130, %if.end19.i156.i ], [ 0, %land.lhs.true.i150.i.PHY_GetTxPowerByRate.exit158.i_crit_edge ], [ %125, %for.end30.i.PHY_GetTxPowerByRate.exit158.i_crit_edge ]
  br label %for.body36.i

for.body36.i:                                     ; preds = %PHY_SetTxPowerByRate.exit182.i.for.body36.i_crit_edge, %PHY_GetTxPowerByRate.exit158.i
  %indvars.iv213.i = phi i32 [ 0, %PHY_GetTxPowerByRate.exit158.i ], [ %indvars.iv.next214.i, %PHY_SetTxPowerByRate.exit182.i.for.body36.i_crit_edge ]
  %arrayidx38.i = getelementptr [8 x i8], ptr @__const.phy_ConvertTxPowerByRateInDbmToRelativeValues.mcs0_7Rates, i32 0, i32 %indvars.iv213.i
  %131 = ptrtoint ptr %arrayidx38.i to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %arrayidx38.i, align 1
  %133 = ptrtoint ptr %HalData.i.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %HalData.i.i, align 8
  %call.i160.i = tail call zeroext i8 @PHY_GetRateIndexOfTxPowerByRate(i8 noundef zeroext %132) #10
  %135 = ptrtoint ptr %RegEnableTxPowerByRate.i.i to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %RegEnableTxPowerByRate.i.i, align 1
  %137 = zext i8 %136 to i64
  call void @__sanitizer_cov_trace_switch(i64 %137, ptr @__sancov_gen_cov_switch_values.28)
  switch i8 %136, label %for.body36.i.PHY_GetTxPowerByRate.exit174.thread202.i_crit_edge [
    i8 2, label %land.lhs.true.i166.i
    i8 0, label %for.body36.i.PHY_GetTxPowerByRate.exit174.if.end6.i181_crit_edge.i_crit_edge
  ]

for.body36.i.PHY_GetTxPowerByRate.exit174.if.end6.i181_crit_edge.i_crit_edge: ; preds = %for.body36.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %PHY_GetTxPowerByRate.exit174.if.end6.i181_crit_edge.i

for.body36.i.PHY_GetTxPowerByRate.exit174.thread202.i_crit_edge: ; preds = %for.body36.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %PHY_GetTxPowerByRate.exit174.thread202.i

land.lhs.true.i166.i:                             ; preds = %for.body36.i
  %EEPROMRegulatory.i162.i = getelementptr inbounds %struct.hal_com_data, ptr %134, i32 0, i32 31
  %138 = ptrtoint ptr %EEPROMRegulatory.i162.i to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %EEPROMRegulatory.i162.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %139)
  %cmp3.i163.i = icmp eq i8 %139, 2
  br i1 %cmp3.i163.i, label %land.lhs.true.i166.i.PHY_GetTxPowerByRate.exit174.if.end6.i181_crit_edge.i_crit_edge, label %land.lhs.true.i166.i.PHY_GetTxPowerByRate.exit174.thread202.i_crit_edge

land.lhs.true.i166.i.PHY_GetTxPowerByRate.exit174.thread202.i_crit_edge: ; preds = %land.lhs.true.i166.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %PHY_GetTxPowerByRate.exit174.thread202.i

land.lhs.true.i166.i.PHY_GetTxPowerByRate.exit174.if.end6.i181_crit_edge.i_crit_edge: ; preds = %land.lhs.true.i166.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %PHY_GetTxPowerByRate.exit174.if.end6.i181_crit_edge.i

PHY_GetTxPowerByRate.exit174.thread202.i:         ; preds = %land.lhs.true.i166.i.PHY_GetTxPowerByRate.exit174.thread202.i_crit_edge, %for.body36.i.PHY_GetTxPowerByRate.exit174.thread202.i_crit_edge
  %conv15.i170.i = zext i8 %call.i160.i to i32
  %arrayidx21.i171.i = getelementptr %struct.hal_com_data, ptr %134, i32 0, i32 56, i32 %indvars.iv216.i, i32 %conv15.i170.i
  %140 = ptrtoint ptr %arrayidx21.i171.i to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %arrayidx21.i171.i, align 1
  br label %PHY_SetTxPowerByRate.exit182.i

PHY_GetTxPowerByRate.exit174.if.end6.i181_crit_edge.i: ; preds = %land.lhs.true.i166.i.PHY_GetTxPowerByRate.exit174.if.end6.i181_crit_edge.i_crit_edge, %for.body36.i.PHY_GetTxPowerByRate.exit174.if.end6.i181_crit_edge.i_crit_edge
  %.pre.i = zext i8 %call.i160.i to i32
  br label %PHY_SetTxPowerByRate.exit182.i

PHY_SetTxPowerByRate.exit182.i:                   ; preds = %PHY_GetTxPowerByRate.exit174.if.end6.i181_crit_edge.i, %PHY_GetTxPowerByRate.exit174.thread202.i
  %conv2.i179.pre-phi.i = phi i32 [ %.pre.i, %PHY_GetTxPowerByRate.exit174.if.end6.i181_crit_edge.i ], [ %conv15.i170.i, %PHY_GetTxPowerByRate.exit174.thread202.i ]
  %.pn.i = phi i8 [ 0, %PHY_GetTxPowerByRate.exit174.if.end6.i181_crit_edge.i ], [ %141, %PHY_GetTxPowerByRate.exit174.thread202.i ]
  %sub44206.i = sub i8 %.pn.i, %retval.0.i157.i
  %arrayidx8.i180.i = getelementptr %struct.hal_com_data, ptr %134, i32 0, i32 56, i32 %indvars.iv216.i, i32 %conv2.i179.pre-phi.i
  %142 = ptrtoint ptr %arrayidx8.i180.i to i32
  call void @__asan_store1_noabort(i32 %142)
  store i8 %sub44206.i, ptr %arrayidx8.i180.i, align 1
  %indvars.iv.next214.i = add nuw nsw i32 %indvars.iv213.i, 1
  %exitcond215.not.i = icmp eq i32 %indvars.iv.next214.i, 8
  br i1 %exitcond215.not.i, label %for.inc49.i, label %PHY_SetTxPowerByRate.exit182.i.for.body36.i_crit_edge

PHY_SetTxPowerByRate.exit182.i.for.body36.i_crit_edge: ; preds = %PHY_SetTxPowerByRate.exit182.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body36.i

for.inc49.i:                                      ; preds = %PHY_SetTxPowerByRate.exit182.i
  %indvars.iv.next217.i = add nuw nsw i32 %indvars.iv216.i, 1
  %exitcond218.not.i = icmp eq i32 %indvars.iv.next217.i, 2
  br i1 %exitcond218.not.i, label %phy_ConvertTxPowerByRateInDbmToRelativeValues.exit, label %for.inc49.i.for.body.i_crit_edge

for.inc49.i.for.body.i_crit_edge:                 ; preds = %for.inc49.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

phy_ConvertTxPowerByRateInDbmToRelativeValues.exit: ; preds = %for.inc49.i
  call void @__sanitizer_cov_trace_pc() #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @PHY_SetTxPowerIndexByRateSection(ptr noundef %padapter, i8 noundef zeroext %RFPath, i8 noundef zeroext %Channel, i8 noundef zeroext %RateSection) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %HalData = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 18
  %0 = ptrtoint ptr %HalData to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %HalData, align 8
  %2 = zext i8 %RateSection to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.29)
  switch i8 %RateSection, label %entry.if.end16_crit_edge [
    i8 0, label %if.then
    i8 1, label %if.then5
    i8 2, label %if.then12
  ]

entry.if.end16_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %CurrentChannelBW = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 9
  %3 = ptrtoint ptr %CurrentChannelBW to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %CurrentChannelBW, align 4
  %call.i = tail call zeroext i8 @PHY_GetTxPowerIndex(ptr noundef %padapter, i8 noundef zeroext %RFPath, i8 noundef zeroext 2, i32 noundef %4, i8 noundef zeroext %Channel) #10
  %conv2.i = zext i8 %call.i to i32
  tail call void @PHY_SetTxPowerIndex(ptr noundef %padapter, i32 noundef %conv2.i, i8 noundef zeroext %RFPath, i8 noundef zeroext 2) #10
  %call.i.1 = tail call zeroext i8 @PHY_GetTxPowerIndex(ptr noundef %padapter, i8 noundef zeroext %RFPath, i8 noundef zeroext 4, i32 noundef %4, i8 noundef zeroext %Channel) #10
  %conv2.i.1 = zext i8 %call.i.1 to i32
  tail call void @PHY_SetTxPowerIndex(ptr noundef %padapter, i32 noundef %conv2.i.1, i8 noundef zeroext %RFPath, i8 noundef zeroext 4) #10
  %call.i.2 = tail call zeroext i8 @PHY_GetTxPowerIndex(ptr noundef %padapter, i8 noundef zeroext %RFPath, i8 noundef zeroext 11, i32 noundef %4, i8 noundef zeroext %Channel) #10
  %conv2.i.2 = zext i8 %call.i.2 to i32
  tail call void @PHY_SetTxPowerIndex(ptr noundef %padapter, i32 noundef %conv2.i.2, i8 noundef zeroext %RFPath, i8 noundef zeroext 11) #10
  %call.i.3 = tail call zeroext i8 @PHY_GetTxPowerIndex(ptr noundef %padapter, i8 noundef zeroext %RFPath, i8 noundef zeroext 22, i32 noundef %4, i8 noundef zeroext %Channel) #10
  br label %if.end16.sink.split

if.then5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %CurrentChannelBW6 = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 9
  %5 = ptrtoint ptr %CurrentChannelBW6 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %CurrentChannelBW6, align 4
  %call.i30 = tail call zeroext i8 @PHY_GetTxPowerIndex(ptr noundef %padapter, i8 noundef zeroext %RFPath, i8 noundef zeroext 12, i32 noundef %6, i8 noundef zeroext %Channel) #10
  %conv2.i31 = zext i8 %call.i30 to i32
  tail call void @PHY_SetTxPowerIndex(ptr noundef %padapter, i32 noundef %conv2.i31, i8 noundef zeroext %RFPath, i8 noundef zeroext 12) #10
  %call.i30.1 = tail call zeroext i8 @PHY_GetTxPowerIndex(ptr noundef %padapter, i8 noundef zeroext %RFPath, i8 noundef zeroext 18, i32 noundef %6, i8 noundef zeroext %Channel) #10
  %conv2.i31.1 = zext i8 %call.i30.1 to i32
  tail call void @PHY_SetTxPowerIndex(ptr noundef %padapter, i32 noundef %conv2.i31.1, i8 noundef zeroext %RFPath, i8 noundef zeroext 18) #10
  %call.i30.2 = tail call zeroext i8 @PHY_GetTxPowerIndex(ptr noundef %padapter, i8 noundef zeroext %RFPath, i8 noundef zeroext 24, i32 noundef %6, i8 noundef zeroext %Channel) #10
  %conv2.i31.2 = zext i8 %call.i30.2 to i32
  tail call void @PHY_SetTxPowerIndex(ptr noundef %padapter, i32 noundef %conv2.i31.2, i8 noundef zeroext %RFPath, i8 noundef zeroext 24) #10
  %call.i30.3 = tail call zeroext i8 @PHY_GetTxPowerIndex(ptr noundef %padapter, i8 noundef zeroext %RFPath, i8 noundef zeroext 36, i32 noundef %6, i8 noundef zeroext %Channel) #10
  %conv2.i31.3 = zext i8 %call.i30.3 to i32
  tail call void @PHY_SetTxPowerIndex(ptr noundef %padapter, i32 noundef %conv2.i31.3, i8 noundef zeroext %RFPath, i8 noundef zeroext 36) #10
  %call.i30.4 = tail call zeroext i8 @PHY_GetTxPowerIndex(ptr noundef %padapter, i8 noundef zeroext %RFPath, i8 noundef zeroext 48, i32 noundef %6, i8 noundef zeroext %Channel) #10
  %conv2.i31.4 = zext i8 %call.i30.4 to i32
  tail call void @PHY_SetTxPowerIndex(ptr noundef %padapter, i32 noundef %conv2.i31.4, i8 noundef zeroext %RFPath, i8 noundef zeroext 48) #10
  %call.i30.5 = tail call zeroext i8 @PHY_GetTxPowerIndex(ptr noundef %padapter, i8 noundef zeroext %RFPath, i8 noundef zeroext 72, i32 noundef %6, i8 noundef zeroext %Channel) #10
  %conv2.i31.5 = zext i8 %call.i30.5 to i32
  tail call void @PHY_SetTxPowerIndex(ptr noundef %padapter, i32 noundef %conv2.i31.5, i8 noundef zeroext %RFPath, i8 noundef zeroext 72) #10
  %call.i30.6 = tail call zeroext i8 @PHY_GetTxPowerIndex(ptr noundef %padapter, i8 noundef zeroext %RFPath, i8 noundef zeroext 96, i32 noundef %6, i8 noundef zeroext %Channel) #10
  %conv2.i31.6 = zext i8 %call.i30.6 to i32
  tail call void @PHY_SetTxPowerIndex(ptr noundef %padapter, i32 noundef %conv2.i31.6, i8 noundef zeroext %RFPath, i8 noundef zeroext 96) #10
  %call.i30.7 = tail call zeroext i8 @PHY_GetTxPowerIndex(ptr noundef %padapter, i8 noundef zeroext %RFPath, i8 noundef zeroext 108, i32 noundef %6, i8 noundef zeroext %Channel) #10
  br label %if.end16.sink.split

if.then12:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %CurrentChannelBW13 = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 9
  %7 = ptrtoint ptr %CurrentChannelBW13 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %CurrentChannelBW13, align 4
  %call.i38 = tail call zeroext i8 @PHY_GetTxPowerIndex(ptr noundef %padapter, i8 noundef zeroext %RFPath, i8 noundef zeroext -128, i32 noundef %8, i8 noundef zeroext %Channel) #10
  %conv2.i39 = zext i8 %call.i38 to i32
  tail call void @PHY_SetTxPowerIndex(ptr noundef %padapter, i32 noundef %conv2.i39, i8 noundef zeroext %RFPath, i8 noundef zeroext -128) #10
  %call.i38.1 = tail call zeroext i8 @PHY_GetTxPowerIndex(ptr noundef %padapter, i8 noundef zeroext %RFPath, i8 noundef zeroext -127, i32 noundef %8, i8 noundef zeroext %Channel) #10
  %conv2.i39.1 = zext i8 %call.i38.1 to i32
  tail call void @PHY_SetTxPowerIndex(ptr noundef %padapter, i32 noundef %conv2.i39.1, i8 noundef zeroext %RFPath, i8 noundef zeroext -127) #10
  %call.i38.2 = tail call zeroext i8 @PHY_GetTxPowerIndex(ptr noundef %padapter, i8 noundef zeroext %RFPath, i8 noundef zeroext -126, i32 noundef %8, i8 noundef zeroext %Channel) #10
  %conv2.i39.2 = zext i8 %call.i38.2 to i32
  tail call void @PHY_SetTxPowerIndex(ptr noundef %padapter, i32 noundef %conv2.i39.2, i8 noundef zeroext %RFPath, i8 noundef zeroext -126) #10
  %call.i38.3 = tail call zeroext i8 @PHY_GetTxPowerIndex(ptr noundef %padapter, i8 noundef zeroext %RFPath, i8 noundef zeroext -125, i32 noundef %8, i8 noundef zeroext %Channel) #10
  %conv2.i39.3 = zext i8 %call.i38.3 to i32
  tail call void @PHY_SetTxPowerIndex(ptr noundef %padapter, i32 noundef %conv2.i39.3, i8 noundef zeroext %RFPath, i8 noundef zeroext -125) #10
  %call.i38.4 = tail call zeroext i8 @PHY_GetTxPowerIndex(ptr noundef %padapter, i8 noundef zeroext %RFPath, i8 noundef zeroext -124, i32 noundef %8, i8 noundef zeroext %Channel) #10
  %conv2.i39.4 = zext i8 %call.i38.4 to i32
  tail call void @PHY_SetTxPowerIndex(ptr noundef %padapter, i32 noundef %conv2.i39.4, i8 noundef zeroext %RFPath, i8 noundef zeroext -124) #10
  %call.i38.5 = tail call zeroext i8 @PHY_GetTxPowerIndex(ptr noundef %padapter, i8 noundef zeroext %RFPath, i8 noundef zeroext -123, i32 noundef %8, i8 noundef zeroext %Channel) #10
  %conv2.i39.5 = zext i8 %call.i38.5 to i32
  tail call void @PHY_SetTxPowerIndex(ptr noundef %padapter, i32 noundef %conv2.i39.5, i8 noundef zeroext %RFPath, i8 noundef zeroext -123) #10
  %call.i38.6 = tail call zeroext i8 @PHY_GetTxPowerIndex(ptr noundef %padapter, i8 noundef zeroext %RFPath, i8 noundef zeroext -122, i32 noundef %8, i8 noundef zeroext %Channel) #10
  %conv2.i39.6 = zext i8 %call.i38.6 to i32
  tail call void @PHY_SetTxPowerIndex(ptr noundef %padapter, i32 noundef %conv2.i39.6, i8 noundef zeroext %RFPath, i8 noundef zeroext -122) #10
  %call.i38.7 = tail call zeroext i8 @PHY_GetTxPowerIndex(ptr noundef %padapter, i8 noundef zeroext %RFPath, i8 noundef zeroext -121, i32 noundef %8, i8 noundef zeroext %Channel) #10
  br label %if.end16.sink.split

if.end16.sink.split:                              ; preds = %if.then12, %if.then5, %if.then
  %call.i30.7.sink = phi i8 [ %call.i30.7, %if.then5 ], [ %call.i38.7, %if.then12 ], [ %call.i.3, %if.then ]
  %.sink = phi i8 [ 108, %if.then5 ], [ -121, %if.then12 ], [ 22, %if.then ]
  %conv2.i31.7 = zext i8 %call.i30.7.sink to i32
  tail call void @PHY_SetTxPowerIndex(ptr noundef %padapter, i32 noundef %conv2.i31.7, i8 noundef zeroext %RFPath, i8 noundef zeroext %.sink) #10
  br label %if.end16

if.end16:                                         ; preds = %if.end16.sink.split, %entry.if.end16_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @PHY_SetTxPowerIndexByRateArray(ptr noundef %padapter, i8 noundef zeroext %RFPath, i32 noundef %BandWidth, i8 noundef zeroext %Channel, ptr nocapture noundef readonly %Rates, i8 noundef zeroext %RateArraySize) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %RateArraySize to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %RateArraySize)
  %cmp10.not = icmp eq i8 %RateArraySize, 0
  br i1 %cmp10.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.011 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr i8, ptr %Rates, i32 %i.011
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  %call = tail call zeroext i8 @PHY_GetTxPowerIndex(ptr noundef %padapter, i8 noundef zeroext %RFPath, i8 noundef zeroext %1, i32 noundef %BandWidth, i8 noundef zeroext %Channel) #10
  %conv2 = zext i8 %call to i32
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  tail call void @PHY_SetTxPowerIndex(ptr noundef %padapter, i32 noundef %conv2, i8 noundef zeroext %RFPath, i8 noundef zeroext %3) #10
  %inc = add nuw nsw i32 %i.011, 1
  %exitcond.not = icmp eq i32 %inc, %conv
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @PHY_GetTxPowerIndexBase(ptr noundef %padapter, i8 noundef zeroext %RFPath, i8 noundef zeroext %Rate, i32 noundef %BandWidth, i8 noundef zeroext %Channel) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %HalData = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 18
  %0 = ptrtoint ptr %HalData to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %HalData, align 8
  %conv = zext i8 %Channel to i32
  %sub = add i8 %Channel, -1
  %call = tail call zeroext i1 @HAL_IsLegalChannel(ptr noundef %padapter, i32 noundef %conv) #10
  %spec.select = select i1 %call, i8 %sub, i8 0
  %2 = zext i8 %Rate to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.30)
  switch i8 %Rate, label %if.else [
    i8 22, label %entry.if.then19_crit_edge
    i8 11, label %entry.if.then19_crit_edge145
    i8 4, label %entry.if.then19_crit_edge146
    i8 2, label %entry.if.then19_crit_edge147
  ]

entry.if.then19_crit_edge147:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then19

entry.if.then19_crit_edge146:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then19

entry.if.then19_crit_edge145:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then19

entry.if.then19_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then19

if.then19:                                        ; preds = %entry.if.then19_crit_edge, %entry.if.then19_crit_edge145, %entry.if.then19_crit_edge146, %entry.if.then19_crit_edge147
  %idxprom = zext i8 %RFPath to i32
  %idxprom20 = zext i8 %spec.select to i32
  %arrayidx21 = getelementptr %struct.hal_com_data, ptr %1, i32 0, i32 45, i32 %idxprom, i32 %idxprom20
  br label %if.end31

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 11, i8 %Rate)
  %cmp23 = icmp ugt i8 %Rate, 11
  br i1 %cmp23, label %if.then25, label %if.else.if.end61_crit_edge

if.else.if.end61_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end61

if.then25:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %idxprom26 = zext i8 %RFPath to i32
  %idxprom28 = zext i8 %spec.select to i32
  %arrayidx29 = getelementptr %struct.hal_com_data, ptr %1, i32 0, i32 46, i32 %idxprom26, i32 %idxprom28
  br label %if.end31

if.end31:                                         ; preds = %if.then25, %if.then19
  %txPower.0.in = phi ptr [ %arrayidx21, %if.then19 ], [ %arrayidx29, %if.then25 ]
  %3 = ptrtoint ptr %txPower.0.in to i32
  call void @__asan_load1_noabort(i32 %3)
  %txPower.0 = load i8, ptr %txPower.0.in, align 1
  %4 = add i8 %Rate, -109
  call void @__sanitizer_cov_trace_const_cmp1(i8 -97, i8 %4)
  %5 = icmp ult i8 %4, -97
  call void @__sanitizer_cov_trace_const_cmp1(i8 22, i8 %Rate)
  %cmp52 = icmp eq i8 %Rate, 22
  %or.cond135 = or i1 %cmp52, %5
  br i1 %or.cond135, label %if.end31.if.end61_crit_edge, label %if.then54

if.end31.if.end61_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end61

if.then54:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  %idxprom55 = zext i8 %RFPath to i32
  %arrayidx56 = getelementptr %struct.hal_com_data, ptr %1, i32 0, i32 48, i32 %idxprom55
  %6 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx56, align 4
  %add = add i8 %7, %txPower.0
  br label %if.end61

if.end61:                                         ; preds = %if.then54, %if.end31.if.end61_crit_edge, %if.else.if.end61_crit_edge
  %txPower.1 = phi i8 [ %add, %if.then54 ], [ %txPower.0, %if.end31.if.end61_crit_edge ], [ 0, %if.else.if.end61_crit_edge ]
  %8 = zext i32 %BandWidth to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.31)
  switch i32 %BandWidth, label %if.end61.if.end102_crit_edge [
    i32 0, label %if.then64
    i32 1, label %if.then84
  ]

if.end61.if.end102_crit_edge:                     ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end102

if.then64:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_const_cmp1(i8 -120, i8 %Rate)
  %9 = icmp slt i8 %Rate, -120
  br i1 %9, label %if.then72, label %if.then64.if.end102_crit_edge

if.then64.if.end102_crit_edge:                    ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end102

if.then72:                                        ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #12
  %idxprom73 = zext i8 %RFPath to i32
  %arrayidx74 = getelementptr %struct.hal_com_data, ptr %1, i32 0, i32 49, i32 %idxprom73
  br label %if.end102.sink.split

if.then84:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_const_cmp1(i8 -120, i8 %Rate)
  %10 = icmp slt i8 %Rate, -120
  br i1 %10, label %if.then92, label %if.then84.if.end102_crit_edge

if.then84.if.end102_crit_edge:                    ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end102

if.then92:                                        ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #12
  %idxprom93 = zext i8 %RFPath to i32
  %arrayidx94 = getelementptr %struct.hal_com_data, ptr %1, i32 0, i32 50, i32 %idxprom93
  br label %if.end102.sink.split

if.end102.sink.split:                             ; preds = %if.then92, %if.then72
  %arrayidx94.sink = phi ptr [ %arrayidx94, %if.then92 ], [ %arrayidx74, %if.then72 ]
  %11 = ptrtoint ptr %arrayidx94.sink to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx94.sink, align 4
  %add98 = add i8 %12, %txPower.1
  br label %if.end102

if.end102:                                        ; preds = %if.end102.sink.split, %if.then84.if.end102_crit_edge, %if.then64.if.end102_crit_edge, %if.end61.if.end102_crit_edge
  %txPower.2 = phi i8 [ %txPower.1, %if.then64.if.end102_crit_edge ], [ %txPower.1, %if.then84.if.end102_crit_edge ], [ %txPower.1, %if.end61.if.end102_crit_edge ], [ %add98, %if.end102.sink.split ]
  ret i8 %txPower.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @HAL_IsLegalChannel(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local signext i8 @PHY_GetTxPowerTrackingOffset(ptr nocapture noundef readonly %padapter, i8 noundef zeroext %RFPath, i8 noundef zeroext %Rate) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %HalData = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 18
  %0 = ptrtoint ptr %HalData to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %HalData, align 8
  %TxPowerTrackControl = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 141, i32 157, i32 8
  %2 = ptrtoint ptr %TxPowerTrackControl to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %TxPowerTrackControl, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp = icmp eq i8 %3, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = zext i8 %Rate to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.32)
  switch i8 %Rate, label %if.else [
    i8 2, label %if.end.if.then16_crit_edge
    i8 4, label %if.end.if.then16_crit_edge26
    i8 11, label %if.end.if.then16_crit_edge27
    i8 22, label %if.end.if.then16_crit_edge28
  ]

if.end.if.then16_crit_edge28:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then16

if.end.if.then16_crit_edge27:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then16

if.end.if.then16_crit_edge26:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then16

if.end.if.then16_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then16

if.then16:                                        ; preds = %if.end.if.then16_crit_edge, %if.end.if.then16_crit_edge26, %if.end.if.then16_crit_edge27, %if.end.if.then16_crit_edge28
  %Remnant_CCKSwingIdx = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 141, i32 170
  br label %if.end17

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %idxprom = zext i8 %RFPath to i32
  %arrayidx = getelementptr %struct.hal_com_data, ptr %1, i32 0, i32 141, i32 169, i32 %idxprom
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.then16
  %offset.0.in = phi ptr [ %Remnant_CCKSwingIdx, %if.then16 ], [ %arrayidx, %if.else ]
  %5 = ptrtoint ptr %offset.0.in to i32
  call void @__asan_load1_noabort(i32 %5)
  %offset.0 = load i8, ptr %offset.0.in, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %entry.cleanup_crit_edge
  %retval.0 = phi i8 [ %offset.0, %if.end17 ], [ 0, %entry.cleanup_crit_edge ]
  ret i8 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local signext i8 @PHY_GetTxPowerByRate(ptr nocapture noundef readonly %padapter, i8 noundef zeroext %RFPath, i8 noundef zeroext %Rate) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %HalData = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 18
  %0 = ptrtoint ptr %HalData to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %HalData, align 8
  %call = tail call zeroext i8 @PHY_GetRateIndexOfTxPowerByRate(i8 noundef zeroext %Rate)
  %RegEnableTxPowerByRate = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 14, i32 63
  %2 = ptrtoint ptr %RegEnableTxPowerByRate to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %RegEnableTxPowerByRate, align 1
  %4 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.33)
  switch i8 %3, label %if.end [
    i8 2, label %land.lhs.true
    i8 0, label %entry.cleanup_crit_edge
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true:                                    ; preds = %entry
  %EEPROMRegulatory = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 31
  %5 = ptrtoint ptr %EEPROMRegulatory to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %EEPROMRegulatory, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %6)
  %cmp3 = icmp eq i8 %6, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %RFPath)
  %cmp11 = icmp ugt i8 %RFPath, 1
  %or.cond = or i1 %cmp11, %cmp3
  br i1 %or.cond, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end19_crit_edge

land.lhs.true.if.end19_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %RFPath)
  %cmp11.old = icmp ugt i8 %RFPath, 1
  br i1 %cmp11.old, label %if.end.cleanup_crit_edge, label %if.end.if.end19_crit_edge

if.end.if.end19_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end19:                                         ; preds = %if.end.if.end19_crit_edge, %land.lhs.true.if.end19_crit_edge
  %conv10 = zext i8 %RFPath to i32
  %conv15 = zext i8 %call to i32
  %arrayidx21 = getelementptr %struct.hal_com_data, ptr %1, i32 0, i32 56, i32 %conv10, i32 %conv15
  %7 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx21, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %if.end.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i8 [ %8, %if.end19 ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ %3, %entry.cleanup_crit_edge ]
  ret i8 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @PHY_SetTxPowerByRate(ptr nocapture noundef readonly %padapter, i8 noundef zeroext %RFPath, i8 noundef zeroext %Rate, i8 noundef signext %Value) local_unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %RFPath)
  %cmp = icmp ugt i8 %RFPath, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end6

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end6:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %conv = zext i8 %RFPath to i32
  %call = tail call zeroext i8 @PHY_GetRateIndexOfTxPowerByRate(i8 noundef zeroext %Rate)
  %HalData = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 18
  %0 = ptrtoint ptr %HalData to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %HalData, align 8
  %conv2 = zext i8 %call to i32
  %arrayidx8 = getelementptr %struct.hal_com_data, ptr %1, i32 0, i32 56, i32 %conv, i32 %conv2
  %2 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %Value, ptr %arrayidx8, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @PHY_SetTxPowerLevelByPath(ptr noundef %Adapter, i8 noundef zeroext %channel, i8 noundef zeroext %path) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @PHY_SetTxPowerIndexByRateSection(ptr noundef %Adapter, i8 noundef zeroext %path, i8 noundef zeroext %channel, i8 noundef zeroext 0)
  tail call void @PHY_SetTxPowerIndexByRateSection(ptr noundef %Adapter, i8 noundef zeroext %path, i8 noundef zeroext %channel, i8 noundef zeroext 1)
  tail call void @PHY_SetTxPowerIndexByRateSection(ptr noundef %Adapter, i8 noundef zeroext %path, i8 noundef zeroext %channel, i8 noundef zeroext 2)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @PHY_GetTxPowerIndex(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i32 noundef, i8 noundef zeroext) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @PHY_SetTxPowerIndex(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local signext i8 @phy_get_tx_pwr_lmt(ptr nocapture noundef readonly %adapter, i32 noundef %reg_pwr_tbl_sel, i32 noundef %bandwidth, i8 noundef zeroext %rf_path, i8 noundef zeroext %data_rate, i8 noundef zeroext %channel) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret i8 63
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @PHY_ConvertTxPowerLimitToPowerIndex(ptr nocapture noundef readonly %Adapter) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %HalData = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 18
  %0 = ptrtoint ptr %HalData to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %HalData, align 8
  %PhyRegPgValueType = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 141, i32 2
  %RegPowerBase = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 14, i32 64
  br label %for.cond2.preheader

for.cond2.preheader:                              ; preds = %for.inc80.for.cond2.preheader_crit_edge, %entry
  %indvars.iv152 = phi i32 [ 0, %entry ], [ %indvars.iv.next153, %for.inc80.for.cond2.preheader_crit_edge ]
  br label %for.cond7.preheader

for.cond7.preheader:                              ; preds = %for.inc77.for.cond7.preheader_crit_edge, %for.cond2.preheader
  %indvars.iv149 = phi i32 [ 0, %for.cond2.preheader ], [ %indvars.iv.next150, %for.inc77.for.cond7.preheader_crit_edge ]
  br label %for.cond12.preheader

for.cond12.preheader:                             ; preds = %for.inc.1.2.for.cond12.preheader_crit_edge, %for.cond7.preheader
  %indvars.iv = phi i32 [ 0, %for.cond7.preheader ], [ %indvars.iv.next, %for.inc.1.2.for.cond12.preheader_crit_edge ]
  %arrayidx22 = getelementptr %struct.hal_com_data, ptr %1, i32 0, i32 62, i32 %indvars.iv152, i32 %indvars.iv149, i32 0, i32 %indvars.iv
  %2 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx22, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 63, i8 %3)
  %cmp53.not = icmp eq i8 %3, 63
  %4 = ptrtoint ptr %PhyRegPgValueType to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %PhyRegPgValueType, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp29 = icmp eq i32 %5, 1
  br i1 %cmp29, label %PHY_GetTxPowerByRateBase.exit121, label %if.else48

PHY_GetTxPowerByRateBase.exit121:                 ; preds = %for.cond12.preheader
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %HalData to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %HalData, align 8
  %arrayidx.i = getelementptr %struct.hal_com_data, ptr %7, i32 0, i32 63, i32 0
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx.i, align 1
  br label %if.end51

if.else48:                                        ; preds = %for.cond12.preheader
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %RegPowerBase to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %RegPowerBase, align 4
  %mul = shl i8 %11, 1
  br label %if.end51

if.end51:                                         ; preds = %if.else48, %PHY_GetTxPowerByRateBase.exit121
  %BW40PwrBasedBm2_4G.5 = phi i8 [ %9, %PHY_GetTxPowerByRateBase.exit121 ], [ %mul, %if.else48 ]
  br i1 %cmp53.not, label %if.end51.for.inc_crit_edge, label %if.then55

if.end51.for.inc_crit_edge:                       ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then55:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #12
  %sub = sub i8 %3, %BW40PwrBasedBm2_4G.5
  %12 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %sub, ptr %arrayidx22, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.then55, %if.end51.for.inc_crit_edge
  %13 = ptrtoint ptr %PhyRegPgValueType to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %PhyRegPgValueType, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %14)
  %cmp29.1 = icmp eq i32 %14, 1
  br i1 %cmp29.1, label %PHY_GetTxPowerByRateBase.exit121.1, label %if.else48.1

if.else48.1:                                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  %15 = ptrtoint ptr %RegPowerBase to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %RegPowerBase, align 4
  %mul.1 = shl i8 %16, 1
  br label %if.end51.1

PHY_GetTxPowerByRateBase.exit121.1:               ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  %17 = ptrtoint ptr %HalData to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %HalData, align 8
  %arrayidx.i.1 = getelementptr %struct.hal_com_data, ptr %18, i32 0, i32 63, i32 1
  %19 = ptrtoint ptr %arrayidx.i.1 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx.i.1, align 1
  br label %if.end51.1

if.end51.1:                                       ; preds = %PHY_GetTxPowerByRateBase.exit121.1, %if.else48.1
  %BW40PwrBasedBm2_4G.5.1 = phi i8 [ %20, %PHY_GetTxPowerByRateBase.exit121.1 ], [ %mul.1, %if.else48.1 ]
  br i1 %cmp53.not, label %if.end51.1.for.inc.1_crit_edge, label %if.then55.1

if.end51.1.for.inc.1_crit_edge:                   ; preds = %if.end51.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.1

if.then55.1:                                      ; preds = %if.end51.1
  call void @__sanitizer_cov_trace_pc() #12
  %sub.1 = sub i8 %3, %BW40PwrBasedBm2_4G.5.1
  %arrayidx69.1 = getelementptr %struct.hal_com_data, ptr %1, i32 0, i32 62, i32 %indvars.iv152, i32 %indvars.iv149, i32 0, i32 %indvars.iv, i32 1
  %21 = ptrtoint ptr %arrayidx69.1 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %sub.1, ptr %arrayidx69.1, align 1
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then55.1, %if.end51.1.for.inc.1_crit_edge
  %arrayidx22.1 = getelementptr %struct.hal_com_data, ptr %1, i32 0, i32 62, i32 %indvars.iv152, i32 %indvars.iv149, i32 1, i32 %indvars.iv
  %22 = ptrtoint ptr %arrayidx22.1 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx22.1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 63, i8 %23)
  %cmp53.not.1 = icmp eq i8 %23, 63
  %24 = ptrtoint ptr %PhyRegPgValueType to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %PhyRegPgValueType, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %25)
  %cmp29.1133 = icmp eq i32 %25, 1
  br i1 %cmp29.1133, label %PHY_GetTxPowerByRateBase.exit115.1138, label %if.else48.1135

if.else48.1135:                                   ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #12
  %26 = ptrtoint ptr %RegPowerBase to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %RegPowerBase, align 4
  %mul.1134 = shl i8 %27, 1
  br label %if.end51.1144

PHY_GetTxPowerByRateBase.exit115.1138:            ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #12
  %28 = ptrtoint ptr %HalData to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %HalData, align 8
  %arrayidx7.i.1137 = getelementptr %struct.hal_com_data, ptr %29, i32 0, i32 63, i32 0, i32 1
  %30 = ptrtoint ptr %arrayidx7.i.1137 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx7.i.1137, align 1
  br label %if.end51.1144

if.end51.1144:                                    ; preds = %PHY_GetTxPowerByRateBase.exit115.1138, %if.else48.1135
  %BW40PwrBasedBm2_4G.5.1143 = phi i8 [ %31, %PHY_GetTxPowerByRateBase.exit115.1138 ], [ %mul.1134, %if.else48.1135 ]
  br i1 %cmp53.not.1, label %if.end51.1144.for.inc.1148_crit_edge, label %if.then55.1147

if.end51.1144.for.inc.1148_crit_edge:             ; preds = %if.end51.1144
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.1148

if.then55.1147:                                   ; preds = %if.end51.1144
  call void @__sanitizer_cov_trace_pc() #12
  %sub.1145 = sub i8 %23, %BW40PwrBasedBm2_4G.5.1143
  %32 = ptrtoint ptr %arrayidx22.1 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %sub.1145, ptr %arrayidx22.1, align 1
  br label %for.inc.1148

for.inc.1148:                                     ; preds = %if.then55.1147, %if.end51.1144.for.inc.1148_crit_edge
  %33 = ptrtoint ptr %PhyRegPgValueType to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %PhyRegPgValueType, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %34)
  %cmp29.1.1 = icmp eq i32 %34, 1
  br i1 %cmp29.1.1, label %PHY_GetTxPowerByRateBase.exit115.1.1, label %if.else48.1.1

if.else48.1.1:                                    ; preds = %for.inc.1148
  call void @__sanitizer_cov_trace_pc() #12
  %35 = ptrtoint ptr %RegPowerBase to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %RegPowerBase, align 4
  %mul.1.1 = shl i8 %36, 1
  br label %if.end51.1.1

PHY_GetTxPowerByRateBase.exit115.1.1:             ; preds = %for.inc.1148
  call void @__sanitizer_cov_trace_pc() #12
  %37 = ptrtoint ptr %HalData to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %HalData, align 8
  %arrayidx7.i.1.1 = getelementptr %struct.hal_com_data, ptr %38, i32 0, i32 63, i32 1, i32 1
  %39 = ptrtoint ptr %arrayidx7.i.1.1 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx7.i.1.1, align 1
  br label %if.end51.1.1

if.end51.1.1:                                     ; preds = %PHY_GetTxPowerByRateBase.exit115.1.1, %if.else48.1.1
  %BW40PwrBasedBm2_4G.5.1.1 = phi i8 [ %40, %PHY_GetTxPowerByRateBase.exit115.1.1 ], [ %mul.1.1, %if.else48.1.1 ]
  br i1 %cmp53.not.1, label %if.end51.1.1.for.inc.1.1_crit_edge, label %if.then55.1.1

if.end51.1.1.for.inc.1.1_crit_edge:               ; preds = %if.end51.1.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.1.1

if.then55.1.1:                                    ; preds = %if.end51.1.1
  call void @__sanitizer_cov_trace_pc() #12
  %sub.1.1 = sub i8 %23, %BW40PwrBasedBm2_4G.5.1.1
  %arrayidx69.1.1 = getelementptr %struct.hal_com_data, ptr %1, i32 0, i32 62, i32 %indvars.iv152, i32 %indvars.iv149, i32 1, i32 %indvars.iv, i32 1
  %41 = ptrtoint ptr %arrayidx69.1.1 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %sub.1.1, ptr %arrayidx69.1.1, align 1
  br label %for.inc.1.1

for.inc.1.1:                                      ; preds = %if.then55.1.1, %if.end51.1.1.for.inc.1.1_crit_edge
  %arrayidx22.2 = getelementptr %struct.hal_com_data, ptr %1, i32 0, i32 62, i32 %indvars.iv152, i32 %indvars.iv149, i32 2, i32 %indvars.iv
  %42 = ptrtoint ptr %arrayidx22.2 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx22.2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 63, i8 %43)
  %cmp53.not.2 = icmp eq i8 %43, 63
  %44 = ptrtoint ptr %PhyRegPgValueType to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %PhyRegPgValueType, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %45)
  %cmp29.2 = icmp eq i32 %45, 1
  br i1 %cmp29.2, label %PHY_GetTxPowerByRateBase.exit.2, label %if.else48.2

if.else48.2:                                      ; preds = %for.inc.1.1
  call void @__sanitizer_cov_trace_pc() #12
  %46 = ptrtoint ptr %RegPowerBase to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %RegPowerBase, align 4
  %mul.2 = shl i8 %47, 1
  br label %if.end51.2

PHY_GetTxPowerByRateBase.exit.2:                  ; preds = %for.inc.1.1
  call void @__sanitizer_cov_trace_pc() #12
  %48 = ptrtoint ptr %HalData to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %HalData, align 8
  %arrayidx12.i.2 = getelementptr %struct.hal_com_data, ptr %49, i32 0, i32 63, i32 0, i32 2
  %50 = ptrtoint ptr %arrayidx12.i.2 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx12.i.2, align 1
  br label %if.end51.2

if.end51.2:                                       ; preds = %PHY_GetTxPowerByRateBase.exit.2, %if.else48.2
  %BW40PwrBasedBm2_4G.5.2 = phi i8 [ %51, %PHY_GetTxPowerByRateBase.exit.2 ], [ %mul.2, %if.else48.2 ]
  br i1 %cmp53.not.2, label %if.end51.2.for.inc.2_crit_edge, label %if.then55.2

if.end51.2.for.inc.2_crit_edge:                   ; preds = %if.end51.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.2

if.then55.2:                                      ; preds = %if.end51.2
  call void @__sanitizer_cov_trace_pc() #12
  %sub.2 = sub i8 %43, %BW40PwrBasedBm2_4G.5.2
  %52 = ptrtoint ptr %arrayidx22.2 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %sub.2, ptr %arrayidx22.2, align 1
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then55.2, %if.end51.2.for.inc.2_crit_edge
  %53 = ptrtoint ptr %PhyRegPgValueType to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %PhyRegPgValueType, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %54)
  %cmp29.1.2 = icmp eq i32 %54, 1
  br i1 %cmp29.1.2, label %PHY_GetTxPowerByRateBase.exit.1.2, label %if.else48.1.2

if.else48.1.2:                                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #12
  %55 = ptrtoint ptr %RegPowerBase to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %RegPowerBase, align 4
  %mul.1.2 = shl i8 %56, 1
  br label %if.end51.1.2

PHY_GetTxPowerByRateBase.exit.1.2:                ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #12
  %57 = ptrtoint ptr %HalData to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %HalData, align 8
  %arrayidx12.i.1.2 = getelementptr %struct.hal_com_data, ptr %58, i32 0, i32 63, i32 1, i32 2
  %59 = ptrtoint ptr %arrayidx12.i.1.2 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %arrayidx12.i.1.2, align 1
  br label %if.end51.1.2

if.end51.1.2:                                     ; preds = %PHY_GetTxPowerByRateBase.exit.1.2, %if.else48.1.2
  %BW40PwrBasedBm2_4G.5.1.2 = phi i8 [ %60, %PHY_GetTxPowerByRateBase.exit.1.2 ], [ %mul.1.2, %if.else48.1.2 ]
  br i1 %cmp53.not.2, label %if.end51.1.2.for.inc.1.2_crit_edge, label %if.then55.1.2

if.end51.1.2.for.inc.1.2_crit_edge:               ; preds = %if.end51.1.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.1.2

if.then55.1.2:                                    ; preds = %if.end51.1.2
  call void @__sanitizer_cov_trace_pc() #12
  %sub.1.2 = sub i8 %43, %BW40PwrBasedBm2_4G.5.1.2
  %arrayidx69.1.2 = getelementptr %struct.hal_com_data, ptr %1, i32 0, i32 62, i32 %indvars.iv152, i32 %indvars.iv149, i32 2, i32 %indvars.iv, i32 1
  %61 = ptrtoint ptr %arrayidx69.1.2 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %sub.1.2, ptr %arrayidx69.1.2, align 1
  br label %for.inc.1.2

for.inc.1.2:                                      ; preds = %if.then55.1.2, %if.end51.1.2.for.inc.1.2_crit_edge
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, 14
  br i1 %exitcond.not, label %for.inc77, label %for.inc.1.2.for.cond12.preheader_crit_edge

for.inc.1.2.for.cond12.preheader_crit_edge:       ; preds = %for.inc.1.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond12.preheader

for.inc77:                                        ; preds = %for.inc.1.2
  %indvars.iv.next150 = add nuw nsw i32 %indvars.iv149, 1
  %exitcond151.not = icmp eq i32 %indvars.iv.next150, 2
  br i1 %exitcond151.not, label %for.inc80, label %for.inc77.for.cond7.preheader_crit_edge

for.inc77.for.cond7.preheader_crit_edge:          ; preds = %for.inc77
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond7.preheader

for.inc80:                                        ; preds = %for.inc77
  %indvars.iv.next153 = add nuw nsw i32 %indvars.iv152, 1
  %exitcond154.not = icmp eq i32 %indvars.iv.next153, 4
  br i1 %exitcond154.not, label %for.end82, label %for.inc80.for.cond2.preheader_crit_edge

for.inc80.for.cond2.preheader_crit_edge:          ; preds = %for.inc80
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond2.preheader

for.end82:                                        ; preds = %for.inc80
  call void @__sanitizer_cov_trace_pc() #12
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @PHY_InitTxPowerLimit(ptr nocapture noundef readonly %Adapter) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %HalData = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 18
  %0 = ptrtoint ptr %HalData to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %HalData, align 8
  %uglygep = getelementptr i8, ptr %1, i32 9313
  %2 = call ptr @memset(ptr %uglygep, i32 63, i32 672)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @PHY_SetTxPowerLimit(ptr nocapture noundef readonly %Adapter, ptr noundef %Regulation, ptr noundef %Bandwidth, ptr noundef %RateSection, ptr noundef %RfPath, ptr noundef %Channel, ptr noundef %PowerLimit) local_unnamed_addr #6 align 64 {
entry:
  %channel = alloca i8, align 1
  %powerLimit = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %HalData = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 18
  %0 = ptrtoint ptr %HalData to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %HalData, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %channel) #10
  %2 = ptrtoint ptr %channel to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %channel, align 1, !annotation !29
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %powerLimit) #10
  %3 = ptrtoint ptr %powerLimit to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %powerLimit, align 1
  %call = call zeroext i1 @GetU1ByteIntegerFromStringInDecimal(ptr noundef %Channel, ptr noundef nonnull %channel) #10
  %call1 = call zeroext i1 @GetU1ByteIntegerFromStringInDecimal(ptr noundef %PowerLimit, ptr noundef nonnull %powerLimit) #10
  %4 = ptrtoint ptr %powerLimit to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %powerLimit, align 1
  %6 = call i8 @llvm.smin.i8(i8 %5, i8 63)
  %7 = ptrtoint ptr %powerLimit to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %6, ptr %powerLimit, align 1
  %call5 = call zeroext i1 @eqNByte(ptr noundef %Regulation, ptr noundef nonnull @.str, i32 noundef 3) #10
  br i1 %call5, label %entry.if.end16_crit_edge, label %if.else

entry.if.end16_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

if.else:                                          ; preds = %entry
  %call6 = call zeroext i1 @eqNByte(ptr noundef %Regulation, ptr noundef nonnull @.str.1, i32 noundef 3) #10
  br i1 %call6, label %if.else.if.end16_crit_edge, label %if.else8

if.else.if.end16_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

if.else8:                                         ; preds = %if.else
  %call9 = call zeroext i1 @eqNByte(ptr noundef %Regulation, ptr noundef nonnull @.str.2, i32 noundef 4) #10
  br i1 %call9, label %if.else8.if.end16_crit_edge, label %if.else11

if.else8.if.end16_crit_edge:                      ; preds = %if.else8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

if.else11:                                        ; preds = %if.else8
  call void @__sanitizer_cov_trace_pc() #12
  %call12 = call zeroext i1 @eqNByte(ptr noundef %Regulation, ptr noundef nonnull @.str.3, i32 noundef 4) #10
  %spec.select97 = select i1 %call12, i32 3, i32 0
  br label %if.end16

if.end16:                                         ; preds = %if.else11, %if.else8.if.end16_crit_edge, %if.else.if.end16_crit_edge, %entry.if.end16_crit_edge
  %regulation.0 = phi i32 [ 0, %entry.if.end16_crit_edge ], [ 1, %if.else.if.end16_crit_edge ], [ 2, %if.else8.if.end16_crit_edge ], [ %spec.select97, %if.else11 ]
  %call17 = call zeroext i1 @eqNByte(ptr noundef %RateSection, ptr noundef nonnull @.str.4, i32 noundef 3) #10
  br i1 %call17, label %land.lhs.true, label %if.end16.if.else22_crit_edge

if.end16.if.else22_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else22

land.lhs.true:                                    ; preds = %if.end16
  %call19 = call zeroext i1 @eqNByte(ptr noundef %RfPath, ptr noundef nonnull @.str.5, i32 noundef 2) #10
  br i1 %call19, label %land.lhs.true.if.end39_crit_edge, label %land.lhs.true.if.else22_crit_edge

land.lhs.true.if.else22_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else22

land.lhs.true.if.end39_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end39

if.else22:                                        ; preds = %land.lhs.true.if.else22_crit_edge, %if.end16.if.else22_crit_edge
  %call23 = call zeroext i1 @eqNByte(ptr noundef %RateSection, ptr noundef nonnull @.str.6, i32 noundef 4) #10
  br i1 %call23, label %land.lhs.true25, label %if.else22.if.else29_crit_edge

if.else22.if.else29_crit_edge:                    ; preds = %if.else22
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else29

land.lhs.true25:                                  ; preds = %if.else22
  %call26 = call zeroext i1 @eqNByte(ptr noundef %RfPath, ptr noundef nonnull @.str.5, i32 noundef 2) #10
  br i1 %call26, label %land.lhs.true25.if.end39_crit_edge, label %land.lhs.true25.if.else29_crit_edge

land.lhs.true25.if.else29_crit_edge:              ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else29

land.lhs.true25.if.end39_crit_edge:               ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end39

if.else29:                                        ; preds = %land.lhs.true25.if.else29_crit_edge, %if.else22.if.else29_crit_edge
  %call30 = call zeroext i1 @eqNByte(ptr noundef %RateSection, ptr noundef nonnull @.str.7, i32 noundef 2) #10
  br i1 %call30, label %land.lhs.true32, label %if.else29.cleanup_crit_edge

if.else29.cleanup_crit_edge:                      ; preds = %if.else29
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true32:                                  ; preds = %if.else29
  %call33 = call zeroext i1 @eqNByte(ptr noundef %RfPath, ptr noundef nonnull @.str.5, i32 noundef 2) #10
  br i1 %call33, label %land.lhs.true32.if.end39_crit_edge, label %land.lhs.true32.cleanup_crit_edge

land.lhs.true32.cleanup_crit_edge:                ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true32.if.end39_crit_edge:               ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end39

if.end39:                                         ; preds = %land.lhs.true32.if.end39_crit_edge, %land.lhs.true25.if.end39_crit_edge, %land.lhs.true.if.end39_crit_edge
  %rateSection.0 = phi i32 [ 0, %land.lhs.true.if.end39_crit_edge ], [ 1, %land.lhs.true25.if.end39_crit_edge ], [ 2, %land.lhs.true32.if.end39_crit_edge ]
  %call40 = call zeroext i1 @eqNByte(ptr noundef %Bandwidth, ptr noundef nonnull @.str.8, i32 noundef 3) #10
  br i1 %call40, label %if.end39.if.end46_crit_edge, label %if.else42

if.end39.if.end46_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end46

if.else42:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #12
  %call43 = call zeroext i1 @eqNByte(ptr noundef %Bandwidth, ptr noundef nonnull @.str.9, i32 noundef 3) #10
  %spec.select98 = zext i1 %call43 to i32
  br label %if.end46

if.end46:                                         ; preds = %if.else42, %if.end39.if.end46_crit_edge
  %bandwidth.0 = phi i32 [ 0, %if.end39.if.end46_crit_edge ], [ %spec.select98, %if.else42 ]
  %8 = ptrtoint ptr %channel to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %channel, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp49 = icmp eq i8 %9, 0
  br i1 %cmp49, label %if.end46.cleanup_crit_edge, label %if.end52

if.end46.cleanup_crit_edge:                       ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end52:                                         ; preds = %if.end46
  %sub.i = add i8 %9, -1
  %conv48 = sext i8 %sub.i to i32
  %arrayidx58 = getelementptr %struct.hal_com_data, ptr %1, i32 0, i32 62, i32 %regulation.0, i32 %bandwidth.0, i32 %rateSection.0, i32 %conv48
  %10 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx58, align 1
  %12 = ptrtoint ptr %powerLimit to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %powerLimit, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %13, i8 %11)
  %cmp62 = icmp slt i8 %13, %11
  br i1 %cmp62, label %if.then64, label %if.end52.cleanup_crit_edge

if.end52.cleanup_crit_edge:                       ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then64:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #12
  %14 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %arrayidx58, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.then64, %if.end52.cleanup_crit_edge, %if.end46.cleanup_crit_edge, %land.lhs.true32.cleanup_crit_edge, %if.else29.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %powerLimit) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %channel) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @GetU1ByteIntegerFromStringInDecimal(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @eqNByte(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @Hal_ChannelPlanToRegulation(ptr nocapture noundef readonly %Adapter, i16 noundef zeroext %ChannelPlan) local_unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %HalData = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 18
  %0 = ptrtoint ptr %HalData to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %HalData, align 8
  %Regulation2_4G = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 51
  %2 = ptrtoint ptr %Regulation2_4G to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 3, ptr %Regulation2_4G, align 8
  %3 = zext i16 %ChannelPlan to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.34)
  switch i16 %ChannelPlan, label %entry.sw.epilog_crit_edge [
    i16 87, label %sw.bb74
    i16 33, label %entry.sw.epilog.sink.split_crit_edge
    i16 34, label %sw.bb4
    i16 35, label %sw.bb6
    i16 36, label %entry.sw.epilog.sink.split_crit_edge117
    i16 37, label %sw.bb10
    i16 38, label %sw.bb12
    i16 39, label %sw.bb14
    i16 40, label %sw.bb16
    i16 41, label %sw.bb18
    i16 48, label %sw.bb20
    i16 49, label %sw.bb22
    i16 50, label %sw.bb24
    i16 51, label %sw.bb26
    i16 52, label %sw.bb28
    i16 53, label %sw.bb30
    i16 54, label %sw.bb32
    i16 55, label %sw.bb34
    i16 56, label %sw.bb36
    i16 57, label %sw.bb38
    i16 64, label %sw.bb40
    i16 86, label %entry.sw.epilog.sink.split_crit_edge118
    i16 66, label %entry.sw.epilog.sink.split_crit_edge119
    i16 67, label %sw.bb46
    i16 68, label %sw.bb48
    i16 69, label %entry.sw.epilog.sink.split_crit_edge120
    i16 70, label %sw.bb52
    i16 71, label %entry.sw.epilog.sink.split_crit_edge121
    i16 72, label %entry.sw.epilog.sink.split_crit_edge122
    i16 73, label %entry.sw.epilog.sink.split_crit_edge123
    i16 80, label %entry.sw.epilog.sink.split_crit_edge124
    i16 81, label %entry.sw.epilog.sink.split_crit_edge125
    i16 82, label %entry.sw.epilog.sink.split_crit_edge126
    i16 83, label %sw.bb66
    i16 84, label %entry.sw.epilog.sink.split_crit_edge127
    i16 85, label %sw.bb70
  ]

entry.sw.epilog.sink.split_crit_edge127:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.sink.split

entry.sw.epilog.sink.split_crit_edge126:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.sink.split

entry.sw.epilog.sink.split_crit_edge125:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.sink.split

entry.sw.epilog.sink.split_crit_edge124:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.sink.split

entry.sw.epilog.sink.split_crit_edge123:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.sink.split

entry.sw.epilog.sink.split_crit_edge122:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.sink.split

entry.sw.epilog.sink.split_crit_edge121:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.sink.split

entry.sw.epilog.sink.split_crit_edge120:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.sink.split

entry.sw.epilog.sink.split_crit_edge119:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.sink.split

entry.sw.epilog.sink.split_crit_edge118:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.sink.split

entry.sw.epilog.sink.split_crit_edge117:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.sink.split

entry.sw.epilog.sink.split_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.sink.split

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.sink.split

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.sink.split

sw.bb10:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.sink.split

sw.bb12:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.sink.split

sw.bb14:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.sink.split

sw.bb16:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.sink.split

sw.bb18:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.sink.split

sw.bb20:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.sink.split

sw.bb22:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.sink.split

sw.bb24:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.sink.split

sw.bb26:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.sink.split

sw.bb28:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.sink.split

sw.bb30:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.sink.split

sw.bb32:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.sink.split

sw.bb34:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.sink.split

sw.bb36:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.sink.split

sw.bb38:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.sink.split

sw.bb40:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.sink.split

sw.bb46:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.sink.split

sw.bb48:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.sink.split

sw.bb52:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.sink.split

sw.bb66:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.sink.split

sw.bb70:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.sink.split

sw.bb74:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb74, %sw.bb70, %sw.bb66, %sw.bb52, %sw.bb48, %sw.bb46, %sw.bb40, %sw.bb38, %sw.bb36, %sw.bb34, %sw.bb32, %sw.bb30, %sw.bb28, %sw.bb26, %sw.bb24, %sw.bb22, %sw.bb20, %sw.bb18, %sw.bb16, %sw.bb14, %sw.bb12, %sw.bb10, %sw.bb6, %sw.bb4, %entry.sw.epilog.sink.split_crit_edge, %entry.sw.epilog.sink.split_crit_edge117, %entry.sw.epilog.sink.split_crit_edge118, %entry.sw.epilog.sink.split_crit_edge119, %entry.sw.epilog.sink.split_crit_edge120, %entry.sw.epilog.sink.split_crit_edge121, %entry.sw.epilog.sink.split_crit_edge122, %entry.sw.epilog.sink.split_crit_edge123, %entry.sw.epilog.sink.split_crit_edge124, %entry.sw.epilog.sink.split_crit_edge125, %entry.sw.epilog.sink.split_crit_edge126, %entry.sw.epilog.sink.split_crit_edge127
  %.sink = phi i8 [ 0, %sw.bb74 ], [ 0, %sw.bb70 ], [ 0, %sw.bb66 ], [ 0, %sw.bb52 ], [ 0, %sw.bb48 ], [ 0, %sw.bb46 ], [ 0, %sw.bb40 ], [ 0, %sw.bb38 ], [ 1, %sw.bb36 ], [ 1, %sw.bb34 ], [ 0, %sw.bb32 ], [ 0, %sw.bb30 ], [ 0, %sw.bb28 ], [ 0, %sw.bb26 ], [ 0, %sw.bb24 ], [ 0, %sw.bb22 ], [ 0, %sw.bb20 ], [ 0, %sw.bb18 ], [ 0, %sw.bb16 ], [ 1, %sw.bb14 ], [ 0, %sw.bb12 ], [ 0, %sw.bb10 ], [ 1, %sw.bb6 ], [ 0, %sw.bb4 ], [ 2, %entry.sw.epilog.sink.split_crit_edge ], [ 2, %entry.sw.epilog.sink.split_crit_edge117 ], [ 2, %entry.sw.epilog.sink.split_crit_edge118 ], [ 2, %entry.sw.epilog.sink.split_crit_edge119 ], [ 2, %entry.sw.epilog.sink.split_crit_edge120 ], [ 2, %entry.sw.epilog.sink.split_crit_edge121 ], [ 2, %entry.sw.epilog.sink.split_crit_edge122 ], [ 2, %entry.sw.epilog.sink.split_crit_edge123 ], [ 2, %entry.sw.epilog.sink.split_crit_edge124 ], [ 2, %entry.sw.epilog.sink.split_crit_edge125 ], [ 2, %entry.sw.epilog.sink.split_crit_edge126 ], [ 2, %entry.sw.epilog.sink.split_crit_edge127 ]
  %4 = ptrtoint ptr %Regulation2_4G to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %.sink, ptr %Regulation2_4G, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.smin.i8(i8, i8) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

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
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18}
!llvm.module.flags = !{!20, !21, !22, !23, !24, !25, !26, !27}
!llvm.ident = !{!28}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/staging/rtl8723bs/hal/hal_com_phycfg.c", i32 824, i32 33}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/staging/rtl8723bs/hal/hal_com_phycfg.c", i32 826, i32 38}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/staging/rtl8723bs/hal/hal_com_phycfg.c", i32 828, i32 38}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/staging/rtl8723bs/hal/hal_com_phycfg.c", i32 830, i32 38}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/staging/rtl8723bs/hal/hal_com_phycfg.c", i32 833, i32 34}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/staging/rtl8723bs/hal/hal_com_phycfg.c", i32 833, i32 71}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/staging/rtl8723bs/hal/hal_com_phycfg.c", i32 835, i32 39}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/staging/rtl8723bs/hal/hal_com_phycfg.c", i32 837, i32 39}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/staging/rtl8723bs/hal/hal_com_phycfg.c", i32 842, i32 32}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/staging/rtl8723bs/hal/hal_com_phycfg.c", i32 844, i32 37}
!20 = !{i32 1, !"wchar_size", i32 2}
!21 = !{i32 1, !"min_enum_size", i32 4}
!22 = !{i32 8, !"branch-target-enforcement", i32 0}
!23 = !{i32 8, !"sign-return-address", i32 0}
!24 = !{i32 8, !"sign-return-address-all", i32 0}
!25 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!26 = !{i32 7, !"uwtable", i32 1}
!27 = !{i32 7, !"frame-pointer", i32 2}
!28 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!29 = !{!"auto-init"}
